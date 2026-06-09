(module
 (type $0 (func (param i32 i32) (result i32)))
 (type $1 (func (param i32 i32 i32) (result i32)))
 (type $2 (func (param i32)))
 (type $3 (func))
 (type $4 (func (param i32 i32)))
 (type $5 (func (param i32 i32 i32)))
 (type $6 (func (param i32) (result i32)))
 (type $7 (func (param i32 i32 i32 i32) (result i32)))
 (type $8 (func (param i32 i32 i32 i32)))
 (type $9 (func (result i32)))
 (type $10 (func (param i32 i32 i32 i32 i32)))
 (type $11 (func (param i32 i32 i64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
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
 (global $std/staticarray/arr3 (mut i32) (i32.const 0))
 (global $std/staticarray/arr4 (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $std/staticarray/maxVal (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 38408))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\04\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data $1 (i32.const 1072) "\01\00\00\00\00\00\00\00\n\00\00\00\00\00\00\00d\00\00\00\00\00\00\00\e8\03\00\00\00\00\00\00\10\'\00\00\00\00\00\00\a0\86\01\00\00\00\00\00@B\0f\00\00\00\00\00\80\96\98\00\00\00\00\00\00\e1\f5\05\00\00\00\00\00\ca\9a;\00\00\00\00\00\e4\0bT\02\00\00\00\00\e8vH\17\00\00\00\00\10\a5\d4\e8\00\00\00\00\a0rN\18\t\00\00\00@z\10\f3Z\00\00\00\80\c6\a4~\8d\03")
 (data $2 (i32.const 1200) "00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")
 (data $4 (i32.const 1536) "p\\\ea{\ce2~\8f\1a\c7C\c6\b0\b7\96\e5\ae\05\03\05\'\c6\ab\b7\bf7\cf\d0\b8\d1\ef\92\fe%\e5\1a\8eO\19\eb2\ebP\e2\a4?\14\bc\f5\88\r\b5P\99v\96!\dbH\bb\1a\c2\bd\f0\b4\15\07\c9{\ce\97\c0]\11l:\96\0b\13\9a\c7\1b\e0\c3V\df\84\f6\06\e3L6\12\197\c5\9e\b5p+\a8\ad\c5\9d\97\"\81E@|o\fc\dfNg\04\cd\c9\f2\c9\e6\0b\b96\d7\07\8f\a1\85\t\94\f8x9?\81:\0f \f4\'\8f\cb\ce\c8\a5\19\90\b9\a5o\a5\a0\84\14@aQY\84\00\a1\ed\cc\ce\1b\c2\d3\00\b4W\n?\16h\a9\00\90\acn2x\86\87\00\80z\17\b7&\d7\d8\00\00b\ac\c5\ebx\ad\00\00\e8\89\04#\c7\8a\00\00@v:k\0b\de\00\00\00\c5.\bc\a2\b1\00\00\00\04\bf\c9\1b\8e\00\00\00\a01\a9_\e3\00\00\00\80\f4 \e6\b5\00\00\00\00*\e7\84\91\00\00\00\00\10\a5\d4\e8\00\00\00\00@\b7C\ba\00\00\00\00\00\f9\02\95\00\00\00\00\00(k\ee\00\00\00\00\00 \bc\be\00\00\00\00\00\80\96\98\00\00\00\00\00\00$\f4\00\00\00\00\00\00P\c3\00\00\00\00\00\00@\9c\00\00\00\00\00\00\00\fa\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\80\cd\cc\cc\cc\cc\cc\cc\cc\0b\d7\a3p=\n\d7\a3<\dfO\8d\97n\12\83,e\19\e2X\17\b7\d1$\84G\1bG\ac\c5\a7\b6il\af\05\bd7\86\bdBz\e5\d5\94\bf\d6\fd\cea\84\11w\cc\ab\98\a5\b46A_p\89\bf\d5\ed\bd\ce\fe\e6\db\ff\aa$\cb\0b\ff\eb\af\cc\88Po\t\cc\bc\8c\14\0e\b4KB\13.\e1\10\d8\\\t5\dc$\b4\da\ac\b0:\f7|\1d\90\\\e1M\c4\be\94\95\e6J\b4\a462\aaw\b8\08]\1d\92\8e\ee\92\93\a6a\95\b6}J\1e\ec\eb\1a\11\92d\08\e5\bc\ef{\datP\a0\1d\97\b2,\f7\ba\80\00\c9\f1(\8a\92\95\00\9am\c1S;uD\cd\14\be\9aR\c5\ee\d3\ae\87\96\f7\db\9dXv%\06\12\c6I~\e0\91\b7\d1t\9e\0e\ca\00\83\f2\b5\87\fd?;\9a5\f5\f7\d2\ca2\fc\14^\f7_B\a2\f5\fcCK,\b3\ce\81\bb\949E\ad\1e\b1\cf")
 (data $5 (i32.const 2152) "\"\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#")
 (data $6 (i32.const 2408) "00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899")
 (data $8 (i32.const 2748) "<")
 (data $8.1 (i32.const 2760) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $9 (i32.const 2812) "<")
 (data $9.1 (i32.const 2824) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $10 (i32.const 2876) "<")
 (data $10.1 (i32.const 2888) "\02\00\00\00$\00\00\00s\00t\00d\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $11 (i32.const 2940) "\1c")
 (data $11.1 (i32.const 2952) "\04\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data $12 (i32.const 2972) "\1c")
 (data $12.1 (i32.const 2984) "\04\00\00\00\0c\00\00\00\05\00\00\00\06\00\00\00\07")
 (data $13 (i32.const 3004) "<")
 (data $13.1 (i32.const 3016) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $14 (i32.const 3068) "<")
 (data $14.1 (i32.const 3080) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $17 (i32.const 3196) ",")
 (data $17.1 (i32.const 3208) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $19 (i32.const 3276) "<")
 (data $19.1 (i32.const 3288) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $20 (i32.const 3340) ",")
 (data $20.1 (i32.const 3352) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $21 (i32.const 3388) ",")
 (data $21.1 (i32.const 3400) "\01\00\00\00\18\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\05")
 (data $22 (i32.const 3436) ",")
 (data $22.1 (i32.const 3448) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $23 (i32.const 3484) "\1c")
 (data $23.1 (i32.const 3496) "\01")
 (data $24 (i32.const 3516) "\1c")
 (data $24.1 (i32.const 3528) "\04\00\00\00\08\00\00\00\01\00\00\00\02")
 (data $25 (i32.const 3548) "\1c")
 (data $25.1 (i32.const 3560) "\04\00\00\00\04\00\00\00\01")
 (data $26 (i32.const 3580) "\1c")
 (data $26.1 (i32.const 3592) "\04")
 (data $27 (i32.const 3612) "\1c")
 (data $27.1 (i32.const 3624) "\02\00\00\00\02\00\00\001")
 (data $28 (i32.const 3644) "\1c")
 (data $28.1 (i32.const 3656) "\02\00\00\00\02\00\00\002")
 (data $29 (i32.const 3676) "\1c")
 (data $29.1 (i32.const 3688) "\08\00\00\00\08\00\00\000\0e\00\00P\0e")
 (data $30 (i32.const 3708) "\1c")
 (data $30.1 (i32.const 3720) "\02\00\00\00\02\00\00\003")
 (data $31 (i32.const 3740) "\1c")
 (data $31.1 (i32.const 3752) "\08\00\00\00\04\00\00\00\90\0e")
 (data $32 (i32.const 3772) "\1c")
 (data $32.1 (i32.const 3784) "\02\00\00\00\06\00\00\00a\00n\00t")
 (data $33 (i32.const 3804) "\1c")
 (data $33.1 (i32.const 3816) "\02\00\00\00\n\00\00\00b\00i\00s\00o\00n")
 (data $34 (i32.const 3836) "\1c")
 (data $34.1 (i32.const 3848) "\02\00\00\00\n\00\00\00c\00a\00m\00e\00l")
 (data $35 (i32.const 3868) "\1c")
 (data $35.1 (i32.const 3880) "\02\00\00\00\08\00\00\00d\00u\00c\00k")
 (data $36 (i32.const 3900) ",")
 (data $36.1 (i32.const 3912) "\02\00\00\00\10\00\00\00e\00l\00e\00p\00h\00a\00n\00t")
 (data $37 (i32.const 3948) ",")
 (data $37.1 (i32.const 3960) "\08\00\00\00\14\00\00\00\d0\0e\00\00\f0\0e\00\00\10\0f\00\000\0f\00\00P\0f")
 (data $38 (i32.const 3996) "|")
 (data $38.1 (i32.const 4008) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $39 (i32.const 4124) ",")
 (data $39.1 (i32.const 4136) "\08\00\00\00\14\00\00\00\d0\0e\00\00\f0\0e\00\00\10\0f\00\000\0f\00\00P\0f")
 (data $40 (i32.const 4172) "\1c")
 (data $40.1 (i32.const 4184) "\01")
 (data $41 (i32.const 4204) "\1c")
 (data $41.1 (i32.const 4216) "\02\00\00\00\06\00\00\00f\00o\00o")
 (data $42 (i32.const 4236) "\1c")
 (data $42.1 (i32.const 4248) "\01\00\00\00\04\00\00\00\80\10")
 (data $43 (i32.const 4268) ",")
 (data $43.1 (i32.const 4280) "\08\00\00\00\14\00\00\00\d0\0e\00\00\f0\0e\00\00\10\0f\00\000\0f\00\00P\0f")
 (data $44 (i32.const 4316) "\1c")
 (data $44.1 (i32.const 4328) "\n\00\00\00\08")
 (data $44.2 (i32.const 4342) "\f8\7f")
 (data $45 (i32.const 4348) "\1c")
 (data $45.1 (i32.const 4360) "\0b\00\00\00\04\00\00\00\00\00\c0\7f")
 (data $46 (i32.const 4380) "\1c")
 (data $46.1 (i32.const 4392) "\04\00\00\00\0c\00\00\00\02\00\00\00\t\00\00\00\t")
 (data $47 (i32.const 4412) ",")
 (data $47.1 (i32.const 4424) "\04\00\00\00\10\00\00\00\02\00\00\00\05\00\00\00\t\00\00\00\02")
 (data $48 (i32.const 4460) "\1c")
 (data $48.1 (i32.const 4472) "\02\00\00\00\08\00\00\00F\00i\00r\00e")
 (data $49 (i32.const 4492) "\1c")
 (data $49.1 (i32.const 4504) "\02\00\00\00\06\00\00\00A\00i\00r")
 (data $50 (i32.const 4524) "\1c")
 (data $50.1 (i32.const 4536) "\02\00\00\00\n\00\00\00W\00a\00t\00e\00r")
 (data $51 (i32.const 4556) "\1c")
 (data $51.1 (i32.const 4568) "\08\00\00\00\0c\00\00\00\80\11\00\00\a0\11\00\00\c0\11")
 (data $52 (i32.const 4588) "\1c")
 (data $52.1 (i32.const 4600) "\02")
 (data $53 (i32.const 4620) "\1c")
 (data $53.1 (i32.const 4632) "\02\00\00\00\02\00\00\00,")
 (data $54 (i32.const 4652) ",")
 (data $54.1 (i32.const 4664) "\02\00\00\00\1c\00\00\00F\00i\00r\00e\00,\00A\00i\00r\00,\00W\00a\00t\00e\00r")
 (data $55 (i32.const 4700) ",")
 (data $55.1 (i32.const 4712) "\02\00\00\00\18\00\00\00F\00i\00r\00e\00A\00i\00r\00W\00a\00t\00e\00r")
 (data $56 (i32.const 4748) "\1c")
 (data $56.1 (i32.const 4760) "\02\00\00\00\02\00\00\00-")
 (data $57 (i32.const 4780) ",")
 (data $57.1 (i32.const 4792) "\02\00\00\00\1c\00\00\00F\00i\00r\00e\00-\00A\00i\00r\00-\00W\00a\00t\00e\00r")
 (data $58 (i32.const 4828) "\1c")
 (data $58.1 (i32.const 4840) "\02\00\00\00\06\00\00\00 \00+\00 ")
 (data $59 (i32.const 4860) "<")
 (data $59.1 (i32.const 4872) "\02\00\00\00$\00\00\00F\00i\00r\00e\00 \00+\00 \00A\00i\00r\00 \00+\00 \00W\00a\00t\00e\00r")
 (data $60 (i32.const 4924) "\1c")
 (data $60.1 (i32.const 4936) "\04\00\00\00\08")
 (data $61 (i32.const 4956) "\1c")
 (data $61.1 (i32.const 4968) "\04\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data $62 (i32.const 4988) ",")
 (data $62.1 (i32.const 5000) "\04\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data $63 (i32.const 5036) "\1c")
 (data $63.1 (i32.const 5048) "\04\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data $64 (i32.const 5068) "\1c")
 (data $64.1 (i32.const 5080) "\0c\00\00\00\08\00\00\00\01")
 (data $65 (i32.const 5100) "\1c")
 (data $65.1 (i32.const 5112) "\r\00\00\00\08\00\00\00\02")
 (data $66 (i32.const 5132) "\1c")
 (data $66.1 (i32.const 5144) "\0e\00\00\00\08\00\00\00\03")
 (data $67 (i32.const 5164) "\1c")
 (data $67.1 (i32.const 5176) "\0f\00\00\00\08\00\00\00\04")
 (data $68 (i32.const 5196) "\1c")
 (data $68.1 (i32.const 5208) "\0f\00\00\00\08\00\00\00\05")
 (data $69 (i32.const 5228) "\1c")
 (data $69.1 (i32.const 5240) "\0e\00\00\00\08\00\00\00\06")
 (data $70 (i32.const 5260) "\1c")
 (data $70.1 (i32.const 5272) "\0e\00\00\00\08\00\00\00\07")
 (data $71 (i32.const 5292) "\1c")
 (data $71.1 (i32.const 5304) "\0e\00\00\00\08\00\00\00\08")
 (data $72 (i32.const 5324) "\1c")
 (data $72.1 (i32.const 5336) "\0e\00\00\00\08\00\00\00\t")
 (data $73 (i32.const 5356) "\1c")
 (data $73.1 (i32.const 5368) "\0e\00\00\00\08\00\00\00\n")
 (data $74 (i32.const 5388) "\1c")
 (data $74.1 (i32.const 5400) "\0e\00\00\00\08\00\00\00\0b")
 (data $75 (i32.const 5420) "\1c")
 (data $75.1 (i32.const 5432) "\0e\00\00\00\08\00\00\00\0c")
 (data $76 (i32.const 5452) "\1c")
 (data $76.1 (i32.const 5464) "\0e\00\00\00\08\00\00\00\r")
 (data $77 (i32.const 5484) ",")
 (data $77.1 (i32.const 5496) "\04\00\00\00\10\00\00\00\00\00\00\00\03\00\00\00\02\00\00\00\01")
 (data $78 (i32.const 5532) "\1c")
 (data $78.1 (i32.const 5544) "\10\00\00\00\08\00\00\00\0e")
 (data $79 (i32.const 5568) "\11\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00$\t\00\00 \00\00\00\04A\00\00\02\t\00\00\04A\00\00\02A\00\00$\1a\00\00$\19")
 (table $0 15 15 funcref)
 (elem $0 (i32.const 1) $start:std/staticarray~anonymous|0 $start:std/staticarray~anonymous|1 $start:std/staticarray~anonymous|2 $start:std/staticarray~anonymous|3 $start:std/staticarray~anonymous|3 $start:std/staticarray~anonymous|5 $start:std/staticarray~anonymous|6 $start:std/staticarray~anonymous|7 $start:std/staticarray~anonymous|8 $start:std/staticarray~anonymous|5 $start:std/staticarray~anonymous|6 $start:std/staticarray~anonymous|5 $start:std/staticarray~anonymous|6 $~lib/util/sort/COMPARATOR<i32>~anonymous|0)
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 3024
   i32.const 3088
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
      i32.const 1
      i32.shl
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
 (func $~lib/staticarray/StaticArray<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 2768
   i32.const 2832
   i32.const 78
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
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
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
   block $__inlined_func$~lib/util/string/compareImpl$106
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
      br_if $__inlined_func$~lib/util/string/compareImpl$106
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
   i32.const 3088
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
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $4
   memory.copy
  end
  local.get $3
  i32.store
  i32.const 16
  local.get $1
  call $~lib/rt/itcms/__new
  local.tee $1
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
  local.get $4
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/array/Array<i32>#get:length (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
  i32.store offset=4
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $2
  local.get $1
  call $~lib/util/string/joinStringArray
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 2768
   i32.const 2832
   i32.const 78
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
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
   i32.const 4016
   i32.const 2832
   i32.const 82
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
 (func $~lib/array/Array<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
   i32.const 2768
   i32.const 3456
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
 (func $~lib/staticarray/StaticArray<~lib/string/String>#slice<~lib/staticarray/StaticArray<~lib/string/String>> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.set $4
  local.get $0
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
  local.tee $5
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  i32.const 0
  local.set $1
  global.get $~lib/memory/__stack_pointer
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
  local.get $5
  i32.sub
  local.tee $0
  i32.const 0
  local.get $0
  i32.const 0
  i32.gt_s
  select
  i32.const 2
  i32.shl
  local.tee $0
  i32.const 8
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=4
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.gt_u
   if
    local.get $1
    local.get $2
    i32.add
    local.get $1
    local.get $3
    i32.add
    i32.load
    local.tee $4
    i32.store
    local.get $2
    local.get $4
    i32.const 1
    call $~lib/rt/itcms/__link
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/staticarray/StaticArray<i32>#lastIndexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.tee $3
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const -1
   return
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
  loop $while-continue|0
   local.get $2
   i32.const 0
   i32.ge_s
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    i32.eq
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
 )
 (func $~lib/staticarray/StaticArray<i32>#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.tee $3
  i32.eqz
  local.get $2
  local.get $3
  i32.ge_s
  i32.or
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
    i32.eq
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
 (func $~lib/staticarray/StaticArray<~lib/string/String>#slice<~lib/staticarray/StaticArray<~lib/string/String>>@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
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
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $~lib/staticarray/StaticArray<~lib/string/String>#slice<~lib/staticarray/StaticArray<~lib/string/String>>
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#includes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   block $__inlined_func$~lib/staticarray/StaticArray<~lib/string/String>#indexOf$275
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 2
    i32.shr_u
    local.tee $3
    i32.eqz
    local.get $2
    local.get $3
    i32.ge_s
    i32.or
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const -1
     local.set $2
     br $__inlined_func$~lib/staticarray/StaticArray<~lib/string/String>#indexOf$275
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
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      local.get $4
      local.get $1
      call $~lib/string/String.__eq
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.add
       global.set $~lib/memory/__stack_pointer
       br $__inlined_func$~lib/staticarray/StaticArray<~lib/string/String>#indexOf$275
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $while-continue|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
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
   i32.const 0
   i32.ge_s
   return
  end
  i32.const 38432
  i32.const 38480
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
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
  i32.const 38416
  i32.const 0
  i32.store
  i32.const 39984
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
    i32.const 38416
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
      i32.const 38416
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
  i32.const 38416
  i32.const 39988
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 38416
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
      i32.const 38408
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
     i32.const 3088
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 38408
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
 (func $~lib/util/sort/insertionSort<i32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.get $3
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $4
  local.get $3
  i32.sub
  i32.const 1
  i32.and
  i32.sub
  local.get $4
  i32.const 1
  i32.and
  local.get $3
  select
  i32.add
  local.set $6
  loop $for-loop|0
   local.get $2
   local.get $6
   i32.ge_s
   if
    local.get $0
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    local.tee $3
    i32.load offset=4
    local.tee $5
    local.set $4
    local.get $3
    i32.load
    local.set $3
    i32.const 2
    global.set $~argumentsLength
    local.get $3
    local.get $5
    i32.const 5552
    i32.load
    call_indirect (type $0)
    i32.const 0
    i32.le_s
    if
     local.get $3
     local.set $4
     local.get $5
     local.set $3
    end
    local.get $6
    i32.const 1
    i32.sub
    local.set $5
    loop $while-continue|1
     local.get $1
     local.get $5
     i32.le_s
     if
      block $while-break|1
       local.get $0
       local.get $5
       i32.const 2
       i32.shl
       i32.add
       local.tee $7
       i32.load
       local.set $8
       i32.const 2
       global.set $~argumentsLength
       local.get $8
       local.get $3
       i32.const 5552
       i32.load
       call_indirect (type $0)
       i32.const 0
       i32.le_s
       br_if $while-break|1
       local.get $7
       local.get $8
       i32.store offset=8
       local.get $5
       i32.const 1
       i32.sub
       local.set $5
       br $while-continue|1
      end
     end
    end
    local.get $0
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    local.get $3
    i32.store offset=8
    loop $while-continue|2
     local.get $1
     local.get $5
     i32.le_s
     if
      block $while-break|2
       local.get $0
       local.get $5
       i32.const 2
       i32.shl
       i32.add
       local.tee $3
       i32.load
       local.set $7
       i32.const 2
       global.set $~argumentsLength
       local.get $7
       local.get $4
       i32.const 5552
       i32.load
       call_indirect (type $0)
       i32.const 0
       i32.le_s
       br_if $while-break|2
       local.get $3
       local.get $7
       i32.store offset=4
       local.get $5
       i32.const 1
       i32.sub
       local.set $5
       br $while-continue|2
      end
     end
    end
    local.get $0
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store offset=4
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
 )
 (func $~lib/staticarray/StaticArray<i32>#__set (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  i32.const 1
  i32.le_u
  if
   i32.const 2768
   i32.const 2832
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
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
   i32.const 3296
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
   i32.const 3296
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
   i32.const 3296
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
   i32.const 3296
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
   i32.const 3296
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
    i32.const 3296
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
   i32.const 3296
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
   i32.const 3296
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
   i32.const 3296
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
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 3024
   i32.const 3296
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
   memory.size
   local.tee $1
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
   local.set $2
   local.get $1
   local.get $2
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
    i32.const 3296
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
   i32.const 3296
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
   i32.const 3296
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
 (func $~lib/rt/tlsf/__free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 38408
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
   i32.const 3296
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
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
    i32.const 3088
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink$268
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
    i32.const 38408
    i32.lt_u
    i32.and
    i32.eqz
    if
     i32.const 0
     i32.const 3088
     i32.const 128
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/itcms/Object#unlink$268
   end
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 3088
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
   i32.const 5568
   i32.load
   i32.gt_u
   if
    i32.const 2768
    i32.const 3216
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 2
   i32.shl
   i32.const 5572
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
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner3
   block $folding-inner2
    block $folding-inner1
     block $invalid
      block $~lib/staticarray/StaticArray<f32>
       block $~lib/staticarray/StaticArray<f64>
        block $~lib/array/Array<~lib/string/String>
         block $~lib/staticarray/StaticArray<~lib/string/String>
          block $~lib/array/Array<i32>
           block $~lib/staticarray/StaticArray<std/staticarray/Ref>
            block $std/staticarray/Ref
             block $~lib/staticarray/StaticArray<i32>
              block $~lib/arraybuffer/ArrayBufferView
               block $~lib/string/String
                block $~lib/arraybuffer/ArrayBuffer
                 block $~lib/object/Object
                  local.get $0
                  i32.const 8
                  i32.sub
                  i32.load
                  br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/staticarray/StaticArray<i32> $std/staticarray/Ref $~lib/staticarray/StaticArray<std/staticarray/Ref> $~lib/array/Array<i32> $~lib/staticarray/StaticArray<~lib/string/String> $~lib/array/Array<~lib/string/String> $~lib/staticarray/StaticArray<f64> $~lib/staticarray/StaticArray<f32> $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $folding-inner2 $invalid
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
             return
            end
            return
           end
           local.get $0
           call $~lib/staticarray/StaticArray<std/staticarray/Ref>~visit
           return
          end
          global.get $~lib/memory/__stack_pointer
          i32.const 4
          i32.sub
          global.set $~lib/memory/__stack_pointer
          global.get $~lib/memory/__stack_pointer
          i32.const 5640
          i32.lt_s
          br_if $folding-inner3
          global.get $~lib/memory/__stack_pointer
          i32.const 0
          i32.store
          br $folding-inner1
         end
         local.get $0
         call $~lib/staticarray/StaticArray<std/staticarray/Ref>~visit
         return
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 5640
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
        br $folding-inner1
       end
       return
      end
      return
     end
     unreachable
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
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
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
  i32.const 38432
  i32.const 38480
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $start:std/staticarray~anonymous|6 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 4
  i32.eq
 )
 (func $start:std/staticarray~anonymous|5 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.eq
 )
 (func $~lib/util/sort/mergeRuns<i32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  i32.const 1
  i32.sub
  local.tee $5
  local.get $3
  i32.add
  local.set $6
  local.get $5
  i32.const 1
  i32.add
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $2
    i32.const 1
    i32.sub
    local.tee $2
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
   local.get $3
   local.get $5
   i32.gt_s
   if
    local.get $4
    local.get $6
    local.get $5
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    local.get $0
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    i32.store
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|1
   end
  end
  loop $for-loop|2
   local.get $1
   local.get $3
   i32.le_s
   if
    local.get $4
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $6
    local.get $4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $7
    i32.const 2
    global.set $~argumentsLength
    local.get $6
    local.get $7
    i32.const 5552
    i32.load
    call_indirect (type $0)
    i32.const 0
    i32.lt_s
    if
     local.get $0
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     local.get $6
     i32.store
     local.get $5
     i32.const 1
     i32.sub
     local.set $5
    else
     local.get $0
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     local.get $7
     i32.store
     local.get $2
     i32.const 1
     i32.add
     local.set $2
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|2
   end
  end
 )
 (func $~lib/util/sort/extendRunRight<i32> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
  i32.const 5552
  i32.store
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
  local.tee $3
  i32.const 2
  i32.shl
  i32.add
  i32.load
  i32.const 2
  global.set $~argumentsLength
  i32.const 5552
  i32.load
  call_indirect (type $0)
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.gt_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     i32.const 5552
     i32.store offset=4
     local.get $0
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     local.tee $4
     i32.load offset=4
     local.get $4
     i32.load
     i32.const 2
     global.set $~argumentsLength
     i32.const 5552
     i32.load
     call_indirect (type $0)
     i32.const 31
     i32.shr_u
    else
     i32.const 0
    end
    if
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $while-continue|0
    end
   end
   local.get $3
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
     local.tee $4
     i32.load
     local.set $5
     local.get $4
     local.get $0
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     local.tee $4
     i32.load
     i32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $4
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
    local.get $3
    i32.gt_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     i32.const 5552
     i32.store offset=8
     local.get $0
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     local.tee $1
     i32.load offset=4
     local.get $1
     i32.load
     i32.const 2
     global.set $~argumentsLength
     i32.const 5552
     i32.load
     call_indirect (type $0)
     i32.const 0
     i32.ge_s
    else
     i32.const 0
    end
    if
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $while-continue|2
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#concat<~lib/array/Array<~lib/string/String>> (param $0 i32) (param $1 i32) (result i32)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<i32>#get:length
  local.tee $2
  local.get $3
  i32.add
  local.tee $4
  i32.const 268435455
  i32.gt_u
  if
   i32.const 3360
   i32.const 2832
   i32.const 178
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 2
  i32.shl
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 9
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.load offset=4
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.load offset=4
  local.set $6
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $1
   local.get $5
   i32.lt_u
   if
    local.get $1
    local.get $4
    i32.add
    local.get $0
    local.get $1
    i32.add
    i32.load
    local.tee $7
    i32.store
    local.get $3
    local.get $7
    i32.const 1
    call $~lib/rt/itcms/__link
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $4
  local.get $5
  i32.add
  local.set $1
  local.get $2
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
    local.get $1
    i32.add
    local.get $0
    local.get $6
    i32.add
    i32.load
    local.tee $4
    i32.store
    local.get $3
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
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/staticarray/StaticArray<std/staticarray/Ref>~visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
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
     call $~lib/rt/itcms/__visit
    end
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/staticarray/StaticArray<i32>#some (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    i32.const 3
    global.set $~argumentsLength
    local.get $2
    local.get $0
    local.get $1
    i32.load
    call_indirect (type $1)
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
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
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/staticarray/StaticArray<i32>#lastIndexOf@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   local.set $2
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $~lib/staticarray/StaticArray<i32>#lastIndexOf
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/staticarray/StaticArray<i32>#findLastIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $2
  loop $for-loop|0
   local.get $2
   i32.const 0
   i32.ge_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    i32.const 3
    global.set $~argumentsLength
    local.get $2
    local.get $0
    local.get $1
    i32.load
    call_indirect (type $1)
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $2
     return
    end
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const -1
 )
 (func $~lib/staticarray/StaticArray<i32>#findIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    i32.const 3
    global.set $~argumentsLength
    local.get $2
    local.get $0
    local.get $1
    i32.load
    call_indirect (type $1)
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
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
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const -1
 )
 (func $~lib/staticarray/StaticArray<i32>#every (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    i32.const 3
    global.set $~argumentsLength
    local.get $2
    local.get $0
    local.get $1
    i32.load
    call_indirect (type $1)
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
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
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 1
 )
 (func $~lib/staticarray/StaticArray<i32>#concat<~lib/staticarray/StaticArray<i32>> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 2
  i32.shr_u
  local.tee $2
  local.get $3
  i32.add
  local.tee $4
  i32.const 268435455
  i32.gt_u
  if
   i32.const 3360
   i32.const 2832
   i32.const 178
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 2
  i32.shl
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $4
  i32.store offset=4
  local.get $4
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
  local.tee $0
  memory.copy
  local.get $0
  local.get $4
  i32.add
  local.get $1
  local.get $2
  i32.const 2
  i32.shl
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/staticarray/StaticArray.fromArray<i32> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
  local.get $0
  call $~lib/array/Array<i32>#get:length
  i32.const 2
  i32.shl
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $2
  local.get $0
  i32.load offset=4
  local.get $1
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
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
   i32.const 3296
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
     i32.const 3296
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
   i32.const 3296
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
    i32.const 3296
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
    i32.const 3296
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
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1056
  call $~lib/rt/itcms/__visit
  i32.const 2960
  call $~lib/rt/itcms/__visit
  global.get $std/staticarray/arr3
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/staticarray/arr4
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 2768
  call $~lib/rt/itcms/__visit
  i32.const 3360
  call $~lib/rt/itcms/__visit
  i32.const 4016
  call $~lib/rt/itcms/__visit
  i32.const 3024
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
     i32.const 3088
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
 (func $std/staticarray/Ref#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 5
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
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
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
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 38432
  i32.const 38480
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $start:std/staticarray~anonymous|3 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~start
  call $start:std/staticarray
 )
 (func $~lib/util/string/joinStringArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
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
  local.get $1
  i32.const 1
  i32.sub
  local.tee $5
  i32.const 0
  i32.lt_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 4608
   return
  end
  local.get $5
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.const 4608
   local.get $0
   select
   return
  end
  loop $for-loop|0
   local.get $1
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $6
    i32.store offset=4
    local.get $6
    if
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=8
     local.get $3
     local.get $6
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     i32.add
     local.set $3
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $3
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $1
  local.get $5
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $6
  i32.store offset=12
  i32.const 0
  local.set $3
  loop $for-loop|1
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $7
    i32.store offset=4
    local.get $7
    if
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=8
     local.get $6
     local.get $4
     i32.const 1
     i32.shl
     i32.add
     local.get $7
     local.get $7
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.tee $7
     i32.const 1
     i32.shl
     memory.copy
     local.get $4
     local.get $7
     i32.add
     local.set $4
    end
    local.get $1
    if
     local.get $6
     local.get $4
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     memory.copy
     local.get $1
     local.get $4
     i32.add
     local.set $4
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $6
   local.get $4
   i32.const 1
   i32.shl
   i32.add
   local.get $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const -2
   i32.and
   memory.copy
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/util/sort/SORT<i32> (param $0 i32) (param $1 i32)
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
  (local $12 i64)
  (local $13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5640
  i32.lt_s
  if
   i32.const 38432
   i32.const 38480
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
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
      local.get $0
      i32.load
      local.set $1
      local.get $0
      i32.load offset=4
      local.set $2
      i32.const 2
      global.set $~argumentsLength
      local.get $0
      local.get $2
      local.get $1
      local.get $1
      local.get $2
      i32.const 5552
      i32.load
      call_indirect (type $0)
      i32.const 0
      i32.gt_s
      local.tee $3
      select
      i32.store
      local.get $0
      i32.load offset=8
      local.set $4
      i32.const 2
      global.set $~argumentsLength
      local.get $1
      local.get $2
      local.get $3
      select
      local.tee $1
      local.get $4
      i32.const 5552
      i32.load
      call_indirect (type $0)
      i32.const 0
      i32.gt_s
      local.set $2
      local.get $0
      local.get $4
      local.get $1
      local.get $2
      select
      i32.store offset=4
      local.get $0
      local.get $1
      local.get $4
      local.get $2
      select
      i32.store offset=8
     end
     local.get $0
     i32.load
     local.set $1
     local.get $0
     i32.load offset=4
     local.set $2
     i32.const 2
     global.set $~argumentsLength
     local.get $0
     local.get $2
     local.get $1
     local.get $1
     local.get $2
     i32.const 5552
     i32.load
     call_indirect (type $0)
     i32.const 0
     i32.gt_s
     local.tee $3
     select
     i32.store
     local.get $0
     local.get $1
     local.get $2
     local.get $3
     select
     i32.store offset=4
     br $folding-inner0
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 5552
    i32.store
    local.get $0
    i32.const 0
    local.get $1
    i32.const 1
    i32.sub
    i32.const 0
    call $~lib/util/sort/insertionSort<i32>
    br $folding-inner0
   end
   i32.const 33
   local.get $1
   i32.clz
   i32.sub
   local.tee $3
   i32.const 2
   i32.shl
   local.tee $4
   i32.const 1
   i32.shl
   local.set $5
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   local.get $4
   global.get $~lib/rt/tlsf/ROOT
   local.get $5
   call $~lib/rt/tlsf/allocateBlock
   i32.const 4
   i32.add
   local.tee $9
   i32.add
   local.set $10
   loop $for-loop|1
    local.get $2
    local.get $3
    i32.lt_u
    if
     local.get $9
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     i32.const -1
     i32.store
     local.get $2
     i32.const 1
     i32.add
     local.set $2
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
   i32.const 2
   i32.shl
   call $~lib/rt/tlsf/allocateBlock
   i32.const 4
   i32.add
   local.set $11
   global.get $~lib/memory/__stack_pointer
   i32.const 5552
   i32.store
   local.get $0
   i32.const 0
   local.get $1
   i32.const 1
   i32.sub
   local.tee $8
   call $~lib/util/sort/extendRunRight<i32>
   local.tee $4
   i32.const 1
   i32.add
   local.tee $1
   i32.const 32
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 5552
    i32.store
    local.get $0
    i32.const 0
    i32.const 31
    local.get $8
    local.get $8
    i32.const 31
    i32.ge_s
    select
    local.tee $4
    local.get $1
    call $~lib/util/sort/insertionSort<i32>
   end
   i32.const 0
   local.set $1
   i32.const 0
   local.set $2
   loop $while-continue|2
    local.get $4
    local.get $8
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 5552
     i32.store
     local.get $0
     local.get $4
     i32.const 1
     i32.add
     local.tee $5
     local.get $8
     call $~lib/util/sort/extendRunRight<i32>
     local.tee $3
     local.get $5
     i32.sub
     i32.const 1
     i32.add
     local.tee $6
     i32.const 32
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 5552
      i32.store
      local.get $0
      local.get $5
      local.get $8
      local.get $5
      i32.const 31
      i32.add
      local.tee $3
      local.get $3
      local.get $8
      i32.gt_s
      select
      local.tee $3
      local.get $6
      call $~lib/util/sort/insertionSort<i32>
     end
     local.get $2
     local.get $5
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
     local.get $3
     local.get $5
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
     local.set $6
     loop $for-loop|3
      local.get $1
      local.get $6
      i32.gt_u
      if
       local.get $1
       i32.const 2
       i32.shl
       local.tee $13
       local.get $9
       i32.add
       local.tee $14
       i32.load
       local.tee $7
       i32.const -1
       i32.ne
       if
        local.get $10
        local.get $13
        i32.add
        i32.load
        i32.const 1
        i32.add
        local.set $2
        global.get $~lib/memory/__stack_pointer
        i32.const 5552
        i32.store
        local.get $0
        local.get $7
        local.get $2
        local.get $4
        local.get $11
        call $~lib/util/sort/mergeRuns<i32>
        local.get $14
        i32.const -1
        i32.store
        local.get $7
        local.set $2
       end
       local.get $1
       i32.const 1
       i32.sub
       local.set $1
       br $for-loop|3
      end
     end
     local.get $6
     i32.const 2
     i32.shl
     local.tee $1
     local.get $9
     i32.add
     local.get $2
     i32.store
     local.get $1
     local.get $10
     i32.add
     local.get $4
     i32.store
     local.get $5
     local.set $2
     local.get $3
     local.set $4
     local.get $6
     local.set $1
     br $while-continue|2
    end
   end
   loop $for-loop|4
    local.get $1
    if
     local.get $1
     i32.const 2
     i32.shl
     local.tee $2
     local.get $9
     i32.add
     i32.load
     local.tee $3
     i32.const -1
     i32.ne
     if
      local.get $2
      local.get $10
      i32.add
      i32.load
      i32.const 1
      i32.add
      local.set $2
      global.get $~lib/memory/__stack_pointer
      i32.const 5552
      i32.store
      local.get $0
      local.get $3
      local.get $2
      local.get $8
      local.get $11
      call $~lib/util/sort/mergeRuns<i32>
     end
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     br $for-loop|4
    end
   end
   local.get $11
   call $~lib/rt/tlsf/__free
   local.get $9
   call $~lib/rt/tlsf/__free
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/sort/COMPARATOR<i32>~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $~lib/staticarray/StaticArray<i32>#filter (param $0 i32) (result i32)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 7
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $10
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   local.set $7
   loop $for-loop|0
    local.get $7
    local.get $9
    i32.gt_s
    if
     local.get $0
     local.get $9
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     i32.const 3
     global.set $~argumentsLength
     local.get $8
     local.get $9
     local.get $0
     i32.const 5152
     i32.load
     call_indirect (type $1)
     if
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 5640
      i32.lt_s
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      local.get $10
      i32.load offset=12
      local.tee $6
      i32.const 1
      i32.add
      local.tee $5
      local.set $3
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 5640
      i32.lt_s
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      local.get $3
      local.get $10
      i32.load offset=8
      local.tee $1
      i32.const 2
      i32.shr_u
      i32.gt_u
      if
       local.get $3
       i32.const 268435455
       i32.gt_u
       if
        i32.const 3360
        i32.const 3456
        i32.const 19
        i32.const 48
        call $~lib/builtins/abort
        unreachable
       end
       global.get $~lib/memory/__stack_pointer
       local.get $10
       i32.store
       block $__inlined_func$~lib/rt/itcms/__renew$225
        i32.const 1073741820
        local.get $1
        i32.const 1
        i32.shl
        local.tee $1
        local.get $1
        i32.const 1073741820
        i32.ge_u
        select
        local.tee $2
        i32.const 8
        local.get $3
        local.get $3
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
        local.tee $4
        local.get $10
        i32.load
        local.tee $1
        i32.const 20
        i32.sub
        local.tee $3
        i32.load
        i32.const -4
        i32.and
        i32.const 16
        i32.sub
        i32.le_u
        if
         local.get $3
         local.get $4
         i32.store offset=16
         local.get $1
         local.set $2
         br $__inlined_func$~lib/rt/itcms/__renew$225
        end
        local.get $4
        local.get $3
        i32.load offset=12
        call $~lib/rt/itcms/__new
        local.tee $2
        local.get $1
        local.get $4
        local.get $3
        i32.load offset=16
        local.tee $3
        local.get $3
        local.get $4
        i32.gt_u
        select
        memory.copy
       end
       local.get $1
       local.get $2
       i32.ne
       if
        local.get $10
        local.get $2
        i32.store
        local.get $10
        local.get $2
        i32.store offset=4
        local.get $10
        local.get $2
        i32.const 0
        call $~lib/rt/itcms/__link
       end
       local.get $10
       local.get $4
       i32.store offset=8
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      local.get $10
      i32.load offset=4
      local.get $6
      i32.const 2
      i32.shl
      i32.add
      local.get $8
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store
      local.get $10
      local.get $5
      i32.store offset=12
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
     end
     local.get $9
     i32.const 1
     i32.add
     local.set $9
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  i32.const 38432
  i32.const 38480
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $start:std/staticarray~anonymous|8 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 3
  i32.gt_s
 )
 (func $start:std/staticarray~anonymous|7 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 3
  i32.le_s
 )
 (func $start:std/staticarray~anonymous|2 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.ge_s
 )
 (func $start:std/staticarray~anonymous|1 (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $std/staticarray/maxVal
  local.tee $1
  local.get $0
  local.get $0
  local.get $1
  i32.lt_s
  select
  global.set $std/staticarray/maxVal
 )
 (func $start:std/staticarray~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 1
  i32.add
 )
 (func $start:std/staticarray
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 104
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 104
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 1056
   i32.store
   i32.const 1056
   i32.const 1
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 5
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1056
   i32.store
   i32.const 1052
   i32.load
   i32.const 2
   i32.shr_u
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 6
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1056
   i32.store
   i32.const 1056
   i32.const 4
   call $~lib/staticarray/StaticArray<i32>#__set
   global.get $~lib/memory/__stack_pointer
   i32.const 1056
   i32.store
   i32.const 1056
   i32.const 1
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 8
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1048
   i32.load
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 9
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 2960
   i32.store
   i32.const 2960
   i32.const 1
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 13
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 2960
   i32.store
   i32.const 2956
   i32.load
   i32.const 2
   i32.shr_u
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 14
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 2960
   i32.store
   i32.const 2960
   i32.const 4
   call $~lib/staticarray/StaticArray<i32>#__set
   global.get $~lib/memory/__stack_pointer
   i32.const 2960
   i32.store
   i32.const 2960
   i32.const 1
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 16
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   memory.size
   i32.const 16
   i32.shl
   i32.const 38408
   i32.sub
   i32.const 1
   i32.shr_u
   global.set $~lib/rt/itcms/threshold
   i32.const 3140
   i32.const 3136
   i32.store
   i32.const 3144
   i32.const 3136
   i32.store
   i32.const 3136
   global.set $~lib/rt/itcms/pinSpace
   i32.const 3172
   i32.const 3168
   i32.store
   i32.const 3176
   i32.const 3168
   i32.store
   i32.const 3168
   global.set $~lib/rt/itcms/toSpace
   i32.const 3252
   i32.const 3248
   i32.store
   i32.const 3256
   i32.const 3248
   i32.store
   i32.const 3248
   global.set $~lib/rt/itcms/fromSpace
   i32.const 12
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.const 2992
   i32.const 12
   memory.copy
   local.get $6
   global.set $std/staticarray/arr3
   global.get $~lib/memory/__stack_pointer
   global.get $std/staticarray/arr3
   local.tee $6
   i32.store
   local.get $6
   i32.const 0
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 5
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 23
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/staticarray/arr3
   local.tee $6
   i32.store
   local.get $6
   i32.const 1
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 24
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/staticarray/arr3
   local.tee $6
   i32.store
   local.get $6
   i32.const 2
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 7
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 25
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/staticarray/arr3
   local.tee $6
   i32.store
   local.get $6
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 26
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/staticarray/arr3
   local.tee $6
   i32.store
   local.get $6
   i32.const 8
   call $~lib/staticarray/StaticArray<i32>#__set
   global.get $~lib/memory/__stack_pointer
   global.get $std/staticarray/arr3
   local.tee $6
   i32.store
   local.get $6
   i32.const 1
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 8
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 28
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 12
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.const 2992
   i32.const 12
   memory.copy
   local.get $6
   global.set $std/staticarray/arr3
   global.get $~lib/memory/__stack_pointer
   global.get $std/staticarray/arr3
   local.tee $6
   i32.store
   local.get $6
   i32.const 1
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 30
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.store offset=4
   local.get $6
   call $std/staticarray/Ref#constructor
   local.tee $7
   i32.store
   local.get $6
   local.get $7
   i32.const 1
   call $~lib/rt/itcms/__link
   local.get $6
   call $std/staticarray/Ref#constructor
   local.tee $7
   i32.store offset=4
   local.get $6
   local.get $7
   i32.const 1
   call $~lib/rt/itcms/__link
   local.get $6
   global.set $std/staticarray/arr4
   i32.const 0
   global.set $std/staticarray/arr3
   i32.const 0
   global.set $std/staticarray/arr4
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $7
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store
   local.get $7
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 44
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $0
    local.get $7
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 2
    i32.shr_u
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store
     local.get $7
     local.get $0
     call $~lib/staticarray/StaticArray<i32>#__get
     if
      i32.const 0
      i32.const 2896
      i32.const 46
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 6
   i32.const 7
   i32.const 3408
   call $~lib/rt/__newArray
   local.tee $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/staticarray/StaticArray.fromArray<i32>
   local.tee $6
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/array/Array<i32>#get:length
   local.get $7
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 56
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   loop $for-loop|1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/array/Array<i32>#get:length
    local.get $1
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     local.get $1
     call $~lib/staticarray/StaticArray<i32>#__get
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     local.get $1
     call $~lib/array/Array<i32>#__get
     local.get $7
     i32.ne
     if
      i32.const 0
      i32.const 2896
      i32.const 58
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 7
   i32.const 3504
   call $~lib/rt/__newArray
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/staticarray/StaticArray.fromArray<i32>
   local.tee $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   if
    i32.const 0
    i32.const 2896
    i32.const 61
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 3536
   i64.load align=1
   i64.store align=1
   local.get $0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.const 3568
   i32.load align=1
   i32.store align=1
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=24
   local.get $0
   local.get $6
   call $~lib/staticarray/StaticArray<i32>#concat<~lib/staticarray/StaticArray<i32>>
   local.tee $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 69
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $6
   i32.const 3600
   i32.const 0
   memory.copy
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=24
   local.get $0
   local.get $6
   call $~lib/staticarray/StaticArray<i32>#concat<~lib/staticarray/StaticArray<i32>>
   local.tee $1
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 71
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.const 3696
   i64.load align=1
   i64.store align=1
   local.get $1
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   i32.const 4
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $7
   i32.const 3760
   i32.load align=1
   i32.store align=1
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store
   local.get $0
   local.get $7
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   local.tee $8
   i32.add
   local.tee $9
   i32.const 268435455
   i32.gt_u
   if
    i32.const 3360
    i32.const 2832
    i32.const 178
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2
   i32.shl
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.const 2
   i32.shl
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $9
   i32.store offset=4
   loop $for-loop|03
    local.get $3
    local.get $10
    i32.lt_u
    if
     local.get $3
     local.get $9
     i32.add
     local.get $1
     local.get $3
     i32.add
     i32.load
     local.tee $0
     i32.store
     local.get $9
     local.get $0
     i32.const 1
     call $~lib/rt/itcms/__link
     local.get $3
     i32.const 4
     i32.add
     local.set $3
     br $for-loop|03
    end
   end
   local.get $9
   local.get $10
   i32.add
   local.set $1
   local.get $8
   i32.const 2
   i32.shl
   local.set $3
   i32.const 0
   local.set $0
   loop $for-loop|14
    local.get $0
    local.get $3
    i32.lt_u
    if
     local.get $0
     local.get $1
     i32.add
     local.get $0
     local.get $7
     i32.add
     i32.load
     local.tee $8
     i32.store
     local.get $9
     local.get $8
     i32.const 1
     call $~lib/rt/itcms/__link
     local.get $0
     i32.const 4
     i32.add
     local.set $0
     br $for-loop|14
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $9
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store
   local.get $9
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 76
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 3968
   i32.const 20
   memory.copy
   local.get $0
   i32.store offset=40
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 0
   call $~lib/staticarray/StaticArray<~lib/string/String>#slice<~lib/staticarray/StaticArray<~lib/string/String>>@varargs
   local.tee $3
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 83
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   local.set $1
   loop $for-loop|2
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 2
    i32.shr_u
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=48
     local.get $0
     local.get $1
     call $~lib/staticarray/StaticArray<~lib/string/String>#__get
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=48
     local.get $3
     local.get $1
     call $~lib/staticarray/StaticArray<~lib/string/String>#__get
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=24
     local.get $6
     local.get $7
     call $~lib/string/String.__eq
     i32.eqz
     if
      i32.const 0
      i32.const 2896
      i32.const 86
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|2
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1
   i32.const 3
   call $~lib/staticarray/StaticArray<~lib/string/String>#slice<~lib/staticarray/StaticArray<~lib/string/String>>
   local.tee $1
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 90
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=24
   local.get $1
   i32.const 0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__get
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   i32.const 3824
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2896
    i32.const 91
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=24
   local.get $1
   i32.const 1
   call $~lib/staticarray/StaticArray<~lib/string/String>#__get
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 3856
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2896
    i32.const 92
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 1
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1
   call $~lib/staticarray/StaticArray<~lib/string/String>#slice<~lib/staticarray/StaticArray<~lib/string/String>>@varargs
   local.tee $1
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   i32.const 1
   i32.sub
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 95
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 0
   i32.const 50
   call $~lib/staticarray/StaticArray<~lib/string/String>#slice<~lib/staticarray/StaticArray<~lib/string/String>>
   local.tee $1
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 98
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 1
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 100
   call $~lib/staticarray/StaticArray<~lib/string/String>#slice<~lib/staticarray/StaticArray<~lib/string/String>>@varargs
   local.tee $1
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   if
    i32.const 0
    i32.const 2896
    i32.const 101
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 1
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const -1
   call $~lib/staticarray/StaticArray<~lib/string/String>#slice<~lib/staticarray/StaticArray<~lib/string/String>>@varargs
   local.tee $1
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 104
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=24
   local.get $1
   i32.const 0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__get
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 3920
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2896
    i32.const 105
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const -2
   i32.const -2
   call $~lib/staticarray/StaticArray<~lib/string/String>#slice<~lib/staticarray/StaticArray<~lib/string/String>>
   local.tee $1
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   if
    i32.const 0
    i32.const 2896
    i32.const 108
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 2
   i32.const -2
   call $~lib/staticarray/StaticArray<~lib/string/String>#slice<~lib/staticarray/StaticArray<~lib/string/String>>
   local.tee $0
   i32.store offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 111
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   local.get $0
   i32.const 0
   call $~lib/staticarray/StaticArray<~lib/string/String>#__get
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 3856
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2896
    i32.const 112
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 4144
   i32.const 20
   memory.copy
   local.get $0
   i32.store offset=52
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 9
   i32.const 4192
   call $~lib/rt/__newArray
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=24
   local.get $0
   local.get $3
   call $~lib/staticarray/StaticArray<~lib/string/String>#concat<~lib/array/Array<~lib/string/String>>
   local.tee $1
   i32.store offset=56
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#get:length
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 122
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 9
   i32.const 4256
   call $~lib/rt/__newArray
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=24
   local.get $0
   local.get $3
   call $~lib/staticarray/StaticArray<~lib/string/String>#concat<~lib/array/Array<~lib/string/String>>
   local.tee $1
   i32.store offset=56
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#get:length
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   i32.const 1
   i32.add
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 126
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 4288
   i32.const 20
   memory.copy
   local.get $0
   i32.store offset=60
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 3824
   i32.const 0
   call $~lib/staticarray/StaticArray<~lib/string/String>#includes
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 133
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4224
   i32.const 0
   call $~lib/staticarray/StaticArray<~lib/string/String>#includes
   if
    i32.const 0
    i32.const 2896
    i32.const 134
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 3920
   i32.const 5
   call $~lib/staticarray/StaticArray<~lib/string/String>#includes
   if
    i32.const 0
    i32.const 2896
    i32.const 135
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 3920
   i32.const -1
   call $~lib/staticarray/StaticArray<~lib/string/String>#includes
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 136
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 8
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 4336
   i64.load align=1
   i64.store align=1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   block $__inlined_func$~lib/staticarray/StaticArray<f64>#includes$277 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 3
    i32.shr_u
    local.tee $1
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 0
     br $__inlined_func$~lib/staticarray/StaticArray<f64>#includes$277
    end
    loop $while-continue|0
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
      local.tee $4
      local.get $4
      f64.ne
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 1
       br $__inlined_func$~lib/staticarray/StaticArray<f64>#includes$277
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
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 2896
    i32.const 138
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 4
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 4368
   i32.load align=1
   i32.store align=1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   block $__inlined_func$~lib/staticarray/StaticArray<f32>#includes$278 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 2
    i32.shr_u
    local.tee $1
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 0
     br $__inlined_func$~lib/staticarray/StaticArray<f32>#includes$278
    end
    loop $while-continue|030
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
      local.tee $5
      local.get $5
      f32.ne
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 1
       br $__inlined_func$~lib/staticarray/StaticArray<f32>#includes$278
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $while-continue|030
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 2896
    i32.const 139
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 4400
   i32.const 12
   memory.copy
   local.get $0
   i32.store offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 2
   i32.const 0
   call $~lib/staticarray/StaticArray<i32>#indexOf
   if
    i32.const 0
    i32.const 2896
    i32.const 145
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 7
   i32.const 0
   call $~lib/staticarray/StaticArray<i32>#indexOf
   i32.const -1
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 146
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 9
   i32.const 2
   call $~lib/staticarray/StaticArray<i32>#indexOf
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 147
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 2
   i32.const -1
   call $~lib/staticarray/StaticArray<i32>#indexOf
   i32.const -1
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 148
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 2
   i32.const -3
   call $~lib/staticarray/StaticArray<i32>#indexOf
   if
    i32.const 0
    i32.const 2896
    i32.const 149
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 4432
   i32.const 16
   memory.copy
   local.get $0
   i32.store offset=68
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 1
   global.set $~argumentsLength
   local.get $0
   i32.const 2
   call $~lib/staticarray/StaticArray<i32>#lastIndexOf@varargs
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 155
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 1
   global.set $~argumentsLength
   local.get $0
   i32.const 7
   call $~lib/staticarray/StaticArray<i32>#lastIndexOf@varargs
   i32.const -1
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 156
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 2
   i32.const 3
   call $~lib/staticarray/StaticArray<i32>#lastIndexOf
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 157
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 2
   i32.const 2
   call $~lib/staticarray/StaticArray<i32>#lastIndexOf
   if
    i32.const 0
    i32.const 2896
    i32.const 158
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 2
   i32.const -2
   call $~lib/staticarray/StaticArray<i32>#lastIndexOf
   if
    i32.const 0
    i32.const 2896
    i32.const 159
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 2
   i32.const -1
   call $~lib/staticarray/StaticArray<i32>#lastIndexOf
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 160
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 4576
   i32.const 12
   memory.copy
   local.get $0
   i32.store offset=72
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   local.get $0
   i32.const 4640
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 4672
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2896
    i32.const 166
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   local.get $0
   i32.const 4608
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 4720
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2896
    i32.const 167
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   local.get $0
   i32.const 4768
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 4800
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2896
    i32.const 168
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   local.get $0
   i32.const 4848
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 4880
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2896
    i32.const 169
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=48
   local.get $0
   i32.const 4640
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=48
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4640
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   local.get $1
   local.get $0
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 2896
    i32.const 170
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 4944
   i64.load align=1
   i64.store align=1
   local.get $0
   i32.store offset=76
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 2
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   local.set $2
   i32.const 1
   local.get $2
   local.get $2
   i32.const 1
   i32.gt_s
   select
   local.set $1
   local.get $2
   local.set $2
   loop $for-loop|032
    local.get $1
    local.get $2
    i32.lt_s
    if
     local.get $0
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.const 1
     i32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|032
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
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   call $~lib/staticarray/StaticArray<i32>#__get
   if
    i32.const 0
    i32.const 2896
    i32.const 178
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 1
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 179
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 4976
   i32.const 12
   memory.copy
   local.get $0
   i32.store offset=80
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   local.tee $2
   i32.const 1
   i32.gt_u
   if
    i32.const 0
    local.set $1
    local.get $2
    i32.const 1
    i32.shr_u
    local.set $3
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|035
     local.get $1
     local.get $3
     i32.lt_u
     if
      local.get $0
      local.get $1
      i32.const 2
      i32.shl
      i32.add
      local.tee $6
      i32.load
      local.set $7
      local.get $6
      local.get $0
      local.get $2
      local.get $1
      i32.sub
      i32.const 2
      i32.shl
      i32.add
      local.tee $6
      i32.load
      i32.store
      local.get $6
      local.get $7
      i32.store
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $while-continue|035
     end
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 187
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 1
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 188
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 2
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 189
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 5008
   i32.const 20
   memory.copy
   local.get $0
   i32.store offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 2
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   local.tee $1
   local.set $2
   local.get $0
   local.get $0
   i32.const 3
   local.get $1
   local.get $1
   i32.const 3
   i32.gt_u
   select
   local.tee $3
   i32.const 2
   i32.shl
   i32.add
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
   local.get $3
   i32.sub
   local.tee $2
   local.get $1
   local.tee $1
   local.get $1
   local.get $2
   i32.gt_s
   select
   i32.const 2
   i32.shl
   memory.copy
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 197
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 1
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 5
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 198
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 2
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 199
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 3
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 200
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 4
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 5
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 201
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 5056
   i32.const 12
   memory.copy
   local.get $0
   i32.store offset=88
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 5088
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
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
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   local.tee $3
   i32.const 7
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $6
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   i32.load offset=4
   local.set $7
   i32.const 0
   local.set $1
   loop $for-loop|038
    local.get $1
    local.get $3
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 5088
     i32.store offset=8
     local.get $0
     local.get $1
     i32.const 2
     i32.shl
     local.tee $8
     i32.add
     i32.load
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     i32.const 3
     global.set $~argumentsLength
     local.get $7
     local.get $8
     i32.add
     local.get $9
     local.get $1
     local.get $0
     i32.const 5088
     i32.load
     call_indirect (type $1)
     i32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|038
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   i32.store offset=92
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   i32.const 0
   call $~lib/array/Array<i32>#__get
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 210
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   i32.const 1
   call $~lib/array/Array<i32>#__get
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 211
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   i32.const 2
   call $~lib/array/Array<i32>#__get
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 212
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 5120
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   i32.const 0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   local.set $1
   loop $for-loop|040
    local.get $1
    local.get $2
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 5120
     i32.store offset=4
     local.get $0
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     i32.load
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $0
     i32.const 5120
     i32.load
     call_indirect (type $5)
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|040
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $std/staticarray/maxVal
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 216
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 5152
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/staticarray/StaticArray<i32>#filter
   local.tee $1
   i32.store offset=96
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/array/Array<i32>#get:length
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 220
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 0
   call $~lib/array/Array<i32>#__get
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 221
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.const 1
   call $~lib/array/Array<i32>#__get
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 222
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 5184
   i32.store offset=24
   i32.const 0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   i32.const 0
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   local.set $3
   loop $for-loop|042
    local.get $1
    local.get $3
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 5184
     i32.store offset=4
     local.get $0
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     i32.const 4
     global.set $~argumentsLength
     local.get $2
     local.get $6
     local.get $1
     local.get $0
     i32.const 5184
     i32.load
     call_indirect (type $7)
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|042
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 226
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 5216
   i32.store offset=24
   i32.const 0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   i32.const 1
   i32.sub
   local.set $1
   loop $for-loop|044
    local.get $1
    i32.const 0
    i32.ge_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 5216
     i32.store offset=4
     local.get $0
     local.get $1
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     i32.const 4
     global.set $~argumentsLength
     local.get $2
     local.get $3
     local.get $1
     local.get $0
     i32.const 5216
     i32.load
     call_indirect (type $7)
     local.set $2
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     br $for-loop|044
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   i32.const 6
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 230
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 5248
   i32.store offset=24
   local.get $0
   i32.const 5248
   call $~lib/staticarray/StaticArray<i32>#some
   i32.eqz
   if
    i32.const 0
    i32.const 2896
    i32.const 233
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 5280
   i32.store offset=24
   local.get $0
   i32.const 5280
   call $~lib/staticarray/StaticArray<i32>#some
   if
    i32.const 0
    i32.const 2896
    i32.const 234
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 5312
   i32.store offset=24
   local.get $0
   i32.const 5312
   call $~lib/staticarray/StaticArray<i32>#every
   i32.eqz
   if
    i32.const 0
    i32.const 2896
    i32.const 237
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 5344
   i32.store offset=24
   local.get $0
   i32.const 5344
   call $~lib/staticarray/StaticArray<i32>#every
   if
    i32.const 0
    i32.const 2896
    i32.const 238
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 5376
   i32.store offset=24
   local.get $0
   i32.const 5376
   call $~lib/staticarray/StaticArray<i32>#findIndex
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 241
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 5408
   i32.store offset=24
   local.get $0
   i32.const 5408
   call $~lib/staticarray/StaticArray<i32>#findIndex
   i32.const -1
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 242
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 5440
   i32.store offset=24
   local.get $0
   i32.const 5440
   call $~lib/staticarray/StaticArray<i32>#findLastIndex
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 245
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 5472
   i32.store offset=24
   local.get $0
   i32.const 5472
   call $~lib/staticarray/StaticArray<i32>#findLastIndex
   i32.const -1
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 246
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 5504
   i32.const 16
   memory.copy
   local.get $0
   i32.store offset=100
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 5552
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 5552
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 5640
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 2
   i32.shr_u
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 5552
   i32.store
   local.get $0
   local.get $1
   call $~lib/util/sort/SORT<i32>
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 0
   call $~lib/staticarray/StaticArray<i32>#__get
   if
    i32.const 0
    i32.const 2896
    i32.const 255
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 1
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 256
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 2
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 257
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 3
   call $~lib/staticarray/StaticArray<i32>#__get
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 2896
    i32.const 258
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 38408
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.gt_s
   if
    loop $while-continue|047
     global.get $~lib/rt/itcms/state
     if
      call $~lib/rt/itcms/step
      drop
      br $while-continue|047
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
   i32.const 104
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 38432
  i32.const 38480
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
)
