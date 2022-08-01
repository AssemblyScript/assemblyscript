(module
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
 (export "test" (func $wasi/date/test))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $wasi/date/test (result i64)
  block $~lib/date/Date.now|inlined.0 (result i64)
   i32.const 1
   drop
   i32.const 0
   i64.const 1000000
   global.get $~lib/bindings/wasi/tempbuf
   call $~lib/bindings/wasi_snapshot_preview1/clock_time_get
   drop
   global.get $~lib/bindings/wasi/tempbuf
   i64.load
   i64.const 1000000
   i64.div_u
   br $~lib/date/Date.now|inlined.0
  end
 )
 (func $~start
  nop
 )
)
