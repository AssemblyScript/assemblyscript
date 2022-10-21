(module
 (type $i32_i32_=>_none (func_subtype (param i32 i32) func))
 (type $none_=>_none (func_subtype func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
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
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $std/pointer/Entry#set:key (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
 )
 (func $std/pointer/Entry#set:val (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $start:std/pointer (type $none_=>_none)
  (local $var$0 i32)
  (local $var$1 i32)
  (local $var$2 i32)
  (local $var$3 f32)
  i32.const 0
  local.set $var$1
  i32.const 8
  local.set $var$0
  local.get $var$0
  global.set $std/pointer/one
  i32.const 0
  local.set $var$1
  i32.const 24
  local.set $var$0
  local.get $var$0
  global.set $std/pointer/two
  global.get $std/pointer/one
  local.set $var$0
  local.get $var$0
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
  local.set $var$1
  local.get $var$1
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
   local.set $var$0
   i32.const 1
   drop
   local.get $var$0
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.0
  end
  i32.const 1
  call $std/pointer/Entry#set:key
  block $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.1 (result i32)
   global.get $std/pointer/one
   local.set $var$1
   i32.const 1
   drop
   local.get $var$1
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.1
  end
  i32.const 2
  call $std/pointer/Entry#set:val
  block $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.2 (result i32)
   global.get $std/pointer/one
   local.set $var$0
   i32.const 1
   drop
   local.get $var$0
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.2
  end
  i32.load $0
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
   local.set $var$1
   i32.const 1
   drop
   local.get $var$1
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.3
  end
  i32.load $0 offset=4
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
  local.set $var$1
  global.get $std/pointer/two
  local.set $var$0
  local.get $var$1
  local.get $var$0
  i32.add
  global.set $std/pointer/add
  global.get $std/pointer/add
  local.set $var$0
  local.get $var$0
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
  local.set $var$0
  global.get $std/pointer/one
  local.set $var$1
  local.get $var$0
  local.get $var$1
  i32.sub
  global.set $std/pointer/sub
  global.get $std/pointer/sub
  local.set $var$1
  local.get $var$1
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
  local.set $var$0
  local.get $var$0
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
  local.set $var$1
  local.get $var$1
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
  local.set $var$0
  local.get $var$0
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
  local.set $var$1
  local.get $var$1
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
  local.set $var$0
  local.get $var$0
  i32.const 8
  i32.sub
  global.set $std/pointer/two
  global.get $std/pointer/two
  local.set $var$1
  local.get $var$1
  i32.const 8
  i32.sub
  global.set $std/pointer/two
  global.get $std/pointer/two
  local.set $var$0
  local.get $var$0
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
   local.set $var$1
   i32.const 1
   drop
   local.get $var$1
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.4
  end
  i32.load $0
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
   local.set $var$0
   i32.const 1
   drop
   local.get $var$0
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.5
  end
  i32.load $0 offset=4
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
  local.set $var$2
  block $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.6 (result i32)
   global.get $std/pointer/two
   local.set $var$1
   i32.const 1
   drop
   local.get $var$1
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.6
  end
  local.set $var$0
  i32.const 1
  drop
  i32.const 0
  drop
  local.get $var$0
  i32.const 0
  i32.eq
  if
   local.get $var$2
   i32.const 0
   i32.const 8
   memory.fill $0
  else
   local.get $var$2
   local.get $var$0
   i32.const 8
   memory.copy $0 $0
  end
  global.get $std/pointer/one
  local.set $var$1
  local.get $var$1
  global.get $std/pointer/two
  local.set $var$0
  local.get $var$0
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
   local.set $var$2
   i32.const 1
   drop
   local.get $var$2
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.7
  end
  i32.load $0
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
   local.set $var$1
   i32.const 1
   drop
   local.get $var$1
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.8
  end
  i32.load $0 offset=4
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
  local.set $var$2
  i32.const 0
  local.set $var$0
  local.get $var$0
  global.set $std/pointer/buf
  global.get $std/pointer/buf
  local.set $var$0
  i32.const 0
  local.set $var$1
  f32.const 1.100000023841858
  local.set $var$3
  local.get $var$0
  local.get $var$1
  i32.const 4
  i32.mul
  i32.add
  local.get $var$3
  f32.store $0
  global.get $std/pointer/buf
  local.set $var$1
  i32.const 1
  local.set $var$2
  f32.const 1.2000000476837158
  local.set $var$3
  local.get $var$1
  local.get $var$2
  i32.const 4
  i32.mul
  i32.add
  local.get $var$3
  f32.store $0
  global.get $std/pointer/buf
  local.set $var$2
  i32.const 0
  local.set $var$0
  local.get $var$2
  local.get $var$0
  i32.const 4
  i32.mul
  i32.add
  f32.load $0
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
  local.set $var$0
  i32.const 1
  local.set $var$1
  local.get $var$0
  local.get $var$1
  i32.const 4
  i32.mul
  i32.add
  f32.load $0
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
  local.set $var$1
  i32.const 0
  local.set $var$2
  local.get $var$1
  local.get $var$2
  i32.const 4
  i32.mul
  i32.add
  f32.load $0
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
  local.set $var$2
  i32.const 1
  local.set $var$0
  local.get $var$2
  local.get $var$0
  i32.const 4
  i32.mul
  i32.add
  f32.load $0
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
  f32.load $0
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
  f32.load $0
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
  local.set $var$0
  i32.const 2
  local.set $var$1
  f32.const 1.2999999523162842
  local.set $var$3
  local.get $var$0
  local.get $var$1
  i32.const 4
  i32.mul
  i32.add
  local.get $var$3
  f32.store $0
  global.get $std/pointer/buf
  local.set $var$1
  i32.const 2
  local.set $var$2
  local.get $var$1
  local.get $var$2
  i32.const 4
  i32.mul
  i32.add
  f32.load $0
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
  local.set $var$2
  i32.const 2
  local.set $var$0
  local.get $var$2
  local.get $var$0
  i32.const 4
  i32.mul
  i32.add
  f32.load $0
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
  f32.load $0
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
  local.set $var$1
  f32.const 1.399999976158142
  local.set $var$3
  i32.const 0
  drop
  local.get $var$1
  local.get $var$3
  f32.store $0
  block $std/pointer/Pointer<f32>#get:value|inlined.0 (result f32)
   global.get $std/pointer/buf
   local.set $var$0
   i32.const 0
   drop
   local.get $var$0
   f32.load $0
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
  f32.load $0
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
 (func $~start (type $none_=>_none)
  call $start:std/pointer
 )
)
