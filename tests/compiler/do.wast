(module
 (type $iv (func (param i32)))
 (global $HEAP_START i32 (i32.const 4))
 (memory $0 1)
 (export "loopDo" (func $do/loopDo))
 (export "loopDoInDo" (func $do/loopDoInDo))
 (export "memory" (memory $0))
 (func $do/loopDo (; 0 ;) (type $iv) (param $0 i32)
  (block $break|0
   (loop $continue|0
    (set_local $0
     (i32.sub
      (get_local $0)
      (i32.const 1)
     )
    )
    (br_if $continue|0
     (get_local $0)
    )
   )
  )
 )
 (func $do/loopDoInDo (; 1 ;) (type $iv) (param $0 i32)
  (block $break|0
   (loop $continue|0
    (block
     (set_local $0
      (i32.sub
       (get_local $0)
       (i32.const 1)
      )
     )
     (block $break|1
      (loop $continue|1
       (set_local $0
        (i32.sub
         (get_local $0)
         (i32.const 1)
        )
       )
       (br_if $continue|1
        (get_local $0)
       )
      )
     )
    )
    (br_if $continue|0
     (get_local $0)
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
  do/loopDo
  do/loopDoInDo
[program.exports]
  do/loopDo
  do/loopDoInDo
;)
