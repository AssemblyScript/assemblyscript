(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (memory $0 1)
 (data (i32.const 4) "\08\00\00\00")
 (export "add" (func $export/add))
 (export "renamed_sub" (func $export/sub))
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
 (func $start (; 2 ;) (type $v)
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
  isNaN
  isFinite
  assert
  export/add
  export/sub
  export/a
  export/b
  reexport/imported_add
  reexport/imported_sub
[program.exports]
  export/add
  export/renamed_sub
  export/a
  export/renamed_b
  reexport/add
  reexport/renamed_sub
  reexport/renamed_add
  reexport/rerenamed_sub
;)
