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
  (local $offset i32)
  (local $this i32)
  (local $offset_0 i32)
  (local $this_0 i32)
  (local $this_1 i32)
  (local $this_2 i32)
  (local $this_3 i32)
  (local $this_4 i32)
  (local $this_5 i32)
  (local $this_6 i32)
  (local $other i32)
  (local $this_7 i32)
  (local $this_8 i32)
  (local $other_0 i32)
  (local $this_9 i32)
  (local $this_10 i32)
  (local $this_11 i32)
  (local $this_12 i32)
  (local $this_13 i32)
  (local $this_14 i32)
  (local $this_15 i32)
  (local $this_16 i32)
  (local $this_17 i32)
  (local $this_18 i32)
  (local $this_19 i32)
  (local $this_20 i32)
  (local $value i32)
  (local $this_21 i32)
  (local $this_22 i32)
  (local $this_23 i32)
  (local $this_24 i32)
  (local $this_25 i32)
  (local $offset_1 i32)
  (local $this_26 i32)
  (local $value_0 f32)
  (local $index i32)
  (local $this_27 i32)
  (local $value_1 f32)
  (local $index_0 i32)
  (local $this_28 i32)
  (local $index_1 i32)
  (local $this_29 i32)
  (local $index_2 i32)
  (local $this_30 i32)
  (local $index_3 i32)
  (local $this_31 i32)
  (local $index_4 i32)
  (local $this_32 i32)
  (local $value_2 f32)
  (local $index_5 i32)
  (local $this_33 i32)
  (local $index_6 i32)
  (local $this_34 i32)
  (local $index_7 i32)
  (local $this_35 i32)
  (local $value_3 f32)
  (local $this_36 i32)
  (local $this_37 i32)
  i32.const 0
  local.set $this
  i32.const 8
  local.set $offset
  local.get $offset
  global.set $std/pointer/one
  i32.const 0
  local.set $this_0
  i32.const 24
  local.set $offset_0
  local.get $offset_0
  global.set $std/pointer/two
  global.get $std/pointer/one
  local.set $this_1
  local.get $this_1
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
  local.set $this_2
  local.get $this_2
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
   local.set $this_3
   i32.const 1
   drop
   local.get $this_3
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.0
  end
  i32.const 1
  call $std/pointer/Entry#set:key
  block $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.1 (result i32)
   global.get $std/pointer/one
   local.set $this_4
   i32.const 1
   drop
   local.get $this_4
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.1
  end
  i32.const 2
  call $std/pointer/Entry#set:val
  block $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.2 (result i32)
   global.get $std/pointer/one
   local.set $this_5
   i32.const 1
   drop
   local.get $this_5
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
   local.set $this_6
   i32.const 1
   drop
   local.get $this_6
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
  local.set $this_7
  global.get $std/pointer/two
  local.set $other
  local.get $this_7
  local.get $other
  i32.add
  global.set $std/pointer/add
  global.get $std/pointer/add
  local.set $this_8
  local.get $this_8
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
  local.set $this_9
  global.get $std/pointer/one
  local.set $other_0
  local.get $this_9
  local.get $other_0
  i32.sub
  global.set $std/pointer/sub
  global.get $std/pointer/sub
  local.set $this_10
  local.get $this_10
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
  local.set $this_11
  local.get $this_11
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
  local.set $this_12
  local.get $this_12
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
  local.set $this_13
  local.get $this_13
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
  local.set $this_14
  local.get $this_14
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
  local.set $this_15
  local.get $this_15
  i32.const 8
  i32.sub
  global.set $std/pointer/two
  global.get $std/pointer/two
  local.set $this_16
  local.get $this_16
  i32.const 8
  i32.sub
  global.set $std/pointer/two
  global.get $std/pointer/two
  local.set $this_17
  local.get $this_17
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
   local.set $this_18
   i32.const 1
   drop
   local.get $this_18
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
   local.set $this_19
   i32.const 1
   drop
   local.get $this_19
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
  local.set $this_21
  block $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.6 (result i32)
   global.get $std/pointer/two
   local.set $this_20
   i32.const 1
   drop
   local.get $this_20
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.6
  end
  local.set $value
  i32.const 1
  drop
  i32.const 0
  drop
  local.get $value
  i32.const 0
  i32.eq
  if
   local.get $this_21
   i32.const 0
   i32.const 8
   memory.fill $0
  else
   local.get $this_21
   local.get $value
   i32.const 8
   memory.copy $0 $0
  end
  global.get $std/pointer/one
  local.set $this_22
  local.get $this_22
  global.get $std/pointer/two
  local.set $this_23
  local.get $this_23
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
   local.set $this_24
   i32.const 1
   drop
   local.get $this_24
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
   local.set $this_25
   i32.const 1
   drop
   local.get $this_25
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
  local.set $this_26
  i32.const 0
  local.set $offset_1
  local.get $offset_1
  global.set $std/pointer/buf
  global.get $std/pointer/buf
  local.set $this_27
  i32.const 0
  local.set $index
  f32.const 1.100000023841858
  local.set $value_0
  local.get $this_27
  local.get $index
  i32.const 4
  i32.mul
  i32.add
  local.get $value_0
  f32.store $0
  global.get $std/pointer/buf
  local.set $this_28
  i32.const 1
  local.set $index_0
  f32.const 1.2000000476837158
  local.set $value_1
  local.get $this_28
  local.get $index_0
  i32.const 4
  i32.mul
  i32.add
  local.get $value_1
  f32.store $0
  global.get $std/pointer/buf
  local.set $this_29
  i32.const 0
  local.set $index_1
  local.get $this_29
  local.get $index_1
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
  local.set $this_30
  i32.const 1
  local.set $index_2
  local.get $this_30
  local.get $index_2
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
  local.set $this_31
  i32.const 0
  local.set $index_3
  local.get $this_31
  local.get $index_3
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
  local.set $this_32
  i32.const 1
  local.set $index_4
  local.get $this_32
  local.get $index_4
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
  local.set $this_33
  i32.const 2
  local.set $index_5
  f32.const 1.2999999523162842
  local.set $value_2
  local.get $this_33
  local.get $index_5
  i32.const 4
  i32.mul
  i32.add
  local.get $value_2
  f32.store $0
  global.get $std/pointer/buf
  local.set $this_34
  i32.const 2
  local.set $index_6
  local.get $this_34
  local.get $index_6
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
  local.set $this_35
  i32.const 2
  local.set $index_7
  local.get $this_35
  local.get $index_7
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
  local.set $this_36
  f32.const 1.399999976158142
  local.set $value_3
  i32.const 0
  drop
  local.get $this_36
  local.get $value_3
  f32.store $0
  block $std/pointer/Pointer<f32>#get:value|inlined.0 (result f32)
   global.get $std/pointer/buf
   local.set $this_37
   i32.const 0
   drop
   local.get $this_37
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
