(module
 (type $iii (func (param i32 i32) (result i32)))
 (global $export/a (mut i32) (i32.const 1))
 (global $export/b (mut i32) (i32.const 2))
 (memory $0 1)
 (data (i32.const 4) "\08\00\00\00")
 (export "add" (func $export/add))
 (export "renamed_sub" (func $export/sub))
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
  isNaN
  isFinite
  assert
  sizeof
  load
  store
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
