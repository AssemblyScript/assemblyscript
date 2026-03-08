(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func))
 (type $2 (func (param i32 i32 i32 i32)))
 (type $3 (func (param i64) (result i64)))
 (import "env" "abort" (func $~lib/builtins/__abort_impl (param i32 i32 i32 i32)))
 (global $std/endian/BASE i32 (i32.const 8192))
 (global $~lib/native/ASC_FEATURE_EXCEPTION_HANDLING i32 (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32828))
 (global $~lib/memory/__heap_base i32 (i32.const 32828))
 (memory $0 1)
 (data $0 (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00s\00t\00d\00/\00e\00n\00d\00i\00a\00n\00.\00t\00s\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/polyfills/bswap<u16> (param $value i32) (result i32)
  i32.const 1
  drop
  i32.const 2
  i32.const 1
  i32.eq
  drop
  i32.const 2
  i32.const 2
  i32.eq
  drop
  local.get $value
  i32.const 8
  i32.const 15
  i32.and
  i32.shl
  local.get $value
  i32.const 65535
  i32.and
  i32.const 8
  i32.const 15
  i32.and
  i32.shr_u
  i32.or
  return
 )
 (func $~lib/polyfills/bswap<u32> (param $value i32) (result i32)
  i32.const 1
  drop
  i32.const 4
  i32.const 1
  i32.eq
  drop
  i32.const 4
  i32.const 2
  i32.eq
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  local.get $value
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $value
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  return
 )
 (func $~lib/polyfills/bswap<u64> (param $value i64) (result i64)
  (local $a i64)
  (local $b i64)
  (local $v i64)
  i32.const 1
  drop
  i32.const 8
  i32.const 1
  i32.eq
  drop
  i32.const 8
  i32.const 2
  i32.eq
  drop
  i32.const 8
  i32.const 4
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  local.get $value
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.set $a
  local.get $value
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  local.set $b
  local.get $a
  local.get $b
  i64.or
  local.set $v
  local.get $v
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.set $a
  local.get $v
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  local.set $b
  local.get $a
  local.get $b
  i64.or
  i64.const 32
  i64.rotr
  return
 )
 (func $~lib/polyfills/bswap<i32> (param $value i32) (result i32)
  i32.const 1
  drop
  i32.const 4
  i32.const 1
  i32.eq
  drop
  i32.const 4
  i32.const 2
  i32.eq
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  local.get $value
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $value
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  return
 )
 (func $~lib/polyfills/bswap<i16> (param $value i32) (result i32)
  i32.const 1
  drop
  i32.const 2
  i32.const 1
  i32.eq
  drop
  i32.const 2
  i32.const 2
  i32.eq
  drop
  local.get $value
  i32.const 8
  i32.const 15
  i32.and
  i32.shl
  local.get $value
  i32.const 65535
  i32.and
  i32.const 8
  i32.const 15
  i32.and
  i32.shr_u
  i32.or
  return
 )
 (func $start:std/endian
  (local $value i32)
  (local $value|1 i32)
  (local $value|2 i64)
  (local $value|3 i32)
  (local $value|4 i32)
  (local $value|5 i64)
  (local $value|6 i32)
  (local $value|7 i64)
  (local $ptr i32)
  (local $offset i32)
  (local $ptr|10 i32)
  (local $offset|11 i32)
  (local $ptr|12 i32)
  (local $value|13 i32)
  (local $offset|14 i32)
  (local $ptr|15 i32)
  (local $value|16 i32)
  (local $offset|17 i32)
  (local $ptr|18 i32)
  (local $value|19 i32)
  (local $offset|20 i32)
  (local $ptr|21 i32)
  (local $offset|22 i32)
  (local $ptr|23 i32)
  (local $value|24 i64)
  (local $offset|25 i32)
  (local $ptr|26 i32)
  (local $offset|27 i32)
  (local $value|28 i32)
  (local $value|29 i32)
  (local $ptr|30 i32)
  (local $value|31 i32)
  (local $offset|32 i32)
  (local $ptr|33 i32)
  (local $offset|34 i32)
  block $~lib/endian/Endian.toBE<u16>|inlined.0 (result i32)
   i32.const 258
   local.set $value
   local.get $value
   call $~lib/polyfills/bswap<u16>
   br $~lib/endian/Endian.toBE<u16>|inlined.0
  end
  i32.const 65535
  i32.and
  i32.const 513
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 7
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/endian/Endian.toBE<u32>|inlined.0 (result i32)
   i32.const 16909060
   local.set $value|1
   local.get $value|1
   call $~lib/polyfills/bswap<u32>
   br $~lib/endian/Endian.toBE<u32>|inlined.0
  end
  i32.const 67305985
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 8
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/endian/Endian.toBE<u64>|inlined.0 (result i64)
   i64.const 72623859790382856
   local.set $value|2
   local.get $value|2
   call $~lib/polyfills/bswap<u64>
   br $~lib/endian/Endian.toBE<u64>|inlined.0
  end
  i64.const 578437695752307201
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 9
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/endian/Endian.fromBE<u16>|inlined.0 (result i32)
   i32.const 513
   local.set $value|3
   local.get $value|3
   call $~lib/polyfills/bswap<u16>
   br $~lib/endian/Endian.fromBE<u16>|inlined.0
  end
  i32.const 65535
  i32.and
  i32.const 258
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 10
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/endian/Endian.fromBE<u32>|inlined.0 (result i32)
   i32.const 67305985
   local.set $value|4
   local.get $value|4
   call $~lib/polyfills/bswap<u32>
   br $~lib/endian/Endian.fromBE<u32>|inlined.0
  end
  i32.const 16909060
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 11
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/endian/Endian.fromBE<u64>|inlined.0 (result i64)
   i64.const 578437695752307201
   local.set $value|5
   local.get $value|5
   call $~lib/polyfills/bswap<u64>
   br $~lib/endian/Endian.fromBE<u64>|inlined.0
  end
  i64.const 72623859790382856
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 12
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/endian/Endian.toLE<u32>|inlined.0 (result i32)
   i32.const -559038737
   local.set $value|6
   local.get $value|6
   br $~lib/endian/Endian.toLE<u32>|inlined.0
  end
  i32.const -559038737
  i32.eq
  drop
  block $~lib/endian/Endian.fromLE<u64>|inlined.0 (result i64)
   i64.const 1311768467294899695
   local.set $value|7
   local.get $value|7
   br $~lib/endian/Endian.fromLE<u64>|inlined.0
  end
  i64.const 1311768467294899695
  i64.eq
  drop
  global.get $std/endian/BASE
  i32.const 16909060
  i32.store
  block $~lib/endian/Endian.loadBE<u32>|inlined.0 (result i32)
   global.get $std/endian/BASE
   local.set $ptr
   i32.const 0
   local.set $offset
   local.get $ptr
   local.get $offset
   i32.add
   i32.load
   call $~lib/polyfills/bswap<u32>
   br $~lib/endian/Endian.loadBE<u32>|inlined.0
  end
  i32.const 67305985
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 20
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/endian/Endian.loadLE<u32>|inlined.0 (result i32)
   global.get $std/endian/BASE
   local.set $ptr|10
   i32.const 0
   local.set $offset|11
   local.get $ptr|10
   local.get $offset|11
   i32.add
   i32.load
   br $~lib/endian/Endian.loadLE<u32>|inlined.0
  end
  i32.const 16909060
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/endian/BASE
  i32.const 8
  i32.add
  local.set $ptr|12
  i32.const 16909060
  local.set $value|13
  i32.const 0
  local.set $offset|14
  local.get $ptr|12
  local.get $offset|14
  i32.add
  local.get $value|13
  call $~lib/polyfills/bswap<u32>
  i32.store
  global.get $std/endian/BASE
  i32.const 8
  i32.add
  i32.load
  i32.const 67305985
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 24
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/endian/BASE
  i32.const 16
  i32.add
  local.set $ptr|15
  i32.const -1430532899
  local.set $value|16
  i32.const 0
  local.set $offset|17
  local.get $ptr|15
  local.get $offset|17
  i32.add
  local.get $value|16
  i32.store
  global.get $std/endian/BASE
  i32.const 16
  i32.add
  i32.load
  i32.const -1430532899
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 27
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/endian/BASE
  i32.const 32
  i32.add
  local.set $ptr|18
  i32.const 258
  local.set $value|19
  i32.const 0
  local.set $offset|20
  local.get $ptr|18
  local.get $offset|20
  i32.add
  local.get $value|19
  call $~lib/polyfills/bswap<u16>
  i32.store16
  global.get $std/endian/BASE
  i32.const 32
  i32.add
  i32.load16_u
  i32.const 513
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 31
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/endian/Endian.loadBE<u16>|inlined.0 (result i32)
   global.get $std/endian/BASE
   i32.const 32
   i32.add
   local.set $ptr|21
   i32.const 0
   local.set $offset|22
   local.get $ptr|21
   local.get $offset|22
   i32.add
   i32.load16_u
   call $~lib/polyfills/bswap<u16>
   br $~lib/endian/Endian.loadBE<u16>|inlined.0
  end
  i32.const 65535
  i32.and
  i32.const 258
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 32
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/endian/BASE
  i32.const 48
  i32.add
  local.set $ptr|23
  i64.const 72623859790382856
  local.set $value|24
  i32.const 0
  local.set $offset|25
  local.get $ptr|23
  local.get $offset|25
  i32.add
  local.get $value|24
  call $~lib/polyfills/bswap<u64>
  i64.store
  block $~lib/endian/Endian.loadBE<u64>|inlined.0 (result i64)
   global.get $std/endian/BASE
   i32.const 48
   i32.add
   local.set $ptr|26
   i32.const 0
   local.set $offset|27
   local.get $ptr|26
   local.get $offset|27
   i32.add
   i64.load
   call $~lib/polyfills/bswap<u64>
   br $~lib/endian/Endian.loadBE<u64>|inlined.0
  end
  i64.const 72623859790382856
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 36
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/endian/BASE
  i32.const 48
  i32.add
  i64.load
  i64.const 578437695752307201
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 37
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/endian/Endian.toBE<i32>|inlined.0 (result i32)
   i32.const 16909060
   local.set $value|28
   local.get $value|28
   call $~lib/polyfills/bswap<i32>
   br $~lib/endian/Endian.toBE<i32>|inlined.0
  end
  i32.const 67305985
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 40
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/endian/Endian.toBE<i16>|inlined.0 (result i32)
   i32.const 258
   local.set $value|29
   local.get $value|29
   call $~lib/polyfills/bswap<i16>
   br $~lib/endian/Endian.toBE<i16>|inlined.0
  end
  i32.extend16_s
  i32.const 513
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/endian/BASE
  i32.const 64
  i32.add
  local.set $ptr|30
  i32.const -559038737
  local.set $value|31
  i32.const 0
  local.set $offset|32
  local.get $ptr|30
  local.get $offset|32
  i32.add
  local.get $value|31
  call $~lib/polyfills/bswap<u32>
  i32.store
  block $~lib/endian/Endian.loadBE<u32>|inlined.1 (result i32)
   global.get $std/endian/BASE
   i32.const 60
   i32.add
   local.set $ptr|33
   i32.const 4
   local.set $offset|34
   local.get $ptr|33
   local.get $offset|34
   i32.add
   i32.load
   call $~lib/polyfills/bswap<u32>
   br $~lib/endian/Endian.loadBE<u32>|inlined.1
  end
  i32.const -559038737
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 45
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:std/endian
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 32848
   i32.const 32896
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/builtins/abort (param $message i32) (param $fileName i32) (param $lineNumber i32) (param $columnNumber i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  drop
  local.get $message
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $fileName
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $lineNumber
  local.get $columnNumber
  call $~lib/builtins/__abort_impl
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
