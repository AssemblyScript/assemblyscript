(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
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
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32828))
 (global $~lib/memory/__heap_base i32 (i32.const 32828))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00s\00t\00d\00/\00p\00o\00i\00n\00t\00e\00r\00.\00t\00s\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $std/pointer/Entry#set:key (param $this i32) (param $key i32)
  local.get $this
  local.get $key
  i32.store $0
 )
 (func $std/pointer/Entry#set:val (param $this i32) (param $val i32)
  local.get $this
  local.get $val
  i32.store $0 offset=4
 )
 (func $std/pointer/Entry#get:key (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $std/pointer/Entry#get:val (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $start:std/pointer
  (local $this i32)
  (local $offset i32)
  (local $this|2 i32)
  (local $offset|3 i32)
  (local $this|4 i32)
  (local $this|5 i32)
  (local $this|6 i32)
  (local $this|7 i32)
  (local $this|8 i32)
  (local $this|9 i32)
  (local $this|10 i32)
  (local $other i32)
  (local $this|12 i32)
  (local $this|13 i32)
  (local $other|14 i32)
  (local $this|15 i32)
  (local $this|16 i32)
  (local $this|17 i32)
  (local $this|18 i32)
  (local $this|19 i32)
  (local $this|20 i32)
  (local $this|21 i32)
  (local $this|22 i32)
  (local $this|23 i32)
  (local $this|24 i32)
  (local $this|25 i32)
  (local $this|26 i32)
  (local $value i32)
  (local $this|28 i32)
  (local $this|29 i32)
  (local $this|30 i32)
  (local $this|31 i32)
  (local $this|32 i32)
  (local $offset|33 i32)
  (local $this|34 i32)
  (local $index i32)
  (local $value|36 f32)
  (local $this|37 i32)
  (local $index|38 i32)
  (local $value|39 f32)
  (local $this|40 i32)
  (local $index|41 i32)
  (local $this|42 i32)
  (local $index|43 i32)
  (local $this|44 i32)
  (local $index|45 i32)
  (local $this|46 i32)
  (local $index|47 i32)
  (local $this|48 i32)
  (local $index|49 i32)
  (local $value|50 f32)
  (local $this|51 i32)
  (local $index|52 i32)
  (local $this|53 i32)
  (local $index|54 i32)
  (local $this|55 i32)
  (local $value|56 f32)
  (local $this|57 i32)
  block $std/pointer/Pointer<std/pointer/Entry>#constructor|inlined.0 (result i32)
   i32.const 0
   local.set $this
   i32.const 8
   local.set $offset
   local.get $offset
   br $std/pointer/Pointer<std/pointer/Entry>#constructor|inlined.0
  end
  global.set $std/pointer/one
  block $std/pointer/Pointer<std/pointer/Entry>#constructor|inlined.1 (result i32)
   i32.const 0
   local.set $this|2
   i32.const 24
   local.set $offset|3
   local.get $offset|3
   br $std/pointer/Pointer<std/pointer/Entry>#constructor|inlined.1
  end
  global.set $std/pointer/two
  block $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.0 (result i32)
   global.get $std/pointer/one
   local.set $this|4
   local.get $this|4
   br $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.0
  end
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
  block $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.1 (result i32)
   global.get $std/pointer/two
   local.set $this|5
   local.get $this|5
   br $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.1
  end
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
   local.set $this|6
   i32.const 1
   drop
   local.get $this|6
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.0
  end
  i32.const 1
  call $std/pointer/Entry#set:key
  block $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.1 (result i32)
   global.get $std/pointer/one
   local.set $this|7
   i32.const 1
   drop
   local.get $this|7
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.1
  end
  i32.const 2
  call $std/pointer/Entry#set:val
  block $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.2 (result i32)
   global.get $std/pointer/one
   local.set $this|8
   i32.const 1
   drop
   local.get $this|8
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.2
  end
  call $std/pointer/Entry#get:key
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
   local.set $this|9
   i32.const 1
   drop
   local.get $this|9
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.3
  end
  call $std/pointer/Entry#get:val
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
  block $std/pointer/Pointer<std/pointer/Entry>#add|inlined.0 (result i32)
   global.get $std/pointer/one
   local.set $this|10
   global.get $std/pointer/two
   local.set $other
   local.get $this|10
   local.get $other
   i32.add
   br $std/pointer/Pointer<std/pointer/Entry>#add|inlined.0
  end
  global.set $std/pointer/add
  block $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.2 (result i32)
   global.get $std/pointer/add
   local.set $this|12
   local.get $this|12
   br $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.2
  end
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
  block $std/pointer/Pointer<std/pointer/Entry>#sub|inlined.0 (result i32)
   global.get $std/pointer/two
   local.set $this|13
   global.get $std/pointer/one
   local.set $other|14
   local.get $this|13
   local.get $other|14
   i32.sub
   br $std/pointer/Pointer<std/pointer/Entry>#sub|inlined.0
  end
  global.set $std/pointer/sub
  block $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.3 (result i32)
   global.get $std/pointer/sub
   local.set $this|15
   local.get $this|15
   br $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.3
  end
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
  block $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.4 (result i32)
   global.get $std/pointer/one
   local.set $this|16
   local.get $this|16
   br $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.4
  end
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
  block $std/pointer/Pointer<std/pointer/Entry>#inc|inlined.0 (result i32)
   global.get $std/pointer/one
   local.set $this|17
   local.get $this|17
   i32.const 8
   i32.add
   br $std/pointer/Pointer<std/pointer/Entry>#inc|inlined.0
  end
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
  block $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.5 (result i32)
   global.get $std/pointer/one
   local.set $this|18
   local.get $this|18
   br $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.5
  end
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
  block $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.6 (result i32)
   global.get $std/pointer/two
   local.set $this|19
   local.get $this|19
   br $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.6
  end
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
  block $std/pointer/Pointer<std/pointer/Entry>#dec|inlined.0 (result i32)
   global.get $std/pointer/two
   local.set $this|20
   local.get $this|20
   i32.const 8
   i32.sub
   br $std/pointer/Pointer<std/pointer/Entry>#dec|inlined.0
  end
  global.set $std/pointer/two
  block $std/pointer/Pointer<std/pointer/Entry>#dec|inlined.1 (result i32)
   global.get $std/pointer/two
   local.set $this|21
   local.get $this|21
   i32.const 8
   i32.sub
   br $std/pointer/Pointer<std/pointer/Entry>#dec|inlined.1
  end
  global.set $std/pointer/two
  block $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.7 (result i32)
   global.get $std/pointer/two
   local.set $this|22
   local.get $this|22
   br $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.7
  end
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
   local.set $this|23
   i32.const 1
   drop
   local.get $this|23
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.4
  end
  call $std/pointer/Entry#get:key
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
   local.set $this|24
   i32.const 1
   drop
   local.get $this|24
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.5
  end
  call $std/pointer/Entry#get:val
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
  local.set $this|26
  block $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.6 (result i32)
   global.get $std/pointer/two
   local.set $this|25
   i32.const 1
   drop
   local.get $this|25
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
   local.get $this|26
   i32.const 0
   i32.const 8
   memory.fill $0
  else
   local.get $this|26
   local.get $value
   i32.const 8
   memory.copy $0 $0
  end
  block $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.8 (result i32)
   global.get $std/pointer/one
   local.set $this|28
   local.get $this|28
   br $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.8
  end
  block $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.9 (result i32)
   global.get $std/pointer/two
   local.set $this|29
   local.get $this|29
   br $std/pointer/Pointer<std/pointer/Entry>#get:offset|inlined.9
  end
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
   local.set $this|30
   i32.const 1
   drop
   local.get $this|30
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.7
  end
  call $std/pointer/Entry#get:key
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
   local.set $this|31
   i32.const 1
   drop
   local.get $this|31
   br $std/pointer/Pointer<std/pointer/Entry>#get:value|inlined.8
  end
  call $std/pointer/Entry#get:val
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
  block $std/pointer/Pointer<f32>#constructor|inlined.0 (result i32)
   i32.const 0
   local.set $this|32
   i32.const 0
   local.set $offset|33
   local.get $offset|33
   br $std/pointer/Pointer<f32>#constructor|inlined.0
  end
  global.set $std/pointer/buf
  global.get $std/pointer/buf
  local.set $this|34
  i32.const 0
  local.set $index
  f32.const 1.100000023841858
  local.set $value|36
  local.get $this|34
  local.get $index
  i32.const 4
  i32.mul
  i32.add
  local.get $value|36
  f32.store $0
  global.get $std/pointer/buf
  local.set $this|37
  i32.const 1
  local.set $index|38
  f32.const 1.2000000476837158
  local.set $value|39
  local.get $this|37
  local.get $index|38
  i32.const 4
  i32.mul
  i32.add
  local.get $value|39
  f32.store $0
  block $std/pointer/Pointer<f32>#get|inlined.0 (result f32)
   global.get $std/pointer/buf
   local.set $this|40
   i32.const 0
   local.set $index|41
   local.get $this|40
   local.get $index|41
   i32.const 4
   i32.mul
   i32.add
   f32.load $0
   br $std/pointer/Pointer<f32>#get|inlined.0
  end
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
  block $std/pointer/Pointer<f32>#get|inlined.1 (result f32)
   global.get $std/pointer/buf
   local.set $this|42
   i32.const 1
   local.set $index|43
   local.get $this|42
   local.get $index|43
   i32.const 4
   i32.mul
   i32.add
   f32.load $0
   br $std/pointer/Pointer<f32>#get|inlined.1
  end
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
  block $std/pointer/Pointer<f32>#get|inlined.2 (result f32)
   global.get $std/pointer/buf
   local.set $this|44
   i32.const 0
   local.set $index|45
   local.get $this|44
   local.get $index|45
   i32.const 4
   i32.mul
   i32.add
   f32.load $0
   br $std/pointer/Pointer<f32>#get|inlined.2
  end
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
  block $std/pointer/Pointer<f32>#get|inlined.3 (result f32)
   global.get $std/pointer/buf
   local.set $this|46
   i32.const 1
   local.set $index|47
   local.get $this|46
   local.get $index|47
   i32.const 4
   i32.mul
   i32.add
   f32.load $0
   br $std/pointer/Pointer<f32>#get|inlined.3
  end
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
  local.set $this|48
  i32.const 2
  local.set $index|49
  f32.const 1.2999999523162842
  local.set $value|50
  local.get $this|48
  local.get $index|49
  i32.const 4
  i32.mul
  i32.add
  local.get $value|50
  f32.store $0
  block $std/pointer/Pointer<f32>#get|inlined.4 (result f32)
   global.get $std/pointer/buf
   local.set $this|51
   i32.const 2
   local.set $index|52
   local.get $this|51
   local.get $index|52
   i32.const 4
   i32.mul
   i32.add
   f32.load $0
   br $std/pointer/Pointer<f32>#get|inlined.4
  end
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
  block $std/pointer/Pointer<f32>#get|inlined.5 (result f32)
   global.get $std/pointer/buf
   local.set $this|53
   i32.const 2
   local.set $index|54
   local.get $this|53
   local.get $index|54
   i32.const 4
   i32.mul
   i32.add
   f32.load $0
   br $std/pointer/Pointer<f32>#get|inlined.5
  end
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
  local.set $this|55
  f32.const 1.399999976158142
  local.set $value|56
  i32.const 0
  drop
  local.get $this|55
  local.get $value|56
  f32.store $0
  block $std/pointer/Pointer<f32>#get:value|inlined.0 (result f32)
   global.get $std/pointer/buf
   local.set $this|57
   i32.const 0
   drop
   local.get $this|57
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
 (func $~start
  call $start:std/pointer
 )
)
