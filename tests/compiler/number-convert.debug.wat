(module
 (type $0 (func))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32776))
 (global $~lib/memory/__heap_base i32 (i32.const 32776))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:number-convert
  i32.const 1
  f32.convert_i32_u
  f32.const 1
  f32.eq
  drop
  i32.const 255
  f32.convert_i32_u
  f32.const 255
  f32.eq
  drop
  i32.const 256
  i32.const 255
  i32.and
  f32.convert_i32_u
  f32.const 0
  f32.eq
  drop
  i32.const 257
  i32.const 255
  i32.and
  f32.convert_i32_u
  f32.const 1
  f32.eq
  drop
  i32.const 1
  f32.convert_i32_s
  f32.const 1
  f32.eq
  drop
  i32.const 255
  i32.extend8_s
  f32.convert_i32_s
  f32.const -1
  f32.eq
  drop
  i32.const 256
  i32.extend8_s
  f32.convert_i32_s
  f32.const 0
  f32.eq
  drop
  i32.const 257
  i32.extend8_s
  f32.convert_i32_s
  f32.const 1
  f32.eq
  drop
  i32.const 1
  f32.convert_i32_u
  f32.const 1
  f32.eq
  drop
  i32.const 65535
  f32.convert_i32_u
  f32.const 65535
  f32.eq
  drop
  i32.const 65536
  i32.const 65535
  i32.and
  f32.convert_i32_u
  f32.const 0
  f32.eq
  drop
  i32.const 65537
  i32.const 65535
  i32.and
  f32.convert_i32_u
  f32.const 1
  f32.eq
  drop
  i32.const 1
  f32.convert_i32_s
  f32.const 1
  f32.eq
  drop
  i32.const 65535
  i32.extend16_s
  f32.convert_i32_s
  f32.const -1
  f32.eq
  drop
  i32.const 65536
  i32.extend16_s
  f32.convert_i32_s
  f32.const 0
  f32.eq
  drop
  i32.const 65537
  i32.extend16_s
  f32.convert_i32_s
  f32.const 1
  f32.eq
  drop
  i32.const 1
  f64.convert_i32_u
  f64.const 1
  f64.eq
  drop
  i32.const 255
  f64.convert_i32_u
  f64.const 255
  f64.eq
  drop
  i32.const 256
  i32.const 255
  i32.and
  f64.convert_i32_u
  f64.const 0
  f64.eq
  drop
  i32.const 257
  i32.const 255
  i32.and
  f64.convert_i32_u
  f64.const 1
  f64.eq
  drop
  i32.const 1
  f64.convert_i32_s
  f64.const 1
  f64.eq
  drop
  i32.const 255
  i32.extend8_s
  f64.convert_i32_s
  f64.const -1
  f64.eq
  drop
  i32.const 256
  i32.extend8_s
  f64.convert_i32_s
  f64.const 0
  f64.eq
  drop
  i32.const 257
  i32.extend8_s
  f64.convert_i32_s
  f64.const 1
  f64.eq
  drop
 )
 (func $~start
  call $start:number-convert
 )
)
