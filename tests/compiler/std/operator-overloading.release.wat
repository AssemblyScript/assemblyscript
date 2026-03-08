(module
 (type $0 (func (param i32 i32) (result i32)))
 (type $1 (func))
 (type $2 (func (param i32) (result i32)))
 (type $3 (func (param i32)))
 (type $4 (func (param i32 i32)))
 (type $5 (func (param i32 i32 i64)))
 (type $6 (func (result i32)))
 (type $7 (func (param i32 i32 i32 i32)))
 (type $8 (func (param i32 i32 i32)))
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
 (global $std/operator-overloading/a1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/a2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/a (mut i32) (i32.const 0))
 (global $std/operator-overloading/s1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/s2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/s (mut i32) (i32.const 0))
 (global $std/operator-overloading/m1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/m2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/m (mut i32) (i32.const 0))
 (global $std/operator-overloading/d1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/d2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/d (mut i32) (i32.const 0))
 (global $std/operator-overloading/f1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/f2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/f (mut i32) (i32.const 0))
 (global $std/operator-overloading/p1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/p2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/p (mut i32) (i32.const 0))
 (global $std/operator-overloading/n1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/n2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/n (mut i32) (i32.const 0))
 (global $std/operator-overloading/o1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/o2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/o (mut i32) (i32.const 0))
 (global $std/operator-overloading/x1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/x2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/x (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq3 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq4 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eqf (mut i32) (i32.const 0))
 (global $std/operator-overloading/gt1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gt2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gt (mut i32) (i32.const 0))
 (global $std/operator-overloading/gte1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gte2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gte (mut i32) (i32.const 0))
 (global $std/operator-overloading/le1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/le2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/le (mut i32) (i32.const 0))
 (global $std/operator-overloading/leq1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/leq2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/leq (mut i32) (i32.const 0))
 (global $std/operator-overloading/shr (mut i32) (i32.const 0))
 (global $std/operator-overloading/sres (mut i32) (i32.const 0))
 (global $std/operator-overloading/shu (mut i32) (i32.const 0))
 (global $std/operator-overloading/ures (mut i32) (i32.const 0))
 (global $std/operator-overloading/shl (mut i32) (i32.const 0))
 (global $std/operator-overloading/pos (mut i32) (i32.const 0))
 (global $std/operator-overloading/pres (mut i32) (i32.const 0))
 (global $std/operator-overloading/neg (mut i32) (i32.const 0))
 (global $std/operator-overloading/nres (mut i32) (i32.const 0))
 (global $std/operator-overloading/not (mut i32) (i32.const 0))
 (global $std/operator-overloading/res (mut i32) (i32.const 0))
 (global $std/operator-overloading/excl (mut i32) (i32.const 0))
 (global $std/operator-overloading/bres (mut i32) (i32.const 0))
 (global $std/operator-overloading/incdec (mut i32) (i32.const 0))
 (global $std/operator-overloading/tmp (mut i32) (i32.const 0))
 (global $std/operator-overloading/ais1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/ais2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/ais (mut i32) (i32.const 0))
 (global $std/operator-overloading/aii1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/aii2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/aii (mut i32) (i32.const 0))
 (global $std/operator-overloading/tea (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 36356))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\02\00\00\00\n\00\00\00a\00b\00o\00r\00t")
 (data $1 (i32.const 1068) "\1c")
 (data $1.1 (i32.const 1080) "\02\00\00\00\08\00\00\00 \00i\00n\00 ")
 (data $2 (i32.const 1100) "\1c")
 (data $2.1 (i32.const 1112) "\02")
 (data $3 (i32.const 1132) "\1c")
 (data $3.1 (i32.const 1144) "\02\00\00\00\02\00\00\00:")
 (data $4 (i32.const 1164) "|")
 (data $4.1 (i32.const 1176) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $5 (i32.const 1292) "<")
 (data $5.1 (i32.const 1304) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $6 (i32.const 1356) "\1c")
 (data $6.1 (i32.const 1368) "\02\00\00\00\02\00\00\000")
 (data $7 (i32.const 1388) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $8 (i32.const 1788) "\1c\04")
 (data $8.1 (i32.const 1800) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data $9 (i32.const 2844) "\\")
 (data $9.1 (i32.const 2856) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $10 (i32.const 2940) "<")
 (data $10.1 (i32.const 2952) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s")
 (data $11 (i32.const 3004) "<")
 (data $11.1 (i32.const 3016) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $12 (i32.const 3068) "<")
 (data $12.1 (i32.const 3080) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $15 (i32.const 3196) "<")
 (data $15.1 (i32.const 3208) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $16 (i32.const 3260) ",")
 (data $16.1 (i32.const 3272) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $18 (i32.const 3340) "<")
 (data $18.1 (i32.const 3352) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $19 (i32.const 3404) "L")
 (data $19.1 (i32.const 3416) "\02\00\00\006\00\00\00s\00t\00d\00/\00o\00p\00e\00r\00a\00t\00o\00r\00-\00o\00v\00e\00r\00l\00o\00a\00d\00i\00n\00g\00.\00t\00s")
 (data $20 (i32.const 3484) "\1c")
 (data $20.1 (i32.const 3496) "\02\00\00\00\02\00\00\00x")
 (data $21 (i32.const 3516) "\1c")
 (data $21.1 (i32.const 3528) "\02\00\00\00\02\00\00\00y")
 (data $22 (i32.const 3552) "\08\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00 \00\00\00 ")
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
  i32.const 3588
  i32.lt_s
  if
   i32.const 36384
   i32.const 36432
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
    i32.const 1376
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
     i32.const 1388
     i32.add
     i64.load32_u
     local.get $3
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 1388
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
    i32.const 1388
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
    i32.const 1388
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
  call $~lib/rt/__visit_globals
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
     i32.const 3088
     i32.const 148
     i32.const 30
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    global.set $~lib/rt/itcms/iter
   end
   block $__inlined_func$~lib/rt/itcms/Object#unlink$346
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
     i32.const 36356
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
     br $__inlined_func$~lib/rt/itcms/Object#unlink$346
    end
    local.get $1
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
    i32.const 3552
    i32.load
    i32.gt_u
    if
     i32.const 3216
     i32.const 3280
     i32.const 21
     i32.const 28
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2
    i32.shl
    i32.const 3556
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
   i32.const 3360
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
   i32.const 3360
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
   i32.const 3360
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
   i32.const 3360
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
   i32.const 3360
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
    i32.const 3360
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
   i32.const 3360
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
   i32.const 3360
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
   i32.const 3360
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
   i32.const 3360
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
    i32.const 3360
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
    i32.const 3360
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
  i32.const 36368
  i32.const 0
  i32.store
  i32.const 37936
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
    i32.const 36368
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
      i32.const 36368
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
  i32.const 36368
  i32.const 37940
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 36368
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
      i32.const 36356
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
    i32.const 36356
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
     i32.const 36356
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
       i32.const 3360
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
   i32.const 3360
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
     i32.const 3360
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
   block $__inlined_func$~lib/rt/itcms/interrupt$70
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
      br $__inlined_func$~lib/rt/itcms/interrupt$70
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
   i32.const 3024
   i32.const 3360
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
    i32.const 3360
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
   i32.const 3360
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
   i32.const 3360
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
 (func $~lib/math/ipow32 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 1
  local.set $2
  local.get $0
  i32.const 2
  i32.eq
  if
   i32.const 1
   local.get $1
   i32.shl
   i32.const 0
   local.get $1
   i32.const 32
   i32.lt_u
   select
   return
  end
  local.get $1
  i32.const 0
  i32.le_s
  if
   local.get $0
   i32.const -1
   i32.eq
   if
    i32.const -1
    i32.const 1
    local.get $1
    i32.const 1
    i32.and
    select
    return
   end
   local.get $1
   i32.eqz
   local.get $0
   i32.const 1
   i32.eq
   i32.or
   return
  else
   local.get $1
   i32.const 1
   i32.eq
   if
    local.get $0
    return
   else
    local.get $1
    i32.const 2
    i32.eq
    if
     local.get $0
     local.get $0
     i32.mul
     return
    else
     local.get $1
     i32.const 32
     i32.lt_s
     if
      block $break|0
       block $case4|0
        block $case3|0
         block $case2|0
          block $case1|0
           block $case0|0
            i32.const 31
            local.get $1
            i32.clz
            i32.sub
            br_table $case4|0 $case3|0 $case2|0 $case1|0 $case0|0 $break|0
           end
           local.get $0
           i32.const 1
           local.get $1
           i32.const 1
           i32.and
           select
           local.set $2
           local.get $1
           i32.const 1
           i32.shr_u
           local.set $1
           local.get $0
           local.get $0
           i32.mul
           local.set $0
          end
          local.get $0
          local.get $2
          i32.mul
          local.get $2
          local.get $1
          i32.const 1
          i32.and
          select
          local.set $2
          local.get $1
          i32.const 1
          i32.shr_u
          local.set $1
          local.get $0
          local.get $0
          i32.mul
          local.set $0
         end
         local.get $0
         local.get $2
         i32.mul
         local.get $2
         local.get $1
         i32.const 1
         i32.and
         select
         local.set $2
         local.get $1
         i32.const 1
         i32.shr_u
         local.set $1
         local.get $0
         local.get $0
         i32.mul
         local.set $0
        end
        local.get $0
        local.get $2
        i32.mul
        local.get $2
        local.get $1
        i32.const 1
        i32.and
        select
        local.set $2
        local.get $1
        i32.const 1
        i32.shr_u
        local.set $1
        local.get $0
        local.get $0
        i32.mul
        local.set $0
       end
       local.get $0
       local.get $2
       i32.mul
       local.get $2
       local.get $1
       i32.const 1
       i32.and
       select
       local.set $2
      end
      local.get $2
      return
     end
    end
   end
  end
  loop $while-continue|1
   local.get $1
   if
    local.get $0
    local.get $2
    i32.mul
    local.get $2
    local.get $1
    i32.const 1
    i32.and
    select
    local.set $2
    local.get $1
    i32.const 1
    i32.shr_u
    local.set $1
    local.get $0
    local.get $0
    i32.mul
    local.set $0
    br $while-continue|1
   end
  end
  local.get $2
 )
 (func $~start
  call $start:std/operator-overloading
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
   i32.const 3588
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
   i32.const 3588
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
   block $__inlined_func$~lib/string/String#concat$351
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
     i32.const 1120
     local.set $0
     br $__inlined_func$~lib/string/String#concat$351
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
  i32.const 36384
  i32.const 36432
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
  i32.const 3588
  i32.lt_s
  if
   i32.const 36384
   i32.const 36432
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
  i32.const 1056
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
   i32.const 1088
   local.get $1
   call $~lib/string/String.__concat
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=32
   local.get $1
   i32.const 1152
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
   i32.const 1152
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
  i32.const 2960
  i32.const 2626
  i32.const 5
  call $~lib/builtins/abort
  unreachable
 )
 (func $std/operator-overloading/Tester#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3588
  i32.lt_s
  if
   i32.const 36384
   i32.const 36432
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $std/operator-overloading/Tester.equals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3588
  i32.lt_s
  if
   i32.const 36384
   i32.const 36432
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
  local.get $1
  i32.store
  local.get $1
  i32.load
  i32.eq
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=4
   i32.eq
  else
   i32.const 0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/operator-overloading/Tester.notEquals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3588
  i32.lt_s
  if
   i32.const 36384
   i32.const 36432
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
  local.get $1
  i32.store
  local.get $1
  i32.load
  i32.ne
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=4
   i32.ne
  else
   i32.const 0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/operator-overloading/TesterInlineStatic#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3588
  i32.lt_s
  if
   i32.const 36384
   i32.const 36432
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $std/operator-overloading/TesterInlineInstance#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3588
  i32.lt_s
  if
   i32.const 36384
   i32.const 36432
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 6
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/string/String.__eq (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3588
  i32.lt_s
  if
   i32.const 36384
   i32.const 36432
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.const 3504
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
   local.get $0
   i32.eqz
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
   i32.const 3504
   i32.store
   local.get $2
   i32.const 3500
   i32.load
   i32.const 1
   i32.shr_u
   i32.ne
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 3504
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 3504
   i32.store offset=4
   i32.const 1
   local.get $0
   local.tee $1
   i32.const 7
   i32.and
   local.get $2
   local.tee $0
   i32.const 4
   i32.lt_u
   select
   i32.eqz
   if
    loop $do-loop|0
     local.get $1
     i64.load
     local.get $3
     i64.load
     i64.eq
     if
      local.get $1
      i32.const 8
      i32.add
      local.set $1
      local.get $3
      i32.const 8
      i32.add
      local.set $3
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
   block $__inlined_func$~lib/util/string/compareImpl$202
    loop $while-continue|1
     local.get $0
     local.tee $2
     i32.const 1
     i32.sub
     local.set $0
     local.get $2
     if
      local.get $1
      i32.load16_u
      local.tee $4
      local.get $3
      i32.load16_u
      local.tee $5
      i32.sub
      local.set $2
      local.get $4
      local.get $5
      i32.ne
      br_if $__inlined_func$~lib/util/string/compareImpl$202
      local.get $1
      i32.const 2
      i32.add
      local.set $1
      local.get $3
      i32.const 2
      i32.add
      local.set $3
      br $while-continue|1
     end
    end
    i32.const 0
    local.set $2
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   i32.eqz
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $std/operator-overloading/TesterElementAccess#__set (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3588
  i32.lt_s
  if
   i32.const 36384
   i32.const 36432
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
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $2
   i32.store
  else
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $2
   i32.store offset=4
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/operator-overloading/TesterElementAccess#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3588
  i32.lt_s
  if
   i32.const 36384
   i32.const 36432
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
  call $~lib/string/String.__eq
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
  else
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $start:std/operator-overloading
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 40
   memory.fill
   memory.size
   i32.const 16
   i32.shl
   i32.const 36356
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
   i32.const 3316
   i32.const 3312
   i32.store
   i32.const 3320
   i32.const 3312
   i32.store
   i32.const 3312
   global.set $~lib/rt/itcms/fromSpace
   i32.const 1
   i32.const 2
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/a1
   i32.const 2
   i32.const 3
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/a2
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/a1
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/a2
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load
   i32.add
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=4
   i32.add
   call $std/operator-overloading/Tester#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/a
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/a
   local.tee $0
   i32.store
   local.get $0
   i32.load
   i32.const 3
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/a
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 5
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 145
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   i32.const 3
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/s1
   i32.const 2
   i32.const -3
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/s2
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/s1
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/s2
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load
   i32.sub
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=4
   i32.sub
   call $std/operator-overloading/Tester#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/s
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/s
   local.tee $0
   i32.store
   local.get $0
   i32.load
   if (result i32)
    i32.const 0
   else
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/s
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 6
    i32.eq
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 151
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   i32.const 5
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/m1
   i32.const 3
   i32.const 2
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/m2
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/m1
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/m2
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load
   i32.mul
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=4
   i32.mul
   call $std/operator-overloading/Tester#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/m
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/m
   local.tee $0
   i32.store
   local.get $0
   i32.load
   i32.const 6
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/m
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 10
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 157
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 6
   i32.const 50
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/d1
   i32.const 3
   i32.const 10
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/d2
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/d1
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/d2
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load
   i32.div_s
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=4
   i32.div_s
   call $std/operator-overloading/Tester#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/d
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/d
   local.tee $0
   i32.store
   local.get $0
   i32.load
   i32.const 2
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/d
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 5
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 163
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 10
   i32.const 10
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/f1
   i32.const 6
   i32.const 10
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/f2
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/f1
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/f2
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load
   i32.rem_s
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=4
   i32.rem_s
   call $std/operator-overloading/Tester#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/f
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/f
   local.tee $0
   i32.store
   local.get $0
   i32.load
   i32.const 4
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/f
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
   else
    i32.const 1
   end
   if
    i32.const 0
    i32.const 3424
    i32.const 169
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   i32.const 3
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/p1
   i32.const 4
   i32.const 5
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/p2
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/p1
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/p2
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load
   call $~lib/math/ipow32
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=4
   call $~lib/math/ipow32
   call $std/operator-overloading/Tester#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/p
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/p
   local.tee $0
   i32.store
   local.get $0
   i32.load
   i32.const 16
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/p
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 243
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 175
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 255
   i32.const 15
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/n1
   i32.const 15
   i32.const 255
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/n2
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/n1
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/n2
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load
   i32.and
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=4
   i32.and
   call $std/operator-overloading/Tester#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/n
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/n
   local.tee $0
   i32.store
   local.get $0
   i32.load
   i32.const 15
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/n
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 15
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 181
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3855
   i32.const 255
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/o1
   i32.const 61680
   i32.const 0
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/o2
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/o1
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/o2
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load
   i32.or
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=4
   i32.or
   call $std/operator-overloading/Tester#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/o
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/o
   local.tee $0
   i32.store
   local.get $0
   i32.load
   i32.const 65535
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/o
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 255
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 187
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 255
   i32.const 255
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/x1
   i32.const 65280
   i32.const 0
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/x2
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/x1
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/x2
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load
   i32.xor
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=4
   i32.xor
   call $std/operator-overloading/Tester#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/x
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/x
   local.tee $0
   i32.store
   local.get $0
   i32.load
   i32.const 65535
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/x
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 255
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 193
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   i32.const -2
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/eq1
   i32.const 1
   i32.const -2
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/eq2
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/eq1
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/eq2
   local.tee $1
   i32.store offset=4
   local.get $0
   local.get $1
   call $std/operator-overloading/Tester.equals
   global.set $std/operator-overloading/eq
   global.get $std/operator-overloading/eq
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 3424
    i32.const 199
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   i32.const 0
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/eq3
   i32.const 0
   i32.const 1
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/eq4
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/eq3
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/eq4
   local.tee $1
   i32.store offset=4
   local.get $0
   local.get $1
   call $std/operator-overloading/Tester.equals
   global.set $std/operator-overloading/eqf
   global.get $std/operator-overloading/eqf
   if
    i32.const 0
    i32.const 3424
    i32.const 205
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/eq1
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/eq2
   local.tee $1
   i32.store offset=4
   local.get $0
   local.get $1
   call $std/operator-overloading/Tester.notEquals
   global.set $std/operator-overloading/eq
   global.get $std/operator-overloading/eq
   if
    i32.const 0
    i32.const 3424
    i32.const 209
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/eq3
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/eq4
   local.tee $1
   i32.store offset=4
   local.get $0
   local.get $1
   call $std/operator-overloading/Tester.notEquals
   global.set $std/operator-overloading/eqf
   global.get $std/operator-overloading/eqf
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 3424
    i32.const 213
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   i32.const 2147483647
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/gt1
   i32.const 1
   i32.const 0
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/gt2
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/gt1
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/gt2
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load
   i32.gt_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    i32.load offset=4
    i32.gt_s
   else
    i32.const 0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/gt
   global.get $std/operator-overloading/gt
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 3424
    i32.const 219
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   i32.const 2
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/gte1
   i32.const 2
   i32.const 2
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/gte2
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/gte1
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/gte2
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load
   i32.ge_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    i32.load offset=4
    i32.ge_s
   else
    i32.const 0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/gte
   global.get $std/operator-overloading/gte
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 3424
    i32.const 225
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const -1
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/le1
   i32.const 6
   i32.const 6
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/le2
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/le1
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/le2
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load
   i32.lt_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    i32.load offset=4
    i32.lt_s
   else
    i32.const 0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/le
   global.get $std/operator-overloading/le
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 3424
    i32.const 231
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 4
   i32.const 3
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/leq1
   i32.const 4
   i32.const 3
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/leq2
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/leq1
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/leq2
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load
   i32.le_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store
    local.get $1
    i32.load offset=4
    i32.le_s
   else
    i32.const 0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/leq
   global.get $std/operator-overloading/leq
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 3424
    i32.const 237
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 8
   i32.const 16
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/shr
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/shr
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   i32.const 3
   i32.shr_s
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   i32.const 3
   i32.shr_s
   call $std/operator-overloading/Tester#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/sres
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/sres
   local.tee $0
   i32.store
   local.get $0
   i32.load
   i32.const 1
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/sres
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 2
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 242
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const -8
   i32.const -16
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/shu
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/shu
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   i32.const 3
   i32.shr_u
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   i32.const 3
   i32.shr_u
   call $std/operator-overloading/Tester#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/ures
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/ures
   local.tee $0
   i32.store
   local.get $0
   i32.load
   i32.const 536870911
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/ures
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 536870910
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 247
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   i32.const 2
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/shl
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/shl
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   i32.const 3
   i32.shl
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   i32.const 3
   i32.shl
   call $std/operator-overloading/Tester#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/sres
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/sres
   local.tee $0
   i32.store
   local.get $0
   i32.load
   i32.const 8
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/sres
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 16
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 252
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   i32.const -2
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/pos
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/pos
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
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
   local.get $0
   i32.load offset=4
   call $std/operator-overloading/Tester#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/pres
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/pres
   local.tee $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/pos
   local.tee $1
   i32.store
   local.get $1
   i32.load
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/pres
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/pos
    local.tee $1
    i32.store
    local.get $1
    i32.load offset=4
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 257
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const -1
   i32.const -2
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/neg
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/neg
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 0
   local.get $0
   i32.load
   i32.sub
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   i32.const 0
   local.get $0
   i32.load offset=4
   i32.sub
   call $std/operator-overloading/Tester#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/nres
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/nres
   local.tee $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/neg
   local.tee $1
   i32.store
   i32.const 0
   local.get $1
   i32.load
   i32.sub
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/nres
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/neg
    local.tee $1
    i32.store
    i32.const 0
    local.get $1
    i32.load offset=4
    i32.sub
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 262
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 255
   i32.const 16
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/not
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/not
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   i32.const -1
   i32.xor
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   i32.const -1
   i32.xor
   call $std/operator-overloading/Tester#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/res
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/res
   local.tee $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/not
   local.tee $1
   i32.store
   local.get $1
   i32.load
   i32.const -1
   i32.xor
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/res
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/not
    local.tee $1
    i32.store
    local.get $1
    i32.load offset=4
    i32.const -1
    i32.xor
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 267
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   i32.const 0
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/excl
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/excl
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   if (result i32)
    i32.const 1
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.eqz
   global.set $std/operator-overloading/bres
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/excl
   local.tee $0
   i32.store
   global.get $std/operator-overloading/bres
   local.get $0
   i32.load
   if (result i32)
    i32.const 1
   else
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/excl
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
   end
   i32.eqz
   i32.ne
   if
    i32.const 0
    i32.const 3424
    i32.const 272
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/operator-overloading/bres
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 3424
    i32.const 273
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   i32.const 1
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/incdec
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/incdec
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
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
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/incdec
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/incdec
   local.tee $0
   i32.store
   local.get $0
   i32.load
   i32.const 1
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/incdec
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 2
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 279
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/incdec
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
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
   i32.sub
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.sub
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/incdec
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/incdec
   local.tee $0
   i32.store
   local.get $0
   i32.load
   if (result i32)
    i32.const 0
   else
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/incdec
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.eq
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 282
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   i32.const 1
   call $std/operator-overloading/Tester#constructor
   global.set $std/operator-overloading/incdec
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/incdec
   local.tee $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   i32.const 1
   i32.add
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.add
   call $std/operator-overloading/Tester#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/incdec
   local.get $0
   global.set $std/operator-overloading/tmp
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tmp
   local.tee $0
   i32.store
   local.get $0
   i32.load
   if (result i32)
    i32.const 0
   else
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/tmp
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.eq
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 287
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/incdec
   local.tee $0
   i32.store
   local.get $0
   i32.load
   i32.const 1
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/incdec
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 2
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 288
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/incdec
   local.tee $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   i32.const 1
   i32.sub
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.sub
   call $std/operator-overloading/Tester#constructor
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.set $std/operator-overloading/incdec
   local.get $0
   global.set $std/operator-overloading/tmp
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tmp
   local.tee $0
   i32.store
   local.get $0
   i32.load
   i32.const 1
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/tmp
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 2
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 291
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/incdec
   local.tee $0
   i32.store
   local.get $0
   i32.load
   if (result i32)
    i32.const 0
   else
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/incdec
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.eq
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 292
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   i32.const 2
   call $std/operator-overloading/TesterInlineStatic#constructor
   global.set $std/operator-overloading/ais1
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/ais1
   local.tee $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   i32.const 1
   i32.add
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.add
   call $std/operator-overloading/TesterInlineStatic#constructor
   global.set $std/operator-overloading/ais1
   i32.const 2
   i32.const 3
   call $std/operator-overloading/TesterInlineStatic#constructor
   global.set $std/operator-overloading/ais2
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/ais1
   local.tee $0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/ais2
   local.tee $1
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load
   i32.add
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=4
   i32.add
   call $std/operator-overloading/TesterInlineStatic#constructor
   global.set $std/operator-overloading/ais
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/ais
   local.tee $0
   i32.store
   local.get $0
   i32.load
   i32.const 4
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/ais
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 6
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 312
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   i32.const 2
   call $std/operator-overloading/TesterInlineInstance#constructor
   global.set $std/operator-overloading/aii1
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/aii1
   local.tee $0
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   i32.const 1
   i32.add
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.add
   call $std/operator-overloading/TesterInlineInstance#constructor
   global.set $std/operator-overloading/aii1
   i32.const 2
   i32.const 3
   call $std/operator-overloading/TesterInlineInstance#constructor
   global.set $std/operator-overloading/aii2
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/aii1
   local.tee $0
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/aii2
   local.tee $1
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load
   i32.add
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=4
   i32.add
   call $std/operator-overloading/TesterInlineInstance#constructor
   global.set $std/operator-overloading/aii
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/aii
   local.tee $0
   i32.store
   local.get $0
   i32.load
   i32.const 4
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/aii
    local.tee $0
    i32.store
    local.get $0
    i32.load offset=4
    i32.const 6
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 3424
    i32.const 332
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3588
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/tea
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tea
   local.tee $0
   i32.store
   local.get $0
   i32.const 3504
   i32.const -1
   call $std/operator-overloading/TesterElementAccess#__set
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tea
   local.tee $0
   i32.store
   local.get $0
   i32.const 3536
   i32.const -2
   call $std/operator-overloading/TesterElementAccess#__set
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tea
   local.tee $0
   i32.store
   local.get $0
   i32.load
   i32.const -1
   i32.ne
   if
    i32.const 0
    i32.const 3424
    i32.const 360
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tea
   local.tee $0
   i32.store
   local.get $0
   i32.const 3504
   call $std/operator-overloading/TesterElementAccess#__get
   i32.const -1
   i32.ne
   if
    i32.const 0
    i32.const 3424
    i32.const 361
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tea
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=4
   i32.const -2
   i32.ne
   if
    i32.const 0
    i32.const 3424
    i32.const 363
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tea
   local.tee $0
   i32.store
   local.get $0
   i32.const 3536
   call $std/operator-overloading/TesterElementAccess#__get
   i32.const -2
   i32.ne
   if
    i32.const 0
    i32.const 3424
    i32.const 364
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tea
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tea
   local.tee $1
   i32.store offset=4
   local.get $0
   i32.const 3504
   local.get $1
   i32.const 3504
   call $std/operator-overloading/TesterElementAccess#__get
   i32.const 1
   i32.add
   call $std/operator-overloading/TesterElementAccess#__set
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tea
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tea
   local.tee $1
   i32.store offset=4
   local.get $0
   i32.const 3536
   local.get $1
   i32.const 3536
   call $std/operator-overloading/TesterElementAccess#__get
   i32.const 1
   i32.sub
   call $std/operator-overloading/TesterElementAccess#__set
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tea
   local.tee $0
   i32.store
   local.get $0
   i32.const 3504
   call $std/operator-overloading/TesterElementAccess#__get
   if
    i32.const 0
    i32.const 3424
    i32.const 369
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tea
   local.tee $0
   i32.store
   local.get $0
   i32.const 3536
   call $std/operator-overloading/TesterElementAccess#__get
   i32.const -3
   i32.ne
   if
    i32.const 0
    i32.const 3424
    i32.const 370
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 36384
  i32.const 36432
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/rt/__visit_globals
  (local $0 i32)
  global.get $std/operator-overloading/a1
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/a2
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/a
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/s1
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/s2
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/s
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/m1
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/m2
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/m
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/d1
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/d2
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/d
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/f1
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/f2
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/f
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/p1
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/p2
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/p
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/n1
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/n2
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/n
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/o1
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/o2
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/o
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/x1
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/x2
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/x
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/eq1
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/eq2
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/eq3
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/eq4
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/gt1
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/gt2
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/gte1
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/gte2
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/le1
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/le2
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/leq1
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/leq2
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/shr
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/sres
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/shu
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/ures
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/shl
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/pos
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/pres
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/neg
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/nres
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/not
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/res
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/excl
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/incdec
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/tmp
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/ais1
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/ais2
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/ais
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/aii1
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/aii2
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/aii
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/tea
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 3216
  call $~lib/rt/itcms/__visit
  i32.const 3024
  call $~lib/rt/itcms/__visit
  i32.const 1808
  call $~lib/rt/itcms/__visit
  i32.const 2864
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  block $invalid
   block $std/operator-overloading/TesterElementAccess
    block $std/operator-overloading/TesterInlineInstance
     block $std/operator-overloading/TesterInlineStatic
      block $std/operator-overloading/Tester
       block $~lib/arraybuffer/ArrayBufferView
        block $~lib/string/String
         block $~lib/arraybuffer/ArrayBuffer
          block $~lib/object/Object
           local.get $0
           i32.const 8
           i32.sub
           i32.load
           br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $std/operator-overloading/Tester $std/operator-overloading/TesterInlineStatic $std/operator-overloading/TesterInlineInstance $std/operator-overloading/TesterElementAccess $invalid
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
    return
   end
   return
  end
  unreachable
 )
)
