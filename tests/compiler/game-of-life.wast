(module
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (global $../../examples/game-of-life/assembly/game-of-life/w (mut i32) (i32.const 0))
 (global $../../examples/game-of-life/assembly/game-of-life/h (mut i32) (i32.const 0))
 (global $../../examples/game-of-life/assembly/game-of-life/s (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "init" (func $../../examples/game-of-life/assembly/game-of-life/init))
 (export "step" (func $../../examples/game-of-life/assembly/game-of-life/step))
 (export "memory" (memory $0))
 (func $../../examples/game-of-life/assembly/game-of-life/init (; 0 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:9:2
  (set_global $../../examples/game-of-life/assembly/game-of-life/w
   ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:9:6
   (get_local $0)
  )
  ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:10:2
  (set_global $../../examples/game-of-life/assembly/game-of-life/h
   ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:10:6
   (get_local $1)
  )
  ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:11:2
  (set_global $../../examples/game-of-life/assembly/game-of-life/s
   ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:11:6
   (i32.mul
    (get_global $../../examples/game-of-life/assembly/game-of-life/w)
    ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:11:10
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
  ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:16:2
  (block
   (set_local $0
    ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:16:12
    (i32.sub
     (get_global $../../examples/game-of-life/assembly/game-of-life/h)
     ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:16:16
     (i32.const 1)
    )
   )
   (set_local $1
    ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:17:12
    (i32.sub
     (get_global $../../examples/game-of-life/assembly/game-of-life/w)
     ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:17:16
     (i32.const 1)
    )
   )
  )
  ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:18:2
  (block $break|0
   ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:18:7
   (set_local $2
    ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:18:20
    (i32.const 0)
   )
   (loop $continue|0
    (if
     ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:18:23
     (i32.lt_u
      (get_local $2)
      ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:18:27
      (get_global $../../examples/game-of-life/assembly/game-of-life/h)
     )
     (block
      (block
       (block
        (set_local $3
         ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:19:14
         (select
          ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:19:26
          (get_local $0)
          ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:19:31
          (i32.sub
           (get_local $2)
           ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:19:35
           (i32.const 1)
          )
          ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:19:38
          (i32.eq
           (get_local $2)
           ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:19:43
           (i32.const 0)
          )
         )
        )
        (set_local $4
         ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:20:14
         (select
          ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:20:26
          (i32.const 0)
          ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:20:29
          (i32.add
           (get_local $2)
           ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:20:33
           (i32.const 1)
          )
          ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:20:36
          (i32.eq
           (get_local $2)
           ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:20:41
           (get_local $0)
          )
         )
        )
       )
       ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:21:4
       (block $break|1
        ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:21:9
        (set_local $5
         ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:21:22
         (i32.const 0)
        )
        (loop $continue|1
         (if
          ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:21:25
          (i32.lt_u
           (get_local $5)
           ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:21:29
           (get_global $../../examples/game-of-life/assembly/game-of-life/w)
          )
          (block
           (block
            (block
             (set_local $6
              ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:22:16
              (select
               ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:22:28
               (get_local $1)
               ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:22:33
               (i32.sub
                (get_local $5)
                ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:22:37
                (i32.const 1)
               )
               ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:22:40
               (i32.eq
                (get_local $5)
                ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:22:45
                (i32.const 0)
               )
              )
             )
             (set_local $7
              ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:23:16
              (select
               ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:23:28
               (i32.const 0)
               ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:23:31
               (i32.add
                (get_local $5)
                ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:23:35
                (i32.const 1)
               )
               ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:23:38
               (i32.eq
                (get_local $5)
                ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:23:43
                (get_local $1)
               )
              )
             )
            )
            ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:24:6
            (set_local $8
             ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:24:14
             (i32.add
              ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:25:8
              (i32.add
               (i32.add
                (i32.add
                 (i32.add
                  (i32.add
                   (i32.add
                    (i32.load8_u
                     ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:25:17
                     (i32.add
                      (i32.mul
                       (get_local $3)
                       ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:25:23
                       (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                      )
                      ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:25:27
                      (get_local $6)
                     )
                    )
                    ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:25:34
                    (i32.load8_u
                     ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:25:43
                     (i32.add
                      (i32.mul
                       (get_local $3)
                       ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:25:49
                       (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                      )
                      ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:25:53
                      (get_local $5)
                     )
                    )
                   )
                   ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:25:58
                   (i32.load8_u
                    ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:25:67
                    (i32.add
                     (i32.mul
                      (get_local $3)
                      ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:25:73
                      (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                     )
                     ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:25:77
                     (get_local $7)
                    )
                   )
                  )
                  ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:26:8
                  (i32.load8_u
                   ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:26:17
                   (i32.add
                    (i32.mul
                     (get_local $2)
                     ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:26:23
                     (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                    )
                    ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:26:27
                    (get_local $6)
                   )
                  )
                 )
                 ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:26:58
                 (i32.load8_u
                  ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:26:67
                  (i32.add
                   (i32.mul
                    (get_local $2)
                    ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:26:73
                    (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                   )
                   ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:26:77
                   (get_local $7)
                  )
                 )
                )
                ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:27:8
                (i32.load8_u
                 ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:27:17
                 (i32.add
                  (i32.mul
                   (get_local $4)
                   ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:27:23
                   (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                  )
                  ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:27:27
                  (get_local $6)
                 )
                )
               )
               ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:27:34
               (i32.load8_u
                ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:27:43
                (i32.add
                 (i32.mul
                  (get_local $4)
                  ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:27:49
                  (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                 )
                 ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:27:53
                 (get_local $5)
                )
               )
              )
              ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:27:58
              (i32.load8_u
               ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:27:67
               (i32.add
                (i32.mul
                 (get_local $4)
                 ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:27:73
                 (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                )
                ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:27:77
                (get_local $7)
               )
              )
             )
            )
            ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:29:6
            (if
             ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:29:10
             (i32.load8_u
              ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:29:19
              (i32.add
               (i32.mul
                (get_local $2)
                ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:29:23
                (get_global $../../examples/game-of-life/assembly/game-of-life/w)
               )
               ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:29:27
               (get_local $5)
              )
             )
             ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:30:8
             (if
              ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:30:12
              (i32.and
               (if (result i32)
                (i32.ne
                 (tee_local $9
                  (i32.lt_s
                   (get_local $8)
                   ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:30:16
                   (i32.const 2)
                  )
                 )
                 (i32.const 0)
                )
                (get_local $9)
                ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:30:21
                (i32.gt_s
                 (get_local $8)
                 ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:30:25
                 (i32.const 3)
                )
               )
               (i32.const 1)
              )
              ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:31:10
              (i32.store8
               ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:31:20
               (i32.add
                (i32.add
                 (get_global $../../examples/game-of-life/assembly/game-of-life/s)
                 ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:31:24
                 (i32.mul
                  (get_local $2)
                  ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:31:28
                  (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                 )
                )
                ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:31:32
                (get_local $5)
               )
               ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:31:35
               (i32.const 0)
              )
             )
             ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:32:13
             (if
              ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:32:17
              (i32.eq
               (get_local $8)
               ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:32:22
               (i32.const 3)
              )
              ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:33:8
              (i32.store8
               ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:33:18
               (i32.add
                (i32.add
                 (get_global $../../examples/game-of-life/assembly/game-of-life/s)
                 ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:33:22
                 (i32.mul
                  (get_local $2)
                  ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:33:26
                  (get_global $../../examples/game-of-life/assembly/game-of-life/w)
                 )
                )
                ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:33:30
                (get_local $5)
               )
               ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:33:33
               (i32.const 1)
              )
             )
            )
           )
           ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:21:32
           (set_local $5
            (i32.add
             ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:21:34
             (get_local $5)
             (i32.const 1)
            )
           )
           (br $continue|1)
          )
         )
        )
       )
      )
      ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:18:30
      (set_local $2
       (i32.add
        ;;@ ../../examples/game-of-life/assembly/game-of-life.ts:18:32
        (get_local $2)
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
  GLOBAL: NaN
  GLOBAL: Infinity
  FUNCTION_PROTOTYPE: isNaN
  FUNCTION_PROTOTYPE: isFinite
  FUNCTION_PROTOTYPE: clz
  FUNCTION_PROTOTYPE: ctz
  FUNCTION_PROTOTYPE: popcnt
  FUNCTION_PROTOTYPE: rotl
  FUNCTION_PROTOTYPE: rotr
  FUNCTION_PROTOTYPE: abs
  FUNCTION_PROTOTYPE: max
  FUNCTION_PROTOTYPE: min
  FUNCTION_PROTOTYPE: ceil
  FUNCTION_PROTOTYPE: floor
  FUNCTION_PROTOTYPE: copysign
  FUNCTION_PROTOTYPE: nearest
  FUNCTION_PROTOTYPE: reinterpret
  FUNCTION_PROTOTYPE: sqrt
  FUNCTION_PROTOTYPE: trunc
  FUNCTION_PROTOTYPE: load
  FUNCTION_PROTOTYPE: store
  FUNCTION_PROTOTYPE: sizeof
  FUNCTION_PROTOTYPE: select
  FUNCTION_PROTOTYPE: unreachable
  FUNCTION_PROTOTYPE: current_memory
  FUNCTION_PROTOTYPE: grow_memory
  FUNCTION_PROTOTYPE: changetype
  FUNCTION_PROTOTYPE: assert
  FUNCTION_PROTOTYPE: abort
  FUNCTION_PROTOTYPE: i8
  FUNCTION_PROTOTYPE: i16
  FUNCTION_PROTOTYPE: i32
  FUNCTION_PROTOTYPE: i64
  FUNCTION_PROTOTYPE: u8
  FUNCTION_PROTOTYPE: u16
  FUNCTION_PROTOTYPE: u32
  FUNCTION_PROTOTYPE: u64
  FUNCTION_PROTOTYPE: bool
  FUNCTION_PROTOTYPE: f32
  FUNCTION_PROTOTYPE: f64
  FUNCTION_PROTOTYPE: isize
  FUNCTION_PROTOTYPE: usize
  GLOBAL: HEAP_BASE
  GLOBAL: ../../examples/game-of-life/assembly/game-of-life/w
  GLOBAL: ../../examples/game-of-life/assembly/game-of-life/h
  GLOBAL: ../../examples/game-of-life/assembly/game-of-life/s
  FUNCTION_PROTOTYPE: ../../examples/game-of-life/assembly/game-of-life/init
  FUNCTION_PROTOTYPE: ../../examples/game-of-life/assembly/game-of-life/step
[program.exports]
  FUNCTION_PROTOTYPE: ../../examples/game-of-life/assembly/game-of-life/init
  FUNCTION_PROTOTYPE: ../../examples/game-of-life/assembly/game-of-life/step
  FUNCTION_PROTOTYPE: game-of-life/init
  FUNCTION_PROTOTYPE: game-of-life/step
;)
