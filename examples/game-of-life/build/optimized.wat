(module
 (type $iiv (func (param i32 i32)))
 (type $F (func (result f64)))
 (type $v (func))
 (type $iiFv (func (param i32 i32 f64)))
 (import "env" "RGB_ALIVE" (global $assembly/index/RGB_ALIVE i32))
 (import "env" "RGB_DEAD" (global $assembly/index/RGB_DEAD i32))
 (import "env" "BIT_ROT" (global $assembly/index/BIT_ROT i32))
 (import "JSMath" "random" (func $~lib/math/JSMath.random (result f64)))
 (import "env" "memory" (memory $0 1))
 (global $assembly/index/w (mut i32) (i32.const 0))
 (global $assembly/index/h (mut i32) (i32.const 0))
 (global $assembly/index/s (mut i32) (i32.const 0))
 (export "init" (func $assembly/index/init))
 (export "step" (func $assembly/index/step))
 (export "fill" (func $assembly/index/fill))
 (export "memory" (memory $0))
 (func $assembly/index/init (; 1 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  ;;@ assembly/index.ts:31:2
  (set_global $assembly/index/w
   ;;@ assembly/index.ts:31:6
   (get_local $0)
  )
  ;;@ assembly/index.ts:32:2
  (set_global $assembly/index/h
   ;;@ assembly/index.ts:32:6
   (get_local $1)
  )
  ;;@ assembly/index.ts:33:2
  (set_global $assembly/index/s
   ;;@ assembly/index.ts:33:6
   (i32.mul
    (get_local $0)
    ;;@ assembly/index.ts:33:14
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:36:7
  (set_local $0
   ;;@ assembly/index.ts:36:15
   (i32.const 0)
  )
  (loop $continue|0
   (if
    ;;@ assembly/index.ts:36:18
    (i32.lt_s
     (get_local $0)
     ;;@ assembly/index.ts:36:22
     (get_global $assembly/index/h)
    )
    (block
     ;;@ assembly/index.ts:37:9
     (set_local $1
      ;;@ assembly/index.ts:37:17
      (i32.const 0)
     )
     (loop $continue|1
      (if
       ;;@ assembly/index.ts:37:20
       (i32.lt_s
        (get_local $1)
        ;;@ assembly/index.ts:37:24
        (get_global $assembly/index/w)
       )
       (block
        (set_local $2
         ;;@ assembly/index.ts:38:16
         (if (result i32)
          (f64.gt
           ;;@ assembly/index.ts:38:21
           (call $~lib/math/JSMath.random)
           ;;@ assembly/index.ts:38:32
           (f64.const 0.1)
          )
          ;;@ assembly/index.ts:38:38
          (i32.and
           (get_global $assembly/index/RGB_DEAD)
           ;;@ assembly/index.ts:38:49
           (i32.const 16777215)
          )
          ;;@ assembly/index.ts:38:62
          (i32.or
           (get_global $assembly/index/RGB_ALIVE)
           ;;@ assembly/index.ts:38:74
           (i32.const -16777216)
          )
         )
        )
        ;;@ assembly/index.ts:19:2
        (i32.store
         ;;@ assembly/index.ts:19:13
         (i32.shl
          (i32.add
           ;;@ assembly/index.ts:19:14
           (i32.add
            (get_global $assembly/index/s)
            ;;@ assembly/index.ts:19:18
            (i32.mul
             (get_local $0)
             ;;@ assembly/index.ts:19:22
             (get_global $assembly/index/w)
            )
           )
           ;;@ assembly/index.ts:19:26
           (get_local $1)
          )
          ;;@ assembly/index.ts:19:32
          (i32.const 2)
         )
         ;;@ assembly/index.ts:19:35
         (get_local $2)
        )
        ;;@ assembly/index.ts:37:27
        (set_local $1
         (i32.add
          ;;@ assembly/index.ts:37:29
          (get_local $1)
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
     ;;@ assembly/index.ts:36:25
     (set_local $0
      (i32.add
       ;;@ assembly/index.ts:36:27
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
  (set_local $5
   ;;@ assembly/index.ts:45:12
   (i32.sub
    (get_global $assembly/index/h)
    ;;@ assembly/index.ts:45:16
    (i32.const 1)
   )
  )
  (set_local $6
   ;;@ assembly/index.ts:46:12
   (i32.sub
    (get_global $assembly/index/w)
    ;;@ assembly/index.ts:46:16
    (i32.const 1)
   )
  )
  (loop $continue|0
   (if
    ;;@ assembly/index.ts:50:18
    (i32.lt_s
     (get_local $2)
     ;;@ assembly/index.ts:50:22
     (get_global $assembly/index/h)
    )
    (block
     (set_local $7
      ;;@ assembly/index.ts:51:14
      (if (result i32)
       (get_local $2)
       ;;@ assembly/index.ts:51:29
       (i32.sub
        (get_local $2)
        ;;@ assembly/index.ts:51:33
        (i32.const 1)
       )
       ;;@ assembly/index.ts:51:23
       (get_local $5)
      )
     )
     (set_local $8
      ;;@ assembly/index.ts:52:14
      (if (result i32)
       (i32.eq
        (get_local $2)
        ;;@ assembly/index.ts:52:19
        (get_local $5)
       )
       ;;@ assembly/index.ts:52:25
       (i32.const 0)
       ;;@ assembly/index.ts:52:29
       (i32.add
        (get_local $2)
        ;;@ assembly/index.ts:52:33
        (i32.const 1)
       )
      )
     )
     ;;@ assembly/index.ts:53:9
     (set_local $1
      ;;@ assembly/index.ts:53:17
      (i32.const 0)
     )
     (loop $continue|1
      (if
       ;;@ assembly/index.ts:53:20
       (i32.lt_s
        (get_local $1)
        ;;@ assembly/index.ts:53:24
        (get_global $assembly/index/w)
       )
       (block
        ;;@ assembly/index.ts:59:6
        (set_local $0
         ;;@ assembly/index.ts:59:27
         (i32.add
          ;;@ assembly/index.ts:60:8
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
                     (tee_local $0
                      ;;@ assembly/index.ts:60:18
                      (get_local $7)
                     )
                     (get_global $assembly/index/w)
                    )
                    (tee_local $3
                     ;;@ assembly/index.ts:54:16
                     (if (result i32)
                      (get_local $1)
                      ;;@ assembly/index.ts:54:31
                      (i32.sub
                       (get_local $1)
                       ;;@ assembly/index.ts:54:35
                       (i32.const 1)
                      )
                      ;;@ assembly/index.ts:54:25
                      (get_local $6)
                     )
                    )
                   )
                   (i32.const 2)
                  )
                 )
                 ;;@ assembly/index.ts:60:25
                 (i32.const 1)
                )
                ;;@ assembly/index.ts:60:30
                (i32.and
                 (i32.load
                  (i32.shl
                   (i32.add
                    (i32.mul
                     ;;@ assembly/index.ts:60:40
                     (get_local $0)
                     (get_global $assembly/index/w)
                    )
                    ;;@ assembly/index.ts:60:35
                    (get_local $1)
                   )
                   (i32.const 2)
                  )
                 )
                 ;;@ assembly/index.ts:60:47
                 (i32.const 1)
                )
               )
               ;;@ assembly/index.ts:60:52
               (i32.and
                (i32.load
                 (i32.shl
                  (i32.add
                   (i32.mul
                    ;;@ assembly/index.ts:60:62
                    (get_local $0)
                    (get_global $assembly/index/w)
                   )
                   (tee_local $4
                    ;;@ assembly/index.ts:55:16
                    (if (result i32)
                     (i32.eq
                      (get_local $1)
                      ;;@ assembly/index.ts:55:21
                      (get_local $6)
                     )
                     ;;@ assembly/index.ts:55:27
                     (i32.const 0)
                     ;;@ assembly/index.ts:55:31
                     (i32.add
                      (get_local $1)
                      ;;@ assembly/index.ts:55:35
                      (i32.const 1)
                     )
                    )
                   )
                  )
                  (i32.const 2)
                 )
                )
                ;;@ assembly/index.ts:60:69
                (i32.const 1)
               )
              )
              ;;@ assembly/index.ts:61:8
              (i32.and
               (i32.load
                (i32.shl
                 (i32.add
                  (i32.mul
                   (tee_local $0
                    ;;@ assembly/index.ts:61:18
                    (get_local $2)
                   )
                   (get_global $assembly/index/w)
                  )
                  ;;@ assembly/index.ts:61:13
                  (get_local $3)
                 )
                 (i32.const 2)
                )
               )
               ;;@ assembly/index.ts:61:25
               (i32.const 1)
              )
             )
             ;;@ assembly/index.ts:61:52
             (i32.and
              (i32.load
               (i32.shl
                (i32.add
                 (i32.mul
                  ;;@ assembly/index.ts:61:62
                  (get_local $0)
                  (get_global $assembly/index/w)
                 )
                 ;;@ assembly/index.ts:61:57
                 (get_local $4)
                )
                (i32.const 2)
               )
              )
              ;;@ assembly/index.ts:61:69
              (i32.const 1)
             )
            )
            ;;@ assembly/index.ts:62:8
            (i32.and
             (i32.load
              (i32.shl
               (i32.add
                (i32.mul
                 (tee_local $0
                  ;;@ assembly/index.ts:62:18
                  (get_local $8)
                 )
                 (get_global $assembly/index/w)
                )
                ;;@ assembly/index.ts:62:13
                (get_local $3)
               )
               (i32.const 2)
              )
             )
             ;;@ assembly/index.ts:62:25
             (i32.const 1)
            )
           )
           ;;@ assembly/index.ts:62:30
           (i32.and
            (i32.load
             (i32.shl
              (i32.add
               (i32.mul
                ;;@ assembly/index.ts:62:40
                (get_local $0)
                (get_global $assembly/index/w)
               )
               ;;@ assembly/index.ts:62:35
               (get_local $1)
              )
              (i32.const 2)
             )
            )
            ;;@ assembly/index.ts:62:47
            (i32.const 1)
           )
          )
          ;;@ assembly/index.ts:62:52
          (i32.and
           (i32.load
            (i32.shl
             (i32.add
              (i32.mul
               ;;@ assembly/index.ts:62:62
               (get_local $0)
               (get_global $assembly/index/w)
              )
              ;;@ assembly/index.ts:62:57
              (get_local $4)
             )
             (i32.const 2)
            )
           )
           ;;@ assembly/index.ts:62:69
           (i32.const 1)
          )
         )
        )
        ;;@ assembly/index.ts:66:6
        (if
         ;;@ assembly/index.ts:66:10
         (i32.and
          ;;@ assembly/index.ts:65:6
          (tee_local $3
           ;;@ assembly/index.ts:13:9
           (i32.load
            ;;@ assembly/index.ts:13:19
            (i32.shl
             (i32.add
              ;;@ assembly/index.ts:13:20
              (i32.mul
               ;;@ assembly/index.ts:65:24
               (get_local $2)
               ;;@ assembly/index.ts:13:24
               (get_global $assembly/index/w)
              )
              ;;@ assembly/index.ts:65:21
              (get_local $1)
             )
             ;;@ assembly/index.ts:13:34
             (i32.const 2)
            )
           )
          )
          ;;@ assembly/index.ts:66:17
          (i32.const 1)
         )
         ;;@ assembly/index.ts:68:8
         (if
          ;;@ assembly/index.ts:68:12
          (i32.eq
           (i32.and
            ;;@ assembly/index.ts:68:13
            (get_local $0)
            ;;@ assembly/index.ts:68:30
            (i32.const 14)
           )
           ;;@ assembly/index.ts:68:41
           (i32.const 2)
          )
          (i32.store
           (i32.shl
            (i32.add
             (i32.add
              (get_global $assembly/index/s)
              (i32.mul
               ;;@ assembly/index.ts:68:56
               (get_local $2)
               (get_global $assembly/index/w)
              )
             )
             ;;@ assembly/index.ts:68:53
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
                  (tee_local $0
                   ;;@ assembly/index.ts:68:59
                   (get_local $3)
                  )
                  (i32.const 24)
                 )
                 (get_global $assembly/index/BIT_ROT)
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
             (get_local $0)
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
               ;;@ assembly/index.ts:70:20
               (get_local $2)
               (get_global $assembly/index/w)
              )
             )
             ;;@ assembly/index.ts:70:17
             (get_local $1)
            )
            (i32.const 2)
           )
           ;;@ assembly/index.ts:70:23
           (i32.or
            (get_global $assembly/index/RGB_DEAD)
            ;;@ assembly/index.ts:70:34
            (i32.const -16777216)
           )
          )
         )
         ;;@ assembly/index.ts:73:8
         (if
          ;;@ assembly/index.ts:73:12
          (i32.eq
           (get_local $0)
           ;;@ assembly/index.ts:73:30
           (i32.const 3)
          )
          (i32.store
           (i32.shl
            (i32.add
             (i32.add
              (get_global $assembly/index/s)
              (i32.mul
               ;;@ assembly/index.ts:73:40
               (get_local $2)
               (get_global $assembly/index/w)
              )
             )
             ;;@ assembly/index.ts:73:37
             (get_local $1)
            )
            (i32.const 2)
           )
           ;;@ assembly/index.ts:73:43
           (i32.or
            (get_global $assembly/index/RGB_ALIVE)
            ;;@ assembly/index.ts:73:55
            (i32.const -16777216)
           )
          )
          ;;@ assembly/index.ts:19:2
          (i32.store
           ;;@ assembly/index.ts:19:13
           (i32.shl
            (i32.add
             ;;@ assembly/index.ts:19:14
             (i32.add
              (get_global $assembly/index/s)
              ;;@ assembly/index.ts:19:18
              (i32.mul
               ;;@ assembly/index.ts:75:20
               (get_local $2)
               ;;@ assembly/index.ts:19:22
               (get_global $assembly/index/w)
              )
             )
             ;;@ assembly/index.ts:75:17
             (get_local $1)
            )
            ;;@ assembly/index.ts:19:32
            (i32.const 2)
           )
           ;;@ assembly/index.ts:26:12
           (i32.or
            (i32.shl
             ;;@ assembly/index.ts:25:2
             (tee_local $0
              ;;@ assembly/index.ts:25:10
              (select
               (tee_local $0
                ;;@ assembly/index.ts:25:19
                (i32.sub
                 (i32.shr_u
                  ;;@ assembly/index.ts:75:23
                  (get_local $3)
                  ;;@ assembly/index.ts:25:26
                  (i32.const 24)
                 )
                 ;;@ assembly/index.ts:25:32
                 (get_global $assembly/index/BIT_ROT)
                )
               )
               (tee_local $4
                ;;@ assembly/index.ts:25:41
                (i32.const 0)
               )
               (i32.gt_s
                (get_local $0)
                (i32.const 0)
               )
              )
             )
             ;;@ assembly/index.ts:26:18
             (i32.const 24)
            )
            ;;@ assembly/index.ts:26:24
            (i32.and
             ;;@ assembly/index.ts:26:25
             (get_local $3)
             ;;@ assembly/index.ts:26:29
             (i32.const 16777215)
            )
           )
          )
         )
        )
        ;;@ assembly/index.ts:53:27
        (set_local $1
         (i32.add
          ;;@ assembly/index.ts:53:29
          (get_local $1)
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
     ;;@ assembly/index.ts:50:25
     (set_local $2
      (i32.add
       ;;@ assembly/index.ts:50:27
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
 (func $assembly/index/fill (; 3 ;) (type $iiFv) (param $0 i32) (param $1 i32) (param $2 f64)
  (local $3 i32)
  (loop $continue|0
   (if
    ;;@ assembly/index.ts:83:19
    (i32.lt_s
     (get_local $3)
     ;;@ assembly/index.ts:83:24
     (get_global $assembly/index/w)
    )
    (block
     ;;@ assembly/index.ts:84:4
     (if
      ;;@ assembly/index.ts:84:8
      (f64.lt
       ;;@ assembly/index.ts:84:13
       (call $~lib/math/JSMath.random)
       ;;@ assembly/index.ts:84:24
       (get_local $2)
      )
      (i32.store
       (i32.shl
        (i32.add
         (i32.add
          (get_global $assembly/index/s)
          (i32.mul
           ;;@ assembly/index.ts:84:35
           (get_local $1)
           (get_global $assembly/index/w)
          )
         )
         ;;@ assembly/index.ts:84:31
         (get_local $3)
        )
        (i32.const 2)
       )
       ;;@ assembly/index.ts:84:38
       (i32.or
        (get_global $assembly/index/RGB_ALIVE)
        ;;@ assembly/index.ts:84:50
        (i32.const -16777216)
       )
      )
     )
     ;;@ assembly/index.ts:83:27
     (set_local $3
      (i32.add
       ;;@ assembly/index.ts:83:29
       (get_local $3)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ assembly/index.ts:86:7
  (set_local $3
   ;;@ assembly/index.ts:86:16
   (i32.const 0)
  )
  (loop $continue|1
   (if
    ;;@ assembly/index.ts:86:19
    (i32.lt_s
     (get_local $3)
     ;;@ assembly/index.ts:86:24
     (get_global $assembly/index/h)
    )
    (block
     ;;@ assembly/index.ts:87:4
     (if
      ;;@ assembly/index.ts:87:8
      (f64.lt
       ;;@ assembly/index.ts:87:13
       (call $~lib/math/JSMath.random)
       ;;@ assembly/index.ts:87:24
       (get_local $2)
      )
      ;;@ assembly/index.ts:19:2
      (i32.store
       ;;@ assembly/index.ts:19:13
       (i32.shl
        (i32.add
         ;;@ assembly/index.ts:19:14
         (i32.add
          (get_global $assembly/index/s)
          ;;@ assembly/index.ts:19:18
          (i32.mul
           ;;@ assembly/index.ts:87:34
           (get_local $3)
           ;;@ assembly/index.ts:19:22
           (get_global $assembly/index/w)
          )
         )
         ;;@ assembly/index.ts:87:31
         (get_local $0)
        )
        ;;@ assembly/index.ts:19:32
        (i32.const 2)
       )
       ;;@ assembly/index.ts:87:38
       (i32.or
        (get_global $assembly/index/RGB_ALIVE)
        ;;@ assembly/index.ts:87:50
        (i32.const -16777216)
       )
      )
     )
     ;;@ assembly/index.ts:86:27
     (set_local $3
      (i32.add
       ;;@ assembly/index.ts:86:29
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
