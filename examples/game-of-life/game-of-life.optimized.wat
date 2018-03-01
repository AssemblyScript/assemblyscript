(module
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (global $assembly/game-of-life/w (mut i32) (i32.const 0))
 (global $assembly/game-of-life/h (mut i32) (i32.const 0))
 (global $assembly/game-of-life/s (mut i32) (i32.const 0))
 (memory $0 1)
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
    (get_global $assembly/game-of-life/w)
    ;;@ assembly/game-of-life.ts:11:10
    (get_global $assembly/game-of-life/h)
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
  (set_local $6
   ;;@ assembly/game-of-life.ts:16:12
   (i32.sub
    (get_global $assembly/game-of-life/h)
    ;;@ assembly/game-of-life.ts:16:16
    (i32.const 1)
   )
  )
  (set_local $7
   ;;@ assembly/game-of-life.ts:17:12
   (i32.sub
    (get_global $assembly/game-of-life/w)
    ;;@ assembly/game-of-life.ts:17:16
    (i32.const 1)
   )
  )
  (loop $continue|0
   (if
    ;;@ assembly/game-of-life.ts:18:23
    (i32.lt_u
     (get_local $0)
     ;;@ assembly/game-of-life.ts:18:27
     (get_global $assembly/game-of-life/h)
    )
    (block
     (set_local $4
      ;;@ assembly/game-of-life.ts:19:14
      (select
       ;;@ assembly/game-of-life.ts:19:31
       (i32.sub
        (get_local $0)
        ;;@ assembly/game-of-life.ts:19:35
        (i32.const 1)
       )
       ;;@ assembly/game-of-life.ts:19:26
       (get_local $6)
       ;;@ assembly/game-of-life.ts:19:38
       (get_local $0)
      )
     )
     (set_local $5
      ;;@ assembly/game-of-life.ts:20:14
      (select
       ;;@ assembly/game-of-life.ts:20:26
       (i32.const 0)
       ;;@ assembly/game-of-life.ts:20:29
       (i32.add
        (get_local $0)
        ;;@ assembly/game-of-life.ts:20:33
        (i32.const 1)
       )
       ;;@ assembly/game-of-life.ts:20:36
       (i32.eq
        (get_local $0)
        ;;@ assembly/game-of-life.ts:20:41
        (get_local $6)
       )
      )
     )
     ;;@ assembly/game-of-life.ts:21:9
     (set_local $1
      ;;@ assembly/game-of-life.ts:21:22
      (i32.const 0)
     )
     (loop $continue|1
      (if
       ;;@ assembly/game-of-life.ts:21:25
       (i32.lt_u
        (get_local $1)
        ;;@ assembly/game-of-life.ts:21:29
        (get_global $assembly/game-of-life/w)
       )
       (block
        ;;@ assembly/game-of-life.ts:24:6
        (set_local $2
         ;;@ assembly/game-of-life.ts:24:14
         (i32.add
          ;;@ assembly/game-of-life.ts:25:8
          (i32.add
           (i32.add
            (i32.add
             (i32.add
              (i32.add
               (i32.add
                (i32.load8_u
                 ;;@ assembly/game-of-life.ts:25:17
                 (i32.add
                  (i32.mul
                   (get_local $4)
                   ;;@ assembly/game-of-life.ts:25:23
                   (get_global $assembly/game-of-life/w)
                  )
                  (tee_local $2
                   ;;@ assembly/game-of-life.ts:22:16
                   (select
                    ;;@ assembly/game-of-life.ts:22:33
                    (i32.sub
                     (get_local $1)
                     ;;@ assembly/game-of-life.ts:22:37
                     (i32.const 1)
                    )
                    ;;@ assembly/game-of-life.ts:22:28
                    (get_local $7)
                    ;;@ assembly/game-of-life.ts:22:40
                    (get_local $1)
                   )
                  )
                 )
                )
                ;;@ assembly/game-of-life.ts:25:34
                (i32.load8_u
                 ;;@ assembly/game-of-life.ts:25:43
                 (i32.add
                  (i32.mul
                   (get_local $4)
                   ;;@ assembly/game-of-life.ts:25:49
                   (get_global $assembly/game-of-life/w)
                  )
                  ;;@ assembly/game-of-life.ts:25:53
                  (get_local $1)
                 )
                )
               )
               ;;@ assembly/game-of-life.ts:25:58
               (i32.load8_u
                ;;@ assembly/game-of-life.ts:25:67
                (i32.add
                 (i32.mul
                  (get_local $4)
                  ;;@ assembly/game-of-life.ts:25:73
                  (get_global $assembly/game-of-life/w)
                 )
                 (tee_local $3
                  ;;@ assembly/game-of-life.ts:23:16
                  (select
                   ;;@ assembly/game-of-life.ts:23:28
                   (i32.const 0)
                   ;;@ assembly/game-of-life.ts:23:31
                   (i32.add
                    (get_local $1)
                    ;;@ assembly/game-of-life.ts:23:35
                    (i32.const 1)
                   )
                   ;;@ assembly/game-of-life.ts:23:38
                   (i32.eq
                    (get_local $1)
                    ;;@ assembly/game-of-life.ts:23:43
                    (get_local $7)
                   )
                  )
                 )
                )
               )
              )
              ;;@ assembly/game-of-life.ts:26:8
              (i32.load8_u
               ;;@ assembly/game-of-life.ts:26:17
               (i32.add
                (i32.mul
                 (get_local $0)
                 ;;@ assembly/game-of-life.ts:26:23
                 (get_global $assembly/game-of-life/w)
                )
                ;;@ assembly/game-of-life.ts:26:27
                (get_local $2)
               )
              )
             )
             ;;@ assembly/game-of-life.ts:26:58
             (i32.load8_u
              ;;@ assembly/game-of-life.ts:26:67
              (i32.add
               (i32.mul
                (get_local $0)
                ;;@ assembly/game-of-life.ts:26:73
                (get_global $assembly/game-of-life/w)
               )
               ;;@ assembly/game-of-life.ts:26:77
               (get_local $3)
              )
             )
            )
            ;;@ assembly/game-of-life.ts:27:8
            (i32.load8_u
             ;;@ assembly/game-of-life.ts:27:17
             (i32.add
              (i32.mul
               (get_local $5)
               ;;@ assembly/game-of-life.ts:27:23
               (get_global $assembly/game-of-life/w)
              )
              ;;@ assembly/game-of-life.ts:27:27
              (get_local $2)
             )
            )
           )
           ;;@ assembly/game-of-life.ts:27:34
           (i32.load8_u
            ;;@ assembly/game-of-life.ts:27:43
            (i32.add
             (i32.mul
              (get_local $5)
              ;;@ assembly/game-of-life.ts:27:49
              (get_global $assembly/game-of-life/w)
             )
             ;;@ assembly/game-of-life.ts:27:53
             (get_local $1)
            )
           )
          )
          ;;@ assembly/game-of-life.ts:27:58
          (i32.load8_u
           ;;@ assembly/game-of-life.ts:27:67
           (i32.add
            (i32.mul
             (get_local $5)
             ;;@ assembly/game-of-life.ts:27:73
             (get_global $assembly/game-of-life/w)
            )
            ;;@ assembly/game-of-life.ts:27:77
            (get_local $3)
           )
          )
         )
        )
        ;;@ assembly/game-of-life.ts:29:6
        (if
         ;;@ assembly/game-of-life.ts:29:10
         (i32.load8_u
          ;;@ assembly/game-of-life.ts:29:19
          (i32.add
           (i32.mul
            (get_local $0)
            ;;@ assembly/game-of-life.ts:29:23
            (get_global $assembly/game-of-life/w)
           )
           ;;@ assembly/game-of-life.ts:29:27
           (get_local $1)
          )
         )
         ;;@ assembly/game-of-life.ts:30:8
         (if
          ;;@ assembly/game-of-life.ts:30:12
          (i32.and
           (if (result i32)
            (tee_local $3
             (i32.lt_s
              (get_local $2)
              ;;@ assembly/game-of-life.ts:30:16
              (i32.const 2)
             )
            )
            (get_local $3)
            ;;@ assembly/game-of-life.ts:30:21
            (i32.gt_s
             (get_local $2)
             ;;@ assembly/game-of-life.ts:30:25
             (i32.const 3)
            )
           )
           (i32.const 1)
          )
          ;;@ assembly/game-of-life.ts:31:10
          (i32.store8
           ;;@ assembly/game-of-life.ts:31:20
           (i32.add
            (i32.add
             (get_global $assembly/game-of-life/s)
             ;;@ assembly/game-of-life.ts:31:24
             (i32.mul
              (get_local $0)
              ;;@ assembly/game-of-life.ts:31:28
              (get_global $assembly/game-of-life/w)
             )
            )
            ;;@ assembly/game-of-life.ts:31:32
            (get_local $1)
           )
           ;;@ assembly/game-of-life.ts:31:35
           (i32.const 0)
          )
         )
         ;;@ assembly/game-of-life.ts:33:13
         (if
          ;;@ assembly/game-of-life.ts:33:17
          (i32.eq
           (get_local $2)
           ;;@ assembly/game-of-life.ts:33:22
           (i32.const 3)
          )
          ;;@ assembly/game-of-life.ts:34:8
          (i32.store8
           ;;@ assembly/game-of-life.ts:34:18
           (i32.add
            (i32.add
             (get_global $assembly/game-of-life/s)
             ;;@ assembly/game-of-life.ts:34:22
             (i32.mul
              (get_local $0)
              ;;@ assembly/game-of-life.ts:34:26
              (get_global $assembly/game-of-life/w)
             )
            )
            ;;@ assembly/game-of-life.ts:34:30
            (get_local $1)
           )
           ;;@ assembly/game-of-life.ts:34:33
           (i32.const 1)
          )
         )
        )
        ;;@ assembly/game-of-life.ts:21:32
        (set_local $1
         (i32.add
          ;;@ assembly/game-of-life.ts:21:34
          (get_local $1)
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
     ;;@ assembly/game-of-life.ts:18:30
     (set_local $0
      (i32.add
       ;;@ assembly/game-of-life.ts:18:32
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
