(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i64_=>_i64 (func (param i64) (result i64)))
 (type $none_=>_none (func))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (memory $0 0)
 (table $0 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $cast/test<i8,i8> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<i8,u8> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<i8,i16> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.extend8_s
  local.set $1
  local.get $1
 )
 (func $cast/test<i8,u16> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.extend8_s
  local.set $1
  local.get $1
 )
 (func $cast/test<i8,i32> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.extend8_s
  local.set $1
  local.get $1
 )
 (func $cast/test<i8,u32> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.extend8_s
  local.set $1
  local.get $1
 )
 (func $cast/test<i8,i64> (param $0 i32) (result i64)
  (local $1 i64)
  local.get $0
  i32.extend8_s
  i64.extend_i32_s
  local.set $1
  local.get $1
 )
 (func $cast/test<i8,u64> (param $0 i32) (result i64)
  (local $1 i64)
  local.get $0
  i32.extend8_s
  i64.extend_i32_s
  local.set $1
  local.get $1
 )
 (func $cast/test<i8,bool> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<u8,i8> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<u8,u8> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<u8,i16> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 255
  i32.and
  local.set $1
  local.get $1
 )
 (func $cast/test<u8,u16> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 255
  i32.and
  local.set $1
  local.get $1
 )
 (func $cast/test<u8,i32> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 255
  i32.and
  local.set $1
  local.get $1
 )
 (func $cast/test<u8,u32> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 255
  i32.and
  local.set $1
  local.get $1
 )
 (func $cast/test<u8,i64> (param $0 i32) (result i64)
  (local $1 i64)
  local.get $0
  i32.const 255
  i32.and
  i64.extend_i32_u
  local.set $1
  local.get $1
 )
 (func $cast/test<u8,u64> (param $0 i32) (result i64)
  (local $1 i64)
  local.get $0
  i32.const 255
  i32.and
  i64.extend_i32_u
  local.set $1
  local.get $1
 )
 (func $cast/test<u8,bool> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<i16,i8> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<i16,u8> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<i16,i16> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<i16,u16> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<i16,i32> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.extend16_s
  local.set $1
  local.get $1
 )
 (func $cast/test<i16,u32> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.extend16_s
  local.set $1
  local.get $1
 )
 (func $cast/test<i16,i64> (param $0 i32) (result i64)
  (local $1 i64)
  local.get $0
  i32.extend16_s
  i64.extend_i32_s
  local.set $1
  local.get $1
 )
 (func $cast/test<i16,u64> (param $0 i32) (result i64)
  (local $1 i64)
  local.get $0
  i32.extend16_s
  i64.extend_i32_s
  local.set $1
  local.get $1
 )
 (func $cast/test<i16,bool> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<u16,i8> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<u16,u8> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<u16,i16> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<u16,u16> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<u16,i32> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 65535
  i32.and
  local.set $1
  local.get $1
 )
 (func $cast/test<u16,u32> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 65535
  i32.and
  local.set $1
  local.get $1
 )
 (func $cast/test<u16,i64> (param $0 i32) (result i64)
  (local $1 i64)
  local.get $0
  i32.const 65535
  i32.and
  i64.extend_i32_u
  local.set $1
  local.get $1
 )
 (func $cast/test<u16,u64> (param $0 i32) (result i64)
  (local $1 i64)
  local.get $0
  i32.const 65535
  i32.and
  i64.extend_i32_u
  local.set $1
  local.get $1
 )
 (func $cast/test<u16,bool> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<i32,i8> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<i32,u8> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<i32,i16> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<i32,u16> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<i32,i32> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<i32,u32> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<i32,i64> (param $0 i32) (result i64)
  (local $1 i64)
  local.get $0
  i64.extend_i32_s
  local.set $1
  local.get $1
 )
 (func $cast/test<i32,u64> (param $0 i32) (result i64)
  (local $1 i64)
  local.get $0
  i64.extend_i32_s
  local.set $1
  local.get $1
 )
 (func $cast/test<i32,bool> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<u32,i8> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<u32,u8> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<u32,i16> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<u32,u16> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<u32,i32> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<u32,u32> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<u32,i64> (param $0 i32) (result i64)
  (local $1 i64)
  local.get $0
  i64.extend_i32_u
  local.set $1
  local.get $1
 )
 (func $cast/test<u32,u64> (param $0 i32) (result i64)
  (local $1 i64)
  local.get $0
  i64.extend_i32_u
  local.set $1
  local.get $1
 )
 (func $cast/test<u32,bool> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<i64,i8> (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i32.wrap_i64
  local.set $1
  local.get $1
 )
 (func $cast/test<i64,u8> (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i32.wrap_i64
  local.set $1
  local.get $1
 )
 (func $cast/test<i64,i16> (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i32.wrap_i64
  local.set $1
  local.get $1
 )
 (func $cast/test<i64,u16> (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i32.wrap_i64
  local.set $1
  local.get $1
 )
 (func $cast/test<i64,i32> (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i32.wrap_i64
  local.set $1
  local.get $1
 )
 (func $cast/test<i64,u32> (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i32.wrap_i64
  local.set $1
  local.get $1
 )
 (func $cast/test<i64,i64> (param $0 i64) (result i64)
  (local $1 i64)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<i64,u64> (param $0 i64) (result i64)
  (local $1 i64)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<i64,bool> (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i64.const 0
  i64.ne
  local.set $1
  local.get $1
 )
 (func $cast/test<u64,i8> (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i32.wrap_i64
  local.set $1
  local.get $1
 )
 (func $cast/test<u64,u8> (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i32.wrap_i64
  local.set $1
  local.get $1
 )
 (func $cast/test<u64,i16> (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i32.wrap_i64
  local.set $1
  local.get $1
 )
 (func $cast/test<u64,u16> (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i32.wrap_i64
  local.set $1
  local.get $1
 )
 (func $cast/test<u64,i32> (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i32.wrap_i64
  local.set $1
  local.get $1
 )
 (func $cast/test<u64,u32> (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i32.wrap_i64
  local.set $1
  local.get $1
 )
 (func $cast/test<u64,i64> (param $0 i64) (result i64)
  (local $1 i64)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<u64,u64> (param $0 i64) (result i64)
  (local $1 i64)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $cast/test<u64,bool> (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i64.const 0
  i64.ne
  local.set $1
  local.get $1
 )
 (func $cast/test<bool,i8> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 0
  i32.ne
  local.set $1
  local.get $1
 )
 (func $cast/test<bool,u8> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 0
  i32.ne
  local.set $1
  local.get $1
 )
 (func $cast/test<bool,i16> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 0
  i32.ne
  local.set $1
  local.get $1
 )
 (func $cast/test<bool,u16> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 0
  i32.ne
  local.set $1
  local.get $1
 )
 (func $cast/test<bool,i32> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 0
  i32.ne
  local.set $1
  local.get $1
 )
 (func $cast/test<bool,u32> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 0
  i32.ne
  local.set $1
  local.get $1
 )
 (func $cast/test<bool,i64> (param $0 i32) (result i64)
  (local $1 i64)
  local.get $0
  i32.const 0
  i32.ne
  i64.extend_i32_u
  local.set $1
  local.get $1
 )
 (func $cast/test<bool,u64> (param $0 i32) (result i64)
  (local $1 i64)
  local.get $0
  i32.const 0
  i32.ne
  i64.extend_i32_u
  local.set $1
  local.get $1
 )
 (func $cast/test<bool,bool> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $start:cast
  i32.const 0
  call $cast/test<i8,i8>
  drop
  i32.const 0
  call $cast/test<i8,u8>
  drop
  i32.const 0
  call $cast/test<i8,i16>
  drop
  i32.const 0
  call $cast/test<i8,u16>
  drop
  i32.const 0
  call $cast/test<i8,i32>
  drop
  i32.const 0
  call $cast/test<i8,u32>
  drop
  i32.const 0
  call $cast/test<i8,i64>
  drop
  i32.const 0
  call $cast/test<i8,u64>
  drop
  i32.const 0
  call $cast/test<i8,bool>
  drop
  i32.const 0
  call $cast/test<u8,i8>
  drop
  i32.const 0
  call $cast/test<u8,u8>
  drop
  i32.const 0
  call $cast/test<u8,i16>
  drop
  i32.const 0
  call $cast/test<u8,u16>
  drop
  i32.const 0
  call $cast/test<u8,i32>
  drop
  i32.const 0
  call $cast/test<u8,u32>
  drop
  i32.const 0
  call $cast/test<u8,i64>
  drop
  i32.const 0
  call $cast/test<u8,u64>
  drop
  i32.const 0
  call $cast/test<u8,bool>
  drop
  i32.const 0
  call $cast/test<i16,i8>
  drop
  i32.const 0
  call $cast/test<i16,u8>
  drop
  i32.const 0
  call $cast/test<i16,i16>
  drop
  i32.const 0
  call $cast/test<i16,u16>
  drop
  i32.const 0
  call $cast/test<i16,i32>
  drop
  i32.const 0
  call $cast/test<i16,u32>
  drop
  i32.const 0
  call $cast/test<i16,i64>
  drop
  i32.const 0
  call $cast/test<i16,u64>
  drop
  i32.const 0
  call $cast/test<i16,bool>
  drop
  i32.const 0
  call $cast/test<u16,i8>
  drop
  i32.const 0
  call $cast/test<u16,u8>
  drop
  i32.const 0
  call $cast/test<u16,i16>
  drop
  i32.const 0
  call $cast/test<u16,u16>
  drop
  i32.const 0
  call $cast/test<u16,i32>
  drop
  i32.const 0
  call $cast/test<u16,u32>
  drop
  i32.const 0
  call $cast/test<u16,i64>
  drop
  i32.const 0
  call $cast/test<u16,u64>
  drop
  i32.const 0
  call $cast/test<u16,bool>
  drop
  i32.const 0
  call $cast/test<i32,i8>
  drop
  i32.const 0
  call $cast/test<i32,u8>
  drop
  i32.const 0
  call $cast/test<i32,i16>
  drop
  i32.const 0
  call $cast/test<i32,u16>
  drop
  i32.const 0
  call $cast/test<i32,i32>
  drop
  i32.const 0
  call $cast/test<i32,u32>
  drop
  i32.const 0
  call $cast/test<i32,i64>
  drop
  i32.const 0
  call $cast/test<i32,u64>
  drop
  i32.const 0
  call $cast/test<i32,bool>
  drop
  i32.const 0
  call $cast/test<u32,i8>
  drop
  i32.const 0
  call $cast/test<u32,u8>
  drop
  i32.const 0
  call $cast/test<u32,i16>
  drop
  i32.const 0
  call $cast/test<u32,u16>
  drop
  i32.const 0
  call $cast/test<u32,i32>
  drop
  i32.const 0
  call $cast/test<u32,u32>
  drop
  i32.const 0
  call $cast/test<u32,i64>
  drop
  i32.const 0
  call $cast/test<u32,u64>
  drop
  i32.const 0
  call $cast/test<u32,bool>
  drop
  i64.const 0
  call $cast/test<i64,i8>
  drop
  i64.const 0
  call $cast/test<i64,u8>
  drop
  i64.const 0
  call $cast/test<i64,i16>
  drop
  i64.const 0
  call $cast/test<i64,u16>
  drop
  i64.const 0
  call $cast/test<i64,i32>
  drop
  i64.const 0
  call $cast/test<i64,u32>
  drop
  i64.const 0
  call $cast/test<i64,i64>
  drop
  i64.const 0
  call $cast/test<i64,u64>
  drop
  i64.const 0
  call $cast/test<i64,bool>
  drop
  i64.const 0
  call $cast/test<u64,i8>
  drop
  i64.const 0
  call $cast/test<u64,u8>
  drop
  i64.const 0
  call $cast/test<u64,i16>
  drop
  i64.const 0
  call $cast/test<u64,u16>
  drop
  i64.const 0
  call $cast/test<u64,i32>
  drop
  i64.const 0
  call $cast/test<u64,u32>
  drop
  i64.const 0
  call $cast/test<u64,i64>
  drop
  i64.const 0
  call $cast/test<u64,u64>
  drop
  i64.const 0
  call $cast/test<u64,bool>
  drop
  i32.const 0
  call $cast/test<bool,i8>
  drop
  i32.const 0
  call $cast/test<bool,u8>
  drop
  i32.const 0
  call $cast/test<bool,i16>
  drop
  i32.const 0
  call $cast/test<bool,u16>
  drop
  i32.const 0
  call $cast/test<bool,i32>
  drop
  i32.const 0
  call $cast/test<bool,u32>
  drop
  i32.const 0
  call $cast/test<bool,i64>
  drop
  i32.const 0
  call $cast/test<bool,u64>
  drop
  i32.const 0
  call $cast/test<bool,bool>
  drop
 )
 (func $~start
  call $start:cast
 )
)
