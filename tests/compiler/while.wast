(module
 (type $iv (func (param i32)))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "loopWhile" (func $while/loopWhile))
 (export "loopWhileInWhile" (func $while/loopWhileInWhile))
 (export "memory" (memory $0))
 (func $while/loopWhile (; 0 ;) (type $iv) (param $0 i32)
  (block $break|0
   (loop $continue|0
    (if
     (get_local $0)
     (block
      (set_local $0
       (i32.sub
        (get_local $0)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
 )
 (func $while/loopWhileInWhile (; 1 ;) (type $iv) (param $0 i32)
  (block $break|0
   (loop $continue|0
    (if
     (get_local $0)
     (block
      (block
       (set_local $0
        (i32.sub
         (get_local $0)
         (i32.const 1)
        )
       )
       (block $break|1
        (loop $continue|1
         (if
          (get_local $0)
          (block
           (set_local $0
            (i32.sub
             (get_local $0)
             (i32.const 1)
            )
           )
           (br $continue|1)
          )
         )
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
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
  while/loopWhile
  while/loopWhileInWhile
[program.exports]
  while/loopWhile
  while/loopWhileInWhile
;)
