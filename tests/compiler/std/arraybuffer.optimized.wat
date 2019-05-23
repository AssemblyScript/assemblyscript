(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 56) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 112) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 168) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\02")
 (data (i32.const 192) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00d\00a\00t\00a\00v\00i\00e\00w\00.\00t\00s")
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $std/arraybuffer/buffer (mut i32) (i32.const 0))
 (global $std/arraybuffer/sliced (mut i32) (i32.const 0))
 (global $std/arraybuffer/arr8 (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/rt/stub/__alloc (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $3
  local.get $0
  i32.const 1
  local.get $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  memory.size
  local.tee $4
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $2
   local.get $3
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $5
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $2
  global.set $~lib/rt/stub/offset
  local.get $3
  i32.const 16
  i32.sub
  local.tee $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
 )
 (func $~lib/memory/memory.fill (; 2 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.const 0
  i32.store8
  local.get $0
  i32.const 8
  i32.add
  local.tee $1
  i32.const 1
  i32.sub
  i32.const 0
  i32.store8
  local.get $0
  i32.const 1
  i32.add
  i32.const 0
  i32.store8
  local.get $0
  i32.const 2
  i32.add
  i32.const 0
  i32.store8
  local.get $1
  i32.const 2
  i32.sub
  i32.const 0
  i32.store8
  local.get $1
  i32.const 3
  i32.sub
  i32.const 0
  i32.store8
  local.get $0
  i32.const 3
  i32.add
  i32.const 0
  i32.store8
  local.get $1
  i32.const 4
  i32.sub
  i32.const 0
  i32.store8
 )
 (func $~lib/memory/memory.copy (; 3 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $3
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
     loop $continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $4
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $4
       i32.load8_u
       i32.store8
       br $continue|0
      end
     end
     loop $continue|1
      local.get $3
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $continue|1
      end
     end
    end
    loop $continue|2
     local.get $3
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $4
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $continue|2
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
     loop $continue|3
      local.get $0
      local.get $3
      i32.add
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $0
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
     end
     loop $continue|4
      local.get $3
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $3
       i32.const 8
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
     end
    end
    loop $continue|5
     local.get $3
     if
      local.get $0
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $1
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#slice (; 4 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.const 16
  i32.sub
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
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $3
  local.get $0
  local.get $1
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $3
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 1
  i32.const 1073741808
  local.get $1
  i32.shr_u
  i32.gt_u
  if
   i32.const 24
   i32.const 72
   i32.const 14
   i32.const 56
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  local.get $1
  i32.shl
  local.tee $2
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/stub/__alloc
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
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/rt/__allocArray (; 6 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 16
  i32.const 3
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 8
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 8
  i32.store offset=8
  local.get $0
  i32.const 2
  i32.store offset=12
  local.get $1
  i32.const 184
  i32.const 8
  call $~lib/memory/memory.copy
  local.get $0
 )
 (func $~lib/dataview/DataView#constructor (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 1073741808
  i32.gt_u
  local.get $1
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.gt_u
  i32.or
  if
   i32.const 24
   i32.const 208
   i32.const 21
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 15
  call $~lib/rt/stub/__alloc
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  i32.load
  drop
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
 )
 (func $~lib/dataview/DataView#constructor|trampoline (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  block $2of2
   block $1of2
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $1of2 $1of2 $2of2 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.const 16
   i32.sub
   i32.load offset=12
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/dataview/DataView#constructor
 )
 (func $start:std/arraybuffer (; 9 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 240
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 8
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $0
  call $~lib/memory/memory.fill
  local.get $0
  global.set $std/arraybuffer/buffer
  global.get $std/arraybuffer/buffer
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 128
   i32.const 3
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const 0
  i32.const 1073741808
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 128
   i32.const 7
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/sliced
  global.get $std/arraybuffer/buffer
  i32.eq
  if
   i32.const 0
   i32.const 128
   i32.const 8
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const 1
  i32.const 1073741808
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 128
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const -1
  i32.const 1073741808
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 128
   i32.const 16
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const 1
  i32.const 3
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 128
   i32.const 20
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const 1
  i32.const -1
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 128
   i32.const 24
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const -3
  i32.const -1
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 128
   i32.const 28
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const -4
  i32.const 42
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 128
   i32.const 32
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/buffer
  i32.const 42
  i32.const 1073741808
  call $~lib/arraybuffer/ArrayBuffer#slice
  global.set $std/arraybuffer/sliced
  global.get $std/arraybuffer/sliced
  i32.const 16
  i32.sub
  i32.load offset=12
  if
   i32.const 0
   i32.const 128
   i32.const 36
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/arraybuffer/sliced
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 37
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 5
  call $~lib/rt/stub/__alloc
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  global.set $std/arraybuffer/arr8
  call $~lib/rt/__allocArray
  drop
  global.get $std/arraybuffer/arr8
  if (result i32)
   i32.const 1
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 47
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$~lib/arraybuffer/ArrayBuffer.isView<~lib/typedarray/Int32Array>2 (result i32)
   i32.const 1
   i32.const 12
   i32.const 9
   call $~lib/rt/stub/__alloc
   i32.const 2
   call $~lib/arraybuffer/ArrayBufferView#constructor
   br_if $__inlined_func$~lib/arraybuffer/ArrayBuffer.isView<~lib/typedarray/Int32Array>2
   drop
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 48
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  block $__inlined_func$~lib/arraybuffer/ArrayBuffer.isView<~lib/dataview/DataView>3 (result i32)
   i32.const 1
   global.get $std/arraybuffer/arr8
   i32.load
   call $~lib/dataview/DataView#constructor|trampoline
   br_if $__inlined_func$~lib/arraybuffer/ArrayBuffer.isView<~lib/dataview/DataView>3
   drop
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 49
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 10 ;) (type $FUNCSIG$v)
  call $start:std/arraybuffer
 )
 (func $null (; 11 ;) (type $FUNCSIG$v)
  nop
 )
)
