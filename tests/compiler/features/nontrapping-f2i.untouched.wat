(module
 (type $none_=>_none (func))
 (memory $0 0)
 (table $0 1 funcref)
 (global $~lib/builtins/f32.MAX_VALUE f32 (f32.const 3402823466385288598117041e14))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~lib/builtins/i32.MIN_VALUE i32 (i32.const -2147483648))
 (global $~lib/builtins/f32.NaN f32 (f32.const nan:0x400000))
 (global $~lib/builtins/i64.MAX_VALUE i64 (i64.const 9223372036854775807))
 (global $~lib/builtins/i64.MIN_VALUE i64 (i64.const -9223372036854775808))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/builtins/u32.MIN_VALUE i32 (i32.const 0))
 (global $~lib/builtins/u64.MAX_VALUE i64 (i64.const -1))
 (global $~lib/builtins/u64.MIN_VALUE i64 (i64.const 0))
 (global $~lib/builtins/f64.MAX_VALUE f64 (f64.const 1797693134862315708145274e284))
 (global $~lib/builtins/f64.NaN f64 (f64.const nan:0x8000000000000))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (global $~started (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $start:features/nontrapping-f2i
  global.get $~lib/builtins/f32.MAX_VALUE
  i32.trunc_sat_f32_s
  global.get $~lib/builtins/i32.MAX_VALUE
  i32.eq
  drop
  global.get $~lib/builtins/f32.MAX_VALUE
  f32.neg
  i32.trunc_sat_f32_s
  global.get $~lib/builtins/i32.MIN_VALUE
  i32.eq
  drop
  global.get $~lib/builtins/f32.NaN
  i32.trunc_sat_f32_s
  i32.const 0
  i32.eq
  drop
  global.get $~lib/builtins/f32.MAX_VALUE
  i64.trunc_sat_f32_s
  global.get $~lib/builtins/i64.MAX_VALUE
  i64.eq
  drop
  global.get $~lib/builtins/f32.MAX_VALUE
  f32.neg
  i64.trunc_sat_f32_s
  global.get $~lib/builtins/i64.MIN_VALUE
  i64.eq
  drop
  global.get $~lib/builtins/f32.NaN
  i64.trunc_sat_f32_s
  i64.const 0
  i64.eq
  drop
  global.get $~lib/builtins/f32.MAX_VALUE
  i32.trunc_sat_f32_u
  global.get $~lib/builtins/u32.MAX_VALUE
  i32.eq
  drop
  global.get $~lib/builtins/f32.MAX_VALUE
  f32.neg
  i32.trunc_sat_f32_u
  global.get $~lib/builtins/u32.MIN_VALUE
  i32.eq
  drop
  global.get $~lib/builtins/f32.NaN
  i32.trunc_sat_f32_u
  i32.const 0
  i32.eq
  drop
  global.get $~lib/builtins/f32.MAX_VALUE
  i64.trunc_sat_f32_u
  global.get $~lib/builtins/u64.MAX_VALUE
  i64.eq
  drop
  global.get $~lib/builtins/f32.MAX_VALUE
  f32.neg
  i64.trunc_sat_f32_u
  global.get $~lib/builtins/u64.MIN_VALUE
  i64.eq
  drop
  global.get $~lib/builtins/f32.NaN
  i64.trunc_sat_f32_u
  i64.const 0
  i64.eq
  drop
  global.get $~lib/builtins/f64.MAX_VALUE
  i32.trunc_sat_f64_s
  global.get $~lib/builtins/i32.MAX_VALUE
  i32.eq
  drop
  global.get $~lib/builtins/f64.MAX_VALUE
  f64.neg
  i32.trunc_sat_f64_s
  global.get $~lib/builtins/i32.MIN_VALUE
  i32.eq
  drop
  global.get $~lib/builtins/f64.NaN
  i32.trunc_sat_f64_s
  i32.const 0
  i32.eq
  drop
  global.get $~lib/builtins/f64.MAX_VALUE
  i64.trunc_sat_f64_s
  global.get $~lib/builtins/i64.MAX_VALUE
  i64.eq
  drop
  global.get $~lib/builtins/f64.MAX_VALUE
  f64.neg
  i64.trunc_sat_f64_s
  global.get $~lib/builtins/i64.MIN_VALUE
  i64.eq
  drop
  global.get $~lib/builtins/f64.NaN
  i64.trunc_sat_f64_s
  i64.const 0
  i64.eq
  drop
  global.get $~lib/builtins/f64.MAX_VALUE
  i32.trunc_sat_f64_u
  global.get $~lib/builtins/u32.MAX_VALUE
  i32.eq
  drop
  global.get $~lib/builtins/f64.MAX_VALUE
  f64.neg
  i32.trunc_sat_f64_u
  global.get $~lib/builtins/u32.MIN_VALUE
  i32.eq
  drop
  global.get $~lib/builtins/f64.NaN
  i32.trunc_sat_f64_u
  i32.const 0
  i32.eq
  drop
  global.get $~lib/builtins/f64.MAX_VALUE
  i64.trunc_sat_f64_u
  global.get $~lib/builtins/u64.MAX_VALUE
  i64.eq
  drop
  global.get $~lib/builtins/f64.MAX_VALUE
  f64.neg
  i64.trunc_sat_f64_u
  global.get $~lib/builtins/u64.MIN_VALUE
  i64.eq
  drop
  global.get $~lib/builtins/f64.NaN
  i64.trunc_sat_f64_u
  i64.const 0
  i64.eq
  drop
 )
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:features/nontrapping-f2i
 )
)
