(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $f32_f32_=>_i32 (func (param f32 f32) (result i32)))
 (type $f64_f64_=>_i32 (func (param f64 f64) (result i32)))
 (type $none_=>_none (func))
 (type $none_=>_f64 (func (result f64)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i32_i32_i32_=>_f32 (func (param i32 i32 i32) (result f32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i64_i32_i64_i32_i64_i32_=>_i32 (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i64_=>_i64 (func (param i64) (result i64)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "Math" "random" (func $~lib/bindings/Math/random (result f64)))
 (import "env" "seed" (func $~lib/builtins/seed (result f64)))
 (memory $0 1)
 (data (i32.const 1036) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1084) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1132) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1196) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 1260) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1324) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1372) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1436) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00a\00b\00c")
 (data (i32.const 1468) "\1c\00\00\00\01")
 (data (i32.const 1484) "\05\00\00\00\01\02\03\04\05")
 (data (i32.const 1500) "\1c\00\00\00\01")
 (data (i32.const 1516) "\05\00\00\00\01\01\01\04\05")
 (data (i32.const 1532) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1596) "\1c\00\00\00\01")
 (data (i32.const 1612) "\05")
 (data (i32.const 1628) "\1c\00\00\00\01")
 (data (i32.const 1644) "\05\00\00\00\01\01")
 (data (i32.const 1660) "\1c\00\00\00\01")
 (data (i32.const 1676) "\05\00\00\00\01\01\00\02\02")
 (data (i32.const 1692) "\1c\00\00\00\01")
 (data (i32.const 1708) "\05\00\00\00\01\01\00\02\02")
 (data (i32.const 1724) ",\00\00\00\01")
 (data (i32.const 1740) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1772) ",\00\00\00\01")
 (data (i32.const 1788) "\14\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05")
 (data (i32.const 1820) ",\00\00\00\01")
 (data (i32.const 1836) "\14")
 (data (i32.const 1868) ",\00\00\00\01")
 (data (i32.const 1884) "\14\00\00\00\01\00\00\00\01")
 (data (i32.const 1916) ",\00\00\00\01")
 (data (i32.const 1932) "\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 1964) ",\00\00\00\01")
 (data (i32.const 1980) "\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 2012) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data (i32.const 2060) "\1c\00\00\00\01")
 (data (i32.const 2092) "\1c\00\00\00\01")
 (data (i32.const 2124) ",\00\00\00\01")
 (data (i32.const 2140) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2172) ",\00\00\00\01")
 (data (i32.const 2188) "\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2220) ",\00\00\00\01")
 (data (i32.const 2236) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2268) ",\00\00\00\01")
 (data (i32.const 2284) "\14\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00\04\00\00\00\05")
 (data (i32.const 2316) ",\00\00\00\01")
 (data (i32.const 2332) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2364) ",\00\00\00\01")
 (data (i32.const 2380) "\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 2412) ",\00\00\00\01")
 (data (i32.const 2428) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2460) ",\00\00\00\01")
 (data (i32.const 2476) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2508) ",\00\00\00\01")
 (data (i32.const 2524) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2556) ",\00\00\00\01")
 (data (i32.const 2572) "\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2604) ",\00\00\00\01")
 (data (i32.const 2620) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2652) ",\00\00\00\01")
 (data (i32.const 2668) "\14\00\00\00\01\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2700) ",\00\00\00\01")
 (data (i32.const 2716) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2748) ",\00\00\00\01")
 (data (i32.const 2764) "\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 2796) ",\00\00\00\01")
 (data (i32.const 2812) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2844) ",\00\00\00\01")
 (data (i32.const 2860) "\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2892) ",\00\00\00\01")
 (data (i32.const 2908) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2940) ",\00\00\00\01")
 (data (i32.const 2956) "\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 2988) ",\00\00\00\01")
 (data (i32.const 3004) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3036) ",\00\00\00\01")
 (data (i32.const 3052) "\14\00\00\00\01\00\00\00\03\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3084) ",\00\00\00\01")
 (data (i32.const 3100) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3132) ",\00\00\00\01")
 (data (i32.const 3148) "\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 3180) ",\00\00\00\01")
 (data (i32.const 3196) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3228) ",\00\00\00\01")
 (data (i32.const 3244) "\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 3276) "\1c\00\00\00\01")
 (data (i32.const 3292) "\04\00\00\00\00\00\c0\7f")
 (data (i32.const 3308) "\1c\00\00\00\01")
 (data (i32.const 3324) "\08")
 (data (i32.const 3334) "\f8\7f")
 (data (i32.const 3340) "\1c\00\00\00\01")
 (data (i32.const 3356) "\04\00\00\00\00\00\c0\7f")
 (data (i32.const 3372) "\1c\00\00\00\01")
 (data (i32.const 3388) "\08")
 (data (i32.const 3398) "\f8\7f")
 (data (i32.const 3404) ",\00\00\00\01")
 (data (i32.const 3420) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3452) ",\00\00\00\01")
 (data (i32.const 3468) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3500) "\1c\00\00\00\01")
 (data (i32.const 3532) ",\00\00\00\01")
 (data (i32.const 3548) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3580) "\1c\00\00\00\01")
 (data (i32.const 3612) ",\00\00\00\01")
 (data (i32.const 3628) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3660) ",\00\00\00\01")
 (data (i32.const 3676) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3708) "\1c\00\00\00\01")
 (data (i32.const 3724) "\0c\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3740) "\1c\00\00\00\01")
 (data (i32.const 3756) "\08\00\00\00\01\00\00\00\02")
 (data (i32.const 3772) ",\00\00\00\01")
 (data (i32.const 3788) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3820) "\1c\00\00\00\01")
 (data (i32.const 3836) "\08\00\00\00\03\00\00\00\04")
 (data (i32.const 3852) "\1c\00\00\00\01")
 (data (i32.const 3868) "\0c\00\00\00\01\00\00\00\02\00\00\00\05")
 (data (i32.const 3884) ",\00\00\00\01")
 (data (i32.const 3900) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 3932) "\1c\00\00\00\01")
 (data (i32.const 3948) "\04\00\00\00\01")
 (data (i32.const 3964) ",\00\00\00\01")
 (data (i32.const 3980) "\10\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4012) ",\00\00\00\01")
 (data (i32.const 4028) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4060) "\1c\00\00\00\01")
 (data (i32.const 4076) "\04\00\00\00\05")
 (data (i32.const 4092) ",\00\00\00\01")
 (data (i32.const 4108) "\10\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04")
 (data (i32.const 4140) ",\00\00\00\01")
 (data (i32.const 4156) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4188) "\1c\00\00\00\01")
 (data (i32.const 4204) "\08\00\00\00\04\00\00\00\05")
 (data (i32.const 4220) "\1c\00\00\00\01")
 (data (i32.const 4236) "\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 4252) ",\00\00\00\01")
 (data (i32.const 4268) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4300) "\1c\00\00\00\01")
 (data (i32.const 4316) "\04\00\00\00\04")
 (data (i32.const 4332) ",\00\00\00\01")
 (data (i32.const 4348) "\10\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\05")
 (data (i32.const 4380) ",\00\00\00\01")
 (data (i32.const 4396) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4428) "\1c\00\00\00\01")
 (data (i32.const 4444) "\04\00\00\00\01")
 (data (i32.const 4460) ",\00\00\00\01")
 (data (i32.const 4476) "\10\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4508) ",\00\00\00\01")
 (data (i32.const 4524) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4556) "\1c\00\00\00\01")
 (data (i32.const 4588) ",\00\00\00\01")
 (data (i32.const 4604) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4636) ",\00\00\00\01")
 (data (i32.const 4652) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4684) "\1c\00\00\00\01")
 (data (i32.const 4716) ",\00\00\00\01")
 (data (i32.const 4732) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4764) ",\00\00\00\01")
 (data (i32.const 4780) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4812) "\1c\00\00\00\01")
 (data (i32.const 4844) ",\00\00\00\01")
 (data (i32.const 4860) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4892) ",\00\00\00\01")
 (data (i32.const 4908) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 4940) "\1c\00\00\00\01")
 (data (i32.const 4972) ",\00\00\00\01")
 (data (i32.const 4988) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 5020) ",\00\00\00\01")
 (data (i32.const 5036) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 5068) "\1c\00\00\00\01")
 (data (i32.const 5100) ",\00\00\00\01")
 (data (i32.const 5116) "\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 5148) "\1c\00\00\00\01")
 (data (i32.const 5180) "|\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 5308) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 5372) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\01")
 (data (i32.const 5404) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\02")
 (data (i32.const 5436) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\03")
 (data (i32.const 5468) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\04")
 (data (i32.const 5500) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\05")
 (data (i32.const 5532) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\06")
 (data (i32.const 5564) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\07")
 (data (i32.const 5596) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\08")
 (data (i32.const 5628) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\t")
 (data (i32.const 5660) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\n")
 (data (i32.const 5692) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\0b")
 (data (i32.const 5724) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\0c")
 (data (i32.const 5756) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\0d")
 (data (i32.const 5788) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\0e")
 (data (i32.const 5820) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\0f")
 (data (i32.const 5852) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\10")
 (data (i32.const 5884) "\1c\00\00\00\01\00\00\00\00\00\00\00\0d\00\00\00\08\00\00\00\11")
 (data (i32.const 5916) "\1c\00\00\00\01\00\00\00\00\00\00\00\0d\00\00\00\08\00\00\00\12")
 (data (i32.const 5948) "\1c\00\00\00\01\00\00\00\00\00\00\00\0d\00\00\00\08\00\00\00\13")
 (data (i32.const 5980) "\1c\00\00\00\01\00\00\00\00\00\00\00\0d\00\00\00\08\00\00\00\14")
 (data (i32.const 6012) "\1c\00\00\00\01\00\00\00\00\00\00\00\0d\00\00\00\08\00\00\00\15")
 (data (i32.const 6044) "\1c\00\00\00\01\00\00\00\00\00\00\00\0e\00\00\00\08\00\00\00\16")
 (data (i32.const 6076) "\1c\00\00\00\01\00\00\00\00\00\00\00\0f\00\00\00\08\00\00\00\17")
 (data (i32.const 6108) "\1c\00\00\00\01\00\00\00\00\00\00\00\0f\00\00\00\08\00\00\00\18")
 (data (i32.const 6140) "\1c\00\00\00\01\00\00\00\00\00\00\00\0f\00\00\00\08\00\00\00\19")
 (data (i32.const 6172) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\1a")
 (data (i32.const 6204) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\1b")
 (data (i32.const 6236) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\1c")
 (data (i32.const 6268) "\1c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\08\00\00\00\1d")
 (data (i32.const 6300) "\1c\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\08\00\00\00\1e")
 (data (i32.const 6332) "\1c\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\08\00\00\00\1f")
 (data (i32.const 6364) "\1c\00\00\00\01\00\00\00\00\00\00\00\11\00\00\00\08\00\00\00 ")
 (data (i32.const 6396) "\1c\00\00\00\01\00\00\00\00\00\00\00\11\00\00\00\08\00\00\00!")
 (data (i32.const 6428) "\1c\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\08\00\00\00\"")
 (data (i32.const 6460) "\1c\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\08\00\00\00#")
 (data (i32.const 6492) "\1c\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\08\00\00\00$")
 (data (i32.const 6524) "\1c\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\08\00\00\00%")
 (data (i32.const 6556) "\1c\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\08\00\00\00&")
 (data (i32.const 6588) "\1c\00\00\00\01\00\00\00\00\00\00\00\11\00\00\00\08\00\00\00\'")
 (data (i32.const 6620) "\1c\00\00\00\01\00\00\00\00\00\00\00\11\00\00\00\08\00\00\00(")
 (data (i32.const 6652) "\1c\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\08\00\00\00)")
 (data (i32.const 6684) "\1c\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\08\00\00\00*")
 (data (i32.const 6716) "\1c\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\08\00\00\00+")
 (data (i32.const 6748) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s")
 (data (i32.const 6796) "\bc\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\ac\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?")
 (data (i32.const 6988) "<\00\00\00\01")
 (data (i32.const 7004) " \00\00\00\00\00\80?\00\00\c0\7f\00\00\80\ff\00\00\80?\00\00\00\00\00\00\80\bf\00\00\00\c0\00\00\80\7f")
 (data (i32.const 7052) "\1c\00\00\00\01\00\00\00\00\00\00\00\12\00\00\00\08\00\00\00,")
 (data (i32.const 7084) "<\00\00\00\01")
 (data (i32.const 7100) " \00\00\00\00\00\80\ff\00\00\00\c0\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\7f\00\00\c0\7f")
 (data (i32.const 7148) "\\\00\00\00\01")
 (data (i32.const 7164) "@")
 (data (i32.const 7174) "\f0?\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\05\00\00\00\00\00\f0?")
 (data (i32.const 7214) "\f0\bf\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\7f")
 (data (i32.const 7244) "\1c\00\00\00\01\00\00\00\00\00\00\00\13\00\00\00\08\00\00\00-")
 (data (i32.const 7276) "\\\00\00\00\01")
 (data (i32.const 7292) "@")
 (data (i32.const 7302) "\f0\ff\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\bf")
 (data (i32.const 7334) "\f0?\05\00\00\00\00\00\f0?\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\f8\7f")
 (data (i32.const 7372) ",\00\00\00\01")
 (data (i32.const 7388) "\14\00\00\00\01\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 7420) "\1c\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\08\00\00\00.")
 (data (i32.const 7452) ",\00\00\00\01")
 (data (i32.const 7468) "\14\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\01\00\00\00\02")
 (data (i32.const 7500) ",\00\00\00\01")
 (data (i32.const 7516) "\14\00\00\00\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 7548) "\1c\00\00\00\01\00\00\00\00\00\00\00\15\00\00\00\08\00\00\00/")
 (data (i32.const 7580) ",\00\00\00\01")
 (data (i32.const 7596) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 7628) "\1c\00\00\00\01")
 (data (i32.const 7660) "\1c\00\00\00\01")
 (data (i32.const 7676) "\04\00\00\00\01")
 (data (i32.const 7692) "\1c\00\00\00\01")
 (data (i32.const 7708) "\08\00\00\00\02\00\00\00\01")
 (data (i32.const 7724) ",\00\00\00\01")
 (data (i32.const 7740) "\10\00\00\00\03\00\00\00\02\00\00\00\01")
 (data (i32.const 7772) ",\00\00\00\01")
 (data (i32.const 7788) "\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 7820) "\1c\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\08\00\00\000")
 (data (i32.const 7852) "\1c\00\00\00\01")
 (data (i32.const 7868) "\04\00\00\00\01")
 (data (i32.const 7884) "\1c\00\00\00\01")
 (data (i32.const 7900) "\08\00\00\00\01\00\00\00\02")
 (data (i32.const 7916) "\1c\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\08\00\00\001")
 (data (i32.const 7948) "\1c\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\08\00\00\002")
 (data (i32.const 7980) "\1c\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\08\00\00\003")
 (data (i32.const 8012) "\1c\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\08\00\00\004")
 (data (i32.const 8044) "\1c\00\00\00\01\00\00\00\00\00\00\00\17\00\00\00\08\00\00\005")
 (data (i32.const 8076) "\1c\00\00\00\01\00\00\00\00\00\00\00\1a\00\00\00\08\00\00\006")
 (data (i32.const 8108) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00a")
 (data (i32.const 8140) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00b")
 (data (i32.const 8172) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00a\00b")
 (data (i32.const 8204) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00b\00a")
 (data (i32.const 8236) "\1c\00\00\00\01\00\00\00\00\00\00\00\01")
 (data (i32.const 8268) ",\00\00\00\01")
 (data (i32.const 8284) "\1c\00\00\00\c0\1f\00\00\e0\1f\00\00\c0\1f\00\00\00 \00\00  \00\00@ ")
 (data (i32.const 8316) ",\00\00\00\01")
 (data (i32.const 8332) "\1c\00\00\00@ \00\00\c0\1f\00\00\c0\1f\00\00\00 \00\00\e0\1f\00\00  ")
 (data (i32.const 8364) "\1c\00\00\00\01\00\00\00\00\00\00\00\1c\00\00\00\08\00\00\007")
 (data (i32.const 8396) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l")
 (data (i32.const 8428) "\1c\00\00\00\01\00\00\00\00\00\00\00\1e\00\00\00\08\00\00\008")
 (data (i32.const 8460) "\1c\00\00\00\01")
 (data (i32.const 8476) "\02\00\00\00\01")
 (data (i32.const 8492) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00t\00r\00u\00e")
 (data (i32.const 8524) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 8556) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00,")
 (data (i32.const 8588) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00t\00r\00u\00e\00,\00f\00a\00l\00s\00e")
 (data (i32.const 8636) "\1c\00\00\00\01")
 (data (i32.const 8652) "\0c\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff")
 (data (i32.const 8668) "|\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 8796) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 8860) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\000")
 (data (i32.const 8892) "\\\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 8988) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\n\00\00\001\00-\002\00-\003")
 (data (i32.const 9020) "\1c\00\00\00\01")
 (data (i32.const 9036) "\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 9052) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00-")
 (data (i32.const 9084) "\1c\00\00\00\01")
 (data (i32.const 9100) "\08\00\00\00\00\00\00\80\00\00\00\80")
 (data (i32.const 9116) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00_\00_")
 (data (i32.const 9148) "L\00\00\00\01\00\00\00\00\00\00\00\01\00\00\000\00\00\00-\002\001\004\007\004\008\003\006\004\008\00_\00_\00-\002\001\004\007\004\008\003\006\004\008")
 (data (i32.const 9228) "L\00\00\00\01")
 (data (i32.const 9244) "0")
 (data (i32.const 9262) "\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f")
 (data (i32.const 9308) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\04\00\00\00,\00 ")
 (data (i32.const 9340) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\000\00.\000")
 (data (i32.const 9372) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00N\00a\00N")
 (data (i32.const 9404) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 9452) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 9560) "\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 10256) "<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 10432) "\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 10476) "l\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00P\00\00\000\00.\000\00,\00 \001\00.\000\00,\00 \00-\002\00.\000\00,\00 \00N\00a\00N\00,\00 \00-\00I\00n\00f\00i\00n\00i\00t\00y\00,\00 \00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 10588) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\001")
 (data (i32.const 10620) "\1c\00\00\00\01")
 (data (i32.const 10636) "\0c\00\00\00@ \00\00p)")
 (data (i32.const 10652) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 10716) "\\\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00@\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 10812) "\\\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00>\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]")
 (data (i32.const 10908) "\1c\00\00\00\01")
 (data (i32.const 10940) "\1c\00\00\00\01")
 (data (i32.const 10956) "\04\00\00\00\01")
 (data (i32.const 10972) "\1c\00\00\00\01")
 (data (i32.const 10988) "\08\00\00\00\01\00\00\00\02")
 (data (i32.const 11004) ",\00\00\00\01")
 (data (i32.const 11020) "\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 11052) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\001\00,\002")
 (data (i32.const 11084) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\000\00,\001\00,\002\00,\003")
 (data (i32.const 11132) "\1c\00\00\00\01")
 (data (i32.const 11148) "\03\00\00\00\01\ff")
 (data (i32.const 11164) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\001\00,\00-\001\00,\000")
 (data (i32.const 11196) "\1c\00\00\00\01")
 (data (i32.const 11212) "\06\00\00\00\01\00\ff\ff")
 (data (i32.const 11228) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\12\00\00\001\00,\006\005\005\003\005\00,\000")
 (data (i32.const 11276) ",\00\00\00\01")
 (data (i32.const 11292) "\18\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 11324) "L\00\00\00\01\00\00\00\00\00\00\00\01\00\00\000\00\00\001\00,\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00,\000")
 (data (i32.const 11404) "<\00\00\00\01")
 (data (i32.const 11420) " \00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\7f")
 (data (i32.const 11468) "l\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00T\00\00\00-\001\00,\00-\001\002\003\004\005\006\007\008\009\000\001\002\003\004\005\006\00,\000\00,\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007")
 (data (i32.const 11580) ",\00\00\00\01")
 (data (i32.const 11596) "\1c\00\00\00@ \00\00\c0\1f\00\00\c0\1f\00\00\00 \00\00\e0\1f\00\00  ")
 (data (i32.const 11628) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00,\00a\00,\00a\00,\00a\00b\00,\00b\00,\00b\00a\00,")
 (data (i32.const 11676) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\002")
 (data (i32.const 11708) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\004")
 (data (i32.const 11740) ",\00\00\00\01")
 (data (i32.const 11756) "\10\00\00\00p)\00\00\b0-\00\00\00\00\00\00\d0-")
 (data (i32.const 11788) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\001\00,\002\00,\00,\004")
 (data (i32.const 11820) "\1c\00\00\00\01")
 (data (i32.const 11836) "\08\00\00\00\01\00\00\00\02")
 (data (i32.const 11852) "\1c\00\00\00\01")
 (data (i32.const 11868) "\08\00\00\00\03\00\00\00\04")
 (data (i32.const 11884) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\001\00,\002\00,\003\00,\004")
 (data (i32.const 11932) "\1c\00\00\00\01")
 (data (i32.const 11948) "\02\00\00\00\01\02")
 (data (i32.const 11964) "\1c\00\00\00\01")
 (data (i32.const 11980) "\02\00\00\00\03\04")
 (data (i32.const 11996) "\1c\00\00\00\01")
 (data (i32.const 12012) "\04\00\00\00\01")
 (data (i32.const 12028) "\1c\00\00\00\01")
 (data (i32.const 12044) "\04")
 (data (i32.const 12060) "\1c\00\00\00\01")
 (data (i32.const 12076) "\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 12092) "\1c\00\00\00\01")
 (data (i32.const 12108) "\0c\00\00\00\04\00\00\00\05\00\00\00\06")
 (data (i32.const 12124) "\1c\00\00\00\01")
 (data (i32.const 12140) "\0c\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 12156) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00o\00n\00e")
 (data (i32.const 12188) "\1c\00\00\00\01")
 (data (i32.const 12204) "\04\00\00\00\90/")
 (data (i32.const 12220) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00t\00w\00o")
 (data (i32.const 12252) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00t\00h\00r\00e\00e")
 (data (i32.const 12284) "\1c\00\00\00\01")
 (data (i32.const 12300) "\0c\00\00\00\d0/\00\00\00\00\00\00\f0/")
 (data (i32.const 12316) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00f\00o\00u\00r")
 (data (i32.const 12348) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00f\00i\00v\00e")
 (data (i32.const 12380) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00s\00i\00x")
 (data (i32.const 12412) "\1c\00\00\00\01")
 (data (i32.const 12428) "\0c\00\00\0000\00\00P0\00\00p0")
 (data (i32.const 12444) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00s\00e\00v\00e\00n")
 (data (i32.const 12476) "\1c\00\00\00\01")
 (data (i32.const 12492) "\04\00\00\00\b00")
 (data (i32.const 12508) "<\00\00\00\01")
 (data (i32.const 12524) " \00\00\00\90/\00\00\d0/\00\00\00\00\00\00\f0/\00\0000\00\00P0\00\00p0\00\00\b00")
 (data (i32.const 12572) "\1c\00\00\00\01")
 (data (i32.const 12604) "\1c\00\00\00\01")
 (data (i32.const 12636) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00(\00\00\00I\00l\00l\00e\00g\00a\00l\00 \00g\00e\00n\00e\00r\00i\00c\00 \00t\00y\00p\00e")
 (table $0 57 funcref)
 (elem (i32.const 1) $start:std/array~anonymous|0 $start:std/array~anonymous|1 $start:std/array~anonymous|2 $start:std/array~anonymous|3 $start:std/array~anonymous|2 $start:std/array~anonymous|5 $start:std/array~anonymous|6 $start:std/array~anonymous|7 $start:std/array~anonymous|8 $start:std/array~anonymous|9 $start:std/array~anonymous|10 $start:std/array~anonymous|11 $start:std/array~anonymous|12 $start:std/array~anonymous|13 $start:std/array~anonymous|14 $start:std/array~anonymous|15 $start:std/array~anonymous|16 $start:std/array~anonymous|17 $start:std/array~anonymous|16 $start:std/array~anonymous|19 $start:std/array~anonymous|20 $start:std/array~anonymous|21 $start:std/array~anonymous|22 $start:std/array~anonymous|23 $start:std/array~anonymous|24 $start:std/array~anonymous|25 $start:std/array~anonymous|26 $start:std/array~anonymous|27 $start:std/array~anonymous|28 $start:std/array~anonymous|29 $start:std/array~anonymous|29 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|29 $start:std/array~anonymous|35 $start:std/array~anonymous|29 $start:std/array~anonymous|29 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|29 $start:std/array~anonymous|35 $~lib/util/sort/COMPARATOR<f32>~anonymous|0 $~lib/util/sort/COMPARATOR<f64>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $~lib/util/sort/COMPARATOR<u32>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $start:std/array~anonymous|44 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $start:std/array~anonymous|44 $start:std/array~anonymous|47 $start:std/array~anonymous|48 $~lib/util/sort/COMPARATOR<~lib/string/String|null>~anonymous|0 $~lib/util/sort/COMPARATOR<~lib/string/String|null>~anonymous|0)
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
 (export "memory" (memory $0))
 (export "ArrayU32" (global $std/array/ArrayU32))
 (export "ArrayU32#constructor" (func $std/array/ArrayU32#constructor@varargs))
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
 (export "ArrayU8#constructor" (func $std/array/ArrayU8#constructor@varargs))
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
 (export "ArrayStr#constructor" (func $std/array/ArrayStr#constructor@varargs))
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
 (export "ArrayStr#toString" (func $~lib/array/Array<~lib/string/String|null>#toString))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (start $~start)
 (func $~lib/rt/pure/__release (param $0 i32)
  local.get $0
  i32.const 12700
  i32.gt_u
  if
   local.get $0
   i32.const 20
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
   i32.const 1280
   i32.const 272
   i32.const 14
   call $~lib/builtins/abort
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
   i32.const 1280
   i32.const 274
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
   i32.const 1280
   i32.const 287
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
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1280
   i32.const 200
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
   i32.const 1280
   i32.const 202
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
    i32.const 1280
    i32.const 223
    i32.const 16
    call $~lib/builtins/abort
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
   i32.const 1280
   i32.const 238
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.get $5
  i32.ne
  if
   i32.const 0
   i32.const 1280
   i32.const 239
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
   i32.const 1280
   i32.const 255
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
   i32.const 1280
   i32.const 380
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
    i32.const 1280
    i32.const 387
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
    i32.const 1280
    i32.const 400
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
  i32.const 12704
  i32.const 0
  i32.store
  i32.const 14272
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
    i32.const 12704
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
      i32.const 12704
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
  i32.const 12704
  i32.const 14276
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 12704
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741820
  i32.ge_u
  if
   i32.const 1152
   i32.const 1280
   i32.const 461
   i32.const 30
   call $~lib/builtins/abort
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
   i32.const 1280
   i32.const 333
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
     i32.const 1280
     i32.const 346
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
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1280
   i32.const 360
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
    i32.const 1280
    i32.const 498
    i32.const 16
    call $~lib/builtins/abort
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
   i32.const 1280
   i32.const 500
   i32.const 14
   call $~lib/builtins/abort
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
 (func $~lib/rt/pure/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1152
   i32.const 1216
   i32.const 275
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/tlsf/__alloc
  local.tee $3
  i32.const 4
  i32.sub
  local.tee $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  local.get $3
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
  i32.const 12700
  i32.gt_u
  if
   local.get $0
   i32.const 20
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
    i32.const 1216
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
   i32.load
   i32.const 1
   i32.and
   if
    i32.const 0
    i32.const 1216
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
  call $~lib/rt/pure/__new
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
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1056
   i32.const 1104
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
  call $~lib/rt/pure/__new
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
 (func $~lib/array/Array.isArray<~lib/array/Array<i32>|null> (param $0 i32) (result i32)
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
  call $~lib/rt/pure/__new
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
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/pure/__new
  local.tee $2
  local.get $0
  local.get $1
  i32.shl
  local.tee $1
  local.set $5
  local.get $1
  i32.const 0
  call $~lib/rt/pure/__new
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
   i32.const 1552
   i32.const 1104
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
   i32.const 1552
   i32.const 1104
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
     local.get $2
     local.get $3
     i32.gt_s
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
  i32.const 20
  i32.sub
  i32.load offset=16
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
   i32.const 1280
   i32.const 563
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
  i32.const 12700
  i32.ge_u
  if
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/freeBlock
  end
  local.get $2
 )
 (func $~lib/rt/pure/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1152
   i32.const 1216
   i32.const 288
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $0
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  local.get $1
  i32.const 16
  i32.add
  local.set $2
  local.get $0
  i32.const 12700
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
  i32.const 4
  i32.add
  local.tee $0
  i32.const 4
  i32.sub
  local.get $1
  i32.store offset=16
  local.get $0
  i32.const 16
  i32.add
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
   i32.const 1073741820
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 1056
    i32.const 1104
    i32.const 14
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.tee $4
   local.get $1
   local.get $2
   i32.shl
   local.tee $2
   call $~lib/rt/pure/__renew
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
   i32.const 2032
   i32.const 1104
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
  local.get $1
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.lt_s
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
  local.get $2
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__newArray
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
  local.get $1
  local.get $2
  i32.gt_s
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
   i32.const 2032
   i32.const 1104
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
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<i32>#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
  call $~lib/rt/__newArray
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
   i32.const 1552
   i32.const 1104
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
   i32.const 5200
   i32.const 1104
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/array/Array<std/array/Ref|null>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1552
   i32.const 1104
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
    i32.const 1552
    i32.const 1104
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
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
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
    call_indirect (type $i32_i32_i32_=>_i32)
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
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
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
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
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
    call_indirect (type $i32_i32_i32_=>_i32)
    i32.eqz
    if
     local.get $1
     call $~lib/rt/pure/__release
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
  local.get $1
  call $~lib/rt/pure/__release
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
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
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
    call_indirect (type $i32_i32_i32_=>_i32)
    if
     local.get $1
     call $~lib/rt/pure/__release
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
  local.get $1
  call $~lib/rt/pure/__release
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
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
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
    call_indirect (type $i32_i32_i32_=>_none)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
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
    i32.const 1344
    i32.const 625
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
   i32.const 1552
   i32.const 1104
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
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.tee $4
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__newArray
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
   local.get $3
   local.get $4
   i32.gt_s
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
    i32.load
    call_indirect (type $i32_i32_i32_=>_i32)
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
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__newArray
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
   local.get $3
   local.get $5
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
    local.get $3
    local.get $2
    local.get $0
    local.get $1
    i32.load
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
  local.get $1
  call $~lib/rt/pure/__release
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
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
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
    i32.const 4
    global.set $~argumentsLength
    local.get $2
    local.get $4
    local.get $3
    local.get $0
    local.get $1
    i32.load
    call_indirect (type $i32_i32_i32_i32_=>_i32)
    local.set $2
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
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
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $1
  loop $for-loop|0
   local.get $1
   i32.const 0
   i32.ge_s
   if
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $4
    i32.const 4
    global.set $~argumentsLength
    local.get $2
    local.get $4
    local.get $1
    local.get $0
    local.get $3
    i32.load
    call_indirect (type $i32_i32_i32_i32_=>_i32)
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $for-loop|0
   end
  end
  local.get $3
  call $~lib/rt/pure/__release
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
   i32.const 6768
   i32.const 1399
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  local.get $0
  i32.const 12700
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
 (func $~lib/util/sort/weakHeapSort<f32> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 f32)
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
    local.get $7
    i32.load
    call_indirect (type $f32_f32_=>_i32)
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
     local.get $3
     local.get $5
     local.get $1
     i32.const 5
     i32.shr_u
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $1
     i32.shr_u
     i32.const 1
     i32.and
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     local.tee $2
     i32.gt_s
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
      local.get $7
      i32.load
      call_indirect (type $f32_f32_=>_i32)
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
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<f32>#sort (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
  (local $7 f32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $5
  block $folding-inner0
   local.get $0
   i32.load offset=12
   local.tee $1
   i32.const 1
   i32.le_s
   br_if $folding-inner0
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $1
   i32.const 2
   i32.eq
   if
    local.get $4
    f32.load offset=4
    local.set $6
    local.get $4
    f32.load
    local.set $7
    i32.const 2
    global.set $~argumentsLength
    local.get $6
    local.get $7
    local.get $5
    i32.load
    call_indirect (type $f32_f32_=>_i32)
    i32.const 0
    i32.lt_s
    if
     local.get $4
     local.get $7
     f32.store offset=4
     local.get $4
     local.get $6
     f32.store
    end
    br $folding-inner0
   end
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $1
   i32.const 256
   i32.lt_s
   if
    local.get $1
    local.set $3
    local.get $9
    call $~lib/rt/pure/__retain
    local.set $10
    loop $for-loop|0
     local.get $3
     local.get $8
     i32.gt_s
     if
      local.get $4
      local.get $8
      i32.const 2
      i32.shl
      i32.add
      f32.load
      local.set $6
      local.get $8
      i32.const 1
      i32.sub
      local.set $2
      loop $while-continue|1
       local.get $2
       i32.const 0
       i32.ge_s
       if
        block $while-break|1
         local.get $4
         local.get $2
         i32.const 2
         i32.shl
         i32.add
         f32.load
         local.set $7
         i32.const 2
         global.set $~argumentsLength
         local.get $6
         local.get $7
         local.get $10
         i32.load
         call_indirect (type $f32_f32_=>_i32)
         i32.const 0
         i32.ge_s
         br_if $while-break|1
         local.get $2
         local.tee $1
         i32.const 1
         i32.sub
         local.set $2
         local.get $4
         local.get $1
         i32.const 1
         i32.add
         i32.const 2
         i32.shl
         i32.add
         local.get $7
         f32.store
         br $while-continue|1
        end
       end
      end
      local.get $4
      local.get $2
      i32.const 1
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $6
      f32.store
      local.get $8
      i32.const 1
      i32.add
      local.set $8
      br $for-loop|0
     end
    end
    local.get $10
    call $~lib/rt/pure/__release
   else
    local.get $4
    local.get $1
    local.get $9
    call $~lib/util/sort/weakHeapSort<f32>
   end
   local.get $9
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__retain
   local.get $5
   call $~lib/rt/pure/__release
   return
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
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
     local.get $3
     local.get $5
     local.get $1
     i32.const 5
     i32.shr_u
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $1
     i32.shr_u
     i32.const 1
     i32.and
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     local.tee $2
     i32.gt_s
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
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<f64>#sort (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $5
  block $folding-inner0
   local.get $0
   i32.load offset=12
   local.tee $1
   i32.const 1
   i32.le_s
   br_if $folding-inner0
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $1
   i32.const 2
   i32.eq
   if
    local.get $4
    f64.load offset=8
    local.set $6
    local.get $4
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
    i32.lt_s
    if
     local.get $4
     local.get $7
     f64.store offset=8
     local.get $4
     local.get $6
     f64.store
    end
    br $folding-inner0
   end
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $1
   i32.const 256
   i32.lt_s
   if
    local.get $1
    local.set $3
    local.get $9
    call $~lib/rt/pure/__retain
    local.set $10
    loop $for-loop|0
     local.get $3
     local.get $8
     i32.gt_s
     if
      local.get $4
      local.get $8
      i32.const 3
      i32.shl
      i32.add
      f64.load
      local.set $6
      local.get $8
      i32.const 1
      i32.sub
      local.set $2
      loop $while-continue|1
       local.get $2
       i32.const 0
       i32.ge_s
       if
        block $while-break|1
         local.get $4
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
         local.get $10
         i32.load
         call_indirect (type $f64_f64_=>_i32)
         i32.const 0
         i32.ge_s
         br_if $while-break|1
         local.get $2
         local.tee $1
         i32.const 1
         i32.sub
         local.set $2
         local.get $4
         local.get $1
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
      local.get $4
      local.get $2
      i32.const 1
      i32.add
      i32.const 3
      i32.shl
      i32.add
      local.get $6
      f64.store
      local.get $8
      i32.const 1
      i32.add
      local.set $8
      br $for-loop|0
     end
    end
    local.get $10
    call $~lib/rt/pure/__release
   else
    local.get $4
    local.get $1
    local.get $9
    call $~lib/util/sort/weakHeapSort<f64>
   end
   local.get $9
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__retain
   local.get $5
   call $~lib/rt/pure/__release
   return
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
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
   i32.const 1552
   i32.const 1104
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
 (func $~lib/util/sort/weakHeapSort<i32> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_u
  i32.const 2
  i32.shl
  local.tee $2
  call $~lib/rt/tlsf/__alloc
  local.tee $4
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
     local.get $4
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
    local.tee $7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $2
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $5
    i32.const 2
    global.set $~argumentsLength
    local.get $2
    local.get $5
    local.get $6
    i32.load
    call_indirect (type $i32_i32_=>_i32)
    i32.const 0
    i32.lt_s
    if
     local.get $4
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
     i32.shl
     i32.xor
     i32.store
     local.get $0
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     local.get $2
     i32.store
     local.get $0
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     local.get $5
     i32.store
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
    i32.load
    local.set $1
    local.get $0
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.tee $2
    i32.load
    i32.store
    local.get $2
    local.get $1
    i32.store
    i32.const 1
    local.set $1
    loop $while-continue|3
     local.get $3
     local.get $4
     local.get $1
     i32.const 5
     i32.shr_u
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $1
     i32.shr_u
     i32.const 1
     i32.and
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     local.tee $2
     i32.gt_s
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
      i32.load
      local.set $2
      local.get $0
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $5
      i32.const 2
      global.set $~argumentsLength
      local.get $2
      local.get $5
      local.get $6
      i32.load
      call_indirect (type $i32_i32_=>_i32)
      i32.const 0
      i32.lt_s
      if
       local.get $4
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
       i32.shl
       i32.xor
       i32.store
       local.get $0
       local.get $1
       i32.const 2
       i32.shl
       i32.add
       local.get $2
       i32.store
       local.get $0
       local.get $5
       i32.store
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
  local.get $4
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
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<i32>#sort (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $5
  block $folding-inner0
   local.get $0
   i32.load offset=12
   local.tee $1
   i32.const 1
   i32.le_s
   br_if $folding-inner0
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $1
   i32.const 2
   i32.eq
   if
    local.get $4
    i32.load offset=4
    local.set $2
    local.get $4
    i32.load
    local.set $1
    i32.const 2
    global.set $~argumentsLength
    local.get $2
    local.get $1
    local.get $5
    i32.load
    call_indirect (type $i32_i32_=>_i32)
    i32.const 0
    i32.lt_s
    if
     local.get $4
     local.get $1
     i32.store offset=4
     local.get $4
     local.get $2
     i32.store
    end
    br $folding-inner0
   end
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $7
   local.get $1
   i32.const 256
   i32.lt_s
   if
    local.get $1
    local.set $3
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $8
    loop $for-loop|0
     local.get $3
     local.get $6
     i32.gt_s
     if
      local.get $4
      local.get $6
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $9
      local.get $6
      i32.const 1
      i32.sub
      local.set $2
      loop $while-continue|1
       local.get $2
       i32.const 0
       i32.ge_s
       if
        block $while-break|1
         local.get $4
         local.get $2
         i32.const 2
         i32.shl
         i32.add
         i32.load
         local.set $10
         i32.const 2
         global.set $~argumentsLength
         local.get $9
         local.get $10
         local.get $8
         i32.load
         call_indirect (type $i32_i32_=>_i32)
         i32.const 0
         i32.ge_s
         br_if $while-break|1
         local.get $2
         local.tee $1
         i32.const 1
         i32.sub
         local.set $2
         local.get $4
         local.get $1
         i32.const 1
         i32.add
         i32.const 2
         i32.shl
         i32.add
         local.get $10
         i32.store
         br $while-continue|1
        end
       end
      end
      local.get $4
      local.get $2
      i32.const 1
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $9
      i32.store
      local.get $6
      i32.const 1
      i32.add
      local.set $6
      br $for-loop|0
     end
    end
    local.get $8
    call $~lib/rt/pure/__release
   else
    local.get $4
    local.get $1
    local.get $7
    call $~lib/util/sort/weakHeapSort<i32>
   end
   local.get $7
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__retain
   local.get $5
   call $~lib/rt/pure/__release
   return
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
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
  (local $2 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 7568
   local.tee $2
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#sort
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $std/array/createReverseOrderedArray (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/array/Array<i32>#constructor
  local.set $2
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.gt_s
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
   local.get $0
   local.get $1
   i32.gt_s
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
  (local $8 i32)
  block $__inlined_func$std/array/isSorted<i32> (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $4
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $3
   call $~lib/array/Array<i32>#sort
   local.tee $5
   call $~lib/rt/pure/__retain
   local.set $0
   local.get $3
   call $~lib/rt/pure/__retain
   local.set $2
   i32.const 1
   local.set $1
   local.get $0
   i32.load offset=12
   local.set $6
   loop $for-loop|0
    local.get $1
    local.get $6
    i32.lt_s
    if
     local.get $0
     local.get $1
     i32.const 1
     i32.sub
     call $~lib/array/Array<u32>#__get
     local.get $0
     local.get $1
     call $~lib/array/Array<u32>#__get
     i32.const 2
     global.set $~argumentsLength
     local.get $2
     i32.load
     call_indirect (type $i32_i32_=>_i32)
     i32.const 0
     i32.gt_s
     if
      local.get $0
      call $~lib/rt/pure/__release
      local.get $2
      call $~lib/rt/pure/__release
      i32.const 0
      br $__inlined_func$std/array/isSorted<i32>
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 887
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/array/assertSortedDefault<i32> (param $0 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 7840
  call $std/array/assertSorted<i32>
  i32.const 7840
  call $~lib/rt/pure/__release
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
    i32.const 1552
    i32.const 1104
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
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $6
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.gt_s
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/rt/pure/__retain
    local.set $5
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
       i32.load
       call $~lib/rt/pure/__retain
       local.set $4
       i32.const 2
       global.set $~argumentsLength
       local.get $5
       local.get $4
       local.get $6
       i32.load
       call_indirect (type $i32_i32_=>_i32)
       i32.const 0
       i32.lt_s
       if (result i32)
        local.get $0
        local.get $2
        i32.const 1
        i32.add
        i32.const 2
        i32.shl
        i32.add
        local.get $4
        i32.store
        local.get $2
        i32.const 1
        i32.sub
       else
        local.get $4
        call $~lib/rt/pure/__release
        br $while-break|1
       end
       local.set $2
       local.get $4
       call $~lib/rt/pure/__release
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
    i32.store
    local.get $5
    call $~lib/rt/pure/__release
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#sort (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   local.get $1
   call $~lib/rt/pure/__release
   return
  end
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $3
  i32.const 2
  i32.eq
  if
   local.get $2
   i32.load offset=4
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $2
   i32.load
   call $~lib/rt/pure/__retain
   local.set $4
   i32.const 2
   global.set $~argumentsLength
   local.get $3
   local.get $4
   local.get $1
   i32.load
   call_indirect (type $i32_i32_=>_i32)
   i32.const 0
   i32.lt_s
   if
    local.get $2
    local.get $4
    i32.store offset=4
    local.get $2
    local.get $3
    i32.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
  local.get $3
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $2
  call $~lib/util/sort/insertionSort<~lib/array/Array<i32>>
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/array/assertSorted<~lib/array/Array<i32>> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $__inlined_func$std/array/isSorted<~lib/array/Array<i32>> (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $6
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $5
   call $~lib/array/Array<~lib/array/Array<i32>>#sort
   local.tee $7
   call $~lib/rt/pure/__retain
   local.set $0
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $2
   i32.const 1
   local.set $1
   local.get $0
   i32.load offset=12
   local.set $8
   loop $for-loop|0
    local.get $1
    local.get $8
    i32.lt_s
    if
     local.get $0
     local.get $1
     i32.const 1
     i32.sub
     call $~lib/array/Array<std/array/Ref>#__get
     local.set $3
     local.get $0
     local.get $1
     call $~lib/array/Array<std/array/Ref>#__get
     local.set $4
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     local.get $4
     local.get $2
     i32.load
     call_indirect (type $i32_i32_=>_i32)
     i32.const 0
     i32.gt_s
     if
      local.get $0
      call $~lib/rt/pure/__release
      local.get $2
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
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 887
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
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
 (func $~lib/util/sort/COMPARATOR<~lib/string/String|null>~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  block $folding-inner0
   i32.const 1
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $1
   i32.eqz
   i32.const 1
   local.get $0
   i32.eqz
   local.get $0
   local.get $1
   i32.eq
   select
   select
   br_if $folding-inner0
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.tee $2
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.tee $3
   i32.or
   i32.eqz
   br_if $folding-inner0
   local.get $3
   i32.eqz
   if
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    i32.const -1
    return
   end
   local.get $2
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
   local.get $3
   local.get $2
   local.get $2
   local.get $3
   i32.gt_s
   select
   call $~lib/util/string/compareImpl
   local.set $4
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   local.get $3
   local.get $2
   i32.sub
   local.get $4
   select
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
 (func $std/array/isArraysEqual<~lib/string/String|null> (param $0 i32) (param $1 i32) (result i32)
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
    call $~lib/array/Array<std/array/Ref|null>#__get
    local.set $3
    local.get $1
    local.get $2
    call $~lib/array/Array<std/array/Ref|null>#__get
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
   i32.const 29
   call $~lib/rt/pure/__new
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
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1056
   i32.const 1104
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
  call $~lib/rt/pure/__new
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
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.const 8416
  local.get $2
  select
  local.set $3
  block $__inlined_func$~lib/string/String#concat
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $5
   call $~lib/rt/pure/__retain
   local.tee $1
   i32.eqz
   if
    local.get $1
    i32.const 8416
    i32.ne
    if
     local.get $1
     call $~lib/rt/pure/__release
    end
    i32.const 8416
    local.set $1
   end
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $6
   local.get $3
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $4
   i32.add
   local.tee $0
   i32.eqz
   if
    i32.const 8256
    local.set $0
    br $__inlined_func$~lib/string/String#concat
   end
   local.get $0
   i32.const 1
   call $~lib/rt/pure/__new
   call $~lib/rt/pure/__retain
   local.tee $0
   local.get $3
   local.get $4
   call $~lib/memory/memory.copy
   local.get $0
   local.get $4
   i32.add
   local.get $1
   local.get $6
   call $~lib/memory/memory.copy
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/string/String#substring (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
   i32.const 8256
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
  call $~lib/rt/pure/__new
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
  i32.const 8576
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
   i32.const 8256
   return
  end
  local.get $4
  i32.eqz
  if
   i32.const 8512
   i32.const 8544
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
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
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
  call $~lib/rt/pure/__new
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|1
   local.get $4
   local.get $6
   i32.gt_s
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
    i32.const 8512
    i32.const 8544
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
  i32.const 8512
  i32.const 8544
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
 (func $~lib/util/number/itoa32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8880
   return
  end
  i32.const 0
  local.get $0
  i32.sub
  local.get $0
  local.get $0
  i32.const 31
  i32.shr_u
  local.tee $0
  select
  local.tee $1
  call $~lib/util/number/decimalCount32
  local.get $0
  i32.add
  local.tee $3
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/pure/__new
  local.tee $2
  local.get $1
  local.get $3
  call $~lib/util/number/utoa_dec_simple<u32>
  local.get $0
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
   i32.const 8256
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
  call $~lib/rt/pure/__new
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $4
   local.get $6
   i32.gt_s
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
   i32.const 8880
   return
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.tee $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/pure/__new
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
   i32.const 8256
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
  call $~lib/rt/pure/__new
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $4
   local.get $6
   i32.gt_s
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
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  local.get $3
  local.get $1
  i64.sub
  local.set $8
  local.get $3
  i64.const 1
  i32.const 0
  local.get $4
  i32.sub
  local.tee $11
  i64.extend_i32_s
  i64.shl
  local.tee $10
  i64.const 1
  i64.sub
  local.tee $12
  i64.and
  local.set $7
  local.get $3
  local.get $11
  i64.extend_i32_s
  i64.shr_u
  i32.wrap_i64
  local.tee $2
  call $~lib/util/number/decimalCount32
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
    local.get $9
    i32.const 1
    i32.sub
    local.set $9
    local.get $5
    local.get $7
    local.get $2
    i64.extend_i32_u
    local.get $11
    i64.extend_i32_s
    i64.shl
    i64.add
    local.tee $1
    i64.ge_u
    if
     local.get $9
     global.get $~lib/util/number/_K
     i32.add
     global.set $~lib/util/number/_K
     local.get $9
     i32.const 2
     i32.shl
     i32.const 10432
     i32.add
     i64.load32_u
     local.get $11
     i64.extend_i32_s
     i64.shl
     local.set $10
     local.get $0
     local.get $6
     i32.const 1
     i32.sub
     i32.const 1
     i32.shl
     i32.add
     local.tee $0
     i32.load16_u
     local.set $2
     loop $while-continue|3
      i32.const 1
      local.get $8
      local.get $1
      i64.sub
      local.get $1
      local.get $10
      i64.add
      local.tee $3
      local.get $8
      i64.sub
      i64.gt_u
      local.get $3
      local.get $8
      i64.lt_u
      select
      i32.const 0
      local.get $10
      local.get $5
      local.get $1
      i64.sub
      i64.le_u
      i32.const 0
      local.get $1
      local.get $8
      i64.lt_u
      select
      select
      if
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
       local.get $1
       local.get $10
       i64.add
       local.set $1
       br $while-continue|3
      end
     end
     local.get $0
     local.get $2
     i32.store16
     local.get $6
     return
    end
    br $while-continue|0
   end
  end
  local.get $11
  i64.extend_i32_s
  local.set $13
  loop $while-continue|4 (result i32)
   local.get $5
   i64.const 10
   i64.mul
   local.set $5
   local.get $7
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
   local.get $9
   i32.const 1
   i32.sub
   local.set $9
   local.get $3
   local.get $12
   i64.and
   local.tee $7
   local.get $5
   i64.ge_u
   br_if $while-continue|4
   local.get $9
   global.get $~lib/util/number/_K
   i32.add
   global.set $~lib/util/number/_K
   local.get $7
   local.set $1
   local.get $8
   i32.const 0
   local.get $9
   i32.sub
   i32.const 2
   i32.shl
   i32.const 10432
   i32.add
   i64.load32_u
   i64.mul
   local.set $8
   local.get $0
   local.get $6
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   i32.add
   local.tee $0
   i32.load16_u
   local.set $2
   loop $while-continue|6
    i32.const 1
    local.get $8
    local.get $1
    i64.sub
    local.get $1
    local.get $10
    i64.add
    local.tee $3
    local.get $8
    i64.sub
    i64.gt_u
    local.get $3
    local.get $8
    i64.lt_u
    select
    i32.const 0
    local.get $10
    local.get $5
    local.get $1
    i64.sub
    i64.le_u
    i32.const 0
    local.get $1
    local.get $8
    i64.lt_u
    select
    select
    if
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     local.get $1
     local.get $10
     i64.add
     local.set $1
     br $while-continue|6
    end
   end
   local.get $0
   local.get $2
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
    local.get $3
    i32.const -6
    i32.gt_s
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
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  f64.const 0
  f64.lt
  local.tee $9
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
  local.tee $8
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
  local.tee $4
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_plus
  local.get $8
  i32.const 1
  local.get $8
  select
  i32.const 1075
  i32.sub
  local.tee $8
  i32.const 1
  i32.sub
  local.get $4
  i32.sub
  local.set $4
  local.get $3
  local.get $3
  i64.const 4503599627370496
  i64.eq
  i32.const 1
  i32.add
  local.tee $10
  i64.extend_i32_s
  i64.shl
  i64.const 1
  i64.sub
  local.get $8
  local.get $10
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
  local.get $1
  local.get $4
  f64.convert_i32_s
  f64.ne
  i32.add
  i32.const 3
  i32.shr_s
  i32.const 1
  i32.add
  local.tee $4
  i32.const 3
  i32.shl
  local.tee $10
  i32.sub
  global.set $~lib/util/number/_K
  local.get $10
  i32.const 9560
  i32.add
  i64.load
  global.set $~lib/util/number/_frc_pow
  local.get $4
  i32.const 1
  i32.shl
  i32.const 10256
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
  local.tee $5
  i64.const 32
  i64.shr_u
  local.tee $7
  i64.mul
  local.get $2
  local.get $7
  i64.mul
  local.get $2
  local.get $5
  i64.const 4294967295
  i64.and
  local.tee $5
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $7
  i64.const 32
  i64.shr_u
  i64.add
  local.get $5
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
  local.set $5
  local.get $0
  local.get $9
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
  local.tee $4
  local.get $8
  local.get $0
  i32.sub
  i32.add
  i32.const -64
  i32.sub
  local.get $5
  local.get $4
  global.get $~lib/util/number/_exp
  i32.add
  i32.const -64
  i32.sub
  local.get $5
  local.get $6
  global.get $~lib/util/number/_frc_minus
  local.tee $3
  i64.const 32
  i64.shr_u
  local.tee $5
  i64.mul
  local.get $2
  local.get $5
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
  local.get $9
  call $~lib/util/number/genDigits
  local.get $9
  i32.sub
  global.get $~lib/util/number/_K
  call $~lib/util/number/prettify
  local.get $9
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
  i32.const 9328
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
   i32.const 8256
   return
  end
  local.get $5
  i32.eqz
  if
   block $__inlined_func$~lib/util/number/dtoa (result i32)
    i32.const 9360
    local.get $0
    f64.load
    local.tee $4
    f64.const 0
    f64.eq
    br_if $__inlined_func$~lib/util/number/dtoa
    drop
    local.get $4
    local.get $4
    f64.sub
    f64.const 0
    f64.ne
    if
     i32.const 9392
     local.get $4
     local.get $4
     f64.ne
     br_if $__inlined_func$~lib/util/number/dtoa
     drop
     i32.const 9424
     i32.const 9472
     local.get $4
     f64.const 0
     f64.lt
     select
     call $~lib/rt/pure/__retain
     br $__inlined_func$~lib/util/number/dtoa
    end
    i32.const 9504
    local.get $4
    call $~lib/util/number/dtoa_core
    i32.const 1
    i32.shl
    local.tee $0
    i32.const 1
    call $~lib/rt/pure/__new
    local.tee $1
    i32.const 9504
    local.get $0
    call $~lib/memory/memory.copy
    local.get $1
    call $~lib/rt/pure/__retain
   end
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  local.get $5
  local.get $3
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
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
  call $~lib/rt/pure/__new
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $5
   local.get $7
   i32.gt_s
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
 (func $~lib/util/string/joinReferenceArray<~lib/string/String|null> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 8256
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
    i32.const 8256
   end
   local.get $5
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  i32.const 8256
  local.set $1
  local.get $5
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.set $8
  loop $for-loop|0
   local.get $3
   local.get $6
   i32.lt_s
   if
    local.get $0
    local.get $3
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
    local.tee $4
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
  local.tee $0
  if
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   local.get $1
   local.get $2
   call $~lib/string/String.__concat
   local.tee $3
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
   local.get $3
   call $~lib/rt/pure/__release
   local.get $2
   local.set $1
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<~lib/string/String|null>#join (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  local.get $1
  call $~lib/util/string/joinReferenceArray<~lib/string/String|null>
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/string/joinReferenceArray<std/array/Ref|null> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 8576
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
   i32.const 8256
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
   local.get $5
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   i32.const 10672
   i32.const 8256
   local.get $3
   select
   return
  end
  i32.const 8256
  local.set $1
  local.get $5
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.set $8
  loop $for-loop|0
   local.get $3
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $0
    local.get $3
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
     local.get $4
     call $~lib/rt/pure/__release
    end
    local.get $2
    local.tee $4
    if
     local.get $1
     local.get $1
     i32.const 10672
     call $~lib/string/String.__concat
     local.tee $7
     local.tee $2
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/__retain
      local.set $2
      local.get $1
      call $~lib/rt/pure/__release
     end
     local.get $7
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
  local.get $4
  local.get $0
  local.get $6
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
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.tee $0
  if
   local.get $1
   local.get $1
   i32.const 10672
   call $~lib/string/String.__concat
   local.tee $4
   local.tee $2
   i32.ne
   if
    local.get $2
    call $~lib/rt/pure/__retain
    local.set $2
    local.get $1
    call $~lib/rt/pure/__release
   end
   local.get $4
   call $~lib/rt/pure/__release
   local.get $2
   local.set $1
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<std/array/Ref|null>#join (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  call $~lib/util/string/joinReferenceArray<std/array/Ref|null>
  i32.const 8576
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
  i32.const 8576
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
   i32.const 8256
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
  call $~lib/rt/pure/__new
  call $~lib/rt/pure/__retain
  local.set $1
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
  i32.const 8576
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
   i32.const 8256
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
  call $~lib/rt/pure/__new
  call $~lib/rt/pure/__retain
  local.set $1
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
  i32.const 8576
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
   i32.const 8256
   return
  end
  local.get $4
  i32.eqz
  if
   block $__inlined_func$~lib/util/number/utoa64 (result i32)
    i32.const 8880
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
     call $~lib/rt/pure/__new
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
     call $~lib/rt/pure/__new
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
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
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
  call $~lib/rt/pure/__new
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $4
   local.get $7
   i32.gt_s
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
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
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
   local.get $1
   i32.wrap_i64
   local.tee $3
   call $~lib/util/number/decimalCount32
   local.get $2
   i32.add
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
   local.get $2
   i32.add
   local.tee $2
   call $~lib/util/number/utoa_dec_simple<u64>
  end
  local.get $2
 )
 (func $~lib/util/string/joinIntegerArray<i64> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 8576
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
   i32.const 8256
   return
  end
  local.get $5
  i32.eqz
  if
   block $__inlined_func$~lib/util/number/itoa64 (result i32)
    i32.const 8880
    local.get $0
    i64.load
    i32.wrap_i64
    i64.extend_i32_s
    local.tee $3
    i64.eqz
    br_if $__inlined_func$~lib/util/number/itoa64
    drop
    i64.const 0
    local.get $3
    i64.sub
    local.get $3
    local.get $3
    i64.const 63
    i64.shr_u
    i32.wrap_i64
    local.tee $0
    select
    local.tee $3
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
     call $~lib/rt/pure/__new
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
     call $~lib/rt/pure/__new
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
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
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
  call $~lib/rt/pure/__new
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $5
   local.get $7
   i32.gt_s
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
 (func $~lib/array/Array<~lib/string/String|null>#toString (param $0 i32) (result i32)
  local.get $0
  i32.const 8576
  call $~lib/array/Array<~lib/string/String|null>#join
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
  i32.const 8576
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
   i32.const 8256
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
    i32.const 8576
    call $~lib/array/Array<i32>#join
   else
    i32.const 8256
   end
   local.get $5
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  i32.const 8256
  local.set $1
  local.get $5
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.set $8
  loop $for-loop|0
   local.get $3
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $0
    local.get $3
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
     local.get $4
     call $~lib/rt/pure/__release
    end
    local.get $2
    local.tee $4
    if
     local.get $4
     i32.const 8576
     call $~lib/array/Array<i32>#join
     local.tee $2
     local.get $1
     local.get $1
     local.get $2
     call $~lib/string/String.__concat
     local.tee $9
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
  local.get $4
  local.get $0
  local.get $6
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
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.tee $0
  if
   local.get $0
   i32.const 8576
   call $~lib/array/Array<i32>#join
   local.tee $2
   local.get $1
   local.get $1
   local.get $2
   call $~lib/string/String.__concat
   local.tee $3
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
   local.get $3
   call $~lib/rt/pure/__release
   local.get $2
   local.set $1
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
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
   i32.const 8256
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
  call $~lib/rt/pure/__new
  call $~lib/rt/pure/__retain
  local.set $1
  loop $for-loop|0
   local.get $4
   local.get $6
   i32.gt_s
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
  i32.const 8576
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
  i32.const 8576
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
   i32.const 8256
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
    i32.const 8576
    call $~lib/array/Array<u8>#join
   else
    i32.const 8256
   end
   local.get $5
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  i32.const 8256
  local.set $1
  local.get $5
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.set $8
  loop $for-loop|0
   local.get $3
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $0
    local.get $3
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
     local.get $4
     call $~lib/rt/pure/__release
    end
    local.get $2
    local.tee $4
    if
     local.get $4
     i32.const 8576
     call $~lib/array/Array<u8>#join
     local.tee $2
     local.get $1
     local.get $1
     local.get $2
     call $~lib/string/String.__concat
     local.tee $9
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
  local.get $4
  local.get $0
  local.get $6
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
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.tee $0
  if
   local.get $0
   i32.const 8576
   call $~lib/array/Array<u8>#join
   local.tee $2
   local.get $1
   local.get $1
   local.get $2
   call $~lib/string/String.__concat
   local.tee $3
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
   local.get $3
   call $~lib/rt/pure/__release
   local.get $2
   local.set $1
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<u32>#toString (param $0 i32) (result i32)
  local.get $0
  i32.const 8576
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
  i32.const 8576
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
   i32.const 8256
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
    i32.const 8576
    call $~lib/array/Array<u32>#join
   else
    i32.const 8256
   end
   local.get $5
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  i32.const 8256
  local.set $1
  local.get $5
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.set $8
  loop $for-loop|0
   local.get $3
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $0
    local.get $3
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
     local.get $4
     call $~lib/rt/pure/__release
    end
    local.get $2
    local.tee $4
    if
     local.get $4
     i32.const 8576
     call $~lib/array/Array<u32>#join
     local.tee $2
     local.get $1
     local.get $1
     local.get $2
     call $~lib/string/String.__concat
     local.tee $9
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
  local.get $4
  local.get $0
  local.get $6
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
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.tee $0
  if
   local.get $0
   i32.const 8576
   call $~lib/array/Array<u32>#join
   local.tee $2
   local.get $1
   local.get $1
   local.get $2
   call $~lib/string/String.__concat
   local.tee $3
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
   local.get $3
   call $~lib/rt/pure/__release
   local.get $2
   local.set $1
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<~lib/array/Array<u32>>#toString (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  call $~lib/util/string/joinReferenceArray<~lib/array/Array<u32>>
  i32.const 8576
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
  i32.const 8576
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
   i32.const 8256
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
    call $~lib/array/Array<~lib/array/Array<u32>>#toString
   else
    i32.const 8256
   end
   local.get $5
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   return
  end
  i32.const 8256
  local.set $1
  local.get $5
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.set $8
  loop $for-loop|0
   local.get $3
   local.get $6
   i32.lt_s
   if
    local.get $4
    local.get $0
    local.get $3
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
     local.get $4
     call $~lib/rt/pure/__release
    end
    local.get $2
    local.tee $4
    if
     local.get $1
     local.get $1
     local.get $4
     call $~lib/array/Array<~lib/array/Array<u32>>#toString
     local.tee $7
     call $~lib/string/String.__concat
     local.tee $9
     local.tee $2
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/__retain
      local.set $2
      local.get $1
      call $~lib/rt/pure/__release
     end
     local.get $7
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
  local.get $4
  local.get $0
  local.get $6
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
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.tee $0
  if
   local.get $1
   local.get $1
   local.get $0
   call $~lib/array/Array<~lib/array/Array<u32>>#toString
   local.tee $4
   call $~lib/string/String.__concat
   local.tee $3
   local.tee $2
   i32.ne
   if
    local.get $2
    call $~lib/rt/pure/__retain
    local.set $2
    local.get $1
    call $~lib/rt/pure/__release
   end
   local.get $4
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $2
   local.set $1
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
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
  call $~lib/rt/pure/__new
  local.set $4
  i32.const 16
  i32.const 3
  call $~lib/rt/pure/__new
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
 (func $~lib/array/Array<~lib/array/Array<~lib/string/String|null>>#flat (param $0 i32) (result i32)
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
  call $~lib/rt/pure/__new
  local.set $0
  i32.const 16
  i32.const 27
  call $~lib/rt/pure/__new
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
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  global.set $std/array/arr
  i32.const 0
  call $~lib/array/Array.isArray<~lib/array/Array<i32>|null>
  if
   i32.const 0
   i32.const 1344
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $std/array/Ref#constructor
  i32.const 12
  i32.const 5
  call $~lib/rt/pure/__new
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/pure/__new
   call $~lib/rt/pure/__retain
   local.set $2
  end
  local.get $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  i32.const 1
  i32.const 0
  call $~lib/rt/pure/__new
  local.tee $1
  i32.const 0
  i32.const 1
  call $~lib/memory/memory.fill
  local.get $1
  local.set $0
  local.get $1
  local.get $2
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $0
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  i32.const 1
  i32.store offset=8
  global.get $std/array/arr
  call $~lib/array/Array.isArray<~lib/array/Array<i32>|null>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 52
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  i32.const 5
  i32.const 0
  i32.const 6
  i32.const 1488
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/array/Array<u8>#fill
  call $~lib/rt/pure/__release
  local.get $2
  i32.const 5
  i32.const 0
  i32.const 6
  i32.const 1520
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 0
  i32.const 2147483647
  call $~lib/array/Array<u8>#fill
  call $~lib/rt/pure/__release
  local.get $2
  i32.const 5
  i32.const 0
  i32.const 6
  i32.const 1616
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 63
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/array/Array<u8>#fill
  call $~lib/rt/pure/__release
  local.get $2
  i32.const 5
  i32.const 0
  i32.const 6
  i32.const 1648
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 66
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  i32.const -2
  i32.const 2147483647
  call $~lib/array/Array<u8>#fill
  call $~lib/rt/pure/__release
  local.get $2
  i32.const 5
  i32.const 0
  i32.const 6
  i32.const 1680
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $1
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 69
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/array/Array<u8>#fill
  call $~lib/rt/pure/__release
  local.get $2
  i32.const 5
  i32.const 0
  i32.const 6
  i32.const 1712
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 72
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 1744
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/array/Array<u32>#fill
  call $~lib/rt/pure/__release
  local.get $2
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 1792
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 79
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 0
  i32.const 2147483647
  call $~lib/array/Array<u32>#fill
  call $~lib/rt/pure/__release
  local.get $2
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 1840
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $5
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 82
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/array/Array<u32>#fill
  call $~lib/rt/pure/__release
  local.get $2
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 1888
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $6
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 85
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  i32.const -2
  i32.const 2147483647
  call $~lib/array/Array<u32>#fill
  call $~lib/rt/pure/__release
  local.get $2
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 1936
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 88
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/array/Array<u32>#fill
  call $~lib/rt/pure/__release
  local.get $2
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 1984
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 91
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  i32.load offset=12
  if
   i32.const 0
   i32.const 1344
   i32.const 97
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  if
   i32.const 0
   i32.const 1344
   i32.const 98
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
   i32.const 1344
   i32.const 102
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
   i32.const 1344
   i32.const 103
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
   i32.const 1344
   i32.const 104
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
   i32.const 1344
   i32.const 108
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  if
   i32.const 0
   i32.const 1344
   i32.const 109
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
   i32.const 1344
   i32.const 110
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
   i32.const 1344
   i32.const 114
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
   i32.const 1344
   i32.const 115
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
   i32.const 1344
   i32.const 116
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
   i32.const 1344
   i32.const 120
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
   i32.const 1344
   i32.const 121
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
   i32.const 1344
   i32.const 122
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
   i32.const 1344
   i32.const 123
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
   i32.const 1344
   i32.const 127
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
   i32.const 1344
   i32.const 128
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
   i32.const 1344
   i32.const 129
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
   i32.const 1344
   i32.const 130
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
   i32.const 1344
   i32.const 131
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=4
  local.tee $0
  i32.const 0
  call $std/array/Ref#constructor
  i32.store
  local.get $0
  i32.const 0
  call $std/array/Ref#constructor
  i32.store offset=4
  local.get $1
  i32.const 0
  call $~lib/array/Array<std/array/Ref>#set:length
  local.get $1
  i32.load offset=12
  if
   i32.const 0
   i32.const 1344
   i32.const 139
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  local.set $5
  global.get $std/array/arr
  local.get $5
  call $~lib/array/Array<i32>#concat
  local.set $1
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 148
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
   i32.const 1344
   i32.const 149
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
   i32.const 1344
   i32.const 150
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 2080
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $0
  call $~lib/array/Array<i32>#concat
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 153
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 155
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 156
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  call $~lib/array/Array<u32>#__get
  i32.const 45
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 157
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 46
  call $~lib/array/Array<i32>#push
  drop
  local.get $5
  i32.const 47
  call $~lib/array/Array<i32>#push
  drop
  global.get $std/array/arr
  local.get $5
  call $~lib/array/Array<i32>#concat
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 164
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 165
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=12
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 166
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  call $~lib/array/Array<u32>#__get
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 167
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  call $~lib/array/Array<u32>#__get
  i32.const 44
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 168
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 2
  call $~lib/array/Array<u32>#__get
  i32.const 45
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 169
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  call $~lib/array/Array<u32>#__get
  i32.const 46
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 170
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 4
  call $~lib/array/Array<u32>#__get
  i32.const 47
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 171
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/array/Array<i32>#pop
  drop
  local.get $3
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 174
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 2112
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $6
  i32.load offset=12
  if
   i32.const 0
   i32.const 1344
   i32.const 182
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  global.get $std/array/arr
  call $~lib/array/Array<i32>#concat
  local.set $1
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 184
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.load offset=12
  if
   i32.const 0
   i32.const 1344
   i32.const 185
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2144
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  i32.const 3
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  local.tee $23
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2192
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $24
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 192
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2240
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 1
  i32.const 3
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  local.tee $25
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2288
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $14
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 194
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2336
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const 1
  i32.const 2
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  local.tee $18
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2384
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $19
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 196
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2432
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const 2
  i32.const 2
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  local.tee $20
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2480
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $12
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 198
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2528
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const 0
  i32.const 3
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  local.tee $15
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2576
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $16
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 200
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2624
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const 1
  i32.const 3
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  local.tee $17
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2672
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $10
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 202
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2720
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const 1
  i32.const 2
  i32.const 4
  call $~lib/array/Array<i32>#copyWithin
  local.tee $11
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2768
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $9
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 204
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2816
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const 0
  i32.const -2
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  local.tee $13
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2864
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $7
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 206
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2912
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const 0
  i32.const -2
  i32.const -1
  call $~lib/array/Array<i32>#copyWithin
  local.tee $8
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 2960
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 208
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3008
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const -4
  i32.const -3
  i32.const -2
  call $~lib/array/Array<i32>#copyWithin
  local.tee $2
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3056
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 210
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3104
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/rt/pure/__release
  local.tee $0
  i32.const -4
  i32.const -3
  i32.const -1
  call $~lib/array/Array<i32>#copyWithin
  local.tee $5
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3152
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $6
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 212
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3200
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $22
  local.get $0
  call $~lib/rt/pure/__release
  local.get $22
  i32.const -4
  i32.const -3
  i32.const 2147483647
  call $~lib/array/Array<i32>#copyWithin
  local.tee $1
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3248
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 214
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $22
  call $~lib/rt/pure/__release
  local.get $23
  call $~lib/rt/pure/__release
  local.get $24
  call $~lib/rt/pure/__release
  local.get $25
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
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
   i32.const 1344
   i32.const 222
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
   i32.const 1344
   i32.const 223
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
   i32.const 1344
   i32.const 224
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
   i32.const 1344
   i32.const 225
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
   i32.const 1344
   i32.const 226
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
   i32.const 1344
   i32.const 227
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
   i32.const 1344
   i32.const 231
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
   i32.const 1344
   i32.const 232
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
   i32.const 1344
   i32.const 233
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
   i32.const 1344
   i32.const 234
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
   i32.const 1344
   i32.const 235
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
   i32.const 1344
   i32.const 236
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
   i32.const 1344
   i32.const 237
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
   i32.const 1344
   i32.const 246
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
   i32.const 1344
   i32.const 247
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
   i32.const 1344
   i32.const 248
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
   i32.const 1344
   i32.const 249
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
   i32.const 1344
   i32.const 250
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
   i32.const 1344
   i32.const 251
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
   i32.const 1344
   i32.const 252
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
   i32.const 1344
   i32.const 256
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
   i32.const 1344
   i32.const 257
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
   i32.const 1344
   i32.const 258
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
   i32.const 1344
   i32.const 259
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
   i32.const 1344
   i32.const 260
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
   i32.const 1344
   i32.const 261
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
   i32.const 1344
   i32.const 269
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
   i32.const 1344
   i32.const 270
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
   i32.const 1344
   i32.const 271
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
   i32.const 1344
   i32.const 272
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
   i32.const 1344
   i32.const 273
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
   i32.const 1344
   i32.const 283
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
   i32.const 1344
   i32.const 286
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
   i32.const 1344
   i32.const 289
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
   i32.const 1344
   i32.const 292
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
   i32.const 1344
   i32.const 295
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
   i32.const 1344
   i32.const 298
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
   i32.const 1344
   i32.const 301
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
   i32.const 1344
   i32.const 304
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
   i32.const 1344
   i32.const 307
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
   i32.const 1344
   i32.const 310
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 9
  i32.const 3296
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $5
  local.set $0
  i32.const 0
  local.set $2
  block $__inlined_func$~lib/array/Array<f32>#indexOf
   local.get $5
   i32.load offset=12
   local.tee $1
   i32.const 0
   i32.le_s
   i32.const 1
   local.get $1
   select
   if
    i32.const -1
    local.set $2
    br $__inlined_func$~lib/array/Array<f32>#indexOf
   end
   local.get $0
   i32.load offset=4
   local.set $0
   loop $while-continue|0
    local.get $1
    local.get $2
    i32.gt_s
    if
     local.get $0
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     f32.load
     f32.const nan:0x400000
     f32.eq
     br_if $__inlined_func$~lib/array/Array<f32>#indexOf
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
  local.get $2
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 312
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 3
  i32.const 10
  i32.const 3328
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $6
  local.set $0
  i32.const 0
  local.set $2
  block $__inlined_func$~lib/array/Array<f64>#indexOf
   local.get $6
   i32.load offset=12
   local.tee $1
   i32.const 0
   i32.le_s
   i32.const 1
   local.get $1
   select
   if
    i32.const -1
    local.set $2
    br $__inlined_func$~lib/array/Array<f64>#indexOf
   end
   local.get $0
   i32.load offset=4
   local.set $0
   loop $while-continue|021
    local.get $1
    local.get $2
    i32.gt_s
    if
     local.get $0
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     f64.load
     f64.const nan:0x8000000000000
     f64.eq
     br_if $__inlined_func$~lib/array/Array<f64>#indexOf
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|021
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 313
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  i32.const 44
  i32.const 0
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   i32.const 1344
   i32.const 320
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 42
  i32.const 0
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   i32.const 1344
   i32.const 323
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 45
  i32.const 0
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
  if
   i32.const 0
   i32.const 1344
   i32.const 326
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 100
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
  if
   i32.const 0
   i32.const 1344
   i32.const 329
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const -100
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   i32.const 1344
   i32.const 332
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const -2
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   i32.const 1344
   i32.const 335
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const -4
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   i32.const 1344
   i32.const 338
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 0
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   i32.const 1344
   i32.const 341
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 1
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   i32.const 1344
   i32.const 344
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 43
  i32.const 2
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   i32.const 1344
   i32.const 347
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$~lib/array/Array<f32>#includes (result i32)
   i32.const 0
   local.set $2
   i32.const 0
   i32.const 1
   i32.const 2
   i32.const 9
   i32.const 3360
   call $~lib/rt/__newArray
   call $~lib/rt/pure/__retain
   local.tee $5
   i32.load offset=12
   local.tee $1
   i32.const 0
   i32.le_s
   i32.const 1
   local.get $1
   select
   br_if $__inlined_func$~lib/array/Array<f32>#includes
   drop
   local.get $5
   i32.load offset=4
   local.set $0
   loop $while-continue|031
    local.get $1
    local.get $2
    i32.gt_s
    if
     i32.const 1
     i32.const 1
     local.get $0
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     f32.load
     local.tee $26
     local.get $26
     f32.ne
     local.get $26
     f32.const nan:0x400000
     f32.eq
     select
     br_if $__inlined_func$~lib/array/Array<f32>#includes
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|031
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 349
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$~lib/array/Array<f64>#includes (result i32)
   i32.const 0
   local.set $2
   i32.const 0
   i32.const 1
   i32.const 3
   i32.const 10
   i32.const 3392
   call $~lib/rt/__newArray
   call $~lib/rt/pure/__retain
   local.tee $6
   i32.load offset=12
   local.tee $1
   i32.const 0
   i32.le_s
   i32.const 1
   local.get $1
   select
   br_if $__inlined_func$~lib/array/Array<f64>#includes
   drop
   local.get $6
   i32.load offset=4
   local.set $0
   loop $while-continue|032
    local.get $1
    local.get $2
    i32.gt_s
    if
     i32.const 1
     i32.const 1
     local.get $0
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     f64.load
     local.tee $27
     local.get $27
     f64.ne
     local.get $27
     f64.const nan:0x8000000000000
     f64.eq
     select
     br_if $__inlined_func$~lib/array/Array<f64>#includes
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|032
    end
   end
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 350
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
   i32.const 1344
   i32.const 354
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
   i32.const 1344
   i32.const 355
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
   i32.const 1344
   i32.const 356
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
   i32.const 1344
   i32.const 357
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3424
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  local.tee $37
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3472
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $38
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 364
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 3520
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $39
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 365
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3552
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#splice
  local.tee $40
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 3600
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $41
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 368
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3632
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $42
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 369
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3680
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 2
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  local.tee $43
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 3728
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $44
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 372
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 3760
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $45
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 373
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3792
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 2
  i32.const 2
  call $~lib/array/Array<i32>#splice
  local.tee $46
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 3840
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $47
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 376
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 3872
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $48
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 377
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 3904
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 0
  i32.const 1
  call $~lib/array/Array<i32>#splice
  local.tee $49
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 3952
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $50
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 380
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 3984
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $51
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 381
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4032
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const -1
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  local.tee $52
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 4080
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $53
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 384
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 4112
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $54
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 385
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4160
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const -2
  i32.const 2147483647
  call $~lib/array/Array<i32>#splice
  local.tee $55
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 4208
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $56
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 388
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 4240
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $57
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 389
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4272
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const -2
  i32.const 1
  call $~lib/array/Array<i32>#splice
  local.tee $58
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 4320
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $30
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 392
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 4352
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $31
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 393
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4400
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const -7
  i32.const 1
  call $~lib/array/Array<i32>#splice
  local.tee $32
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 4448
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $22
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 396
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 4480
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $23
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 397
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4528
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const -2
  i32.const -1
  call $~lib/array/Array<i32>#splice
  local.tee $24
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 4576
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $25
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 400
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4608
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $14
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 401
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4656
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 1
  i32.const -2
  call $~lib/array/Array<i32>#splice
  local.tee $18
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 4704
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $19
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 404
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4736
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $20
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 405
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4784
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 4
  i32.const 0
  call $~lib/array/Array<i32>#splice
  local.tee $12
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 4832
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $15
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 408
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4864
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $16
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 409
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4912
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 7
  i32.const 0
  call $~lib/array/Array<i32>#splice
  local.tee $17
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 4960
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $10
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 412
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 4992
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $11
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 413
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 5040
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $35
  local.get $0
  call $~lib/rt/pure/__release
  local.get $35
  i32.const 7
  i32.const 5
  call $~lib/array/Array<i32>#splice
  local.tee $9
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 5088
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $13
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 416
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $35
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 5120
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $7
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 417
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 5168
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 1
  call $~lib/array/Array<std/array/Ref>#splice
  local.tee $0
  i32.load offset=12
  if
   i32.const 0
   i32.const 1344
   i32.const 421
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=12
  if
   i32.const 0
   i32.const 1344
   i32.const 422
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $28
  i32.load offset=4
  local.tee $6
  i32.const 1
  call $std/array/Ref#constructor
  i32.store
  local.get $6
  i32.const 2
  call $std/array/Ref#constructor
  i32.store offset=4
  local.get $6
  i32.const 3
  call $std/array/Ref#constructor
  i32.store offset=8
  local.get $6
  i32.const 4
  call $std/array/Ref#constructor
  i32.store offset=12
  local.get $6
  i32.const 5
  call $std/array/Ref#constructor
  i32.store offset=16
  local.get $1
  call $~lib/rt/pure/__release
  local.get $28
  i32.const 2
  call $~lib/array/Array<std/array/Ref>#splice
  local.set $34
  local.get $0
  call $~lib/rt/pure/__release
  local.get $34
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 427
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $34
  i32.const 0
  call $~lib/array/Array<std/array/Ref>#__get
  local.tee $8
  i32.load
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 428
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $34
  i32.const 1
  call $~lib/array/Array<std/array/Ref>#__get
  local.tee $2
  i32.load
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 429
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $28
  i32.load offset=12
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 431
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $28
  i32.const 0
  call $~lib/array/Array<std/array/Ref>#__get
  local.tee $3
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 432
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $28
  i32.const 1
  call $~lib/array/Array<std/array/Ref>#__get
  local.tee $5
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 433
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $28
  i32.const 2
  call $~lib/array/Array<std/array/Ref>#__get
  local.tee $6
  i32.load
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 434
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.load offset=4
  local.tee $1
  i32.const 1
  call $std/array/Ref#constructor
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 2
  call $std/array/Ref#constructor
  i32.store offset=8
  i32.const 0
  local.get $0
  local.tee $4
  i32.load offset=12
  local.tee $33
  local.get $33
  i32.const 0
  i32.gt_s
  select
  local.set $21
  i32.const 1
  local.get $33
  local.get $21
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
  local.tee $29
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $36
  i32.load offset=4
  local.get $4
  i32.load offset=4
  local.tee $1
  local.get $21
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $29
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $33
  local.get $21
  local.get $29
  i32.add
  local.tee $21
  i32.ne
  if
   local.get $0
   local.get $1
   local.get $21
   i32.const 2
   i32.shl
   i32.add
   local.get $33
   local.get $21
   i32.sub
   i32.const 2
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $4
  local.get $33
  local.get $29
  i32.sub
  i32.store offset=12
  local.get $36
  i32.load offset=12
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 439
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $36
  i32.const 0
  call $~lib/array/Array<std/array/Ref|null>#__get
  local.tee $29
  local.get $29
  i32.eqz
  if
   i32.const 5328
   i32.const 1344
   i32.const 440
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 440
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 442
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 0
  call $~lib/array/Array<std/array/Ref|null>#__get
  local.tee $1
  if
   i32.const 0
   i32.const 1344
   i32.const 443
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 1
  call $~lib/array/Array<std/array/Ref|null>#__get
  local.tee $21
  local.get $21
  i32.eqz
  if
   i32.const 5328
   i32.const 1344
   i32.const 444
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 444
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $35
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
  local.get $30
  call $~lib/rt/pure/__release
  local.get $31
  call $~lib/rt/pure/__release
  local.get $32
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  local.get $23
  call $~lib/rt/pure/__release
  local.get $24
  call $~lib/rt/pure/__release
  local.get $25
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $29
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $21
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
  i32.const 5392
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  if
   i32.const 0
   i32.const 1344
   i32.const 457
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 5424
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 460
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 5456
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 463
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 5488
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 471
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
   i32.const 1344
   i32.const 472
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 5520
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const -1
  i32.eq
  if
   i32.const 0
   i32.const 1344
   i32.const 474
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
  i32.const 5552
  call $~lib/array/Array<i32>#findIndex
  global.set $std/array/i
  global.get $std/array/i
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 487
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
   i32.const 1344
   i32.const 488
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
  i32.const 5584
  call $~lib/array/Array<i32>#every
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 498
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 5616
  call $~lib/array/Array<i32>#every
  if
   i32.const 0
   i32.const 1344
   i32.const 501
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 5648
  call $~lib/array/Array<i32>#every
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 509
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
   i32.const 1344
   i32.const 510
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 5680
  call $~lib/array/Array<i32>#every
  if
   i32.const 0
   i32.const 1344
   i32.const 512
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
  i32.const 5712
  call $~lib/array/Array<i32>#every
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 525
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
   i32.const 1344
   i32.const 526
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
  i32.const 5744
  call $~lib/array/Array<i32>#some
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 536
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 5776
  call $~lib/array/Array<i32>#some
  if
   i32.const 0
   i32.const 1344
   i32.const 539
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 5808
  call $~lib/array/Array<i32>#some
  if
   i32.const 0
   i32.const 1344
   i32.const 547
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
   i32.const 1344
   i32.const 548
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 5840
  call $~lib/array/Array<i32>#some
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 550
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
  i32.const 5872
  call $~lib/array/Array<i32>#some
  if
   i32.const 0
   i32.const 1344
   i32.const 563
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
   i32.const 1344
   i32.const 564
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
  i32.const 5904
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/i
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 575
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 5936
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/i
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 584
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
   i32.const 1344
   i32.const 585
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 5968
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/i
  i32.const 406
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 588
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
  i32.const 6000
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/i
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 602
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
   i32.const 1344
   i32.const 603
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
  i32.const 6032
  call $~lib/array/Array<i32>#forEach
  global.get $std/array/arr
  i32.load offset=12
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 628
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $7
  loop $for-loop|0
   local.get $7
   i32.const 100
   i32.lt_s
   if
    global.get $std/array/arr
    call $~lib/array/Array<i32>#pop
    drop
    local.get $7
    i32.const 1
    i32.add
    local.set $7
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
  local.set $5
  global.get $std/array/arr
  local.tee $7
  i32.load offset=12
  local.tee $3
  i32.const 2
  i32.const 9
  i32.const 0
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $8
  i32.load offset=4
  local.set $6
  loop $for-loop|050
   local.get $5
   local.get $3
   local.get $7
   i32.load offset=12
   local.tee $0
   local.get $0
   local.get $3
   i32.gt_s
   select
   i32.lt_s
   if
    local.get $5
    i32.const 2
    i32.shl
    local.tee $1
    local.get $7
    i32.load offset=4
    i32.add
    i32.load
    local.set $0
    i32.const 3
    global.set $~argumentsLength
    local.get $1
    local.get $6
    i32.add
    local.get $0
    local.get $5
    local.get $7
    i32.const 6064
    i32.load
    call_indirect (type $i32_i32_i32_=>_f32)
    f32.store
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|050
   end
  end
  i32.const 6064
  call $~lib/rt/pure/__release
  local.get $8
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 642
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.const 0
  call $~lib/array/Array<f32>#__get
  global.get $std/array/arr
  i32.const 0
  call $~lib/array/Array<u32>#__get
  f32.convert_i32_s
  f32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 643
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 6096
  call $~lib/array/Array<i32>#map<i32>
  call $~lib/rt/pure/__release
  global.get $std/array/i
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 652
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
   i32.const 1344
   i32.const 653
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 6128
  call $~lib/array/Array<i32>#map<i32>
  call $~lib/rt/pure/__release
  global.get $std/array/i
  i32.const 406
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 660
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
  i32.const 6160
  call $~lib/array/Array<i32>#map<i32>
  call $~lib/rt/pure/__release
  global.get $std/array/i
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 675
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
   i32.const 1344
   i32.const 676
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
  local.get $8
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  i32.const 6192
  call $~lib/array/Array<i32>#filter
  local.tee $0
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 686
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 6224
  call $~lib/array/Array<i32>#filter
  call $~lib/rt/pure/__release
  global.get $std/array/i
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 695
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
   i32.const 1344
   i32.const 696
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $std/array/i
  global.get $std/array/arr
  i32.const 6256
  call $~lib/array/Array<i32>#filter
  call $~lib/rt/pure/__release
  global.get $std/array/i
  i32.const 406
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 703
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
  i32.const 6288
  call $~lib/array/Array<i32>#filter
  call $~lib/rt/pure/__release
  global.get $std/array/i
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 718
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
   i32.const 1344
   i32.const 719
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
  i32.const 6320
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 729
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 6352
  i32.const 4
  call $~lib/array/Array<i32>#reduce<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 733
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 6384
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 736
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 6416
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  if
   i32.const 0
   i32.const 1344
   i32.const 739
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 6448
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 747
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
   i32.const 1344
   i32.const 748
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 6480
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 750
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
  i32.const 6512
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 763
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
   i32.const 1344
   i32.const 764
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
  i32.const 6544
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 774
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 6576
  i32.const 4
  call $~lib/array/Array<i32>#reduceRight<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 778
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 6608
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 781
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 6640
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  if
   i32.const 0
   i32.const 1344
   i32.const 784
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 6672
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 792
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
   i32.const 1344
   i32.const 793
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.const 6704
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 795
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
  i32.const 6736
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  global.set $std/array/i
  global.get $std/array/i
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 808
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/array/arr
  i32.load offset=12
  if
   i32.const 0
   i32.const 1344
   i32.const 809
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
  i32.const 7008
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $18
  i32.const 0
  global.set $~argumentsLength
  local.get $18
  i32.const 7072
  call $~lib/array/Array<f32>#sort
  i32.const 7072
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  block $__inlined_func$std/array/isArraysEqual<f32> (result i32)
   i32.const 8
   i32.const 2
   i32.const 9
   i32.const 7104
   call $~lib/rt/__newArray
   call $~lib/rt/pure/__retain
   local.set $7
   i32.const 0
   local.set $3
   local.get $18
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $7
   call $~lib/rt/pure/__retain
   local.set $6
   block $folding-inner1
    block $folding-inner0
     local.get $5
     i32.load offset=12
     local.tee $0
     local.get $6
     i32.load offset=12
     i32.ne
     br_if $folding-inner0
     local.get $5
     local.get $6
     i32.eq
     br_if $folding-inner1
     loop $for-loop|00
      local.get $0
      local.get $3
      i32.gt_s
      if
       local.get $5
       local.get $3
       call $~lib/array/Array<f32>#__get
       local.tee $26
       local.get $26
       f32.ne
       if (result i32)
        local.get $6
        local.get $3
        call $~lib/array/Array<f32>#__get
        local.tee $26
        local.get $26
        f32.ne
       else
        i32.const 0
       end
       i32.eqz
       if
        local.get $5
        local.get $3
        call $~lib/array/Array<f32>#__get
        local.get $6
        local.get $3
        call $~lib/array/Array<f32>#__get
        f32.ne
        br_if $folding-inner0
       end
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|00
      end
     end
     br $folding-inner1
    end
    local.get $5
    call $~lib/rt/pure/__release
    local.get $6
    call $~lib/rt/pure/__release
    i32.const 0
    br $__inlined_func$std/array/isArraysEqual<f32>
   end
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   i32.const 1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 898
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.const 3
  i32.const 10
  i32.const 7168
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $19
  i32.const 0
  global.set $~argumentsLength
  local.get $19
  i32.const 7264
  call $~lib/array/Array<f64>#sort
  i32.const 7264
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  block $__inlined_func$std/array/isArraysEqual<f64> (result i32)
   i32.const 8
   i32.const 3
   i32.const 10
   i32.const 7296
   call $~lib/rt/__newArray
   call $~lib/rt/pure/__retain
   local.set $8
   i32.const 0
   local.set $3
   local.get $19
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $8
   call $~lib/rt/pure/__retain
   local.set $6
   block $folding-inner11
    block $folding-inner02
     local.get $5
     i32.load offset=12
     local.tee $0
     local.get $6
     i32.load offset=12
     i32.ne
     br_if $folding-inner02
     local.get $5
     local.get $6
     i32.eq
     br_if $folding-inner11
     loop $for-loop|03
      local.get $0
      local.get $3
      i32.gt_s
      if
       local.get $5
       local.get $3
       call $~lib/array/Array<f64>#__get
       local.tee $27
       local.get $27
       f64.ne
       if (result i32)
        local.get $6
        local.get $3
        call $~lib/array/Array<f64>#__get
        local.tee $27
        local.get $27
        f64.ne
       else
        i32.const 0
       end
       i32.eqz
       if
        local.get $5
        local.get $3
        call $~lib/array/Array<f64>#__get
        local.get $6
        local.get $3
        call $~lib/array/Array<f64>#__get
        f64.ne
        br_if $folding-inner02
       end
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|03
      end
     end
     br $folding-inner11
    end
    local.get $5
    call $~lib/rt/pure/__release
    local.get $6
    call $~lib/rt/pure/__release
    i32.const 0
    br $__inlined_func$std/array/isArraysEqual<f64>
   end
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   i32.const 1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 902
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 7392
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $20
  i32.const 0
  global.set $~argumentsLength
  local.get $20
  i32.const 7440
  call $~lib/array/Array<i32>#sort
  i32.const 7440
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  local.get $20
  i32.const 5
  i32.const 2
  i32.const 3
  i32.const 7472
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $5
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 906
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 7520
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $12
  i32.const 0
  global.set $~argumentsLength
  local.get $12
  i32.const 0
  call $~lib/array/Array<u32>#sort@varargs
  call $~lib/rt/pure/__release
  local.get $12
  i32.const 5
  i32.const 2
  i32.const 7
  i32.const 7600
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $6
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 910
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 7648
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 7680
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $15
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 7712
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $16
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 7744
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $17
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 7792
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $14
  i32.const 64
  call $std/array/createReverseOrderedArray
  local.set $10
  i32.const 128
  call $std/array/createReverseOrderedArray
  local.set $11
  i32.const 1024
  call $std/array/createReverseOrderedArray
  local.set $9
  i32.const 10000
  call $std/array/createReverseOrderedArray
  local.set $13
  i32.const 512
  call $std/array/createRandomOrderedArray
  local.set $3
  local.get $2
  call $std/array/assertSortedDefault<i32>
  local.get $15
  call $std/array/assertSortedDefault<i32>
  local.get $15
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 7872
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 930
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $16
  call $std/array/assertSortedDefault<i32>
  local.get $16
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 7904
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 933
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $17
  call $std/array/assertSortedDefault<i32>
  local.get $17
  local.get $14
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 936
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $10
  call $std/array/assertSortedDefault<i32>
  local.get $10
  local.get $14
  i32.const 4
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 939
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $11
  call $std/array/assertSortedDefault<i32>
  local.get $11
  local.get $14
  i32.const 4
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 942
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  call $std/array/assertSortedDefault<i32>
  local.get $9
  local.get $14
  i32.const 4
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 945
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $13
  call $std/array/assertSortedDefault<i32>
  local.get $13
  local.get $14
  i32.const 4
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 948
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $std/array/assertSortedDefault<i32>
  local.get $18
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 64
  call $std/array/createRandomOrderedArray
  local.set $1
  i32.const 257
  call $std/array/createRandomOrderedArray
  local.set $0
  local.get $1
  i32.const 7936
  call $std/array/assertSorted<i32>
  local.get $1
  i32.const 7968
  call $std/array/assertSorted<i32>
  local.get $0
  i32.const 8000
  call $std/array/assertSorted<i32>
  local.get $0
  i32.const 8032
  call $std/array/assertSorted<i32>
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $7
  i32.const 16
  i32.const 22
  call $~lib/rt/pure/__new
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
  i32.const 8
  i32.const 0
  call $~lib/rt/pure/__new
  local.tee $0
  i32.const 0
  i32.const 8
  call $~lib/memory/memory.fill
  local.get $0
  local.tee $1
  local.get $5
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  local.get $1
  i32.store
  local.get $5
  local.get $0
  i32.store offset=4
  local.get $5
  i32.const 8
  i32.store offset=8
  local.get $5
  i32.const 2
  i32.store offset=12
  loop $for-loop|06
   local.get $7
   i32.const 2
   i32.lt_s
   if
    i32.const 1
    call $~lib/array/Array<i32>#constructor
    local.tee $0
    i32.const 0
    i32.const 1
    local.get $7
    i32.sub
    call $~lib/array/Array<i32>#__set
    local.get $5
    local.get $7
    local.get $0
    call $~lib/array/Array<~lib/array/Array<i32>>#__set
    local.get $0
    call $~lib/rt/pure/__release
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|06
   end
  end
  local.get $5
  i32.const 8064
  call $std/array/assertSorted<~lib/array/Array<i32>>
  local.get $5
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $5
  i32.const 16
  i32.const 25
  call $~lib/rt/pure/__new
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $3
  i32.const 0
  i32.store offset=12
  i32.const 2048
  i32.const 0
  call $~lib/rt/pure/__new
  local.tee $1
  i32.const 0
  i32.const 2048
  call $~lib/memory/memory.fill
  local.get $1
  local.set $0
  local.get $1
  local.get $3
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $0
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $3
  local.get $0
  i32.store
  local.get $3
  local.get $1
  i32.store offset=4
  local.get $3
  i32.const 2048
  i32.store offset=8
  local.get $3
  i32.const 512
  i32.store offset=12
  loop $for-loop|04
   local.get $5
   i32.const 512
   i32.lt_s
   if
    i32.const 4
    i32.const 24
    call $~lib/rt/pure/__new
    call $~lib/rt/pure/__retain
    local.tee $0
    i32.const 511
    local.get $5
    i32.sub
    i32.store
    local.get $3
    local.get $5
    local.get $0
    call $~lib/array/Array<~lib/array/Array<i32>>#__set
    local.get $0
    call $~lib/rt/pure/__release
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|04
   end
  end
  local.get $3
  i32.const 8096
  call $std/array/assertSorted<~lib/array/Array<i32>>
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 7
  i32.const 2
  i32.const 27
  i32.const 8288
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $11
  i32.const 7
  i32.const 2
  i32.const 27
  i32.const 8336
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $13
  i32.const 1
  global.set $~argumentsLength
  block $__inlined_func$std/array/isSorted<~lib/string/String|null> (result i32)
   local.get $11
   call $~lib/rt/pure/__retain
   local.tee $3
   i32.const 8384
   call $~lib/rt/pure/__retain
   local.tee $5
   call $~lib/array/Array<~lib/array/Array<i32>>#sort
   local.tee $6
   call $~lib/rt/pure/__retain
   local.set $10
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $7
   i32.const 1
   local.set $9
   local.get $10
   i32.load offset=12
   local.set $0
   loop $for-loop|05
    local.get $0
    local.get $9
    i32.gt_s
    if
     local.get $10
     local.get $9
     i32.const 1
     i32.sub
     call $~lib/array/Array<std/array/Ref|null>#__get
     local.set $8
     local.get $10
     local.get $9
     call $~lib/array/Array<std/array/Ref|null>#__get
     local.set $2
     i32.const 2
     global.set $~argumentsLength
     local.get $8
     local.get $2
     local.get $7
     i32.load
     call_indirect (type $i32_i32_=>_i32)
     i32.const 0
     i32.gt_s
     if
      local.get $10
      call $~lib/rt/pure/__release
      local.get $7
      call $~lib/rt/pure/__release
      local.get $8
      call $~lib/rt/pure/__release
      local.get $2
      call $~lib/rt/pure/__release
      i32.const 0
      br $__inlined_func$std/array/isSorted<~lib/string/String|null>
     end
     local.get $8
     call $~lib/rt/pure/__release
     local.get $2
     call $~lib/rt/pure/__release
     local.get $9
     i32.const 1
     i32.add
     local.set $9
     br $for-loop|05
    end
   end
   local.get $10
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   i32.const 1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 887
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  i32.const 8384
  call $~lib/rt/pure/__release
  local.get $11
  local.get $13
  call $std/array/isArraysEqual<~lib/string/String|null>
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 985
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $5
  i32.const 0
  i32.const 400
  call $~lib/array/Array<~lib/string/String>#constructor
  local.set $2
  loop $for-loop|07
   local.get $5
   i32.const 400
   i32.lt_s
   if
    call $~lib/math/NativeMath.random
    f64.const 32
    f64.mul
    i32.trunc_f64_s
    local.set $7
    i32.const 0
    local.set $9
    i32.const 8256
    local.set $3
    loop $for-loop|08
     local.get $7
     local.get $9
     i32.gt_s
     if
      local.get $3
      local.tee $1
      local.tee $0
      block $__inlined_func$~lib/string/String#charAt (result i32)
       i32.const 8256
       call $~lib/math/NativeMath.random
       i32.const 6812
       i32.load
       i32.const 1
       i32.shr_u
       f64.convert_i32_s
       f64.mul
       f64.floor
       i32.trunc_f64_s
       local.tee $8
       i32.const 6812
       i32.load
       i32.const 1
       i32.shr_u
       i32.ge_u
       br_if $__inlined_func$~lib/string/String#charAt
       drop
       i32.const 2
       i32.const 1
       call $~lib/rt/pure/__new
       local.tee $3
       local.get $8
       i32.const 1
       i32.shl
       i32.const 6816
       i32.add
       i32.load16_u
       i32.store16
       local.get $3
       call $~lib/rt/pure/__retain
      end
      local.tee $6
      call $~lib/string/String.__concat
      local.tee $8
      local.tee $3
      local.get $0
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
      local.get $8
      call $~lib/rt/pure/__release
      local.get $9
      i32.const 1
      i32.add
      local.set $9
      br $for-loop|08
     end
    end
    local.get $2
    local.get $5
    local.get $3
    call $~lib/array/Array<~lib/array/Array<i32>>#__set
    local.get $3
    call $~lib/rt/pure/__release
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|07
   end
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $2
  i32.const 8448
  call $std/array/assertSorted<~lib/array/Array<i32>>
  i32.const 8448
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  i32.const 2
  i32.const 0
  i32.const 31
  i32.const 8480
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $12
  i32.load offset=4
  local.get $12
  i32.load offset=12
  call $~lib/util/string/joinBooleanArray
  local.set $16
  i32.const 8576
  call $~lib/rt/pure/__release
  local.get $16
  i32.const 8608
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 994
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 8656
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $11
  i32.const 8256
  call $~lib/array/Array<i32>#join
  local.tee $9
  i32.const 9008
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 995
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 7
  i32.const 9040
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $13
  i32.const 9072
  call $~lib/array/Array<u32>#join
  local.tee $7
  i32.const 9008
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 996
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 9104
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $8
  i32.const 9136
  call $~lib/array/Array<i32>#join
  local.tee $2
  i32.const 9168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 997
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6
  i32.const 3
  i32.const 10
  i32.const 9248
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $15
  i32.load offset=4
  local.get $15
  i32.load offset=12
  call $~lib/util/string/joinFloatArray<f64>
  local.set $0
  i32.const 9328
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 10496
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 998
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 27
  i32.const 10640
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.const 8256
  call $~lib/array/Array<~lib/string/String|null>#join
  local.tee $5
  i32.const 10608
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 999
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $17
  i32.load offset=4
  local.tee $1
  i32.const 0
  call $std/array/Ref#constructor
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  call $std/array/Ref#constructor
  i32.store offset=8
  local.get $17
  call $~lib/array/Array<std/array/Ref|null>#join
  local.tee $6
  i32.const 10736
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 1001
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $10
  i32.load offset=4
  local.tee $1
  i32.const 0
  call $std/array/Ref#constructor
  i32.store
  local.get $1
  i32.const 0
  call $std/array/Ref#constructor
  i32.store offset=4
  local.get $10
  call $~lib/array/Array<std/array/Ref|null>#join
  local.tee $1
  i32.const 10832
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 1004
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $12
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 10928
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $14
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 10960
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $18
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 10992
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $19
  i32.const 4
  i32.const 2
  i32.const 3
  i32.const 11024
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $20
  local.get $14
  i32.const 8576
  call $~lib/array/Array<i32>#join
  local.tee $0
  local.get $0
  i32.const 8256
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 1014
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $18
  i32.const 8576
  call $~lib/array/Array<i32>#join
  local.tee $0
  local.set $16
  local.get $0
  i32.const 10608
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 1015
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $19
  i32.const 8576
  call $~lib/array/Array<i32>#join
  local.tee $0
  local.set $17
  local.get $0
  i32.const 11072
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 1016
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $20
  i32.const 8576
  call $~lib/array/Array<i32>#join
  local.tee $0
  local.set $10
  local.get $0
  i32.const 11104
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 1017
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 0
  i32.const 32
  i32.const 11152
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $30
  i32.load offset=4
  local.get $30
  i32.load offset=12
  call $~lib/util/string/joinIntegerArray<i8>
  local.set $3
  i32.const 8576
  call $~lib/rt/pure/__release
  local.get $3
  i32.const 11184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 1019
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 1
  i32.const 33
  i32.const 11216
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $31
  i32.load offset=4
  local.get $31
  i32.load offset=12
  call $~lib/util/string/joinIntegerArray<u16>
  local.set $12
  i32.const 8576
  call $~lib/rt/pure/__release
  local.get $12
  i32.const 11248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 1020
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 3
  i32.const 34
  i32.const 11296
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $32
  i32.load offset=4
  local.get $32
  i32.load offset=12
  call $~lib/util/string/joinIntegerArray<u64>
  local.set $5
  i32.const 8576
  call $~lib/rt/pure/__release
  local.get $5
  i32.const 11344
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 1021
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 3
  i32.const 35
  i32.const 11424
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $22
  i32.load offset=4
  local.get $22
  i32.load offset=12
  call $~lib/util/string/joinIntegerArray<i64>
  local.set $6
  i32.const 8576
  call $~lib/rt/pure/__release
  local.get $6
  i32.const 11488
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 1022
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 7
  i32.const 2
  i32.const 27
  i32.const 11600
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $11
  i32.const 8576
  call $~lib/array/Array<~lib/string/String|null>#join
  local.tee $0
  local.set $9
  local.get $0
  i32.const 11648
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 1026
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 2
  i32.const 27
  i32.const 11760
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $13
  i32.const 8576
  call $~lib/array/Array<~lib/string/String|null>#join
  local.tee $0
  local.set $7
  local.get $0
  i32.const 11808
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 1027
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.const 22
  i32.const 0
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $23
  i32.load offset=4
  local.tee $0
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 11840
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 11872
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $23
  i32.load offset=4
  local.get $23
  i32.load offset=12
  call $~lib/util/string/joinReferenceArray<~lib/array/Array<i32>>
  local.set $1
  i32.const 8576
  call $~lib/rt/pure/__release
  local.get $1
  i32.const 11904
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 1030
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  i32.const 36
  i32.const 0
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $24
  i32.load offset=4
  local.tee $0
  i32.const 2
  i32.const 0
  i32.const 6
  i32.const 11952
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  i32.const 2
  i32.const 0
  i32.const 6
  i32.const 11984
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $24
  i32.load offset=4
  local.get $24
  i32.load offset=12
  call $~lib/util/string/joinReferenceArray<~lib/array/Array<u8>>
  local.set $0
  i32.const 8576
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 11904
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 1033
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 38
  i32.const 0
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $25
  i32.load offset=4
  i32.const 1
  i32.const 2
  i32.const 37
  i32.const 0
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  i32.const 1
  i32.const 2
  i32.const 7
  i32.const 12016
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  i32.store
  local.get $25
  i32.load offset=4
  local.get $25
  i32.load offset=12
  call $~lib/util/string/joinReferenceArray<~lib/array/Array<~lib/array/Array<u32>>>
  local.set $2
  i32.const 8576
  call $~lib/rt/pure/__release
  local.get $2
  i32.const 10608
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1344
   i32.const 1036
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $14
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $30
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $31
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $32
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  global.get $std/array/arr
  call $~lib/rt/pure/__release
  i32.const 4
  i32.const 2
  i32.const 22
  i32.const 0
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.load offset=4
  local.tee $1
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 12048
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 12080
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $1
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 12112
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $1
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 12144
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  i32.store offset=12
  local.get $0
  call $~lib/array/Array<~lib/array/Array<i32>>#flat
  local.tee $3
  i32.load offset=12
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 1047
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $7
  loop $for-loop|1
   local.get $7
   i32.const 10
   i32.lt_s
   if
    local.get $3
    local.get $7
    call $~lib/array/Array<u32>#__get
    local.get $7
    i32.ne
    if
     i32.const 0
     i32.const 1344
     i32.const 1049
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|1
   end
  end
  i32.const 4
  i32.const 2
  i32.const 39
  i32.const 0
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $5
  i32.load offset=4
  local.tee $1
  i32.const 1
  i32.const 2
  i32.const 27
  i32.const 12208
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  i32.const 3
  i32.const 2
  i32.const 27
  i32.const 12304
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $1
  i32.const 3
  i32.const 2
  i32.const 27
  i32.const 12432
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $1
  i32.const 1
  i32.const 2
  i32.const 27
  i32.const 12496
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  i32.store offset=12
  local.get $5
  call $~lib/array/Array<~lib/array/Array<~lib/string/String|null>>#flat
  local.set $8
  i32.const 8
  i32.const 2
  i32.const 27
  i32.const 12528
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $8
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1344
   i32.const 1055
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $7
  loop $for-loop|2
   local.get $7
   local.get $2
   i32.load offset=12
   i32.lt_s
   if
    local.get $8
    local.get $7
    call $~lib/array/Array<std/array/Ref|null>#__get
    local.tee $6
    local.get $2
    local.get $7
    call $~lib/array/Array<std/array/Ref|null>#__get
    local.tee $1
    call $~lib/string/String.__eq
    i32.eqz
    if
     i32.const 0
     i32.const 1344
     i32.const 1057
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $6
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|2
   end
  end
  i32.const 2
  i32.const 2
  i32.const 22
  i32.const 0
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $6
  i32.load offset=4
  local.tee $1
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 12592
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 12624
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $6
  call $~lib/array/Array<~lib/array/Array<i32>>#flat
  local.tee $1
  i32.load offset=12
  if
   i32.const 0
   i32.const 1344
   i32.const 1061
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $28
  call $~lib/rt/pure/__release
  local.get $34
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $36
  call $~lib/rt/pure/__release
  local.get $23
  call $~lib/rt/pure/__release
  local.get $24
  call $~lib/rt/pure/__release
  local.get $25
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
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
  local.get $2
  i32.const 2
  i32.const 7
  i32.const 0
  call $~lib/rt/__newArray
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
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 0
  i32.const 2
  i32.const 7
  i32.const 0
  call $~lib/rt/__newArray
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
   local.get $3
   local.get $5
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
    local.get $3
    local.get $2
    local.get $0
    local.get $1
    i32.load
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
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
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
  call $~lib/rt/__newArray
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
  i32.const 12656
  i32.const 1104
  i32.const 504
  i32.const 7
  call $~lib/builtins/abort
  unreachable
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
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
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
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 1
 )
 (func $~lib/array/Array<u8>#findIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
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
  local.get $1
  call $~lib/rt/pure/__release
  i32.const -1
 )
 (func $~lib/array/Array<u8>#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
  local.get $2
  i32.const 0
  i32.const 6
  i32.const 0
  call $~lib/rt/__newArray
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
  local.get $1
  local.get $2
  i32.gt_s
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
   i32.const 2032
   i32.const 1104
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
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
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
    i32.add
    i32.load8_u
    i32.const 3
    global.set $~argumentsLength
    local.get $2
    local.get $0
    local.get $1
    i32.load
    call_indirect (type $i32_i32_i32_=>_none)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<u8>#filter (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 0
  i32.const 0
  i32.const 6
  i32.const 0
  call $~lib/rt/__newArray
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
   local.get $3
   local.get $5
   i32.gt_s
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
    i32.load
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
  local.get $1
  call $~lib/rt/pure/__release
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
   i32.const 2032
   i32.const 1104
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
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
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
  local.get $1
  call $~lib/rt/pure/__release
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
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_u
  i32.const 2
  i32.shl
  local.tee $2
  call $~lib/rt/tlsf/__alloc
  local.tee $4
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
     local.get $4
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
    local.tee $7
    i32.add
    i32.load8_u
    local.set $2
    local.get $0
    local.get $3
    i32.add
    i32.load8_u
    local.set $5
    i32.const 2
    global.set $~argumentsLength
    local.get $2
    local.get $5
    local.get $6
    i32.load
    call_indirect (type $i32_i32_=>_i32)
    i32.const 0
    i32.lt_s
    if
     local.get $4
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
     i32.shl
     i32.xor
     i32.store
     local.get $0
     local.get $3
     i32.add
     local.get $2
     i32.store8
     local.get $0
     local.get $7
     i32.add
     local.get $5
     i32.store8
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
    i32.load8_u
    local.set $1
    local.get $0
    local.get $0
    local.get $3
    i32.add
    local.tee $2
    i32.load8_u
    i32.store8
    local.get $2
    local.get $1
    i32.store8
    i32.const 1
    local.set $1
    loop $while-continue|3
     local.get $3
     local.get $4
     local.get $1
     i32.const 5
     i32.shr_u
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $1
     i32.shr_u
     i32.const 1
     i32.and
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     local.tee $2
     i32.gt_s
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
      i32.load8_u
      local.set $2
      local.get $0
      local.get $1
      i32.add
      i32.load8_u
      local.set $5
      i32.const 2
      global.set $~argumentsLength
      local.get $2
      local.get $5
      local.get $6
      i32.load
      call_indirect (type $i32_i32_=>_i32)
      i32.const 0
      i32.lt_s
      if
       local.get $4
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
       i32.shl
       i32.xor
       i32.store
       local.get $0
       local.get $1
       i32.add
       local.get $2
       i32.store8
       local.get $0
       local.get $5
       i32.store8
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
  local.get $4
  call $~lib/rt/tlsf/__free
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
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<u8>#sort (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $5
  block $folding-inner0
   local.get $0
   i32.load offset=12
   local.tee $1
   i32.const 1
   i32.le_s
   br_if $folding-inner0
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $1
   i32.const 2
   i32.eq
   if
    local.get $4
    i32.load8_u offset=1
    local.set $2
    local.get $4
    i32.load8_u
    local.set $1
    i32.const 2
    global.set $~argumentsLength
    local.get $2
    local.get $1
    local.get $5
    i32.load
    call_indirect (type $i32_i32_=>_i32)
    i32.const 0
    i32.lt_s
    if
     local.get $4
     local.get $1
     i32.store8 offset=1
     local.get $4
     local.get $2
     i32.store8
    end
    br $folding-inner0
   end
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $7
   local.get $1
   i32.const 256
   i32.lt_s
   if
    local.get $1
    local.set $3
    local.get $7
    call $~lib/rt/pure/__retain
    local.set $8
    loop $for-loop|0
     local.get $3
     local.get $6
     i32.gt_s
     if
      local.get $4
      local.get $6
      i32.add
      i32.load8_u
      local.set $9
      local.get $6
      i32.const 1
      i32.sub
      local.set $2
      loop $while-continue|1
       local.get $2
       i32.const 0
       i32.ge_s
       if
        block $while-break|1
         local.get $2
         local.get $4
         i32.add
         i32.load8_u
         local.set $10
         i32.const 2
         global.set $~argumentsLength
         local.get $9
         local.get $10
         local.get $8
         i32.load
         call_indirect (type $i32_i32_=>_i32)
         i32.const 0
         i32.ge_s
         br_if $while-break|1
         local.get $2
         local.tee $1
         i32.const 1
         i32.sub
         local.set $2
         local.get $4
         local.get $1
         i32.const 1
         i32.add
         i32.add
         local.get $10
         i32.store8
         br $while-continue|1
        end
       end
      end
      local.get $4
      local.get $2
      i32.const 1
      i32.add
      i32.add
      local.get $9
      i32.store8
      local.get $6
      i32.const 1
      i32.add
      local.set $6
      br $for-loop|0
     end
    end
    local.get $8
    call $~lib/rt/pure/__release
   else
    local.get $4
    local.get $1
    local.get $7
    call $~lib/util/sort/weakHeapSort<u8>
   end
   local.get $7
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__retain
   local.get $5
   call $~lib/rt/pure/__release
   return
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.get $5
  call $~lib/rt/pure/__release
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
   local.get $1
   local.get $2
   i32.gt_s
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
   local.get $1
   local.get $3
   i32.gt_s
   select
  end
  local.set $1
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.gt_s
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
  local.get $2
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.ge_s
  i32.const 1
  local.get $3
  select
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
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=12
  local.tee $2
  local.get $1
  i32.load offset=12
  i32.const 0
  local.get $1
  select
  local.tee $5
  i32.add
  local.tee $3
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
  local.get $3
  i32.const 2
  i32.const 29
  i32.const 0
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $6
  i32.load offset=4
  local.set $3
  local.get $2
  i32.const 2
  i32.shl
  local.set $2
  local.get $0
  i32.load offset=4
  local.set $0
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.gt_u
   if
    local.get $3
    local.get $4
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
    br $for-loop|0
   end
  end
  local.get $2
  local.get $3
  i32.add
  local.set $4
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $5
  i32.const 2
  i32.shl
  local.set $2
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $2
   i32.lt_u
   if
    local.get $0
    local.get $4
    i32.add
    local.get $0
    local.get $3
    i32.add
    i32.load
    call $~lib/rt/pure/__retain
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $for-loop|1
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $6
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
  local.get $1
  local.get $2
  i32.gt_s
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
   i32.const 2032
   i32.const 1104
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
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 0
  i32.const 2
  i32.const 29
  i32.const 0
  call $~lib/rt/__newArray
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
   local.tee $1
   local.get $1
   local.get $5
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
    call $~lib/rt/pure/__retain
    local.set $1
    i32.const 3
    global.set $~argumentsLength
    local.get $1
    local.get $2
    local.get $0
    local.get $3
    i32.load
    call_indirect (type $i32_i32_i32_=>_i32)
    if
     local.get $4
     local.get $1
     call $~lib/array/Array<~lib/string/String>#push
     drop
    end
    local.get $1
    call $~lib/rt/pure/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
  call $~lib/rt/pure/__release
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
   i32.const 2032
   i32.const 1104
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
  i32.const 29
  i32.const 0
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $3
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
  local.get $2
  i32.const 2
  i32.shl
  local.set $2
  loop $while-continue|0
   local.get $0
   local.get $2
   i32.lt_u
   if
    local.get $0
    local.get $4
    i32.add
    local.get $0
    local.get $1
    i32.add
    i32.load
    call $~lib/rt/pure/__retain
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
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
  i32.const 29
  i32.const 0
  call $~lib/rt/__newArray
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
    local.get $1
    local.get $2
    i32.gt_u
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
  i32.load
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 1216
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
    block $folding-inner4
     block $folding-inner3
      block $folding-inner2
       block $folding-inner1
        block $invalid
         block $std/array/ArrayStr
          block $~lib/typedarray/Uint8Array
           block $~lib/arraybuffer/ArrayBufferView
            local.get $0
            i32.const 20
            i32.add
            local.tee $1
            i32.const 8
            i32.sub
            i32.load
            br_table $__inlined_func$~lib/rt/__visit_members $__inlined_func$~lib/rt/__visit_members $~lib/arraybuffer/ArrayBufferView $folding-inner1 $__inlined_func$~lib/rt/__visit_members $~lib/typedarray/Uint8Array $folding-inner1 $folding-inner1 $folding-inner2 $folding-inner1 $folding-inner1 $folding-inner2 $folding-inner3 $folding-inner3 $folding-inner3 $folding-inner3 $folding-inner3 $folding-inner3 $folding-inner3 $folding-inner3 $folding-inner3 $folding-inner3 $folding-inner2 $folding-inner3 $__inlined_func$~lib/rt/__visit_members $folding-inner2 $folding-inner3 $folding-inner2 $folding-inner3 $folding-inner2 $folding-inner3 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner4 $folding-inner4 $std/array/ArrayStr $invalid
           end
           local.get $1
           i32.load
           local.tee $1
           if
            local.get $1
            call $~lib/rt/pure/__visit
           end
           br $__inlined_func$~lib/rt/__visit_members
          end
          local.get $1
          i32.load
          local.tee $1
          if
           local.get $1
           call $~lib/rt/pure/__visit
          end
          br $__inlined_func$~lib/rt/__visit_members
         end
         local.get $1
         call $~lib/array/Array<std/array/Ref>~visit
         br $__inlined_func$~lib/rt/__visit_members
        end
        unreachable
       end
       local.get $1
       i32.load
       call $~lib/rt/pure/__visit
       br $__inlined_func$~lib/rt/__visit_members
      end
      local.get $1
      call $~lib/array/Array<std/array/Ref>~visit
      br $__inlined_func$~lib/rt/__visit_members
     end
     local.get $1
     i32.load offset=4
     call $~lib/rt/pure/__visit
     br $__inlined_func$~lib/rt/__visit_members
    end
    local.get $1
    i32.load
    call $~lib/rt/pure/__visit
   end
   local.get $2
   i32.const -2147483648
   i32.and
   if
    i32.const 0
    i32.const 1216
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
   i32.eqz
   if
    i32.const 0
    i32.const 1216
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
  i32.const 12700
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  call $~lib/rt/pure/decrement
 )
 (func $~start
  call $start:std/array
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
  i32.load
  call $~lib/rt/pure/__visit
 )
 (func $std/array/ArrayU32#constructor@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  i32.eqz
  if
   i32.const 16
   i32.const 40
   call $~lib/rt/pure/__new
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 7
   call $~lib/rt/pure/__new
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
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1056
   i32.const 1104
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
  call $~lib/rt/pure/__new
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
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
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
   local.get $0
   local.get $2
   i32.le_s
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
  (local $3 i32)
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
  local.tee $3
  i32.const 2
  i32.const 7
  i32.const 0
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $2
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
  local.get $2
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
   i32.const 8576
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#join
 )
 (func $std/array/ArrayU8#constructor@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  i32.eqz
  if
   i32.const 16
   i32.const 41
   call $~lib/rt/pure/__new
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 6
   call $~lib/rt/pure/__new
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
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1056
   i32.const 1104
   i32.const 57
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.tee $2
  i32.const 0
  call $~lib/rt/pure/__new
  local.tee $1
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $1
  local.set $3
  local.get $1
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
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $0
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
   local.get $0
   local.get $2
   i32.le_s
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
  (local $3 i32)
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
  local.tee $3
  i32.const 0
  i32.const 6
  i32.const 0
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  local.get $2
 )
 (func $~lib/array/Array<u8>#splice@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
  call $~lib/rt/__newArray
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.load offset=4
  local.get $1
  local.get $0
  i32.load offset=4
  local.tee $5
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
 (func $~lib/array/Array<u8>#sort@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 12720
   local.tee $2
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#sort
  local.get $2
  call $~lib/rt/pure/__release
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
   i32.const 8576
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#join
 )
 (func $std/array/ArrayStr#constructor@varargs (param $0 i32) (param $1 i32) (result i32)
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
  if (result i32)
   local.get $0
  else
   i32.const 16
   i32.const 42
   call $~lib/rt/pure/__new
   call $~lib/rt/pure/__retain
  end
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
   local.get $0
   local.get $2
   i32.le_s
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
  (local $2 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 12752
   local.tee $2
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#sort
  local.get $2
  call $~lib/rt/pure/__release
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
   i32.const 8576
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String|null>#join
 )
 (func $~setArgumentsLength (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
)
