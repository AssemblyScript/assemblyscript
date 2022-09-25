(module
 (type $none_=>_none (func))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:literals-hexfloat
  (local $var$0 f64)
  f64.const 0
  f64.const 0
  f64.eq
  drop
  f64.const 0
  f64.const 0
  f64.eq
  drop
  f64.const 0
  f64.const 0
  f64.eq
  drop
  f64.const 0.5
  f64.const 0.5
  f64.eq
  drop
  f64.const 2
  f64.const 2
  f64.eq
  drop
  f64.const 256
  f64.const 256
  f64.eq
  drop
  f64.const 0.015625
  f64.const 0.015625
  f64.eq
  drop
  f64.const 0.857421875
  f64.const 0.857421875
  f64.eq
  drop
  f64.const 3.1415926
  f64.const 3.1415926
  f64.eq
  drop
  f64.const 0.1
  f64.const 0.1
  f64.eq
  drop
  f64.const 6.283185307179586
  f64.const 6.283185307179586
  f64.eq
  drop
  f64.const 5e-324
  f64.const 5e-324
  f64.eq
  drop
  f64.const 2.2250738585072014e-308
  f64.const 2.2250738585072014e-308
  f64.eq
  drop
  f64.const 2.225073858507201e-308
  f64.const 2.225073858507201e-308
  f64.eq
  drop
  f64.const 1797693134862315708145274e284
  f64.const 1797693134862315708145274e284
  f64.eq
  drop
  f64.const 1267650600228229401496703e6
  f64.const 1267650600228229401496703e6
  f64.eq
  drop
  f64.const 0.1
  f64.const 0.1
  f64.eq
  drop
  f64.const 0.1
  f64.const 0.1
  f64.eq
  drop
  f64.const -0
  local.set $var$0
  local.get $var$0
  i64.reinterpret_f64
  i64.const 63
  i64.shr_u
  i64.const 0
  i64.ne
  i32.const 0
  i32.ne
  drop
  f64.const -0
  local.set $var$0
  local.get $var$0
  i64.reinterpret_f64
  i64.const 63
  i64.shr_u
  i64.const 0
  i64.ne
  i32.const 0
  i32.ne
  drop
  f64.const -1
  f64.const -1
  f64.eq
  drop
  f64.const -1.0625
  f64.const -1.0625
  f64.eq
  drop
  f64.const -0.0625
  f64.const -0.0625
  f64.eq
  drop
  f64.const -0.5
  f64.const -0.5
  f64.eq
  drop
  f64.const -2
  f64.const -2
  f64.eq
  drop
  f64.const -256
  f64.const -256
  f64.eq
  drop
  f64.const -0.015625
  f64.const -0.015625
  f64.eq
  drop
  f64.const -0.857421875
  f64.const -0.857421875
  f64.eq
  drop
  f64.const -3.1415926
  f64.const -3.1415926
  f64.eq
  drop
  f64.const -0.1
  f64.const -0.1
  f64.eq
  drop
  f64.const -6.283185307179586
  f64.const -6.283185307179586
  f64.eq
  drop
  f64.const -5e-324
  f64.const -5e-324
  f64.eq
  drop
  f64.const -2.2250738585072014e-308
  f64.const -2.2250738585072014e-308
  f64.eq
  drop
  f64.const -2.225073858507201e-308
  f64.const -2.225073858507201e-308
  f64.eq
  drop
  f64.const -1797693134862315708145274e284
  f64.const -1797693134862315708145274e284
  f64.eq
  drop
  f64.const -1267650600228229401496703e6
  f64.const -1267650600228229401496703e6
  f64.eq
  drop
  f64.const 5e-324
  f64.const 5e-324
  f64.eq
  drop
  f64.const -1.509761204943061e-11
  f64.const -1.509761204943061e-11
  f64.eq
  drop
 )
 (func $~start
  call $start:literals-hexfloat
 )
)
