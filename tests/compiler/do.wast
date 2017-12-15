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
  do/loopDo
  do/loopDoInDo
[program.exports]
  do/loopDo
  do/loopDoInDo
;)
