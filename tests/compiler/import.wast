(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (global $export/a (mut i32) (i32.const 1))
 (global $export/b (mut i32) (i32.const 2))
 (memory $0 1)
 (data (i32.const 4) "\08\00\00\00")
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
 (func $start (; 2 ;) (type $v)
  (drop
   (i32.add
    (call $export/add
     (get_global $export/a)
     (get_global $export/b)
    )
    (call $export/sub
     (get_global $export/b)
     (get_global $export/a)
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
  isNaN
  isFinite
  export/add
  export/sub
  export/a
  export/b
  import/add
  import/sub
  import/a
  import/b
[program.exports]
  export/add
  export/renamed_sub
  export/a
  export/renamed_b
;)
