(module
 (type $none_=>_f64 (func (result f64)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (type $none_=>_none (func))
 (import "wasi_snapshot_preview1" "clock_time_get" (func $~lib/bindings/wasi_snapshot_preview1/clock_time_get (param i32 i64 i32) (result i32)))
 (global $~lib/bindings/wasi/tempbuf i32 (i32.const 16))
 (global $~lib/memory/__data_end i32 (i32.const 32))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16416))
 (global $~lib/memory/__heap_base i32 (i32.const 16416))
 (memory $0 1)
 (data (i32.const 16) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "test_date_now" (func $wasi/now/test_date_now))
 (export "test_performance_now" (func $wasi/now/test_performance_now))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $wasi/now/test_date_now (result i64)
  (local $0 i32)
  block $~lib/date/Date.now|inlined.0 (result i64)
   i32.const 1
   drop
   i32.const 0
   i64.const 1000000
   global.get $~lib/bindings/wasi/tempbuf
   call $~lib/bindings/wasi_snapshot_preview1/clock_time_get
   local.set $0
   local.get $0
   i32.const 65535
   i32.and
   if
    unreachable
   end
   global.get $~lib/bindings/wasi/tempbuf
   i64.load
   i64.const 1000000
   i64.div_u
   br $~lib/date/Date.now|inlined.0
  end
 )
 (func $~lib/performance/performance.now (result f64)
  (local $0 i32)
  i32.const 1
  drop
  i32.const 1
  i64.const 1000
  global.get $~lib/bindings/wasi/tempbuf
  call $~lib/bindings/wasi_snapshot_preview1/clock_time_get
  local.set $0
  local.get $0
  i32.const 65535
  i32.and
  if
   i32.const 1
   i64.const 1000000
   global.get $~lib/bindings/wasi/tempbuf
   call $~lib/bindings/wasi_snapshot_preview1/clock_time_get
   local.set $0
   local.get $0
   i32.const 65535
   i32.and
   if
    unreachable
   end
  end
  global.get $~lib/bindings/wasi/tempbuf
  i64.load
  f64.convert_i64_u
  f64.const 1e6
  f64.div
  return
 )
 (func $wasi/now/test_performance_now (result f64)
  call $~lib/performance/performance.now
 )
 (func $~start
  nop
 )
)
