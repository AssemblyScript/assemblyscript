(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
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
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 34388))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $1 (i32.const 1100) "<")
 (data $1.1 (i32.const 1112) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $4 (i32.const 1228) "<")
 (data $4.1 (i32.const 1240) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $5 (i32.const 1292) ",")
 (data $5.1 (i32.const 1304) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $7 (i32.const 1372) "<")
 (data $7.1 (i32.const 1384) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $8 (i32.const 1436) "L")
 (data $8.1 (i32.const 1448) "\02\00\00\006\00\00\00s\00t\00d\00/\00o\00p\00e\00r\00a\00t\00o\00r\00-\00o\00v\00e\00r\00l\00o\00a\00d\00i\00n\00g\00.\00t\00s")
 (data $9 (i32.const 1516) "\1c")
 (data $9.1 (i32.const 1528) "\02\00\00\00\02\00\00\00x")
 (data $10 (i32.const 1548) "\1c")
 (data $10.1 (i32.const 1560) "\02\00\00\00\02\00\00\00y")
 (data $11 (i32.const 1584) "\08\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00 \00\00\00 ")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load $0 offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load $0 offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1120
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
    i32.load $0 offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load $0
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
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
   i32.const 1392
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
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
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
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
   i32.const 1392
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load $0 offset=8
  local.set $5
  local.get $1
  i32.load $0 offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store $0 offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store $0 offset=4
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
  i32.load $0 offset=96
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
   i32.store $0 offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load $0 offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $2
    local.get $1
    local.get $2
    i32.store $0 offset=4
    local.get $2
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load $0
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store $0
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
   i32.const 1392
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load $0
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load $0
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load $0
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
   i32.store $0
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load $0
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load $0
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load $0
   local.tee $1
   i32.load $0
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1392
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
   i32.store $0
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store $0
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
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
   i32.const 1392
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store $0
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
   i32.const 1392
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
  i32.load $0 offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  local.get $3
  i32.store $0 offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store $0 offset=4
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
  i32.store $0 offset=96
  local.get $0
  local.get $0
  i32.load $0
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store $0
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load $0 offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1392
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
  i32.load $0 offset=1568
  local.tee $4
  if
   local.get $4
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $4
    i32.load $0
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
    i32.const 1392
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
  local.tee $4
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $4
  i32.const 8
  i32.sub
  local.tee $3
  i32.const 1
  i32.or
  i32.or
  i32.store $0
  local.get $1
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  i32.const 0
  i32.store $0 offset=8
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  i32.store $0
  local.get $0
  local.get $3
  i32.store $0 offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size $0
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow $0
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 34400
  i32.const 0
  i32.store $0
  i32.const 35968
  i32.const 0
  i32.store $0
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 34400
    i32.add
    i32.const 0
    i32.store $0 offset=4
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
      i32.const 34400
      i32.add
      i32.const 0
      i32.store $0 offset=96
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
  i32.const 34400
  i32.const 35972
  memory.size $0
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 34400
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
    i32.load $0 offset=4
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
      i32.load $0 offset=4
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $0
       i32.load $0 offset=4
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store $0 offset=4
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
      i32.load $0 offset=4
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
    i32.load $0 offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 34388
      i32.lt_u
      if
       local.get $0
       i32.load $0
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
     i32.load $0 offset=4
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
       i32.load $0 offset=4
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $0
        i32.load $0 offset=4
        i32.const -4
        i32.and
        local.get $1
        i32.or
        i32.store $0 offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load $0 offset=4
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
     i32.load $0 offset=4
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
    i32.load $0 offset=4
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
     i32.const 1120
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 34388
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store $0 offset=4
     local.get $0
     i32.const 0
     i32.store $0 offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load $0
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
     i32.const 34388
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.set $1
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
       i32.load $0
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1392
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load $0
      i32.const 1
      i32.or
      i32.store $0
      local.get $1
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   local.tee $0
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.store $0 offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load $0 offset=4
  i32.const -2
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   i32.const 2
   i32.shl
   i32.add
   i32.load $0 offset=96
  else
   local.get $0
   i32.load $0
   i32.const -2
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $2
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=4
    local.tee $1
    i32.eqz
    if
     i32.const 0
     i32.const 1392
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
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
    i32.load $0 offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt
    i32.const 2048
    local.set $1
    loop $do-loop|0
     local.get $1
     call $~lib/rt/itcms/step
     i32.sub
     local.set $1
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
     local.get $1
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $1
    local.get $1
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
  local.tee $2
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   memory.size $0
   local.tee $1
   i32.const 4
   local.get $2
   i32.load $0 offset=1568
   local.get $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.const 65563
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $1
   local.get $3
   i32.gt_s
   select
   memory.grow $0
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow $0
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
   memory.size $0
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  i32.load $0
  i32.const -4
  i32.and
  i32.const 28
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $1
  i32.load $0
  local.tee $3
  i32.const -4
  i32.and
  i32.const 28
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $3
   i32.const 2
   i32.and
   i32.const 28
   i32.or
   i32.store $0
   local.get $1
   i32.const 32
   i32.add
   local.tee $3
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store $0
   local.get $2
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store $0
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load $0
   i32.const -4
   i32.and
   i32.add
   local.tee $2
   local.get $2
   i32.load $0
   i32.const -3
   i32.and
   i32.store $0
  end
  local.get $1
  local.get $0
  i32.store $0 offset=12
  local.get $1
  i32.const 8
  i32.store $0 offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $0
  i32.load $0 offset=8
  local.set $2
  local.get $1
  local.get $0
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store $0 offset=4
  local.get $1
  local.get $2
  i32.store $0 offset=8
  local.get $2
  local.get $1
  local.get $2
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.store $0 offset=8
  global.get $~lib/rt/itcms/total
  local.get $1
  i32.load $0
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $1
  i32.const 20
  i32.add
  local.tee $0
  i64.const 0
  i64.store $0 align=1
  local.get $0
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
 (func $~lib/rt/__visit_globals
  (local $0 i32)
  global.get $std/operator-overloading/a1
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/a2
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/a
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/s1
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/s2
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/s
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/m1
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/m2
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/m
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/d1
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/d2
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/d
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/f1
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/f2
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/f
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/p1
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/p2
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/p
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/n1
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/n2
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/n
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/o1
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/o2
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/o
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/x1
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/x2
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/x
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/eq1
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/eq2
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/eq3
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/eq4
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/gt1
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/gt2
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/gte1
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/gte2
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/le1
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/le2
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/leq1
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/leq2
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/shr
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/sres
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/shu
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/ures
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/shl
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/pos
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/pres
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/neg
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/nres
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/not
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/res
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/excl
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/incdec
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/tmp
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/ais1
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/ais2
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/ais
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/aii1
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/aii2
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/aii
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/tea
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  i32.const 1248
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1056
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
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
           i32.load $0
           br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $std/operator-overloading/Tester $std/operator-overloading/TesterInlineStatic $std/operator-overloading/TesterInlineInstance $std/operator-overloading/TesterElementAccess $invalid
          end
          return
         end
         return
        end
        return
       end
       local.get $0
       i32.load $0
       local.tee $0
       if
        local.get $0
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
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
  unreachable
 )
 (func $~start
  call $start:std/operator-overloading
 )
 (func $std/operator-overloading/Tester#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1620
  i32.lt_s
  if
   i32.const 34416
   i32.const 34464
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0
  local.get $3
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $1
  i32.store $0 offset=4
  local.get $3
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $std/operator-overloading/Tester.equals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1620
  i32.lt_s
  if
   i32.const 34416
   i32.const 34464
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0
  local.set $3
  local.get $2
  local.get $1
  i32.store $0
  local.get $3
  local.get $1
  i32.load $0
  i32.eq
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=4
   local.set $0
   local.get $2
   local.get $1
   i32.store $0
   local.get $0
   local.get $1
   i32.load $0 offset=4
   i32.eq
  else
   i32.const 0
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $std/operator-overloading/Tester.notEquals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1620
  i32.lt_s
  if
   i32.const 34416
   i32.const 34464
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0
  local.set $3
  local.get $2
  local.get $1
  i32.store $0
  local.get $3
  local.get $1
  i32.load $0
  i32.ne
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=4
   local.set $0
   local.get $2
   local.get $1
   i32.store $0
   local.get $0
   local.get $1
   i32.load $0 offset=4
   i32.ne
  else
   i32.const 0
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $std/operator-overloading/TesterInlineStatic#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1620
  i32.lt_s
  if
   i32.const 34416
   i32.const 34464
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0
  local.get $3
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $1
  i32.store $0 offset=4
  local.get $3
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $std/operator-overloading/TesterInlineInstance#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1620
  i32.lt_s
  if
   i32.const 34416
   i32.const 34464
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i32.const 6
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0
  local.get $3
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $1
  i32.store $0 offset=4
  local.get $3
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
  i32.const 1620
  i32.lt_s
  if
   i32.const 34416
   i32.const 34464
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 1536
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
   local.tee $1
   local.get $0
   i32.store $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   local.set $2
   local.get $1
   i32.const 1536
   i32.store $0
   local.get $2
   i32.const 1532
   i32.load $0
   i32.const 1
   i32.shr_u
   i32.ne
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   i32.const 1536
   local.set $3
   local.get $1
   i32.const 1536
   i32.store $0 offset=4
   local.get $0
   local.tee $1
   i32.const 7
   i32.and
   i32.eqz
   local.get $2
   local.tee $0
   i32.const 4
   i32.ge_u
   i32.and
   if
    loop $do-loop|0
     local.get $1
     i64.load $0
     local.get $3
     i64.load $0
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
   block $__inlined_func$~lib/util/string/compareImpl
    loop $while-continue|1
     local.get $0
     local.tee $2
     i32.const 1
     i32.sub
     local.set $0
     local.get $2
     if
      local.get $1
      i32.load16_u $0
      local.tee $4
      local.get $3
      i32.load16_u $0
      local.tee $5
      i32.sub
      local.set $2
      local.get $4
      local.get $5
      i32.ne
      br_if $__inlined_func$~lib/util/string/compareImpl
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
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1620
  i32.lt_s
  if
   i32.const 34416
   i32.const 34464
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store $0
  local.get $3
  local.get $1
  i32.store $0
  local.get $3
  i32.const 1536
  i32.store $0 offset=4
  local.get $1
  call $~lib/string/String.__eq
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   local.get $2
   i32.store $0
  else
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   local.get $2
   i32.store $0 offset=4
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/operator-overloading/TesterElementAccess#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1620
  i32.lt_s
  if
   i32.const 34416
   i32.const 34464
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $1
  i32.store $0
  local.get $2
  i32.const 1536
  i32.store $0 offset=4
  local.get $1
  call $~lib/string/String.__eq
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
  else
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=4
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $start:std/operator-overloading
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 48
   memory.fill $0
   memory.size $0
   i32.const 16
   i32.shl
   i32.const 34388
   i32.sub
   i32.const 1
   i32.shr_u
   global.set $~lib/rt/itcms/threshold
   i32.const 1172
   i32.const 1168
   i32.store $0
   i32.const 1176
   i32.const 1168
   i32.store $0
   i32.const 1168
   global.set $~lib/rt/itcms/pinSpace
   i32.const 1204
   i32.const 1200
   i32.store $0
   i32.const 1208
   i32.const 1200
   i32.store $0
   i32.const 1200
   global.set $~lib/rt/itcms/toSpace
   i32.const 1348
   i32.const 1344
   i32.store $0
   i32.const 1352
   i32.const 1344
   i32.store $0
   i32.const 1344
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
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/a2
   local.tee $1
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store $0
   local.get $2
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   local.set $3
   local.get $2
   local.get $1
   i32.store $0
   local.get $3
   local.get $1
   i32.load $0
   i32.add
   local.set $3
   local.get $2
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=4
   local.set $0
   local.get $2
   local.get $1
   i32.store $0
   local.get $3
   local.get $0
   local.get $1
   i32.load $0 offset=4
   i32.add
   call $std/operator-overloading/Tester#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/a
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/a
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   i32.const 3
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/a
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 5
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/s1
   local.tee $1
   i32.store $0
   local.get $0
   global.get $std/operator-overloading/s2
   local.tee $2
   i32.store $0 offset=4
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   local.set $3
   local.get $0
   local.get $2
   i32.store $0
   local.get $3
   local.get $2
   i32.load $0
   i32.sub
   local.set $3
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0 offset=4
   local.set $1
   local.get $0
   local.get $2
   i32.store $0
   local.get $3
   local.get $1
   local.get $2
   i32.load $0 offset=4
   i32.sub
   call $std/operator-overloading/Tester#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/s
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/s
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   if (result i32)
    i32.const 0
   else
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/s
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 6
    i32.eq
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/m1
   local.tee $1
   i32.store $0
   local.get $0
   global.get $std/operator-overloading/m2
   local.tee $2
   i32.store $0 offset=4
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   local.set $3
   local.get $0
   local.get $2
   i32.store $0
   local.get $3
   local.get $2
   i32.load $0
   i32.mul
   local.set $3
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0 offset=4
   local.set $1
   local.get $0
   local.get $2
   i32.store $0
   local.get $3
   local.get $1
   local.get $2
   i32.load $0 offset=4
   i32.mul
   call $std/operator-overloading/Tester#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/m
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/m
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   i32.const 6
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/m
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 10
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/d1
   local.tee $1
   i32.store $0
   local.get $0
   global.get $std/operator-overloading/d2
   local.tee $2
   i32.store $0 offset=4
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   local.set $3
   local.get $0
   local.get $2
   i32.store $0
   local.get $3
   local.get $2
   i32.load $0
   i32.div_s
   local.set $3
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0 offset=4
   local.set $1
   local.get $0
   local.get $2
   i32.store $0
   local.get $3
   local.get $1
   local.get $2
   i32.load $0 offset=4
   i32.div_s
   call $std/operator-overloading/Tester#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/d
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/d
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   i32.const 2
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/d
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 5
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/f1
   local.tee $1
   i32.store $0
   local.get $0
   global.get $std/operator-overloading/f2
   local.tee $2
   i32.store $0 offset=4
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   local.set $3
   local.get $0
   local.get $2
   i32.store $0
   local.get $3
   local.get $2
   i32.load $0
   i32.rem_s
   local.set $3
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0 offset=4
   local.set $1
   local.get $0
   local.get $2
   i32.store $0
   local.get $3
   local.get $1
   local.get $2
   i32.load $0 offset=4
   i32.rem_s
   call $std/operator-overloading/Tester#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/f
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/f
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   i32.const 4
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/f
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
   else
    i32.const 1
   end
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/p1
   local.tee $1
   i32.store $0
   local.get $0
   global.get $std/operator-overloading/p2
   local.tee $2
   i32.store $0 offset=4
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   local.set $3
   local.get $0
   local.get $2
   i32.store $0
   local.get $3
   local.get $2
   i32.load $0
   call $~lib/math/ipow32
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0 offset=4
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0
   local.get $0
   local.get $1
   local.get $2
   i32.load $0 offset=4
   call $~lib/math/ipow32
   call $std/operator-overloading/Tester#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/p
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/p
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   i32.const 16
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/p
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 243
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/n1
   local.tee $1
   i32.store $0
   local.get $0
   global.get $std/operator-overloading/n2
   local.tee $2
   i32.store $0 offset=4
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   local.set $3
   local.get $0
   local.get $2
   i32.store $0
   local.get $3
   local.get $2
   i32.load $0
   i32.and
   local.set $3
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0 offset=4
   local.set $1
   local.get $0
   local.get $2
   i32.store $0
   local.get $3
   local.get $1
   local.get $2
   i32.load $0 offset=4
   i32.and
   call $std/operator-overloading/Tester#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/n
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/n
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   i32.const 15
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/n
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 15
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/o1
   local.tee $1
   i32.store $0
   local.get $0
   global.get $std/operator-overloading/o2
   local.tee $2
   i32.store $0 offset=4
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   local.set $3
   local.get $0
   local.get $2
   i32.store $0
   local.get $3
   local.get $2
   i32.load $0
   i32.or
   local.set $3
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0 offset=4
   local.set $1
   local.get $0
   local.get $2
   i32.store $0
   local.get $3
   local.get $1
   local.get $2
   i32.load $0 offset=4
   i32.or
   call $std/operator-overloading/Tester#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/o
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/o
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   i32.const 65535
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/o
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 255
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/x1
   local.tee $1
   i32.store $0
   local.get $0
   global.get $std/operator-overloading/x2
   local.tee $2
   i32.store $0 offset=4
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   local.set $3
   local.get $0
   local.get $2
   i32.store $0
   local.get $3
   local.get $2
   i32.load $0
   i32.xor
   local.set $3
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0 offset=4
   local.set $1
   local.get $0
   local.get $2
   i32.store $0
   local.get $3
   local.get $1
   local.get $2
   i32.load $0 offset=4
   i32.xor
   call $std/operator-overloading/Tester#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/x
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/x
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   i32.const 65535
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/x
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 255
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/eq1
   local.tee $1
   i32.store $0
   local.get $0
   global.get $std/operator-overloading/eq2
   local.tee $0
   i32.store $0 offset=4
   local.get $1
   local.get $0
   call $std/operator-overloading/Tester.equals
   global.set $std/operator-overloading/eq
   global.get $std/operator-overloading/eq
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/eq3
   local.tee $1
   i32.store $0
   local.get $0
   global.get $std/operator-overloading/eq4
   local.tee $0
   i32.store $0 offset=4
   local.get $1
   local.get $0
   call $std/operator-overloading/Tester.equals
   global.set $std/operator-overloading/eqf
   global.get $std/operator-overloading/eqf
   if
    i32.const 0
    i32.const 1456
    i32.const 205
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/operator-overloading/eq1
   local.tee $1
   i32.store $0
   local.get $0
   global.get $std/operator-overloading/eq2
   local.tee $0
   i32.store $0 offset=4
   local.get $1
   local.get $0
   call $std/operator-overloading/Tester.notEquals
   global.set $std/operator-overloading/eq
   global.get $std/operator-overloading/eq
   if
    i32.const 0
    i32.const 1456
    i32.const 209
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/operator-overloading/eq3
   local.tee $1
   i32.store $0
   local.get $0
   global.get $std/operator-overloading/eq4
   local.tee $0
   i32.store $0 offset=4
   local.get $1
   local.get $0
   call $std/operator-overloading/Tester.notEquals
   global.set $std/operator-overloading/eqf
   global.get $std/operator-overloading/eqf
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/gt1
   local.tee $1
   i32.store $0
   local.get $0
   global.get $std/operator-overloading/gt2
   local.tee $2
   i32.store $0 offset=4
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   local.set $3
   local.get $0
   local.get $2
   i32.store $0
   local.get $3
   local.get $2
   i32.load $0
   i32.gt_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    local.get $1
    i32.store $0
    local.get $1
    i32.load $0 offset=4
    local.set $1
    local.get $0
    local.get $2
    i32.store $0
    local.get $1
    local.get $2
    i32.load $0 offset=4
    i32.gt_s
   else
    i32.const 0
   end
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/gt
   global.get $std/operator-overloading/gt
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/gte1
   local.tee $1
   i32.store $0
   local.get $0
   global.get $std/operator-overloading/gte2
   local.tee $2
   i32.store $0 offset=4
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   local.set $3
   local.get $0
   local.get $2
   i32.store $0
   local.get $3
   local.get $2
   i32.load $0
   i32.ge_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    local.get $1
    i32.store $0
    local.get $1
    i32.load $0 offset=4
    local.set $1
    local.get $0
    local.get $2
    i32.store $0
    local.get $1
    local.get $2
    i32.load $0 offset=4
    i32.ge_s
   else
    i32.const 0
   end
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/gte
   global.get $std/operator-overloading/gte
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/le1
   local.tee $1
   i32.store $0
   local.get $0
   global.get $std/operator-overloading/le2
   local.tee $2
   i32.store $0 offset=4
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   local.set $3
   local.get $0
   local.get $2
   i32.store $0
   local.get $3
   local.get $2
   i32.load $0
   i32.lt_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    local.get $1
    i32.store $0
    local.get $1
    i32.load $0 offset=4
    local.set $1
    local.get $0
    local.get $2
    i32.store $0
    local.get $1
    local.get $2
    i32.load $0 offset=4
    i32.lt_s
   else
    i32.const 0
   end
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/le
   global.get $std/operator-overloading/le
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/leq1
   local.tee $1
   i32.store $0
   local.get $0
   global.get $std/operator-overloading/leq2
   local.tee $2
   i32.store $0 offset=4
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   local.set $3
   local.get $0
   local.get $2
   i32.store $0
   local.get $3
   local.get $2
   i32.load $0
   i32.le_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    local.get $1
    i32.store $0
    local.get $1
    i32.load $0 offset=4
    local.set $1
    local.get $0
    local.get $2
    i32.store $0
    local.get $1
    local.get $2
    i32.load $0 offset=4
    i32.le_s
   else
    i32.const 0
   end
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/leq
   global.get $std/operator-overloading/leq
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/shr
   local.tee $1
   i32.store $0
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   i32.const 3
   i32.shr_s
   local.set $2
   local.get $0
   local.get $1
   i32.store $0
   local.get $2
   local.get $1
   i32.load $0 offset=4
   i32.const 3
   i32.shr_s
   call $std/operator-overloading/Tester#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/sres
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/sres
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   i32.const 1
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/sres
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 2
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/shu
   local.tee $1
   i32.store $0
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   i32.const 3
   i32.shr_u
   local.set $2
   local.get $0
   local.get $1
   i32.store $0
   local.get $2
   local.get $1
   i32.load $0 offset=4
   i32.const 3
   i32.shr_u
   call $std/operator-overloading/Tester#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/ures
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/ures
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   i32.const 536870911
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/ures
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 536870910
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/shl
   local.tee $1
   i32.store $0
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   i32.const 3
   i32.shl
   local.set $2
   local.get $0
   local.get $1
   i32.store $0
   local.get $2
   local.get $1
   i32.load $0 offset=4
   i32.const 3
   i32.shl
   call $std/operator-overloading/Tester#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/sres
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/sres
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   i32.const 8
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/sres
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 16
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/pos
   local.tee $1
   i32.store $0
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   local.set $2
   local.get $0
   local.get $1
   i32.store $0
   local.get $2
   local.get $1
   i32.load $0 offset=4
   call $std/operator-overloading/Tester#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/pres
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/pres
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   local.set $0
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/pos
   local.tee $1
   i32.store $0
   local.get $0
   local.get $1
   i32.load $0
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    global.get $std/operator-overloading/pres
    local.tee $1
    i32.store $0
    local.get $1
    i32.load $0 offset=4
    local.set $1
    local.get $0
    global.get $std/operator-overloading/pos
    local.tee $0
    i32.store $0
    local.get $1
    local.get $0
    i32.load $0 offset=4
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/neg
   local.tee $1
   i32.store $0
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   i32.const 0
   local.get $1
   i32.load $0
   i32.sub
   local.set $2
   local.get $0
   local.get $1
   i32.store $0
   local.get $2
   i32.const 0
   local.get $1
   i32.load $0 offset=4
   i32.sub
   call $std/operator-overloading/Tester#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/nres
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/nres
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   local.set $0
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/neg
   local.tee $1
   i32.store $0
   local.get $0
   i32.const 0
   local.get $1
   i32.load $0
   i32.sub
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    global.get $std/operator-overloading/nres
    local.tee $1
    i32.store $0
    local.get $1
    i32.load $0 offset=4
    local.set $1
    local.get $0
    global.get $std/operator-overloading/neg
    local.tee $0
    i32.store $0
    local.get $1
    i32.const 0
    local.get $0
    i32.load $0 offset=4
    i32.sub
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/not
   local.tee $1
   i32.store $0
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   i32.const -1
   i32.xor
   local.set $2
   local.get $0
   local.get $1
   i32.store $0
   local.get $2
   local.get $1
   i32.load $0 offset=4
   i32.const -1
   i32.xor
   call $std/operator-overloading/Tester#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/res
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/res
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   local.set $0
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/not
   local.tee $1
   i32.store $0
   local.get $0
   local.get $1
   i32.load $0
   i32.const -1
   i32.xor
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    global.get $std/operator-overloading/res
    local.tee $1
    i32.store $0
    local.get $1
    i32.load $0 offset=4
    local.set $1
    local.get $0
    global.get $std/operator-overloading/not
    local.tee $0
    i32.store $0
    local.get $1
    local.get $0
    i32.load $0 offset=4
    i32.const -1
    i32.xor
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/excl
   local.tee $1
   i32.store $0
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   if (result i32)
    i32.const 1
   else
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0
    local.get $1
    i32.load $0 offset=4
   end
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.eqz
   global.set $std/operator-overloading/bres
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/excl
   local.tee $0
   i32.store $0
   global.get $std/operator-overloading/bres
   local.get $0
   i32.load $0
   if (result i32)
    i32.const 1
   else
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/excl
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
   end
   i32.eqz
   i32.ne
   if
    i32.const 0
    i32.const 1456
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
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/incdec
   local.tee $1
   i32.store $0
   local.get $0
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0 offset=4
   local.get $1
   local.get $1
   i32.load $0
   i32.const 1
   i32.add
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0 offset=4
   local.get $1
   local.get $1
   i32.load $0 offset=4
   i32.const 1
   i32.add
   i32.store $0 offset=4
   local.get $0
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   global.set $std/operator-overloading/incdec
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/incdec
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   i32.const 1
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/incdec
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 2
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
    i32.const 279
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/operator-overloading/incdec
   local.tee $1
   i32.store $0
   local.get $0
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0 offset=4
   local.get $1
   local.get $1
   i32.load $0
   i32.const 1
   i32.sub
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0 offset=4
   local.get $1
   local.get $1
   i32.load $0 offset=4
   i32.const 1
   i32.sub
   i32.store $0 offset=4
   local.get $0
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   global.set $std/operator-overloading/incdec
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/incdec
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   if (result i32)
    i32.const 0
   else
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/incdec
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 1
    i32.eq
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/incdec
   local.tee $1
   i32.store $0 offset=8
   local.get $0
   local.get $1
   i32.store $0
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   i32.const 1
   i32.add
   local.set $2
   local.get $0
   local.get $1
   i32.store $0
   local.get $2
   local.get $1
   i32.load $0 offset=4
   i32.const 1
   i32.add
   call $std/operator-overloading/Tester#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/incdec
   local.get $1
   global.set $std/operator-overloading/tmp
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tmp
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   if (result i32)
    i32.const 0
   else
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/tmp
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 1
    i32.eq
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
    i32.const 287
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/incdec
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   i32.const 1
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/incdec
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 2
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
    i32.const 288
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/operator-overloading/incdec
   local.tee $1
   i32.store $0 offset=12
   local.get $0
   local.get $1
   i32.store $0
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   i32.const 1
   i32.sub
   local.set $2
   local.get $0
   local.get $1
   i32.store $0
   local.get $2
   local.get $1
   i32.load $0 offset=4
   i32.const 1
   i32.sub
   call $std/operator-overloading/Tester#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/incdec
   local.get $1
   global.set $std/operator-overloading/tmp
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tmp
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   i32.const 1
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/tmp
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 2
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
    i32.const 291
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/incdec
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   if (result i32)
    i32.const 0
   else
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/incdec
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 1
    i32.eq
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/ais1
   local.tee $1
   i32.store $0
   local.get $0
   local.get $1
   i32.store $0 offset=16
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   i32.const 1
   i32.add
   local.set $2
   local.get $0
   local.get $1
   i32.store $0
   local.get $2
   local.get $1
   i32.load $0 offset=4
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
   i32.store $0 offset=20
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/ais2
   local.tee $1
   i32.store $0 offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $2
   local.get $1
   i32.load $0
   i32.add
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=4
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $2
   local.get $0
   local.get $1
   i32.load $0 offset=4
   i32.add
   call $std/operator-overloading/TesterInlineStatic#constructor
   global.set $std/operator-overloading/ais
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/ais
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   i32.const 4
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/ais
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 6
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
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
   local.tee $0
   global.get $std/operator-overloading/aii1
   local.tee $1
   i32.store $0 offset=28
   local.get $0
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0
   i32.const 1
   i32.add
   local.set $2
   local.get $0
   local.get $1
   i32.store $0
   local.get $2
   local.get $1
   i32.load $0 offset=4
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
   i32.store $0 offset=32
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/aii2
   local.tee $1
   i32.store $0 offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $2
   local.get $1
   i32.load $0
   i32.add
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=4
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $2
   local.get $0
   local.get $1
   i32.load $0 offset=4
   i32.add
   call $std/operator-overloading/TesterInlineInstance#constructor
   global.set $std/operator-overloading/aii
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/aii
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   i32.const 4
   i32.eq
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    global.get $std/operator-overloading/aii
    local.tee $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 6
    i32.eq
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1456
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
   i32.const 1620
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0
   local.get $0
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 1
   i32.store $0
   local.get $1
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 2
   i32.store $0 offset=4
   local.get $1
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $std/operator-overloading/tea
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tea
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 1536
   i32.store $0 offset=4
   local.get $0
   i32.const 1536
   i32.const -1
   call $std/operator-overloading/TesterElementAccess#__set
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tea
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 1568
   i32.store $0 offset=4
   local.get $0
   i32.const 1568
   i32.const -2
   call $std/operator-overloading/TesterElementAccess#__set
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tea
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0
   i32.const -1
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 360
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/operator-overloading/tea
   local.tee $1
   i32.store $0
   local.get $0
   i32.const 1536
   i32.store $0 offset=4
   local.get $1
   i32.const 1536
   call $std/operator-overloading/TesterElementAccess#__get
   i32.const -1
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 361
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tea
   local.tee $0
   i32.store $0
   local.get $0
   i32.load $0 offset=4
   i32.const -2
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 363
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/operator-overloading/tea
   local.tee $1
   i32.store $0
   local.get $0
   i32.const 1568
   i32.store $0 offset=4
   local.get $1
   i32.const 1568
   call $std/operator-overloading/TesterElementAccess#__get
   i32.const -2
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 364
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/operator-overloading/tea
   local.tee $1
   i32.store $0
   local.get $0
   i32.const 1536
   i32.store $0 offset=4
   local.get $0
   local.get $1
   i32.store $0 offset=40
   local.get $0
   i32.const 1536
   i32.store $0 offset=44
   local.get $1
   i32.const 1536
   local.get $1
   i32.const 1536
   call $std/operator-overloading/TesterElementAccess#__get
   i32.const 1
   i32.add
   call $std/operator-overloading/TesterElementAccess#__set
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tea
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 1568
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tea
   local.tee $1
   i32.store $0 offset=40
   global.get $~lib/memory/__stack_pointer
   i32.const 1568
   i32.store $0 offset=44
   local.get $0
   i32.const 1568
   local.get $1
   i32.const 1568
   call $std/operator-overloading/TesterElementAccess#__get
   i32.const 1
   i32.sub
   call $std/operator-overloading/TesterElementAccess#__set
   global.get $~lib/memory/__stack_pointer
   global.get $std/operator-overloading/tea
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 1536
   i32.store $0 offset=4
   local.get $0
   i32.const 1536
   call $std/operator-overloading/TesterElementAccess#__get
   if
    i32.const 0
    i32.const 1456
    i32.const 369
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $std/operator-overloading/tea
   local.tee $1
   i32.store $0
   local.get $0
   i32.const 1568
   i32.store $0 offset=4
   local.get $1
   i32.const 1568
   call $std/operator-overloading/TesterElementAccess#__get
   i32.const -3
   i32.ne
   if
    i32.const 0
    i32.const 1456
    i32.const 370
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 34416
  i32.const 34464
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $1
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $1
   global.get $~lib/rt/itcms/iter
   i32.eq
   if
    local.get $1
    i32.load $0 offset=8
    local.tee $0
    i32.eqz
    if
     i32.const 0
     i32.const 1120
     i32.const 148
     i32.const 30
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    global.set $~lib/rt/itcms/iter
   end
   block $__inlined_func$~lib/rt/itcms/Object#unlink
    local.get $1
    i32.load $0 offset=4
    i32.const -4
    i32.and
    local.tee $0
    i32.eqz
    if
     local.get $1
     i32.load $0 offset=8
     i32.eqz
     local.get $1
     i32.const 34388
     i32.lt_u
     i32.and
     i32.eqz
     if
      i32.const 0
      i32.const 1120
      i32.const 128
      i32.const 18
      call $~lib/builtins/abort
      unreachable
     end
     br $__inlined_func$~lib/rt/itcms/Object#unlink
    end
    local.get $1
    i32.load $0 offset=8
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1120
     i32.const 132
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.store $0 offset=8
    local.get $2
    local.get $0
    local.get $2
    i32.load $0 offset=4
    i32.const 3
    i32.and
    i32.or
    i32.store $0 offset=4
   end
   global.get $~lib/rt/itcms/toSpace
   local.set $2
   local.get $1
   i32.load $0 offset=12
   local.tee $0
   i32.const 2
   i32.le_u
   if (result i32)
    i32.const 1
   else
    local.get $0
    i32.const 1584
    i32.load $0
    i32.gt_u
    if
     i32.const 1248
     i32.const 1312
     i32.const 21
     i32.const 28
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2
    i32.shl
    i32.const 1588
    i32.add
    i32.load $0
    i32.const 32
    i32.and
   end
   local.set $3
   local.get $2
   i32.load $0 offset=8
   local.set $0
   local.get $1
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.const 2
   local.get $3
   select
   local.get $2
   i32.or
   i32.store $0 offset=4
   local.get $1
   local.get $0
   i32.store $0 offset=8
   local.get $0
   local.get $1
   local.get $0
   i32.load $0 offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store $0 offset=4
   local.get $2
   local.get $1
   i32.store $0 offset=8
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
)
