(module
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (type $none_=>_none (func))
 (import "wasi_snapshot_preview1" "clock_time_get" (func $~lib/bindings/wasi_snapshot_preview1/clock_time_get (param i32 i64 i32) (result i32)))
 (memory $0 1)
 (export "test" (func $wasi/date/test))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $wasi/date/test (result i64)
  i32.const 0
  i64.const 1000000
  i32.const 1024
  call $~lib/bindings/wasi_snapshot_preview1/clock_time_get
  drop
  i32.const 1024
  i64.load
  i64.const 1000000
  i64.div_u
 )
 (func $~start
  nop
 )
)
