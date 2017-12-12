(module
 (type $iii (func (param i32 i32) (result i32)))
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (global $HEAP_START i32 (i32.const 4))
 (memory $0 1)
 (export "add" (func $export/add))
 (export "renamed_sub" (func $export/sub))
 (export "a" (global $export/a))
 (export "renamed_b" (global $export/b))
 (export "memory" (memory $0))
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
  export/add
  export/sub
  export/a
  export/b
[program.exports]
  export/add
  export/renamed_sub
  export/a
  export/renamed_b
;)
