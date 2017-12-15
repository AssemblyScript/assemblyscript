(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (global $HEAP_START i32 (i32.const 4))
 (memory $0 1)
 (export "add" (func $export/add))
 (export "renamed_sub" (func $export/sub))
 (export "renamed_a" (global $export/a))
 (export "rerenamed_b" (global $export/b))
 (export "renamed_add" (func $export/add))
 (export "rerenamed_sub" (func $export/sub))
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
     (i32.const 3)
     (i32.const 4)
    )
   )
  )
 )
)
(;
[program.elements]
  clz
  ctz
  popcnt
  rotl
  rotr
  abs
  ceil
  copysign
  floor
  max
  min
  nearest
  sqrt
  trunc
  current_memory
  grow_memory
  unreachable
  load
  store
  reinterpret
  select
  sizeof
  changetype
  isNaN
  isFinite
  assert
  parseInt
  parseFloat
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
  export/add
  export/sub
  export/a
  export/b
  export/ns
  export/ns.one
  export/ns.two
  reexport/imported_add
  reexport/imported_sub
  reexport/imported_ns
[program.exports]
  export/add
  export/renamed_sub
  export/a
  export/renamed_b
  export/ns
  reexport/add
  reexport/renamed_sub
  reexport/renamed_a
  reexport/rerenamed_b
  reexport/renamed_add
  reexport/rerenamed_sub
  reexport/renamed_ns
;)
