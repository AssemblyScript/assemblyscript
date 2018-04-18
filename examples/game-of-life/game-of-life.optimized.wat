(module
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (import "env" "memory" (memory $0 1))
 (global $assembly/game-of-life/w (mut i32) (i32.const 0))
 (global $assembly/game-of-life/h (mut i32) (i32.const 0))
 (global $assembly/game-of-life/s (mut i32) (i32.const 0))
 (export "init" (func $assembly/game-of-life/init))
 (export "step" (func $assembly/game-of-life/step))
 (export "memory" (memory $0))
 (func $assembly/game-of-life/init (; 0 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ assembly/game-of-life.ts:9:2
  (set_global $assembly/game-of-life/w
   ;;@ assembly/game-of-life.ts:9:6
   (get_local $0)
  )
  ;;@ assembly/game-of-life.ts:10:2
  (set_global $assembly/game-of-life/h
   ;;@ assembly/game-of-life.ts:10:6
   (get_local $1)
  )
  ;;@ assembly/game-of-life.ts:11:2
  (set_global $assembly/game-of-life/s
   ;;@ assembly/game-of-life.ts:11:6
   (i32.mul
    (get_local $0)
    ;;@ assembly/game-of-life.ts:11:14
    (get_local $1)
   )
  )
 )
 (func $assembly/game-of-life/step (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $5
   ;;@ assembly/game-of-life.ts:16:12
   (i32.sub
    (get_global $assembly/game-of-life/h)
    ;;@ assembly/game-of-life.ts:16:16
    (i32.const 1)
   )
  )
  (set_local $6
   ;;@ assembly/game-of-life.ts:17:12
   (i32.sub
    (get_global $assembly/game-of-life/w)
    ;;@ assembly/game-of-life.ts:17:16
    (i32.const 1)
   )
  )
  (loop $continue|0
   (if
    ;;@ assembly/game-of-life.ts:21:18
    (i32.lt_s
     (get_local $0)
     ;;@ assembly/game-of-life.ts:21:22
     (get_global $assembly/game-of-life/h)
    )
    (block
     (set_local $3
      ;;@ assembly/game-of-life.ts:23:14
      (if (result i32)
       (get_local $0)
       ;;@ assembly/game-of-life.ts:23:29
       (i32.sub
        (get_local $0)
        ;;@ assembly/game-of-life.ts:23:33
        (i32.const 1)
       )
       ;;@ assembly/game-of-life.ts:23:23
       (get_local $5)
      )
     )
     (set_local $4
      ;;@ assembly/game-of-life.ts:24:14
      (if (result i32)
       (i32.eq
        (get_local $0)
        ;;@ assembly/game-of-life.ts:24:19
        (get_local $5)
       )
       ;;@ assembly/game-of-life.ts:24:25
       (i32.const 0)
       ;;@ assembly/game-of-life.ts:24:29
       (i32.add
        (get_local $0)
        ;;@ assembly/game-of-life.ts:24:33
        (i32.const 1)
       )
      )
     )
     ;;@ assembly/game-of-life.ts:25:9
     (set_local $1
      ;;@ assembly/game-of-life.ts:25:17
      (i32.const 0)
     )
     (loop $continue|1
      (if
       ;;@ assembly/game-of-life.ts:25:20
       (i32.lt_s
        (get_local $1)
        ;;@ assembly/game-of-life.ts:25:24
        (get_global $assembly/game-of-life/w)
       )
       (block
        ;;@ assembly/game-of-life.ts:31:6
        (set_local $2
         ;;@ assembly/game-of-life.ts:31:27
         (i32.add
          ;;@ assembly/game-of-life.ts:32:8
          (i32.add
           (i32.add
            (i32.add
             (i32.add
              (i32.add
               (i32.add
                (i32.load8_u
                 ;;@ assembly/game-of-life.ts:32:17
                 (i32.add
                  (i32.mul
                   (get_local $3)
                   ;;@ assembly/game-of-life.ts:32:23
                   (get_global $assembly/game-of-life/w)
                  )
                  (tee_local $2
                   ;;@ assembly/game-of-life.ts:26:16
                   (if (result i32)
                    (get_local $1)
                    ;;@ assembly/game-of-life.ts:26:31
                    (i32.sub
                     (get_local $1)
                     ;;@ assembly/game-of-life.ts:26:35
                     (i32.const 1)
                    )
                    ;;@ assembly/game-of-life.ts:26:25
                    (get_local $6)
                   )
                  )
                 )
                )
                ;;@ assembly/game-of-life.ts:32:34
                (i32.load8_u
                 ;;@ assembly/game-of-life.ts:32:43
                 (i32.add
                  (i32.mul
                   (get_local $3)
                   ;;@ assembly/game-of-life.ts:32:49
                   (get_global $assembly/game-of-life/w)
                  )
                  ;;@ assembly/game-of-life.ts:32:53
                  (get_local $1)
                 )
                )
               )
               ;;@ assembly/game-of-life.ts:32:58
               (i32.load8_u
                ;;@ assembly/game-of-life.ts:32:67
                (i32.add
                 (i32.mul
                  (get_local $3)
                  ;;@ assembly/game-of-life.ts:32:73
                  (get_global $assembly/game-of-life/w)
                 )
                 (tee_local $7
                  ;;@ assembly/game-of-life.ts:27:16
                  (if (result i32)
                   (i32.eq
                    (get_local $1)
                    ;;@ assembly/game-of-life.ts:27:21
                    (get_local $6)
                   )
                   ;;@ assembly/game-of-life.ts:27:27
                   (i32.const 0)
                   ;;@ assembly/game-of-life.ts:27:31
                   (i32.add
                    (get_local $1)
                    ;;@ assembly/game-of-life.ts:27:35
                    (i32.const 1)
                   )
                  )
                 )
                )
               )
              )
              ;;@ assembly/game-of-life.ts:33:8
              (i32.load8_u
               ;;@ assembly/game-of-life.ts:33:17
               (i32.add
                (i32.mul
                 (get_local $0)
                 ;;@ assembly/game-of-life.ts:33:23
                 (get_global $assembly/game-of-life/w)
                )
                ;;@ assembly/game-of-life.ts:33:27
                (get_local $2)
               )
              )
             )
             ;;@ assembly/game-of-life.ts:33:58
             (i32.load8_u
              ;;@ assembly/game-of-life.ts:33:67
              (i32.add
               (i32.mul
                (get_local $0)
                ;;@ assembly/game-of-life.ts:33:73
                (get_global $assembly/game-of-life/w)
               )
               ;;@ assembly/game-of-life.ts:33:77
               (get_local $7)
              )
             )
            )
            ;;@ assembly/game-of-life.ts:34:8
            (i32.load8_u
             ;;@ assembly/game-of-life.ts:34:17
             (i32.add
              (i32.mul
               (get_local $4)
               ;;@ assembly/game-of-life.ts:34:23
               (get_global $assembly/game-of-life/w)
              )
              ;;@ assembly/game-of-life.ts:34:27
              (get_local $2)
             )
            )
           )
           ;;@ assembly/game-of-life.ts:34:34
           (i32.load8_u
            ;;@ assembly/game-of-life.ts:34:43
            (i32.add
             (i32.mul
              (get_local $4)
              ;;@ assembly/game-of-life.ts:34:49
              (get_global $assembly/game-of-life/w)
             )
             ;;@ assembly/game-of-life.ts:34:53
             (get_local $1)
            )
           )
          )
          ;;@ assembly/game-of-life.ts:34:58
          (i32.load8_u
           ;;@ assembly/game-of-life.ts:34:67
           (i32.add
            (i32.mul
             (get_local $4)
             ;;@ assembly/game-of-life.ts:34:73
             (get_global $assembly/game-of-life/w)
            )
            ;;@ assembly/game-of-life.ts:34:77
            (get_local $7)
           )
          )
         )
        )
        ;;@ assembly/game-of-life.ts:38:6
        (if
         ;;@ assembly/game-of-life.ts:37:18
         (i32.load8_u
          ;;@ assembly/game-of-life.ts:37:27
          (i32.add
           (i32.mul
            (get_local $0)
            ;;@ assembly/game-of-life.ts:37:31
            (get_global $assembly/game-of-life/w)
           )
           ;;@ assembly/game-of-life.ts:37:35
           (get_local $1)
          )
         )
         ;;@ assembly/game-of-life.ts:39:8
         (block $break|2
          (br_if $break|2
           (i32.eq
            ;;@ assembly/game-of-life.ts:39:16
            (get_local $2)
            ;;@ assembly/game-of-life.ts:44:15
            (i32.const 2)
           )
          )
          (br_if $break|2
           (i32.eq
            (get_local $2)
            ;;@ assembly/game-of-life.ts:44:23
            (i32.const 3)
           )
          )
          ;;@ assembly/game-of-life.ts:42:21
          (i32.store8
           ;;@ assembly/game-of-life.ts:42:31
           (i32.add
            (i32.add
             (get_global $assembly/game-of-life/s)
             ;;@ assembly/game-of-life.ts:42:35
             (i32.mul
              (get_local $0)
              ;;@ assembly/game-of-life.ts:42:39
              (get_global $assembly/game-of-life/w)
             )
            )
            ;;@ assembly/game-of-life.ts:42:43
            (get_local $1)
           )
           ;;@ assembly/game-of-life.ts:42:46
           (i32.const 0)
          )
         )
         (if
          (i32.eq
           ;;@ assembly/game-of-life.ts:47:16
           (get_local $2)
           ;;@ assembly/game-of-life.ts:49:15
           (i32.const 3)
          )
          ;;@ assembly/game-of-life.ts:49:20
          (i32.store8
           ;;@ assembly/game-of-life.ts:49:30
           (i32.add
            (i32.add
             (get_global $assembly/game-of-life/s)
             ;;@ assembly/game-of-life.ts:49:34
             (i32.mul
              (get_local $0)
              ;;@ assembly/game-of-life.ts:49:38
              (get_global $assembly/game-of-life/w)
             )
            )
            ;;@ assembly/game-of-life.ts:49:42
            (get_local $1)
           )
           ;;@ assembly/game-of-life.ts:49:45
           (i32.const 1)
          )
         )
        )
        ;;@ assembly/game-of-life.ts:25:27
        (set_local $1
         (i32.add
          ;;@ assembly/game-of-life.ts:25:29
          (get_local $1)
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
     ;;@ assembly/game-of-life.ts:21:25
     (set_local $0
      (i32.add
       ;;@ assembly/game-of-life.ts:21:27
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
