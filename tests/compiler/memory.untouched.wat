(module
 (type $none_=>_i32 (func (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\00\00\00\00")
 (data (i32.const 32) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00m\00e\00m\00o\00r\00y\00.\00t\00s\00")
 (data (i32.const 80) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 96) "\00")
 (data (i32.const 104) "\00")
 (data (i32.const 108) "\00")
 (data (i32.const 110) "\00")
 (data (i32.const 111) "\00")
 (data (i32.const 112) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 128) "\00")
 (data (i32.const 136) "\00")
 (data (i32.const 140) "\00")
 (data (i32.const 142) "\00")
 (data (i32.const 143) "\00")
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
  i32.const 128
 )
 (func $memory/testGeneric<i64> (result i32)
  i32.const 136
 )
 (func $memory/testGeneric<i32> (result i32)
  i32.const 140
 )
 (func $memory/testGeneric<i16> (result i32)
  i32.const 142
 )
 (func $memory/testGeneric<i8> (result i32)
  i32.const 143
 )
 (func $start:memory
  call $memory/test
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 10
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
   i32.const 11
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
   i32.const 12
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
   i32.const 17
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
   i32.const 18
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
   i32.const 19
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
   i32.const 20
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
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 112
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
   i32.const 31
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
   i32.const 32
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
   i32.const 33
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
   i32.const 34
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
   i32.const 35
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:memory
 )
)
