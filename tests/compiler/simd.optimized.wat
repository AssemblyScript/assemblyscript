(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\07\00\00\00s\00i\00m\00d\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $simd/test_v128 (; 1 ;) (type $FUNCSIG$v)
  (local $0 v128)
  (local $1 v128)
  v128.const i32 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0
  local.tee $0
  v128.const i32 0x0 0x2 0x0 0x2 0x0 0x2 0x0 0x2 0x0 0x2 0x0 0x2 0x0 0x2 0x0 0x2
  local.tee $1
  local.get $0
  local.get $1
  i8x16.gt_u
  v128.bitselect
  drop
  v128.const i32 0xff 0x0 0xff 0x0 0xff 0x0 0xff 0x0 0xff 0x0 0xff 0x0 0xff 0x0 0xff 0x0
  local.tee $0
  v128.const i32 0x0 0xfe 0x0 0xfe 0x0 0xfe 0x0 0xfe 0x0 0xfe 0x0 0xfe 0x0 0xfe 0x0 0xfe
  local.tee $1
  local.get $0
  local.get $1
  i8x16.lt_s
  v128.bitselect
  drop
  i32.const 0
  i32.const 8
  i32.const 78
  i32.const 2
  call $~lib/env/abort
  unreachable
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  i32.const 32
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  call $simd/test_v128
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
  nop
 )
)
