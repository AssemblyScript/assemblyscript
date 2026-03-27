(module
 (type $0 (func (param i32 i32) (result i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func (param i32)))
 (type $3 (func (param i32 i32)))
 (type $4 (func))
 (type $5 (func (result i32)))
 (type $6 (func (param i32 i32 i64)))
 (type $7 (func (param i32 i32 i32 i32) (result i32)))
 (type $8 (func (param i32 i32 i32 i32)))
 (type $9 (func (param i32 i32 i32)))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $exceptions/tryCatchFinallyRan (mut i32) (i32.const 0))
 (global $exceptions/tryCatchFinallyResult (mut i32) (i32.const 0))
 (global $exceptions/finallyWithExceptionRan (mut i32) (i32.const 0))
 (global $exceptions/Resource.instances (mut i32) (i32.const 0))
 (global $exceptions/Resource.disposed (mut i32) (i32.const 0))
 (global $exceptions/calc (mut i32) (i32.const 0))
 (global $exceptions/outer (mut i32) (i32.const 0))
 (global $exceptions/rethrowFinallyRan (mut i32) (i32.const 0))
 (global $exceptions/sm (mut i32) (i32.const 0))
 (global $exceptions/deepNestingOrder (mut i32) (i32.const 1216))
 (global $exceptions/counter (mut i32) (i32.const 0))
 (global $exceptions/multiReturnFinallyCount (mut i32) (i32.const 0))
 (global $exceptions/finallyReturnSuppressedExceptionRan (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 37804))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $2 (i32.const 1132) "\1c")
 (data $2.1 (i32.const 1144) "\02\00\00\00\n\00\00\00a\00b\00o\00r\00t")
 (data $3 (i32.const 1164) "\1c")
 (data $3.1 (i32.const 1176) "\02\00\00\00\08\00\00\00 \00i\00n\00 ")
 (data $4 (i32.const 1196) "\1c")
 (data $4.1 (i32.const 1208) "\02")
 (data $5 (i32.const 1228) "\1c")
 (data $5.1 (i32.const 1240) "\02\00\00\00\02\00\00\00:")
 (data $6 (i32.const 1260) ",")
 (data $6.1 (i32.const 1272) "\02\00\00\00\14\00\00\00R\00a\00n\00g\00e\00E\00r\00r\00o\00r")
 (data $7 (i32.const 1308) "<")
 (data $7.1 (i32.const 1320) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $9 (i32.const 1404) "<")
 (data $9.1 (i32.const 1416) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $10 (i32.const 1468) "|")
 (data $10.1 (i32.const 1480) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $11 (i32.const 1596) "\1c")
 (data $11.1 (i32.const 1608) "\02\00\00\00\02\00\00\000")
 (data $12 (i32.const 1628) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $13 (i32.const 2028) "\1c\04")
 (data $13.1 (i32.const 2040) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data $14 (i32.const 3084) "\\")
 (data $14.1 (i32.const 3096) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $16 (i32.const 3212) "<")
 (data $16.1 (i32.const 3224) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $17 (i32.const 3276) "\1c")
 (data $17.1 (i32.const 3288) "\02\00\00\00\n\00\00\00E\00r\00r\00o\00r")
 (data $18 (i32.const 3308) "\1c")
 (data $18.1 (i32.const 3320) "\02\00\00\00\08\00\00\00o\00o\00p\00s")
 (data $19 (i32.const 3340) ",")
 (data $19.1 (i32.const 3352) "\02\00\00\00\1a\00\00\00e\00x\00c\00e\00p\00t\00i\00o\00n\00s\00.\00t\00s")
 (data $20 (i32.const 3388) "\1c")
 (data $20.1 (i32.const 3400) "\02\00\00\00\06\00\00\00m\00s\00g")
 (data $21 (i32.const 3420) "\1c")
 (data $21.1 (i32.const 3432) "\02\00\00\00\n\00\00\00i\00n\00n\00e\00r")
 (data $22 (i32.const 3452) "\1c")
 (data $22.1 (i32.const 3464) "\02\00\00\00\n\00\00\00o\00u\00t\00e\00r")
 (data $23 (i32.const 3484) "\1c")
 (data $23.1 (i32.const 3496) "\02\00\00\00\n\00\00\00e\00r\00r\00o\00r")
 (data $24 (i32.const 3516) ",")
 (data $24.1 (i32.const 3528) "\02\00\00\00\1c\00\00\00w\00i\00l\00l\00 \00p\00r\00o\00p\00a\00g\00a\00t\00e")
 (data $25 (i32.const 3564) "\1c")
 (data $25.1 (i32.const 3576) "\02\00\00\00\0c\00\00\00c\00u\00s\00t\00o\00m")
 (data $26 (i32.const 3596) ",")
 (data $26.1 (i32.const 3608) "\02\00\00\00\16\00\00\00w\00o\00r\00k\00 \00f\00a\00i\00l\00e\00d")
 (data $27 (i32.const 3644) "<")
 (data $27.1 (i32.const 3656) "\02\00\00\00 \00\00\00d\00i\00v\00i\00s\00i\00o\00n\00 \00b\00y\00 \00z\00e\00r\00o")
 (data $28 (i32.const 3708) ",")
 (data $28.1 (i32.const 3720) "\02\00\00\00\16\00\00\00i\00n\00n\00e\00r\00 \00e\00r\00r\00o\00r")
 (data $29 (i32.const 3756) ",")
 (data $29.1 (i32.const 3768) "\02\00\00\00\1a\00\00\00w\00r\00a\00p\00p\00e\00d\00 \00e\00r\00r\00o\00r")
 (data $30 (i32.const 3804) ",")
 (data $30.1 (i32.const 3816) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $31 (i32.const 3852) ",")
 (data $31.1 (i32.const 3864) "\02\00\00\00\18\00\00\00s\00u\00m\00 \00e\00x\00c\00e\00e\00d\00e\00d")
 (data $32 (i32.const 3900) ",")
 (data $32.1 (i32.const 3912) "\02\00\00\00\10\00\00\00o\00r\00i\00g\00i\00n\00a\00l")
 (data $33 (i32.const 3948) ",")
 (data $33.1 (i32.const 3960) "\02\00\00\00\14\00\00\00r\00e\00t\00h\00r\00o\00w\00n\00:\00 ")
 (data $34 (i32.const 3996) ",")
 (data $34.1 (i32.const 4008) "\02\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00s\00t\00a\00t\00e")
 (data $35 (i32.const 4044) "\1c")
 (data $35.1 (i32.const 4056) "\02\00\00\00\06\00\00\00t\001\00,")
 (data $36 (i32.const 4076) "\1c")
 (data $36.1 (i32.const 4088) "\02\00\00\00\06\00\00\00t\002\00,")
 (data $37 (i32.const 4108) "\1c")
 (data $37.1 (i32.const 4120) "\02\00\00\00\06\00\00\00t\003\00,")
 (data $38 (i32.const 4140) "\1c")
 (data $38.1 (i32.const 4152) "\02\00\00\00\08\00\00\00d\00e\00e\00p")
 (data $39 (i32.const 4172) "\1c")
 (data $39.1 (i32.const 4184) "\02\00\00\00\06\00\00\00c\003\00,")
 (data $40 (i32.const 4204) ",")
 (data $40.1 (i32.const 4216) "\02\00\00\00\0e\00\00\00r\00e\00t\00h\00r\00o\00w")
 (data $41 (i32.const 4252) "\1c")
 (data $41.1 (i32.const 4264) "\02\00\00\00\06\00\00\00f\003\00,")
 (data $42 (i32.const 4284) "\1c")
 (data $42.1 (i32.const 4296) "\02\00\00\00\06\00\00\00c\002\00,")
 (data $43 (i32.const 4316) "\1c")
 (data $43.1 (i32.const 4328) "\02\00\00\00\06\00\00\00f\002\00,")
 (data $44 (i32.const 4348) "\1c")
 (data $44.1 (i32.const 4360) "\02\00\00\00\06\00\00\00c\001\00,")
 (data $45 (i32.const 4380) "\1c")
 (data $45.1 (i32.const 4392) "\02\00\00\00\06\00\00\00f\001\00,")
 (data $46 (i32.const 4412) "L")
 (data $46.1 (i32.const 4424) "\02\00\00\000\00\00\00t\001\00,\00t\002\00,\00t\003\00,\00c\003\00,\00f\003\00,\00c\002\00,\00f\002\00,\00f\001\00,")
 (data $47 (i32.const 4492) ",")
 (data $47.1 (i32.const 4504) "\02\00\00\00\16\00\00\00m\00a\00x\00 \00r\00e\00a\00c\00h\00e\00d")
 (data $48 (i32.const 4540) "\1c")
 (data $48.1 (i32.const 4552) "\02\00\00\00\08\00\00\00z\00e\00r\00o")
 (data $49 (i32.const 4572) "\1c")
 (data $49.1 (i32.const 4584) "\02\00\00\00\08\00\00\00t\00e\00s\00t")
 (data $50 (i32.const 4604) "<")
 (data $50.1 (i32.const 4616) "\02\00\00\00(\00\00\00s\00h\00o\00u\00l\00d\00 \00b\00e\00 \00s\00u\00p\00p\00r\00e\00s\00s\00e\00d")
 (data $51 (i32.const 4668) "L")
 (data $51.1 (i32.const 4680) "\02\00\00\000\00\00\00t\00h\00i\00s\00 \00s\00h\00o\00u\00l\00d\00 \00b\00e\00 \00c\00a\00t\00c\00h\00a\00b\00l\00e")
 (data $52 (i32.const 4748) "<")
 (data $52.1 (i32.const 4760) "\02\00\00\00&\00\00\00a\00b\00o\00r\00t\00 \00f\00r\00o\00m\00 \00f\00u\00n\00c\00t\00i\00o\00n")
 (data $53 (i32.const 4812) ",")
 (data $53.1 (i32.const 4824) "\02\00\00\00\12\00\00\00t\00y\00p\00e\00 \00t\00e\00s\00t")
 (data $54 (i32.const 4860) ",")
 (data $54.1 (i32.const 4872) "\02\00\00\00\1c\00\00\00c\00u\00s\00t\00o\00m\00 \00e\00r\00r\00o\00r\00 \002")
 (data $55 (i32.const 4908) "<")
 (data $55.1 (i32.const 4920) "\02\00\00\00 \00\00\00i\00n\00v\00a\00l\00i\00d\00 \00d\00o\00w\00n\00c\00a\00s\00t")
 (data $56 (i32.const 4976) "\0e\00\00\00 \00\00\00 \00\00\00 ")
 (data $56.1 (i32.const 5008) " \00\00\00 \00\00\00\00\00\00\00 \00\00\00\02\t\00\00 \00\00\00 ")
 (tag $error (type $2) (param i32))
 (export "memory" (memory $0))
 (start $~start)
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
    i32.const 1328
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink$271
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
    i32.const 37804
    i32.lt_u
    i32.and
    i32.eqz
    if
     i32.const 0
     i32.const 1328
     i32.const 128
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/itcms/Object#unlink$271
   end
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1328
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
   i32.const 4976
   i32.load
   i32.gt_u
   if
    i32.const 0
    i32.const 1424
    call $~lib/error/Error#constructor
    throw $error
   end
   local.get $1
   i32.const 2
   i32.shl
   i32.const 4980
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
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1328
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
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $0
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $1
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $0
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
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/util/number/utoa32$17
   local.get $1
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1616
    local.set $0
    br $__inlined_func$~lib/util/number/utoa32$17
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
     i32.const 1628
     i32.add
     i64.load32_u
     local.get $3
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 1628
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
    i32.const 1628
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
    i32.const 1628
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
  global.get $exceptions/calc
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $exceptions/outer
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $exceptions/sm
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $exceptions/deepNestingOrder
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $exceptions/counter
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1424
  call $~lib/rt/itcms/__visit
  i32.const 3824
  call $~lib/rt/itcms/__visit
  i32.const 1056
  call $~lib/rt/itcms/__visit
  i32.const 2048
  call $~lib/rt/itcms/__visit
  i32.const 3104
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
     i32.const 1328
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
   i32.const 3232
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
   i32.const 3232
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
   i32.const 3232
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
   i32.const 3232
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
   i32.const 3232
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
    i32.const 3232
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
   i32.const 3232
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
   i32.const 3232
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
   i32.const 3232
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
   i32.const 3232
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
    i32.const 3232
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
    i32.const 3232
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
  i32.const 37808
  i32.const 0
  i32.store
  i32.const 39376
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
    i32.const 37808
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
      i32.const 37808
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
  i32.const 37808
  i32.const 39380
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 37808
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
      i32.const 37804
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
     i32.const 1328
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 37804
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
     i32.const 37804
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
       i32.const 3232
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
   i32.const 3232
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
     i32.const 3232
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
   i32.const 0
   i32.const 1056
   call $~lib/error/Error#constructor
   throw $error
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
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
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
   i32.const 0
   i32.const 1056
   call $~lib/error/Error#constructor
   throw $error
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
    i32.const 3232
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
   i32.const 3232
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
   i32.const 3232
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
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $1
  local.get $3
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $1
   i32.const 7
   i32.and
   local.get $2
   i32.const 7
   i32.and
   i32.or
  else
   i32.const 1
  end
  i32.eqz
  if
   loop $do-loop|0
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
     br_if $do-loop|0
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
 (func $exceptions/testMultipleReturnsWithFinally (param $0 i32) (result i32)
  (local $1 i32)
  block $finally_dispatch|0
   try $try_finally|0
    try
     local.get $0
     i32.const 0
     i32.lt_s
     if
      i32.const -1
      local.set $1
      br $finally_dispatch|0
     end
     local.get $0
     i32.eqz
     if
      i32.const 0
      i32.const 4560
      call $~lib/error/Error#constructor
      throw $error
     end
     local.get $0
     i32.const 100
     i32.gt_s
     if
      i32.const 100
      local.set $1
      br $finally_dispatch|0
     end
     local.get $0
     local.set $1
     br $finally_dispatch|0
    catch $error
     
     drop
     br $finally_dispatch|0
    end
    unreachable
   catch_all
    global.get $exceptions/multiReturnFinallyCount
    i32.const 1
    i32.add
    global.set $exceptions/multiReturnFinallyCount
    rethrow $try_finally|0
   end
   unreachable
  end
  global.get $exceptions/multiReturnFinallyCount
  i32.const 1
  i32.add
  global.set $exceptions/multiReturnFinallyCount
  local.get $1
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  block $folding-inner0
   block $invalid
    block $exceptions/Counter
     block $exceptions/StateMachine
      block $~lib/array/Array<i32>
       block $exceptions/Inner
        block $exceptions/Outer
         block $exceptions/Calculator
          block $exceptions/Resource
           block $~lib/arraybuffer/ArrayBufferView
            block $~lib/string/String
             block $~lib/arraybuffer/ArrayBuffer
              block $~lib/object/Object
               local.get $0
               i32.const 8
               i32.sub
               i32.load
               br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $folding-inner0 $folding-inner0 $folding-inner0 $exceptions/Resource $exceptions/Calculator $exceptions/Outer $exceptions/Inner $~lib/array/Array<i32> $exceptions/StateMachine $exceptions/Counter $invalid
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
        i32.load
        call $~lib/rt/itcms/__visit
        return
       end
       return
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 5036
      i32.lt_s
      if
       i32.const 37824
       i32.const 37872
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
      call $~lib/rt/itcms/__visit
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      return
     end
     return
    end
    return
   end
   unreachable
  end
  local.get $0
  i32.load
  call $~lib/rt/itcms/__visit
  local.get $0
  i32.load offset=4
  call $~lib/rt/itcms/__visit
  local.get $0
  i32.load offset=8
  call $~lib/rt/itcms/__visit
 )
 (func $~start
  call $start:exceptions
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
   i32.const 5036
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
   i32.const 5036
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
   block $__inlined_func$~lib/string/String#concat$277
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
     i32.const 1216
     local.set $0
     br $__inlined_func$~lib/string/String#concat$277
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
  i32.const 37824
  i32.const 37872
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/error/RangeError#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
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
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $0
  call $~lib/error/Error#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 1280
  i32.store
  local.get $0
  i32.const 1280
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/builtins/abort (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
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
  i32.const 1152
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
   i32.const 1184
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
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  i32.const 0
  local.get $0
  call $~lib/error/Error#constructor
  throw $error
 )
 (func $~lib/error/Error#constructor (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
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
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 3296
  i32.store
  local.get $0
  i32.const 3296
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 1216
  i32.store offset=4
  local.get $0
  i32.const 1216
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
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
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $2
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
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $0
   i32.const 0
   local.get $1
   local.get $2
   call $~lib/util/string/compareImpl
   i32.eqz
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $exceptions/CustomError#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
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
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.const 6
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  local.get $0
  call $~lib/error/Error#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $exceptions/Resource#constructor (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 7
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $exceptions/Resource.instances
  i32.const 1
  i32.add
  global.set $exceptions/Resource.instances
  local.get $0
  global.get $exceptions/Resource.instances
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $exceptions/Calculator#divide (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  try
   local.get $1
   i32.eqz
   if
    i32.const 0
    i32.const 3664
    call $~lib/error/Error#constructor
    throw $error
   end
   i32.const 10
   local.get $1
   i32.div_s
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  catch $error
   
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const -1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 0
   return
  end
  unreachable
 )
 (func $exceptions/Calculator#safeDivide (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $finally_dispatch|0
   try $try_finally|0
    try
     local.get $1
     i32.eqz
     if
      i32.const 0
      i32.const 3664
      call $~lib/error/Error#constructor
      throw $error
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     i32.const 20
     local.get $1
     i32.div_s
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     i32.load
     local.set $0
     br $finally_dispatch|0
    catch $error
     
     drop
     i32.const -1
     local.set $0
     br $finally_dispatch|0
    end
    unreachable
   catch_all
    rethrow $try_finally|0
   end
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<i32>#__set (param $0 i32) (param $1 i32) (param $2 i32)
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
   i32.const 5036
   i32.lt_s
   br_if $folding-inner0
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
     i32.const 1424
     call $~lib/error/RangeError#constructor
     throw $error
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 5036
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    i32.const 1
    i32.add
    local.tee $5
    local.get $0
    i32.load offset=8
    local.tee $3
    i32.const 2
    i32.shr_u
    i32.gt_u
    if
     local.get $5
     i32.const 268435455
     i32.gt_u
     if
      i32.const 3824
      call $~lib/error/RangeError#constructor
      throw $error
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     block $__inlined_func$~lib/rt/itcms/__renew$249
      i32.const 1073741820
      local.get $3
      i32.const 1
      i32.shl
      local.tee $3
      local.get $3
      i32.const 1073741820
      i32.ge_u
      select
      local.tee $4
      i32.const 8
      local.get $5
      local.get $5
      i32.const 8
      i32.le_u
      select
      i32.const 2
      i32.shl
      local.tee $3
      local.get $3
      local.get $4
      i32.lt_u
      select
      local.tee $6
      local.get $0
      i32.load
      local.tee $3
      i32.const 20
      i32.sub
      local.tee $5
      i32.load
      i32.const -4
      i32.and
      i32.const 16
      i32.sub
      i32.le_u
      if
       local.get $5
       local.get $6
       i32.store offset=16
       local.get $3
       local.set $4
       br $__inlined_func$~lib/rt/itcms/__renew$249
      end
      local.get $6
      local.get $5
      i32.load offset=12
      call $~lib/rt/itcms/__new
      local.tee $4
      local.get $3
      local.get $6
      local.get $5
      i32.load offset=16
      local.tee $5
      local.get $5
      local.get $6
      i32.gt_u
      select
      memory.copy
     end
     local.get $3
     local.get $4
     i32.ne
     if
      local.get $0
      local.get $4
      i32.store
      local.get $0
      local.get $4
      i32.store offset=4
      local.get $0
      local.get $4
      call $~lib/rt/itcms/__link
     end
     local.get $0
     local.get $6
     i32.store offset=8
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    local.get $1
    i32.const 1
    i32.add
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
   return
  end
  i32.const 37824
  i32.const 37872
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $exceptions/testArrayWithExceptions (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
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
  i32.const 11
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $0
  local.get $3
  i32.store
  local.get $0
  local.get $3
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 32
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/array/Array<i32>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/array/Array<i32>#__set
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/array/Array<i32>#__set
  try
   loop $for-loop|1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 5036
    i32.lt_s
    if
     i32.const 37824
     i32.const 37872
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
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    local.get $3
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 5036
     i32.lt_s
     if
      i32.const 37824
      i32.const 37872
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
      i32.const 1424
      call $~lib/error/RangeError#constructor
      throw $error
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
     local.set $3
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $2
     local.get $3
     i32.add
     local.tee $2
     i32.const 5
     i32.gt_s
     if
      i32.const 0
      i32.const 3872
      call $~lib/error/Error#constructor
      throw $error
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|1
    end
   end
  catch $error
   
   drop
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $exceptions/StateMachine#transition (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  try
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    i32.const 4016
    call $~lib/error/Error#constructor
    throw $error
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $1
   i32.store
  catch $error
   
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 1
   i32.store8 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const -1
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $exceptions/Counter#increment (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  try
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load
   i32.const 1
   i32.add
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   i32.const 3
   i32.gt_s
   if
    i32.const 0
    i32.const 4512
    call $~lib/error/Error#constructor
    throw $error
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  catch $error
   
   drop
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const -1
   return
  end
  unreachable
 )
 (func $~lib/string/String#includes (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 5036
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
   i32.const 5036
   i32.lt_s
   br_if $folding-inner0
   local.get $0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   block $__inlined_func$~lib/string/String#indexOf$279
    local.get $1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee $3
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 0
     local.set $0
     br $__inlined_func$~lib/string/String#indexOf$279
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    local.get $2
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee $4
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/string/String#indexOf$279
    end
    i32.const 0
    local.set $0
    local.get $4
    local.get $3
    i32.sub
    local.set $4
    loop $for-loop|0
     local.get $0
     local.get $4
     i32.le_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      local.get $2
      local.get $0
      local.get $1
      local.get $3
      call $~lib/util/string/compareImpl
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.add
       global.set $~lib/memory/__stack_pointer
       br $__inlined_func$~lib/string/String#indexOf$279
      end
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const -1
    local.set $0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.const -1
   i32.ne
   return
  end
  i32.const 37824
  i32.const 37872
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $start:exceptions
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
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
  i32.const 37804
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1108
  i32.const 1104
  i32.store
  i32.const 1112
  i32.const 1104
  i32.store
  i32.const 1104
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1380
  i32.const 1376
  i32.store
  i32.const 1384
  i32.const 1376
  i32.store
  i32.const 1376
  global.set $~lib/rt/itcms/toSpace
  i32.const 3188
  i32.const 3184
  i32.store
  i32.const 3192
  i32.const 3184
  i32.store
  i32.const 3184
  global.set $~lib/rt/itcms/fromSpace
  block $__inlined_func$exceptions/testTryCatch$182
   try
    i32.const 0
    i32.const 3328
    call $~lib/error/Error#constructor
    throw $error
   catch $error
    
    drop
    br $__inlined_func$exceptions/testTryCatch$182
   end
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$exceptions/testCatchVar$258
   try
    i32.const 0
    i32.const 3408
    call $~lib/error/Error#constructor
    throw $error
   catch $error
    
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    i32.load offset=8
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    br $__inlined_func$exceptions/testCatchVar$258
   end
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 3408
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3360
   i32.const 26
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$exceptions/testNested$185
   try
    try
     i32.const 0
     i32.const 3440
     call $~lib/error/Error#constructor
     throw $error
    catch $error
     
     drop
     i32.const 0
     i32.const 3472
     call $~lib/error/Error#constructor
     throw $error
    end
    unreachable
   catch $error
    
    drop
    br $__inlined_func$exceptions/testNested$185
   end
   unreachable
  end
  block $finally_dispatch|02
   try $try_finally|03
    try
     i32.const 0
     i32.const 3504
     call $~lib/error/Error#constructor
     throw $error
    catch $error
     
     drop
     br $finally_dispatch|02
    end
    unreachable
   catch_all
    rethrow $try_finally|03
   end
   unreachable
  end
  try $try_finally|06
   try
    i32.const 0
    i32.const 3504
    call $~lib/error/Error#constructor
    throw $error
   catch $error
    
    drop
    i32.const 10
    global.set $exceptions/tryCatchFinallyResult
   end
  catch_all
   i32.const 1
   global.set $exceptions/tryCatchFinallyRan
   rethrow $try_finally|06
  end
  i32.const 1
  global.set $exceptions/tryCatchFinallyRan
  global.get $exceptions/tryCatchFinallyResult
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 92
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/tryCatchFinallyRan
  i32.eqz
  if
   i32.const 0
   i32.const 3360
   i32.const 93
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$exceptions/testFinallyWithException$259
   try
    try $try_finally|07
     i32.const 0
     i32.const 3536
     call $~lib/error/Error#constructor
     throw $error
    catch_all
     i32.const 1
     global.set $exceptions/finallyWithExceptionRan
     rethrow $try_finally|07
    end
    unreachable
   catch $error
    
    drop
    global.get $exceptions/finallyWithExceptionRan
    i32.const 0
    i32.ne
    local.set $1
    br $__inlined_func$exceptions/testFinallyWithException$259
   end
   unreachable
  end
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 3360
   i32.const 112
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$exceptions/testCustomError$189
   try
    i32.const 3584
    i32.const 42
    call $exceptions/CustomError#constructor
    throw $error
   catch $error
    
    drop
    br $__inlined_func$exceptions/testCustomError$189
   end
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  call $exceptions/Resource#constructor
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $exceptions/Resource.disposed
  i32.const 1
  i32.add
  global.set $exceptions/Resource.disposed
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $exceptions/Resource.disposed
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 186
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  global.set $exceptions/Resource.disposed
  global.get $~lib/memory/__stack_pointer
  call $exceptions/Resource#constructor
  local.tee $1
  i32.store
  block $__inlined_func$exceptions/testResourceCleanupWithException$261
   try
    try $try_finally|1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     i32.const 0
     i32.const 3616
     call $~lib/error/Error#constructor
     throw $error
    catch_all
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     global.get $exceptions/Resource.disposed
     i32.const 1
     i32.add
     global.set $exceptions/Resource.disposed
     rethrow $try_finally|1
    end
    unreachable
   catch $error
    
    drop
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $exceptions/Resource.disposed
    local.set $1
    br $__inlined_func$exceptions/testResourceCleanupWithException$261
   end
   unreachable
  end
  local.get $1
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 203
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 8
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  global.set $exceptions/calc
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/calc
  local.tee $1
  i32.store
  local.get $1
  i32.const 2
  call $exceptions/Calculator#divide
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 237
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/calc
  local.tee $1
  i32.store
  local.get $1
  i32.const 0
  call $exceptions/Calculator#divide
  if
   i32.const 0
   i32.const 3360
   i32.const 238
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/calc
  local.tee $1
  i32.store
  local.get $1
  i32.load
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 239
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/calc
  local.tee $1
  i32.store
  local.get $1
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/calc
  local.tee $1
  i32.store
  local.get $1
  i32.const 4
  call $exceptions/Calculator#safeDivide
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 242
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/calc
  local.tee $1
  i32.store
  local.get $1
  i32.const 0
  call $exceptions/Calculator#safeDivide
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 243
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
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
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 9
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
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
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
  i32.const 10
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  call $~lib/object/Object#constructor
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $2
  i32.store
  local.get $1
  local.get $2
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  global.set $exceptions/outer
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/outer
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $__inlined_func$exceptions/Outer#process$263
   try
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load
    i32.store
    try
     i32.const 0
     i32.const 3728
     call $~lib/error/Error#constructor
     throw $error
    catch $error
     
     drop
     i32.const 0
     i32.const 3776
     call $~lib/error/Error#constructor
     throw $error
    end
    unreachable
   catch $error
    
    drop
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    br $__inlined_func$exceptions/Outer#process$263
   end
   unreachable
  end
  call $exceptions/testArrayWithExceptions
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 296
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $exceptions/rethrowFinallyRan
  block $__inlined_func$exceptions/testRethrowWithFinally$281
   try
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 5036
    i32.lt_s
    if
     i32.const 37824
     i32.const 37872
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
    try $try_finally|04
     try
      i32.const 0
      i32.const 3920
      call $~lib/error/Error#constructor
      throw $error
     catch $error
      
      local.set $1
      i32.const 0
      global.set $exceptions/rethrowFinallyRan
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.load offset=8
      local.tee $1
      i32.store offset=4
      i32.const 3968
      local.get $1
      call $~lib/string/String.__concat
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      i32.const 0
      local.get $1
      call $~lib/error/Error#constructor
      throw $error
     end
     unreachable
    catch_all
     i32.const 1
     global.set $exceptions/rethrowFinallyRan
     rethrow $try_finally|04
    end
    unreachable
   catch $error
    
    drop
    global.get $exceptions/rethrowFinallyRan
    i32.const 0
    i32.ne
    local.set $1
    br $__inlined_func$exceptions/testRethrowWithFinally$281
   end
   unreachable
  end
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 3360
   i32.const 321
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 5
  i32.const 12
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store8 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  global.set $exceptions/sm
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/sm
  local.tee $1
  i32.store
  local.get $1
  i32.const 1
  call $exceptions/StateMachine#transition
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/sm
  local.tee $1
  i32.store
  local.get $1
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 352
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/sm
  local.tee $1
  i32.store
  local.get $1
  i32.load8_u offset=4
  if
   i32.const 0
   i32.const 3360
   i32.const 353
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/sm
  local.tee $1
  i32.store
  local.get $1
  i32.const -5
  call $exceptions/StateMachine#transition
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/sm
  local.tee $1
  i32.store
  local.get $1
  i32.load
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 356
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/sm
  local.tee $1
  i32.store
  local.get $1
  i32.load8_u offset=4
  i32.eqz
  if
   i32.const 0
   i32.const 3360
   i32.const 357
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/sm
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  i32.store8 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/sm
  local.tee $1
  i32.store
  local.get $1
  i32.load
  if
   i32.const 0
   i32.const 3360
   i32.const 360
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/sm
  local.tee $1
  i32.store
  local.get $1
  i32.load8_u offset=4
  if
   i32.const 0
   i32.const 3360
   i32.const 361
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1216
  global.set $exceptions/deepNestingOrder
  try $try_finally|0
   try
    global.get $~lib/memory/__stack_pointer
    i32.const 1216
    i32.store
    i32.const 1216
    i32.const 4064
    call $~lib/string/String.__concat
    global.set $exceptions/deepNestingOrder
    try $try_finally|8
     try
      global.get $~lib/memory/__stack_pointer
      global.get $exceptions/deepNestingOrder
      local.tee $1
      i32.store
      local.get $1
      i32.const 4096
      call $~lib/string/String.__concat
      global.set $exceptions/deepNestingOrder
      try $try_finally|12
       try
        global.get $~lib/memory/__stack_pointer
        global.get $exceptions/deepNestingOrder
        local.tee $1
        i32.store
        local.get $1
        i32.const 4128
        call $~lib/string/String.__concat
        global.set $exceptions/deepNestingOrder
        i32.const 0
        i32.const 4160
        call $~lib/error/Error#constructor
        throw $error
       catch $error
        
        drop
        global.get $~lib/memory/__stack_pointer
        global.get $exceptions/deepNestingOrder
        local.tee $1
        i32.store
        local.get $1
        i32.const 4192
        call $~lib/string/String.__concat
        global.set $exceptions/deepNestingOrder
        i32.const 0
        i32.const 4224
        call $~lib/error/Error#constructor
        throw $error
       end
       unreachable
      catch_all
       global.get $~lib/memory/__stack_pointer
       global.get $exceptions/deepNestingOrder
       local.tee $1
       i32.store
       local.get $1
       i32.const 4272
       call $~lib/string/String.__concat
       global.set $exceptions/deepNestingOrder
       rethrow $try_finally|12
      end
      unreachable
     catch $error
      
      drop
      global.get $~lib/memory/__stack_pointer
      global.get $exceptions/deepNestingOrder
      local.tee $1
      i32.store
      local.get $1
      i32.const 4304
      call $~lib/string/String.__concat
      global.set $exceptions/deepNestingOrder
     end
    catch_all
     global.get $~lib/memory/__stack_pointer
     global.get $exceptions/deepNestingOrder
     local.tee $1
     i32.store
     local.get $1
     i32.const 4336
     call $~lib/string/String.__concat
     global.set $exceptions/deepNestingOrder
     rethrow $try_finally|8
    end
    global.get $~lib/memory/__stack_pointer
    global.get $exceptions/deepNestingOrder
    local.tee $1
    i32.store
    local.get $1
    i32.const 4336
    call $~lib/string/String.__concat
    global.set $exceptions/deepNestingOrder
   catch $error
    
    drop
    global.get $~lib/memory/__stack_pointer
    global.get $exceptions/deepNestingOrder
    local.tee $1
    i32.store
    local.get $1
    i32.const 4368
    call $~lib/string/String.__concat
    global.set $exceptions/deepNestingOrder
   end
  catch_all
   global.get $~lib/memory/__stack_pointer
   global.get $exceptions/deepNestingOrder
   local.tee $0
   i32.store
   local.get $0
   i32.const 4400
   call $~lib/string/String.__concat
   global.set $exceptions/deepNestingOrder
   rethrow $try_finally|0
  end
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/deepNestingOrder
  local.tee $1
  i32.store
  local.get $1
  i32.const 4400
  call $~lib/string/String.__concat
  global.set $exceptions/deepNestingOrder
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/deepNestingOrder
  local.tee $1
  i32.store
  local.get $1
  i32.const 4432
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 3360
   i32.const 394
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 13
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  global.set $exceptions/counter
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/counter
  local.tee $1
  i32.store
  local.get $1
  call $exceptions/Counter#increment
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 414
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/counter
  local.tee $1
  i32.store
  local.get $1
  call $exceptions/Counter#increment
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 415
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/counter
  local.tee $1
  i32.store
  local.get $1
  call $exceptions/Counter#increment
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 416
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $exceptions/counter
  local.tee $1
  i32.store
  local.get $1
  call $exceptions/Counter#increment
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 417
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $exceptions/multiReturnFinallyCount
  i32.const -5
  call $exceptions/testMultipleReturnsWithFinally
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 453
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/multiReturnFinallyCount
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 454
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $exceptions/testMultipleReturnsWithFinally
  if
   i32.const 0
   i32.const 3360
   i32.const 456
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/multiReturnFinallyCount
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 457
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 50
  call $exceptions/testMultipleReturnsWithFinally
  i32.const 50
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 459
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/multiReturnFinallyCount
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 460
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 200
  call $exceptions/testMultipleReturnsWithFinally
  i32.const 100
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 462
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $exceptions/multiReturnFinallyCount
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 3360
   i32.const 463
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$exceptions/testReturnInFinallyOverridesCatch$200
   try
    try
     i32.const 0
     i32.const 4592
     call $~lib/error/Error#constructor
     throw $error
    catch $error
     
     drop
     br $__inlined_func$exceptions/testReturnInFinallyOverridesCatch$200
    end
    unreachable
   catch_all
    br $__inlined_func$exceptions/testReturnInFinallyOverridesCatch$200
   end
   unreachable
  end
  block $__inlined_func$exceptions/testReturnInFinallySuppressesException$201
   try
    i32.const 0
    i32.const 4624
    call $~lib/error/Error#constructor
    throw $error
   catch_all
    i32.const 1
    global.set $exceptions/finallyReturnSuppressedExceptionRan
    br $__inlined_func$exceptions/testReturnInFinallySuppressesException$201
   end
   unreachable
  end
  global.get $exceptions/finallyReturnSuppressedExceptionRan
  i32.eqz
  if
   i32.const 0
   i32.const 3360
   i32.const 501
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  try
   i32.const 4688
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/builtins/abort
  catch $error
   
   local.set $1
   i32.const 1
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=8
   local.tee $1
   i32.store
   local.get $1
   i32.const 4688
   call $~lib/string/String#includes
   i32.eqz
   if
    i32.const 0
    i32.const 3360
    i32.const 515
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3360
   i32.const 519
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  local.set $0
  try
   i32.const -1
   i32.const 1
   call $~lib/rt/itcms/__new
   drop
  catch $error
   
   local.set $1
   i32.const 1
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=8
   local.tee $1
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.eqz
   if
    i32.const 0
    i32.const 3360
    i32.const 531
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3360
   i32.const 535
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  local.set $0
  try
   i32.const 4768
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/builtins/abort
  catch $error
   
   local.set $1
   i32.const 1
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=8
   local.tee $1
   i32.store
   local.get $1
   i32.const 4768
   call $~lib/string/String#includes
   i32.eqz
   if
    i32.const 0
    i32.const 3360
    i32.const 548
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3360
   i32.const 552
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $__inlined_func$exceptions/testCatchVariableType$269
   try
    i32.const 0
    i32.const 4832
    call $~lib/error/Error#constructor
    throw $error
   catch $error
    
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=8
    local.tee $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.const 4832
    call $~lib/string/String.__eq
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    br $__inlined_func$exceptions/testCatchVariableType$269
   end
   unreachable
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3360
   i32.const 565
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
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
  block $__inlined_func$exceptions/testCatchCustomError2$270
   try
    i32.const 4880
    i32.const 99
    call $exceptions/CustomError#constructor
    throw $error
   catch $error
    
    local.set $0
    global.get $~lib/memory/__stack_pointer
    block $__inlined_func$~instanceof|exceptions/CustomError$178 (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     i32.const 0
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     i32.const 6
     i32.ne
     br_if $__inlined_func$~instanceof|exceptions/CustomError$178
     drop
     i32.const 1
    end
    i32.eqz
    if
     i32.const 4928
     i32.const 3360
     i32.const 573
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=8
    local.tee $1
    i32.store offset=8
    local.get $1
    i32.const 4880
    call $~lib/string/String.__eq
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     i32.load offset=12
     i32.const 99
     i32.eq
    else
     i32.const 0
    end
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    br $__inlined_func$exceptions/testCatchCustomError2$270
   end
   unreachable
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3360
   i32.const 578
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/object/Object#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 5036
  i32.lt_s
  if
   i32.const 37824
   i32.const 37872
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
 )
)
