(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) "L\00\00\00\01\00\00\00\00\00\00\00\01\00\00\006\00\00\00s\00t\00d\00/\00o\00p\00e\00r\00a\00t\00o\00r\00-\00o\00v\00e\00r\00l\00o\00a\00d\00i\00n\00g\00.\00t\00s\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
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
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
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
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
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
 (global $~lib/memory/__heap_base i32 (i32.const 92))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/computeSize (param $0 i32) (result i32)
  local.get $0
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  memory.size
  local.set $1
  local.get $1
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $2
  local.get $0
  local.get $2
  i32.gt_u
  if
   local.get $0
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $4
   local.get $4
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
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.set $1
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.set $2
  local.get $0
  call $~lib/rt/stub/computeSize
  local.set $3
  local.get $2
  local.get $3
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $1
  local.get $3
  i32.store
  local.get $2
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   unreachable
  end
  i32.const 16
  local.get $0
  i32.add
  call $~lib/rt/stub/__alloc
  local.set $2
  local.get $2
  i32.const 4
  i32.sub
  local.set $3
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $3
  local.get $0
  i32.store offset=16
  local.get $2
  i32.const 16
  i32.add
 )
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $std/operator-overloading/Tester#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 3
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $std/operator-overloading/Tester.add (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.add
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.add
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.sub (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.sub
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.sub
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.mul (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.mul
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.mul
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.div (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.div_s
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.div_s
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.mod (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.rem_s
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.rem_s
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/math/ipow32 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  local.set $2
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
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
   i32.const 0
   i32.eq
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
      i32.const 32
      local.get $1
      i32.clz
      i32.sub
      local.set $3
      block $break|0
       block $case4|0
        block $case3|0
         block $case2|0
          block $case1|0
           block $case0|0
            local.get $3
            local.set $4
            local.get $4
            i32.const 5
            i32.eq
            br_if $case0|0
            local.get $4
            i32.const 4
            i32.eq
            br_if $case1|0
            local.get $4
            i32.const 3
            i32.eq
            br_if $case2|0
            local.get $4
            i32.const 2
            i32.eq
            br_if $case3|0
            local.get $4
            i32.const 1
            i32.eq
            br_if $case4|0
            br $break|0
           end
           local.get $1
           i32.const 1
           i32.and
           if
            local.get $2
            local.get $0
            i32.mul
            local.set $2
           end
           local.get $1
           i32.const 1
           i32.shr_u
           local.set $1
           local.get $0
           local.get $0
           i32.mul
           local.set $0
          end
          local.get $1
          i32.const 1
          i32.and
          if
           local.get $2
           local.get $0
           i32.mul
           local.set $2
          end
          local.get $1
          i32.const 1
          i32.shr_u
          local.set $1
          local.get $0
          local.get $0
          i32.mul
          local.set $0
         end
         local.get $1
         i32.const 1
         i32.and
         if
          local.get $2
          local.get $0
          i32.mul
          local.set $2
         end
         local.get $1
         i32.const 1
         i32.shr_u
         local.set $1
         local.get $0
         local.get $0
         i32.mul
         local.set $0
        end
        local.get $1
        i32.const 1
        i32.and
        if
         local.get $2
         local.get $0
         i32.mul
         local.set $2
        end
        local.get $1
        i32.const 1
        i32.shr_u
        local.set $1
        local.get $0
        local.get $0
        i32.mul
        local.set $0
       end
       local.get $1
       i32.const 1
       i32.and
       if
        local.get $2
        local.get $0
        i32.mul
        local.set $2
       end
      end
      local.get $2
      return
     end
    end
   end
  end
  loop $while-continue|1
   local.get $1
   local.set $3
   local.get $3
   if
    local.get $1
    i32.const 1
    i32.and
    if
     local.get $2
     local.get $0
     i32.mul
     local.set $2
    end
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
 (func $std/operator-overloading/Tester.pow (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  call $~lib/math/ipow32
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  call $~lib/math/ipow32
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.and (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.and
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.and
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.or (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.or
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.or
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.xor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.xor
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.xor
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.equals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.eq
  if (result i32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.load offset=4
   i32.eq
  else
   i32.const 0
  end
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.notEquals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.ne
  if (result i32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.load offset=4
   i32.ne
  else
   i32.const 0
  end
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.greater (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.gt_s
  if (result i32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.load offset=4
   i32.gt_s
  else
   i32.const 0
  end
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.greaterEquals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.ge_s
  if (result i32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.load offset=4
   i32.ge_s
  else
   i32.const 0
  end
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.less (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.lt_s
  if (result i32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.load offset=4
   i32.lt_s
  else
   i32.const 0
  end
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.lessEquals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.le_s
  if (result i32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.load offset=4
   i32.le_s
  else
   i32.const 0
  end
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.shr (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.shr_s
  local.get $0
  i32.load offset=4
  local.get $1
  i32.shr_s
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.shu (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.shr_u
  local.get $0
  i32.load offset=4
  local.get $1
  i32.shr_u
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.shl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.shl
  local.get $0
  i32.load offset=4
  local.get $1
  i32.shl
  call $std/operator-overloading/Tester#constructor
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $std/operator-overloading/Tester.pos (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  call $std/operator-overloading/Tester#constructor
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $std/operator-overloading/Tester.neg (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  i32.const 0
  local.get $0
  i32.load
  i32.sub
  i32.const 0
  local.get $0
  i32.load offset=4
  i32.sub
  call $std/operator-overloading/Tester#constructor
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $std/operator-overloading/Tester.not (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 0
  local.get $0
  i32.load
  i32.const -1
  i32.xor
  local.get $0
  i32.load offset=4
  i32.const -1
  i32.xor
  call $std/operator-overloading/Tester#constructor
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $std/operator-overloading/Tester.excl (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.load
  i32.eqz
  if (result i32)
   local.get $0
   i32.load offset=4
   i32.eqz
  else
   i32.const 0
  end
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $std/operator-overloading/Tester#inc (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $std/operator-overloading/Tester#dec (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.sub
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $std/operator-overloading/Tester#postInc (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.add
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester#postDec (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  i32.const 1
  i32.sub
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/TesterInlineStatic#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 4
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $std/operator-overloading/TesterInlineInstance#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 5
   call $~lib/rt/stub/__new
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $start:std/operator-overloading
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
  global.get $~lib/memory/__heap_base
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 0
  i32.const 1
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/a1
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/a2
  global.get $std/operator-overloading/a1
  global.get $std/operator-overloading/a2
  call $std/operator-overloading/Tester.add
  local.tee $0
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/a
  global.get $std/operator-overloading/a
  i32.load
  i32.const 3
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/a
   i32.load offset=4
   i32.const 5
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 145
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/s1
  i32.const 0
  i32.const 2
  i32.const -3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/s2
  global.get $std/operator-overloading/s1
  global.get $std/operator-overloading/s2
  call $std/operator-overloading/Tester.sub
  local.tee $1
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/s
  global.get $std/operator-overloading/s
  i32.load
  i32.const 0
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/s
   i32.load offset=4
   i32.const 6
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 151
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 5
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/m1
  i32.const 0
  i32.const 3
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/m2
  global.get $std/operator-overloading/m1
  global.get $std/operator-overloading/m2
  call $std/operator-overloading/Tester.mul
  local.tee $2
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/m
  global.get $std/operator-overloading/m
  i32.load
  i32.const 6
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/m
   i32.load offset=4
   i32.const 10
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 157
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 6
  i32.const 50
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/d1
  i32.const 0
  i32.const 3
  i32.const 10
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/d2
  global.get $std/operator-overloading/d1
  global.get $std/operator-overloading/d2
  call $std/operator-overloading/Tester.div
  local.tee $3
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/d
  global.get $std/operator-overloading/d
  i32.load
  i32.const 2
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/d
   i32.load offset=4
   i32.const 5
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 163
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 10
  i32.const 10
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/f1
  i32.const 0
  i32.const 6
  i32.const 10
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/f2
  global.get $std/operator-overloading/f1
  global.get $std/operator-overloading/f2
  call $std/operator-overloading/Tester.mod
  local.tee $4
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/f
  global.get $std/operator-overloading/f
  i32.load
  i32.const 4
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/f
   i32.load offset=4
   i32.const 0
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 169
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/p1
  i32.const 0
  i32.const 4
  i32.const 5
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/p2
  global.get $std/operator-overloading/p1
  global.get $std/operator-overloading/p2
  call $std/operator-overloading/Tester.pow
  local.tee $5
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/p
  global.get $std/operator-overloading/p
  i32.load
  i32.const 16
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/p
   i32.load offset=4
   i32.const 243
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 175
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 255
  i32.const 15
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/n1
  i32.const 0
  i32.const 15
  i32.const 255
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/n2
  global.get $std/operator-overloading/n1
  global.get $std/operator-overloading/n2
  call $std/operator-overloading/Tester.and
  local.tee $6
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/n
  global.get $std/operator-overloading/n
  i32.load
  i32.const 15
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/n
   i32.load offset=4
   i32.const 15
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 181
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 3855
  i32.const 255
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/o1
  i32.const 0
  i32.const 61680
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/o2
  global.get $std/operator-overloading/o1
  global.get $std/operator-overloading/o2
  call $std/operator-overloading/Tester.or
  local.tee $7
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/o
  global.get $std/operator-overloading/o
  i32.load
  i32.const 65535
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/o
   i32.load offset=4
   i32.const 255
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 187
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 255
  i32.const 255
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/x1
  i32.const 0
  i32.const 65280
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/x2
  global.get $std/operator-overloading/x1
  global.get $std/operator-overloading/x2
  call $std/operator-overloading/Tester.xor
  local.tee $8
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/x
  global.get $std/operator-overloading/x
  i32.load
  i32.const 65535
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/x
   i32.load offset=4
   i32.const 255
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 193
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/eq1
  i32.const 0
  i32.const 1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/eq2
  global.get $std/operator-overloading/eq1
  global.get $std/operator-overloading/eq2
  call $std/operator-overloading/Tester.equals
  global.set $std/operator-overloading/eq
  global.get $std/operator-overloading/eq
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 199
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/eq3
  i32.const 0
  i32.const 0
  i32.const 1
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/eq4
  global.get $std/operator-overloading/eq3
  global.get $std/operator-overloading/eq4
  call $std/operator-overloading/Tester.equals
  global.set $std/operator-overloading/eqf
  global.get $std/operator-overloading/eqf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 205
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/eq1
  global.get $std/operator-overloading/eq2
  call $std/operator-overloading/Tester.notEquals
  global.set $std/operator-overloading/eq
  global.get $std/operator-overloading/eq
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 209
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/eq3
  global.get $std/operator-overloading/eq4
  call $std/operator-overloading/Tester.notEquals
  global.set $std/operator-overloading/eqf
  global.get $std/operator-overloading/eqf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 213
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/gt1
  i32.const 0
  i32.const 1
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/gt2
  global.get $std/operator-overloading/gt1
  global.get $std/operator-overloading/gt2
  call $std/operator-overloading/Tester.greater
  global.set $std/operator-overloading/gt
  global.get $std/operator-overloading/gt
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 219
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/gte1
  i32.const 0
  i32.const 2
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/gte2
  global.get $std/operator-overloading/gte1
  global.get $std/operator-overloading/gte2
  call $std/operator-overloading/Tester.greaterEquals
  global.set $std/operator-overloading/gte
  global.get $std/operator-overloading/gte
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 225
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 5
  i32.const -1
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/le1
  i32.const 0
  i32.const 6
  i32.const 6
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/le2
  global.get $std/operator-overloading/le1
  global.get $std/operator-overloading/le2
  call $std/operator-overloading/Tester.less
  global.set $std/operator-overloading/le
  global.get $std/operator-overloading/le
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 231
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 4
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/leq1
  i32.const 0
  i32.const 4
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/leq2
  global.get $std/operator-overloading/leq1
  global.get $std/operator-overloading/leq2
  call $std/operator-overloading/Tester.lessEquals
  global.set $std/operator-overloading/leq
  global.get $std/operator-overloading/leq
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 237
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 8
  i32.const 16
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/shr
  global.get $std/operator-overloading/shr
  i32.const 3
  call $std/operator-overloading/Tester.shr
  local.tee $9
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/sres
  global.get $std/operator-overloading/sres
  i32.load
  i32.const 1
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/sres
   i32.load offset=4
   i32.const 2
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 242
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const -8
  i32.const -16
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/shu
  global.get $std/operator-overloading/shu
  i32.const 3
  call $std/operator-overloading/Tester.shu
  local.tee $10
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/ures
  global.get $std/operator-overloading/ures
  i32.load
  i32.const 536870911
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/ures
   i32.load offset=4
   i32.const 536870910
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 247
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/shl
  global.get $std/operator-overloading/shl
  i32.const 3
  call $std/operator-overloading/Tester.shl
  local.tee $11
  local.tee $12
  global.get $std/operator-overloading/sres
  local.tee $13
  i32.ne
  if
   local.get $12
   call $~lib/rt/stub/__retain
   local.set $12
   local.get $13
   call $~lib/rt/stub/__release
  end
  local.get $12
  global.set $std/operator-overloading/sres
  global.get $std/operator-overloading/sres
  i32.load
  i32.const 8
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/sres
   i32.load offset=4
   i32.const 16
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 252
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/pos
  global.get $std/operator-overloading/pos
  call $std/operator-overloading/Tester.pos
  local.tee $12
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/pres
  global.get $std/operator-overloading/pres
  i32.load
  global.get $std/operator-overloading/pos
  i32.load
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/pres
   i32.load offset=4
   global.get $std/operator-overloading/pos
   i32.load offset=4
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 257
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const -1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/neg
  global.get $std/operator-overloading/neg
  call $std/operator-overloading/Tester.neg
  local.tee $13
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/nres
  global.get $std/operator-overloading/nres
  i32.load
  i32.const 0
  global.get $std/operator-overloading/neg
  i32.load
  i32.sub
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/nres
   i32.load offset=4
   i32.const 0
   global.get $std/operator-overloading/neg
   i32.load offset=4
   i32.sub
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 262
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 255
  i32.const 16
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/not
  global.get $std/operator-overloading/not
  call $std/operator-overloading/Tester.not
  local.tee $14
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/res
  global.get $std/operator-overloading/res
  i32.load
  global.get $std/operator-overloading/not
  i32.load
  i32.const -1
  i32.xor
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/res
   i32.load offset=4
   global.get $std/operator-overloading/not
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
   i32.const 32
   i32.const 267
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/excl
  global.get $std/operator-overloading/excl
  call $std/operator-overloading/Tester.excl
  global.set $std/operator-overloading/bres
  global.get $std/operator-overloading/bres
  global.get $std/operator-overloading/excl
  i32.load
  i32.eqz
  if (result i32)
   global.get $std/operator-overloading/excl
   i32.load offset=4
   i32.eqz
  else
   i32.const 0
  end
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 272
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/bres
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 273
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.const 1
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/incdec
  global.get $std/operator-overloading/incdec
  call $std/operator-overloading/Tester#inc
  local.tee $15
  local.tee $16
  global.get $std/operator-overloading/incdec
  local.tee $17
  i32.ne
  if
   local.get $16
   call $~lib/rt/stub/__retain
   local.set $16
   local.get $17
   call $~lib/rt/stub/__release
  end
  local.get $16
  global.set $std/operator-overloading/incdec
  global.get $std/operator-overloading/incdec
  i32.load
  i32.const 1
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 2
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 279
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/incdec
  call $std/operator-overloading/Tester#dec
  local.tee $16
  local.tee $17
  global.get $std/operator-overloading/incdec
  local.tee $18
  i32.ne
  if
   local.get $17
   call $~lib/rt/stub/__retain
   local.set $17
   local.get $18
   call $~lib/rt/stub/__release
  end
  local.get $17
  global.set $std/operator-overloading/incdec
  global.get $std/operator-overloading/incdec
  i32.load
  i32.const 0
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 1
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 282
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.const 1
  call $std/operator-overloading/Tester#constructor
  local.set $18
  global.get $std/operator-overloading/incdec
  call $~lib/rt/stub/__release
  local.get $18
  global.set $std/operator-overloading/incdec
  global.get $std/operator-overloading/incdec
  local.tee $18
  call $std/operator-overloading/Tester#postInc
  local.tee $17
  local.tee $19
  global.get $std/operator-overloading/incdec
  local.tee $20
  i32.ne
  if
   local.get $19
   call $~lib/rt/stub/__retain
   local.set $19
   local.get $20
   call $~lib/rt/stub/__release
  end
  local.get $19
  global.set $std/operator-overloading/incdec
  local.get $18
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/tmp
  global.get $std/operator-overloading/tmp
  i32.load
  i32.const 0
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/tmp
   i32.load offset=4
   i32.const 1
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 287
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/incdec
  i32.load
  i32.const 1
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 2
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 288
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/incdec
  local.tee $18
  call $std/operator-overloading/Tester#postDec
  local.tee $19
  local.tee $20
  global.get $std/operator-overloading/incdec
  local.tee $21
  i32.ne
  if
   local.get $20
   call $~lib/rt/stub/__retain
   local.set $20
   local.get $21
   call $~lib/rt/stub/__release
  end
  local.get $20
  global.set $std/operator-overloading/incdec
  local.get $18
  local.tee $21
  global.get $std/operator-overloading/tmp
  local.tee $18
  i32.ne
  if
   local.get $21
   call $~lib/rt/stub/__retain
   local.set $21
   local.get $18
   call $~lib/rt/stub/__release
  end
  local.get $21
  global.set $std/operator-overloading/tmp
  global.get $std/operator-overloading/tmp
  i32.load
  i32.const 1
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/tmp
   i32.load offset=4
   i32.const 2
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 291
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/incdec
  i32.load
  i32.const 0
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 1
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 292
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const 2
  call $std/operator-overloading/TesterInlineStatic#constructor
  global.set $std/operator-overloading/ais1
  global.get $std/operator-overloading/ais1
  call $~lib/rt/stub/__retain
  local.set $20
  i32.const 0
  local.get $20
  i32.load
  i32.const 1
  i32.add
  local.get $20
  i32.load offset=4
  i32.const 1
  i32.add
  call $std/operator-overloading/TesterInlineStatic#constructor
  local.set $21
  local.get $20
  call $~lib/rt/stub/__release
  local.get $21
  local.tee $20
  local.tee $18
  global.get $std/operator-overloading/ais1
  local.tee $21
  i32.ne
  if
   local.get $18
   call $~lib/rt/stub/__retain
   local.set $18
   local.get $21
   call $~lib/rt/stub/__release
  end
  local.get $18
  global.set $std/operator-overloading/ais1
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/TesterInlineStatic#constructor
  global.set $std/operator-overloading/ais2
  global.get $std/operator-overloading/ais1
  call $~lib/rt/stub/__retain
  local.set $18
  global.get $std/operator-overloading/ais2
  call $~lib/rt/stub/__retain
  local.set $21
  i32.const 0
  local.get $18
  i32.load
  local.get $21
  i32.load
  i32.add
  local.get $18
  i32.load offset=4
  local.get $21
  i32.load offset=4
  i32.add
  call $std/operator-overloading/TesterInlineStatic#constructor
  local.set $22
  local.get $21
  call $~lib/rt/stub/__release
  local.get $18
  call $~lib/rt/stub/__release
  local.get $22
  local.tee $18
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/ais
  global.get $std/operator-overloading/ais
  i32.load
  i32.const 4
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/ais
   i32.load offset=4
   i32.const 6
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 312
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const 2
  call $std/operator-overloading/TesterInlineInstance#constructor
  global.set $std/operator-overloading/aii1
  global.get $std/operator-overloading/aii1
  local.set $22
  i32.const 0
  local.get $22
  i32.load
  i32.const 1
  i32.add
  local.get $22
  i32.load offset=4
  i32.const 1
  i32.add
  call $std/operator-overloading/TesterInlineInstance#constructor
  local.tee $22
  local.tee $21
  global.get $std/operator-overloading/aii1
  local.tee $23
  i32.ne
  if
   local.get $21
   call $~lib/rt/stub/__retain
   local.set $21
   local.get $23
   call $~lib/rt/stub/__release
  end
  local.get $21
  global.set $std/operator-overloading/aii1
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/TesterInlineInstance#constructor
  global.set $std/operator-overloading/aii2
  global.get $std/operator-overloading/aii1
  local.set $21
  global.get $std/operator-overloading/aii2
  call $~lib/rt/stub/__retain
  local.set $23
  i32.const 0
  local.get $21
  i32.load
  local.get $23
  i32.load
  i32.add
  local.get $21
  i32.load offset=4
  local.get $23
  i32.load offset=4
  i32.add
  call $std/operator-overloading/TesterInlineInstance#constructor
  local.set $24
  local.get $23
  call $~lib/rt/stub/__release
  local.get $24
  local.tee $21
  call $~lib/rt/stub/__retain
  global.set $std/operator-overloading/aii
  global.get $std/operator-overloading/aii
  i32.load
  i32.const 4
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/aii
   i32.load offset=4
   i32.const 6
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 332
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $10
  call $~lib/rt/stub/__release
  local.get $11
  call $~lib/rt/stub/__release
  local.get $12
  call $~lib/rt/stub/__release
  local.get $13
  call $~lib/rt/stub/__release
  local.get $14
  call $~lib/rt/stub/__release
  local.get $15
  call $~lib/rt/stub/__release
  local.get $16
  call $~lib/rt/stub/__release
  local.get $17
  call $~lib/rt/stub/__release
  local.get $18
  call $~lib/rt/stub/__release
  local.get $19
  call $~lib/rt/stub/__release
  local.get $20
  call $~lib/rt/stub/__release
  local.get $21
  call $~lib/rt/stub/__release
  local.get $22
  call $~lib/rt/stub/__release
 )
 (func $~start
  call $start:std/operator-overloading
 )
)
