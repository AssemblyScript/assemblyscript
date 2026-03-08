(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32 i32) (result i32)))
 (type $2 (func))
 (type $3 (func (param i32)))
 (type $4 (func (param i32 i32)))
 (type $5 (func (param i32 i32 i32) (result i32)))
 (type $6 (func (param i32 i32 i64)))
 (type $7 (func (result i32)))
 (type $8 (func (param i32 i32 i32 i32)))
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
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 39060))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\02")
 (data $1 (i32.const 1069) "\01\01\01\01\01\00\00\00\00\01\01\00\00\01")
 (data $1.1 (i32.const 1093) "\01\01\01\01\01\01\01")
 (data $1.2 (i32.const 1126) "\01\01\01\01\00\01")
 (data $1.3 (i32.const 1158) "\01\01\01")
 (data $2 (i32.const 1164) "\1c")
 (data $2.1 (i32.const 1176) "\02\00\00\00\n\00\00\00a\00b\00o\00r\00t")
 (data $3 (i32.const 1196) "\1c")
 (data $3.1 (i32.const 1208) "\02\00\00\00\08\00\00\00 \00i\00n\00 ")
 (data $4 (i32.const 1228) "\1c")
 (data $4.1 (i32.const 1240) "\02\00\00\00\02\00\00\00:")
 (data $5 (i32.const 1260) "|")
 (data $5.1 (i32.const 1272) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $6 (i32.const 1388) "<")
 (data $6.1 (i32.const 1400) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $7 (i32.const 1452) "\1c")
 (data $7.1 (i32.const 1464) "\02\00\00\00\02\00\00\000")
 (data $8 (i32.const 1484) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $9 (i32.const 1884) "\1c\04")
 (data $9.1 (i32.const 1896) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data $10 (i32.const 2940) "\\")
 (data $10.1 (i32.const 2952) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $11 (i32.const 3036) "<")
 (data $11.1 (i32.const 3048) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s")
 (data $12 (i32.const 3100) "<")
 (data $12.1 (i32.const 3112) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $13 (i32.const 3164) "<")
 (data $13.1 (i32.const 3176) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $16 (i32.const 3292) "<")
 (data $16.1 (i32.const 3304) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $17 (i32.const 3356) ",")
 (data $17.1 (i32.const 3368) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $19 (i32.const 3436) "<")
 (data $19.1 (i32.const 3448) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $20 (i32.const 3500) ",")
 (data $20.1 (i32.const 3512) "\02\00\00\00\1a\00\00\00U\00R\00I\00 \00m\00a\00l\00f\00o\00r\00m\00e\00d")
 (data $21 (i32.const 3548) "<")
 (data $21.1 (i32.const 3560) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00u\00r\00i\00.\00t\00s")
 (data $22 (i32.const 3612) "0123456789ABCDEF")
 (data $23 (i32.const 3628) ",")
 (data $23.1 (i32.const 3640) "\02\00\00\00\14\00\00\00s\00t\00d\00/\00u\00r\00i\00.\00t\00s")
 (data $24 (i32.const 3676) "\1c")
 (data $24.1 (i32.const 3688) "\02\00\00\00\02\00\00\00a")
 (data $25 (i32.const 3708) "\1c")
 (data $25.1 (i32.const 3720) "\02\00\00\00\04\00\00\00a\001")
 (data $26 (i32.const 3740) "\1c")
 (data $26.1 (i32.const 3752) "\02\00\00\00\06\00\00\00a\00b\00_")
 (data $27 (i32.const 3772) "\\")
 (data $27.1 (i32.const 3784) "\02\00\00\00H\00\00\00A\00B\00C\00D\00X\00Y\00Z\00a\00f\00g\00k\00l\00m\00n\00w\00y\00z\000\001\002\003\004\005\006\007\008\009\00-\00_\00.\00!\00~\00*\00\'\00(\00)")
 (data $28 (i32.const 3868) "\1c")
 (data $28.1 (i32.const 3880) "\02\00\00\00\02")
 (data $29 (i32.const 3900) "\1c")
 (data $29.1 (i32.const 3912) "\02\00\00\00\06\00\00\00%\000\000")
 (data $30 (i32.const 3932) "\1c")
 (data $30.1 (i32.const 3944) "\02\00\00\00\02\00\00\00+")
 (data $31 (i32.const 3964) "\1c")
 (data $31.1 (i32.const 3976) "\02\00\00\00\06\00\00\00%\002\00B")
 (data $32 (i32.const 3996) "\1c")
 (data $32.1 (i32.const 4008) "\02\00\00\00\06\00\00\00#\000\00=")
 (data $33 (i32.const 4028) ",")
 (data $33.1 (i32.const 4040) "\02\00\00\00\0e\00\00\00%\002\003\000\00%\003\00D")
 (data $34 (i32.const 4076) "\1c")
 (data $34.1 (i32.const 4088) "\02\00\00\00\n\00\00\00 \001\002\003\00 ")
 (data $35 (i32.const 4108) ",")
 (data $35.1 (i32.const 4120) "\02\00\00\00\12\00\00\00%\002\000\001\002\003\00%\002\000")
 (data $36 (i32.const 4156) "\1c")
 (data $36.1 (i32.const 4168) "\02\00\00\00\04\00\00\00?\00+")
 (data $37 (i32.const 4188) "\1c")
 (data $37.1 (i32.const 4200) "\02\00\00\00\0c\00\00\00%\003\00F\00%\002\00B")
 (data $38 (i32.const 4220) "\1c")
 (data $38.1 (i32.const 4232) "\02\00\00\00\n\00\00\00-\00?\001\00.\00-")
 (data $39 (i32.const 4252) ",")
 (data $39.1 (i32.const 4264) "\02\00\00\00\0e\00\00\00-\00%\003\00F\001\00.\00-")
 (data $40 (i32.const 4300) "\1c")
 (data $40.1 (i32.const 4312) "\02\00\00\00\0c\00\00\00<\d8\ed\dd<\d8\fa\dd<\d8N\df")
 (data $41 (i32.const 4332) "\\")
 (data $41.1 (i32.const 4344) "\02\00\00\00H\00\00\00%\00F\000\00%\009\00F\00%\008\007\00%\00A\00D\00%\00F\000\00%\009\00F\00%\008\007\00%\00B\00A\00%\00F\000\00%\009\00F\00%\008\00D\00%\008\00E")
 (data $42 (i32.const 4428) "\1c")
 (data $42.1 (i32.const 4440) "\02\00\00\00\n\00\00\00H\c5U\b1X\d58\c1\94\c6")
 (data $43 (i32.const 4460) "l")
 (data $43.1 (i32.const 4472) "\02\00\00\00Z\00\00\00%\00E\00C\00%\009\005\00%\008\008\00%\00E\00B\00%\008\005\00%\009\005\00%\00E\00D\00%\009\005\00%\009\008\00%\00E\00C\00%\008\004\00%\00B\008\00%\00E\00C\00%\009\00A\00%\009\004")
 (data $44 (i32.const 4572) "\1c")
 (data $44.1 (i32.const 4584) "\02\00\00\00\06\00\00\00~\00\7f\00\80")
 (data $45 (i32.const 4604) ",")
 (data $45.1 (i32.const 4616) "\02\00\00\00\14\00\00\00~\00%\007\00F\00%\00C\002\00%\008\000")
 (data $46 (i32.const 4652) "\1c")
 (data $46.1 (i32.const 4664) "\02\00\00\00\04\00\00\00\00\d8\ff\df")
 (data $47 (i32.const 4684) ",")
 (data $47.1 (i32.const 4696) "\02\00\00\00\18\00\00\00%\00F\000\00%\009\000\00%\008\00F\00%\00B\00F")
 (data $48 (i32.const 4732) "\1c")
 (data $48.1 (i32.const 4744) "\02\00\00\00\n\00\00\00{\da\01\dc-\00P\da\02\dc")
 (data $49 (i32.const 4764) "L")
 (data $49.1 (i32.const 4776) "\02\00\00\002\00\00\00%\00F\002\00%\00A\00E\00%\00B\000\00%\008\001\00-\00%\00F\002\00%\00A\004\00%\008\000\00%\008\002")
 (data $50 (i32.const 4844) "\1c")
 (data $50.1 (i32.const 4856) "\02\00\00\00\n\00\00\00\n\00\t\00\0b\00\0c\00\r")
 (data $51 (i32.const 4876) "<")
 (data $51.1 (i32.const 4888) "\02\00\00\00\1e\00\00\00%\000\00A\00%\000\009\00%\000\00B\00%\000\00C\00%\000\00D")
 (data $52 (i32.const 4940) ",")
 (data $52.1 (i32.const 4952) "\02\00\00\00\14\00\00\00;\00/\00?\00:\00@\00&\00=\00+\00$\00,")
 (data $53 (i32.const 4988) "L")
 (data $53.1 (i32.const 5000) "\02\00\00\00<\00\00\00%\003\00B\00%\002\00F\00%\003\00F\00%\003\00A\00%\004\000\00%\002\006\00%\003\00D\00%\002\00B\00%\002\004\00%\002\00C")
 (data $54 (i32.const 5068) "l")
 (data $54.1 (i32.const 5080) "\02\00\00\00\\\00\00\00h\00t\00t\00p\00:\00/\00/\00e\00n\00.\00w\00i\00k\00i\00p\00e\00d\00i\00a\00.\00o\00r\00g\00/\00w\00i\00k\00i\00/\00U\00T\00F\00-\008\00#\00D\00e\00s\00c\00r\00i\00p\00t\00i\00o\00n")
 (data $55 (i32.const 5180) "\8c")
 (data $55.1 (i32.const 5192) "\02\00\00\00t\00\00\00h\00t\00t\00p\00%\003\00A\00%\002\00F\00%\002\00F\00e\00n\00.\00w\00i\00k\00i\00p\00e\00d\00i\00a\00.\00o\00r\00g\00%\002\00F\00w\00i\00k\00i\00%\002\00F\00U\00T\00F\00-\008\00%\002\003\00D\00e\00s\00c\00r\00i\00p\00t\00i\00o\00n")
 (data $56 (i32.const 5325) "\01\00\00\01")
 (data $56.1 (i32.const 5351) "\01\00\01")
 (data $56.2 (i32.const 5382) "\01\01\01\01\00\01")
 (data $56.3 (i32.const 5414) "\01\01\01")
 (data $57 (i32.const 5420) ",")
 (data $57.1 (i32.const 5432) "\02\00\00\00\16\00\00\00;\00,\00/\00?\00:\00@\00&\00=\00+\00$\00#")
 (data $58 (i32.const 5468) "\1c")
 (data $58.1 (i32.const 5480) "\02\00\00\00\02\00\00\00 ")
 (data $59 (i32.const 5500) "\1c")
 (data $59.1 (i32.const 5512) "\02\00\00\00\06\00\00\00%\002\000")
 (data $60 (i32.const 5532) "\01\01\00\01\00\00\00\00\01\01\00\00\01")
 (data $60.1 (i32.const 5555) "\01\01\00\01\00\01\01")
 (data $61 (i32.const 5564) "\1c")
 (data $61.1 (i32.const 5576) "\02\00\00\00\06\00\00\00%\002\006")
 (data $62 (i32.const 5596) "\1c")
 (data $62.1 (i32.const 5608) "\02\00\00\00\02\00\00\00&")
 (data $63 (i32.const 5628) "\1c")
 (data $63.1 (i32.const 5640) "\02\00\00\00\06\00\00\00%\005\00E")
 (data $64 (i32.const 5660) "\1c")
 (data $64.1 (i32.const 5672) "\02\00\00\00\02\00\00\00^")
 (data $65 (i32.const 5692) "\1c")
 (data $65.1 (i32.const 5704) "\02\00\00\00\02\00\00\00\00\d8")
 (data $66 (i32.const 5724) "L")
 (data $66.1 (i32.const 5736) "\02\00\00\00<\00\00\00%\003\00b\00%\002\00f\00%\003\00f\00%\003\00a\00%\004\000\00%\003\00d\00%\002\00b\00%\002\004\00%\002\00c\00%\002\003")
 (data $67 (i32.const 5804) ",")
 (data $67.1 (i32.const 5816) "\02\00\00\00\14\00\00\00;\00/\00?\00:\00@\00=\00+\00$\00,\00#")
 (data $68 (i32.const 5852) "L")
 (data $68.1 (i32.const 5864) "\02\00\00\00<\00\00\00%\003\00B\00%\002\00F\00%\003\00F\00%\003\00A\00%\004\000\00%\003\00D\00%\002\00B\00%\002\004\00%\002\00C\00%\002\003")
 (data $69 (i32.const 5932) "|")
 (data $69.1 (i32.const 5944) "\02\00\00\00h\00\00\00h\00t\00t\00p\00:\00%\002\00F\00%\002\00F\00e\00n\00.\00w\00i\00k\00i\00p\00e\00d\00i\00a\00.\00o\00r\00g\00/\00w\00i\00k\00i\00/\00U\00T\00F\00-\008\00%\002\003\00D\00e\00s\00c\00r\00i\00p\00t\00i\00o\00n")
 (data $70 (i32.const 6060) "\1c")
 (data $70.1 (i32.const 6072) "\02\00\00\00\0c\00\00\00%\00D\00F\00%\008\000")
 (data $71 (i32.const 6092) "\1c")
 (data $71.1 (i32.const 6104) "\02\00\00\00\02\00\00\00\c0\07")
 (data $72 (i32.const 6124) "\1c")
 (data $72.1 (i32.const 6136) "\02\00\00\00\0c\00\00\00%\00C\002\00%\00B\00F")
 (data $73 (i32.const 6156) "\1c")
 (data $73.1 (i32.const 6168) "\02\00\00\00\02\00\00\00\bf")
 (data $74 (i32.const 6188) ",")
 (data $74.1 (i32.const 6200) "\02\00\00\00\0e\00\00\00\f7\00\b8\00W\00\ef\00\0f\00\f4\00V")
 (data $75 (i32.const 6236) "\1c")
 (data $75.1 (i32.const 6248) "\02\00\00\00\06\00\00\00\f4\00\b8\00\ef")
 (data $76 (i32.const 6272) "\04\00\00\00 \00\00\00 \00\00\00 ")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/number/U32#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6292
  i32.lt_s
  if
   i32.const 39088
   i32.const 39136
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/util/number/utoa32$1
   local.get $1
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1472
    local.set $0
    br $__inlined_func$~lib/util/number/utoa32$1
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
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
   local.tee $2
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
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
     i32.const 1484
     i32.add
     i64.load32_u
     local.get $3
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 1484
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
    i32.const 1484
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
    i32.const 1484
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
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $0
 )
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 3312
  call $~lib/rt/itcms/__visit
  i32.const 3120
  call $~lib/rt/itcms/__visit
  i32.const 3520
  call $~lib/rt/itcms/__visit
  i32.const 1904
  call $~lib/rt/itcms/__visit
  i32.const 2960
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
     i32.const 3184
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
 (func $~lib/rt/itcms/__visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $1
   global.get $~lib/rt/itcms/iter
   i32.eq
   if
    local.get $1
    i32.load offset=8
    local.tee $0
    i32.eqz
    if
     i32.const 0
     i32.const 3184
     i32.const 148
     i32.const 30
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    global.set $~lib/rt/itcms/iter
   end
   block $__inlined_func$~lib/rt/itcms/Object#unlink$144
    local.get $1
    i32.load offset=4
    i32.const -4
    i32.and
    local.tee $0
    i32.eqz
    if
     local.get $1
     i32.load offset=8
     i32.eqz
     local.get $1
     i32.const 39060
     i32.lt_u
     i32.and
     i32.eqz
     if
      i32.const 0
      i32.const 3184
      i32.const 128
      i32.const 18
      call $~lib/builtins/abort
      unreachable
     end
     br $__inlined_func$~lib/rt/itcms/Object#unlink$144
    end
    local.get $1
    i32.load offset=8
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 3184
     i32.const 132
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.store offset=8
    local.get $2
    local.get $0
    local.get $2
    i32.load offset=4
    i32.const 3
    i32.and
    i32.or
    i32.store offset=4
   end
   global.get $~lib/rt/itcms/toSpace
   local.set $2
   local.get $1
   i32.load offset=12
   local.tee $0
   i32.const 2
   i32.le_u
   if (result i32)
    i32.const 1
   else
    local.get $0
    i32.const 6272
    i32.load
    i32.gt_u
    if
     i32.const 3312
     i32.const 3376
     i32.const 21
     i32.const 28
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2
    i32.shl
    i32.const 6276
    i32.add
    i32.load
    i32.const 32
    i32.and
   end
   local.set $3
   local.get $2
   i32.load offset=8
   local.set $0
   local.get $1
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.const 2
   local.get $3
   select
   local.get $2
   i32.or
   i32.store offset=4
   local.get $1
   local.get $0
   i32.store offset=8
   local.get $0
   local.get $1
   local.get $0
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
   local.get $2
   local.get $1
   i32.store offset=8
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
   i32.const 3456
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
   i32.const 3456
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
   i32.const 3456
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
   i32.const 3456
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
   i32.const 3456
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
    i32.const 3456
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
   i32.const 3456
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
   i32.const 3456
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
   i32.const 3456
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
   i32.const 3456
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
    i32.const 3456
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
    i32.const 3456
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
  i32.const 39072
  i32.const 0
  i32.store
  i32.const 40640
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
    i32.const 39072
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
      i32.const 39072
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
  i32.const 39072
  i32.const 40644
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 39072
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
      i32.const 39060
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
     i32.const 3184
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 39060
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
     i32.const 39060
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
       i32.const 3456
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
   i32.const 3456
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
     i32.const 3456
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
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 3120
   i32.const 3184
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt$71
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
      br $__inlined_func$~lib/rt/itcms/interrupt$71
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
  local.set $4
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 3120
   i32.const 3456
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $2
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
  local.tee $5
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size
   local.tee $2
   local.get $5
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $5
    i32.const 536870910
    i32.lt_u
    if (result i32)
     local.get $5
     i32.const 1
     i32.const 27
     local.get $5
     i32.clz
     i32.sub
     i32.shl
     i32.add
     i32.const 1
     i32.sub
    else
     local.get $5
    end
   else
    local.get $5
   end
   i32.const 4
   local.get $4
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
   local.get $4
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 3456
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $5
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 3456
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.set $6
  local.get $5
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 3456
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const -4
  i32.and
  local.get $5
  i32.sub
  local.tee $3
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $5
   local.get $6
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $5
   i32.add
   local.tee $5
   local.get $3
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $6
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
   local.tee $3
   local.get $3
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $2
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
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
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
   local.get $1
   i32.store offset=16
   local.get $0
   return
  end
  local.get $1
  local.get $3
  i32.load offset=12
  call $~lib/rt/itcms/__new
  local.tee $2
  local.get $0
  local.get $1
  local.get $3
  i32.load offset=16
  local.tee $0
  local.get $0
  local.get $1
  i32.gt_u
  select
  memory.copy
  local.get $2
 )
 (func $~lib/util/uri/encode (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  i32.eqz
  if
   local.get $0
   return
  end
  local.get $1
  i32.const 1
  i32.shl
  local.tee $5
  i32.const 2
  call $~lib/rt/itcms/__new
  local.set $3
  loop $while-continue|0
   local.get $1
   local.get $4
   i32.gt_u
   if
    block $while-break|0
     local.get $4
     local.set $6
     loop $do-loop|1
      block $do-break|1
       local.get $0
       local.get $4
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u
       local.tee $7
       i32.const 33
       i32.sub
       local.tee $8
       i32.const 94
       i32.ge_u
       br_if $do-break|1
       local.get $2
       local.get $8
       i32.add
       i32.load8_u
       br_if $do-break|1
       local.get $4
       i32.const 1
       i32.add
       local.tee $4
       local.get $1
       i32.lt_u
       br_if $do-loop|1
      end
     end
     local.get $4
     local.get $6
     i32.gt_u
     if
      local.get $4
      local.get $6
      i32.sub
      i32.const 1
      i32.shl
      local.tee $10
      local.get $9
      i32.add
      local.tee $8
      local.get $5
      i32.gt_u
      if
       local.get $3
       local.get $8
       local.tee $5
       call $~lib/rt/itcms/__renew
       local.set $3
      end
      local.get $3
      local.get $9
      i32.add
      local.get $0
      local.get $6
      i32.const 1
      i32.shl
      i32.add
      local.get $10
      memory.copy
      local.get $9
      local.get $10
      i32.add
      local.set $9
      local.get $1
      local.get $4
      i32.le_u
      br_if $while-break|0
     end
     local.get $7
     i32.const 55296
     i32.ge_u
     if
      local.get $7
      i32.const 57343
      i32.le_u
      local.get $7
      i32.const 56320
      i32.ge_u
      i32.and
      if
       i32.const 3520
       i32.const 3568
       i32.const 81
       i32.const 9
       call $~lib/builtins/abort
       unreachable
      end
      local.get $7
      i32.const 56319
      i32.le_u
      if
       local.get $1
       local.get $4
       i32.le_u
       if
        i32.const 3520
        i32.const 3568
        i32.const 85
        i32.const 11
        call $~lib/builtins/abort
        unreachable
       end
       local.get $0
       local.get $4
       i32.const 1
       i32.add
       local.tee $4
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u
       local.tee $6
       i32.const 56320
       i32.lt_u
       local.get $6
       i32.const 57343
       i32.gt_u
       i32.or
       if
        i32.const 3520
        i32.const 3568
        i32.const 89
        i32.const 11
        call $~lib/builtins/abort
        unreachable
       end
       local.get $6
       i32.const 1023
       i32.and
       local.get $7
       i32.const 1023
       i32.and
       i32.const 10
       i32.shl
       i32.or
       i32.const 65536
       i32.add
       local.set $7
      end
     end
     local.get $9
     i32.const 6
     i32.const 24
     local.get $7
     i32.const 128
     i32.lt_u
     select
     i32.add
     local.tee $6
     local.get $5
     i32.gt_u
     if
      local.get $3
      local.get $6
      i32.const 1
      i32.shl
      local.get $6
      local.get $1
      i32.const 1
      i32.gt_u
      select
      local.tee $5
      call $~lib/rt/itcms/__renew
      local.set $3
     end
     local.get $7
     i32.const 128
     i32.lt_u
     if
      local.get $3
      local.get $9
      i32.add
      local.tee $6
      i32.const 37
      i32.store16
      local.get $6
      local.get $7
      i32.const 4
      i32.shr_u
      i32.const 15
      i32.and
      i32.const 3612
      i32.add
      i32.load8_u
      local.get $7
      i32.const 15
      i32.and
      i32.const 3612
      i32.add
      i32.load8_u
      i32.const 16
      i32.shl
      i32.or
      i32.store offset=2
     else
      local.get $7
      i32.const 2048
      i32.lt_u
      if
       local.get $3
       local.get $9
       i32.add
       local.tee $6
       i32.const 37
       i32.store16
       local.get $6
       local.get $7
       i32.const 6
       i32.shr_u
       i32.const 192
       i32.or
       local.tee $6
       i32.const 4
       i32.shr_u
       i32.const 15
       i32.and
       i32.const 3612
       i32.add
       i32.load8_u
       local.get $6
       i32.const 15
       i32.and
       i32.const 3612
       i32.add
       i32.load8_u
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=2
      else
       local.get $7
       i32.const 65536
       i32.lt_u
       if
        local.get $3
        local.get $9
        i32.add
        local.tee $6
        i32.const 37
        i32.store16
        local.get $6
        local.get $7
        i32.const 12
        i32.shr_u
        i32.const 224
        i32.or
        local.tee $6
        i32.const 4
        i32.shr_u
        i32.const 15
        i32.and
        i32.const 3612
        i32.add
        i32.load8_u
        local.get $6
        i32.const 15
        i32.and
        i32.const 3612
        i32.add
        i32.load8_u
        i32.const 16
        i32.shl
        i32.or
        i32.store offset=2
       else
        local.get $3
        local.get $9
        i32.add
        local.tee $6
        i32.const 37
        i32.store16
        local.get $6
        local.get $7
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        local.tee $6
        i32.const 4
        i32.shr_u
        i32.const 3612
        i32.add
        i32.load8_u
        local.get $6
        i32.const 15
        i32.and
        i32.const 3612
        i32.add
        i32.load8_u
        i32.const 16
        i32.shl
        i32.or
        i32.store offset=2
        local.get $3
        local.get $9
        i32.const 6
        i32.add
        local.tee $9
        i32.add
        local.tee $6
        i32.const 37
        i32.store16
        local.get $6
        local.get $7
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        local.tee $6
        i32.const 4
        i32.shr_u
        i32.const 3612
        i32.add
        i32.load8_u
        local.get $6
        i32.const 15
        i32.and
        i32.const 3612
        i32.add
        i32.load8_u
        i32.const 16
        i32.shl
        i32.or
        i32.store offset=2
       end
       local.get $3
       local.get $9
       i32.const 6
       i32.add
       local.tee $9
       i32.add
       local.tee $6
       i32.const 37
       i32.store16
       local.get $6
       local.get $7
       i32.const 6
       i32.shr_u
       i32.const 63
       i32.and
       i32.const 128
       i32.or
       local.tee $6
       i32.const 4
       i32.shr_u
       i32.const 3612
       i32.add
       i32.load8_u
       local.get $6
       i32.const 15
       i32.and
       i32.const 3612
       i32.add
       i32.load8_u
       i32.const 16
       i32.shl
       i32.or
       i32.store offset=2
      end
      local.get $3
      local.get $9
      i32.const 6
      i32.add
      local.tee $9
      i32.add
      local.tee $6
      i32.const 37
      i32.store16
      local.get $6
      local.get $7
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      local.tee $6
      i32.const 4
      i32.shr_u
      i32.const 3612
      i32.add
      i32.load8_u
      local.get $6
      i32.const 15
      i32.and
      i32.const 3612
      i32.add
      i32.load8_u
      i32.const 16
      i32.shl
      i32.or
      i32.store offset=2
     end
     local.get $9
     i32.const 6
     i32.add
     local.set $9
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|0
    end
   end
  end
  local.get $5
  local.get $9
  i32.gt_u
  if (result i32)
   local.get $3
   local.get $9
   call $~lib/rt/itcms/__renew
  else
   local.get $3
  end
 )
 (func $~lib/util/uri/decode (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  i32.eqz
  if
   local.get $0
   return
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.set $9
  loop $while-continue|0
   local.get $1
   local.get $3
   i32.gt_u
   if
    block $while-break|0
     local.get $3
     local.set $4
     loop $while-continue|1
      local.get $1
      local.get $3
      i32.gt_u
      if (result i32)
       local.get $0
       local.get $3
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u
       local.tee $5
       i32.const 37
       i32.ne
      else
       i32.const 0
      end
      if
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $while-continue|1
      end
     end
     local.get $3
     local.get $4
     i32.gt_u
     if
      local.get $6
      local.get $9
      i32.add
      local.get $0
      local.get $4
      i32.const 1
      i32.shl
      i32.add
      local.get $3
      local.get $4
      i32.sub
      i32.const 1
      i32.shl
      local.tee $4
      memory.copy
      local.get $4
      local.get $6
      i32.add
      local.set $6
      local.get $1
      local.get $3
      i32.le_u
      br_if $while-break|0
     end
     local.get $5
     i32.const 37
     i32.ne
     local.get $3
     i32.const 2
     i32.add
     local.get $1
     i32.ge_u
     i32.or
     if (result i32)
      i32.const 1
     else
      local.get $0
      local.get $3
      i32.const 1
      i32.add
      i32.const 1
      i32.shl
      i32.add
      local.tee $4
      i32.load16_u offset=2
      local.set $5
      local.get $4
      i32.load16_u
      local.tee $4
      i32.const 48
      i32.sub
      i32.const 10
      i32.lt_u
      if (result i32)
       i32.const 1
      else
       local.get $4
       i32.const 32
       i32.or
       i32.const 97
       i32.sub
       i32.const 6
       i32.lt_u
      end
      if (result i32)
       local.get $5
       i32.const 48
       i32.sub
       i32.const 10
       i32.lt_u
       if (result i32)
        i32.const 1
       else
        local.get $5
        i32.const 32
        i32.or
        i32.const 97
        i32.sub
        i32.const 6
        i32.lt_u
       end
      else
       i32.const 0
      end
      if (result i32)
       local.get $5
       i32.const 32
       i32.or
       i32.const 39
       i32.rem_u
       i32.const 9
       i32.sub
       local.get $4
       i32.const 32
       i32.or
       i32.const 39
       i32.rem_u
       i32.const 9
       i32.sub
       i32.const 4
       i32.shl
       i32.or
      else
       i32.const -1
      end
      local.tee $5
      i32.const -1
      i32.eq
     end
     if
      i32.const 3520
      i32.const 3568
      i32.const 164
      i32.const 7
      call $~lib/builtins/abort
      unreachable
     end
     local.get $3
     i32.const 3
     i32.add
     local.set $3
     local.get $5
     i32.const 128
     i32.lt_u
     if
      local.get $2
      if (result i32)
       i32.const 0
      else
       local.get $5
       i32.const 35
       i32.sub
       i32.const 30
       i32.lt_u
       if (result i32)
        local.get $5
        i32.const 5497
        i32.add
        i32.load8_u
       else
        i32.const 0
       end
      end
      if
       i32.const 37
       local.set $5
       local.get $3
       i32.const 2
       i32.sub
       local.set $3
      end
     else
      i32.const 1
      local.get $5
      i32.const 192
      i32.sub
      i32.const 56
      i32.lt_u
      if (result i32)
       local.get $5
       i32.const 24
       i32.shl
       i32.const -1
       i32.xor
       i32.clz
      else
       i32.const 0
      end
      local.tee $4
      i32.const 17
      i32.mul
      i32.const 2
      i32.shr_u
      i32.const 1
      i32.sub
      i32.shl
      local.set $8
      local.get $5
      i32.const 128
      local.get $4
      i32.shr_u
      i32.const 1
      i32.sub
      i32.const 0
      local.get $4
      select
      i32.and
      local.set $5
      loop $while-continue|2
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       if
        block $while-break|2
         local.get $3
         i32.const 2
         i32.add
         local.get $1
         i32.ge_u
         if (result i32)
          i32.const 1
         else
          local.get $0
          local.get $3
          i32.const 1
          i32.shl
          i32.add
          i32.load16_u
          i32.const 37
          i32.ne
         end
         if (result i32)
          i32.const 1
         else
          local.get $0
          local.get $3
          i32.const 1
          i32.add
          i32.const 1
          i32.shl
          i32.add
          local.tee $10
          i32.load16_u offset=2
          local.set $7
          local.get $10
          i32.load16_u
          local.tee $10
          i32.const 48
          i32.sub
          i32.const 10
          i32.lt_u
          if (result i32)
           i32.const 1
          else
           local.get $10
           i32.const 32
           i32.or
           i32.const 97
           i32.sub
           i32.const 6
           i32.lt_u
          end
          if (result i32)
           local.get $7
           i32.const 48
           i32.sub
           i32.const 10
           i32.lt_u
           if (result i32)
            i32.const 1
           else
            local.get $7
            i32.const 32
            i32.or
            i32.const 97
            i32.sub
            i32.const 6
            i32.lt_u
           end
          else
           i32.const 0
          end
          if (result i32)
           local.get $7
           i32.const 32
           i32.or
           i32.const 39
           i32.rem_u
           i32.const 9
           i32.sub
           local.get $10
           i32.const 32
           i32.or
           i32.const 39
           i32.rem_u
           i32.const 9
           i32.sub
           i32.const 4
           i32.shl
           i32.or
          else
           i32.const -1
          end
          local.tee $7
          i32.const -1
          i32.eq
         end
         if
          i32.const 3520
          i32.const 3568
          i32.const 187
          i32.const 11
          call $~lib/builtins/abort
          unreachable
         end
         local.get $3
         i32.const 3
         i32.add
         local.set $3
         local.get $7
         i32.const 192
         i32.and
         i32.const 128
         i32.ne
         if
          i32.const 0
          local.set $5
          br $while-break|2
         end
         local.get $7
         i32.const 63
         i32.and
         local.get $5
         i32.const 6
         i32.shl
         i32.or
         local.set $5
         br $while-continue|2
        end
       end
      end
      local.get $8
      i32.const -1
      i32.eq
      local.get $5
      local.get $8
      i32.lt_u
      i32.or
      local.get $5
      i32.const 1114111
      i32.gt_u
      i32.or
      if (result i32)
       i32.const 1
      else
       local.get $5
       i32.const 57344
       i32.lt_u
       local.get $5
       i32.const 55296
       i32.ge_u
       i32.and
      end
      if
       i32.const 3520
       i32.const 3568
       i32.const 199
       i32.const 9
       call $~lib/builtins/abort
       unreachable
      end
      local.get $5
      i32.const 65536
      i32.ge_u
      if
       local.get $6
       local.get $9
       i32.add
       local.get $5
       i32.const 65536
       i32.sub
       local.tee $5
       i32.const 10
       i32.shr_u
       i32.const 55296
       i32.or
       local.get $5
       i32.const 1023
       i32.and
       i32.const 56320
       i32.or
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $6
       i32.const 4
       i32.add
       local.set $6
       br $while-continue|0
      end
     end
     local.get $6
     local.get $9
     i32.add
     local.get $5
     i32.store16
     local.get $6
     i32.const 2
     i32.add
     local.set $6
     br $while-continue|0
    end
   end
  end
  local.get $1
  i32.const 1
  i32.shl
  local.get $6
  i32.lt_u
  if
   i32.const 0
   i32.const 3568
   i32.const 216
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  local.get $6
  i32.gt_u
  if (result i32)
   local.get $9
   local.get $6
   call $~lib/rt/itcms/__renew
  else
   local.get $9
  end
 )
 (func $~start
  call $start:std/uri
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6292
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
   i32.const 6292
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.tee $2
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const -2
   i32.and
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   block $__inlined_func$~lib/string/String#concat$149
    local.get $1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const -2
    i32.and
    local.tee $4
    local.get $3
    i32.add
    local.tee $0
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 1056
     local.set $0
     br $__inlined_func$~lib/string/String#concat$149
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
    local.get $4
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
   local.get $0
   return
  end
  i32.const 39088
  i32.const 39136
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/builtins/abort (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6292
  i32.lt_s
  if
   i32.const 39088
   i32.const 39136
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 40
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 1184
  local.get $0
  select
  local.tee $0
  i32.store
  local.get $1
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=36
   i32.const 1216
   local.get $1
   call $~lib/string/String.__concat
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=32
   local.get $1
   i32.const 1248
   call $~lib/string/String.__concat
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=24
   local.get $2
   call $~lib/number/U32#toString
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   local.get $1
   local.get $2
   call $~lib/string/String.__concat
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=20
   local.get $1
   i32.const 1248
   call $~lib/string/String.__concat
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   local.get $3
   call $~lib/number/U32#toString
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   local.get $1
   local.get $2
   call $~lib/string/String.__concat
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   call $~lib/string/String.__concat
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 3056
  i32.const 2626
  i32.const 5
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/uri/encodeURIComponent (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6292
  i32.lt_s
  if
   i32.const 39088
   i32.const 39136
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
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1068
  call $~lib/util/uri/encode
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
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
  i32.const 6292
  i32.lt_s
  if
   i32.const 39088
   i32.const 39136
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
   block $__inlined_func$~lib/util/string/compareImpl$91
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
      br_if $__inlined_func$~lib/util/string/compareImpl$91
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
 (func $~lib/uri/encodeURI (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6292
  i32.lt_s
  if
   i32.const 39088
   i32.const 39136
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
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 5324
  call $~lib/util/uri/encode
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/uri/decodeURIComponent (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6292
  i32.lt_s
  if
   i32.const 39088
   i32.const 39136
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
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  call $~lib/util/uri/decode
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/uri/decodeURI (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6292
  i32.lt_s
  if
   i32.const 39088
   i32.const 39136
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
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 0
  call $~lib/util/uri/decode
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $start:std/uri
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6292
  i32.lt_s
  if
   i32.const 39088
   i32.const 39136
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  memory.size
  i32.const 16
  i32.shl
  i32.const 39060
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 3236
  i32.const 3232
  i32.store
  i32.const 3240
  i32.const 3232
  i32.store
  i32.const 3232
  global.set $~lib/rt/itcms/pinSpace
  i32.const 3268
  i32.const 3264
  i32.store
  i32.const 3272
  i32.const 3264
  i32.store
  i32.const 3264
  global.set $~lib/rt/itcms/toSpace
  i32.const 3412
  i32.const 3408
  i32.store
  i32.const 3416
  i32.const 3408
  i32.store
  i32.const 3408
  global.set $~lib/rt/itcms/fromSpace
  i32.const 1056
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3696
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3696
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 5
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3728
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3728
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 6
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3760
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3760
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 7
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3792
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3792
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 8
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3888
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3920
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 12
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3952
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3984
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 13
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4016
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4048
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 14
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4096
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4128
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 15
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4176
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 16
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4240
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4272
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 17
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4320
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4352
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 18
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4448
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4480
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 19
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4592
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4624
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 20
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4672
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4704
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4752
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4784
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4864
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4896
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 24
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4960
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5008
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 26
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5088
  call $~lib/uri/encodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5200
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 28
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 39
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3696
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3696
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 40
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5440
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5440
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3792
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3792
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 42
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5488
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5520
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 46
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4592
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4624
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 47
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4672
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4704
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 48
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4864
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4896
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 50
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5088
  call $~lib/uri/encodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 51
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 62
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3696
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3696
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 63
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5584
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5616
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 64
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5648
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5680
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 65
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5712
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5712
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 66
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4672
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4672
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 67
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5744
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5824
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 68
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5872
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5824
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 69
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5952
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 70
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4352
  call $~lib/uri/decodeURIComponent
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4320
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 75
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 85
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3696
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 3696
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 86
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5584
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5584
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 87
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6080
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 6112
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 88
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6144
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 6176
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 89
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5712
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5712
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 90
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4672
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4672
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 91
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5744
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5744
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 92
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4352
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 4320
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 93
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6208
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 6208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 94
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6256
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 6256
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 95
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 5952
  call $~lib/uri/decodeURI
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 5952
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3648
   i32.const 96
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 39060
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
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
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  block $invalid
   block $~lib/arraybuffer/ArrayBufferView
    block $~lib/string/String
     block $~lib/arraybuffer/ArrayBuffer
      block $~lib/object/Object
       local.get $0
       i32.const 8
       i32.sub
       i32.load
       br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $invalid
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
  unreachable
 )
)
