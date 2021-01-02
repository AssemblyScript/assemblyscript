(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00&\00\00\00i\00n\00s\00t\00a\00n\00c\00e\00o\00f\00-\00c\00l\00a\00s\00s\00.\00t\00s")
 (data (i32.const 1104) "\07\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\04\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\05")
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $instanceof-class/b (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/__new (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/stub/offset
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.tee $3
  i32.const 28
  i32.add
  local.tee $1
  memory.size
  local.tee $4
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  i32.gt_u
  if
   local.get $4
   local.get $1
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $2
   local.get $4
   i32.lt_s
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
  end
  local.get $1
  global.set $~lib/rt/stub/offset
  i32.const 28
  i32.store
  local.get $3
  i32.const 4
  i32.sub
  local.tee $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/rt/__instanceof (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=12
  local.tee $0
  i32.const 1104
  i32.load
  i32.le_u
  if
   loop $do-continue|0
    local.get $0
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $0
    i32.const 3
    i32.shl
    i32.const 1108
    i32.add
    i32.load offset=4
    local.tee $0
    br_if $do-continue|0
   end
  end
  i32.const 0
 )
 (func $~start
  (local $0 i32)
  i32.const 1164
  global.set $~lib/rt/stub/offset
  i32.const 3
  call $~lib/rt/stub/__new
  i32.eqz
  if
   i32.const 4
   call $~lib/rt/stub/__new
   drop
  end
  i32.const 6
  call $~lib/rt/stub/__new
  local.tee $0
  if (result i32)
   local.get $0
  else
   i32.const 5
   call $~lib/rt/stub/__new
  end
  global.set $instanceof-class/b
  block $__inlined_func$instanceof-class/Child~instanceof (result i32)
   i32.const 0
   global.get $instanceof-class/b
   local.tee $0
   i32.eqz
   br_if $__inlined_func$instanceof-class/Child~instanceof
   drop
   i32.const 1
   local.get $0
   i32.const 3
   call $~lib/rt/__instanceof
   br_if $__inlined_func$instanceof-class/Child~instanceof
   drop
   i32.const 1
   local.get $0
   i32.const 6
   call $~lib/rt/__instanceof
   br_if $__inlined_func$instanceof-class/Child~instanceof
   drop
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 17
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
)
