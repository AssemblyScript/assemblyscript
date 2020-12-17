(module
 (type $none_=>_i32 (func (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\00\00\00\00")
 (data (i32.const 28) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\12\00\00\00m\00e\00m\00o\00r\00y\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 80) "\00")
 (data (i32.const 96) "\00")
 (data (i32.const 104) "\00")
 (data (i32.const 108) "\00")
 (data (i32.const 110) "\00")
 (data (i32.const 111) "\00")
 (data (i32.const 112) "\00")
 (data (i32.const 128) "\00")
 (data (i32.const 144) "\00")
 (data (i32.const 152) "\00")
 (data (i32.const 156) "\00")
 (data (i32.const 158) "\00")
 (data (i32.const 159) "\00")
 (data (i32.const 160) "\00")
 (data (i32.const 161) "\01\02\03")
 (data (i32.const 164) "\00\00\c0?\00\00 @\00\00`@")
 (data (i32.const 176) "\00")
 (data (i32.const 192) "\01")
 (data (i32.const 200) "\01")
 (data (i32.const 204) "\01")
 (data (i32.const 206) "\01")
 (data (i32.const 207) "\01")
 (data (i32.const 208) "\01")
 (table $0 1 funcref)
 (global $memory/ptr (mut i32) (i32.const 80))
 (export "memory" (memory $0))
 (start $~start)
 (func $memory/test (result i32)
  (local $0 i32)
  i32.const 16
  i32.load
  local.set $0
  i32.const 16
  local.get $0
  i32.const 1
  i32.add
  i32.store
  local.get $0
 )
 (func $memory/testGeneric<v128> (result i32)
  i32.const 144
 )
 (func $memory/testGeneric<i64> (result i32)
  i32.const 152
 )
 (func $memory/testGeneric<i32> (result i32)
  i32.const 156
 )
 (func $memory/testGeneric<i16> (result i32)
  i32.const 158
 )
 (func $memory/testGeneric<i8> (result i32)
  i32.const 159
 )
 (func $start:memory
  call $memory/test
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 12
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $memory/test
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 13
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $memory/test
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 14
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 16
  i32.add
  i32.const 96
  global.set $memory/ptr
  global.get $memory/ptr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 19
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 8
  i32.add
  i32.const 104
  global.set $memory/ptr
  global.get $memory/ptr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 20
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 4
  i32.add
  i32.const 108
  global.set $memory/ptr
  global.get $memory/ptr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 2
  i32.add
  i32.const 110
  global.set $memory/ptr
  global.get $memory/ptr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 1
  i32.add
  i32.const 111
  global.set $memory/ptr
  global.get $memory/ptr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 23
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 1
  i32.add
  i32.const 112
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 24
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 128
  global.set $memory/ptr
  global.get $memory/ptr
  i32.const 16
  i32.add
  call $memory/testGeneric<v128>
  global.set $memory/ptr
  global.get $memory/ptr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 34
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 8
  i32.add
  call $memory/testGeneric<i64>
  global.set $memory/ptr
  global.get $memory/ptr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 35
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 4
  i32.add
  call $memory/testGeneric<i32>
  global.set $memory/ptr
  global.get $memory/ptr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 36
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 2
  i32.add
  call $memory/testGeneric<i16>
  global.set $memory/ptr
  global.get $memory/ptr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 37
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 1
  i32.add
  call $memory/testGeneric<i8>
  global.set $memory/ptr
  global.get $memory/ptr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 38
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 1
  i32.add
  i32.const 160
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 39
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 161
  global.set $memory/ptr
  global.get $memory/ptr
  i32.load8_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 44
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.load8_u offset=1
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 45
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.load8_u offset=2
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 46
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 164
  global.set $memory/ptr
  global.get $memory/ptr
  f32.load
  f32.const 1.5
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 49
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  f32.load offset=4
  f32.const 2.5
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 50
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  f32.load offset=8
  f32.const 3.5
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 51
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 176
  global.set $memory/ptr
  global.get $memory/ptr
  i32.const 16
  i32.add
  i32.const 192
  global.set $memory/ptr
  global.get $memory/ptr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 56
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 8
  i32.add
  i32.const 200
  global.set $memory/ptr
  global.get $memory/ptr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 57
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 4
  i32.add
  i32.const 204
  global.set $memory/ptr
  global.get $memory/ptr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 58
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 2
  i32.add
  i32.const 206
  global.set $memory/ptr
  global.get $memory/ptr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 59
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 1
  i32.add
  i32.const 207
  global.set $memory/ptr
  global.get $memory/ptr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 60
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memory/ptr
  i32.const 1
  i32.add
  i32.const 208
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 61
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:memory
 )
)
