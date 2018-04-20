(module
 (type $iiFv (func (param i32 i32 f64)))
 (type $F (func (result f64)))
 (type $v (func))
 (import "JSMath" "random" (func $~lib/math/JSMath.random (result f64)))
 (import "env" "memory" (memory $0 1))
 (global $assembly/index/w (mut i32) (i32.const 0))
 (global $assembly/index/h (mut i32) (i32.const 0))
 (global $assembly/index/s (mut i32) (i32.const 0))
 (export "init" (func $assembly/index/init))
 (export "step" (func $assembly/index/step))
 (export "memory" (memory $0))
 (func $assembly/index/init (; 1 ;) (type $iiFv) (param $0 i32) (param $1 i32) (param $2 f64)
  (local $3 i32)
  ;;@ assembly/index.ts:29:2
  (set_global $assembly/index/w
   ;;@ assembly/index.ts:29:6
   (get_local $0)
  )
  ;;@ assembly/index.ts:30:2
  (set_global $assembly/index/h
   ;;@ assembly/index.ts:30:6
   (get_local $1)
  )
  ;;@ assembly/index.ts:31:2
  (set_global $assembly/index/s
   ;;@ assembly/index.ts:31:6
   (i32.mul
    (get_local $0)
    ;;@ assembly/index.ts:31:14
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:34:7
  (set_local $0
   ;;@ assembly/index.ts:34:15
   (i32.const 0)
  )
  (loop $continue|0
   (if
    ;;@ assembly/index.ts:34:18
    (i32.lt_s
     (get_local $0)
     ;;@ assembly/index.ts:34:22
     (get_global $assembly/index/h)
    )
    (block
     ;;@ assembly/index.ts:35:9
     (set_local $1
      ;;@ assembly/index.ts:35:17
      (i32.const 0)
     )
     (loop $continue|1
      (if
       ;;@ assembly/index.ts:35:20
       (i32.lt_s
        (get_local $1)
        ;;@ assembly/index.ts:35:24
        (get_global $assembly/index/w)
       )
       (block
        (set_local $3
         ;;@ assembly/index.ts:36:16
         (if (result i32)
          (f64.gt
           ;;@ assembly/index.ts:36:23
           (call $~lib/math/JSMath.random)
           ;;@ assembly/index.ts:36:34
           (f64.const 0.15)
          )
          ;;@ assembly/index.ts:36:41
          (i32.const 8723366)
          (i32.const -1666349)
         )
        )
        ;;@ assembly/index.ts:17:2
        (i32.store
         ;;@ assembly/index.ts:17:13
         (i32.shl
          (i32.add
           ;;@ assembly/index.ts:17:14
           (i32.add
            (get_global $assembly/index/s)
            ;;@ assembly/index.ts:17:18
            (i32.mul
             (get_local $0)
             ;;@ assembly/index.ts:17:22
             (get_global $assembly/index/w)
            )
           )
           ;;@ assembly/index.ts:17:26
           (get_local $1)
          )
          ;;@ assembly/index.ts:17:32
          (i32.const 2)
         )
         ;;@ assembly/index.ts:17:35
         (get_local $3)
        )
        ;;@ assembly/index.ts:35:27
        (set_local $1
         (i32.add
          ;;@ assembly/index.ts:35:29
          (get_local $1)
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
     ;;@ assembly/index.ts:34:25
     (set_local $0
      (i32.add
       ;;@ assembly/index.ts:34:27
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
 (func $assembly/index/step (; 2 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $7
   ;;@ assembly/index.ts:43:12
   (i32.sub
    (get_global $assembly/index/h)
    ;;@ assembly/index.ts:43:16
    (i32.const 1)
   )
  )
  (set_local $8
   ;;@ assembly/index.ts:44:12
   (i32.sub
    (get_global $assembly/index/w)
    ;;@ assembly/index.ts:44:16
    (i32.const 1)
   )
  )
  (loop $continue|0
   (if
    ;;@ assembly/index.ts:48:18
    (i32.lt_s
     (get_local $0)
     ;;@ assembly/index.ts:48:22
     (get_global $assembly/index/h)
    )
    (block
     (set_local $5
      ;;@ assembly/index.ts:49:14
      (if (result i32)
       (get_local $0)
       ;;@ assembly/index.ts:49:29
       (i32.sub
        (get_local $0)
        ;;@ assembly/index.ts:49:33
        (i32.const 1)
       )
       ;;@ assembly/index.ts:49:23
       (get_local $7)
      )
     )
     (set_local $6
      ;;@ assembly/index.ts:50:14
      (if (result i32)
       (i32.eq
        (get_local $0)
        ;;@ assembly/index.ts:50:19
        (get_local $7)
       )
       ;;@ assembly/index.ts:50:25
       (i32.const 0)
       ;;@ assembly/index.ts:50:29
       (i32.add
        (get_local $0)
        ;;@ assembly/index.ts:50:33
        (i32.const 1)
       )
      )
     )
     ;;@ assembly/index.ts:51:9
     (set_local $1
      ;;@ assembly/index.ts:51:17
      (i32.const 0)
     )
     (loop $continue|1
      (if
       ;;@ assembly/index.ts:51:20
       (i32.lt_s
        (get_local $1)
        ;;@ assembly/index.ts:51:24
        (get_global $assembly/index/w)
       )
       (block
        ;;@ assembly/index.ts:61:6
        (set_local $3
         (i32.load
          (i32.shl
           (i32.add
            (i32.mul
             ;;@ assembly/index.ts:61:24
             (get_local $0)
             (get_global $assembly/index/w)
            )
            ;;@ assembly/index.ts:61:19
            (get_local $1)
           )
           (i32.const 2)
          )
         )
        )
        ;;@ assembly/index.ts:68:6
        (set_local $2
         ;;@ assembly/index.ts:68:27
         (i32.add
          ;;@ assembly/index.ts:69:8
          (i32.add
           (i32.add
            (i32.add
             (i32.add
              (i32.add
               (i32.add
                (i32.and
                 (i32.load
                  (i32.shl
                   (i32.add
                    (i32.mul
                     ;;@ assembly/index.ts:57:24
                     (get_local $5)
                     (get_global $assembly/index/w)
                    )
                    (tee_local $2
                     ;;@ assembly/index.ts:52:16
                     (if (result i32)
                      (get_local $1)
                      ;;@ assembly/index.ts:52:31
                      (i32.sub
                       (get_local $1)
                       ;;@ assembly/index.ts:52:35
                       (i32.const 1)
                      )
                      ;;@ assembly/index.ts:52:25
                      (get_local $8)
                     )
                    )
                   )
                   (i32.const 2)
                  )
                 )
                 ;;@ assembly/index.ts:69:14
                 (i32.const 1)
                )
                ;;@ assembly/index.ts:69:19
                (i32.and
                 (i32.load
                  (i32.shl
                   (i32.add
                    (i32.mul
                     ;;@ assembly/index.ts:58:24
                     (get_local $5)
                     (get_global $assembly/index/w)
                    )
                    ;;@ assembly/index.ts:58:19
                    (get_local $1)
                   )
                   (i32.const 2)
                  )
                 )
                 ;;@ assembly/index.ts:69:25
                 (i32.const 1)
                )
               )
               ;;@ assembly/index.ts:69:30
               (i32.and
                (i32.load
                 (i32.shl
                  (i32.add
                   (i32.mul
                    ;;@ assembly/index.ts:59:24
                    (get_local $5)
                    (get_global $assembly/index/w)
                   )
                   (tee_local $4
                    ;;@ assembly/index.ts:53:16
                    (if (result i32)
                     (i32.eq
                      (get_local $1)
                      ;;@ assembly/index.ts:53:21
                      (get_local $8)
                     )
                     ;;@ assembly/index.ts:53:27
                     (i32.const 0)
                     ;;@ assembly/index.ts:53:31
                     (i32.add
                      (get_local $1)
                      ;;@ assembly/index.ts:53:35
                      (i32.const 1)
                     )
                    )
                   )
                  )
                  (i32.const 2)
                 )
                )
                ;;@ assembly/index.ts:69:36
                (i32.const 1)
               )
              )
              ;;@ assembly/index.ts:70:8
              (i32.and
               (i32.load
                (i32.shl
                 (i32.add
                  (i32.mul
                   ;;@ assembly/index.ts:60:24
                   (get_local $0)
                   (get_global $assembly/index/w)
                  )
                  ;;@ assembly/index.ts:60:19
                  (get_local $2)
                 )
                 (i32.const 2)
                )
               )
               ;;@ assembly/index.ts:70:14
               (i32.const 1)
              )
             )
             ;;@ assembly/index.ts:70:30
             (i32.and
              (i32.load
               (i32.shl
                (i32.add
                 (i32.mul
                  ;;@ assembly/index.ts:62:24
                  (get_local $0)
                  (get_global $assembly/index/w)
                 )
                 ;;@ assembly/index.ts:62:19
                 (get_local $4)
                )
                (i32.const 2)
               )
              )
              ;;@ assembly/index.ts:70:36
              (i32.const 1)
             )
            )
            ;;@ assembly/index.ts:71:8
            (i32.and
             (i32.load
              (i32.shl
               (i32.add
                (i32.mul
                 ;;@ assembly/index.ts:63:24
                 (get_local $6)
                 (get_global $assembly/index/w)
                )
                ;;@ assembly/index.ts:63:19
                (get_local $2)
               )
               (i32.const 2)
              )
             )
             ;;@ assembly/index.ts:71:14
             (i32.const 1)
            )
           )
           ;;@ assembly/index.ts:71:19
           (i32.and
            (i32.load
             (i32.shl
              (i32.add
               (i32.mul
                ;;@ assembly/index.ts:64:24
                (get_local $6)
                (get_global $assembly/index/w)
               )
               ;;@ assembly/index.ts:64:19
               (get_local $1)
              )
              (i32.const 2)
             )
            )
            ;;@ assembly/index.ts:71:25
            (i32.const 1)
           )
          )
          ;;@ assembly/index.ts:71:30
          (i32.and
           ;;@ assembly/index.ts:11:9
           (i32.load
            ;;@ assembly/index.ts:11:19
            (i32.shl
             (i32.add
              ;;@ assembly/index.ts:11:20
              (i32.mul
               ;;@ assembly/index.ts:65:24
               (get_local $6)
               ;;@ assembly/index.ts:11:24
               (get_global $assembly/index/w)
              )
              ;;@ assembly/index.ts:65:19
              (get_local $4)
             )
             ;;@ assembly/index.ts:11:34
             (i32.const 2)
            )
           )
           ;;@ assembly/index.ts:71:36
           (i32.const 1)
          )
         )
        )
        ;;@ assembly/index.ts:75:6
        (if
         ;;@ assembly/index.ts:74:18
         (i32.and
          (get_local $3)
          ;;@ assembly/index.ts:74:23
          (i32.const 1)
         )
         ;;@ assembly/index.ts:77:8
         (if
          ;;@ assembly/index.ts:77:12
          (i32.eq
           (i32.and
            ;;@ assembly/index.ts:77:13
            (get_local $2)
            ;;@ assembly/index.ts:77:30
            (i32.const 14)
           )
           ;;@ assembly/index.ts:77:41
           (i32.const 2)
          )
          (i32.store
           (i32.shl
            (i32.add
             (i32.add
              (get_global $assembly/index/s)
              (i32.mul
               ;;@ assembly/index.ts:77:61
               (get_local $0)
               (get_global $assembly/index/w)
              )
             )
             ;;@ assembly/index.ts:77:58
             (get_local $1)
            )
            (i32.const 2)
           )
           (i32.or
            (i32.shl
             (tee_local $3
              (select
               (tee_local $3
                (i32.sub
                 (i32.shr_u
                  (tee_local $2
                   ;;@ assembly/index.ts:77:64
                   (get_local $3)
                  )
                  (i32.const 24)
                 )
                 (i32.const 7)
                )
               )
               (tee_local $4
                (i32.const 0)
               )
               (i32.gt_s
                (get_local $3)
                (i32.const 0)
               )
              )
             )
             (i32.const 24)
            )
            (i32.and
             (get_local $2)
             (i32.const 16777215)
            )
           )
          )
          (i32.store
           (i32.shl
            (i32.add
             (i32.add
              (get_global $assembly/index/s)
              (i32.mul
               ;;@ assembly/index.ts:79:20
               (get_local $0)
               (get_global $assembly/index/w)
              )
             )
             ;;@ assembly/index.ts:79:17
             (get_local $1)
            )
            (i32.const 2)
           )
           (i32.const -8053850)
          )
         )
         ;;@ assembly/index.ts:82:8
         (if
          ;;@ assembly/index.ts:82:12
          (i32.eq
           (get_local $2)
           ;;@ assembly/index.ts:82:30
           (i32.const 3)
          )
          (i32.store
           (i32.shl
            (i32.add
             (i32.add
              (get_global $assembly/index/s)
              (i32.mul
               ;;@ assembly/index.ts:82:40
               (get_local $0)
               (get_global $assembly/index/w)
              )
             )
             ;;@ assembly/index.ts:82:37
             (get_local $1)
            )
            (i32.const 2)
           )
           (i32.const -1666349)
          )
          ;;@ assembly/index.ts:17:2
          (i32.store
           ;;@ assembly/index.ts:17:13
           (i32.shl
            (i32.add
             ;;@ assembly/index.ts:17:14
             (i32.add
              (get_global $assembly/index/s)
              ;;@ assembly/index.ts:17:18
              (i32.mul
               ;;@ assembly/index.ts:84:25
               (get_local $0)
               ;;@ assembly/index.ts:17:22
               (get_global $assembly/index/w)
              )
             )
             ;;@ assembly/index.ts:84:22
             (get_local $1)
            )
            ;;@ assembly/index.ts:17:32
            (i32.const 2)
           )
           ;;@ assembly/index.ts:24:12
           (i32.or
            (i32.shl
             ;;@ assembly/index.ts:23:2
             (tee_local $2
              ;;@ assembly/index.ts:23:10
              (select
               (tee_local $2
                ;;@ assembly/index.ts:23:19
                (i32.sub
                 (i32.shr_u
                  ;;@ assembly/index.ts:84:28
                  (get_local $3)
                  ;;@ assembly/index.ts:23:26
                  (i32.const 24)
                 )
                 ;;@ assembly/index.ts:23:32
                 (i32.const 7)
                )
               )
               (tee_local $4
                ;;@ assembly/index.ts:23:35
                (i32.const 0)
               )
               (i32.gt_s
                (get_local $2)
                (i32.const 0)
               )
              )
             )
             ;;@ assembly/index.ts:24:18
             (i32.const 24)
            )
            ;;@ assembly/index.ts:24:24
            (i32.and
             ;;@ assembly/index.ts:24:25
             (get_local $3)
             ;;@ assembly/index.ts:24:29
             (i32.const 16777215)
            )
           )
          )
         )
        )
        ;;@ assembly/index.ts:51:27
        (set_local $1
         (i32.add
          ;;@ assembly/index.ts:51:29
          (get_local $1)
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
     ;;@ assembly/index.ts:48:25
     (set_local $0
      (i32.add
       ;;@ assembly/index.ts:48:27
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
