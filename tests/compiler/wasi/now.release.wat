(module
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (type $none_=>_f64 (func (result f64)))
 (type $none_=>_none (func))
 (import "wasi_snapshot_preview1" "clock_time_get" (func $~lib/bindings/wasi_snapshot_preview1/clock_time_get (param i32 i64 i32) (result i32)))
 (memory $0 1)
 (export "test_date_now" (func $wasi/now/test_date_now))
 (export "test_performance_now" (func $wasi/now/test_performance_now))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $wasi/now/test_date_now (result i64)
  i32.const 0
  i64.const 1000000
  i32.const 1024
  call $~lib/bindings/wasi_snapshot_preview1/clock_time_get
  i32.const 65535
  i32.and
  if
   unreachable
  end
  i32.const 1024
  i64.load
  i64.const 1000000
  i64.div_u
 )
 (func $wasi/now/test_performance_now (result f64)
  i32.const 1
  i64.const 1000
  i32.const 1024
  call $~lib/bindings/wasi_snapshot_preview1/clock_time_get
  i32.const 65535
  i32.and
  if
   i32.const 1
   i64.const 1000000
   i32.const 1024
   call $~lib/bindings/wasi_snapshot_preview1/clock_time_get
   i32.const 65535
   i32.and
   if
    unreachable
   end
  end
  i32.const 1024
  i64.load
  f64.convert_i64_u
  f64.const 1e6
  f64.div
 )
 (func $~start
  nop
 )
)
