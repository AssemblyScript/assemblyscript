(module
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (global $../../examples/game-of-life/assembly/game-of-life/w (mut i32) (i32.const 0))
 (global $../../examples/game-of-life/assembly/game-of-life/h (mut i32) (i32.const 0))
 (global $../../examples/game-of-life/assembly/game-of-life/s (mut i32) (i32.const 0))
 (global $HEAP_START i32 (i32.const 4))
 (memory $0 1)
 (export "init" (func $../../examples/game-of-life/assembly/game-of-life/init))
 (export "step" (func $../../examples/game-of-life/assembly/game-of-life/step))
 (export "memory" (memory $0))
 (func $../../examples/game-of-life/assembly/game-of-life/init (; 0 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (set_global $../../examples/game-of-life/assembly/game-of-life/w
   (get_local $0)
  )
  (set_global $../../examples/game-of-life/assembly/game-of-life/h
   (get_local $1)
  )
  (set_global $../../examples/game-of-life/assembly/game-of-life/s
   (i32.mul
    (get_global $../../examples/game-of-life/assembly/game-of-life/w)
    (get_global $../../examples/game-of-life/assembly/game-of-life/h)
   )
  )
 )
 (func $../../examples/game-of-life/assembly/game-of-life/step (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (nop)
  (nop)
  (block
   (set_local $6
    (i32.sub
     (get_global $../../examples/game-of-life/assembly/game-of-life/h)
     (i32.const 1)
    )
   )
   (set_local $7
    (i32.sub
     (get_global $../../examples/game-of-life/assembly/game-of-life/w)
     (i32.const 1)
    )
   )
  )
  (block
   (set_local $10
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $0
    (i32.const 0)
   )
   (loop $continue|0
    (if
     (i32.lt_u
      (get_local $0)
      (get_global $../../examples/game-of-life/assembly/game-of-life/h)
     )
     (block
      (block
       (set_local $1
        (select
         (get_local $6)
         (i32.sub
          (get_local $0)
          (i32.const 1)
         )
         (i32.eq
          (get_local $0)
          (i32.const 0)
         )
        )
       )
       (set_local $2
        (select
         (i32.const 0)
         (i32.add
          (get_local $0)
          (i32.const 1)
         )
         (i32.eq
          (get_local $0)
          (get_local $6)
         )
        )
       )
       (block $break|1
        (set_local $3
         (i32.const 0)
        )
        (loop $continue|1
         (if
          (i32.lt_u
           (get_local $3)
           (get_global $../../examples/game-of-life/assembly/game-of-life/w)
          )
          (block
           (block
            (set_local $4
             (select
              (get_local $7)
              (i32.sub
               (get_local $3)
               (i32.const 1)
              )
              (i32.eq
               (get_local $3)
               (i32.const 0)
              )
             )
            )
            (set_local $5
             (select
              (i32.const 0)
              (i32.add
               (get_local $3)
               (i32.const 1)
              )
              (i32.eq
               (get_local $3)
               (get_local $7)
              )
             )
            )
            (set_local $8
             (i32.add
              (i32.add
               (i32.add
                (i32.add
                 (i32.add
                  (i32.add
                   (i32.add
                    (i32.load8_u
                     (i32.add
                      (i32.mul
                       (get_local $1)
                       (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                      )
                      (get_local $4)
                     )
                    )
                    (i32.load8_u
                     (i32.add
                      (i32.mul
                       (get_local $1)
                       (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                      )
                      (get_local $3)
                     )
                    )
                   )
                   (i32.load8_u
                    (i32.add
                     (i32.mul
                      (get_local $1)
                      (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                     )
                     (get_local $5)
                    )
                   )
                  )
                  (i32.load8_u
                   (i32.add
                    (i32.mul
                     (get_local $0)
                     (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                    )
                    (get_local $4)
                   )
                  )
                 )
                 (i32.load8_u
                  (i32.add
                   (i32.mul
                    (get_local $0)
                    (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                   )
                   (get_local $5)
                  )
                 )
                )
                (i32.load8_u
                 (i32.add
                  (i32.mul
                   (get_local $2)
                   (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                  )
                  (get_local $4)
                 )
                )
               )
               (i32.load8_u
                (i32.add
                 (i32.mul
                  (get_local $2)
                  (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                 )
                 (get_local $3)
                )
               )
              )
              (i32.load8_u
               (i32.add
                (i32.mul
                 (get_local $2)
                 (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                )
                (get_local $5)
               )
              )
             )
            )
            (set_local $9
             (i32.load8_u
              (i32.add
               (i32.mul
                (get_local $0)
                (get_global $../../examples/game-of-life/assembly/game-of-life/w)
               )
               (get_local $3)
              )
             )
            )
            (if
             (get_local $9)
             (if
              (if (result i32)
               (tee_local $11
                (i32.lt_u
                 (get_local $8)
                 (i32.const 2)
                )
               )
               (get_local $11)
               (i32.gt_u
                (get_local $8)
                (i32.const 3)
               )
              )
              (i32.store8
               (i32.add
                (i32.add
                 (get_global $../../examples/game-of-life/assembly/game-of-life/s)
                 (i32.mul
                  (get_local $0)
                  (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                 )
                )
                (get_local $3)
               )
               (i32.const 0)
              )
             )
             (if
              (i32.eq
               (get_local $8)
               (i32.const 3)
              )
              (i32.store8
               (i32.add
                (i32.add
                 (get_global $../../examples/game-of-life/assembly/game-of-life/s)
                 (i32.mul
                  (get_local $0)
                  (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                 )
                )
                (get_local $3)
               )
               (i32.const 1)
              )
             )
            )
           )
           (set_local $3
            (i32.add
             (get_local $3)
             (i32.const 1)
            )
           )
           (br $continue|1)
          )
         )
        )
       )
      )
      (set_local $0
       (i32.add
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
  ../../examples/game-of-life/assembly/game-of-life/w
  ../../examples/game-of-life/assembly/game-of-life/h
  ../../examples/game-of-life/assembly/game-of-life/s
  ../../examples/game-of-life/assembly/game-of-life/init
  ../../examples/game-of-life/assembly/game-of-life/step
[program.exports]
  ../../examples/game-of-life/assembly/game-of-life/init
  ../../examples/game-of-life/assembly/game-of-life/step
  game-of-life/init
  game-of-life/step
;)
