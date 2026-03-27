(module
 (type $0 (func (result i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func))
 (type $3 (func (param i32)))
 (type $4 (func (param i32 i32) (result i32)))
 (type $5 (func (result f64)))
 (type $6 (func (param i32 i32 i32)))
 (type $7 (func (param i32 i32)))
 (type $8 (func (result i64)))
 (type $9 (func (result f32)))
 (type $10 (func (param i32 i32 i32) (result i32)))
 (type $11 (func (param i32 i32 i32 i32)))
 (type $12 (func (param i32 i32 i64)))
 (type $13 (func (param i64) (result i32)))
 (type $14 (func (param f32) (result i32)))
 (type $15 (func (param f64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/__closure_env (mut i32) (i32.const 0))
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
 (global $closure-stress/counter1 (mut i32) (i32.const 0))
 (global $closure-stress/counter2 (mut i32) (i32.const 0))
 (global $closure-stress/addTo10 (mut i32) (i32.const 0))
 (global $closure-stress/greaterThan5 (mut i32) (i32.const 0))
 (global $closure-stress/add5 (mut i32) (i32.const 0))
 (global $closure-stress/add10 (mut i32) (i32.const 0))
 (global $closure-stress/double (mut i32) (i32.const 0))
 (global $closure-stress/triple (mut i32) (i32.const 0))
 (global $closure-stress/addThenDouble (mut i32) (i32.const 0))
 (global $closure-stress/callCount (mut i32) (i32.const 0))
 (global $closure-stress/fact (mut i32) (i32.const 0))
 (global $closure-stress/addResult (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 37348))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\04\00\00\00\08\00\00\00\01")
 (data $1 (i32.const 1068) "<")
 (data $1.1 (i32.const 1080) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $2 (i32.const 1132) "<")
 (data $2.1 (i32.const 1144) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $5 (i32.const 1260) "<")
 (data $5.1 (i32.const 1272) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $6 (i32.const 1324) ",")
 (data $6.1 (i32.const 1336) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $8 (i32.const 1404) "<")
 (data $8.1 (i32.const 1416) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $9 (i32.const 1468) "<")
 (data $9.1 (i32.const 1480) "\02\00\00\00\"\00\00\00c\00l\00o\00s\00u\00r\00e\00-\00s\00t\00r\00e\00s\00s\00.\00t\00s")
 (data $10 (i32.const 1532) "\1c")
 (data $10.1 (i32.const 1544) "\05\00\00\00\08\00\00\00\02")
 (data $11 (i32.const 1564) "\1c")
 (data $11.1 (i32.const 1576) "\06\00\00\00\08\00\00\00\03")
 (data $12 (i32.const 1596) "\1c")
 (data $12.1 (i32.const 1608) "\07\00\00\00\08\00\00\00\04")
 (data $13 (i32.const 1628) "\1c")
 (data $13.1 (i32.const 1640) "\08\00\00\00\08\00\00\00\05")
 (data $14 (i32.const 1660) "\1c")
 (data $14.1 (i32.const 1672) "\04\00\00\00\08\00\00\00\06")
 (data $15 (i32.const 1692) "\1c")
 (data $15.1 (i32.const 1704) "\07\00\00\00\08\00\00\00\07")
 (data $16 (i32.const 1724) "\1c")
 (data $16.1 (i32.const 1736) "\04\00\00\00\08\00\00\00\08")
 (data $17 (i32.const 1756) "\1c")
 (data $17.1 (i32.const 1768) "\04\00\00\00\08\00\00\00\t")
 (data $18 (i32.const 1788) "\1c")
 (data $18.1 (i32.const 1800) "\04\00\00\00\08\00\00\00\n")
 (data $19 (i32.const 1820) "\1c")
 (data $19.1 (i32.const 1832) "\t\00\00\00\08\00\00\00\0b")
 (data $20 (i32.const 1852) "\1c")
 (data $20.1 (i32.const 1864) "\04\00\00\00\08\00\00\00\0c")
 (data $21 (i32.const 1884) "\1c")
 (data $21.1 (i32.const 1896) "\n\00\00\00\08\00\00\00\r")
 (data $22 (i32.const 1916) "\1c")
 (data $22.1 (i32.const 1928) "\n\00\00\00\08\00\00\00\0e")
 (data $23 (i32.const 1948) "\1c")
 (data $23.1 (i32.const 1960) "\04\00\00\00\08\00\00\00\0f")
 (data $24 (i32.const 1980) "\1c")
 (data $24.1 (i32.const 1992) "\n\00\00\00\08\00\00\00\10")
 (data $25 (i32.const 2012) "\1c")
 (data $25.1 (i32.const 2024) "\04\00\00\00\08\00\00\00\11")
 (data $26 (i32.const 2044) "\1c")
 (data $26.1 (i32.const 2056) "\0b\00\00\00\08\00\00\00\12")
 (data $27 (i32.const 2076) "\1c")
 (data $27.1 (i32.const 2088) "\0c\00\00\00\08\00\00\00\13")
 (data $28 (i32.const 2108) ",")
 (data $28.1 (i32.const 2120) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $29 (i32.const 2156) ",")
 (data $29.1 (i32.const 2168) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $30 (i32.const 2204) "\1c")
 (data $30.1 (i32.const 2216) "\04\00\00\00\08\00\00\00\14")
 (data $31 (i32.const 2236) "\1c")
 (data $31.1 (i32.const 2248) "\04\00\00\00\08\00\00\00\15")
 (data $32 (i32.const 2268) "\1c")
 (data $32.1 (i32.const 2280) "\04\00\00\00\08\00\00\00\16")
 (data $33 (i32.const 2300) "|")
 (data $33.1 (i32.const 2312) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $34 (i32.const 2428) "\1c")
 (data $34.1 (i32.const 2440) "\04\00\00\00\08\00\00\00\17")
 (data $35 (i32.const 2460) "\1c")
 (data $35.1 (i32.const 2472) "\04\00\00\00\08\00\00\00\18")
 (data $36 (i32.const 2492) "\1c")
 (data $36.1 (i32.const 2504) "\04\00\00\00\08\00\00\00\19")
 (data $37 (i32.const 2524) "\1c")
 (data $37.1 (i32.const 2536) "\04\00\00\00\08\00\00\00\1a")
 (data $38 (i32.const 2556) "\1c")
 (data $38.1 (i32.const 2568) "\n\00\00\00\08\00\00\00\1b")
 (data $39 (i32.const 2588) "\1c")
 (data $39.1 (i32.const 2600) "\04\00\00\00\08\00\00\00\1c")
 (data $40 (i32.const 2620) "\1c")
 (data $40.1 (i32.const 2632) "\n\00\00\00\08\00\00\00\1d")
 (data $41 (i32.const 2652) "\1c")
 (data $41.1 (i32.const 2664) "\04\00\00\00\08\00\00\00\1e")
 (data $42 (i32.const 2684) "\1c")
 (data $42.1 (i32.const 2696) "\0b\00\00\00\08\00\00\00\1f")
 (data $43 (i32.const 2716) "\1c")
 (data $43.1 (i32.const 2728) "\0c\00\00\00\08\00\00\00 ")
 (data $44 (i32.const 2748) "\1c")
 (data $44.1 (i32.const 2760) "\10\00\00\00\08\00\00\00!")
 (data $45 (i32.const 2780) "\1c")
 (data $45.1 (i32.const 2792) "\04\00\00\00\08\00\00\00\"")
 (data $46 (i32.const 2812) "\1c")
 (data $46.1 (i32.const 2824) "\0b\00\00\00\08\00\00\00#")
 (data $47 (i32.const 2844) "\1c")
 (data $47.1 (i32.const 2856) "\0b\00\00\00\08\00\00\00$")
 (data $48 (i32.const 2876) "\1c")
 (data $48.1 (i32.const 2888) "\0b\00\00\00\08\00\00\00%")
 (data $49 (i32.const 2908) "\1c")
 (data $49.1 (i32.const 2920) "\0b\00\00\00\08\00\00\00&")
 (data $50 (i32.const 2940) "<")
 (data $50.1 (i32.const 2952) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data $51 (i32.const 3004) "<")
 (data $51.1 (i32.const 3016) "\02\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data $52 (i32.const 3068) ",")
 (data $52.1 (i32.const 3080) "\02\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data $53 (i32.const 3116) "\1c")
 (data $53.1 (i32.const 3128) "\0b\00\00\00\08\00\00\00\'")
 (data $54 (i32.const 3148) "\1c")
 (data $54.1 (i32.const 3160) "\04\00\00\00\08\00\00\00(")
 (data $55 (i32.const 3180) "\1c")
 (data $55.1 (i32.const 3192) "\04\00\00\00\08\00\00\00)")
 (data $56 (i32.const 3212) "\1c")
 (data $56.1 (i32.const 3224) "\04\00\00\00\08\00\00\00*")
 (data $57 (i32.const 3244) "\1c")
 (data $57.1 (i32.const 3256) "\04\00\00\00\08\00\00\00+")
 (data $58 (i32.const 3276) "\1c")
 (data $58.1 (i32.const 3288) "\04\00\00\00\08\00\00\00,")
 (data $59 (i32.const 3308) "\1c")
 (data $59.1 (i32.const 3320) "\04\00\00\00\08\00\00\00-")
 (data $60 (i32.const 3340) "\1c")
 (data $60.1 (i32.const 3352) "\0b\00\00\00\08\00\00\00.")
 (data $61 (i32.const 3372) "\1c")
 (data $61.1 (i32.const 3384) "\04\00\00\00\08\00\00\00/")
 (data $62 (i32.const 3404) "\1c")
 (data $62.1 (i32.const 3416) "\n\00\00\00\08\00\00\000")
 (data $63 (i32.const 3436) "\1c")
 (data $63.1 (i32.const 3448) "\n\00\00\00\08\00\00\001")
 (data $64 (i32.const 3468) "\1c")
 (data $64.1 (i32.const 3480) "\n\00\00\00\08\00\00\002")
 (data $65 (i32.const 3500) "\1c")
 (data $65.1 (i32.const 3512) "\n\00\00\00\08\00\00\003")
 (data $66 (i32.const 3532) "\1c")
 (data $66.1 (i32.const 3544) "\n\00\00\00\08\00\00\004")
 (data $67 (i32.const 3564) "\1c")
 (data $67.1 (i32.const 3576) "\04\00\00\00\08\00\00\005")
 (data $68 (i32.const 3596) "\1c")
 (data $68.1 (i32.const 3608) "\04\00\00\00\08\00\00\006")
 (data $69 (i32.const 3628) "\1c")
 (data $69.1 (i32.const 3640) "\04\00\00\00\08\00\00\007")
 (data $70 (i32.const 3660) "\1c")
 (data $70.1 (i32.const 3672) "\04\00\00\00\08\00\00\008")
 (data $71 (i32.const 3692) "\1c")
 (data $71.1 (i32.const 3704) "\04\00\00\00\08\00\00\009")
 (data $72 (i32.const 3724) "\1c")
 (data $72.1 (i32.const 3736) "\n\00\00\00\08\00\00\00:")
 (data $73 (i32.const 3756) "\1c")
 (data $73.1 (i32.const 3768) "\n\00\00\00\08\00\00\00;")
 (data $74 (i32.const 3788) "\1c")
 (data $74.1 (i32.const 3800) "\n\00\00\00\08\00\00\00<")
 (data $75 (i32.const 3820) "\1c")
 (data $75.1 (i32.const 3832) "\02\00\00\00\n\00\00\00H\00e\00l\00l\00o")
 (data $76 (i32.const 3852) "\1c")
 (data $76.1 (i32.const 3864) "\12\00\00\00\08\00\00\00=")
 (data $77 (i32.const 3884) "\1c")
 (data $77.1 (i32.const 3896) "\02\00\00\00\02\00\00\00A")
 (data $78 (i32.const 3916) "\1c")
 (data $78.1 (i32.const 3928) "\02")
 (data $79 (i32.const 3948) "\1c")
 (data $79.1 (i32.const 3960) "\13\00\00\00\08\00\00\00>")
 (data $80 (i32.const 3980) "\1c")
 (data $80.1 (i32.const 3992) "\12\00\00\00\08\00\00\00?")
 (data $81 (i32.const 4012) "\1c")
 (data $81.1 (i32.const 4024) "\02\00\00\00\02\00\00\00B")
 (data $82 (i32.const 4044) "\1c")
 (data $82.1 (i32.const 4056) "\02\00\00\00\02\00\00\00C")
 (data $83 (i32.const 4076) "\1c")
 (data $83.1 (i32.const 4088) "\02\00\00\00\02\00\00\00D")
 (data $84 (i32.const 4108) "\1c")
 (data $84.1 (i32.const 4120) "\02\00\00\00\08\00\00\00A\00B\00C\00D")
 (data $85 (i32.const 4140) "\1c")
 (data $85.1 (i32.const 4152) "\04\00\00\00\08\00\00\00@")
 (data $86 (i32.const 4172) "\1c")
 (data $86.1 (i32.const 4184) "\04\00\00\00\08\00\00\00A")
 (data $87 (i32.const 4204) "\1c")
 (data $87.1 (i32.const 4216) "\t\00\00\00\08\00\00\00B")
 (data $88 (i32.const 4236) "\1c")
 (data $88.1 (i32.const 4248) "\04\00\00\00\08\00\00\00C")
 (data $89 (i32.const 4268) "\1c")
 (data $89.1 (i32.const 4280) "\04\00\00\00\08\00\00\00D")
 (data $90 (i32.const 4300) "\1c")
 (data $90.1 (i32.const 4312) "\04\00\00\00\08\00\00\00E")
 (data $91 (i32.const 4332) "\1c")
 (data $91.1 (i32.const 4344) "\04\00\00\00\08\00\00\00F")
 (data $92 (i32.const 4364) "\1c")
 (data $92.1 (i32.const 4376) "\04\00\00\00\08\00\00\00G")
 (data $93 (i32.const 4396) "\1c")
 (data $93.1 (i32.const 4408) "\04\00\00\00\08\00\00\00H")
 (data $94 (i32.const 4428) "\1c")
 (data $94.1 (i32.const 4440) "\04\00\00\00\08\00\00\00I")
 (data $95 (i32.const 4460) "\1c")
 (data $95.1 (i32.const 4472) "\04\00\00\00\08\00\00\00J")
 (data $96 (i32.const 4496) "\14\00\00\00 \00\00\00 \00\00\00 ")
 (data $96.1 (i32.const 4552) "\02A\00\00\02\t\00\00 \00\00\00\00\00\00\00\10\t\12")
 (table $0 75 75 funcref)
 (elem $0 (i32.const 1) $closure-stress/captureI32Param~anonymous|0 $closure-stress/captureI64Param~anonymous|0 $closure-stress/captureF32Param~anonymous|0 $closure-stress/captureF64Param~anonymous|0 $closure-stress/captureBool~anonymous|0 $closure-stress/captureMultipleI32~anonymous|0 $closure-stress/captureMixedTypes~anonymous|0 $closure-stress/capture8Params~anonymous|0 $closure-stress/captureParamsAndLocals~anonymous|0 $closure-stress/makeCounter~anonymous|0 $closure-stress/testBidirectionalMutation~anonymous|0 $closure-stress/captureI32Param~anonymous|0 $closure-stress/testSharedMutation~anonymous|0 $closure-stress/testSharedMutation~anonymous|1 $closure-stress/captureI32Param~anonymous|0 $closure-stress/testOuterScopeMutation~anonymous|0 $closure-stress/captureI32Param~anonymous|0 $closure-stress/curriedAdd~anonymous|0 $closure-stress/makeGreaterThan~anonymous|0 $closure-stress/captureI32Param~anonymous|0 $closure-stress/simpleClosureArray~anonymous|1 $closure-stress/simpleClosureArray~anonymous|2 $closure-stress/captureI32Param~anonymous|0 $closure-stress/simpleClosureArray~anonymous|1 $closure-stress/captureI32Param~anonymous|0 $closure-stress/captureArray~anonymous|0 $closure-stress/mutateCapturedArray~anonymous|0 $closure-stress/captureArray~anonymous|0 $closure-stress/captureClassInstance~anonymous|0 $closure-stress/captureClassInstance~anonymous|1 $closure-stress/testMapWithClosure~anonymous|0 $closure-stress/testFilterWithClosure~anonymous|0 $closure-stress/testReduceWithClosure~anonymous|0 $closure-stress/testReduceWithClosure~anonymous|1 $closure-stress/makeAdder~anonymous|0 $closure-stress/testMapWithClosure~anonymous|0 $closure-stress/compose~anonymous|0 $closure-stress/expensiveComputation $closure-stress/memoize~anonymous|0 $closure-stress/emptyClosure~anonymous|0 $closure-stress/testReduceWithClosure~anonymous|1 $closure-stress/emptyClosure~anonymous|0 $closure-stress/captureI32Param~anonymous|0 $closure-stress/simpleClosureArray~anonymous|1 $closure-stress/simpleClosureArray~anonymous|2 $closure-stress/makeFactorial~anonymous|0 $closure-stress/captureSmallTypes~anonymous|0 $closure-stress/testSharedMutation~anonymous|0 $closure-stress/manyClosuresSameEnv~anonymous|1 $closure-stress/manyClosuresSameEnv~anonymous|2 $closure-stress/manyClosuresSameEnv~anonymous|3 $closure-stress/manyClosuresSameEnv~anonymous|4 $closure-stress/captureI32Param~anonymous|0 $closure-stress/manyCaptures~anonymous|0 $closure-stress/simpleIIFE~anonymous|0 $closure-stress/captureI32Param~anonymous|0 $closure-stress/captureI32Param~anonymous|0 $closure-stress/testSharedMutation~anonymous|0 $closure-stress/interleavedClosures~anonymous|2 $closure-stress/interleavedClosures~anonymous|3 $closure-stress/captureString~anonymous|0 $closure-stress/mutateStringRef~anonymous|0 $closure-stress/captureString~anonymous|0 $closure-stress/makeCounter~anonymous|0 $closure-stress/testNestedClosureFunctions~anonymous|0 $closure-stress/testRangeWithClosure~anonymous|0 $closure-stress/testReduceWithClosure~anonymous|1 $closure-stress/captureI32Param~anonymous|0 $closure-stress/makeCounter~anonymous|0 $closure-stress/testDeeplyNestedClosures~anonymous|0~anonymous|0~anonymous|0 $closure-stress/testDeeplyNestedClosures~anonymous|0~anonymous|0 $closure-stress/testDeeplyNestedClosures~anonymous|0 $closure-stress/makeCounter~anonymous|0 $closure-stress/captureI32Param~anonymous|0)
 (export "memory" (memory $0))
 (start $~start)
 (func $closure-stress/captureI32Param~anonymous|0 (result i32)
  global.get $~lib/__closure_env
  i32.load offset=4
 )
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1280
  call $~lib/rt/itcms/__visit
  i32.const 2128
  call $~lib/rt/itcms/__visit
  i32.const 2320
  call $~lib/rt/itcms/__visit
  i32.const 3024
  call $~lib/rt/itcms/__visit
  i32.const 1088
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
     i32.const 1152
     i32.const 160
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
    i32.const 1152
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink$368
   local.get $0
   i32.load offset=4
   i32.const -4
   i32.and
   local.tee $1
   i32.eqz
   if
    local.get $0
    i32.load offset=8
    i32.eqz
    local.get $0
    i32.const 37348
    i32.lt_u
    i32.and
    i32.eqz
    if
     i32.const 0
     i32.const 1152
     i32.const 128
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/itcms/Object#unlink$368
   end
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1152
    i32.const 132
    i32.const 16
    call $~lib/builtins/abort
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
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 4496
   i32.load
   i32.gt_u
   if
    i32.const 1280
    i32.const 1344
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 2
   i32.shl
   i32.const 4500
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
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1424
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $3
   local.get $3
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $2
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
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
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
  local.get $2
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.tee $1
  i32.load offset=96
  i32.eq
  if
   local.get $1
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $3
    i32.rotl
    i32.and
    local.set $3
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $3
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $2
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
   i32.const 1424
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
   i32.const 1424
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
    i32.const 1424
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
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1424
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
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
   i32.const 1424
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
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
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
   i32.const 1424
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
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
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1424
   i32.const 382
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
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $3
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1424
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   local.tee $5
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $5
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
    i32.const 1424
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $3
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $3
  i32.const 8
  i32.sub
  local.tee $3
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
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  i32.store
  local.get $0
  local.get $3
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
  i32.const 37360
  i32.const 0
  i32.store
  i32.const 38928
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
    i32.const 37360
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
      i32.const 37360
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
  i32.const 37360
  i32.const 38932
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 37360
  global.set $~lib/rt/tlsf/ROOT
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
      local.tee $2
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $2
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
      i32.const 37348
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
       local.tee $2
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $2
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
     i32.const 1152
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 37348
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
     local.tee $0
     i32.const 37348
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1424
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load
      i32.const 1
      i32.or
      i32.store
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   i32.store offset=4
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   i32.store offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
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
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 334
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
     i32.const 1424
     i32.const 347
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
   i32.const 1088
   i32.const 1424
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
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
  local.tee $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   memory.size
   local.tee $1
   local.get $3
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $3
    i32.const 536870910
    i32.lt_u
    if (result i32)
     local.get $3
     i32.const 1
     i32.const 27
     local.get $3
     i32.clz
     i32.sub
     i32.shl
     i32.add
     i32.const 1
     i32.sub
    else
     local.get $3
    end
   else
    local.get $3
   end
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
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1424
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
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
   i32.const 1424
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
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
   i32.const 1424
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
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
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1088
   i32.const 1152
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt$69
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
      br $__inlined_func$~lib/rt/itcms/interrupt$69
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/total
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
 (func $closure-stress/captureI32Param (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store offset=8
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $closure-stress/captureI64Param~anonymous|0 (result i64)
  global.get $~lib/__closure_env
  i64.load offset=8
 )
 (func $closure-stress/captureI64Param (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 16
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i64.store offset=12
  i32.const 8
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.const 2
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
 )
 (func $closure-stress/captureF32Param~anonymous|0 (result f32)
  global.get $~lib/__closure_env
  f32.load offset=4
 )
 (func $closure-stress/captureF32Param (param $0 f32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  f32.store offset=8
  i32.const 8
  i32.const 6
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.const 3
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
 )
 (func $closure-stress/captureF64Param~anonymous|0 (result f64)
  global.get $~lib/__closure_env
  f64.load offset=8
 )
 (func $closure-stress/captureF64Param (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 16
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  f64.store offset=12
  i32.const 8
  i32.const 7
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.const 4
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
 )
 (func $closure-stress/captureBool~anonymous|0 (result i32)
  global.get $~lib/__closure_env
  i32.load8_u offset=4
 )
 (func $closure-stress/captureBool (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store8 offset=8
  i32.const 8
  i32.const 8
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.const 5
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $closure-stress/captureMultipleI32~anonymous|0 (result i32)
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=12
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.add
  i32.add
 )
 (func $closure-stress/captureMultipleI32 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 16
  call $~lib/rt/tlsf/allocateBlock
  local.tee $4
  i32.const 4
  i32.add
  local.tee $3
  i32.const 0
  i32.store
  local.get $4
  local.get $0
  i32.store offset=8
  local.get $4
  local.get $1
  i32.store offset=12
  local.get $4
  local.get $2
  i32.store offset=16
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.const 6
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
 )
 (func $closure-stress/captureMixedTypes~anonymous|0 (result f64)
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=4
  f64.convert_i32_s
  local.get $0
  i64.load offset=8
  f64.convert_i64_s
  f64.add
  local.get $0
  f32.load offset=16
  f64.promote_f32
  f64.add
  local.get $0
  f64.load offset=24
  f64.add
 )
 (func $closure-stress/capture8Params~anonymous|0 (result i32)
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=32
  local.get $0
  i32.load offset=28
  local.get $0
  i32.load offset=24
  local.get $0
  i32.load offset=20
  local.get $0
  i32.load offset=16
  local.get $0
  i32.load offset=12
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.add
  i32.add
  i32.add
  i32.add
  i32.add
  i32.add
  i32.add
 )
 (func $closure-stress/captureParamsAndLocals~anonymous|0 (result i32)
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=16
  local.get $0
  i32.load offset=12
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.add
  i32.add
  i32.add
 )
 (func $closure-stress/makeCounter~anonymous|0 (result i32)
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $0
  i32.load offset=4
 )
 (func $closure-stress/makeCounter (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $1
  i32.const 4
  i32.add
  local.tee $0
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=8
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.const 10
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
 )
 (func $closure-stress/testBidirectionalMutation~anonymous|0 (param $0 i32)
  global.get $~lib/__closure_env
  local.get $0
  i32.store offset=4
 )
 (func $closure-stress/testSharedMutation~anonymous|0
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
 )
 (func $closure-stress/testSharedMutation~anonymous|1
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  i32.store offset=4
 )
 (func $closure-stress/testOuterScopeMutation~anonymous|0
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.shl
  i32.store offset=4
 )
 (func $closure-stress/curriedAdd~anonymous|0 (param $0 i32) (result i32)
  global.get $~lib/__closure_env
  i32.load offset=4
  local.get $0
  i32.add
 )
 (func $closure-stress/makeGreaterThan~anonymous|0 (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/__closure_env
  i32.load offset=4
  i32.gt_s
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
   i32.const 1152
   i32.const 295
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
 (func $closure-stress/simpleClosureArray~anonymous|1 (result i32)
  global.get $~lib/__closure_env
  i32.load offset=8
 )
 (func $closure-stress/simpleClosureArray~anonymous|2 (result i32)
  global.get $~lib/__closure_env
  i32.load offset=12
 )
 (func $closure-stress/testMapWithClosure~anonymous|0 (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/__closure_env
  i32.load offset=4
  i32.mul
 )
 (func $closure-stress/testFilterWithClosure~anonymous|0 (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/__closure_env
  i32.load offset=4
  i32.ge_s
 )
 (func $closure-stress/testReduceWithClosure~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $closure-stress/testReduceWithClosure~anonymous|1 (result i32)
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.add
 )
 (func $closure-stress/makeAdder~anonymous|0 (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/__closure_env
  i32.load offset=4
  i32.add
 )
 (func $closure-stress/makeAdder (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store offset=8
  i32.const 8
  i32.const 11
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.const 35
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $closure-stress/makeMultiplier (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store offset=8
  i32.const 8
  i32.const 11
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.const 36
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $closure-stress/expensiveComputation (param $0 i32) (result i32)
  global.get $closure-stress/callCount
  i32.const 1
  i32.add
  global.set $closure-stress/callCount
  local.get $0
  local.get $0
  i32.mul
 )
 (func $closure-stress/emptyClosure~anonymous|0 (result i32)
  i32.const 42
 )
 (func $closure-stress/multipleClosureReturns (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 16
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  i32.const 10
  i32.store offset=8
  local.get $2
  i32.const 20
  i32.store offset=12
  local.get $2
  i32.const 30
  i32.store offset=16
  local.get $0
  if
   local.get $0
   i32.const 1
   i32.eq
   if
    i32.const 8
    i32.const 4
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.const 44
    i32.store
   else
    i32.const 8
    i32.const 4
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.const 45
    i32.store
   end
  else
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 43
   i32.store
  end
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $closure-stress/makeFactorial~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 1
  local.set $2
  i32.const 2
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.ge_s
   if
    local.get $1
    local.get $2
    i32.mul
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $closure-stress/captureSmallTypes~anonymous|0 (result i32)
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  i32.load16_u offset=8
  local.get $0
  i32.load16_s offset=6
  local.get $0
  i32.load8_s offset=4
  local.get $0
  i32.load8_u offset=5
  i32.add
  i32.add
  i32.add
 )
 (func $closure-stress/manyClosuresSameEnv~anonymous|1
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.add
  i32.store offset=4
 )
 (func $closure-stress/manyClosuresSameEnv~anonymous|2
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.add
  i32.store offset=4
 )
 (func $closure-stress/manyClosuresSameEnv~anonymous|3
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.add
  i32.store offset=4
 )
 (func $closure-stress/manyClosuresSameEnv~anonymous|4
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 5
  i32.add
  i32.store offset=4
 )
 (func $closure-stress/manyCaptures~anonymous|0 (result i32)
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=48
  local.get $0
  i32.load offset=44
  local.get $0
  i32.load offset=40
  local.get $0
  i32.load offset=36
  local.get $0
  i32.load offset=32
  local.get $0
  i32.load offset=28
  local.get $0
  i32.load offset=24
  local.get $0
  i32.load offset=20
  local.get $0
  i32.load offset=16
  local.get $0
  i32.load offset=12
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.add
  i32.add
  i32.add
  i32.add
  i32.add
  i32.add
  i32.add
  i32.add
  i32.add
  i32.add
  i32.add
 )
 (func $closure-stress/simpleIIFE~anonymous|0 (result i32)
  global.get $~lib/__closure_env
  i32.load offset=4
  i32.const 9
  i32.add
 )
 (func $closure-stress/interleavedClosures~anonymous|2
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 10
  i32.add
  i32.store offset=4
 )
 (func $closure-stress/interleavedClosures~anonymous|3
  (local $0 i32)
  global.get $~lib/__closure_env
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 100
  i32.add
  i32.store offset=4
 )
 (func $closure-stress/captureString~anonymous|0 (result i32)
  global.get $~lib/__closure_env
  i32.load offset=4
 )
 (func $closure-stress/testRangeWithClosure~anonymous|0 (param $0 i32)
  (local $1 i32)
  global.get $~lib/__closure_env
  local.tee $1
  local.get $1
  i32.load offset=4
  local.get $0
  i32.add
  i32.store offset=4
 )
 (func $closure-stress/testDeeplyNestedClosures~anonymous|0~anonymous|0~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/__closure_env
  local.tee $1
  i32.load
  local.set $0
  local.get $1
  i32.load offset=4
  local.get $0
  i32.load
  i32.load offset=4
  local.get $0
  i32.load offset=4
  i32.add
  i32.add
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner3
   block $folding-inner2
    block $folding-inner1
     block $invalid
      block $"~lib/map/Map<i32,i32>"
       block $closure-stress/Counter
        block $~lib/array/Array<i32>
         block $~lib/array/Array<%28%29=>i32>
          block $~lib/arraybuffer/ArrayBufferView
           block $~lib/string/String
            block $~lib/arraybuffer/ArrayBuffer
             block $~lib/object/Object
              local.get $0
              i32.const 8
              i32.sub
              i32.load
              br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $~lib/array/Array<%28%29=>i32> $~lib/array/Array<i32> $closure-stress/Counter $folding-inner1 $"~lib/map/Map<i32,i32>" $folding-inner1 $folding-inner1 $invalid
             end
             return
            end
            return
           end
           return
          end
          local.get $0
          i32.load
          call $~lib/rt/itcms/__visit
          return
         end
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 4580
         i32.lt_s
         br_if $folding-inner3
         global.get $~lib/memory/__stack_pointer
         i32.const 0
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store
         local.get $0
         i32.load offset=4
         local.set $1
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store
         local.get $1
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
         br $folding-inner2
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 4580
        i32.lt_s
        br_if $folding-inner3
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        br $folding-inner2
       end
       return
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 4580
      i32.lt_s
      br_if $folding-inner3
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      i32.load
      call $~lib/rt/itcms/__visit
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      i32.load offset=8
      call $~lib/rt/itcms/__visit
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      return
     end
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4580
    i32.lt_s
    br_if $folding-inner3
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
    call $~lib/rt/itcms/__visit
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   call $~lib/rt/itcms/__visit
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 37376
  i32.const 37424
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~start
  call $start:closure-stress
 )
 (func $~lib/array/Array<%28%29=>i32>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.const 13
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 2128
   i32.const 2176
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  local.get $0
  local.get $0
  i32.const 8
  i32.le_u
  select
  i32.const 2
  i32.shl
  local.tee $3
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $1
  local.get $2
  i32.store
  local.get $1
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
    i32.const 2128
    i32.const 2176
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   block $__inlined_func$~lib/rt/itcms/__renew$310
    i32.const 1073741820
    local.get $2
    i32.const 1
    i32.shl
    local.tee $2
    local.get $2
    i32.const 1073741820
    i32.ge_u
    select
    local.tee $2
    i32.const 8
    local.get $1
    local.get $1
    i32.const 8
    i32.le_u
    select
    i32.const 2
    i32.shl
    local.tee $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.tee $3
    local.get $0
    i32.load
    local.tee $2
    i32.const 20
    i32.sub
    local.tee $4
    i32.load
    i32.const -4
    i32.and
    i32.const 16
    i32.sub
    i32.le_u
    if
     local.get $4
     local.get $3
     i32.store offset=16
     local.get $2
     local.set $1
     br $__inlined_func$~lib/rt/itcms/__renew$310
    end
    local.get $3
    local.get $4
    i32.load offset=12
    call $~lib/rt/itcms/__new
    local.tee $1
    local.get $2
    local.get $3
    local.get $4
    i32.load offset=16
    local.tee $4
    local.get $3
    local.get $4
    i32.lt_u
    select
    memory.copy
   end
   local.get $1
   local.get $2
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
   local.get $3
   i32.store offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<%28%29=>i32>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1280
    i32.const 2176
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   call $~lib/array/ensureCapacity
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $3
   i32.store offset=12
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<%28%29=>i32>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1280
   i32.const 2176
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  i32.eqz
  if
   i32.const 2320
   i32.const 2176
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<i32>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.const 14
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 2128
   i32.const 2176
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  local.get $0
  local.get $0
  i32.const 8
  i32.le_u
  select
  i32.const 2
  i32.shl
  local.tee $3
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $1
  local.get $2
  i32.store
  local.get $1
  local.get $2
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/array/Array<i32>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1280
    i32.const 2176
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   call $~lib/array/ensureCapacity
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $3
   i32.store offset=12
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1280
   i32.const 2176
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
 (func $closure-stress/captureArray~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $1
  i32.load offset=4
  local.tee $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $0
  i32.store
  local.get $0
  i32.const 1
  call $~lib/array/Array<i32>#__get
  local.get $2
  i32.add
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  i32.const 2
  call $~lib/array/Array<i32>#__get
  local.get $0
  i32.add
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-stress/mutateCapturedArray~anonymous|0
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=4
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  local.get $1
  i32.const 0
  local.get $2
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 1
  i32.shl
  call $~lib/array/Array<i32>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  local.get $1
  i32.const 1
  local.get $2
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 1
  i32.shl
  call $~lib/array/Array<i32>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.store offset=4
  local.get $1
  i32.const 2
  local.get $0
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 1
  i32.shl
  call $~lib/array/Array<i32>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-stress/captureClassInstance~anonymous|0
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $1
  i32.load offset=4
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.load
  i32.const 1
  i32.add
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-stress/captureClassInstance~anonymous|1 (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  i32.load offset=4
  local.tee $0
  i32.store
  local.get $0
  i32.load
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#get:length (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $"~lib/map/Map<i32,i32>#find" (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
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
    i32.load offset=8
    local.tee $2
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     local.get $1
     local.get $0
     i32.load
     i32.eq
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
 (func $"~lib/map/Map<i32,i32>#set" (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $1
   local.get $1
   i32.const -1028477379
   i32.mul
   i32.const 374761397
   i32.add
   i32.const 17
   i32.rotl
   i32.const 668265263
   i32.mul
   local.tee $3
   i32.const 15
   i32.shr_u
   local.get $3
   i32.xor
   i32.const -2048144777
   i32.mul
   local.tee $3
   i32.const 13
   i32.shr_u
   local.get $3
   i32.xor
   i32.const -1028477379
   i32.mul
   local.tee $3
   i32.const 16
   i32.shr_u
   local.get $3
   i32.xor
   local.tee $7
   call $"~lib/map/Map<i32,i32>#find"
   local.tee $3
   if
    local.get $3
    local.get $2
    i32.store offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load offset=12
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     i32.load offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     i32.load offset=12
     i32.const 3
     i32.mul
     i32.const 4
     i32.div_s
     i32.lt_s
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      local.get $0
      i32.load offset=4
     else
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      local.get $0
      i32.load offset=4
      i32.const 1
      i32.shl
      i32.const 1
      i32.or
     end
     local.set $8
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 4580
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i64.const 0
     i64.store
     global.get $~lib/memory/__stack_pointer
     i64.const 0
     i64.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.const 1
     i32.add
     local.tee $3
     i32.const 2
     i32.shl
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.tee $9
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.const 3
     i32.shl
     i32.const 3
     i32.div_s
     local.tee $6
     i32.const 12
     i32.mul
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.tee $4
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     i32.load offset=8
     local.set $10
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $10
     local.get $0
     i32.load offset=16
     i32.const 12
     i32.mul
     i32.add
     local.set $5
     local.get $4
     local.set $3
     loop $while-continue|0
      local.get $5
      local.get $10
      i32.ne
      if
       local.get $10
       i32.load offset=8
       i32.const 1
       i32.and
       i32.eqz
       if
        local.get $3
        local.get $10
        i32.load
        local.tee $11
        i32.store
        local.get $3
        local.get $10
        i32.load offset=4
        i32.store offset=4
        local.get $3
        local.get $9
        local.get $8
        local.get $11
        i32.const -1028477379
        i32.mul
        i32.const 374761397
        i32.add
        i32.const 17
        i32.rotl
        i32.const 668265263
        i32.mul
        local.tee $11
        local.get $11
        i32.const 15
        i32.shr_u
        i32.xor
        i32.const -2048144777
        i32.mul
        local.tee $11
        local.get $11
        i32.const 13
        i32.shr_u
        i32.xor
        i32.const -1028477379
        i32.mul
        local.tee $11
        local.get $11
        i32.const 16
        i32.shr_u
        i32.xor
        i32.and
        i32.const 2
        i32.shl
        i32.add
        local.tee $11
        i32.load
        i32.store offset=8
        local.get $11
        local.get $3
        i32.store
        local.get $3
        i32.const 12
        i32.add
        local.set $3
       end
       local.get $10
       i32.const 12
       i32.add
       local.set $10
       br $while-continue|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store offset=12
     local.get $0
     local.get $9
     i32.store
     local.get $0
     local.get $9
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     local.get $8
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=12
     local.get $0
     local.get $4
     i32.store offset=8
     local.get $0
     local.get $4
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     local.get $6
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=12
     local.get $0
     local.get $0
     i32.load offset=20
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=8
    local.tee $3
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $4
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $3
    local.get $4
    i32.const 12
    i32.mul
    i32.add
    local.tee $3
    local.get $1
    i32.store
    local.get $3
    local.get $2
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $0
    i32.load offset=20
    i32.const 1
    i32.add
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $3
    local.get $1
    local.get $7
    local.get $0
    i32.load offset=4
    i32.and
    i32.const 2
    i32.shl
    i32.add
    local.tee $0
    i32.load
    i32.store offset=8
    local.get $0
    local.get $3
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 37376
  i32.const 37424
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $closure-stress/memoize~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/__closure_env
   local.tee $2
   i32.load offset=4
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   local.get $0
   local.get $0
   i32.const -1028477379
   i32.mul
   i32.const 374761397
   i32.add
   i32.const 17
   i32.rotl
   i32.const 668265263
   i32.mul
   local.tee $3
   local.get $3
   i32.const 15
   i32.shr_u
   local.tee $1
   i32.xor
   i32.const -2048144777
   i32.mul
   local.tee $4
   local.get $4
   i32.const 13
   i32.shr_u
   i32.xor
   i32.const -1028477379
   i32.mul
   local.tee $4
   local.get $4
   i32.const 16
   i32.shr_u
   i32.xor
   call $"~lib/map/Map<i32,i32>#find"
   i32.const 0
   i32.ne
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $2
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4580
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    local.get $2
    local.get $0
    local.get $1
    local.get $3
    i32.xor
    i32.const -2048144777
    i32.mul
    local.tee $0
    local.get $0
    i32.const 13
    i32.shr_u
    i32.xor
    i32.const -1028477379
    i32.mul
    local.tee $0
    local.get $0
    i32.const 16
    i32.shr_u
    i32.xor
    call $"~lib/map/Map<i32,i32>#find"
    local.tee $0
    i32.eqz
    if
     i32.const 3024
     i32.const 3088
     i32.const 105
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.load offset=4
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
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=8
   local.tee $1
   i32.store offset=4
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   local.get $1
   i32.load
   call_indirect (type $1)
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $2
   i32.store
   local.get $2
   local.get $0
   local.get $1
   call $"~lib/map/Map<i32,i32>#set"
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 37376
  i32.const 37424
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  local.get $1
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   local.get $0
   i32.eqz
   i32.or
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $3
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.ne
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $3
   local.tee $0
   i32.const 4
   i32.ge_u
   if (result i32)
    local.get $2
    i32.const 7
    i32.and
    local.get $1
    i32.const 7
    i32.and
    i32.or
   else
    i32.const 1
   end
   i32.eqz
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
   block $__inlined_func$~lib/util/string/compareImpl$223
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
      br_if $__inlined_func$~lib/util/string/compareImpl$223
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
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   i32.eqz
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $closure-stress/mutateStringRef~anonymous|0 (param $0 i32)
  (local $1 i32)
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
   i32.const 4580
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/__closure_env
   local.tee $4
   i32.load offset=4
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const -2
   i32.and
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.tee $1
   i32.store
   block $__inlined_func$~lib/string/String#concat$376
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const -2
    i32.and
    local.tee $5
    local.get $3
    i32.add
    local.tee $0
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 3936
     local.set $0
     br $__inlined_func$~lib/string/String#concat$376
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store offset=4
    local.get $0
    local.get $2
    local.get $3
    memory.copy
    local.get $0
    local.get $3
    i32.add
    local.get $1
    local.get $5
    memory.copy
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 37376
  i32.const 37424
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $closure-stress/makeAdderPair (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  call $~lib/array/Array<%28%29=>i32>#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.const 73
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  i32.const 0
  local.get $2
  call $~lib/array/Array<%28%29=>i32>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.const 74
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  i32.const 1
  local.get $2
  call $~lib/array/Array<%28%29=>i32>#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $start:closure-stress
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 172
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 172
   memory.fill
   memory.size
   i32.const 16
   i32.shl
   i32.const 37348
   i32.sub
   i32.const 1
   i32.shr_u
   global.set $~lib/rt/itcms/threshold
   i32.const 1204
   i32.const 1200
   i32.store
   i32.const 1208
   i32.const 1200
   i32.store
   i32.const 1200
   global.set $~lib/rt/itcms/pinSpace
   i32.const 1236
   i32.const 1232
   i32.store
   i32.const 1240
   i32.const 1232
   i32.store
   i32.const 1232
   global.set $~lib/rt/itcms/toSpace
   i32.const 1380
   i32.const 1376
   i32.store
   i32.const 1384
   i32.const 1376
   i32.store
   i32.const 1376
   global.set $~lib/rt/itcms/fromSpace
   global.get $~lib/memory/__stack_pointer
   i32.const 42
   call $closure-stress/captureI32Param
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 42
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 13
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const -1
   call $closure-stress/captureI32Param
   local.tee $0
   i32.store offset=4
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const -1
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 14
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 2147483647
   call $closure-stress/captureI32Param
   local.tee $0
   i32.store offset=8
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 2147483647
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 15
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i64.const 42
   call $closure-stress/captureI64Param
   local.tee $0
   i32.store offset=12
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $8)
   i64.const 42
   i64.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 21
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i64.const 9223372036854775807
   call $closure-stress/captureI64Param
   local.tee $0
   i32.store offset=16
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $8)
   i64.const 9223372036854775807
   i64.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 22
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   f32.const 3.140000104904175
   call $closure-stress/captureF32Param
   local.tee $0
   i32.store offset=20
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $9)
   f32.const 3.140000104904175
   f32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 28
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   f32.const 0
   call $closure-stress/captureF32Param
   local.tee $0
   i32.store offset=24
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $9)
   f32.const 0
   f32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 29
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   f64.const 3.141592653589793
   call $closure-stress/captureF64Param
   local.tee $0
   i32.store offset=28
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $5)
   f64.const 3.141592653589793
   f64.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 35
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   f64.const inf
   call $closure-stress/captureF64Param
   local.tee $0
   i32.store offset=32
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $5)
   f64.const inf
   f64.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 36
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   call $closure-stress/captureBool
   local.tee $0
   i32.store offset=36
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.eqz
   if
    i32.const 0
    i32.const 1488
    i32.const 42
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $closure-stress/captureBool
   local.tee $0
   i32.store offset=40
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   if
    i32.const 0
    i32.const 1488
    i32.const 43
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 2
   i32.const 3
   call $closure-stress/captureMultipleI32
   local.tee $0
   i32.store offset=44
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 53
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 100
   i32.const 200
   i32.const 300
   call $closure-stress/captureMultipleI32
   local.tee $0
   i32.store offset=48
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 600
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 54
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 32
   call $~lib/rt/tlsf/allocateBlock
   local.tee $3
   i32.const 0
   i32.store offset=4
   local.get $3
   i32.const 1
   i32.store offset=8
   local.get $3
   i64.const 2
   i64.store offset=12
   local.get $3
   f32.const 3
   f32.store offset=20
   local.get $3
   f64.const 4
   f64.store offset=28
   i32.const 8
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 7
   i32.store
   local.get $4
   local.get $3
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $4
   i32.store offset=52
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $5)
   f64.const 10
   f64.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 60
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 36
   call $~lib/rt/tlsf/allocateBlock
   local.tee $3
   i32.const 0
   i32.store offset=4
   local.get $3
   i32.const 1
   i32.store offset=8
   local.get $3
   i32.const 2
   i32.store offset=12
   local.get $3
   i32.const 3
   i32.store offset=16
   local.get $3
   i32.const 4
   i32.store offset=20
   local.get $3
   i32.const 5
   i32.store offset=24
   local.get $3
   i32.const 6
   i32.store offset=28
   local.get $3
   i32.const 7
   i32.store offset=32
   local.get $3
   i32.const 8
   i32.store offset=36
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 8
   i32.store
   local.get $4
   local.get $3
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $4
   i32.store offset=56
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $0)
   i32.const 36
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 69
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 20
   call $~lib/rt/tlsf/allocateBlock
   local.tee $3
   i32.const 0
   i32.store offset=4
   local.get $3
   i32.const 1
   i32.store offset=8
   local.get $3
   i32.const 2
   i32.store offset=12
   local.get $3
   i32.const 100
   i32.store offset=16
   local.get $3
   i32.const 200
   i32.store offset=20
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 9
   i32.store
   local.get $4
   local.get $3
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $4
   i32.store offset=60
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $0)
   i32.const 303
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 77
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   call $closure-stress/makeCounter
   global.set $closure-stress/counter1
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/counter1
   local.tee $0
   i32.store offset=64
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 92
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/counter1
   local.tee $0
   i32.store offset=68
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 93
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/counter1
   local.tee $0
   i32.store offset=72
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 94
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   call $closure-stress/makeCounter
   global.set $closure-stress/counter2
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/counter2
   local.tee $0
   i32.store offset=76
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 96
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/counter1
   local.tee $0
   i32.store offset=80
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 97
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 28
   memory.fill
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 4
   i32.add
   local.set $3
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 11
   i32.store
   local.get $4
   local.get $3
   i32.store offset=4
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 12
   i32.store
   local.get $5
   local.get $3
   i32.store offset=4
   local.get $5
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 10
   local.get $4
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $5
   i32.load
   call_indirect (type $0)
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 106
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=16
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 20
   local.get $4
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=20
   local.get $5
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $5
   i32.load
   call_indirect (type $0)
   i32.const 20
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 108
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=24
   local.get $5
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $5
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 20
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 112
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 40
   memory.fill
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 4
   i32.add
   local.set $3
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 13
   i32.store
   local.get $4
   local.get $3
   i32.store offset=4
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 14
   i32.store
   local.get $5
   local.get $3
   i32.store offset=4
   local.get $5
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.const 15
   i32.store
   local.get $6
   local.get $3
   i32.store offset=4
   local.get $6
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=12
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=16
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=20
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=24
   local.get $5
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $5
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=28
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=32
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=36
   local.get $6
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $6
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 127
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 28
   memory.fill
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 4
   i32.add
   local.set $3
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 5
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 16
   i32.store
   local.get $4
   local.get $3
   i32.store offset=4
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 17
   i32.store
   local.get $5
   local.get $3
   i32.store offset=4
   local.get $5
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $5
   i32.load
   call_indirect (type $0)
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 136
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=16
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=20
   local.get $5
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $5
   i32.load
   call_indirect (type $0)
   i32.const 20
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 138
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=24
   local.get $5
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $5
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 20
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 142
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 10
   i32.store offset=8
   i32.const 8
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.const 18
   i32.store
   local.get $3
   local.get $0
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $3
   global.set $closure-stress/addTo10
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/addTo10
   local.tee $0
   i32.store offset=84
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 5
   local.get $0
   i32.load
   call_indirect (type $1)
   i32.const 15
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 153
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/addTo10
   local.tee $0
   i32.store offset=88
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 20
   local.get $0
   i32.load
   call_indirect (type $1)
   i32.const 30
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 154
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 5
   i32.store offset=8
   i32.const 8
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.const 19
   i32.store
   local.get $3
   local.get $0
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $3
   global.set $closure-stress/greaterThan5
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/greaterThan5
   local.tee $0
   i32.store offset=92
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 10
   local.get $0
   i32.load
   call_indirect (type $1)
   i32.eqz
   if
    i32.const 0
    i32.const 1488
    i32.const 161
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/greaterThan5
   local.tee $0
   i32.store offset=96
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 3
   local.get $0
   i32.load
   call_indirect (type $1)
   if
    i32.const 0
    i32.const 1488
    i32.const 162
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 24
   memory.fill
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 16
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 4
   i32.add
   local.set $3
   local.get $0
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 3
   call $~lib/array/Array<%28%29=>i32>#constructor
   local.tee $4
   i32.store
   local.get $0
   i32.const 10
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 20
   i32.store
   local.get $5
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $4
   i32.const 0
   local.get $5
   call $~lib/array/Array<%28%29=>i32>#__set
   local.get $0
   i32.const 20
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 21
   i32.store
   local.get $5
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   local.get $4
   i32.const 1
   local.get $5
   call $~lib/array/Array<%28%29=>i32>#__set
   local.get $0
   i32.const 30
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 22
   i32.store
   local.get $0
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $4
   i32.const 2
   local.get $0
   call $~lib/array/Array<%28%29=>i32>#__set
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.const 0
   call $~lib/array/Array<%28%29=>i32>#__get
   local.tee $0
   i32.store offset=12
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.const 1
   call $~lib/array/Array<%28%29=>i32>#__get
   local.tee $3
   i32.store offset=16
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $0)
   local.get $0
   i32.add
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.const 2
   call $~lib/array/Array<%28%29=>i32>#__get
   local.tee $3
   i32.store offset=20
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $0)
   local.get $0
   i32.add
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 60
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 183
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   call $closure-stress/closureInConditional
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 199
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $closure-stress/closureInConditional
   i32.const 20
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 200
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 42
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 25
   i32.store
   local.get $4
   local.get $0
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $0)
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 42
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 216
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 3
   call $~lib/array/Array<i32>#constructor
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $3
   i32.store
   local.get $3
   i32.const 0
   i32.const 1
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $3
   i32.store
   local.get $3
   i32.const 1
   i32.const 2
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $3
   i32.store
   local.get $3
   i32.const 2
   i32.const 3
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 26
   i32.store
   local.get $4
   local.get $0
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 233
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 32
   memory.fill
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 4
   i32.add
   local.set $3
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 3
   call $~lib/array/Array<i32>#constructor
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $4
   i32.store
   local.get $4
   i32.const 0
   i32.const 1
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $4
   i32.store
   local.get $4
   i32.const 1
   i32.const 2
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $0
   i32.store
   local.get $0
   i32.const 2
   i32.const 3
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 27
   i32.store
   local.get $4
   local.get $3
   i32.store offset=4
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 28
   i32.store
   local.get $5
   local.get $3
   i32.store offset=4
   local.get $5
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=12
   local.get $5
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $5
   i32.load
   call_indirect (type $0)
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 250
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=16
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=20
   local.get $5
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $5
   i32.load
   call_indirect (type $0)
   i32.const 12
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 252
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=24
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=28
   local.get $5
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $5
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 24
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 257
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 24
   memory.fill
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $3
   i32.const 4
   i32.add
   local.set $4
   local.get $3
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 0
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.const 29
   i32.store
   local.get $3
   local.get $4
   i32.store offset=4
   local.get $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 30
   i32.store
   local.get $5
   local.get $4
   i32.store offset=4
   local.get $5
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=12
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=16
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=20
   local.get $5
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $5
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 280
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 10
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 3
   call $~lib/array/Array<i32>#constructor
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.const 1
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 1
   i32.const 2
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 2
   i32.const 3
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   i32.const 8
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 31
   i32.store
   local.get $5
   local.get $0
   i32.const 4
   i32.add
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   call $~lib/array/Array<i32>#get:length
   call $~lib/array/Array<i32>#constructor
   local.tee $0
   i32.store offset=4
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    local.get $3
    call $~lib/array/Array<i32>#get:length
    local.get $2
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=12
     local.get $3
     local.get $2
     call $~lib/array/Array<i32>#__get
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=8
     local.get $5
     i32.load offset=4
     global.set $~lib/__closure_env
     local.get $0
     local.get $2
     local.get $6
     local.get $5
     i32.load
     call_indirect (type $1)
     call $~lib/array/Array<i32>#__set
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   call $~lib/array/Array<i32>#__get
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 1
   call $~lib/array/Array<i32>#__get
   local.get $2
   i32.add
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 2
   call $~lib/array/Array<i32>#__get
   local.get $2
   i32.add
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 60
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 306
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 4
   i32.add
   local.set $2
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 5
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 10
   call $~lib/array/Array<i32>#constructor
   local.tee $0
   i32.store
   loop $for-loop|1
    local.get $1
    i32.const 10
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     local.get $1
     local.get $1
     call $~lib/array/Array<i32>#__set
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.const 32
   i32.store
   local.get $3
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   i32.const 0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/array/Array<i32>#constructor
   local.tee $4
   i32.store
   loop $for-loop|02
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $0
    call $~lib/array/Array<i32>#get:length
    local.get $2
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     local.get $2
     call $~lib/array/Array<i32>#__get
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=8
     local.get $3
     i32.load offset=4
     global.set $~lib/__closure_env
     local.get $3
     i32.load
     call_indirect (type $1)
     if
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      local.get $2
      call $~lib/array/Array<i32>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 4580
      i32.lt_s
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store
      local.get $4
      local.get $4
      i32.load offset=12
      local.tee $6
      i32.const 1
      i32.add
      local.tee $7
      call $~lib/array/ensureCapacity
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store
      local.get $4
      i32.load offset=4
      local.get $6
      i32.const 2
      i32.shl
      i32.add
      local.get $5
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store
      local.get $4
      local.get $7
      i32.store offset=12
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|02
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   call $~lib/array/Array<i32>#get:length
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 5
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 330
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   local.set $0
   i32.const 0
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 20
   memory.fill
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 12
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 4
   i32.add
   local.set $3
   local.get $2
   i32.const 0
   i32.store offset=4
   local.get $2
   i32.const 100
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   call $~lib/array/Array<i32>#constructor
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.const 1
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 1
   i32.const 2
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 2
   i32.const 3
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 3
   i32.const 4
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 4
   i32.const 5
   call $~lib/array/Array<i32>#__set
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 2768
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   loop $for-loop|04
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $4
    call $~lib/array/Array<i32>#get:length
    local.get $0
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     local.get $4
     local.get $0
     call $~lib/array/Array<i32>#__get
     local.set $5
     global.get $~lib/memory/__stack_pointer
     i32.const 2768
     i32.store offset=4
     i32.const 2772
     i32.load
     global.set $~lib/__closure_env
     local.get $1
     local.get $5
     i32.const 2768
     i32.load
     call_indirect (type $4)
     local.set $1
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|04
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.const 34
   i32.store
   local.get $1
   local.get $3
   i32.store offset=4
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=16
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $1
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 115
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 357
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   call $closure-stress/makeAdder
   global.set $closure-stress/add5
   i32.const 10
   call $closure-stress/makeAdder
   global.set $closure-stress/add10
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/add5
   local.tee $0
   i32.store offset=100
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 3
   local.get $0
   i32.load
   call_indirect (type $1)
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 369
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/add10
   local.tee $0
   i32.store offset=104
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 3
   local.get $0
   i32.load
   call_indirect (type $1)
   i32.const 13
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 370
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/add10
   local.tee $0
   i32.store offset=112
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 0
   local.get $0
   i32.load
   call_indirect (type $1)
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/add5
   local.tee $1
   i32.store offset=108
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $1
   i32.load
   call_indirect (type $1)
   i32.const 15
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 371
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   call $closure-stress/makeMultiplier
   global.set $closure-stress/double
   i32.const 3
   call $closure-stress/makeMultiplier
   global.set $closure-stress/triple
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/double
   local.tee $0
   i32.store offset=116
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 5
   local.get $0
   i32.load
   call_indirect (type $1)
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 379
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/triple
   local.tee $0
   i32.store offset=120
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 5
   local.get $0
   i32.load
   call_indirect (type $1)
   i32.const 15
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 380
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/triple
   local.tee $0
   i32.store offset=128
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 4
   local.get $0
   i32.load
   call_indirect (type $1)
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/double
   local.tee $1
   i32.store offset=124
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $1
   i32.load
   call_indirect (type $1)
   i32.const 24
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 381
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/double
   local.tee $0
   i32.store offset=132
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/add5
   local.tee $1
   i32.store offset=136
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 12
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 0
   i32.store offset=4
   local.get $2
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $1
   i32.store offset=12
   i32.const 8
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 37
   i32.store
   local.get $0
   local.get $2
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $0
   global.set $closure-stress/addThenDouble
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/addThenDouble
   local.tee $0
   i32.store offset=140
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 3
   local.get $0
   i32.load
   call_indirect (type $1)
   i32.const 16
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 388
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 24
   memory.fill
   i32.const 0
   global.set $closure-stress/callCount
   global.get $~lib/memory/__stack_pointer
   i32.const 2928
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 12
   call $~lib/rt/tlsf/allocateBlock
   local.tee $1
   i32.const 4
   i32.add
   local.set $2
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 2928
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 17
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   i32.const 16
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $3
   local.get $4
   i32.store
   local.get $3
   local.get $4
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   i32.const 48
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $3
   local.get $4
   i32.store offset=8
   local.get $3
   local.get $4
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 4
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $3
   i32.store offset=8
   i32.const 8
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.const 39
   i32.store
   local.get $1
   local.get $2
   i32.store offset=4
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 5
   local.get $1
   i32.load
   call_indirect (type $1)
   i32.const 25
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 413
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $closure-stress/callCount
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 414
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 5
   local.get $1
   i32.load
   call_indirect (type $1)
   i32.const 25
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 415
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $closure-stress/callCount
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 416
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=16
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 3
   local.get $1
   i32.load
   call_indirect (type $1)
   i32.const 9
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 417
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $closure-stress/callCount
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 418
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=20
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 5
   local.get $1
   i32.load
   call_indirect (type $1)
   i32.const 25
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 419
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $closure-stress/callCount
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 420
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $closure-stress/callCount
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 424
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 3168
   i32.store offset=144
   i32.const 3172
   i32.load
   global.set $~lib/__closure_env
   i32.const 3168
   i32.load
   call_indirect (type $0)
   i32.const 42
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 434
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 12
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 10
   i32.store offset=8
   local.get $0
   i32.const 20
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 41
   i32.store
   local.get $2
   local.get $0
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 30
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 443
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 3232
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 3232
   i32.store offset=4
   i32.const 3236
   i32.load
   global.set $~lib/__closure_env
   i32.const 3232
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 42
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 451
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $closure-stress/multipleClosureReturns
   local.tee $0
   i32.store offset=148
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 467
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   call $closure-stress/multipleClosureReturns
   local.tee $0
   i32.store offset=152
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 20
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 468
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 2
   call $closure-stress/multipleClosureReturns
   local.tee $0
   i32.store offset=156
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 30
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 469
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3360
   global.set $closure-stress/fact
   global.get $~lib/memory/__stack_pointer
   i32.const 3360
   i32.store offset=160
   i32.const 3364
   i32.load
   global.set $~lib/__closure_env
   i32.const 5
   i32.const 3360
   i32.load
   call_indirect (type $1)
   i32.const 120
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 483
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/fact
   local.tee $0
   i32.store offset=164
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 6
   local.get $0
   i32.load
   call_indirect (type $1)
   i32.const 720
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 484
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 12
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 10
   i32.store8 offset=8
   local.get $0
   i32.const 20
   i32.store8 offset=9
   local.get $0
   i32.const 30
   i32.store16 offset=10
   local.get $0
   i32.const 40
   i32.store16 offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 47
   i32.store
   local.get $2
   local.get $0
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 100
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 496
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 48
   memory.fill
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 4
   i32.add
   local.set $1
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 48
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.const 49
   i32.store
   local.get $3
   local.get $1
   i32.store offset=4
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 50
   i32.store
   local.get $4
   local.get $1
   i32.store offset=4
   local.get $4
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 51
   i32.store
   local.get $5
   local.get $1
   i32.store offset=4
   local.get $5
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.const 52
   i32.store
   local.get $6
   local.get $1
   i32.store offset=4
   local.get $6
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $7
   i32.const 53
   i32.store
   local.get $7
   local.get $1
   i32.store offset=4
   local.get $7
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=24
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=28
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=32
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=36
   local.get $5
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $5
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=40
   local.get $6
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $6
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=44
   local.get $7
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $7
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 15
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 517
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 52
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 1
   i32.store offset=8
   local.get $0
   i32.const 2
   i32.store offset=12
   local.get $0
   i32.const 3
   i32.store offset=16
   local.get $0
   i32.const 4
   i32.store offset=20
   local.get $0
   i32.const 5
   i32.store offset=24
   local.get $0
   i32.const 6
   i32.store offset=28
   local.get $0
   i32.const 7
   i32.store offset=32
   local.get $0
   i32.const 8
   i32.store offset=36
   local.get $0
   i32.const 9
   i32.store offset=40
   local.get $0
   i32.const 10
   i32.store offset=44
   local.get $0
   i32.const 11
   i32.store offset=48
   local.get $0
   i32.const 12
   i32.store offset=52
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 54
   i32.store
   local.get $2
   local.get $0
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 78
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 529
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 55
   i32.store
   local.get $2
   local.get $0
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $2
   i32.store
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 539
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 10
   call $~lib/array/Array<%28%29=>i32>#constructor
   local.tee $2
   i32.store
   i32.const 0
   local.set $0
   loop $for-loop|05
    local.get $0
    i32.const 10
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     global.get $~lib/rt/tlsf/ROOT
     i32.eqz
     if
      call $~lib/rt/tlsf/initialize
     end
     global.get $~lib/rt/tlsf/ROOT
     i32.const 8
     call $~lib/rt/tlsf/allocateBlock
     local.tee $1
     i32.const 0
     i32.store offset=4
     local.get $1
     local.get $0
     i32.const 10
     i32.mul
     i32.store offset=8
     i32.const 8
     i32.const 4
     call $~lib/rt/itcms/__new
     local.tee $3
     i32.const 56
     i32.store
     local.get $3
     local.get $1
     i32.const 4
     i32.add
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=8
     local.get $2
     local.get $0
     local.get $3
     call $~lib/array/Array<%28%29=>i32>#__set
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|05
    end
   end
   i32.const 0
   local.set $0
   i32.const 0
   local.set $1
   loop $for-loop|10
    local.get $1
    i32.const 10
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $2
     local.get $1
     call $~lib/array/Array<%28%29=>i32>#__get
     local.tee $3
     i32.store offset=12
     local.get $3
     i32.load offset=4
     global.set $~lib/__closure_env
     local.get $3
     i32.load
     call_indirect (type $0)
     local.get $0
     i32.add
     local.set $0
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|10
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.const 450
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 564
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 44
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 44
   memory.fill
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 4
   i32.add
   local.set $1
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 57
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.const 58
   i32.store
   local.get $3
   local.get $1
   i32.store offset=4
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 59
   i32.store
   local.get $4
   local.get $1
   i32.store offset=4
   local.get $4
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=16
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=20
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 60
   i32.store
   local.get $5
   local.get $1
   i32.store offset=4
   local.get $5
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=28
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=32
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=36
   local.get $5
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $5
   i32.load
   call_indirect (type $2)
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=40
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 44
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 123
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 585
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 3840
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 18
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 61
   i32.store
   local.get $2
   local.get $0
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=132
   local.get $0
   i32.const 3840
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1488
    i32.const 597
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 24
   memory.fill
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 4
   i32.add
   local.set $1
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 3904
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 19
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 62
   i32.store
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 18
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.const 63
   i32.store
   local.get $3
   local.get $1
   i32.store offset=4
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 4032
   local.get $2
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 4064
   local.get $2
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 4096
   local.get $2
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=20
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $0)
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=132
   local.get $0
   i32.const 4128
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1488
    i32.const 611
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 65
   i32.store
   local.get $2
   local.get $0
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 634
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   i32.const 0
   local.set $1
   i32.const 8
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 66
   i32.store
   local.get $2
   local.get $0
   i32.const 4
   i32.add
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   loop $for-loop|01
    local.get $1
    i32.const 10
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     local.get $2
     i32.load offset=4
     global.set $~lib/__closure_env
     local.get $1
     local.get $2
     i32.load
     call_indirect (type $3)
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|01
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 45
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 654
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 12
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 3
   i32.store offset=8
   local.get $0
   i32.const 4
   i32.store offset=12
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.const 67
   i32.store
   local.get $1
   local.get $0
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $1
   global.set $closure-stress/addResult
   global.get $~lib/memory/__stack_pointer
   global.get $closure-stress/addResult
   local.tee $0
   i32.store offset=168
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 7
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 662
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 4
   i32.add
   local.set $1
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.const 68
   i32.store
   local.get $3
   local.get $1
   i32.store offset=4
   local.get $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 69
   i32.store
   local.get $4
   local.get $1
   i32.store offset=4
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $0)
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 675
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=12
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $0)
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 677
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 678
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 682
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 72
   i32.store
   local.get $2
   local.get $0
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 111
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 707
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const -64
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4580
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 64
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 10
   call $closure-stress/makeAdderPair
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 0
   call $~lib/array/Array<%28%29=>i32>#__get
   local.tee $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1
   call $~lib/array/Array<%28%29=>i32>#__get
   local.tee $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=16
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 730
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=20
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $1
   i32.load
   call_indirect (type $0)
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=24
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $1
   i32.load
   call_indirect (type $0)
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=28
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 12
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 733
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 100
   call $closure-stress/makeAdderPair
   local.tee $1
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 0
   call $~lib/array/Array<%28%29=>i32>#__get
   local.tee $2
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 1
   call $~lib/array/Array<%28%29=>i32>#__get
   local.tee $1
   i32.store offset=40
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=44
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=48
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $1
   i32.load
   call_indirect (type $0)
   i32.const 101
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 741
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=52
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 12
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 742
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=56
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=60
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $1
   i32.load
   call_indirect (type $0)
   local.get $0
   i32.add
   global.get $~lib/memory/__stack_pointer
   i32.const -64
   i32.sub
   global.set $~lib/memory/__stack_pointer
   i32.const 113
   i32.ne
   if
    i32.const 0
    i32.const 1488
    i32.const 746
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 172
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 37376
  i32.const 37424
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $closure-stress/closureInConditional (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 12
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  i32.const 10
  i32.store offset=8
  local.get $2
  i32.const 20
  i32.store offset=12
  local.get $0
  if
   global.get $~lib/memory/__stack_pointer
   local.set $2
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 23
   i32.store
  else
   global.get $~lib/memory/__stack_pointer
   local.set $2
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 24
   i32.store
  end
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $0
  i32.load
  call_indirect (type $0)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-stress/compose~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $2
  i32.load offset=8
  local.tee $1
  i32.store offset=4
  local.get $1
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $0
  local.get $1
  i32.load
  call_indirect (type $1)
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $1
  i32.load
  call_indirect (type $1)
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
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 2128
   i32.const 2960
   i32.const 52
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $closure-stress/testNestedClosureFunctions~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/__closure_env
  local.tee $2
  local.get $2
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.const 64
  i32.store
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $1
  i32.load
  call_indirect (type $0)
  drop
  local.get $2
  i32.load offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-stress/testDeeplyNestedClosures~anonymous|0~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/__closure_env
  local.set $0
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $1
  i32.const 4
  i32.add
  local.tee $2
  local.get $0
  i32.store
  local.get $1
  i32.const 100
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.const 70
  i32.store
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $1
  i32.load
  call_indirect (type $0)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-stress/testDeeplyNestedClosures~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4580
  i32.lt_s
  if
   i32.const 37376
   i32.const 37424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/__closure_env
  local.set $0
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $1
  i32.const 4
  i32.add
  local.tee $2
  local.get $0
  i32.store
  local.get $1
  i32.const 10
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.const 71
  i32.store
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $1
  i32.load
  call_indirect (type $0)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
