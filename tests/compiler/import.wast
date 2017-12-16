(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $export/add (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (i32.add
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $export/sub (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (i32.sub
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $export/ns.two (; 2 ;) (type $v)
 )
 (func $start (; 3 ;) (type $v)
  (drop
   (i32.add
    (call $export/add
     (i32.const 1)
     (i32.const 2)
    )
    (call $export/sub
     (i32.const 2)
     (i32.const 1)
    )
   )
  )
  (call $export/ns.two)
 )
)
(;
[program.elements]
  NaN
  Infinity
  isNaN
  isFinite
  clz
  ctz
  popcnt
  rotl
  rotr
  abs
  max
  min
  ceil
  floor
  copysign
  nearest
  reinterpret
  sqrt
  trunc
  load
  store
  sizeof
  select
  unreachable
  current_memory
  grow_memory
  parseInt
  parseFloat
  changetype
  assert
  i8
  i16
  i32
  i64
  u8
  u16
  u32
  u64
  bool
  f32
  f64
  isize
  usize
  HEAP_BASE
  export/add
  export/sub
  export/a
  export/b
  export/ns
  export/ns.one
  export/ns.two
  import/add
  import/sub
  import/a
  import/b
  import/renamed_ns
[program.exports]
  export/add
  export/renamed_sub
  export/a
  export/renamed_b
  export/ns
;)
