(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00s\00t\00d\00/\00p\00o\00i\00n\00t\00e\00r\00.\00t\00s")
 (global $std/pointer/one (mut i32) (i32.const 0))
 (global $std/pointer/two (mut i32) (i32.const 0))
 (global $std/pointer/add (mut i32) (i32.const 0))
 (global $std/pointer/sub (mut i32) (i32.const 0))
 (global $std/pointer/nextOne (mut i32) (i32.const 0))
 (global $std/pointer/buf (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   i32.const 8
   local.set $4
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
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
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
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $0
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $start:std/pointer
  (local $0 i32)
  (local $1 i32)
  i32.const 8
  global.set $std/pointer/one
  i32.const 24
  global.set $std/pointer/two
  i32.const 8
  i32.const 1
  i32.store
  i32.const 12
  i32.const 2
  i32.store
  i32.const 8
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 83
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 84
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  global.get $std/pointer/two
  i32.add
  global.set $std/pointer/add
  global.get $std/pointer/add
  i32.const 32
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 87
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/two
  global.get $std/pointer/one
  i32.sub
  global.set $std/pointer/sub
  global.get $std/pointer/sub
  i32.const 16
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 90
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 92
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  i32.const 8
  i32.add
  global.set $std/pointer/one
  global.get $std/pointer/one
  global.set $std/pointer/nextOne
  global.get $std/pointer/nextOne
  global.get $std/pointer/one
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 94
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  i32.const 16
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 95
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/two
  i32.const 24
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 97
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/two
  i32.const 8
  i32.sub
  global.set $std/pointer/two
  global.get $std/pointer/two
  i32.const 8
  i32.sub
  global.set $std/pointer/two
  global.get $std/pointer/two
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 100
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/two
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 101
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/two
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 102
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  local.set $0
  global.get $std/pointer/two
  local.tee $1
  if
   local.get $0
   local.get $1
   call $~lib/memory/memory.copy
  else
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   i32.const 4
   i32.add
   i32.const 0
   i32.store8 offset=3
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $0
   i32.const 0
   i32.store8 offset=6
   local.get $0
   i32.const 0
   i32.store8 offset=5
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $0
   i32.const 0
   i32.store8 offset=4
  end
  global.get $std/pointer/one
  global.get $std/pointer/two
  i32.eq
  if
   i32.const 0
   i32.const 1056
   i32.const 105
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 106
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 107
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $std/pointer/buf
  i32.const 0
  f32.const 1.100000023841858
  f32.store
  i32.const 4
  f32.const 1.2000000476837158
  f32.store
  i32.const 0
  f32.load
  f32.const 1.100000023841858
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 113
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/buf
  f32.load offset=4
  f32.const 1.2000000476837158
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 114
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/buf
  f32.load
  f32.const 1.100000023841858
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 116
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/buf
  f32.load offset=4
  f32.const 1.2000000476837158
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 117
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  f32.load
  f32.const 1.100000023841858
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 119
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  f32.load
  f32.const 1.2000000476837158
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 120
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/buf
  f32.const 1.2999999523162842
  f32.store offset=8
  global.get $std/pointer/buf
  f32.load offset=8
  f32.const 1.2999999523162842
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 123
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/buf
  f32.load offset=8
  f32.const 1.2999999523162842
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 124
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  f32.load
  f32.const 1.2999999523162842
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 125
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/buf
  f32.const 1.399999976158142
  f32.store
  global.get $std/pointer/buf
  f32.load
  f32.const 1.399999976158142
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 128
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  f32.load
  f32.const 1.399999976158142
  f32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 129
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:std/pointer
 )
)
