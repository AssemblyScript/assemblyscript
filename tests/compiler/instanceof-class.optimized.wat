(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00i\00n\00s\00t\00a\00n\00c\00e\00o\00f\00-\00c\00l\00a\00s\00s\00.\00t\00s")
 (data (i32.const 80) "\07\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\04\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\05")
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $instanceof-class/a (mut i32) (i32.const 0))
 (global $instanceof-class/b (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/maybeGrowMemory (; 1 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
  local.tee $1
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $1
   local.get $2
   local.get $1
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $1
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
 (func $~lib/rt/stub/__alloc (; 2 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $2
  i32.const 16
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $2
  i32.const 16
  i32.sub
  local.tee $1
  i32.const 16
  i32.store
  local.get $1
  i32.const 1
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $2
 )
 (func $start:instanceof-class (; 3 ;)
  (local $0 i32)
  i32.const 144
  global.set $~lib/rt/stub/startOffset
  i32.const 144
  global.set $~lib/rt/stub/offset
  i32.const 3
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.eqz
  if
   i32.const 4
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  global.set $instanceof-class/a
  i32.const 6
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.eqz
  if
   i32.const 5
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  global.set $instanceof-class/b
  global.get $instanceof-class/b
  call $instanceof-class/Child~instanceof
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 17
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start (; 4 ;)
  call $start:instanceof-class
 )
 (func $~lib/rt/__instanceof (; 5 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=8
  local.tee $0
  i32.const 80
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
    i32.const 84
    i32.add
    i32.load offset=4
    local.tee $0
    br_if $do-continue|0
   end
  end
  i32.const 0
 )
 (func $instanceof-class/Child~instanceof (; 6 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 3
  call $~lib/rt/__instanceof
  if
   i32.const 1
   return
  end
  local.get $0
  i32.const 6
  call $~lib/rt/__instanceof
  if
   i32.const 1
   return
  end
  i32.const 0
 )
)
