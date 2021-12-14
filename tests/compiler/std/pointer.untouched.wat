(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $std/pointer/one (mut i32) (i32.const 0))
 (global $std/pointer/two (mut i32) (i32.const 0))
 (global $std/pointer/add (mut i32) (i32.const 0))
 (global $std/pointer/sub (mut i32) (i32.const 0))
 (global $std/pointer/nextOne (mut i32) (i32.const 0))
 (global $std/pointer/buf (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16444))
 (global $~lib/memory/__heap_base i32 (i32.const 16444))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00s\00t\00d\00/\00p\00o\00i\00n\00t\00e\00r\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $std/pointer/Entry#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $std/pointer/Entry#set:val (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $start:std/pointer
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  i32.const 0
  local.set $1
  i32.const 8
  local.set $0
  local.get $0
  global.set $std/pointer/one
  i32.const 0
  local.set $1
  i32.const 24
  local.set $0
  local.get $0
  global.set $std/pointer/two
  global.get $std/pointer/one
  local.set $0
  local.get $0
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 78
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/two
  local.set $1
  local.get $1
  i32.const 24
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 79
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.0 (result i32)
   global.get $std/pointer/one
   local.set $0
   i32.const 1
   drop
   local.get $0
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.0
  end
  i32.const 1
  call $std/pointer/Entry#set:key
  block $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.1 (result i32)
   global.get $std/pointer/one
   local.set $1
   i32.const 1
   drop
   local.get $1
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.1
  end
  i32.const 2
  call $std/pointer/Entry#set:val
  block $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.2 (result i32)
   global.get $std/pointer/one
   local.set $0
   i32.const 1
   drop
   local.get $0
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.2
  end
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 83
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.3 (result i32)
   global.get $std/pointer/one
   local.set $1
   i32.const 1
   drop
   local.get $1
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.3
  end
  i32.load offset=4
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 84
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  local.set $1
  global.get $std/pointer/two
  local.set $0
  local.get $1
  local.get $0
  i32.add
  global.set $std/pointer/add
  global.get $std/pointer/add
  local.set $0
  local.get $0
  i32.const 32
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 87
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/two
  local.set $0
  global.get $std/pointer/one
  local.set $1
  local.get $0
  local.get $1
  i32.sub
  global.set $std/pointer/sub
  global.get $std/pointer/sub
  local.set $1
  local.get $1
  i32.const 16
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 90
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  local.set $0
  local.get $0
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 92
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  local.set $1
  local.get $1
  i32.const 8
  i32.add
  global.set $std/pointer/one
  global.get $std/pointer/one
  global.set $std/pointer/nextOne
  global.get $std/pointer/nextOne
  global.get $std/pointer/one
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 94
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  local.set $0
  local.get $0
  i32.const 16
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 95
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/two
  local.set $1
  local.get $1
  i32.const 24
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 97
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/two
  local.set $0
  local.get $0
  i32.const 8
  i32.sub
  global.set $std/pointer/two
  global.get $std/pointer/two
  local.set $1
  local.get $1
  i32.const 8
  i32.sub
  global.set $std/pointer/two
  global.get $std/pointer/two
  local.set $0
  local.get $0
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 100
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.4 (result i32)
   global.get $std/pointer/two
   local.set $1
   i32.const 1
   drop
   local.get $1
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.4
  end
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 101
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.5 (result i32)
   global.get $std/pointer/two
   local.set $0
   i32.const 1
   drop
   local.get $0
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.5
  end
  i32.load offset=4
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 102
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/one
  local.set $2
  block $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.6 (result i32)
   global.get $std/pointer/two
   local.set $1
   i32.const 1
   drop
   local.get $1
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.6
  end
  local.set $0
  i32.const 1
  drop
  i32.const 0
  drop
  local.get $0
  i32.const 0
  i32.eq
  if
   local.get $2
   i32.const 0
   i32.const 8
   memory.fill
  else
   local.get $2
   local.get $0
   i32.const 8
   memory.copy
  end
  global.get $std/pointer/one
  local.set $1
  local.get $1
  global.get $std/pointer/two
  local.set $0
  local.get $0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 105
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.7 (result i32)
   global.get $std/pointer/one
   local.set $2
   i32.const 1
   drop
   local.get $2
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.7
  end
  i32.load
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 106
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.8 (result i32)
   global.get $std/pointer/one
   local.set $1
   i32.const 1
   drop
   local.get $1
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.8
  end
  i32.load offset=4
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 107
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $2
  i32.const 0
  local.set $0
  local.get $0
  global.set $std/pointer/buf
  global.get $std/pointer/buf
  local.set $0
  i32.const 0
  local.set $1
  f32.const 1.100000023841858
  local.set $3
  local.get $0
  local.get $1
  i32.const 4
  i32.mul
  i32.add
  local.get $3
  f32.store
  global.get $std/pointer/buf
  local.set $1
  i32.const 1
  local.set $2
  f32.const 1.2000000476837158
  local.set $3
  local.get $1
  local.get $2
  i32.const 4
  i32.mul
  i32.add
  local.get $3
  f32.store
  global.get $std/pointer/buf
  local.set $2
  i32.const 0
  local.set $0
  local.get $2
  local.get $0
  i32.const 4
  i32.mul
  i32.add
  f32.load
  f32.const 1.100000023841858
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 113
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/buf
  local.set $0
  i32.const 1
  local.set $1
  local.get $0
  local.get $1
  i32.const 4
  i32.mul
  i32.add
  f32.load
  f32.const 1.2000000476837158
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 114
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/buf
  local.set $1
  i32.const 0
  local.set $2
  local.get $1
  local.get $2
  i32.const 4
  i32.mul
  i32.add
  f32.load
  f32.const 1.100000023841858
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 116
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/buf
  local.set $2
  i32.const 1
  local.set $0
  local.get $2
  local.get $0
  i32.const 4
  i32.mul
  i32.add
  f32.load
  f32.const 1.2000000476837158
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 117
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  f32.load
  f32.const 1.100000023841858
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 119
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  f32.load
  f32.const 1.2000000476837158
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 120
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/buf
  local.set $0
  i32.const 2
  local.set $1
  f32.const 1.2999999523162842
  local.set $3
  local.get $0
  local.get $1
  i32.const 4
  i32.mul
  i32.add
  local.get $3
  f32.store
  global.get $std/pointer/buf
  local.set $1
  i32.const 2
  local.set $2
  local.get $1
  local.get $2
  i32.const 4
  i32.mul
  i32.add
  f32.load
  f32.const 1.2999999523162842
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 123
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/buf
  local.set $2
  i32.const 2
  local.set $0
  local.get $2
  local.get $0
  i32.const 4
  i32.mul
  i32.add
  f32.load
  f32.const 1.2999999523162842
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 124
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  f32.load
  f32.const 1.2999999523162842
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 125
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/pointer/buf
  local.set $1
  f32.const 1.399999976158142
  local.set $3
  i32.const 0
  drop
  local.get $1
  local.get $3
  f32.store
  block $std/pointer/Pointer<f32>#get:value|inlined.0 (result f32)
   global.get $std/pointer/buf
   local.set $0
   i32.const 0
   drop
   local.get $0
   f32.load
   br $std/pointer/Pointer<f32>#get:value|inlined.0
  end
  f32.const 1.399999976158142
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 128
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  f32.load
  f32.const 1.399999976158142
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
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
