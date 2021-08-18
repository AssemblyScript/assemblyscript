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
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_f32 (func (param i32 i32 i32) (result f32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $i32_i64_i64_i32_i64_i32_=>_i32 (func (param i32 i64 i64 i32 i64 i32) (result i32)))
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
 (global $std/array/inputStabArr (mut i32) (i32.const 0))
 (global $std/array/outputStabArr (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/util/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp (mut i32) (i32.const 0))
 (global $~lib/util/number/_K (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
 (global $std/array/ArrayU32 i32 (i32.const 43))
 (global $std/array/ArrayU8 i32 (i32.const 44))
 (global $std/array/ArrayStr i32 (i32.const 45))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 31724))
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
 (data (i32.const 6060) ",")
 (data (i32.const 6076) "\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 6108) "\1c")
 (data (i32.const 6120) "\0c\00\00\00\08\00\00\00\07")
 (data (i32.const 6140) "\1c")
 (data (i32.const 6152) "\0c\00\00\00\08\00\00\00\08")
 (data (i32.const 6172) "\1c")
 (data (i32.const 6184) "\0c\00\00\00\08\00\00\00\t")
 (data (i32.const 6204) "\1c")
 (data (i32.const 6216) "\0c\00\00\00\08\00\00\00\n")
 (data (i32.const 6236) "\1c")
 (data (i32.const 6248) "\0c\00\00\00\08\00\00\00\0b")
 (data (i32.const 6268) "\1c")
 (data (i32.const 6280) "\0c\00\00\00\08\00\00\00\0c")
 (data (i32.const 6300) "\1c")
 (data (i32.const 6312) "\0c\00\00\00\08\00\00\00\0d")
 (data (i32.const 6332) "\1c")
 (data (i32.const 6344) "\0c\00\00\00\08\00\00\00\0e")
 (data (i32.const 6364) "\1c")
 (data (i32.const 6376) "\0c\00\00\00\08\00\00\00\0f")
 (data (i32.const 6396) "\1c")
 (data (i32.const 6408) "\0c\00\00\00\08\00\00\00\10")
 (data (i32.const 6428) "\1c")
 (data (i32.const 6440) "\0c\00\00\00\08\00\00\00\11")
 (data (i32.const 6460) "\1c")
 (data (i32.const 6472) "\0c\00\00\00\08\00\00\00\12")
 (data (i32.const 6492) "\1c")
 (data (i32.const 6504) "\0c\00\00\00\08\00\00\00\13")
 (data (i32.const 6524) "\1c")
 (data (i32.const 6536) "\0c\00\00\00\08\00\00\00\14")
 (data (i32.const 6556) "\1c")
 (data (i32.const 6568) "\0d\00\00\00\08\00\00\00\15")
 (data (i32.const 6588) "\1c")
 (data (i32.const 6600) "\0d\00\00\00\08\00\00\00\16")
 (data (i32.const 6620) "\1c")
 (data (i32.const 6632) "\0d\00\00\00\08\00\00\00\17")
 (data (i32.const 6652) "\1c")
 (data (i32.const 6664) "\0d\00\00\00\08\00\00\00\18")
 (data (i32.const 6684) "\1c")
 (data (i32.const 6696) "\0d\00\00\00\08\00\00\00\19")
 (data (i32.const 6716) "\1c")
 (data (i32.const 6728) "\0e\00\00\00\08\00\00\00\1a")
 (data (i32.const 6748) "\1c")
 (data (i32.const 6760) "\0f\00\00\00\08\00\00\00\1b")
 (data (i32.const 6780) "\1c")
 (data (i32.const 6792) "\0f\00\00\00\08\00\00\00\1c")
 (data (i32.const 6812) "\1c")
 (data (i32.const 6824) "\0f\00\00\00\08\00\00\00\1d")
 (data (i32.const 6844) "\1c")
 (data (i32.const 6856) "\0c\00\00\00\08\00\00\00\1e")
 (data (i32.const 6876) "\1c")
 (data (i32.const 6888) "\0c\00\00\00\08\00\00\00\1f")
 (data (i32.const 6908) "\1c")
 (data (i32.const 6920) "\0c\00\00\00\08\00\00\00 ")
 (data (i32.const 6940) "\1c")
 (data (i32.const 6952) "\0c\00\00\00\08\00\00\00!")
 (data (i32.const 6972) "\1c")
 (data (i32.const 6984) "\10\00\00\00\08\00\00\00\"")
 (data (i32.const 7004) "\1c")
 (data (i32.const 7016) "\10\00\00\00\08\00\00\00#")
 (data (i32.const 7036) "\1c")
 (data (i32.const 7048) "\11\00\00\00\08\00\00\00$")
 (data (i32.const 7068) "\1c")
 (data (i32.const 7080) "\11\00\00\00\08\00\00\00%")
 (data (i32.const 7100) "\1c")
 (data (i32.const 7112) "\10\00\00\00\08\00\00\00&")
 (data (i32.const 7132) "\1c")
 (data (i32.const 7144) "\10\00\00\00\08\00\00\00\'")
 (data (i32.const 7164) "\1c")
 (data (i32.const 7176) "\10\00\00\00\08\00\00\00(")
 (data (i32.const 7196) "\1c")
 (data (i32.const 7208) "\10\00\00\00\08\00\00\00)")
 (data (i32.const 7228) "\1c")
 (data (i32.const 7240) "\10\00\00\00\08\00\00\00*")
 (data (i32.const 7260) "\1c")
 (data (i32.const 7272) "\11\00\00\00\08\00\00\00+")
 (data (i32.const 7292) "\1c")
 (data (i32.const 7304) "\11\00\00\00\08\00\00\00,")
 (data (i32.const 7324) "\1c")
 (data (i32.const 7336) "\10\00\00\00\08\00\00\00-")
 (data (i32.const 7356) "\1c")
 (data (i32.const 7368) "\10\00\00\00\08\00\00\00.")
 (data (i32.const 7388) "\1c")
 (data (i32.const 7400) "\10\00\00\00\08\00\00\00/")
 (data (i32.const 7420) ",")
 (data (i32.const 7432) "\01\00\00\00\18\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s")
 (data (i32.const 7468) "\bc")
 (data (i32.const 7480) "\01\00\00\00\ac\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?")
 (data (i32.const 7660) "\1c")
 (data (i32.const 7676) "\0c\00\00\00\00\00\00@\00\00\80\bf")
 (data (i32.const 7692) "\1c")
 (data (i32.const 7704) "\14\00\00\00\08\00\00\000")
 (data (i32.const 7724) "\1c")
 (data (i32.const 7740) "\0c\00\00\00\00\00\80\bf\00\00\00\00\00\00\00@")
 (data (i32.const 7756) "<")
 (data (i32.const 7772) " \00\00\00\00\00\80?\00\00\c0\7f\00\00\80\ff\00\00\80?\00\00\00\00\00\00\80\bf\00\00\00\c0\00\00\80\7f")
 (data (i32.const 7820) "<")
 (data (i32.const 7836) " \00\00\00\00\00\80\ff\00\00\00\c0\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\7f\00\00\c0\7f")
 (data (i32.const 7884) "\\")
 (data (i32.const 7900) "@")
 (data (i32.const 7910) "\f0?\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\05\00\00\00\00\00\f0?")
 (data (i32.const 7950) "\f0\bf\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\7f")
 (data (i32.const 7980) "\1c")
 (data (i32.const 7992) "\15\00\00\00\08\00\00\001")
 (data (i32.const 8012) "\\")
 (data (i32.const 8028) "@")
 (data (i32.const 8038) "\f0\ff\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\bf")
 (data (i32.const 8070) "\f0?\05\00\00\00\00\00\f0?\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\f8\7f")
 (data (i32.const 8108) ",")
 (data (i32.const 8124) "\14\00\00\00\01\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 8156) "\1c")
 (data (i32.const 8168) "\16\00\00\00\08\00\00\002")
 (data (i32.const 8188) ",")
 (data (i32.const 8204) "\14\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\01\00\00\00\02")
 (data (i32.const 8236) ",")
 (data (i32.const 8252) "\14\00\00\00\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 8284) "\1c")
 (data (i32.const 8296) "\17\00\00\00\08\00\00\003")
 (data (i32.const 8316) ",")
 (data (i32.const 8332) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 8364) "\1c")
 (data (i32.const 8396) "\1c")
 (data (i32.const 8412) "\04\00\00\00\01")
 (data (i32.const 8428) "\1c")
 (data (i32.const 8444) "\08\00\00\00\02\00\00\00\01")
 (data (i32.const 8460) ",")
 (data (i32.const 8476) "\10\00\00\00\03\00\00\00\02\00\00\00\01")
 (data (i32.const 8508) ",")
 (data (i32.const 8524) "\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 8556) "\1c")
 (data (i32.const 8568) "\16\00\00\00\08\00\00\004")
 (data (i32.const 8588) "\1c")
 (data (i32.const 8604) "\04\00\00\00\01")
 (data (i32.const 8620) "\1c")
 (data (i32.const 8636) "\08\00\00\00\01\00\00\00\02")
 (data (i32.const 8652) "\1c")
 (data (i32.const 8664) "\18\00\00\00\08\00\00\005")
 (data (i32.const 8684) "\1c")
 (data (i32.const 8696) "\16\00\00\00\08\00\00\006")
 (data (i32.const 8716) "\1c")
 (data (i32.const 8728) "\16\00\00\00\08\00\00\007")
 (data (i32.const 8748) "\1c")
 (data (i32.const 8760) "\16\00\00\00\08\00\00\008")
 (data (i32.const 8780) "\1c")
 (data (i32.const 8792) "\16\00\00\00\08\00\00\009")
 (data (i32.const 8812) "\1c")
 (data (i32.const 8824) "\1a\00\00\00\08\00\00\00:")
 (data (i32.const 8844) "\1c")
 (data (i32.const 8856) "\1d\00\00\00\08\00\00\00;")
 (data (i32.const 8876) "\1c")
 (data (i32.const 8888) "\01\00\00\00\02\00\00\00a")
 (data (i32.const 8908) "\1c")
 (data (i32.const 8920) "\01\00\00\00\02\00\00\00b")
 (data (i32.const 8940) "\1c")
 (data (i32.const 8952) "\01\00\00\00\04\00\00\00a\00b")
 (data (i32.const 8972) "\1c")
 (data (i32.const 8984) "\01\00\00\00\04\00\00\00b\00a")
 (data (i32.const 9004) "\1c")
 (data (i32.const 9016) "\01")
 (data (i32.const 9036) ",")
 (data (i32.const 9052) "\1c\00\00\00\c0\"\00\00\e0\"\00\00\c0\"\00\00\00#\00\00 #\00\00@#")
 (data (i32.const 9084) ",")
 (data (i32.const 9100) "\1c\00\00\00@#\00\00\c0\"\00\00\c0\"\00\00\00#\00\00\e0\"\00\00 #")
 (data (i32.const 9132) "\1c")
 (data (i32.const 9144) "\1f\00\00\00\08\00\00\00<")
 (data (i32.const 9164) "\1c")
 (data (i32.const 9176) "!\00\00\00\08\00\00\00=")
 (data (i32.const 9196) "\1c")
 (data (i32.const 9212) "\02\00\00\00\01")
 (data (i32.const 9228) "\1c")
 (data (i32.const 9240) "\01\00\00\00\08\00\00\00t\00r\00u\00e")
 (data (i32.const 9260) "\1c")
 (data (i32.const 9272) "\01\00\00\00\n\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 9292) "\1c")
 (data (i32.const 9304) "\01\00\00\00\02\00\00\00,")
 (data (i32.const 9324) ",")
 (data (i32.const 9336) "\01\00\00\00\14\00\00\00t\00r\00u\00e\00,\00f\00a\00l\00s\00e")
 (data (i32.const 9372) "\1c")
 (data (i32.const 9388) "\0c\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff")
 (data (i32.const 9404) "|")
 (data (i32.const 9416) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 9532) "<")
 (data (i32.const 9544) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 9596) "\1c")
 (data (i32.const 9608) "\01\00\00\00\02\00\00\000")
 (data (i32.const 9628) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 10028) "\1c\04")
 (data (i32.const 10040) "\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data (i32.const 11084) "\\")
 (data (i32.const 11096) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 11180) "\1c")
 (data (i32.const 11192) "\01\00\00\00\n\00\00\001\00-\002\00-\003")
 (data (i32.const 11212) "\1c")
 (data (i32.const 11228) "\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 11244) "\1c")
 (data (i32.const 11256) "\01\00\00\00\02\00\00\00-")
 (data (i32.const 11276) "\1c")
 (data (i32.const 11292) "\08\00\00\00\00\00\00\80\00\00\00\80")
 (data (i32.const 11308) "\1c")
 (data (i32.const 11320) "\01\00\00\00\04\00\00\00_\00_")
 (data (i32.const 11340) "L")
 (data (i32.const 11352) "\01\00\00\000\00\00\00-\002\001\004\007\004\008\003\006\004\008\00_\00_\00-\002\001\004\007\004\008\003\006\004\008")
 (data (i32.const 11420) "L")
 (data (i32.const 11436) "0")
 (data (i32.const 11454) "\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f")
 (data (i32.const 11500) "\1c")
 (data (i32.const 11512) "\01\00\00\00\04\00\00\00,\00 ")
 (data (i32.const 11532) "\1c")
 (data (i32.const 11544) "\01\00\00\00\06\00\00\000\00.\000")
 (data (i32.const 11564) "\1c")
 (data (i32.const 11576) "\01\00\00\00\06\00\00\00N\00a\00N")
 (data (i32.const 11596) ",")
 (data (i32.const 11608) "\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 11644) ",")
 (data (i32.const 11656) "\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 11752) "\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 12448) "<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 12624) "\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 12668) "l")
 (data (i32.const 12680) "\01\00\00\00P\00\00\000\00.\000\00,\00 \001\00.\000\00,\00 \00-\002\00.\000\00,\00 \00N\00a\00N\00,\00 \00-\00I\00n\00f\00i\00n\00i\00t\00y\00,\00 \00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 12780) "\1c")
 (data (i32.const 12792) "\01\00\00\00\02\00\00\001")
 (data (i32.const 12812) "\1c")
 (data (i32.const 12828) "\0c\00\00\00@#\00\00\002")
 (data (i32.const 12844) "<")
 (data (i32.const 12856) "\01\00\00\00\1e\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 12908) "\\")
 (data (i32.const 12920) "\01\00\00\00@\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 13004) "\\")
 (data (i32.const 13016) "\01\00\00\00>\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 13100) "\1c")
 (data (i32.const 13132) "\1c")
 (data (i32.const 13148) "\04\00\00\00\01")
 (data (i32.const 13164) "\1c")
 (data (i32.const 13180) "\08\00\00\00\01\00\00\00\02")
 (data (i32.const 13196) ",")
 (data (i32.const 13212) "\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 13244) "\1c")
 (data (i32.const 13256) "\01\00\00\00\06\00\00\001\00,\002")
 (data (i32.const 13276) ",")
 (data (i32.const 13288) "\01\00\00\00\0e\00\00\000\00,\001\00,\002\00,\003")
 (data (i32.const 13324) "\1c")
 (data (i32.const 13340) "\03\00\00\00\01\ff")
 (data (i32.const 13356) "\1c")
 (data (i32.const 13368) "\01\00\00\00\0c\00\00\001\00,\00-\001\00,\000")
 (data (i32.const 13388) "\1c")
 (data (i32.const 13404) "\06\00\00\00\01\00\ff\ff")
 (data (i32.const 13420) ",")
 (data (i32.const 13432) "\01\00\00\00\12\00\00\001\00,\006\005\005\003\005\00,\000")
 (data (i32.const 13468) ",")
 (data (i32.const 13484) "\18\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 13516) "L")
 (data (i32.const 13528) "\01\00\00\000\00\00\001\00,\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00,\000")
 (data (i32.const 13596) "<")
 (data (i32.const 13612) " \00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\7f")
 (data (i32.const 13660) "l")
 (data (i32.const 13672) "\01\00\00\00T\00\00\00-\001\00,\00-\001\002\003\004\005\006\007\008\009\000\001\002\003\004\005\006\00,\000\00,\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007")
 (data (i32.const 13772) ",")
 (data (i32.const 13788) "\1c\00\00\00@#\00\00\c0\"\00\00\c0\"\00\00\00#\00\00\e0\"\00\00 #")
 (data (i32.const 13820) ",")
 (data (i32.const 13832) "\01\00\00\00\1a\00\00\00,\00a\00,\00a\00,\00a\00b\00,\00b\00,\00b\00a\00,")
 (data (i32.const 13868) "\1c")
 (data (i32.const 13880) "\01\00\00\00\02\00\00\002")
 (data (i32.const 13900) "\1c")
 (data (i32.const 13912) "\01\00\00\00\02\00\00\004")
 (data (i32.const 13932) ",")
 (data (i32.const 13948) "\10\00\00\00\002\00\00@6\00\00\00\00\00\00`6")
 (data (i32.const 13980) "\1c")
 (data (i32.const 13992) "\01\00\00\00\0c\00\00\001\00,\002\00,\00,\004")
 (data (i32.const 14012) "\1c")
 (data (i32.const 14028) "\08\00\00\00\01\00\00\00\02")
 (data (i32.const 14044) "\1c")
 (data (i32.const 14060) "\08\00\00\00\03\00\00\00\04")
 (data (i32.const 14076) ",")
 (data (i32.const 14088) "\01\00\00\00\0e\00\00\001\00,\002\00,\003\00,\004")
 (data (i32.const 14124) "\1c")
 (data (i32.const 14140) "\02\00\00\00\01\02")
 (data (i32.const 14156) "\1c")
 (data (i32.const 14172) "\02\00\00\00\03\04")
 (data (i32.const 14188) "\1c")
 (data (i32.const 14204) "\04\00\00\00\01")
 (data (i32.const 14220) "\1c")
 (data (i32.const 14236) "\04")
 (data (i32.const 14252) "\1c")
 (data (i32.const 14268) "\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 14284) "\1c")
 (data (i32.const 14300) "\0c\00\00\00\04\00\00\00\05\00\00\00\06")
 (data (i32.const 14316) "\1c")
 (data (i32.const 14332) "\0c\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 14348) "\1c")
 (data (i32.const 14360) "\01\00\00\00\06\00\00\00o\00n\00e")
 (data (i32.const 14380) "\1c")
 (data (i32.const 14396) "\04\00\00\00 8")
 (data (i32.const 14412) "\1c")
 (data (i32.const 14424) "\01\00\00\00\06\00\00\00t\00w\00o")
 (data (i32.const 14444) "\1c")
 (data (i32.const 14456) "\01\00\00\00\n\00\00\00t\00h\00r\00e\00e")
 (data (i32.const 14476) "\1c")
 (data (i32.const 14492) "\0c\00\00\00`8\00\00\00\00\00\00\808")
 (data (i32.const 14508) "\1c")
 (data (i32.const 14520) "\01\00\00\00\08\00\00\00f\00o\00u\00r")
 (data (i32.const 14540) "\1c")
 (data (i32.const 14552) "\01\00\00\00\08\00\00\00f\00i\00v\00e")
 (data (i32.const 14572) "\1c")
 (data (i32.const 14584) "\01\00\00\00\06\00\00\00s\00i\00x")
 (data (i32.const 14604) "\1c")
 (data (i32.const 14620) "\0c\00\00\00\c08\00\00\e08\00\00\009")
 (data (i32.const 14636) "\1c")
 (data (i32.const 14648) "\01\00\00\00\n\00\00\00s\00e\00v\00e\00n")
 (data (i32.const 14668) "\1c")
 (data (i32.const 14684) "\04\00\00\00@9")
 (data (i32.const 14700) "<")
 (data (i32.const 14716) " \00\00\00 8\00\00`8\00\00\00\00\00\00\808\00\00\c08\00\00\e08\00\00\009\00\00@9")
 (data (i32.const 14764) "\1c")
 (data (i32.const 14796) "\1c")
 (data (i32.const 14828) "<")
 (data (i32.const 14840) "\01\00\00\00(\00\00\00I\00l\00l\00e\00g\00a\00l\00 \00g\00e\00n\00e\00r\00i\00c\00 \00t\00y\00p\00e")
 (data (i32.const 14892) "\1c")
 (data (i32.const 14904) ".\00\00\00\08\00\00\00>")
 (data (i32.const 14924) "\1c")
 (data (i32.const 14936) "!\00\00\00\08\00\00\00?")
 (data (i32.const 14960) "/\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 14988) "\02\t\00\00\00\00\00\00 \00\00\00\00\00\00\00A\00\00\00\02\00\00\00B\00\00\00\00\00\00\00\02\01\00\00\00\00\00\00\02A\00\00\00\00\00\00\02\19\00\00\00\00\00\00\02\1a\00\00\00\00\00\00\02a")
 (data (i32.const 15108) " \00\00\00\00\00\00\00\02A")
 (data (i32.const 15164) "\02A")
 (data (i32.const 15180) " \00\00\00\00\00\00\00\02A")
 (data (i32.const 15204) "\02a")
 (data (i32.const 15220) "\02A")
 (data (i32.const 15236) "B\00\00\00\00\00\00\00B\08\00\00\00\00\00\00\82\00\00\00\00\00\00\00\02\02\00\00\00\00\00\00\02\n\00\00\00\00\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\02\01\00\00\07\00\00\00B\00\00\00\06\00\00\00\02A\00\00 ")
 (table $0 64 funcref)
 (elem $0 (i32.const 1) $start:std/array~anonymous|0 $start:std/array~anonymous|1 $start:std/array~anonymous|2 $start:std/array~anonymous|3 $start:std/array~anonymous|2 $start:std/array~anonymous|5 $start:std/array~anonymous|0 $start:std/array~anonymous|1 $start:std/array~anonymous|2 $start:std/array~anonymous|5 $start:std/array~anonymous|10 $start:std/array~anonymous|11 $start:std/array~anonymous|12 $start:std/array~anonymous|13 $start:std/array~anonymous|14 $start:std/array~anonymous|15 $start:std/array~anonymous|16 $start:std/array~anonymous|17 $start:std/array~anonymous|18 $start:std/array~anonymous|19 $start:std/array~anonymous|20 $start:std/array~anonymous|21 $start:std/array~anonymous|20 $start:std/array~anonymous|23 $start:std/array~anonymous|24 $start:std/array~anonymous|25 $start:std/array~anonymous|26 $start:std/array~anonymous|27 $start:std/array~anonymous|28 $start:std/array~anonymous|29 $start:std/array~anonymous|30 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|33 $start:std/array~anonymous|35 $start:std/array~anonymous|36 $start:std/array~anonymous|37 $start:std/array~anonymous|33 $start:std/array~anonymous|39 $start:std/array~anonymous|33 $start:std/array~anonymous|33 $start:std/array~anonymous|35 $start:std/array~anonymous|36 $start:std/array~anonymous|37 $start:std/array~anonymous|33 $start:std/array~anonymous|39 $~lib/util/sort/COMPARATOR<f32>~anonymous|0 $~lib/util/sort/COMPARATOR<f64>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $~lib/util/sort/COMPARATOR<u32>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $std/array/assertStableSortedForComplexObjects~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $start:std/array~anonymous|48 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $start:std/array~anonymous|48 $start:std/array~anonymous|51 $std/array/assertStableSortedForComplexObjects~anonymous|0 $~lib/util/sort/COMPARATOR<~lib/string/String|null>~anonymous|0 $~lib/util/sort/COMPARATOR<~lib/string/String|null>~anonymous|0 $~lib/util/sort/COMPARATOR<u8>~anonymous|0 $~lib/util/sort/COMPARATOR<~lib/string/String|null>~anonymous|0)
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
 (export "ArrayU32#findLastIndex" (func $export:~lib/array/Array<u32>#findLastIndex))
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
 (export "ArrayU8#findLastIndex" (func $export:~lib/array/Array<u8>#findLastIndex))
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
 (export "ArrayStr#findLastIndex" (func $export:~lib/array/Array<~lib/string/String>#findLastIndex))
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
  i32.const 7488
  call $~lib/rt/itcms/__visit
  global.get $std/array/inputStabArr
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/array/outputStabArr
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1344
  call $~lib/rt/itcms/__visit
  i32.const 1056
  call $~lib/rt/itcms/__visit
  i32.const 14848
  call $~lib/rt/itcms/__visit
  i32.const 2176
  call $~lib/rt/itcms/__visit
  i32.const 5696
  call $~lib/rt/itcms/__visit
  i32.const 1152
  call $~lib/rt/itcms/__visit
  i32.const 10048
  call $~lib/rt/itcms/__visit
  i32.const 11104
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
  global.get $~lib/rt/itcms/iter
  local.get $0
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
    i32.const 31724
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
   local.get $1
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $2
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
   i32.const 14960
   i32.load
   local.get $1
   i32.lt_u
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
   i32.const 14964
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
  local.get $1
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $0
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
   local.tee $3
   i32.clz
   i32.sub
   local.set $4
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $4
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
  local.get $2
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.get $1
  i32.eq
  if
   local.get $2
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   local.get $4
   i32.store offset=96
   local.get $4
   i32.eqz
   if
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.tee $1
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
  local.get $3
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
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
  local.get $3
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
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
  local.get $5
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $5
  i32.const 2
  i32.shl
  local.get $0
  i32.add
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
  i32.const 31728
  i32.const 0
  i32.store
  i32.const 33296
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
    i32.const 31728
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
      i32.const 31728
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
  i32.const 31728
  i32.const 33300
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 31728
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 31724
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
  local.get $0
  i32.load
  i32.const 1
  i32.or
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
      global.get $~lib/rt/itcms/toSpace
      local.get $0
      i32.ne
      if
       local.get $0
       global.set $~lib/rt/itcms/iter
       local.get $0
       i32.load offset=4
       i32.const 3
       i32.and
       local.get $1
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
       i32.const 31724
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
       global.get $~lib/rt/itcms/toSpace
       local.get $0
       i32.ne
       if
        local.get $0
        i32.load offset=4
        i32.const 3
        i32.and
        local.get $1
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
     i32.const 31724
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
    global.get $~lib/rt/itcms/toSpace
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
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    local.get $1
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
  local.get $2
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
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
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    local.get $0
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
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    local.get $0
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
  local.get $0
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
  local.tee $1
  call $~lib/rt/tlsf/searchBlock
  local.tee $3
  i32.eqz
  if
   memory.size
   local.tee $2
   local.get $1
   i32.const 536870910
   i32.lt_u
   if (result i32)
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.const 1
    i32.sub
    local.get $1
    i32.add
   else
    local.get $1
   end
   i32.const 4
   local.get $0
   i32.load offset=1568
   local.get $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
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
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/searchBlock
   local.tee $3
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
  local.get $3
  i32.load
  i32.const -4
  i32.and
  local.get $1
  i32.lt_u
  if
   i32.const 0
   i32.const 1488
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $3
  local.tee $2
  i32.load
  local.set $3
  local.get $1
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
  local.get $1
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   local.get $1
   i32.or
   i32.store
   local.get $1
   local.get $2
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
   local.get $2
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $2
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
   local.tee $5
   i32.add
   local.set $1
   local.get $2
   local.get $5
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
  global.get $~lib/rt/itcms/white
  local.get $3
  i32.or
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $1
  local.get $1
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $2
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
  (local $6 i32)
  (local $7 i32)
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
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
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
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
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
      local.tee $3
      i32.const 1
      i32.add
      local.set $6
      local.get $1
      i32.const 1
      i32.add
      local.tee $4
      i32.const 1
      i32.add
      local.set $7
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $6
      i32.const 1
      i32.add
      local.set $0
      local.get $7
      i32.const 1
      i32.add
      local.set $1
      local.get $6
      local.get $7
      i32.load8_u
      i32.store8
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
        i32.const 1
        i32.add
        i32.load
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        i32.const 4
        i32.add
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.tee $4
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        i32.const 8
        i32.add
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.tee $3
        i32.const 8
        i32.shl
        local.get $4
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        i32.const 12
        i32.add
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
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
     i32.const 1
     i32.add
     local.tee $3
     i32.const 1
     i32.add
     local.set $0
     local.get $1
     i32.const 1
     i32.add
     local.tee $4
     i32.const 1
     i32.add
     local.set $1
     local.get $3
     local.get $4
     i32.load8_u
     i32.store8
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
       i32.const 2
       i32.add
       i32.load
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       i32.const 4
       i32.add
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.tee $4
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       i32.const 8
       i32.add
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.tee $3
       i32.const 16
       i32.shl
       local.get $4
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       i32.const 12
       i32.add
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
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
      i32.const 3
      i32.add
      i32.load
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      i32.const 4
      i32.add
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.tee $4
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      i32.const 8
      i32.add
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.tee $3
      i32.const 24
      i32.shl
      local.get $4
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      i32.const 12
      i32.add
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
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
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
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
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
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
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
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
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
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
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 1344
   i32.const 1104
   i32.const 106
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
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
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 1344
   i32.const 1104
   i32.const 106
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
  local.get $0
  i32.load offset=8
  local.tee $5
  local.get $2
  i32.shr_u
  local.get $1
  i32.lt_u
  if
   i32.const 1073741820
   local.get $2
   i32.shr_u
   local.get $1
   i32.lt_u
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
   local.set $1
   block $__inlined_func$~lib/rt/itcms/__renew (result i32)
    local.get $3
    if
     local.get $5
     i32.const 1
     i32.shl
     local.tee $2
     i32.const 1073741820
     local.get $2
     i32.const 1073741820
     i32.lt_u
     select
     local.tee $2
     local.get $1
     local.get $1
     local.get $2
     i32.lt_u
     select
     local.set $1
    end
    local.get $1
    local.set $2
    local.get $4
    local.tee $3
    i32.const 20
    i32.sub
    local.tee $4
    i32.load
    i32.const -4
    i32.and
    i32.const 16
    i32.sub
    local.get $1
    i32.ge_u
    if
     local.get $4
     local.get $2
     i32.store offset=16
     local.get $3
     br $__inlined_func$~lib/rt/itcms/__renew
    end
    local.get $2
    local.get $4
    i32.load offset=12
    call $~lib/rt/itcms/__new
    local.tee $6
    local.get $3
    local.get $2
    local.get $4
    i32.load offset=16
    local.tee $4
    local.get $2
    local.get $4
    i32.lt_u
    select
    call $~lib/memory/memory.copy
    local.get $6
   end
   local.tee $2
   local.get $5
   i32.add
   i32.const 0
   local.get $1
   local.get $5
   i32.sub
   call $~lib/memory/memory.fill
   local.get $2
   local.get $3
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
    local.get $0
    local.get $2
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $0
   local.get $1
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
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 1344
   i32.const 1104
   i32.const 106
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
   i32.const 283
   i32.const 18
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
  i32.const 0
  local.get $0
  i32.load offset=12
  local.tee $2
  local.get $1
  i32.const 0
  i32.ge_s
  select
  local.get $1
  i32.add
  local.tee $1
  local.get $2
  i32.ge_u
  if
   i32.const 1344
   i32.const 1104
   i32.const 139
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
  local.get $5
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
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1344
    i32.const 1104
    i32.const 122
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $1
   i32.const 1
   i32.add
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
 (func $start:std/array~anonymous|10 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ge_s
 )
 (func $start:std/array~anonymous|11 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.le_s
 )
 (func $start:std/array~anonymous|12 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  i32.const 10
  i32.lt_s
 )
 (func $start:std/array~anonymous|13 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 10
  i32.lt_s
 )
 (func $start:std/array~anonymous|14 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 3
  i32.lt_s
 )
 (func $start:std/array~anonymous|15 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 3
  i32.ge_s
 )
 (func $start:std/array~anonymous|16 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const -1
  i32.le_s
 )
 (func $start:std/array~anonymous|17 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  i32.const 10
  i32.gt_s
 )
 (func $start:std/array~anonymous|18 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 10
  i32.gt_s
 )
 (func $start:std/array~anonymous|19 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  i32.const 3
  i32.gt_s
 )
 (func $start:std/array~anonymous|20 (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|21 (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|23 (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/array/Array<i32>#pop
  drop
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
 )
 (func $start:std/array~anonymous|24 (param $0 i32) (param $1 i32) (param $2 i32)
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
    i32.const 705
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $start:std/array~anonymous|25 (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  local.get $0
  f32.convert_i32_s
 )
 (func $~lib/array/Array<f32>#__get (param $0 i32) (param $1 i32) (result f32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 1344
   i32.const 1104
   i32.const 106
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
 )
 (func $start:std/array~anonymous|27 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  local.get $0
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
 )
 (func $start:std/array~anonymous|29 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|30 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start:std/array~anonymous|31 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  global.get $std/array/i
  i32.add
  global.set $std/array/i
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/array~anonymous|32 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start:std/array~anonymous|33 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|35 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  i32.const 1
  local.get $1
  i32.const 2
  i32.gt_s
  local.get $0
  select
 )
 (func $start:std/array~anonymous|36 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  i32.const 1
  local.get $1
  i32.const 100
  i32.gt_s
  local.get $0
  select
 )
 (func $start:std/array~anonymous|37 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:std/array~anonymous|39 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
  i64.const 33
  i64.shr_u
  local.get $0
  i64.xor
  i64.const -49064778989728563
  i64.mul
  local.tee $2
  i64.const 33
  i64.shr_u
  local.get $2
  i64.xor
  i64.const -4265267296055464877
  i64.mul
  local.tee $2
  i64.const 33
  i64.shr_u
  local.get $2
  i64.xor
  global.set $~lib/math/random_state0_64
  global.get $~lib/math/random_state0_64
  i64.const -1
  i64.xor
  local.tee $2
  i64.const 33
  i64.shr_u
  local.get $2
  i64.xor
  i64.const -49064778989728563
  i64.mul
  local.tee $2
  i64.const 33
  i64.shr_u
  local.get $2
  i64.xor
  i64.const -4265267296055464877
  i64.mul
  local.tee $2
  i64.const 33
  i64.shr_u
  local.get $2
  i64.xor
  global.set $~lib/math/random_state1_64
  local.get $0
  i32.wrap_i64
  i32.const 1831565813
  i32.add
  local.tee $1
  i32.const 1
  i32.or
  local.get $1
  i32.const 15
  i32.shr_u
  local.get $1
  i32.xor
  i32.mul
  local.tee $1
  i32.const 61
  i32.or
  local.get $1
  i32.const 7
  i32.shr_u
  local.get $1
  i32.xor
  i32.mul
  local.get $1
  i32.add
  local.get $1
  i32.xor
  local.tee $1
  i32.const 14
  i32.shr_u
  local.get $1
  i32.xor
  global.set $~lib/math/random_state0_32
  global.get $~lib/math/random_state0_32
  i32.const 1831565813
  i32.add
  local.tee $1
  i32.const 1
  i32.or
  local.get $1
  i32.const 15
  i32.shr_u
  local.get $1
  i32.xor
  i32.mul
  local.tee $1
  i32.const 61
  i32.or
  local.get $1
  i32.const 7
  i32.shr_u
  local.get $1
  i32.xor
  i32.mul
  local.get $1
  i32.add
  local.get $1
  i32.xor
  local.tee $1
  i32.const 14
  i32.shr_u
  local.get $1
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
   i32.const 7440
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
  local.get $3
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $8
  local.get $3
  i32.sub
  i32.const 1
  i32.and
  i32.sub
  local.get $8
  i32.const 1
  i32.and
  local.get $3
  select
  local.get $1
  i32.add
  local.set $8
  loop $for-loop|0
   local.get $2
   local.get $8
   i32.ge_s
   if
    local.get $8
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    f32.load offset=4
    local.tee $7
    local.set $6
    local.get $8
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    f32.load
    local.set $5
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
       local.get $3
       i32.const 2
       i32.shl
       local.get $0
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
       local.get $3
       i32.const 2
       i32.shl
       local.get $0
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
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.get $5
    f32.store offset=8
    loop $while-continue|2
     local.get $1
     local.get $3
     i32.le_s
     if
      block $while-break|2
       local.get $3
       i32.const 2
       i32.shl
       local.get $0
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
       local.get $3
       i32.const 2
       i32.shl
       local.get $0
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
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
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
  local.get $1
  local.get $2
  i32.eq
  if
   local.get $1
   return
  end
  local.get $1
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  f32.load
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  local.get $0
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
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     f32.load offset=4
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
     i32.add
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
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     f32.load
     local.set $5
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $2
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     f32.load
     f32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $2
     i32.const 2
     i32.shl
     local.get $0
     i32.add
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
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     f32.load offset=4
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
     i32.add
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
  (local $7 f32)
  (local $8 f32)
  (local $9 i32)
  local.get $3
  local.get $2
  i32.const 1
  i32.sub
  local.tee $2
  i32.add
  local.set $9
  local.get $2
  i32.const 1
  i32.add
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $6
    i32.const 1
    i32.sub
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.get $6
    i32.const 1
    i32.sub
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    f32.load
    f32.store
    local.get $6
    i32.const 1
    i32.sub
    local.set $6
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $9
    local.get $2
    i32.sub
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.get $2
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    f32.load offset=4
    f32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  loop $for-loop|2
   local.get $1
   local.get $3
   i32.le_s
   if
    local.get $2
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    f32.load
    local.set $7
    local.get $6
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    f32.load
    local.set $8
    i32.const 2
    global.set $~argumentsLength
    local.get $7
    local.get $8
    local.get $5
    i32.load
    call_indirect $0 (type $f32_f32_=>_i32)
    i32.const 0
    i32.lt_s
    if
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $7
     f32.store
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
    else
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $8
     f32.store
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    end
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
  i32.const 48
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
     f32.load
     local.set $16
     local.get $0
     f32.load offset=4
     local.set $14
     i32.const 2
     global.set $~argumentsLength
     local.get $0
     local.get $14
     local.get $16
     local.get $16
     local.get $14
     local.get $2
     i32.load
     call_indirect $0 (type $f32_f32_=>_i32)
     i32.const 0
     i32.gt_s
     local.tee $1
     select
     f32.store
     local.get $0
     f32.load offset=8
     local.set $12
     i32.const 2
     global.set $~argumentsLength
     local.get $16
     local.get $14
     local.get $1
     select
     local.tee $16
     local.get $12
     local.get $2
     i32.load
     call_indirect $0 (type $f32_f32_=>_i32)
     i32.const 0
     i32.gt_s
     local.set $1
     local.get $0
     local.get $12
     local.get $16
     local.get $1
     select
     f32.store offset=4
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
    local.get $14
    local.get $16
    local.get $16
    local.get $14
    local.get $2
    i32.load
    call_indirect $0 (type $f32_f32_=>_i32)
    i32.const 0
    i32.gt_s
    local.tee $1
    select
    f32.store
    local.get $0
    local.get $16
    local.get $14
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
    local.get $7
    i32.const 2
    i32.shl
    local.get $13
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
    local.tee $7
    local.get $15
    local.get $2
    call $~lib/util/sort/extendRunRight<f32>
    local.tee $5
    local.get $7
    i32.sub
    i32.const 1
    i32.add
    local.tee $4
    i32.const 32
    i32.lt_s
    if
     local.get $0
     local.get $7
     local.get $15
     local.get $7
     i32.const 31
     i32.add
     local.tee $5
     local.get $5
     local.get $15
     i32.gt_s
     select
     local.tee $5
     local.get $4
     local.get $2
     call $~lib/util/sort/insertionSort<f32>
    end
    local.get $3
    local.get $7
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
      local.get $6
      i32.const 2
      i32.shl
      local.get $13
      i32.add
      i32.load
      local.tee $8
      i32.const -1
      i32.ne
      if
       local.get $0
       local.get $8
       local.get $6
       i32.const 2
       i32.shl
       local.tee $3
       local.get $11
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
    local.get $4
    i32.const 2
    i32.shl
    local.tee $6
    local.get $13
    i32.add
    local.get $3
    i32.store
    local.get $6
    local.get $11
    i32.add
    local.get $1
    i32.store
    local.get $7
    local.set $3
    local.get $5
    local.set $1
    local.get $4
    local.set $6
    br $while-continue|2
   end
  end
  loop $for-loop|4
   local.get $6
   if
    local.get $6
    i32.const 2
    i32.shl
    local.get $13
    i32.add
    i32.load
    local.tee $1
    i32.const -1
    i32.ne
    if
     local.get $0
     local.get $1
     local.get $6
     i32.const 2
     i32.shl
     local.get $11
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
  i32.const 31
  i32.shr_s
  i32.const 1
  i32.shr_u
  local.get $2
  i32.xor
  local.tee $2
  local.get $1
  i32.reinterpret_f32
  local.tee $3
  i32.const 31
  i32.shr_s
  i32.const 1
  i32.shr_u
  local.get $3
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
  local.get $3
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $8
  local.get $3
  i32.sub
  i32.const 1
  i32.and
  i32.sub
  local.get $8
  i32.const 1
  i32.and
  local.get $3
  select
  local.get $1
  i32.add
  local.set $8
  loop $for-loop|0
   local.get $2
   local.get $8
   i32.ge_s
   if
    local.get $8
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    f64.load offset=8
    local.tee $7
    local.set $6
    local.get $8
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    f64.load
    local.set $5
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
       local.get $3
       i32.const 3
       i32.shl
       local.get $0
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
       local.get $3
       i32.const 3
       i32.shl
       local.get $0
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
    local.get $3
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    local.get $5
    f64.store offset=16
    loop $while-continue|2
     local.get $1
     local.get $3
     i32.le_s
     if
      block $while-break|2
       local.get $3
       i32.const 3
       i32.shl
       local.get $0
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
       local.get $3
       i32.const 3
       i32.shl
       local.get $0
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
    local.get $3
    i32.const 3
    i32.shl
    local.get $0
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
  local.get $1
  local.get $2
  i32.eq
  if
   local.get $1
   return
  end
  local.get $1
  i32.const 3
  i32.shl
  local.get $0
  i32.add
  f64.load
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 3
  i32.shl
  local.get $0
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
     local.get $4
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     f64.load offset=8
     local.get $4
     i32.const 3
     i32.shl
     local.get $0
     i32.add
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
     local.get $1
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     f64.load
     local.set $5
     local.get $1
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     local.get $2
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     f64.load
     f64.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $2
     i32.const 3
     i32.shl
     local.get $0
     i32.add
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
     local.get $4
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     f64.load offset=8
     local.get $4
     i32.const 3
     i32.shl
     local.get $0
     i32.add
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
  (local $7 f64)
  (local $8 f64)
  (local $9 i32)
  local.get $3
  local.get $2
  i32.const 1
  i32.sub
  local.tee $2
  i32.add
  local.set $9
  local.get $2
  i32.const 1
  i32.add
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $6
    i32.const 1
    i32.sub
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    local.get $6
    i32.const 1
    i32.sub
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    f64.load
    f64.store
    local.get $6
    i32.const 1
    i32.sub
    local.set $6
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $9
    local.get $2
    i32.sub
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    local.get $2
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    f64.load offset=8
    f64.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  loop $for-loop|2
   local.get $1
   local.get $3
   i32.le_s
   if
    local.get $2
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    f64.load
    local.set $7
    local.get $6
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    f64.load
    local.set $8
    i32.const 2
    global.set $~argumentsLength
    local.get $7
    local.get $8
    local.get $5
    i32.load
    call_indirect $0 (type $f64_f64_=>_i32)
    i32.const 0
    i32.lt_s
    if
     local.get $1
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     local.get $7
     f64.store
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
    else
     local.get $1
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     local.get $8
     f64.store
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    end
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
  i32.const 48
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
     f64.load
     local.set $16
     local.get $0
     f64.load offset=8
     local.set $14
     i32.const 2
     global.set $~argumentsLength
     local.get $0
     local.get $14
     local.get $16
     local.get $16
     local.get $14
     local.get $2
     i32.load
     call_indirect $0 (type $f64_f64_=>_i32)
     i32.const 0
     i32.gt_s
     local.tee $1
     select
     f64.store
     local.get $0
     f64.load offset=16
     local.set $12
     i32.const 2
     global.set $~argumentsLength
     local.get $16
     local.get $14
     local.get $1
     select
     local.tee $16
     local.get $12
     local.get $2
     i32.load
     call_indirect $0 (type $f64_f64_=>_i32)
     i32.const 0
     i32.gt_s
     local.set $1
     local.get $0
     local.get $12
     local.get $16
     local.get $1
     select
     f64.store offset=8
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
    local.get $14
    local.get $16
    local.get $16
    local.get $14
    local.get $2
    i32.load
    call_indirect $0 (type $f64_f64_=>_i32)
    i32.const 0
    i32.gt_s
    local.tee $1
    select
    f64.store
    local.get $0
    local.get $16
    local.get $14
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
    local.get $7
    i32.const 2
    i32.shl
    local.get $13
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
    local.tee $7
    local.get $15
    local.get $2
    call $~lib/util/sort/extendRunRight<f64>
    local.tee $5
    local.get $7
    i32.sub
    i32.const 1
    i32.add
    local.tee $4
    i32.const 32
    i32.lt_s
    if
     local.get $0
     local.get $7
     local.get $15
     local.get $7
     i32.const 31
     i32.add
     local.tee $5
     local.get $5
     local.get $15
     i32.gt_s
     select
     local.tee $5
     local.get $4
     local.get $2
     call $~lib/util/sort/insertionSort<f64>
    end
    local.get $3
    local.get $7
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
      local.get $6
      i32.const 2
      i32.shl
      local.get $13
      i32.add
      i32.load
      local.tee $8
      i32.const -1
      i32.ne
      if
       local.get $0
       local.get $8
       local.get $6
       i32.const 2
       i32.shl
       local.tee $3
       local.get $11
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
    local.get $4
    i32.const 2
    i32.shl
    local.tee $6
    local.get $13
    i32.add
    local.get $3
    i32.store
    local.get $6
    local.get $11
    i32.add
    local.get $1
    i32.store
    local.get $7
    local.set $3
    local.get $5
    local.set $1
    local.get $4
    local.set $6
    br $while-continue|2
   end
  end
  loop $for-loop|4
   local.get $6
   if
    local.get $6
    i32.const 2
    i32.shl
    local.get $13
    i32.add
    i32.load
    local.tee $1
    i32.const -1
    i32.ne
    if
     local.get $0
     local.get $1
     local.get $6
     i32.const 2
     i32.shl
     local.get $11
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
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  local.get $2
  i64.xor
  local.tee $2
  local.get $1
  i64.reinterpret_f64
  local.tee $3
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  local.get $3
  i64.xor
  local.tee $3
  i64.gt_s
  local.get $2
  local.get $3
  i64.lt_s
  i32.sub
 )
 (func $~lib/array/Array<f64>#__get (param $0 i32) (param $1 i32) (result f64)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 1344
   i32.const 1104
   i32.const 106
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
  local.get $3
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $6
  local.get $3
  i32.sub
  i32.const 1
  i32.and
  i32.sub
  local.get $6
  i32.const 1
  i32.and
  local.get $3
  select
  local.get $1
  i32.add
  local.set $7
  loop $for-loop|0
   local.get $2
   local.get $7
   i32.ge_s
   if
    local.get $7
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    local.tee $6
    local.set $5
    local.get $7
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load
    local.set $3
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
       local.get $6
       i32.const 2
       i32.shl
       local.get $0
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
       local.get $6
       i32.const 2
       i32.shl
       local.get $0
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
    local.get $6
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.get $3
    i32.store offset=8
    loop $while-continue|2
     local.get $1
     local.get $6
     i32.le_s
     if
      block $while-break|2
       local.get $6
       i32.const 2
       i32.shl
       local.get $0
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
       local.get $6
       i32.const 2
       i32.shl
       local.get $0
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
    local.get $6
    i32.const 2
    i32.shl
    local.get $0
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
  local.get $1
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  local.get $0
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
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     i32.load offset=4
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
     i32.add
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
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     i32.load
     local.set $3
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $2
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $2
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $3
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
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     i32.load offset=4
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
     i32.add
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
  local.get $3
  local.get $2
  i32.const 1
  i32.sub
  local.tee $2
  i32.add
  local.set $7
  local.get $2
  i32.const 1
  i32.add
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $6
    i32.const 1
    i32.sub
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.get $6
    i32.const 1
    i32.sub
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load
    i32.store
    local.get $6
    i32.const 1
    i32.sub
    local.set $6
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $7
    local.get $2
    i32.sub
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.get $2
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  loop $for-loop|2
   local.get $1
   local.get $3
   i32.le_s
   if
    local.get $2
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    i32.load
    local.set $7
    local.get $6
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    i32.load
    local.set $8
    i32.const 2
    global.set $~argumentsLength
    local.get $7
    local.get $8
    local.get $5
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 0
    i32.lt_s
    if
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $7
     i32.store
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
    else
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $8
     i32.store
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    end
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
  (local $12 i32)
  (local $13 i64)
  local.get $1
  i32.const 48
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
     i32.load
     local.set $1
     local.get $0
     i32.load offset=4
     local.set $3
     i32.const 2
     global.set $~argumentsLength
     local.get $0
     local.get $3
     local.get $1
     local.get $1
     local.get $3
     local.get $2
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 0
     i32.gt_s
     local.tee $4
     select
     i32.store
     local.get $0
     i32.load offset=8
     local.set $5
     i32.const 2
     global.set $~argumentsLength
     local.get $1
     local.get $3
     local.get $4
     select
     local.tee $1
     local.get $5
     local.get $2
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 0
     i32.gt_s
     local.set $3
     local.get $0
     local.get $5
     local.get $1
     local.get $3
     select
     i32.store offset=4
     local.get $0
     local.get $1
     local.get $5
     local.get $3
     select
     i32.store offset=8
    end
    local.get $0
    i32.load
    local.set $1
    local.get $0
    i32.load offset=4
    local.set $3
    i32.const 2
    global.set $~argumentsLength
    local.get $0
    local.get $3
    local.get $1
    local.get $1
    local.get $3
    local.get $2
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 0
    i32.gt_s
    local.tee $2
    select
    i32.store
    local.get $0
    local.get $1
    local.get $3
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
  local.tee $4
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
  local.tee $10
  local.get $4
  i32.add
  local.set $11
  i32.const 0
  local.set $4
  loop $for-loop|1
   local.get $4
   local.get $6
   i32.lt_u
   if
    local.get $4
    i32.const 2
    i32.shl
    local.get $10
    i32.add
    i32.const -1
    i32.store
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  local.get $1
  i32.const 2
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
  local.set $12
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  i32.sub
  local.tee $9
  local.get $2
  call $~lib/util/sort/extendRunRight<i32>
  local.tee $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 32
  i32.lt_s
  if
   local.get $0
   i32.const 0
   local.get $9
   i32.const 31
   local.get $9
   i32.const 31
   i32.lt_s
   select
   local.tee $1
   local.get $4
   local.get $2
   call $~lib/util/sort/insertionSort<i32>
  end
  loop $while-continue|2
   local.get $1
   local.get $9
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1
    i32.add
    local.tee $4
    local.get $9
    local.get $2
    call $~lib/util/sort/extendRunRight<i32>
    local.tee $6
    local.get $4
    i32.sub
    i32.const 1
    i32.add
    local.tee $7
    i32.const 32
    i32.lt_s
    if
     local.get $0
     local.get $4
     local.get $9
     local.get $4
     i32.const 31
     i32.add
     local.tee $6
     local.get $6
     local.get $9
     i32.gt_s
     select
     local.tee $6
     local.get $7
     local.get $2
     call $~lib/util/sort/insertionSort<i32>
    end
    local.get $3
    local.get $4
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $9
    i32.const 1
    i32.add
    i64.extend_i32_u
    local.tee $13
    i64.div_u
    local.get $4
    local.get $6
    i32.add
    i32.const 1
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $13
    i64.div_u
    i64.xor
    i32.wrap_i64
    i32.clz
    local.set $7
    loop $for-loop|3
     local.get $5
     local.get $7
     i32.gt_u
     if
      local.get $5
      i32.const 2
      i32.shl
      local.get $10
      i32.add
      i32.load
      local.tee $8
      i32.const -1
      i32.ne
      if
       local.get $0
       local.get $8
       local.get $5
       i32.const 2
       i32.shl
       local.tee $3
       local.get $11
       i32.add
       i32.load
       i32.const 1
       i32.add
       local.get $1
       local.get $12
       local.get $2
       call $~lib/util/sort/mergeRuns<i32>
       local.get $3
       local.get $10
       i32.add
       i32.const -1
       i32.store
       local.get $8
       local.set $3
      end
      local.get $5
      i32.const 1
      i32.sub
      local.set $5
      br $for-loop|3
     end
    end
    local.get $7
    i32.const 2
    i32.shl
    local.tee $5
    local.get $10
    i32.add
    local.get $3
    i32.store
    local.get $5
    local.get $11
    i32.add
    local.get $1
    i32.store
    local.get $4
    local.set $3
    local.get $6
    local.set $1
    local.get $7
    local.set $5
    br $while-continue|2
   end
  end
  loop $for-loop|4
   local.get $5
   if
    local.get $5
    i32.const 2
    i32.shl
    local.get $10
    i32.add
    i32.load
    local.tee $1
    i32.const -1
    i32.ne
    if
     local.get $0
     local.get $1
     local.get $5
     i32.const 2
     i32.shl
     local.get $11
     i32.add
     i32.load
     i32.const 1
     i32.add
     local.get $9
     local.get $12
     local.get $2
     call $~lib/util/sort/mergeRuns<i32>
    end
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $for-loop|4
   end
  end
  local.get $12
  call $~lib/rt/tlsf/__free
  local.get $10
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
  local.get $3
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $6
  local.get $3
  i32.sub
  i32.const 1
  i32.and
  i32.sub
  local.get $6
  i32.const 1
  i32.and
  local.get $3
  select
  local.get $1
  i32.add
  local.set $7
  loop $for-loop|0
   local.get $2
   local.get $7
   i32.ge_s
   if
    local.get $7
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    local.tee $6
    local.set $5
    local.get $7
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load
    local.set $3
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
       local.get $6
       i32.const 2
       i32.shl
       local.get $0
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
       local.get $6
       i32.const 2
       i32.shl
       local.get $0
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
    local.get $6
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.get $3
    i32.store offset=8
    loop $while-continue|2
     local.get $1
     local.get $6
     i32.le_s
     if
      block $while-break|2
       local.get $6
       i32.const 2
       i32.shl
       local.get $0
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
       local.get $6
       i32.const 2
       i32.shl
       local.get $0
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
    local.get $6
    i32.const 2
    i32.shl
    local.get $0
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
  local.get $1
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  local.get $0
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
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     i32.load offset=4
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
     i32.add
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
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     i32.load
     local.set $3
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $2
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $2
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $3
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
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     i32.load offset=4
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
     i32.add
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
  local.get $3
  local.get $2
  i32.const 1
  i32.sub
  local.tee $2
  i32.add
  local.set $7
  local.get $2
  i32.const 1
  i32.add
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $6
    i32.const 1
    i32.sub
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.get $6
    i32.const 1
    i32.sub
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load
    i32.store
    local.get $6
    i32.const 1
    i32.sub
    local.set $6
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $7
    local.get $2
    i32.sub
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.get $2
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  loop $for-loop|2
   local.get $1
   local.get $3
   i32.le_s
   if
    local.get $2
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    i32.load
    local.set $7
    local.get $6
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    i32.load
    local.set $8
    i32.const 2
    global.set $~argumentsLength
    local.get $7
    local.get $8
    local.get $5
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 0
    i32.lt_s
    if
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $7
     i32.store
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
    else
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $8
     i32.store
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    end
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
  (local $12 i32)
  (local $13 i64)
  local.get $1
  i32.const 48
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
     i32.load
     local.set $1
     local.get $0
     i32.load offset=4
     local.set $3
     i32.const 2
     global.set $~argumentsLength
     local.get $0
     local.get $3
     local.get $1
     local.get $1
     local.get $3
     local.get $2
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 0
     i32.gt_s
     local.tee $4
     select
     i32.store
     local.get $0
     i32.load offset=8
     local.set $5
     i32.const 2
     global.set $~argumentsLength
     local.get $1
     local.get $3
     local.get $4
     select
     local.tee $1
     local.get $5
     local.get $2
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 0
     i32.gt_s
     local.set $3
     local.get $0
     local.get $5
     local.get $1
     local.get $3
     select
     i32.store offset=4
     local.get $0
     local.get $1
     local.get $5
     local.get $3
     select
     i32.store offset=8
    end
    local.get $0
    i32.load
    local.set $1
    local.get $0
    i32.load offset=4
    local.set $3
    i32.const 2
    global.set $~argumentsLength
    local.get $0
    local.get $3
    local.get $1
    local.get $1
    local.get $3
    local.get $2
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 0
    i32.gt_s
    local.tee $2
    select
    i32.store
    local.get $0
    local.get $1
    local.get $3
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
  local.tee $4
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
  local.tee $10
  local.get $4
  i32.add
  local.set $11
  i32.const 0
  local.set $4
  loop $for-loop|1
   local.get $4
   local.get $6
   i32.lt_u
   if
    local.get $4
    i32.const 2
    i32.shl
    local.get $10
    i32.add
    i32.const -1
    i32.store
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
  local.get $1
  i32.const 2
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
  local.set $12
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  i32.sub
  local.tee $9
  local.get $2
  call $~lib/util/sort/extendRunRight<u32>
  local.tee $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 32
  i32.lt_s
  if
   local.get $0
   i32.const 0
   local.get $9
   i32.const 31
   local.get $9
   i32.const 31
   i32.lt_s
   select
   local.tee $1
   local.get $4
   local.get $2
   call $~lib/util/sort/insertionSort<u32>
  end
  loop $while-continue|2
   local.get $1
   local.get $9
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1
    i32.add
    local.tee $4
    local.get $9
    local.get $2
    call $~lib/util/sort/extendRunRight<u32>
    local.tee $6
    local.get $4
    i32.sub
    i32.const 1
    i32.add
    local.tee $7
    i32.const 32
    i32.lt_s
    if
     local.get $0
     local.get $4
     local.get $9
     local.get $4
     i32.const 31
     i32.add
     local.tee $6
     local.get $6
     local.get $9
     i32.gt_s
     select
     local.tee $6
     local.get $7
     local.get $2
     call $~lib/util/sort/insertionSort<u32>
    end
    local.get $3
    local.get $4
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $9
    i32.const 1
    i32.add
    i64.extend_i32_u
    local.tee $13
    i64.div_u
    local.get $4
    local.get $6
    i32.add
    i32.const 1
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $13
    i64.div_u
    i64.xor
    i32.wrap_i64
    i32.clz
    local.set $7
    loop $for-loop|3
     local.get $5
     local.get $7
     i32.gt_u
     if
      local.get $5
      i32.const 2
      i32.shl
      local.get $10
      i32.add
      i32.load
      local.tee $8
      i32.const -1
      i32.ne
      if
       local.get $0
       local.get $8
       local.get $5
       i32.const 2
       i32.shl
       local.tee $3
       local.get $11
       i32.add
       i32.load
       i32.const 1
       i32.add
       local.get $1
       local.get $12
       local.get $2
       call $~lib/util/sort/mergeRuns<u32>
       local.get $3
       local.get $10
       i32.add
       i32.const -1
       i32.store
       local.get $8
       local.set $3
      end
      local.get $5
      i32.const 1
      i32.sub
      local.set $5
      br $for-loop|3
     end
    end
    local.get $7
    i32.const 2
    i32.shl
    local.tee $5
    local.get $10
    i32.add
    local.get $3
    i32.store
    local.get $5
    local.get $11
    i32.add
    local.get $1
    i32.store
    local.get $4
    local.set $3
    local.get $6
    local.set $1
    local.get $7
    local.set $5
    br $while-continue|2
   end
  end
  loop $for-loop|4
   local.get $5
   if
    local.get $5
    i32.const 2
    i32.shl
    local.get $10
    i32.add
    i32.load
    local.tee $1
    i32.const -1
    i32.ne
    if
     local.get $0
     local.get $1
     local.get $5
     i32.const 2
     i32.shl
     local.get $11
     i32.add
     i32.load
     i32.const 1
     i32.add
     local.get $9
     local.get $12
     local.get $2
     call $~lib/util/sort/mergeRuns<u32>
    end
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $for-loop|4
   end
  end
  local.get $12
  call $~lib/rt/tlsf/__free
  local.get $10
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
  i64.const 23
  i64.shl
  local.get $0
  i64.xor
  local.tee $0
  i64.const 17
  i64.shr_u
  local.get $0
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
 (func $std/array/assertStableSortedForComplexObjects~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.sub
 )
 (func $~lib/util/sort/insertionSort<std/array/Dim> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $6
  local.get $3
  i32.sub
  i32.const 1
  i32.and
  i32.sub
  local.get $6
  i32.const 1
  i32.and
  local.get $3
  select
  local.get $1
  i32.add
  local.set $8
  loop $for-loop|0
   local.get $2
   local.get $8
   i32.ge_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $6
    local.get $8
    i32.const 2
    i32.shl
    local.get $0
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
    local.get $6
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
       local.get $6
       i32.const 2
       i32.shl
       local.get $0
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
       local.get $6
       i32.const 2
       i32.shl
       local.get $0
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
    local.get $6
    i32.const 2
    i32.shl
    local.get $0
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
       local.get $6
       i32.const 2
       i32.shl
       local.get $0
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
       local.get $6
       i32.const 2
       i32.shl
       local.get $0
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
    local.get $6
    i32.const 2
    i32.shl
    local.get $0
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
 (func $~lib/util/sort/mergeRuns<std/array/Dim> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $2
  i32.const 1
  i32.sub
  local.tee $2
  local.get $3
  i32.add
  local.set $8
  local.get $2
  i32.const 1
  i32.add
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $6
    i32.const 1
    i32.sub
    local.tee $6
    i32.const 2
    i32.shl
    local.tee $7
    local.get $4
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
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $8
    local.get $2
    i32.sub
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.get $2
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
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
    local.get $2
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    i32.load
    local.tee $8
    i32.store
    local.get $7
    local.get $6
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    i32.load
    local.tee $7
    i32.store offset=4
    i32.const 2
    global.set $~argumentsLength
    local.get $8
    local.get $7
    local.get $5
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 0
    i32.lt_s
    if
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $8
     i32.store
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
    else
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $7
     i32.store
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    end
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
 (func $~lib/util/sort/SORT<std/array/Dim> (param $0 i32) (param $1 i32) (param $2 i32)
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
  (local $13 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  block $folding-inner0
   local.get $1
   i32.const 48
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
      local.tee $3
      local.get $0
      i32.load
      local.tee $1
      i32.store
      local.get $3
      local.get $0
      i32.load offset=4
      local.tee $3
      i32.store offset=4
      i32.const 2
      global.set $~argumentsLength
      local.get $0
      local.get $3
      local.get $1
      local.get $1
      local.get $3
      local.get $2
      i32.load
      call_indirect $0 (type $i32_i32_=>_i32)
      i32.const 0
      i32.gt_s
      local.tee $5
      select
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      local.get $3
      local.get $5
      select
      local.tee $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=8
      local.tee $3
      i32.store offset=4
      i32.const 2
      global.set $~argumentsLength
      local.get $0
      local.get $3
      local.get $1
      local.get $1
      local.get $3
      local.get $2
      i32.load
      call_indirect $0 (type $i32_i32_=>_i32)
      i32.const 0
      i32.gt_s
      local.tee $5
      select
      i32.store offset=4
      local.get $0
      local.get $1
      local.get $3
      local.get $5
      select
      i32.store offset=8
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.load
     local.tee $1
     i32.store offset=8
     local.get $3
     local.get $0
     i32.load offset=4
     local.tee $3
     i32.store offset=4
     i32.const 2
     global.set $~argumentsLength
     local.get $0
     local.get $3
     local.get $1
     local.get $1
     local.get $3
     local.get $2
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 0
     i32.gt_s
     local.tee $2
     select
     i32.store
     local.get $0
     local.get $1
     local.get $3
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
    call $~lib/util/sort/insertionSort<std/array/Dim>
    br $folding-inner0
   end
   i32.const 33
   local.get $1
   i32.clz
   i32.sub
   local.tee $6
   i32.const 2
   i32.shl
   local.tee $4
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
   local.tee $10
   local.get $4
   i32.add
   local.set $11
   i32.const 0
   local.set $4
   loop $for-loop|1
    local.get $4
    local.get $6
    i32.lt_u
    if
     local.get $4
     i32.const 2
     i32.shl
     local.get $10
     i32.add
     i32.const -1
     i32.store
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|1
    end
   end
   local.get $1
   i32.const 2
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
   local.set $12
   local.get $0
   i32.const 0
   local.get $1
   i32.const 1
   i32.sub
   local.tee $9
   local.get $2
   call $~lib/util/sort/extendRunRight<std/array/Dim>
   local.tee $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 32
   i32.lt_s
   if
    local.get $0
    i32.const 0
    local.get $9
    i32.const 31
    local.get $9
    i32.const 31
    i32.lt_s
    select
    local.tee $1
    local.get $4
    local.get $2
    call $~lib/util/sort/insertionSort<std/array/Dim>
   end
   loop $while-continue|2
    local.get $1
    local.get $9
    i32.lt_s
    if
     local.get $0
     local.get $1
     i32.const 1
     i32.add
     local.tee $4
     local.get $9
     local.get $2
     call $~lib/util/sort/extendRunRight<std/array/Dim>
     local.tee $6
     local.get $4
     i32.sub
     i32.const 1
     i32.add
     local.tee $7
     i32.const 32
     i32.lt_s
     if
      local.get $0
      local.get $4
      local.get $9
      local.get $4
      i32.const 31
      i32.add
      local.tee $6
      local.get $6
      local.get $9
      i32.gt_s
      select
      local.tee $6
      local.get $7
      local.get $2
      call $~lib/util/sort/insertionSort<std/array/Dim>
     end
     local.get $3
     local.get $4
     i32.add
     i64.extend_i32_u
     i64.const 30
     i64.shl
     local.get $9
     i32.const 1
     i32.add
     i64.extend_i32_u
     local.tee $13
     i64.div_u
     local.get $4
     local.get $6
     i32.add
     i32.const 1
     i32.add
     i64.extend_i32_u
     i64.const 30
     i64.shl
     local.get $13
     i64.div_u
     i64.xor
     i32.wrap_i64
     i32.clz
     local.set $7
     loop $for-loop|3
      local.get $5
      local.get $7
      i32.gt_u
      if
       local.get $5
       i32.const 2
       i32.shl
       local.get $10
       i32.add
       i32.load
       local.tee $8
       i32.const -1
       i32.ne
       if
        local.get $0
        local.get $8
        local.get $5
        i32.const 2
        i32.shl
        local.tee $3
        local.get $11
        i32.add
        i32.load
        i32.const 1
        i32.add
        local.get $1
        local.get $12
        local.get $2
        call $~lib/util/sort/mergeRuns<std/array/Dim>
        local.get $3
        local.get $10
        i32.add
        i32.const -1
        i32.store
        local.get $8
        local.set $3
       end
       local.get $5
       i32.const 1
       i32.sub
       local.set $5
       br $for-loop|3
      end
     end
     local.get $7
     i32.const 2
     i32.shl
     local.tee $5
     local.get $10
     i32.add
     local.get $3
     i32.store
     local.get $5
     local.get $11
     i32.add
     local.get $1
     i32.store
     local.get $4
     local.set $3
     local.get $6
     local.set $1
     local.get $7
     local.set $5
     br $while-continue|2
    end
   end
   loop $for-loop|4
    local.get $5
    if
     local.get $5
     i32.const 2
     i32.shl
     local.get $10
     i32.add
     i32.load
     local.tee $1
     i32.const -1
     i32.ne
     if
      local.get $0
      local.get $1
      local.get $5
      i32.const 2
      i32.shl
      local.get $11
      i32.add
      i32.load
      i32.const 1
      i32.add
      local.get $9
      local.get $12
      local.get $2
      call $~lib/util/sort/mergeRuns<std/array/Dim>
     end
     local.get $5
     i32.const 1
     i32.sub
     local.set $5
     br $for-loop|4
    end
   end
   local.get $12
   call $~lib/rt/tlsf/__free
   local.get $10
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
  local.get $1
  local.get $0
  i32.sub
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1344
    i32.const 1104
    i32.const 122
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<std/array/Ref>#__uset
 )
 (func $start:std/array~anonymous|51 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 0
  call $~lib/array/Array<i32>#__get
  local.get $1
  i32.const 0
  call $~lib/array/Array<i32>#__get
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
    i32.const 9024
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
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.get $3
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.const 9628
    i32.add
    i64.load32_u
    local.get $3
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 9628
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
   local.get $2
   i32.const 2
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $1
   i32.const 100
   i32.rem_u
   i32.const 2
   i32.shl
   i32.const 9628
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
   local.get $2
   i32.const 2
   i32.sub
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $1
   i32.const 2
   i32.shl
   i32.const 9628
   i32.add
   i32.load
   i32.store
  else
   local.get $2
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   local.get $0
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
   local.get $2
   i32.const 1
   i32.shl
   local.get $0
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
    i32.const 9024
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
     local.get $2
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     local.get $6
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     i32.load
     call $~lib/util/number/itoa_buffered<i32>
     local.get $2
     i32.add
     local.set $2
     local.get $5
     if
      local.get $2
      i32.const 1
      i32.shl
      local.get $0
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
   local.get $2
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $3
   i32.const 2
   i32.shl
   local.get $4
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
    i32.const 9024
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
     local.get $2
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     local.get $6
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     i32.load
     call $~lib/util/number/itoa_buffered<u32>
     local.get $2
     i32.add
     local.set $2
     local.get $5
     if
      local.get $2
      i32.const 1
      i32.shl
      local.get $0
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
   local.get $2
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $3
   i32.const 2
   i32.shl
   local.get $4
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
 (func $~lib/util/number/genDigits (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i64) (param $5 i32) (result i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  local.get $2
  local.get $1
  i64.sub
  local.set $10
  local.get $2
  i64.const 1
  i32.const 0
  local.get $3
  i32.sub
  local.tee $11
  i64.extend_i32_s
  local.tee $1
  i64.shl
  local.tee $12
  i64.const 1
  i64.sub
  local.tee $13
  i64.and
  local.set $7
  local.get $2
  local.get $1
  i64.shr_u
  i32.wrap_i64
  local.tee $6
  local.set $3
  local.get $6
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
  local.set $9
  loop $while-continue|0
   local.get $9
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
                local.get $9
                i32.const 1
                i32.sub
                br_table $case9|1 $case8|1 $case7|1 $case6|1 $case5|1 $case4|1 $case3|1 $case2|1 $case1|1 $case0|1 $case10|1
               end
               local.get $6
               i32.const 1000000000
               i32.div_u
               local.set $3
               local.get $6
               i32.const 1000000000
               i32.rem_u
               local.set $6
               br $break|1
              end
              local.get $6
              i32.const 100000000
              i32.div_u
              local.set $3
              local.get $6
              i32.const 100000000
              i32.rem_u
              local.set $6
              br $break|1
             end
             local.get $6
             i32.const 10000000
             i32.div_u
             local.set $3
             local.get $6
             i32.const 10000000
             i32.rem_u
             local.set $6
             br $break|1
            end
            local.get $6
            i32.const 1000000
            i32.div_u
            local.set $3
            local.get $6
            i32.const 1000000
            i32.rem_u
            local.set $6
            br $break|1
           end
           local.get $6
           i32.const 100000
           i32.div_u
           local.set $3
           local.get $6
           i32.const 100000
           i32.rem_u
           local.set $6
           br $break|1
          end
          local.get $6
          i32.const 10000
          i32.div_u
          local.set $3
          local.get $6
          i32.const 10000
          i32.rem_u
          local.set $6
          br $break|1
         end
         local.get $6
         i32.const 1000
         i32.div_u
         local.set $3
         local.get $6
         i32.const 1000
         i32.rem_u
         local.set $6
         br $break|1
        end
        local.get $6
        i32.const 100
        i32.div_u
        local.set $3
        local.get $6
        i32.const 100
        i32.rem_u
        local.set $6
        br $break|1
       end
       local.get $6
       i32.const 10
       i32.div_u
       local.set $3
       local.get $6
       i32.const 10
       i32.rem_u
       local.set $6
       br $break|1
      end
      local.get $6
      local.set $3
      i32.const 0
      local.set $6
      br $break|1
     end
     i32.const 0
     local.set $3
    end
    local.get $3
    local.get $5
    i32.or
    if
     local.get $5
     local.tee $8
     i32.const 1
     i32.add
     local.set $5
     local.get $8
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     local.get $3
     i32.const 65535
     i32.and
     i32.const 48
     i32.add
     i32.store16
    end
    local.get $9
    i32.const 1
    i32.sub
    local.set $9
    local.get $7
    local.get $6
    i64.extend_i32_u
    local.get $11
    i64.extend_i32_s
    i64.shl
    i64.add
    local.tee $1
    local.get $4
    i64.le_u
    if
     local.get $9
     global.get $~lib/util/number/_K
     i32.add
     global.set $~lib/util/number/_K
     local.get $9
     i32.const 2
     i32.shl
     i32.const 12624
     i32.add
     i64.load32_u
     local.get $11
     i64.extend_i32_s
     i64.shl
     local.set $2
     local.get $5
     i32.const 1
     i32.sub
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     local.tee $6
     i32.load16_u
     local.set $3
     loop $while-continue|3
      local.get $2
      local.get $4
      local.get $1
      i64.sub
      i64.le_u
      i32.const 0
      local.get $1
      local.get $10
      i64.lt_u
      select
      if (result i32)
       i32.const 1
       local.get $10
       local.get $1
       i64.sub
       local.get $1
       local.get $2
       i64.add
       local.tee $7
       local.get $10
       i64.sub
       i64.gt_u
       local.get $7
       local.get $10
       i64.lt_u
       select
      else
       i32.const 0
      end
      if
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $1
       local.get $2
       i64.add
       local.set $1
       br $while-continue|3
      end
     end
     local.get $6
     local.get $3
     i32.store16
     local.get $5
     return
    end
    br $while-continue|0
   end
  end
  loop $while-continue|4
   local.get $4
   i64.const 10
   i64.mul
   local.set $4
   local.get $7
   i64.const 10
   i64.mul
   local.tee $1
   local.get $11
   i64.extend_i32_s
   i64.shr_u
   local.tee $2
   local.get $5
   i64.extend_i32_s
   i64.or
   i64.const 0
   i64.ne
   if
    local.get $5
    local.tee $3
    i32.const 1
    i32.add
    local.set $5
    local.get $3
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.get $2
    i32.wrap_i64
    i32.const 65535
    i32.and
    i32.const 48
    i32.add
    i32.store16
   end
   local.get $9
   i32.const 1
   i32.sub
   local.set $9
   local.get $4
   local.get $1
   local.get $13
   i64.and
   local.tee $7
   i64.le_u
   br_if $while-continue|4
  end
  local.get $9
  global.get $~lib/util/number/_K
  i32.add
  global.set $~lib/util/number/_K
  local.get $7
  local.set $1
  i32.const 0
  local.get $9
  i32.sub
  i32.const 2
  i32.shl
  i32.const 12624
  i32.add
  i64.load32_u
  local.get $10
  i64.mul
  local.set $2
  local.get $5
  i32.const 1
  i32.sub
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.tee $6
  i32.load16_u
  local.set $3
  loop $while-continue|6
   local.get $12
   local.get $4
   local.get $1
   i64.sub
   i64.le_u
   i32.const 0
   local.get $1
   local.get $2
   i64.lt_u
   select
   if (result i32)
    i32.const 1
    local.get $2
    local.get $1
    i64.sub
    local.get $1
    local.get $12
    i64.add
    local.tee $7
    local.get $2
    i64.sub
    i64.gt_u
    local.get $2
    local.get $7
    i64.gt_u
    select
   else
    i32.const 0
   end
   if
    local.get $3
    i32.const 1
    i32.sub
    local.set $3
    local.get $1
    local.get $12
    i64.add
    local.set $1
    br $while-continue|6
   end
  end
  local.get $6
  local.get $3
  i32.store16
  local.get $5
 )
 (func $~lib/util/number/prettify (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $2
  i32.eqz
  if
   local.get $1
   i32.const 1
   i32.shl
   local.get $0
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
  local.tee $3
  i32.const 21
  i32.le_s
  i32.const 0
  local.get $1
  local.get $3
  i32.le_s
  select
  if (result i32)
   loop $for-loop|0
    local.get $1
    local.get $3
    i32.lt_s
    if
     local.get $1
     i32.const 1
     i32.shl
     local.get $0
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
   local.get $3
   i32.const 1
   i32.shl
   local.get $0
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
    local.get $3
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.tee $4
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
    local.get $4
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
    local.get $3
    i32.const -6
    i32.gt_s
    select
    if (result i32)
     i32.const 2
     local.get $3
     i32.sub
     local.tee $4
     i32.const 1
     i32.shl
     local.get $0
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
      local.get $4
      i32.lt_s
      if
       local.get $2
       i32.const 1
       i32.shl
       local.get $0
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
     local.get $4
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
      local.tee $5
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
      local.get $5
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
      local.tee $6
      local.get $3
      i32.const 1
      i32.sub
      local.tee $0
      i32.const 0
      i32.lt_s
      local.tee $4
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
      local.get $6
      i32.const 45
      i32.const 43
      local.get $4
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
 (func $~lib/util/number/dtoa_core (param $0 i32) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i32)
  (local $13 i64)
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
  local.set $3
  local.get $2
  i64.const 4503599627370495
  i64.and
  local.get $3
  i32.const 0
  i32.ne
  i64.extend_i32_u
  i64.const 52
  i64.shl
  i64.add
  local.set $2
  local.get $3
  i32.const 1
  local.get $3
  select
  i32.const 1075
  i32.sub
  local.tee $3
  i32.const 1
  i32.sub
  local.get $2
  i64.const 1
  i64.shl
  i64.const 1
  i64.add
  local.tee $4
  i64.clz
  i32.wrap_i64
  local.tee $9
  i32.sub
  local.set $12
  local.get $4
  local.get $9
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_plus
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
  local.get $3
  local.get $9
  i32.sub
  local.get $12
  i32.sub
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_minus
  local.get $12
  global.set $~lib/util/number/_exp
  i32.const 348
  i32.const -61
  global.get $~lib/util/number/_exp
  local.tee $9
  i32.sub
  f64.convert_i32_s
  f64.const 0.30102999566398114
  f64.mul
  f64.const 347
  f64.add
  local.tee $1
  i32.trunc_f64_s
  local.tee $3
  local.get $1
  local.get $3
  f64.convert_i32_s
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
  local.get $3
  i32.const 3
  i32.shl
  i32.const 11752
  i32.add
  i64.load
  global.set $~lib/util/number/_frc_pow
  local.get $3
  i32.const 1
  i32.shl
  i32.const 12448
  i32.add
  i32.load16_s
  global.set $~lib/util/number/_exp_pow
  local.get $2
  local.get $2
  i64.clz
  i64.shl
  local.tee $4
  i64.const 4294967295
  i64.and
  local.set $13
  global.get $~lib/util/number/_frc_pow
  local.tee $2
  i64.const 4294967295
  i64.and
  local.tee $11
  local.get $4
  i64.const 32
  i64.shr_u
  local.tee $4
  i64.mul
  local.get $11
  local.get $13
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.set $11
  global.get $~lib/util/number/_frc_plus
  local.tee $6
  i64.const 4294967295
  i64.and
  local.set $7
  local.get $2
  i64.const 4294967295
  i64.and
  local.tee $5
  local.get $6
  i64.const 32
  i64.shr_u
  local.tee $6
  i64.mul
  local.get $5
  local.get $7
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.set $5
  local.get $6
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $8
  i64.mul
  local.get $5
  i64.const 32
  i64.shr_u
  i64.add
  local.get $7
  local.get $8
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
  local.set $6
  global.get $~lib/util/number/_frc_minus
  local.tee $7
  i64.const 4294967295
  i64.and
  local.set $5
  local.get $2
  i64.const 4294967295
  i64.and
  local.tee $8
  local.get $7
  i64.const 32
  i64.shr_u
  local.tee $7
  i64.mul
  local.get $5
  local.get $8
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.set $8
  local.get $10
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.get $0
  local.get $4
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $4
  i64.mul
  local.get $11
  i64.const 32
  i64.shr_u
  i64.add
  local.get $4
  local.get $13
  i64.mul
  local.get $11
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  local.get $6
  global.get $~lib/util/number/_exp_pow
  local.get $9
  i32.add
  i32.const -64
  i32.sub
  local.get $6
  local.get $7
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $2
  i64.mul
  local.get $8
  i64.const 32
  i64.shr_u
  i64.add
  local.get $2
  local.get $5
  i64.mul
  local.get $8
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
 (func $~lib/array/Array<f64>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 f64)
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
  local.set $1
  i32.const 0
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $__inlined_func$~lib/util/string/joinFloatArray<f64>
    local.get $1
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
     i32.const 9024
     local.set $0
     br $__inlined_func$~lib/util/string/joinFloatArray<f64>
    end
    block $folding-inner0
     local.get $3
     i32.eqz
     if
      local.get $4
      f64.load
      local.set $2
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 15340
      i32.lt_s
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      block $__inlined_func$~lib/util/number/dtoa
       local.get $2
       f64.const 0
       f64.eq
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const 11552
        local.set $0
        br $__inlined_func$~lib/util/number/dtoa
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
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.add
         global.set $~lib/memory/__stack_pointer
         i32.const 11584
         local.set $0
         br $__inlined_func$~lib/util/number/dtoa
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const 11616
        i32.const 11664
        local.get $2
        f64.const 0
        f64.lt
        select
        local.set $0
        br $__inlined_func$~lib/util/number/dtoa
       end
       i32.const 11696
       local.get $2
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
       i32.const 11696
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
     local.get $3
     i32.const 11516
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
      local.get $3
      local.get $6
      i32.gt_s
      if
       local.get $0
       i32.const 1
       i32.shl
       local.get $1
       i32.add
       local.get $6
       i32.const 3
       i32.shl
       local.get $4
       i32.add
       f64.load
       call $~lib/util/number/dtoa_buffered
       local.get $0
       i32.add
       local.set $0
       local.get $5
       if
        local.get $0
        i32.const 1
        i32.shl
        local.get $1
        i32.add
        i32.const 11520
        local.get $5
        i32.const 1
        i32.shl
        call $~lib/memory/memory.copy
        local.get $0
        local.get $5
        i32.add
        local.set $0
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
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     local.get $3
     i32.const 3
     i32.shl
     local.get $4
     i32.add
     f64.load
     call $~lib/util/number/dtoa_buffered
     local.get $0
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
     local.set $0
     br $__inlined_func$~lib/util/string/joinFloatArray<f64>
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   local.get $0
   return
  end
  i32.const 31744
  i32.const 31792
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
    i32.const 9024
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
    i32.const 9024
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
     local.get $3
     i32.const 2
     i32.shl
     local.get $7
     i32.add
     i32.load
     local.tee $4
     i32.store offset=4
     local.get $4
     if
      local.get $4
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      local.get $0
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
   local.get $6
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.tee $5
   i32.mul
   local.get $0
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
     local.get $3
     i32.const 2
     i32.shl
     local.get $7
     i32.add
     i32.load
     local.tee $4
     i32.store offset=4
     local.get $4
     if
      local.get $2
      i32.const 1
      i32.shl
      local.get $0
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
      local.get $2
      i32.const 1
      i32.shl
      local.get $0
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
   local.get $6
   i32.const 2
   i32.shl
   local.get $7
   i32.add
   i32.load
   local.tee $1
   i32.store offset=4
   local.get $1
   if
    local.get $2
    i32.const 1
    i32.shl
    local.get $0
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
    i32.const 9024
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
    i32.const 12864
    i32.const 9024
    local.get $1
    select
    local.set $0
    br $__inlined_func$~lib/util/string/joinReferenceArray<std/array/Ref|null>
   end
   i32.const 9024
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 9024
   i32.store offset=4
   i32.const 9308
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
     local.get $3
     i32.const 2
     i32.shl
     local.get $1
     i32.add
     i32.load
     local.tee $4
     i32.store
     local.get $4
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $4
      i32.const 12864
      i32.store offset=8
      local.get $4
      local.get $0
      i32.const 12864
      call $~lib/string/String.__concat
      local.tee $0
      i32.store offset=4
     end
     local.get $5
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.const 9312
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
   local.get $2
   i32.const 2
   i32.shl
   local.get $1
   i32.add
   i32.load
   local.tee $1
   i32.store
   local.get $1
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i32.const 12864
    i32.store offset=8
    local.get $1
    local.get $0
    i32.const 12864
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
   local.get $2
   i32.const 1
   i32.shl
   local.get $0
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
  local.get $0
  local.get $1
  i32.extend8_s
  local.tee $0
  local.get $0
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
 (func $~lib/util/number/itoa_buffered<u16> (param $0 i32) (param $1 i32) (result i32)
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
  local.get $0
  local.get $1
  i32.const 65535
  i32.and
  local.tee $0
  local.get $0
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
 (func $~lib/util/number/utoa64_dec_lut (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  loop $while-continue|0
   local.get $1
   i64.const 100000000
   i64.ge_u
   if
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
    i32.div_u
    local.set $4
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.get $3
    i32.const 10000
    i32.rem_u
    local.tee $3
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.const 9628
    i32.add
    i64.load32_u
    local.get $3
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 9628
    i32.add
    i64.load32_u
    i64.const 32
    i64.shl
    i64.or
    i64.store
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.get $4
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.const 9628
    i32.add
    i64.load32_u
    local.get $4
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 9628
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
 (func $~lib/array/Array<u64>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
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
  local.set $1
  i32.const 0
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $__inlined_func$~lib/util/string/joinIntegerArray<u64>
    local.get $1
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
     i32.const 9024
     local.set $0
     br $__inlined_func$~lib/util/string/joinIntegerArray<u64>
    end
    block $folding-inner0
     local.get $3
     i32.eqz
     if
      local.get $4
      i64.load
      local.set $2
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 15340
      i32.lt_s
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      block $__inlined_func$~lib/util/number/utoa64
       local.get $2
       i64.eqz
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const 9616
        local.set $0
        br $__inlined_func$~lib/util/number/utoa64
       end
       local.get $2
       i64.const 4294967295
       i64.le_u
       if
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.wrap_i64
        local.tee $3
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
        local.get $2
        i64.const 1000000000000000
        i64.lt_u
        if (result i32)
         local.get $2
         i64.const 1000000000000
         i64.lt_u
         if (result i32)
          local.get $2
          i64.const 100000000000
          i64.ge_u
          i32.const 10
          i32.add
          local.get $2
          i64.const 10000000000
          i64.ge_u
          i32.add
         else
          local.get $2
          i64.const 100000000000000
          i64.ge_u
          i32.const 13
          i32.add
          local.get $2
          i64.const 10000000000000
          i64.ge_u
          i32.add
         end
        else
         local.get $2
         i64.const 100000000000000000
         i64.lt_u
         if (result i32)
          local.get $2
          i64.const 10000000000000000
          i64.ge_u
          i32.const 16
          i32.add
         else
          local.get $2
          i64.const -8446744073709551616
          i64.ge_u
          i32.const 18
          i32.add
          local.get $2
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
        local.get $2
        local.get $1
        call $~lib/util/number/utoa64_dec_lut
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
      end
      br $folding-inner0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.const 9308
     i32.load
     i32.const 1
     i32.shr_u
     local.tee $5
     i32.const 20
     i32.add
     i32.mul
     i32.const 20
     i32.add
     local.tee $7
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/itcms/__new
     local.tee $1
     i32.store
     loop $for-loop|0
      local.get $3
      local.get $6
      i32.gt_s
      if
       local.get $0
       i32.const 1
       i32.shl
       local.get $1
       i32.add
       local.get $6
       i32.const 3
       i32.shl
       local.get $4
       i32.add
       i64.load
       call $~lib/util/number/itoa_buffered<u64>
       local.get $0
       i32.add
       local.set $0
       local.get $5
       if
        local.get $0
        i32.const 1
        i32.shl
        local.get $1
        i32.add
        i32.const 9312
        local.get $5
        i32.const 1
        i32.shl
        call $~lib/memory/memory.copy
        local.get $0
        local.get $5
        i32.add
        local.set $0
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
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     local.get $3
     i32.const 3
     i32.shl
     local.get $4
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
      local.set $0
      br $folding-inner0
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $1
     local.set $0
     br $__inlined_func$~lib/util/string/joinIntegerArray<u64>
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   local.get $0
   return
  end
  i32.const 31744
  i32.const 31792
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
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
   local.get $3
   i32.const 1
   i32.shl
   local.get $0
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
 (func $~lib/array/Array<i64>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=4
  local.set $5
  local.get $0
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $__inlined_func$~lib/util/string/joinIntegerArray<i64>
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
     i32.const 9024
     local.set $0
     br $__inlined_func$~lib/util/string/joinIntegerArray<i64>
    end
    block $folding-inner0
     local.get $4
     i32.eqz
     if
      local.get $5
      i64.load
      i64.extend32_s
      local.set $2
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 15340
      i32.lt_s
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      block $__inlined_func$~lib/util/number/itoa64
       local.get $2
       i64.eqz
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const 9616
        local.set $0
        br $__inlined_func$~lib/util/number/itoa64
       end
       i64.const 0
       local.get $2
       i64.sub
       local.get $2
       local.get $2
       i64.const 63
       i64.shr_u
       i32.wrap_i64
       local.tee $3
       select
       local.tee $2
       i64.const 4294967295
       i64.le_u
       if
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.wrap_i64
        local.tee $6
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
        local.get $3
        i32.add
        local.tee $1
        i32.const 1
        i32.shl
        i32.const 1
        call $~lib/rt/itcms/__new
        local.tee $0
        i32.store
        local.get $0
        local.get $6
        local.get $1
        call $~lib/util/number/utoa32_dec_lut
       else
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i64.const 1000000000000000
        i64.lt_u
        if (result i32)
         local.get $2
         i64.const 1000000000000
         i64.lt_u
         if (result i32)
          local.get $2
          i64.const 100000000000
          i64.ge_u
          i32.const 10
          i32.add
          local.get $2
          i64.const 10000000000
          i64.ge_u
          i32.add
         else
          local.get $2
          i64.const 100000000000000
          i64.ge_u
          i32.const 13
          i32.add
          local.get $2
          i64.const 10000000000000
          i64.ge_u
          i32.add
         end
        else
         local.get $2
         i64.const 100000000000000000
         i64.lt_u
         if (result i32)
          local.get $2
          i64.const 10000000000000000
          i64.ge_u
          i32.const 16
          i32.add
         else
          local.get $2
          i64.const -8446744073709551616
          i64.ge_u
          i32.const 18
          i32.add
          local.get $2
          i64.const 1000000000000000000
          i64.ge_u
          i32.add
         end
        end
        local.get $3
        i32.add
        local.tee $1
        i32.const 1
        i32.shl
        i32.const 1
        call $~lib/rt/itcms/__new
        local.tee $0
        i32.store
        local.get $0
        local.get $2
        local.get $1
        call $~lib/util/number/utoa64_dec_lut
       end
       local.get $3
       if
        local.get $0
        i32.const 45
        i32.store16
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
      end
      br $folding-inner0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.const 9308
     i32.load
     i32.const 1
     i32.shr_u
     local.tee $7
     i32.const 21
     i32.add
     i32.mul
     i32.const 21
     i32.add
     local.tee $6
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/itcms/__new
     local.tee $1
     i32.store
     loop $for-loop|0
      local.get $3
      local.get $4
      i32.lt_s
      if
       local.get $0
       i32.const 1
       i32.shl
       local.get $1
       i32.add
       local.get $3
       i32.const 3
       i32.shl
       local.get $5
       i32.add
       i64.load
       call $~lib/util/number/itoa_buffered<i64>
       local.get $0
       i32.add
       local.set $0
       local.get $7
       if
        local.get $0
        i32.const 1
        i32.shl
        local.get $1
        i32.add
        i32.const 9312
        local.get $7
        i32.const 1
        i32.shl
        call $~lib/memory/memory.copy
        local.get $0
        local.get $7
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
     local.get $6
     local.get $0
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     local.get $4
     i32.const 3
     i32.shl
     local.get $5
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
      local.set $0
      br $folding-inner0
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $1
     local.set $0
     br $__inlined_func$~lib/util/string/joinIntegerArray<i64>
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   local.get $0
   return
  end
  i32.const 31744
  i32.const 31792
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/util/number/itoa_buffered<u8> (param $0 i32) (param $1 i32) (result i32)
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
  local.get $0
  local.get $1
  i32.const 255
  i32.and
  local.tee $0
  local.get $0
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
    i32.const 9024
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
     local.get $2
     i32.const 1
     i32.shl
     local.get $0
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
      local.get $2
      i32.const 1
      i32.shl
      local.get $0
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
   local.get $2
   i32.const 1
   i32.shl
   local.get $0
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
  local.get $3
  local.get $0
  i32.load offset=4
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
  local.get $3
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $6
  local.get $3
  i32.sub
  i32.const 1
  i32.and
  i32.sub
  local.get $6
  i32.const 1
  i32.and
  local.get $3
  select
  local.get $1
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
    i32.load8_u offset=1
    local.tee $6
    local.set $5
    local.get $0
    local.get $7
    i32.add
    i32.load8_u
    local.set $3
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
     i32.load8_u offset=1
     local.get $0
     local.get $4
     i32.add
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
     i32.load8_u
     local.set $3
     local.get $0
     local.get $1
     i32.add
     local.get $0
     local.get $2
     i32.add
     i32.load8_u
     i32.store8
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $0
     local.get $2
     i32.add
     local.get $3
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
     i32.load8_u offset=1
     local.get $0
     local.get $4
     i32.add
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
  local.get $3
  local.get $2
  i32.const 1
  i32.sub
  local.tee $2
  i32.add
  local.set $7
  local.get $2
  i32.const 1
  i32.add
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $6
    i32.const 1
    i32.sub
    local.get $4
    i32.add
    local.get $6
    i32.const 1
    i32.sub
    local.get $0
    i32.add
    i32.load8_u
    i32.store8
    local.get $6
    i32.const 1
    i32.sub
    local.set $6
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $7
    local.get $2
    i32.sub
    local.get $4
    i32.add
    local.get $0
    local.get $2
    i32.add
    i32.load8_u offset=1
    i32.store8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  loop $for-loop|2
   local.get $1
   local.get $3
   i32.le_s
   if
    local.get $2
    local.get $4
    i32.add
    i32.load8_u
    local.set $7
    local.get $4
    local.get $6
    i32.add
    i32.load8_u
    local.set $8
    i32.const 2
    global.set $~argumentsLength
    local.get $7
    local.get $8
    local.get $5
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 0
    i32.lt_s
    if
     local.get $0
     local.get $1
     i32.add
     local.get $7
     i32.store8
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
    else
     local.get $0
     local.get $1
     i32.add
     local.get $8
     i32.store8
     local.get $6
     i32.const 1
     i32.add
     local.set $6
    end
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
  (local $12 i32)
  (local $13 i64)
  local.get $1
  i32.const 48
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
     i32.load8_u
     local.set $1
     local.get $0
     i32.load8_u offset=1
     local.set $3
     i32.const 2
     global.set $~argumentsLength
     local.get $0
     local.get $3
     local.get $1
     local.get $1
     local.get $3
     local.get $2
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 0
     i32.gt_s
     local.tee $4
     select
     i32.store8
     local.get $0
     i32.load8_u offset=2
     local.set $5
     i32.const 2
     global.set $~argumentsLength
     local.get $1
     local.get $3
     local.get $4
     select
     local.tee $1
     local.get $5
     local.get $2
     i32.load
     call_indirect $0 (type $i32_i32_=>_i32)
     i32.const 0
     i32.gt_s
     local.set $3
     local.get $0
     local.get $5
     local.get $1
     local.get $3
     select
     i32.store8 offset=1
     local.get $0
     local.get $1
     local.get $5
     local.get $3
     select
     i32.store8 offset=2
    end
    local.get $0
    i32.load8_u
    local.set $1
    local.get $0
    i32.load8_u offset=1
    local.set $3
    i32.const 2
    global.set $~argumentsLength
    local.get $0
    local.get $3
    local.get $1
    local.get $1
    local.get $3
    local.get $2
    i32.load
    call_indirect $0 (type $i32_i32_=>_i32)
    i32.const 0
    i32.gt_s
    local.tee $2
    select
    i32.store8
    local.get $0
    local.get $1
    local.get $3
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
  local.tee $4
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
  local.tee $10
  local.get $4
  i32.add
  local.set $11
  i32.const 0
  local.set $4
  loop $for-loop|1
   local.get $4
   local.get $6
   i32.lt_u
   if
    local.get $4
    i32.const 2
    i32.shl
    local.get $10
    i32.add
    i32.const -1
    i32.store
    local.get $4
    i32.const 1
    i32.add
    local.set $4
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
  local.set $12
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  i32.sub
  local.tee $9
  local.get $2
  call $~lib/util/sort/extendRunRight<u8>
  local.tee $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 32
  i32.lt_s
  if
   local.get $0
   i32.const 0
   local.get $9
   i32.const 31
   local.get $9
   i32.const 31
   i32.lt_s
   select
   local.tee $1
   local.get $4
   local.get $2
   call $~lib/util/sort/insertionSort<u8>
  end
  loop $while-continue|2
   local.get $1
   local.get $9
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1
    i32.add
    local.tee $4
    local.get $9
    local.get $2
    call $~lib/util/sort/extendRunRight<u8>
    local.tee $6
    local.get $4
    i32.sub
    i32.const 1
    i32.add
    local.tee $7
    i32.const 32
    i32.lt_s
    if
     local.get $0
     local.get $4
     local.get $9
     local.get $4
     i32.const 31
     i32.add
     local.tee $6
     local.get $6
     local.get $9
     i32.gt_s
     select
     local.tee $6
     local.get $7
     local.get $2
     call $~lib/util/sort/insertionSort<u8>
    end
    local.get $3
    local.get $4
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $9
    i32.const 1
    i32.add
    i64.extend_i32_u
    local.tee $13
    i64.div_u
    local.get $4
    local.get $6
    i32.add
    i32.const 1
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $13
    i64.div_u
    i64.xor
    i32.wrap_i64
    i32.clz
    local.set $7
    loop $for-loop|3
     local.get $5
     local.get $7
     i32.gt_u
     if
      local.get $5
      i32.const 2
      i32.shl
      local.get $10
      i32.add
      i32.load
      local.tee $8
      i32.const -1
      i32.ne
      if
       local.get $0
       local.get $8
       local.get $5
       i32.const 2
       i32.shl
       local.tee $3
       local.get $11
       i32.add
       i32.load
       i32.const 1
       i32.add
       local.get $1
       local.get $12
       local.get $2
       call $~lib/util/sort/mergeRuns<u8>
       local.get $3
       local.get $10
       i32.add
       i32.const -1
       i32.store
       local.get $8
       local.set $3
      end
      local.get $5
      i32.const 1
      i32.sub
      local.set $5
      br $for-loop|3
     end
    end
    local.get $7
    i32.const 2
    i32.shl
    local.tee $5
    local.get $10
    i32.add
    local.get $3
    i32.store
    local.get $5
    local.get $11
    i32.add
    local.get $1
    i32.store
    local.get $4
    local.set $3
    local.get $6
    local.set $1
    local.get $7
    local.set $5
    br $while-continue|2
   end
  end
  loop $for-loop|4
   local.get $5
   if
    local.get $5
    i32.const 2
    i32.shl
    local.get $10
    i32.add
    i32.load
    local.tee $1
    i32.const -1
    i32.ne
    if
     local.get $0
     local.get $1
     local.get $5
     i32.const 2
     i32.shl
     local.get $11
     i32.add
     i32.load
     i32.const 1
     i32.add
     local.get $9
     local.get $12
     local.get $2
     call $~lib/util/sort/mergeRuns<u8>
    end
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $for-loop|4
   end
  end
  local.get $12
  call $~lib/rt/tlsf/__free
  local.get $10
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
  local.get $1
  i32.const 255
  i32.and
  i32.gt_u
  local.get $0
  i32.const 255
  i32.and
  local.get $1
  i32.const 255
  i32.and
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
      block $invalid
       block $std/array/ArrayStr
        block $std/array/Proxy<i32>
         block $std/array/Dim
          block $std/array/Ref
           block $~lib/string/String
            block $~lib/arraybuffer/ArrayBuffer
             local.get $0
             i32.const 8
             i32.sub
             i32.load
             br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner3 $folding-inner4 $std/array/Ref $folding-inner3 $folding-inner4 $folding-inner4 $folding-inner1 $folding-inner4 $folding-inner4 $folding-inner1 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $std/array/Dim $folding-inner1 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner1 $folding-inner2 $std/array/Proxy<i32> $folding-inner1 $folding-inner2 $folding-inner1 $folding-inner2 $folding-inner1 $folding-inner2 $folding-inner4 $folding-inner4 $folding-inner4 $folding-inner4 $folding-inner4 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner4 $folding-inner4 $std/array/ArrayStr $folding-inner2 $invalid
            end
            return
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
   local.tee $0
   if
    local.get $0
    call $~lib/rt/itcms/__visit
   end
   return
  end
  local.get $0
  i32.load
  call $~lib/rt/itcms/__visit
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 1016
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 8576
  i32.store
  local.get $0
  i32.const 8576
  call $std/array/assertSorted<i32>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/sort/extendRunRight<std/array/Dim> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  local.get $1
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load
  local.tee $5
  i32.store
  local.get $4
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  local.get $0
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
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
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
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.tee $3
     i32.load
     local.tee $5
     i32.store offset=8
     local.get $3
     local.get $2
     i32.const 2
     i32.shl
     local.get $0
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
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
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
   i32.const 15340
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
   call $~lib/util/sort/SORT<std/array/Dim>
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
    i32.const 15340
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
    i32.const 1016
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
  i32.const 31744
  i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 9312
  i32.store
  local.get $0
  i32.const 9312
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 9312
  i32.store
  local.get $0
  i32.const 9312
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 9312
  i32.store
  local.get $0
  i32.const 9312
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 9312
  i32.store
  local.get $0
  i32.const 9312
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
   i32.const 15340
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 9312
   i32.store
   local.get $0
   i32.load offset=4
   local.set $2
   local.get $0
   i32.load offset=12
   local.set $0
   local.get $1
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 0
   i32.store offset=8
   block $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<u32>>
    local.get $0
    i32.const 1
    i32.sub
    local.tee $1
    i32.const 0
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 9024
     local.set $0
     br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<u32>>
    end
    local.get $1
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.load
     local.tee $0
     i32.store
     local.get $0
     if (result i32)
      local.get $0
      call $~lib/array/Array<u32>#toString
     else
      i32.const 9024
     end
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<u32>>
    end
    i32.const 9024
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 9024
    i32.store offset=4
    i32.const 9308
    i32.load
    i32.const 1
    i32.shr_u
    local.set $5
    loop $for-loop|0
     local.get $1
     local.get $4
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.const 2
      i32.shl
      local.get $2
      i32.add
      i32.load
      local.tee $3
      i32.store
      local.get $3
      if
       global.get $~lib/memory/__stack_pointer
       local.get $3
       call $~lib/array/Array<u32>#toString
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=8
       local.get $0
       local.get $3
       call $~lib/string/String.__concat
       local.tee $0
       i32.store offset=4
      end
      local.get $5
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.const 9312
       call $~lib/string/String.__concat
       local.tee $0
       i32.store offset=4
      end
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.const 2
    i32.shl
    local.get $2
    i32.add
    i32.load
    local.tee $2
    i32.store
    local.get $2
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     call $~lib/array/Array<u32>#toString
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=8
     local.get $0
     local.get $2
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
  i32.const 31744
  i32.const 31792
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
  (local $8 i32)
  (local $9 f64)
  (local $10 i32)
  (local $11 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 172
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner3
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $0
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
   local.get $0
   i64.const 0
   i64.store offset=32
   local.get $0
   i64.const 0
   i64.store offset=40
   local.get $0
   i64.const 0
   i64.store offset=48
   local.get $0
   i64.const 0
   i64.store offset=56
   local.get $0
   i64.const 0
   i64.store offset=64
   local.get $0
   i64.const 0
   i64.store offset=72
   local.get $0
   i64.const 0
   i64.store offset=80
   local.get $0
   i64.const 0
   i64.store offset=88
   local.get $0
   i64.const 0
   i64.store offset=96
   local.get $0
   i64.const 0
   i64.store offset=104
   local.get $0
   i64.const 0
   i64.store offset=112
   local.get $0
   i64.const 0
   i64.store offset=120
   local.get $0
   i64.const 0
   i64.store offset=128
   local.get $0
   i64.const 0
   i64.store offset=136
   local.get $0
   i64.const 0
   i64.store offset=144
   local.get $0
   i64.const 0
   i64.store offset=152
   local.get $0
   i64.const 0
   i64.store offset=160
   local.get $0
   i32.const 0
   i32.store offset=168
   memory.size
   i32.const 16
   i32.shl
   i32.const 31724
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
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 12
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.const 2
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
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.const 1
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
   i32.const 1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1664
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $1
   i32.store offset=4
   local.get $1
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
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
   local.get $1
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
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
   local.get $1
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
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
   local.get $1
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
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
   local.get $1
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
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
   local.tee $0
   i32.store offset=12
   local.get $0
   i32.load offset=4
   local.set $4
   i32.const 1
   local.get $0
   i32.load offset=12
   local.tee $2
   local.get $2
   i32.const 1
   i32.gt_s
   select
   local.set $1
   i32.const 3
   local.get $2
   local.get $2
   i32.const 3
   i32.gt_s
   select
   local.set $2
   loop $for-loop|0
    local.get $1
    local.get $2
    i32.lt_s
    if
     local.get $1
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     i32.const 1
     i32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   i32.const 5
   i32.const 2
   i32.const 7
   i32.const 1936
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
    i32.const 79
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.tee $1
   i32.load offset=4
   local.set $0
   i32.const 0
   local.get $1
   i32.load offset=12
   local.tee $2
   local.get $2
   i32.const 0
   i32.gt_s
   select
   local.set $5
   loop $for-loop|03
    local.get $2
    local.get $5
    i32.gt_s
    if
     local.get $5
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     i32.const 0
     i32.store
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|03
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
   local.tee $2
   local.get $2
   i32.const 0
   i32.gt_s
   select
   local.set $0
   local.get $2
   i32.const 3
   i32.sub
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
   local.set $2
   loop $for-loop|05
    local.get $0
    local.get $2
    i32.lt_s
    if
     local.get $0
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     i32.const 1
     i32.store
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|05
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
   local.tee $2
   i32.const 2
   i32.sub
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
   local.set $5
   loop $for-loop|07
    local.get $2
    local.get $5
    i32.gt_s
    if
     local.get $5
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     i32.const 2
     i32.store
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|07
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
   i32.load offset=4
   local.set $4
   i32.const 1
   local.get $1
   i32.load offset=12
   local.tee $2
   local.get $2
   i32.const 1
   i32.gt_s
   select
   local.set $0
   i32.const 0
   local.get $2
   local.get $2
   i32.const 0
   i32.gt_s
   select
   local.set $2
   loop $for-loop|09
    local.get $0
    local.get $2
    i32.lt_s
    if
     local.get $0
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     i32.const 0
     i32.store
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|09
    end
   end
   i32.const 5
   i32.const 2
   i32.const 7
   i32.const 2128
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
    i32.const 91
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
   i32.const 42
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
   i32.const 43
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
   i32.const 44
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
   i32.const 45
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.const 2
   i32.const 2
   i32.const 8
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.const 0
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   i32.const 1
   i32.const 0
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   local.get $1
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.const 2
   i32.const 0
   call $~lib/array/ensureCapacity
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $1
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
   local.tee $0
   i32.store offset=12
   local.get $0
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
   local.get $0
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
   local.get $0
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
   local.get $0
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
   local.tee $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.get $2
   call $~lib/array/Array<i32>#concat
   local.tee $1
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.get $1
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   call $~lib/array/Array<i32>#concat
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
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
   local.get $1
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
   local.get $1
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
   local.get $1
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
   local.get $2
   i32.const 46
   call $~lib/array/Array<i32>#push
   drop
   local.get $2
   i32.const 47
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $1
   local.get $0
   local.get $2
   call $~lib/array/Array<i32>#concat
   local.tee $1
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
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
   local.get $2
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
   local.get $1
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
   local.get $1
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
   local.get $1
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
   local.get $1
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
   local.get $1
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
   local.get $1
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
   local.get $1
   call $~lib/array/Array<i32>#pop
   drop
   local.get $1
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
   local.tee $2
   i32.store offset=4
   local.get $2
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
   local.tee $1
   global.get $std/array/arr
   local.tee $0
   i32.store offset=8
   local.get $1
   local.get $2
   local.get $0
   call $~lib/array/Array<i32>#concat
   local.tee $0
   i32.store offset=16
   local.get $0
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
   local.get $2
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
   local.tee $0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.const 3
   i32.const 2147483647
   call $~lib/array/Array<i32>#copyWithin
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2384
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
   local.tee $0
   i32.store offset=16
   local.get $0
   i32.const 1
   i32.const 3
   i32.const 2147483647
   call $~lib/array/Array<i32>#copyWithin
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2480
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
   local.tee $0
   i32.store offset=16
   local.get $0
   i32.const 1
   i32.const 2
   i32.const 2147483647
   call $~lib/array/Array<i32>#copyWithin
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2576
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
   local.tee $0
   i32.store offset=16
   local.get $0
   i32.const 2
   i32.const 2
   i32.const 2147483647
   call $~lib/array/Array<i32>#copyWithin
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2672
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
   local.tee $0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.const 3
   i32.const 4
   call $~lib/array/Array<i32>#copyWithin
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2768
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
   local.tee $0
   i32.store offset=16
   local.get $0
   i32.const 1
   i32.const 3
   i32.const 4
   call $~lib/array/Array<i32>#copyWithin
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2864
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
   local.tee $0
   i32.store offset=16
   local.get $0
   i32.const 1
   i32.const 2
   i32.const 4
   call $~lib/array/Array<i32>#copyWithin
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2960
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
   local.tee $0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.const -2
   i32.const 2147483647
   call $~lib/array/Array<i32>#copyWithin
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3056
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
   local.tee $0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.const -2
   i32.const -1
   call $~lib/array/Array<i32>#copyWithin
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3152
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
   local.tee $0
   i32.store offset=16
   local.get $0
   i32.const -4
   i32.const -3
   i32.const -2
   call $~lib/array/Array<i32>#copyWithin
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3248
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
   local.tee $0
   i32.store offset=16
   local.get $0
   i32.const -4
   i32.const -3
   i32.const -1
   call $~lib/array/Array<i32>#copyWithin
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3344
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
   local.tee $0
   i32.store offset=16
   local.get $0
   i32.const -4
   i32.const -3
   i32.const 2147483647
   call $~lib/array/Array<i32>#copyWithin
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3440
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
    i32.const 225
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 42
   call $~lib/array/Array<i32>#unshift
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
   i32.const 41
   call $~lib/array/Array<i32>#unshift
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.const 1
   i32.lt_s
   if
    i32.const 2176
    i32.const 1104
    i32.const 342
    i32.const 18
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
   local.get $0
   i32.const 1
   i32.sub
   local.tee $1
   i32.const 2
   i32.shl
   local.tee $0
   call $~lib/memory/memory.copy
   local.get $0
   local.get $4
   i32.add
   i32.const 0
   i32.store
   local.get $5
   local.get $1
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 2
   i32.const 2147483647
   call $~lib/array/Array<i32>#slice
   local.tee $0
   i32.store offset=16
   i32.const 3
   i32.const 2
   i32.const 3
   i32.const 3536
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
    i32.const 282
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 2
   i32.const 4
   call $~lib/array/Array<i32>#slice
   local.tee $0
   i32.store offset=16
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 3568
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
    i32.const 285
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 1
   i32.const 5
   call $~lib/array/Array<i32>#slice
   local.tee $0
   i32.store offset=16
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 3600
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
    i32.const 288
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 0
   i32.const 2147483647
   call $~lib/array/Array<i32>#slice
   local.tee $0
   i32.store offset=16
   local.get $0
   local.get $2
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
   local.get $2
   i32.const -2
   i32.const 2147483647
   call $~lib/array/Array<i32>#slice
   local.tee $0
   i32.store offset=16
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 3648
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
    i32.const 294
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 2
   i32.const -1
   call $~lib/array/Array<i32>#slice
   local.tee $0
   i32.store offset=16
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 3680
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
    i32.const 297
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const -3
   i32.const -1
   call $~lib/array/Array<i32>#slice
   local.tee $0
   i32.store offset=16
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 3712
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
    i32.const 300
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const -1
   i32.const -3
   call $~lib/array/Array<i32>#slice
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=12
   if
    i32.const 0
    i32.const 1552
    i32.const 302
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 10
   i32.const 2147483647
   call $~lib/array/Array<i32>#slice
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
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
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=12
   local.tee $0
   if
    local.get $1
    i32.load offset=4
    local.tee $1
    local.get $0
    i32.const 1
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    local.set $0
    loop $while-continue|0
     local.get $0
     local.get $1
     i32.gt_u
     if
      local.get $1
      i32.load
      local.set $2
      local.get $1
      local.get $0
      i32.load
      i32.store
      local.get $0
      local.get $2
      i32.store
      local.get $1
      i32.const 4
      i32.add
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.set $0
      br $while-continue|0
     end
    end
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
   i32.const 43
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 44
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $1
   i32.store
   i32.const 0
   local.set $0
   block $__inlined_func$~lib/array/Array<i32>#indexOf
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|010
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 44
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|010
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
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
   local.tee $1
   i32.store
   i32.const 0
   local.set $0
   block $__inlined_func$~lib/array/Array<i32>#indexOf11
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf11
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|012
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 42
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf11
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|012
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
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
   local.tee $1
   i32.store
   i32.const 0
   local.set $0
   block $__inlined_func$~lib/array/Array<i32>#indexOf13
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf13
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|014
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 45
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf13
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|014
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
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
   local.tee $1
   i32.store
   i32.const 100
   local.set $0
   block $__inlined_func$~lib/array/Array<i32>#indexOf15
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const 100
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf15
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|016
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf15
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|016
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
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
   local.tee $1
   i32.store
   block $__inlined_func$~lib/array/Array<i32>#indexOf17
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const -100
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf17
    end
    local.get $2
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
    loop $while-continue|018
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf17
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|018
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
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
   local.tee $1
   i32.store
   block $__inlined_func$~lib/array/Array<i32>#indexOf19
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const -2
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf19
    end
    local.get $2
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
    loop $while-continue|020
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf19
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|020
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
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
   local.tee $1
   i32.store
   block $__inlined_func$~lib/array/Array<i32>#indexOf21
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const -4
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf21
    end
    local.get $2
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
    loop $while-continue|022
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf21
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|022
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
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
   local.tee $1
   i32.store
   i32.const 0
   local.set $0
   block $__inlined_func$~lib/array/Array<i32>#indexOf23
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf23
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|024
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf23
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|024
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
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
   local.tee $1
   i32.store
   i32.const 1
   local.set $0
   block $__inlined_func$~lib/array/Array<i32>#indexOf25
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const 1
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf25
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|026
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
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
   local.tee $1
   i32.store
   i32.const 2
   local.set $0
   block $__inlined_func$~lib/array/Array<i32>#indexOf27
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const 2
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf27
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|028
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf27
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|028
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
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
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   i32.const 0
   local.set $0
   i32.const -1
   local.set $1
   block $__inlined_func$~lib/array/Array<f32>#indexOf
    local.get $2
    i32.load offset=12
    local.tee $4
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $4
    select
    br_if $__inlined_func$~lib/array/Array<f32>#indexOf
    local.get $2
    i32.load offset=4
    local.set $2
    loop $while-continue|025
     local.get $0
     local.get $4
     i32.lt_s
     if
      local.get $0
      local.tee $1
      i32.const 2
      i32.shl
      local.get $2
      i32.add
      f32.load
      f32.const nan:0x400000
      f32.eq
      br_if $__inlined_func$~lib/array/Array<f32>#indexOf
      local.get $1
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|025
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
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
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   i32.const 0
   local.set $0
   i32.const -1
   local.set $1
   block $__inlined_func$~lib/array/Array<f64>#indexOf
    local.get $2
    i32.load offset=12
    local.tee $4
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $4
    select
    br_if $__inlined_func$~lib/array/Array<f64>#indexOf
    local.get $2
    i32.load offset=4
    local.set $2
    loop $while-continue|02629
     local.get $0
     local.get $4
     i32.lt_s
     if
      local.get $0
      local.tee $1
      i32.const 3
      i32.shl
      local.get $2
      i32.add
      f64.load
      f64.const nan:0x8000000000000
      f64.eq
      br_if $__inlined_func$~lib/array/Array<f64>#indexOf
      local.get $1
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|02629
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
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
   local.tee $0
   i32.store offset=16
   i32.const 1
   global.set $~argumentsLength
   local.get $0
   i32.load offset=12
   local.set $2
   i32.const -1
   local.set $1
   block $__inlined_func$~lib/array/Array<i32>#lastIndexOf
    local.get $0
    i32.load offset=12
    local.tee $4
    i32.eqz
    br_if $__inlined_func$~lib/array/Array<i32>#lastIndexOf
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
    local.set $4
    loop $while-continue|00
     local.get $2
     i32.const 0
     i32.ge_s
     if
      local.get $2
      local.tee $1
      i32.const 2
      i32.shl
      local.get $4
      i32.add
      i32.load
      i32.const 2
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#lastIndexOf
      local.get $1
      i32.const 1
      i32.sub
      local.set $2
      br $while-continue|00
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
    i32.const 362
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   global.set $~argumentsLength
   local.get $0
   i32.load offset=12
   local.set $2
   i32.const -1
   local.set $1
   block $__inlined_func$~lib/array/Array<i32>#lastIndexOf5
    local.get $0
    i32.load offset=12
    local.tee $4
    i32.eqz
    br_if $__inlined_func$~lib/array/Array<i32>#lastIndexOf5
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
    local.set $4
    loop $while-continue|06
     local.get $2
     i32.const 0
     i32.ge_s
     if
      local.get $2
      local.tee $1
      i32.const 2
      i32.shl
      local.get $4
      i32.add
      i32.load
      i32.const 7
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#lastIndexOf5
      local.get $1
      i32.const 1
      i32.sub
      local.set $2
      br $while-continue|06
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
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
   block $__inlined_func$~lib/array/Array<i32>#lastIndexOf7
    local.get $0
    i32.load offset=12
    local.tee $1
    i32.eqz
    if
     i32.const -1
     local.set $1
     br $__inlined_func$~lib/array/Array<i32>#lastIndexOf7
    end
    local.get $1
    i32.const 1
    i32.sub
    i32.const 3
    local.get $1
    i32.const 3
    i32.le_s
    select
    local.set $1
    local.get $0
    i32.load offset=4
    local.set $2
    loop $while-continue|030
     local.get $1
     i32.const 0
     i32.ge_s
     if
      local.get $1
      i32.const 2
      i32.shl
      local.get $2
      i32.add
      i32.load
      i32.const 2
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#lastIndexOf7
      local.get $1
      i32.const 1
      i32.sub
      local.set $1
      br $while-continue|030
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
    i32.const 364
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$~lib/array/Array<i32>#lastIndexOf31
    local.get $0
    i32.load offset=12
    local.tee $1
    i32.eqz
    if
     i32.const -1
     local.set $1
     br $__inlined_func$~lib/array/Array<i32>#lastIndexOf31
    end
    local.get $1
    i32.const 1
    i32.sub
    i32.const 2
    local.get $1
    i32.const 2
    i32.le_s
    select
    local.set $1
    local.get $0
    i32.load offset=4
    local.set $2
    loop $while-continue|032
     local.get $1
     i32.const 0
     i32.ge_s
     if
      local.get $1
      i32.const 2
      i32.shl
      local.get $2
      i32.add
      i32.load
      i32.const 2
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#lastIndexOf31
      local.get $1
      i32.const 1
      i32.sub
      local.set $1
      br $while-continue|032
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
   if
    i32.const 0
    i32.const 1552
    i32.const 365
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$~lib/array/Array<i32>#lastIndexOf33
    local.get $0
    i32.load offset=12
    local.tee $1
    i32.eqz
    if
     i32.const -1
     local.set $1
     br $__inlined_func$~lib/array/Array<i32>#lastIndexOf33
    end
    local.get $1
    i32.const 2
    i32.sub
    local.set $1
    local.get $0
    i32.load offset=4
    local.set $2
    loop $while-continue|034
     local.get $1
     i32.const 0
     i32.ge_s
     if
      local.get $1
      i32.const 2
      i32.shl
      local.get $2
      i32.add
      i32.load
      i32.const 2
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#lastIndexOf33
      local.get $1
      i32.const 1
      i32.sub
      local.set $1
      br $while-continue|034
     end
    end
    i32.const -1
    local.set $1
   end
   local.get $1
   if
    i32.const 0
    i32.const 1552
    i32.const 366
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$~lib/array/Array<i32>#lastIndexOf35
    local.get $0
    local.tee $1
    i32.load offset=12
    local.tee $0
    i32.eqz
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#lastIndexOf35
    end
    local.get $0
    i32.const 1
    i32.sub
    local.set $0
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|036
     local.get $0
     i32.const 0
     i32.ge_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 2
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#lastIndexOf35
      local.get $0
      i32.const 1
      i32.sub
      local.set $0
      br $while-continue|036
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
   local.set $0
   block $__inlined_func$~lib/array/Array<i32>#indexOf37
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf37
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|038
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 44
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf37
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|038
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
   local.set $0
   block $__inlined_func$~lib/array/Array<i32>#indexOf39
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf39
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|040
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 42
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf39
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|040
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
   local.set $0
   block $__inlined_func$~lib/array/Array<i32>#indexOf41
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf41
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|042
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 45
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf41
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|042
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
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
   local.set $0
   block $__inlined_func$~lib/array/Array<i32>#indexOf43
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const 100
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf43
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|044
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf43
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|044
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
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
   block $__inlined_func$~lib/array/Array<i32>#indexOf45
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const -100
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf45
    end
    local.get $2
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
    loop $while-continue|046
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf45
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|046
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
   block $__inlined_func$~lib/array/Array<i32>#indexOf47
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const -2
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf47
    end
    local.get $2
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
    loop $while-continue|048
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf47
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|048
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
   block $__inlined_func$~lib/array/Array<i32>#indexOf49
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const -4
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf49
    end
    local.get $2
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
    loop $while-continue|050
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf49
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|050
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
   local.set $0
   block $__inlined_func$~lib/array/Array<i32>#indexOf51
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf51
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|052
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf51
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|052
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
   local.set $0
   block $__inlined_func$~lib/array/Array<i32>#indexOf53
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const 1
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf53
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|054
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf53
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|054
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
   local.set $0
   block $__inlined_func$~lib/array/Array<i32>#indexOf55
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const 2
    i32.le_s
    i32.const 1
    local.get $2
    select
    if
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/array/Array<i32>#indexOf55
    end
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|056
     local.get $0
     local.get $2
     i32.lt_s
     if
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      i32.load
      i32.const 43
      i32.eq
      br_if $__inlined_func$~lib/array/Array<i32>#indexOf55
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|056
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
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   block $__inlined_func$~lib/array/Array<f32>#includes (result i32)
    i32.const 0
    local.set $0
    i32.const 0
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $2
    select
    br_if $__inlined_func$~lib/array/Array<f32>#includes
    drop
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|03657
     local.get $0
     local.get $2
     i32.lt_s
     if
      i32.const 1
      i32.const 1
      local.get $0
      i32.const 2
      i32.shl
      local.get $1
      i32.add
      f32.load
      local.tee $11
      local.get $11
      f32.ne
      local.get $11
      f32.const nan:0x400000
      f32.eq
      select
      br_if $__inlined_func$~lib/array/Array<f32>#includes
      drop
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|03657
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
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   block $__inlined_func$~lib/array/Array<f64>#includes (result i32)
    i32.const 0
    local.set $0
    i32.const 0
    local.get $1
    i32.load offset=12
    local.tee $2
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $2
    select
    br_if $__inlined_func$~lib/array/Array<f64>#includes
    drop
    local.get $1
    i32.load offset=4
    local.set $1
    loop $while-continue|037
     local.get $0
     local.get $2
     i32.lt_s
     if
      i32.const 1
      i32.const 1
      local.get $0
      i32.const 3
      i32.shl
      local.get $1
      i32.add
      f64.load
      local.tee $9
      local.get $9
      f64.ne
      local.get $9
      f64.const nan:0x8000000000000
      f64.eq
      select
      br_if $__inlined_func$~lib/array/Array<f64>#includes
      drop
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|037
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
   local.tee $0
   i32.store
   local.get $0
   i32.const 1
   i32.const 1
   call $~lib/array/Array<i32>#splice
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.const 2147483647
   call $~lib/array/Array<i32>#splice
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3968
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
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
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.const 0
   call $~lib/array/Array<i32>#splice
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 4096
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
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
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.const 2
   i32.const 2147483647
   call $~lib/array/Array<i32>#splice
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 3
   i32.const 2
   i32.const 3
   i32.const 4224
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
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
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.const 2
   i32.const 2
   call $~lib/array/Array<i32>#splice
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 4336
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
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
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.const 1
   call $~lib/array/Array<i32>#splice
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 4448
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
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
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.const -1
   i32.const 2147483647
   call $~lib/array/Array<i32>#splice
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 4576
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
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
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.const -2
   i32.const 2147483647
   call $~lib/array/Array<i32>#splice
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 4704
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
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
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.const -2
   i32.const 1
   call $~lib/array/Array<i32>#splice
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 4816
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
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
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.const -7
   i32.const 1
   call $~lib/array/Array<i32>#splice
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 4944
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
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
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.const -2
   i32.const -1
   call $~lib/array/Array<i32>#splice
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 5072
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
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
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.const 1
   i32.const -2
   call $~lib/array/Array<i32>#splice
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 5200
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
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
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.const 4
   i32.const 0
   call $~lib/array/Array<i32>#splice
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 5328
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
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
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.const 7
   i32.const 0
   call $~lib/array/Array<i32>#splice
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 5456
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
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
   local.tee $2
   i32.store offset=4
   local.get $2
   i32.const 7
   i32.const 5
   call $~lib/array/Array<i32>#splice
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 5584
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
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
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
   local.tee $1
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 1
   call $~lib/array/Array<std/array/Ref>#splice
   local.tee $0
   i32.store offset=12
   local.get $0
   i32.load offset=12
   if
    i32.const 0
    i32.const 1552
    i32.const 476
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
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
   local.tee $0
   i32.const 5
   i32.const 2
   i32.const 8
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   i32.store offset=24
   local.get $1
   i32.const 0
   i32.const 1
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   i32.const 1
   i32.const 2
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   i32.const 2
   i32.const 3
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   i32.const 3
   i32.const 4
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   i32.const 4
   i32.const 5
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   local.get $1
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 2
   call $~lib/array/Array<std/array/Ref>#splice
   local.tee $0
   i32.store offset=12
   local.get $0
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
   local.get $0
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
   local.get $0
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
   local.get $1
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
   local.get $1
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
   local.get $1
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
   local.get $1
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
   local.tee $1
   i32.const 3
   i32.const 2
   i32.const 11
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.const 1
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   i32.const 1
   i32.const 0
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   i32.const 2
   i32.const 2
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   local.get $0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   i32.const 0
   local.get $0
   i32.load offset=12
   local.tee $3
   local.get $3
   i32.const 0
   i32.gt_s
   select
   local.set $5
   local.get $1
   i32.const 1
   local.get $3
   local.get $5
   i32.sub
   local.tee $1
   local.get $1
   i32.const 1
   i32.gt_s
   select
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
   local.tee $6
   i32.const 2
   i32.const 11
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $7
   i32.store
   local.get $7
   i32.load offset=4
   local.get $0
   i32.load offset=4
   local.tee $2
   local.get $5
   i32.const 2
   i32.shl
   i32.add
   local.tee $1
   local.get $6
   i32.const 2
   i32.shl
   call $~lib/memory/memory.copy
   local.get $3
   local.get $5
   local.get $6
   i32.add
   local.tee $5
   i32.ne
   if
    local.get $1
    local.get $5
    i32.const 2
    i32.shl
    local.get $2
    i32.add
    local.get $3
    local.get $5
    i32.sub
    i32.const 2
    i32.shl
    call $~lib/memory/memory.copy
   end
   local.get $0
   local.get $3
   local.get $6
   i32.sub
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
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
   local.tee $1
   i32.store offset=28
   local.get $1
   i32.eqz
   if
    i32.const 5824
    i32.const 1552
    i32.const 495
    i32.const 10
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
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
   local.get $0
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
   local.get $0
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
   local.get $0
   i32.const 1
   call $~lib/array/Array<std/array/Ref|null>#__get
   local.tee $0
   i32.store offset=28
   local.get $0
   i32.eqz
   if
    i32.const 5824
    i32.const 1552
    i32.const 499
    i32.const 10
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
   i32.const 0
   i32.const 0
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 1
   i32.const 1
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 2
   i32.const 2
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 3
   i32.const 3
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 5888
   i32.store offset=8
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   local.set $2
   block $__inlined_func$~lib/array/Array<i32>#findIndex
    loop $for-loop|059
     local.get $2
     local.get $4
     i32.load offset=12
     local.tee $1
     local.get $1
     local.get $2
     i32.gt_s
     select
     local.get $0
     i32.gt_s
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
      i32.const 5888
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#findIndex
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|059
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
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
   local.tee $0
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $0
   i32.const 5920
   i32.store offset=8
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   local.set $2
   block $__inlined_func$~lib/array/Array<i32>#findIndex60
    loop $for-loop|061
     local.get $2
     local.get $4
     i32.load offset=12
     local.tee $1
     local.get $1
     local.get $2
     i32.gt_s
     select
     local.get $0
     i32.gt_s
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
      i32.const 5920
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#findIndex60
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|061
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
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
   local.tee $0
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $0
   i32.const 5952
   i32.store offset=8
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   local.set $2
   block $__inlined_func$~lib/array/Array<i32>#findIndex62
    loop $for-loop|063
     local.get $2
     local.get $4
     i32.load offset=12
     local.tee $1
     local.get $1
     local.get $2
     i32.gt_s
     select
     local.get $0
     i32.gt_s
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
      i32.const 5952
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#findIndex62
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|063
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
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
   local.tee $0
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $0
   i32.const 5984
   i32.store offset=8
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   local.set $2
   block $__inlined_func$~lib/array/Array<i32>#findIndex64
    loop $for-loop|065
     local.get $2
     local.get $4
     i32.load offset=12
     local.tee $1
     local.get $1
     local.get $2
     i32.gt_s
     select
     local.get $0
     i32.gt_s
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
      i32.const 5984
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#findIndex64
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|065
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $0
   i32.const 6016
   i32.store offset=8
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   local.set $2
   block $__inlined_func$~lib/array/Array<i32>#findIndex66
    loop $for-loop|067
     local.get $2
     local.get $4
     i32.load offset=12
     local.tee $1
     local.get $1
     local.get $2
     i32.gt_s
     select
     local.get $0
     i32.gt_s
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
      i32.const 6016
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#findIndex66
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|067
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 6048
   i32.store offset=8
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   local.set $2
   block $__inlined_func$~lib/array/Array<i32>#findIndex68
    loop $for-loop|069
     local.get $2
     local.get $4
     i32.load offset=12
     local.tee $1
     local.get $1
     local.get $2
     i32.gt_s
     select
     local.get $0
     i32.gt_s
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
      i32.const 6048
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#findIndex68
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|069
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
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
   local.tee $0
   i32.store
   local.get $0
   i32.const 2
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 3
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 6080
   call $~lib/rt/__newArray
   local.tee $2
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   i32.const 6128
   i32.store offset=8
   local.get $2
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $0
   block $__inlined_func$~lib/array/Array<i32>#findLastIndex
    loop $for-loop|070
     local.get $0
     i32.const 0
     i32.ge_s
     if
      local.get $2
      i32.load offset=4
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 3
      global.set $~argumentsLength
      local.get $0
      local.get $2
      i32.const 6128
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#findLastIndex
      local.get $0
      i32.const 1
      i32.sub
      local.set $0
      br $for-loop|070
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
   global.set $std/array/i
   global.get $std/array/i
   if
    i32.const 0
    i32.const 1552
    i32.const 556
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 6160
   i32.store offset=8
   local.get $2
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $0
   block $__inlined_func$~lib/array/Array<i32>#findLastIndex47
    loop $for-loop|048
     local.get $0
     i32.const 0
     i32.ge_s
     if
      local.get $2
      i32.load offset=4
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 3
      global.set $~argumentsLength
      local.get $0
      local.get $2
      i32.const 6160
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#findLastIndex47
      local.get $0
      i32.const 1
      i32.sub
      local.set $0
      br $for-loop|048
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
   global.set $std/array/i
   global.get $std/array/i
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 559
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 6192
   i32.store offset=8
   local.get $2
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $0
   block $__inlined_func$~lib/array/Array<i32>#findLastIndex49
    loop $for-loop|050
     local.get $0
     i32.const 0
     i32.ge_s
     if
      local.get $2
      i32.load offset=4
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 3
      global.set $~argumentsLength
      local.get $0
      local.get $2
      i32.const 6192
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#findLastIndex49
      local.get $0
      i32.const 1
      i32.sub
      local.set $0
      br $for-loop|050
     end
    end
    i32.const -1
    local.set $0
   end
   local.get $0
   global.set $std/array/i
   global.get $std/array/i
   i32.const -1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 562
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 6224
   i32.store offset=8
   local.get $2
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $1
   block $__inlined_func$~lib/array/Array<i32>#findLastIndex51
    loop $for-loop|052
     local.get $1
     i32.const 0
     i32.ge_s
     if
      local.get $2
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 3
      global.set $~argumentsLength
      local.get $1
      local.get $2
      i32.const 6224
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#findLastIndex51
      local.get $1
      i32.const 1
      i32.sub
      local.set $1
      br $for-loop|052
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
    i32.const 571
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $5
   i32.store
   local.get $0
   i32.const 6256
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#every (result i32)
    i32.const 0
    local.set $1
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|071
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $0
     local.get $0
     local.get $4
     i32.gt_s
     select
     local.get $1
     i32.gt_s
     if
      local.get $5
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $0
      i32.const 3
      global.set $~argumentsLength
      i32.const 0
      local.get $0
      local.get $1
      local.get $5
      i32.const 6256
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      i32.eqz
      br_if $__inlined_func$~lib/array/Array<i32>#every
      drop
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|071
     end
    end
    i32.const 1
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 578
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $5
   i32.store
   local.get $0
   i32.const 6288
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#every72 (result i32)
    i32.const 0
    local.set $1
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|073
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $0
     local.get $0
     local.get $4
     i32.gt_s
     select
     local.get $1
     i32.gt_s
     if
      local.get $5
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $0
      i32.const 3
      global.set $~argumentsLength
      i32.const 0
      local.get $0
      local.get $1
      local.get $5
      i32.const 6288
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      i32.eqz
      br_if $__inlined_func$~lib/array/Array<i32>#every72
      drop
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|073
     end
    end
    i32.const 1
   end
   if
    i32.const 0
    i32.const 1552
    i32.const 581
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $5
   i32.store
   local.get $0
   i32.const 6320
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#every74 (result i32)
    i32.const 0
    local.set $1
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|075
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $0
     local.get $0
     local.get $4
     i32.gt_s
     select
     local.get $1
     i32.gt_s
     if
      local.get $5
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $0
      i32.const 3
      global.set $~argumentsLength
      i32.const 0
      local.get $0
      local.get $1
      local.get $5
      i32.const 6320
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      i32.eqz
      br_if $__inlined_func$~lib/array/Array<i32>#every74
      drop
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|075
     end
    end
    i32.const 1
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 589
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=12
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 590
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $5
   i32.store
   local.get $0
   i32.const 6352
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#every76 (result i32)
    i32.const 0
    local.set $1
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|077
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $0
     local.get $0
     local.get $4
     i32.gt_s
     select
     local.get $1
     i32.gt_s
     if
      local.get $5
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $0
      i32.const 3
      global.set $~argumentsLength
      i32.const 0
      local.get $0
      local.get $1
      local.get $5
      i32.const 6352
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      i32.eqz
      br_if $__inlined_func$~lib/array/Array<i32>#every76
      drop
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|077
     end
    end
    i32.const 1
   end
   if
    i32.const 0
    i32.const 1552
    i32.const 592
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $5
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 6384
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#every78 (result i32)
    i32.const 0
    local.set $1
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|079
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $0
     local.get $0
     local.get $4
     i32.gt_s
     select
     local.get $1
     i32.gt_s
     if
      local.get $5
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $0
      i32.const 3
      global.set $~argumentsLength
      i32.const 0
      local.get $0
      local.get $1
      local.get $5
      i32.const 6384
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      i32.eqz
      br_if $__inlined_func$~lib/array/Array<i32>#every78
      drop
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|079
     end
    end
    i32.const 1
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
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=12
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 606
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 2
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 3
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $5
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 6416
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#some (result i32)
    i32.const 0
    local.set $1
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|080
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $0
     local.get $0
     local.get $4
     i32.gt_s
     select
     local.get $1
     i32.gt_s
     if
      local.get $5
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $0
      i32.const 3
      global.set $~argumentsLength
      i32.const 1
      local.get $0
      local.get $1
      local.get $5
      i32.const 6416
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#some
      drop
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|080
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 616
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $5
   i32.store
   local.get $0
   i32.const 6448
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#some81 (result i32)
    i32.const 0
    local.set $1
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|082
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $0
     local.get $0
     local.get $4
     i32.gt_s
     select
     local.get $1
     i32.gt_s
     if
      local.get $5
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $0
      i32.const 3
      global.set $~argumentsLength
      i32.const 1
      local.get $0
      local.get $1
      local.get $5
      i32.const 6448
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#some81
      drop
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|082
     end
    end
    i32.const 0
   end
   if
    i32.const 0
    i32.const 1552
    i32.const 619
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $5
   i32.store
   local.get $0
   i32.const 6480
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#some83 (result i32)
    i32.const 0
    local.set $1
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|084
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $0
     local.get $0
     local.get $4
     i32.gt_s
     select
     local.get $1
     i32.gt_s
     if
      local.get $5
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $0
      i32.const 3
      global.set $~argumentsLength
      i32.const 1
      local.get $0
      local.get $1
      local.get $5
      i32.const 6480
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#some83
      drop
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|084
     end
    end
    i32.const 0
   end
   if
    i32.const 0
    i32.const 1552
    i32.const 627
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=12
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 628
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $5
   i32.store
   local.get $0
   i32.const 6512
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#some85 (result i32)
    i32.const 0
    local.set $1
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|086
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $0
     local.get $0
     local.get $4
     i32.gt_s
     select
     local.get $1
     i32.gt_s
     if
      local.get $5
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $0
      i32.const 3
      global.set $~argumentsLength
      i32.const 1
      local.get $0
      local.get $1
      local.get $5
      i32.const 6512
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#some85
      drop
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|086
     end
    end
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 630
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $5
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 6544
   i32.store offset=8
   block $__inlined_func$~lib/array/Array<i32>#some87 (result i32)
    i32.const 0
    local.set $1
    local.get $5
    i32.load offset=12
    local.set $4
    loop $for-loop|088
     local.get $4
     local.get $5
     i32.load offset=12
     local.tee $0
     local.get $0
     local.get $4
     i32.gt_s
     select
     local.get $1
     i32.gt_s
     if
      local.get $5
      i32.load offset=4
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $0
      i32.const 3
      global.set $~argumentsLength
      i32.const 1
      local.get $0
      local.get $1
      local.get $5
      i32.const 6544
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      br_if $__inlined_func$~lib/array/Array<i32>#some87
      drop
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|088
     end
    end
    i32.const 0
   end
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
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=12
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 644
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 2
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 3
   call $~lib/array/Array<i32>#push
   drop
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 6576
   i32.store offset=8
   i32.const 0
   local.set $1
   local.get $4
   i32.load offset=12
   local.set $2
   loop $for-loop|057
    local.get $2
    local.get $4
    i32.load offset=12
    local.tee $0
    local.get $0
    local.get $2
    i32.gt_s
    select
    local.get $1
    i32.gt_s
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
     i32.const 6576
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_none)
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|057
    end
   end
   global.get $std/array/i
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 655
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $0
   i32.const 6608
   i32.store offset=8
   i32.const 0
   local.set $1
   local.get $4
   i32.load offset=12
   local.set $2
   loop $for-loop|05989
    local.get $2
    local.get $4
    i32.load offset=12
    local.tee $0
    local.get $0
    local.get $2
    i32.gt_s
    select
    local.get $1
    i32.gt_s
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
     i32.const 6608
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_none)
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|05989
    end
   end
   global.get $std/array/i
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 664
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=12
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 665
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $0
   i32.const 6640
   i32.store offset=8
   i32.const 0
   local.set $1
   local.get $4
   i32.load offset=12
   local.set $2
   loop $for-loop|062
    local.get $2
    local.get $4
    i32.load offset=12
    local.tee $0
    local.get $0
    local.get $2
    i32.gt_s
    select
    local.get $1
    i32.gt_s
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
     i32.const 6640
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_none)
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|062
    end
   end
   global.get $std/array/i
   i32.const 406
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 668
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 6672
   i32.store offset=8
   i32.const 0
   local.set $1
   local.get $4
   i32.load offset=12
   local.set $2
   loop $for-loop|064
    local.get $2
    local.get $4
    i32.load offset=12
    local.tee $0
    local.get $0
    local.get $2
    i32.gt_s
    select
    local.get $1
    i32.gt_s
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
     i32.const 6672
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_none)
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|064
    end
   end
   global.get $std/array/i
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 682
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=12
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 683
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 2
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 3
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 6704
   i32.store offset=8
   i32.const 0
   local.set $1
   local.get $4
   i32.load offset=12
   local.set $2
   loop $for-loop|06790
    local.get $2
    local.get $4
    i32.load offset=12
    local.tee $0
    local.get $0
    local.get $2
    i32.gt_s
    select
    local.get $1
    i32.gt_s
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
     i32.const 6704
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_none)
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|06790
    end
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=12
   i32.const 100
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
   local.set $0
   loop $for-loop|06991
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
     br $for-loop|06991
    end
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 0
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 1
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 2
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 3
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 6736
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $3
   i32.load offset=12
   local.tee $6
   i32.const 2
   i32.const 9
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $7
   i32.store
   local.get $7
   i32.load offset=4
   local.set $4
   loop $for-loop|07093
    local.get $6
    local.get $3
    i32.load offset=12
    local.tee $0
    local.get $0
    local.get $6
    i32.gt_s
    select
    local.get $1
    i32.gt_s
    if
     local.get $1
     i32.const 2
     i32.shl
     local.tee $2
     local.get $3
     i32.load offset=4
     i32.add
     i32.load
     local.set $0
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $4
     i32.add
     local.get $0
     local.get $1
     local.get $3
     i32.const 6736
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_f32)
     f32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|07093
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=20
   local.get $7
   i32.load offset=12
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 722
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const 0
   call $~lib/array/Array<f32>#__get
   local.set $11
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 0
   call $~lib/array/Array<i32>#__get
   f32.convert_i32_s
   local.get $11
   f32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 723
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $1
   i32.const 6768
   i32.store offset=8
   local.get $0
   i32.const 6768
   call $~lib/array/Array<i32>#map<i32>
   global.get $std/array/i
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 732
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=12
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 733
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $1
   i32.const 6800
   i32.store offset=8
   local.get $0
   i32.const 6800
   call $~lib/array/Array<i32>#map<i32>
   global.get $std/array/i
   i32.const 406
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 740
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 6832
   i32.store offset=8
   local.get $0
   i32.const 6832
   call $~lib/array/Array<i32>#map<i32>
   global.get $std/array/i
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 755
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=12
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 756
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 2
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 3
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 6864
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 6864
   call $~lib/array/Array<i32>#filter
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.load offset=12
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 766
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $1
   i32.const 6896
   i32.store offset=8
   local.get $0
   i32.const 6896
   call $~lib/array/Array<i32>#filter
   drop
   global.get $std/array/i
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 775
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=12
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 776
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $1
   i32.const 6928
   i32.store offset=8
   local.get $0
   i32.const 6928
   call $~lib/array/Array<i32>#filter
   drop
   global.get $std/array/i
   i32.const 406
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 783
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   i32.const 0
   global.set $std/array/i
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 6960
   i32.store offset=8
   local.get $0
   i32.const 6960
   call $~lib/array/Array<i32>#filter
   drop
   global.get $std/array/i
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 798
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=12
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 799
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 2
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 3
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 6992
   i32.store offset=8
   i32.const 0
   local.set $5
   i32.const 0
   local.set $1
   local.get $4
   i32.load offset=12
   local.set $2
   loop $for-loop|094
    local.get $2
    local.get $4
    i32.load offset=12
    local.tee $0
    local.get $0
    local.get $2
    i32.gt_s
    select
    local.get $1
    i32.gt_s
    if
     local.get $4
     i32.load offset=4
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $0
     i32.const 4
     global.set $~argumentsLength
     local.get $5
     local.get $0
     local.get $1
     local.get $4
     i32.const 6992
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $5
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|094
    end
   end
   local.get $5
   global.set $std/array/i
   global.get $std/array/i
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 809
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $0
   i32.const 7024
   i32.store offset=8
   i32.const 4
   local.set $5
   i32.const 0
   local.set $1
   local.get $4
   i32.load offset=12
   local.set $2
   loop $for-loop|096
    local.get $2
    local.get $4
    i32.load offset=12
    local.tee $0
    local.get $0
    local.get $2
    i32.gt_s
    select
    local.get $1
    i32.gt_s
    if
     local.get $4
     i32.load offset=4
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $0
     i32.const 4
     global.set $~argumentsLength
     local.get $5
     local.get $0
     local.get $1
     local.get $4
     i32.const 7024
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $5
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|096
    end
   end
   local.get $5
   global.set $std/array/i
   global.get $std/array/i
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 813
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $0
   i32.const 7056
   i32.store offset=8
   i32.const 0
   local.set $5
   i32.const 0
   local.set $1
   local.get $4
   i32.load offset=12
   local.set $2
   loop $for-loop|098
    local.get $2
    local.get $4
    i32.load offset=12
    local.tee $0
    local.get $0
    local.get $2
    i32.gt_s
    select
    local.get $1
    i32.gt_s
    if
     local.get $4
     i32.load offset=4
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $0
     i32.const 4
     global.set $~argumentsLength
     local.get $5
     local.get $0
     local.get $1
     local.get $4
     i32.const 7056
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $5
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|098
    end
   end
   local.get $5
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 816
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $0
   i32.const 7088
   i32.store offset=8
   i32.const 0
   local.set $5
   i32.const 0
   local.set $1
   local.get $4
   i32.load offset=12
   local.set $2
   loop $for-loop|0100
    local.get $2
    local.get $4
    i32.load offset=12
    local.tee $0
    local.get $0
    local.get $2
    i32.gt_s
    select
    local.get $1
    i32.gt_s
    if
     local.get $4
     i32.load offset=4
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $0
     i32.const 4
     global.set $~argumentsLength
     local.get $5
     local.get $0
     local.get $1
     local.get $4
     i32.const 7088
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $5
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0100
    end
   end
   local.get $5
   if
    i32.const 0
    i32.const 1552
    i32.const 819
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $0
   i32.const 7120
   i32.store offset=8
   i32.const 0
   local.set $5
   i32.const 0
   local.set $1
   local.get $4
   i32.load offset=12
   local.set $2
   loop $for-loop|0102
    local.get $2
    local.get $4
    i32.load offset=12
    local.tee $0
    local.get $0
    local.get $2
    i32.gt_s
    select
    local.get $1
    i32.gt_s
    if
     local.get $4
     i32.load offset=4
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $0
     i32.const 4
     global.set $~argumentsLength
     local.get $5
     local.get $0
     local.get $1
     local.get $4
     i32.const 7120
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $5
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0102
    end
   end
   local.get $5
   global.set $std/array/i
   global.get $std/array/i
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 827
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=12
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 828
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $0
   i32.const 7152
   i32.store offset=8
   i32.const 0
   local.set $5
   i32.const 0
   local.set $1
   local.get $4
   i32.load offset=12
   local.set $2
   loop $for-loop|0104
    local.get $2
    local.get $4
    i32.load offset=12
    local.tee $0
    local.get $0
    local.get $2
    i32.gt_s
    select
    local.get $1
    i32.gt_s
    if
     local.get $4
     i32.load offset=4
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $0
     i32.const 4
     global.set $~argumentsLength
     local.get $5
     local.get $0
     local.get $1
     local.get $4
     i32.const 7152
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $5
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0104
    end
   end
   local.get $5
   global.set $std/array/i
   global.get $std/array/i
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 830
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 7184
   i32.store offset=8
   i32.const 0
   local.set $5
   i32.const 0
   local.set $1
   local.get $4
   i32.load offset=12
   local.set $2
   loop $for-loop|0106
    local.get $2
    local.get $4
    i32.load offset=12
    local.tee $0
    local.get $0
    local.get $2
    i32.gt_s
    select
    local.get $1
    i32.gt_s
    if
     local.get $4
     i32.load offset=4
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $0
     i32.const 4
     global.set $~argumentsLength
     local.get $5
     local.get $0
     local.get $1
     local.get $4
     i32.const 7184
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $5
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0106
    end
   end
   local.get $5
   global.set $std/array/i
   global.get $std/array/i
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 843
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=12
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 844
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 2
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 3
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 7216
   i32.store offset=8
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $1
   loop $for-loop|079107
    local.get $1
    i32.const 0
    i32.ge_s
    if
     local.get $4
     i32.load offset=4
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $2
     i32.const 4
     global.set $~argumentsLength
     local.get $0
     local.get $2
     local.get $1
     local.get $4
     i32.const 7216
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $0
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     br $for-loop|079107
    end
   end
   local.get $0
   global.set $std/array/i
   global.get $std/array/i
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 854
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $0
   i32.const 7248
   i32.store offset=8
   i32.const 4
   local.set $0
   local.get $4
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $1
   loop $for-loop|081
    local.get $1
    i32.const 0
    i32.ge_s
    if
     local.get $4
     i32.load offset=4
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $2
     i32.const 4
     global.set $~argumentsLength
     local.get $0
     local.get $2
     local.get $1
     local.get $4
     i32.const 7248
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $0
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     br $for-loop|081
    end
   end
   local.get $0
   global.set $std/array/i
   global.get $std/array/i
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 858
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $0
   i32.const 7280
   i32.store offset=8
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $1
   loop $for-loop|083
    local.get $1
    i32.const 0
    i32.ge_s
    if
     local.get $4
     i32.load offset=4
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $2
     i32.const 4
     global.set $~argumentsLength
     local.get $0
     local.get $2
     local.get $1
     local.get $4
     i32.const 7280
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $0
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     br $for-loop|083
    end
   end
   local.get $0
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 861
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $0
   i32.const 7312
   i32.store offset=8
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $1
   loop $for-loop|085
    local.get $1
    i32.const 0
    i32.ge_s
    if
     local.get $4
     i32.load offset=4
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $2
     i32.const 4
     global.set $~argumentsLength
     local.get $0
     local.get $2
     local.get $1
     local.get $4
     i32.const 7312
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $0
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     br $for-loop|085
    end
   end
   local.get $0
   if
    i32.const 0
    i32.const 1552
    i32.const 864
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $0
   i32.const 7344
   i32.store offset=8
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $1
   loop $for-loop|087
    local.get $1
    i32.const 0
    i32.ge_s
    if
     local.get $4
     i32.load offset=4
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $2
     i32.const 4
     global.set $~argumentsLength
     local.get $0
     local.get $2
     local.get $1
     local.get $4
     i32.const 7344
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $0
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     br $for-loop|087
    end
   end
   local.get $0
   global.set $std/array/i
   global.get $std/array/i
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 872
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=12
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 873
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/array/arr
   local.tee $4
   i32.store
   local.get $0
   i32.const 7376
   i32.store offset=8
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $1
   loop $for-loop|090
    local.get $1
    i32.const 0
    i32.ge_s
    if
     local.get $4
     i32.load offset=4
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $2
     i32.const 4
     global.set $~argumentsLength
     local.get $0
     local.get $2
     local.get $1
     local.get $4
     i32.const 7376
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $0
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     br $for-loop|090
    end
   end
   local.get $0
   global.set $std/array/i
   global.get $std/array/i
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 875
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#pop
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 7408
   i32.store offset=8
   i32.const 0
   local.set $0
   local.get $4
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $1
   loop $for-loop|092
    local.get $1
    i32.const 0
    i32.ge_s
    if
     local.get $4
     i32.load offset=4
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $2
     i32.const 4
     global.set $~argumentsLength
     local.get $0
     local.get $2
     local.get $1
     local.get $4
     i32.const 7408
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_=>_i32)
     local.set $0
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     br $for-loop|092
    end
   end
   local.get $0
   global.set $std/array/i
   global.get $std/array/i
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 888
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=12
   if
    i32.const 0
    i32.const 1552
    i32.const 889
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 0
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 1
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 2
   call $~lib/array/Array<i32>#push
   drop
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/arr
   local.tee $0
   i32.store
   local.get $0
   i32.const 3
   call $~lib/array/Array<i32>#push
   drop
   call $~lib/bindings/Math/random
   i64.reinterpret_f64
   call $~lib/math/NativeMath.seedRandom
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 2
   i32.const 19
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=12
   local.get $0
   i32.const 100
   i32.store
   local.get $0
   i32.const 80
   i32.store offset=4
   local.get $1
   i32.const 0
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=16
   local.get $0
   i32.const 90
   i32.store
   local.get $0
   i32.const 90
   i32.store offset=4
   local.get $1
   i32.const 1
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=4
   local.get $0
   i32.const 70
   i32.store
   local.get $0
   i32.const 95
   i32.store offset=4
   local.get $1
   i32.const 2
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=28
   local.get $0
   i32.const 100
   i32.store
   local.get $0
   i32.const 100
   i32.store offset=4
   local.get $1
   i32.const 3
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=32
   local.get $0
   i32.const 80
   i32.store
   local.get $0
   i32.const 110
   i32.store offset=4
   local.get $1
   i32.const 4
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=36
   local.get $0
   i32.const 110
   i32.store
   local.get $0
   i32.const 115
   i32.store offset=4
   local.get $1
   i32.const 5
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=40
   local.get $0
   i32.const 100
   i32.store
   local.get $0
   i32.const 120
   i32.store offset=4
   local.get $1
   i32.const 6
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=44
   local.get $0
   i32.const 70
   i32.store
   local.get $0
   i32.const 125
   i32.store offset=4
   local.get $1
   i32.const 7
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=48
   local.get $0
   i32.const 70
   i32.store
   local.get $0
   i32.const 130
   i32.store offset=4
   local.get $1
   i32.const 8
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=52
   local.get $0
   i32.const 100
   i32.store
   local.get $0
   i32.const 135
   i32.store offset=4
   local.get $1
   i32.const 9
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=56
   local.get $0
   i32.const 75
   i32.store
   local.get $0
   i32.const 140
   i32.store offset=4
   local.get $1
   i32.const 10
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=60
   local.get $0
   i32.const 70
   i32.store
   local.get $0
   i32.const 140
   i32.store offset=4
   local.get $1
   i32.const 11
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   global.set $std/array/inputStabArr
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 2
   i32.const 19
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=64
   local.get $0
   i32.const 70
   i32.store
   local.get $0
   i32.const 95
   i32.store offset=4
   local.get $1
   i32.const 0
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=68
   local.get $0
   i32.const 70
   i32.store
   local.get $0
   i32.const 125
   i32.store offset=4
   local.get $1
   i32.const 1
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=72
   local.get $0
   i32.const 70
   i32.store
   local.get $0
   i32.const 130
   i32.store offset=4
   local.get $1
   i32.const 2
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=76
   local.get $0
   i32.const 70
   i32.store
   local.get $0
   i32.const 140
   i32.store offset=4
   local.get $1
   i32.const 3
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=80
   local.get $0
   i32.const 75
   i32.store
   local.get $0
   i32.const 140
   i32.store offset=4
   local.get $1
   i32.const 4
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=84
   local.get $0
   i32.const 80
   i32.store
   local.get $0
   i32.const 110
   i32.store offset=4
   local.get $1
   i32.const 5
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=88
   local.get $0
   i32.const 90
   i32.store
   local.get $0
   i32.const 90
   i32.store offset=4
   local.get $1
   i32.const 6
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=92
   local.get $0
   i32.const 100
   i32.store
   local.get $0
   i32.const 80
   i32.store offset=4
   local.get $1
   i32.const 7
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=96
   local.get $0
   i32.const 100
   i32.store
   local.get $0
   i32.const 100
   i32.store offset=4
   local.get $1
   i32.const 8
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=100
   local.get $0
   i32.const 100
   i32.store
   local.get $0
   i32.const 120
   i32.store offset=4
   local.get $1
   i32.const 9
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=104
   local.get $0
   i32.const 100
   i32.store
   local.get $0
   i32.const 135
   i32.store offset=4
   local.get $1
   i32.const 10
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   global.get $~lib/memory/__stack_pointer
   call $std/array/Dim#constructor
   local.tee $0
   i32.store offset=108
   local.get $0
   i32.const 110
   i32.store
   local.get $0
   i32.const 115
   i32.store offset=4
   local.get $1
   i32.const 11
   local.get $0
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   global.set $std/array/outputStabArr
   global.get $~lib/memory/__stack_pointer
   i32.const 3
   i32.const 2
   i32.const 9
   i32.const 7680
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=24
   i32.const 0
   global.set $~argumentsLength
   local.get $1
   call $~lib/array/Array<f32>#sort@varargs
   i32.const 3
   i32.const 2
   i32.const 9
   i32.const 7744
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   call $std/array/isArraysEqual<f32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1027
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 2
   i32.const 9
   i32.const 7776
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=20
   i32.const 0
   global.set $~argumentsLength
   local.get $1
   call $~lib/array/Array<f32>#sort@varargs
   i32.const 8
   i32.const 2
   i32.const 9
   i32.const 7840
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   call $std/array/isArraysEqual<f32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1031
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 3
   i32.const 10
   i32.const 7904
   call $~lib/rt/__newArray
   local.tee $5
   i32.store offset=112
   i32.const 0
   global.set $~argumentsLength
   i32.const 0
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $1of18
    block $0of19
     block $outOfRange10
      global.get $~argumentsLength
      br_table $0of19 $1of18 $outOfRange10
     end
     unreachable
    end
    i32.const 8000
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 8000
    i32.store
   end
   local.get $5
   i32.load offset=4
   local.get $5
   i32.load offset=12
   local.get $0
   call $~lib/util/sort/SORT<f64>
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 3
   i32.const 10
   i32.const 8032
   call $~lib/rt/__newArray
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   block $__inlined_func$std/array/isArraysEqual<f64> (result i32)
    i32.const 0
    local.set $0
    i32.const 0
    local.get $5
    i32.load offset=12
    local.tee $1
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
    loop $for-loop|026
     local.get $0
     local.get $1
     i32.lt_s
     if
      local.get $5
      local.get $0
      call $~lib/array/Array<f64>#__get
      local.tee $9
      local.get $9
      f64.ne
      if (result i32)
       local.get $4
       local.get $0
       call $~lib/array/Array<f64>#__get
       local.tee $9
       local.get $9
       f64.ne
      else
       i32.const 0
      end
      i32.eqz
      if
       i32.const 0
       local.get $5
       local.get $0
       call $~lib/array/Array<f64>#__get
       local.get $4
       local.get $0
       call $~lib/array/Array<f64>#__get
       f64.ne
       br_if $__inlined_func$std/array/isArraysEqual<f64>
       drop
      end
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|026
     end
    end
    i32.const 1
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1035
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 8128
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=116
   i32.const 0
   global.set $~argumentsLength
   i32.const 0
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $1of1140
    block $0of1141
     block $outOfRange142
      global.get $~argumentsLength
      br_table $0of1141 $1of1140 $outOfRange142
     end
     unreachable
    end
    i32.const 8176
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 8176
    i32.store
   end
   local.get $1
   i32.load offset=4
   local.get $1
   i32.load offset=12
   local.get $0
   call $~lib/util/sort/SORT<i32>
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 8208
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
    i32.const 1039
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 2
   i32.const 7
   i32.const 8256
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=120
   i32.const 0
   global.set $~argumentsLength
   local.get $1
   i32.const 0
   call $~lib/array/Array<u32>#sort@varargs
   drop
   i32.const 5
   i32.const 2
   i32.const 7
   i32.const 8336
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
    i32.const 1043
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 8384
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=124
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 8416
   call $~lib/rt/__newArray
   local.tee $8
   i32.store offset=128
   global.get $~lib/memory/__stack_pointer
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 8448
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=132
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 8480
   call $~lib/rt/__newArray
   local.tee $7
   i32.store offset=136
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 8528
   call $~lib/rt/__newArray
   local.tee $10
   i32.store offset=140
   global.get $~lib/memory/__stack_pointer
   i32.const 64
   call $std/array/createReverseOrderedArray
   local.tee $6
   i32.store offset=144
   global.get $~lib/memory/__stack_pointer
   i32.const 128
   call $std/array/createReverseOrderedArray
   local.tee $5
   i32.store offset=148
   global.get $~lib/memory/__stack_pointer
   i32.const 1024
   call $std/array/createReverseOrderedArray
   local.tee $4
   i32.store offset=152
   global.get $~lib/memory/__stack_pointer
   i32.const 10000
   call $std/array/createReverseOrderedArray
   local.tee $2
   i32.store offset=156
   global.get $~lib/memory/__stack_pointer
   i32.const 512
   call $std/array/createRandomOrderedArray
   local.tee $0
   i32.store offset=160
   local.get $1
   call $std/array/assertSortedDefault<i32>
   local.get $8
   call $std/array/assertSortedDefault<i32>
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 8608
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $8
   local.get $1
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1063
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   call $std/array/assertSortedDefault<i32>
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 8640
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
    i32.const 1066
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   call $std/array/assertSortedDefault<i32>
   local.get $7
   local.get $10
   i32.const 0
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1069
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $6
   call $std/array/assertSortedDefault<i32>
   local.get $6
   local.get $10
   i32.const 4
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1072
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $5
   call $std/array/assertSortedDefault<i32>
   local.get $5
   local.get $10
   i32.const 4
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1075
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   call $std/array/assertSortedDefault<i32>
   local.get $4
   local.get $10
   i32.const 4
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1078
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   call $std/array/assertSortedDefault<i32>
   local.get $2
   local.get $10
   i32.const 4
   call $std/array/isArraysEqual<i32>
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1081
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $std/array/assertSortedDefault<i32>
   i32.const 0
   local.set $8
   i32.const 0
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i64.const 0
   i64.store
   local.get $6
   i64.const 0
   i64.store offset=8
   local.get $6
   i64.const 0
   i64.store offset=16
   local.get $6
   global.get $std/array/inputStabArr
   local.tee $5
   i32.store offset=8
   local.get $6
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   i32.const 0
   local.get $5
   i32.load offset=12
   local.tee $2
   local.get $2
   i32.const 0
   i32.gt_s
   select
   local.set $1
   local.get $0
   local.get $2
   local.get $1
   i32.sub
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
   local.tee $0
   i32.const 2
   i32.const 19
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $3
   i32.store
   local.get $3
   i32.load offset=4
   local.set $4
   local.get $5
   i32.load offset=4
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   local.set $2
   local.get $0
   i32.const 2
   i32.shl
   local.set $1
   loop $while-continue|011
    local.get $1
    local.get $8
    i32.gt_u
    if
     local.get $4
     local.get $8
     i32.add
     local.get $2
     local.get $8
     i32.add
     i32.load
     local.tee $0
     i32.store
     local.get $3
     local.get $0
     i32.const 1
     call $~lib/rt/itcms/__link
     local.get $8
     i32.const 4
     i32.add
     local.set $8
     br $while-continue|011
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8672
   i32.store offset=4
   local.get $3
   i32.load offset=4
   local.get $3
   i32.load offset=12
   i32.const 8672
   call $~lib/util/sort/SORT<std/array/Dim>
   local.get $6
   local.get $3
   i32.store offset=12
   i32.const 1
   local.set $8
   global.get $~lib/memory/__stack_pointer
   global.get $std/array/inputStabArr
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=12
   local.set $1
   loop $for-loop|012
    local.get $1
    local.get $7
    i32.gt_s
    if
     block $for-break0
      global.get $~lib/memory/__stack_pointer
      local.get $3
      local.get $7
      call $~lib/array/Array<std/array/Ref>#__get
      local.tee $2
      i32.store offset=16
      global.get $~lib/memory/__stack_pointer
      global.get $std/array/outputStabArr
      local.tee $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      local.get $7
      call $~lib/array/Array<std/array/Ref>#__get
      local.tee $0
      i32.store offset=20
      local.get $2
      i32.load
      local.get $0
      i32.load
      i32.ne
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load offset=4
       local.get $0
       i32.load offset=4
       i32.ne
      end
      if
       i32.const 0
       local.set $8
       br $for-break0
      end
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|012
     end
    end
   end
   local.get $8
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1012
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 64
   call $std/array/createRandomOrderedArray
   local.tee $1
   i32.store offset=160
   global.get $~lib/memory/__stack_pointer
   i32.const 257
   call $std/array/createRandomOrderedArray
   local.tee $0
   i32.store offset=156
   global.get $~lib/memory/__stack_pointer
   i32.const 8704
   i32.store offset=8
   local.get $1
   i32.const 8704
   call $std/array/assertSorted<i32>
   global.get $~lib/memory/__stack_pointer
   i32.const 8736
   i32.store offset=8
   local.get $1
   i32.const 8736
   call $std/array/assertSorted<i32>
   global.get $~lib/memory/__stack_pointer
   i32.const 8768
   i32.store offset=8
   local.get $0
   i32.const 8768
   call $std/array/assertSorted<i32>
   global.get $~lib/memory/__stack_pointer
   i32.const 8800
   i32.store offset=8
   local.get $0
   i32.const 8800
   call $std/array/assertSorted<i32>
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store
   local.get $4
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 16
   i32.const 25
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
   local.tee $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.const 32
   call $~lib/memory/memory.fill
   local.get $5
   local.get $0
   i32.store
   local.get $5
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $5
   local.get $0
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
   loop $for-loop|0143
    local.get $1
    i32.const 2
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 1
     call $~lib/array/Array<i32>#constructor
     local.tee $0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.const 1
     local.get $1
     i32.sub
     call $~lib/array/Array<i32>#__set
     local.get $5
     local.get $1
     local.get $0
     call $~lib/array/Array<~lib/array/Array<i32>>#__set
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0143
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=156
   global.get $~lib/memory/__stack_pointer
   i32.const 8832
   i32.store offset=8
   local.get $5
   i32.const 8832
   call $std/array/assertSorted<~lib/array/Array<i32>>
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 16
   i32.const 28
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
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
   local.get $0
   local.get $4
   i32.store
   local.get $0
   local.get $4
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $0
   local.get $4
   i32.store offset=4
   local.get $0
   i32.const 2048
   i32.store offset=8
   local.get $0
   i32.const 512
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $0
   i32.store
   loop $for-loop|014
    local.get $5
    i32.const 512
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 15340
     i32.lt_s
     br_if $folding-inner3
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i32.const 0
     i32.store
     local.get $1
     i32.const 4
     i32.const 27
     call $~lib/rt/itcms/__new
     local.tee $1
     i32.store
     local.get $1
     i32.const 511
     local.get $5
     i32.sub
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     local.get $0
     local.get $5
     local.get $1
     call $~lib/array/Array<~lib/array/Array<i32>>#__set
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|014
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=156
   global.get $~lib/memory/__stack_pointer
   i32.const 8864
   i32.store offset=8
   local.get $0
   i32.const 8864
   call $std/array/assertSorted<~lib/array/Array<i32>>
   global.get $~lib/memory/__stack_pointer
   i32.const 7
   i32.const 2
   i32.const 30
   i32.const 9056
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=160
   global.get $~lib/memory/__stack_pointer
   i32.const 7
   i32.const 2
   i32.const 30
   i32.const 9104
   call $~lib/rt/__newArray
   local.tee $6
   i32.store offset=152
   i32.const 1
   global.set $~argumentsLength
   i32.const 0
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $1of116
    block $0of117
     block $outOfRange18
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of117 $1of116 $outOfRange18
     end
     unreachable
    end
    i32.const 9152
    local.set $5
    global.get $~lib/memory/__stack_pointer
    i32.const 9152
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.load offset=4
   local.get $0
   i32.load offset=12
   local.get $5
   call $~lib/util/sort/SORT<std/array/Dim>
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   block $__inlined_func$std/array/isSorted<~lib/string/String|null> (result i32)
    local.get $1
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 15340
    i32.lt_s
    br_if $folding-inner3
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store
    i32.const 1
    local.set $7
    local.get $0
    i32.load offset=12
    local.set $1
    loop $for-loop|019
     local.get $1
     local.get $7
     i32.gt_s
     if
      local.get $0
      local.get $7
      i32.const 1
      i32.sub
      call $~lib/array/Array<std/array/Ref|null>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store
      local.get $0
      local.get $7
      call $~lib/array/Array<std/array/Ref|null>#__get
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=4
      i32.const 2
      global.set $~argumentsLength
      local.get $4
      local.get $2
      local.get $5
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
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $for-loop|019
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
    i32.const 1016
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
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 15340
    i32.lt_s
    br_if $folding-inner3
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store
    block $folding-inner1
     block $folding-inner020
      local.get $0
      i32.load offset=12
      local.tee $1
      local.get $6
      i32.load offset=12
      i32.ne
      br_if $folding-inner020
      local.get $0
      local.get $6
      i32.eq
      br_if $folding-inner1
      loop $for-loop|038
       local.get $1
       local.get $3
       i32.gt_s
       if
        local.get $0
        local.get $3
        call $~lib/array/Array<std/array/Ref|null>#__get
        local.set $4
        global.get $~lib/memory/__stack_pointer
        local.get $4
        i32.store
        local.get $6
        local.get $3
        call $~lib/array/Array<std/array/Ref|null>#__get
        local.set $2
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store offset=4
        local.get $4
        local.get $2
        call $~lib/string/String.__eq
        i32.eqz
        br_if $folding-inner020
        local.get $3
        i32.const 1
        i32.add
        local.set $3
        br $for-loop|038
       end
      end
      br $folding-inner1
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
    i32.const 1120
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   local.set $3
   local.get $0
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 0
   i32.const 400
   call $~lib/array/Array<~lib/string/String>#constructor
   local.tee $2
   i32.store
   loop $for-loop|0144
    local.get $3
    i32.const 400
    i32.lt_s
    if
     call $~lib/math/NativeMath.random
     f64.const 32
     f64.mul
     i32.trunc_f64_s
     local.set $6
     i32.const 0
     local.set $8
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 15340
     i32.lt_s
     br_if $folding-inner3
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i64.const 0
     i64.store
     local.get $1
     i32.const 0
     i32.store offset=8
     i32.const 9024
     local.set $0
     local.get $1
     i32.const 9024
     i32.store
     loop $for-loop|00
      local.get $6
      local.get $8
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $5
       local.get $0
       local.get $5
       i32.const 7488
       i32.store offset=4
       call $~lib/math/NativeMath.random
       global.get $~lib/memory/__stack_pointer
       i32.const 7488
       i32.store offset=8
       i32.const 7484
       i32.load
       i32.const 1
       i32.shr_u
       f64.convert_i32_s
       f64.mul
       f64.floor
       i32.trunc_f64_s
       local.set $5
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 15340
       i32.lt_s
       br_if $folding-inner3
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.store
       block $__inlined_func$~lib/string/String#charAt
        i32.const 7484
        i32.load
        i32.const 1
        i32.shr_u
        local.get $5
        i32.le_u
        if
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.add
         global.set $~lib/memory/__stack_pointer
         i32.const 9024
         local.set $0
         br $__inlined_func$~lib/string/String#charAt
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 2
        i32.const 1
        call $~lib/rt/itcms/__new
        local.tee $0
        i32.store
        local.get $0
        local.get $5
        i32.const 1
        i32.shl
        i32.const 7488
        i32.add
        i32.load16_u
        i32.store16
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
       end
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=4
       local.get $0
       call $~lib/string/String.__concat
       local.tee $0
       i32.store
       local.get $8
       i32.const 1
       i32.add
       local.set $8
       br $for-loop|00
      end
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $2
     local.get $3
     local.get $0
     call $~lib/array/Array<~lib/array/Array<i32>>#__set
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0144
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.tee $0
   i32.store offset=156
   i32.const 1
   global.set $~argumentsLength
   i32.const 0
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $1of1145
    block $0of1146
     block $outOfRange147
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of1146 $1of1145 $outOfRange147
     end
     unreachable
    end
    i32.const 9184
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 9184
    i32.store
   end
   local.get $0
   local.get $1
   call $std/array/assertSorted<~lib/array/Array<i32>>
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 2
   i32.const 0
   i32.const 34
   i32.const 9216
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=164
   global.get $~lib/memory/__stack_pointer
   i32.const 9312
   i32.store offset=168
   local.get $0
   i32.load offset=4
   local.set $7
   local.get $0
   i32.load offset=12
   local.set $1
   i32.const 0
   local.set $0
   i32.const 0
   local.set $8
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $__inlined_func$~lib/util/string/joinBooleanArray
    local.get $1
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
     i32.const 9024
     local.set $1
     br $__inlined_func$~lib/util/string/joinBooleanArray
    end
    block $folding-inner01
     local.get $3
     i32.eqz
     if
      i32.const 9248
      i32.const 9280
      local.get $7
      i32.load8_u
      select
      local.set $1
      br $folding-inner01
     end
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.const 9308
     i32.load
     i32.const 1
     i32.shr_u
     local.tee $6
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
      local.get $3
      local.get $8
      i32.gt_s
      if
       local.get $7
       local.get $8
       i32.add
       i32.load8_u
       local.tee $2
       i32.eqz
       i32.const 4
       i32.add
       local.set $5
       local.get $0
       i32.const 1
       i32.shl
       local.get $1
       i32.add
       i32.const 9248
       i32.const 9280
       local.get $2
       select
       local.get $5
       i32.const 1
       i32.shl
       call $~lib/memory/memory.copy
       local.get $0
       local.get $5
       i32.add
       local.set $0
       local.get $6
       if
        local.get $0
        i32.const 1
        i32.shl
        local.get $1
        i32.add
        i32.const 9312
        local.get $6
        i32.const 1
        i32.shl
        call $~lib/memory/memory.copy
        local.get $0
        local.get $6
        i32.add
        local.set $0
       end
       local.get $8
       i32.const 1
       i32.add
       local.set $8
       br $for-loop|1
      end
     end
     local.get $3
     local.get $7
     i32.add
     i32.load8_u
     local.tee $2
     i32.eqz
     i32.const 4
     i32.add
     local.set $5
     local.get $0
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     i32.const 9248
     i32.const 9280
     local.get $2
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
      br $folding-inner01
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
   i32.const 9344
   i32.store offset=8
   local.get $1
   i32.const 9344
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1129
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 2
   i32.const 3
   i32.const 9392
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store offset=164
   local.get $0
   i32.const 9024
   i32.store offset=168
   local.get $1
   i32.const 9024
   call $~lib/array/Array<i32>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 11200
   i32.store offset=8
   local.get $0
   i32.const 11200
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1130
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 2
   i32.const 7
   i32.const 11232
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store offset=164
   local.get $0
   i32.const 11264
   i32.store offset=168
   local.get $1
   i32.const 11264
   call $~lib/array/Array<u32>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 11200
   i32.store offset=8
   local.get $0
   i32.const 11200
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1131
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 11296
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store offset=164
   local.get $0
   i32.const 11328
   i32.store offset=168
   local.get $1
   i32.const 11328
   call $~lib/array/Array<i32>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 11360
   i32.store offset=8
   local.get $0
   i32.const 11360
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1132
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 6
   i32.const 3
   i32.const 10
   i32.const 11440
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store offset=164
   local.get $0
   i32.const 11520
   i32.store offset=168
   local.get $1
   call $~lib/array/Array<f64>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 12688
   i32.store offset=8
   local.get $0
   i32.const 12688
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1133
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 2
   i32.const 30
   i32.const 12832
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store offset=164
   local.get $0
   i32.const 9024
   i32.store offset=168
   local.get $1
   i32.const 9024
   call $~lib/array/Array<~lib/string/String|null>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 12800
   i32.store offset=8
   local.get $0
   i32.const 12800
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1134
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
   i32.store offset=156
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   i32.store offset=152
   local.get $1
   i32.const 0
   i32.const 0
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   i32.const 1
   i32.const 0
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   i32.const 2
   i32.const 0
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   local.get $1
   i32.store offset=152
   global.get $~lib/memory/__stack_pointer
   i32.const 9312
   i32.store offset=168
   local.get $1
   call $~lib/array/Array<std/array/Ref|null>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 12928
   i32.store offset=8
   local.get $0
   i32.const 12928
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1136
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 2
   i32.const 2
   i32.const 8
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=156
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   i32.store offset=160
   local.get $1
   i32.const 0
   i32.const 0
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   i32.const 1
   i32.const 0
   call $std/array/Ref#constructor
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   local.get $1
   i32.store offset=160
   global.get $~lib/memory/__stack_pointer
   i32.const 9312
   i32.store offset=168
   local.get $1
   call $~lib/array/Array<std/array/Ref|null>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 13024
   i32.store offset=8
   local.get $0
   i32.const 13024
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1139
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 13120
   call $~lib/rt/__newArray
   local.tee $4
   i32.store offset=152
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 13152
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=156
   global.get $~lib/memory/__stack_pointer
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 13184
   call $~lib/rt/__newArray
   local.tee $2
   i32.store offset=148
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 13216
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=144
   local.get $4
   call $~lib/array/Array<i32>#toString
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 9024
   i32.store offset=8
   local.get $4
   i32.const 9024
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1149
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/array/Array<i32>#toString
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $4
   i32.store
   local.get $0
   i32.const 12800
   i32.store offset=8
   local.get $4
   i32.const 12800
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1150
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   call $~lib/array/Array<i32>#toString
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $2
   i32.store
   local.get $0
   i32.const 13264
   i32.store offset=8
   local.get $2
   i32.const 13264
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1151
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/array/Array<i32>#toString
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store
   local.get $0
   i32.const 13296
   i32.store offset=8
   local.get $1
   i32.const 13296
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1152
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 0
   i32.const 35
   i32.const 13344
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store offset=164
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   i32.const 9312
   i32.store
   local.get $1
   i32.load offset=4
   local.set $5
   local.get $1
   i32.load offset=12
   local.set $1
   i32.const 0
   local.set $0
   i32.const 0
   local.set $8
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $__inlined_func$~lib/util/string/joinIntegerArray<i8>
    local.get $1
    i32.const 1
    i32.sub
    local.tee $6
    i32.const 0
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 9024
     local.set $1
     br $__inlined_func$~lib/util/string/joinIntegerArray<i8>
    end
    block $folding-inner03
     local.get $6
     i32.eqz
     if
      local.get $5
      i32.load8_s
      call $~lib/util/number/itoa32
      local.set $1
      br $folding-inner03
     end
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.const 9308
     i32.load
     i32.const 1
     i32.shr_u
     local.tee $4
     i32.const 11
     i32.add
     i32.mul
     i32.const 11
     i32.add
     local.tee $2
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/itcms/__new
     local.tee $1
     i32.store
     loop $for-loop|05120
      local.get $6
      local.get $8
      i32.gt_s
      if
       local.get $0
       i32.const 1
       i32.shl
       local.get $1
       i32.add
       local.get $5
       local.get $8
       i32.add
       i32.load8_s
       call $~lib/util/number/itoa_buffered<i8>
       local.get $0
       i32.add
       local.set $0
       local.get $4
       if
        local.get $0
        i32.const 1
        i32.shl
        local.get $1
        i32.add
        i32.const 9312
        local.get $4
        i32.const 1
        i32.shl
        call $~lib/memory/memory.copy
        local.get $0
        local.get $4
        i32.add
        local.set $0
       end
       local.get $8
       i32.const 1
       i32.add
       local.set $8
       br $for-loop|05120
      end
     end
     local.get $2
     local.get $0
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     local.get $5
     local.get $6
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
      br $folding-inner03
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
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 13376
   i32.store offset=8
   local.get $1
   i32.const 13376
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1154
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 1
   i32.const 36
   i32.const 13408
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store offset=164
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   i32.const 9312
   i32.store
   local.get $1
   i32.load offset=4
   local.set $5
   local.get $1
   i32.load offset=12
   local.set $1
   i32.const 0
   local.set $0
   i32.const 0
   local.set $8
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $__inlined_func$~lib/util/string/joinIntegerArray<u16>
    local.get $1
    i32.const 1
    i32.sub
    local.tee $6
    i32.const 0
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 9024
     local.set $1
     br $__inlined_func$~lib/util/string/joinIntegerArray<u16>
    end
    block $folding-inner06
     local.get $6
     i32.eqz
     if
      local.get $5
      i32.load16_u
      call $~lib/util/number/utoa32
      local.set $1
      br $folding-inner06
     end
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.const 9308
     i32.load
     i32.const 1
     i32.shr_u
     local.tee $4
     i32.const 10
     i32.add
     i32.mul
     i32.const 10
     i32.add
     local.tee $2
     i32.const 1
     i32.shl
     i32.const 1
     call $~lib/rt/itcms/__new
     local.tee $1
     i32.store
     loop $for-loop|08
      local.get $6
      local.get $8
      i32.gt_s
      if
       local.get $0
       i32.const 1
       i32.shl
       local.get $1
       i32.add
       local.get $8
       i32.const 1
       i32.shl
       local.get $5
       i32.add
       i32.load16_u
       call $~lib/util/number/itoa_buffered<u16>
       local.get $0
       i32.add
       local.set $0
       local.get $4
       if
        local.get $0
        i32.const 1
        i32.shl
        local.get $1
        i32.add
        i32.const 9312
        local.get $4
        i32.const 1
        i32.shl
        call $~lib/memory/memory.copy
        local.get $0
        local.get $4
        i32.add
        local.set $0
       end
       local.get $8
       i32.const 1
       i32.add
       local.set $8
       br $for-loop|08
      end
     end
     local.get $2
     local.get $0
     i32.const 1
     i32.shl
     local.get $1
     i32.add
     local.get $6
     i32.const 1
     i32.shl
     local.get $5
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
      br $folding-inner06
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
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 13440
   i32.store offset=8
   local.get $1
   i32.const 13440
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1155
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 3
   i32.const 37
   i32.const 13488
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store offset=164
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 9312
   i32.store
   local.get $1
   call $~lib/array/Array<u64>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 13536
   i32.store offset=8
   local.get $0
   i32.const 13536
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1156
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 4
   i32.const 3
   i32.const 38
   i32.const 13616
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $1
   i32.store offset=164
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 9312
   i32.store
   local.get $1
   call $~lib/array/Array<i64>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 13680
   i32.store offset=8
   local.get $0
   i32.const 13680
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1157
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 7
   i32.const 2
   i32.const 30
   i32.const 13792
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=140
   local.get $0
   call $~lib/array/Array<~lib/string/String|null>#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 13840
   i32.store offset=8
   local.get $0
   i32.const 13840
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1161
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 4
   i32.const 2
   i32.const 30
   i32.const 13952
   call $~lib/rt/__newArray
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=164
   local.get $0
   call $~lib/array/Array<~lib/string/String|null>#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 14000
   i32.store offset=8
   local.get $0
   i32.const 14000
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1162
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 2
   i32.const 2
   i32.const 25
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=136
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   i32.store offset=160
   local.get $1
   i32.const 0
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 14032
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   i32.const 1
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 14064
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   local.get $1
   i32.store offset=160
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 9312
   i32.store
   local.get $1
   i32.load offset=4
   local.set $7
   local.get $1
   i32.load offset=12
   local.set $2
   i32.const 0
   local.set $1
   local.get $0
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 0
   i32.store offset=8
   block $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<i32>>
    local.get $2
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
     i32.const 9024
     local.set $0
     br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<i32>>
    end
    local.get $6
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.load
     local.tee $0
     i32.store
     local.get $0
     if (result i32)
      local.get $0
      call $~lib/array/Array<i32>#toString
     else
      i32.const 9024
     end
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<i32>>
    end
    i32.const 9024
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 9024
    i32.store offset=4
    i32.const 9308
    i32.load
    i32.const 1
    i32.shr_u
    local.set $4
    loop $for-loop|010
     local.get $1
     local.get $6
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.const 2
      i32.shl
      local.get $7
      i32.add
      i32.load
      local.tee $5
      i32.store
      local.get $5
      if
       global.get $~lib/memory/__stack_pointer
       local.get $5
       call $~lib/array/Array<i32>#toString
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store offset=8
       local.get $0
       local.get $5
       call $~lib/string/String.__concat
       local.tee $0
       i32.store offset=4
      end
      local.get $4
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.const 9312
       call $~lib/string/String.__concat
       local.tee $0
       i32.store offset=4
      end
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|010
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.const 2
    i32.shl
    local.get $7
    i32.add
    i32.load
    local.tee $2
    i32.store
    local.get $2
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     call $~lib/array/Array<i32>#toString
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=8
     local.get $0
     local.get $2
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
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 14096
   i32.store offset=8
   local.get $0
   i32.const 14096
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1165
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 2
   i32.const 2
   i32.const 39
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=136
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   i32.store offset=132
   local.get $1
   i32.const 0
   i32.const 2
   i32.const 0
   i32.const 6
   i32.const 14144
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   i32.const 1
   i32.const 2
   i32.const 0
   i32.const 6
   i32.const 14176
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   local.get $1
   i32.store offset=132
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 9312
   i32.store
   local.get $1
   i32.load offset=4
   local.set $7
   local.get $1
   i32.load offset=12
   local.set $2
   i32.const 0
   local.set $1
   local.get $0
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 0
   i32.store offset=8
   block $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<u8>>
    local.get $2
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
     i32.const 9024
     local.set $0
     br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<u8>>
    end
    local.get $6
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.load
     local.tee $0
     i32.store
     local.get $0
     if (result i32)
      local.get $0
      call $~lib/array/Array<u8>#toString
     else
      i32.const 9024
     end
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<u8>>
    end
    i32.const 9024
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 9024
    i32.store offset=4
    i32.const 9308
    i32.load
    i32.const 1
    i32.shr_u
    local.set $4
    loop $for-loop|01221
     local.get $1
     local.get $6
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.const 2
      i32.shl
      local.get $7
      i32.add
      i32.load
      local.tee $5
      i32.store
      local.get $5
      if
       global.get $~lib/memory/__stack_pointer
       local.get $5
       call $~lib/array/Array<u8>#toString
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store offset=8
       local.get $0
       local.get $5
       call $~lib/string/String.__concat
       local.tee $0
       i32.store offset=4
      end
      local.get $4
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.const 9312
       call $~lib/string/String.__concat
       local.tee $0
       i32.store offset=4
      end
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|01221
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.const 2
    i32.shl
    local.get $7
    i32.add
    i32.load
    local.tee $2
    i32.store
    local.get $2
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     call $~lib/array/Array<u8>#toString
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=8
     local.get $0
     local.get $2
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
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 14096
   i32.store offset=8
   local.get $0
   i32.const 14096
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1168
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 1
   i32.const 2
   i32.const 41
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $2
   i32.store offset=136
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   i32.store offset=128
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 2
   i32.const 40
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=124
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   i32.store offset=120
   local.get $1
   i32.const 0
   i32.const 1
   i32.const 2
   i32.const 7
   i32.const 14208
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $2
   i32.const 0
   local.get $1
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   local.get $2
   i32.store offset=128
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 9312
   i32.store
   local.get $2
   i32.load offset=4
   local.set $7
   local.get $2
   i32.load offset=12
   local.set $2
   i32.const 0
   local.set $1
   local.get $0
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 0
   i32.store offset=8
   block $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<~lib/array/Array<u32>>>
    local.get $2
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
     i32.const 9024
     local.set $0
     br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<~lib/array/Array<u32>>>
    end
    local.get $6
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.load
     local.tee $0
     i32.store
     local.get $0
     if (result i32)
      local.get $0
      call $~lib/array/Array<~lib/array/Array<u32>>#toString
     else
      i32.const 9024
     end
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/array/Array<~lib/array/Array<u32>>>
    end
    i32.const 9024
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 9024
    i32.store offset=4
    i32.const 9308
    i32.load
    i32.const 1
    i32.shr_u
    local.set $4
    loop $for-loop|01422
     local.get $1
     local.get $6
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.const 2
      i32.shl
      local.get $7
      i32.add
      i32.load
      local.tee $5
      i32.store
      local.get $5
      if
       global.get $~lib/memory/__stack_pointer
       local.get $5
       call $~lib/array/Array<~lib/array/Array<u32>>#toString
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store offset=8
       local.get $0
       local.get $5
       call $~lib/string/String.__concat
       local.tee $0
       i32.store offset=4
      end
      local.get $4
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.const 9312
       call $~lib/string/String.__concat
       local.tee $0
       i32.store offset=4
      end
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|01422
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.const 2
    i32.shl
    local.get $7
    i32.add
    i32.load
    local.tee $2
    i32.store
    local.get $2
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     call $~lib/array/Array<~lib/array/Array<u32>>#toString
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=8
     local.get $0
     local.get $2
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
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 12800
   i32.store offset=8
   local.get $0
   i32.const 12800
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 1171
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 4
   i32.const 2
   i32.const 25
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=128
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   i32.store offset=132
   local.get $1
   i32.const 0
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 14240
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   i32.const 1
   i32.const 3
   i32.const 2
   i32.const 3
   i32.const 14272
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   i32.const 2
   i32.const 3
   i32.const 2
   i32.const 3
   i32.const 14304
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   i32.const 3
   i32.const 3
   i32.const 2
   i32.const 3
   i32.const 14336
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   local.get $1
   i32.store offset=132
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/array/Array<~lib/array/Array<i32>>#flat
   local.tee $1
   i32.store offset=128
   local.get $1
   i32.load offset=12
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 1178
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   local.set $0
   loop $for-loop|115
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
      i32.const 1180
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|115
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 4
   i32.const 2
   i32.const 42
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $2
   i32.store offset=160
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   i32.store offset=140
   local.get $2
   i32.const 0
   i32.const 1
   i32.const 2
   i32.const 30
   i32.const 14400
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $2
   i32.const 1
   i32.const 3
   i32.const 2
   i32.const 30
   i32.const 14496
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $2
   i32.const 2
   i32.const 3
   i32.const 2
   i32.const 30
   i32.const 14624
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $2
   i32.const 3
   i32.const 1
   i32.const 2
   i32.const 30
   i32.const 14688
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   local.get $2
   i32.store offset=140
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.set $1
   i32.const 0
   local.set $8
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
   i32.lt_s
   br_if $folding-inner3
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   local.get $2
   i32.load offset=4
   local.set $6
   local.get $2
   i32.load offset=12
   local.set $5
   loop $for-loop|0131
    local.get $1
    local.get $5
    i32.lt_s
    if
     local.get $1
     i32.const 2
     i32.shl
     local.get $6
     i32.add
     i32.load
     local.tee $0
     if (result i32)
      local.get $0
      i32.load offset=12
     else
      i32.const 0
     end
     local.get $8
     i32.add
     local.set $8
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0131
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.const 2
   i32.shl
   local.tee $1
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $7
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 30
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store offset=4
   local.get $0
   local.get $8
   i32.store offset=12
   local.get $0
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $7
   i32.store offset=4
   local.get $0
   local.get $7
   i32.store
   local.get $0
   local.get $7
   i32.const 0
   call $~lib/rt/itcms/__link
   i32.const 0
   local.set $1
   loop $for-loop|1132
    local.get $1
    local.get $5
    i32.lt_s
    if
     local.get $1
     i32.const 2
     i32.shl
     local.get $6
     i32.add
     i32.load
     local.tee $2
     if
      local.get $3
      local.get $7
      i32.add
      local.get $2
      i32.load offset=4
      local.get $2
      i32.load offset=8
      local.tee $2
      call $~lib/memory/memory.copy
      local.get $2
      local.get $3
      i32.add
      local.set $3
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|1132
    end
   end
   i32.const 0
   local.set $1
   loop $for-loop|2
    local.get $1
    local.get $8
    i32.lt_s
    if
     local.get $7
     local.get $1
     i32.const 2
     i32.shl
     local.get $7
     i32.add
     i32.load
     i32.const 1
     call $~lib/rt/itcms/__link
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
   local.get $0
   local.tee $1
   i32.store offset=160
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 2
   i32.const 30
   i32.const 14720
   call $~lib/rt/__newArray
   local.tee $5
   i32.store offset=148
   local.get $0
   i32.load offset=12
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1552
    i32.const 1186
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   local.set $0
   loop $for-loop|2133
    local.get $5
    i32.load offset=12
    local.get $0
    i32.gt_s
    if
     local.get $1
     local.get $0
     call $~lib/array/Array<std/array/Ref|null>#__get
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     local.get $5
     local.get $0
     call $~lib/array/Array<std/array/Ref|null>#__get
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=8
     local.get $4
     local.get $2
     call $~lib/string/String.__eq
     i32.eqz
     if
      i32.const 0
      i32.const 1552
      i32.const 1188
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|2133
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 2
   i32.const 2
   i32.const 25
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $1
   i32.store offset=144
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   i32.store offset=156
   local.get $1
   i32.const 0
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 14784
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $1
   i32.const 1
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 14816
   call $~lib/rt/__newArray
   call $~lib/array/Array<std/array/Ref>#__uset
   local.get $0
   local.get $1
   i32.store offset=156
   local.get $1
   call $~lib/array/Array<~lib/array/Array<i32>>#flat
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=12
   if
    i32.const 0
    i32.const 1552
    i32.const 1192
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/arr
   i32.const 0
   global.set $std/array/inputStabArr
   i32.const 0
   global.set $std/array/outputStabArr
   i32.const 31724
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.gt_s
   if
    loop $while-continue|0152
     global.get $~lib/rt/itcms/state
     if
      call $~lib/rt/itcms/step
      drop
      br $while-continue|0152
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
   i32.const 172
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 31744
  i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
    local.get $2
    i32.const 2
    i32.shl
    local.get $0
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.load offset=12
  i32.const 0
  local.get $1
  select
  local.tee $3
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
   i32.const 236
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
  local.get $4
  i32.const 2
  i32.shl
  local.tee $0
  call $~lib/memory/memory.copy
  local.get $0
  local.get $5
  i32.add
  local.get $1
  i32.load offset=4
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
 (func $~lib/array/Array<i32>#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   local.get $1
   i32.const 2
   i32.shl
   local.get $5
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   local.get $1
   i32.const 2
   i32.shl
   local.get $5
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  local.get $1
  i32.le_u
  if
   i32.const 1344
   i32.const 1104
   i32.const 106
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
   i32.const 110
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  local.get $1
  i32.le_u
  if
   i32.const 1344
   i32.const 1104
   i32.const 106
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   local.get $2
   local.get $0
   i32.load offset=12
   local.tee $5
   local.get $2
   local.get $5
   i32.lt_s
   select
   local.get $3
   i32.gt_s
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   local.get $5
   local.get $0
   i32.load offset=12
   local.tee $3
   local.get $3
   local.get $5
   i32.gt_s
   select
   local.get $4
   i32.gt_s
   if
    local.get $0
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $3
    i32.const 3
    global.set $~argumentsLength
    local.get $3
    local.get $4
    local.get $0
    local.get $1
    i32.load
    call_indirect $0 (type $i32_i32_i32_=>_i32)
    if
     local.get $2
     local.get $3
     call $~lib/array/Array<i32>#push
     drop
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $std/array/Dim#constructor (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 8
  i32.const 18
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<f32>#sort@varargs (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 7712
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 7712
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 8304
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 8304
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 32
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.set $4
  local.get $3
  local.get $1
  local.get $1
  local.get $3
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.tee $3
  local.get $4
  i32.sub
  local.tee $1
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 9024
   return
  end
  i32.const 0
  local.get $2
  i32.const 1
  i32.shl
  local.get $3
  i32.eq
  local.get $4
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
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  local.get $0
  local.get $4
  i32.add
  local.get $1
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 9616
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 9616
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.load offset=4
  local.set $5
  local.get $0
  i32.load offset=12
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.lt_s
   if
    local.get $2
    i32.const 2
    i32.shl
    local.get $5
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
   local.get $6
   i32.lt_s
   if
    local.get $2
    i32.const 2
    i32.shl
    local.get $5
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
    i32.const 43
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
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
  i32.const 31744
  i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  block $__inlined_func$~lib/array/Array<u32>#every (result i32)
   local.get $0
   i32.load offset=12
   local.set $3
   loop $for-loop|0
    local.get $3
    local.get $0
    i32.load offset=12
    local.tee $2
    local.get $2
    local.get $3
    i32.gt_s
    select
    local.get $4
    i32.gt_s
    if
     local.get $0
     i32.load offset=4
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $2
     i32.const 3
     global.set $~argumentsLength
     i32.const 0
     local.get $2
     local.get $4
     local.get $0
     local.get $1
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_i32)
     i32.eqz
     br_if $__inlined_func$~lib/array/Array<u32>#every
     drop
     local.get $4
     i32.const 1
     i32.add
     local.set $4
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  local.get $0
  i32.load offset=12
  local.set $4
  block $__inlined_func$~lib/array/Array<u32>#findIndex
   loop $for-loop|0
    local.get $4
    local.get $0
    i32.load offset=12
    local.tee $3
    local.get $3
    local.get $4
    i32.gt_s
    select
    local.get $2
    i32.gt_s
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
 (func $export:~lib/array/Array<u32>#findLastIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  block $__inlined_func$~lib/array/Array<u32>#findLastIndex
   loop $for-loop|0
    local.get $2
    i32.const 0
    i32.ge_s
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
     br_if $__inlined_func$~lib/array/Array<u32>#findLastIndex
     local.get $2
     i32.const 1
     i32.sub
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  i32.const 0
  local.get $0
  i32.load offset=12
  local.tee $2
  local.get $1
  i32.const 0
  i32.ge_s
  select
  local.get $1
  i32.add
  local.tee $1
  local.get $2
  i32.ge_u
  if
   i32.const 1344
   i32.const 1104
   i32.const 139
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
    local.get $0
    i32.const 2
    i32.shl
    local.get $6
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
     local.get $2
     i32.const 2
     i32.shl
     local.get $0
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
     local.get $2
     i32.const 2
     i32.shl
     local.get $0
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   local.get $0
   i32.load offset=12
   local.set $2
  end
  i32.const -1
  local.set $3
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
     local.get $1
     local.get $2
     local.tee $3
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     i32.load
     i32.eq
     br_if $__inlined_func$~lib/array/Array<u32>#lastIndexOf
     local.get $3
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $3
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:~lib/array/Array<u32>#push (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
   local.tee $3
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
    i32.const 236
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
   local.get $4
   i32.const 2
   i32.shl
   local.tee $0
   call $~lib/memory/memory.copy
   local.get $0
   local.get $5
   i32.add
   local.get $1
   i32.load offset=4
   local.get $3
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
  i32.const 31744
  i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 283
   i32.const 18
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.load offset=12
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load offset=12
   local.tee $4
   local.get $2
   local.get $4
   i32.lt_s
   select
   local.get $3
   i32.gt_s
   if
    local.get $0
    i32.load offset=4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.const 3
    global.set $~argumentsLength
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
   i32.const 15340
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
   i32.const 15340
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
    local.get $5
    local.get $0
    i32.load offset=12
    local.tee $3
    local.get $3
    local.get $5
    i32.gt_s
    select
    local.get $4
    i32.gt_s
    if
     local.get $0
     i32.load offset=4
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $3
     i32.const 3
     global.set $~argumentsLength
     local.get $3
     local.get $4
     local.get $0
     local.get $1
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_i32)
     if
      local.get $2
      local.get $3
      call $~lib/array/Array<i32>#push
      drop
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
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
  i32.const 31744
  i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 342
   i32.const 18
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  block $__inlined_func$~lib/array/Array<u32>#some (result i32)
   local.get $0
   i32.load offset=12
   local.set $3
   loop $for-loop|0
    local.get $3
    local.get $0
    i32.load offset=12
    local.tee $2
    local.get $2
    local.get $3
    i32.gt_s
    select
    local.get $4
    i32.gt_s
    if
     local.get $0
     i32.load offset=4
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $2
     i32.const 3
     global.set $~argumentsLength
     i32.const 1
     local.get $2
     local.get $4
     local.get $0
     local.get $1
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_i32)
     br_if $__inlined_func$~lib/array/Array<u32>#some
     drop
     local.get $4
     i32.const 1
     i32.add
     local.set $4
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
  i32.const 31744
  i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
    local.get $1
    i32.const 2
    i32.shl
    local.get $5
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
  i32.const 31744
  i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   local.tee $3
   local.set $2
   local.get $1
   i32.const 1
   i32.sub
   i32.const 2
   i32.shl
   local.get $3
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
    i32.const 9312
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 9312
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
  i32.const 31744
  i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  i32.const 14848
  i32.const 1104
  i32.const 472
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
    i32.const 44
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
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
  i32.const 31744
  i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  block $__inlined_func$~lib/array/Array<u8>#every (result i32)
   local.get $0
   i32.load offset=12
   local.set $3
   loop $for-loop|0
    local.get $3
    local.get $0
    i32.load offset=12
    local.tee $2
    local.get $2
    local.get $3
    i32.gt_s
    select
    local.get $4
    i32.gt_s
    if
     local.get $4
     local.get $0
     i32.load offset=4
     i32.add
     i32.load8_u
     local.set $2
     i32.const 3
     global.set $~argumentsLength
     i32.const 0
     local.get $2
     local.get $4
     local.get $0
     local.get $1
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_i32)
     i32.eqz
     br_if $__inlined_func$~lib/array/Array<u8>#every
     drop
     local.get $4
     i32.const 1
     i32.add
     local.set $4
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  local.get $0
  i32.load offset=12
  local.set $4
  block $__inlined_func$~lib/array/Array<u8>#findIndex
   loop $for-loop|0
    local.get $4
    local.get $0
    i32.load offset=12
    local.tee $3
    local.get $3
    local.get $4
    i32.gt_s
    select
    local.get $2
    i32.gt_s
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
 (func $export:~lib/array/Array<u8>#findLastIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  block $__inlined_func$~lib/array/Array<u8>#findLastIndex
   loop $for-loop|0
    local.get $2
    i32.const 0
    i32.ge_s
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
     br_if $__inlined_func$~lib/array/Array<u8>#findLastIndex
     local.get $2
     i32.const 1
     i32.sub
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  i32.const 0
  local.get $0
  i32.load offset=12
  local.tee $2
  local.get $1
  i32.const 0
  i32.ge_s
  select
  local.get $1
  i32.add
  local.tee $1
  local.get $2
  i32.ge_u
  if
   i32.const 1344
   i32.const 1104
   i32.const 139
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   local.get $0
   i32.load offset=12
   local.set $2
  end
  i32.const -1
  local.set $3
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
     local.tee $3
     local.get $0
     i32.add
     i32.load8_u
     local.get $1
     i32.const 255
     i32.and
     i32.eq
     br_if $__inlined_func$~lib/array/Array<u8>#lastIndexOf
     local.get $3
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $3
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:~lib/array/Array<u8>#push (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
    i32.const 236
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
  i32.const 31744
  i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  local.tee $0
  local.get $5
  local.get $1
  i32.sub
  local.tee $1
  local.get $0
  local.get $1
  i32.lt_s
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 283
   i32.const 18
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.load offset=12
  local.set $2
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load offset=12
   local.tee $4
   local.get $2
   local.get $4
   i32.lt_s
   select
   local.get $3
   i32.gt_s
   if
    local.get $3
    local.get $0
    i32.load offset=4
    i32.add
    i32.load8_u
    i32.const 3
    global.set $~argumentsLength
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
   i32.const 15340
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
   i32.const 15340
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
    local.get $5
    local.get $0
    i32.load offset=12
    local.tee $3
    local.get $3
    local.get $5
    i32.gt_s
    select
    local.get $4
    i32.gt_s
    if
     local.get $4
     local.get $0
     i32.load offset=4
     i32.add
     i32.load8_u
     local.set $3
     i32.const 3
     global.set $~argumentsLength
     local.get $3
     local.get $4
     local.get $0
     local.get $1
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_i32)
     if
      local.get $2
      local.get $3
      call $~lib/array/Array<u8>#push
      drop
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
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
  i32.const 31744
  i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 342
   i32.const 18
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  block $__inlined_func$~lib/array/Array<u8>#some (result i32)
   local.get $0
   i32.load offset=12
   local.set $3
   loop $for-loop|0
    local.get $3
    local.get $0
    i32.load offset=12
    local.tee $2
    local.get $2
    local.get $3
    i32.gt_s
    select
    local.get $4
    i32.gt_s
    if
     local.get $4
     local.get $0
     i32.load offset=4
     i32.add
     i32.load8_u
     local.set $2
     i32.const 3
     global.set $~argumentsLength
     i32.const 1
     local.get $2
     local.get $4
     local.get $0
     local.get $1
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_i32)
     br_if $__inlined_func$~lib/array/Array<u8>#some
     drop
     local.get $4
     i32.const 1
     i32.add
     local.set $4
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
  i32.const 31744
  i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
  i32.const 31744
  i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   local.tee $3
   local.set $2
   local.get $1
   i32.const 1
   i32.sub
   local.get $3
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
   i32.const 15340
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
   i32.const 15340
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
    i32.const 14912
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 14912
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
  i32.const 31744
  i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
    i32.const 9312
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 9312
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
  i32.const 31744
  i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
    i32.const 45
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
  i32.const 31744
  i32.const 31792
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
   i32.const 15340
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
    i32.const 15340
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    local.get $0
    i32.load offset=12
    local.set $2
    loop $for-loop|0
     local.get $2
     local.get $0
     i32.load offset=12
     local.tee $4
     local.get $2
     local.get $4
     i32.lt_s
     select
     local.get $3
     i32.gt_s
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
  i32.const 31744
  i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
     local.get $3
     local.get $0
     i32.load offset=12
     local.tee $4
     local.get $3
     local.get $4
     i32.lt_s
     select
     local.get $2
     i32.gt_s
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
  i32.const 31744
  i32.const 31792
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:~lib/array/Array<~lib/string/String>#findLastIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 15340
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
   i32.const 15340
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $2
   block $__inlined_func$~lib/array/Array<~lib/string/String>#findLastIndex
    loop $for-loop|0
     local.get $2
     i32.const 0
     i32.ge_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load offset=4
      local.get $2
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee $3
      i32.store
      i32.const 3
      global.set $~argumentsLength
      local.get $3
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
       br $__inlined_func$~lib/array/Array<~lib/string/String>#findLastIndex
      end
      local.get $2
      i32.const 1
      i32.sub
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
  i32.const 31744
  i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   i32.const 0
   local.get $0
   i32.load offset=12
   local.tee $2
   local.get $1
   i32.const 0
   i32.ge_s
   select
   local.get $1
   i32.add
   local.tee $1
   local.get $2
   i32.ge_u
   if
    i32.const 1344
    i32.const 1104
    i32.const 139
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
    i32.const 143
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
  i32.const 31744
  i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
    local.get $2
    i32.const 2
    i32.shl
    local.get $5
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
      local.get $2
      i32.const 2
      i32.shl
      local.get $0
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
  i32.const 31744
  i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
   local.tee $6
   i32.add
   local.tee $2
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1056
    i32.const 1104
    i32.const 236
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 2
   i32.const 32
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $2
   i32.store
   local.get $2
   i32.load offset=4
   local.set $5
   local.get $3
   i32.const 2
   i32.shl
   local.set $3
   local.get $0
   i32.load offset=4
   local.set $0
   loop $for-loop|0
    local.get $3
    local.get $4
    i32.gt_u
    if
     local.get $4
     local.get $5
     i32.add
     local.get $0
     local.get $4
     i32.add
     i32.load
     local.tee $7
     i32.store
     local.get $2
     local.get $7
     i32.const 1
     call $~lib/rt/itcms/__link
     local.get $4
     i32.const 4
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   local.get $3
   local.get $5
   i32.add
   local.set $0
   local.get $1
   i32.load offset=4
   local.set $4
   local.get $6
   i32.const 2
   i32.shl
   local.set $5
   i32.const 0
   local.set $1
   loop $for-loop|1
    local.get $1
    local.get $5
    i32.lt_u
    if
     local.get $0
     local.get $1
     i32.add
     local.get $1
     local.get $4
     i32.add
     i32.load
     local.tee $3
     i32.store
     local.get $2
     local.get $3
     i32.const 1
     call $~lib/rt/itcms/__link
     local.get $1
     i32.const 4
     i32.add
     local.set $1
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
  i32.const 31744
  i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
    i32.const 283
    i32.const 18
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
  i32.const 31744
  i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.load offset=12
   local.set $2
   loop $for-loop|0
    local.get $2
    local.get $0
    i32.load offset=12
    local.tee $4
    local.get $2
    local.get $4
    i32.lt_s
    select
    local.get $3
    i32.gt_s
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
  i32.const 31744
  i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 0
   i32.const 2
   i32.const 32
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $2
   i32.store
   local.get $0
   i32.load offset=12
   local.set $5
   loop $for-loop|0
    local.get $5
    local.get $0
    i32.load offset=12
    local.tee $3
    local.get $3
    local.get $5
    i32.gt_s
    select
    local.get $4
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=4
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $3
     i32.store offset=4
     i32.const 3
     global.set $~argumentsLength
     local.get $3
     local.get $4
     local.get $0
     local.get $1
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_i32)
     if
      local.get $2
      local.get $3
      call $~lib/array/Array<~lib/string/String>#push
      drop
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
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
  i32.const 31744
  i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
    i32.const 342
    i32.const 18
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
  i32.const 31744
  i32.const 31792
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
   i32.const 15340
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
    i32.const 15340
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    local.get $0
    i32.load offset=12
    local.set $2
    loop $for-loop|0
     local.get $2
     local.get $0
     i32.load offset=12
     local.tee $4
     local.get $2
     local.get $4
     i32.lt_s
     select
     local.get $3
     i32.gt_s
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
  i32.const 31744
  i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
   i32.const 32
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
  i32.const 31744
  i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
   i32.const 32
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
    local.get $1
    i32.const 2
    i32.shl
    local.get $5
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
  i32.const 31744
  i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
    local.tee $3
    local.set $1
    local.get $2
    i32.const 1
    i32.sub
    i32.const 2
    i32.shl
    local.get $3
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
  i32.const 31744
  i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
    i32.const 14944
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 14944
    i32.store
   end
   local.get $0
   i32.load offset=4
   local.get $0
   i32.load offset=12
   local.get $1
   call $~lib/util/sort/SORT<std/array/Dim>
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
  i32.const 31744
  i32.const 31792
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
   i32.const 15340
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
   i32.const 15340
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
    i32.const 9312
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 9312
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
  i32.const 31744
  i32.const 31792
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
  i32.const 15340
  i32.lt_s
  if
   i32.const 31744
   i32.const 31792
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
