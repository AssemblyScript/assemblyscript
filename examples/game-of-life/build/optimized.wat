(module
 (type $iiv (func (param i32 i32)))
 (type $F (func (result f64)))
 (type $v (func))
 (type $iiFv (func (param i32 i32 f64)))
 (import "env" "BGR_ALIVE" (global $assembly/index/BGR_ALIVE i32))
 (import "env" "BGR_DEAD" (global $assembly/index/BGR_DEAD i32))
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
  ;;@ assembly/index.ts:33:2
  (set_global $assembly/index/w
   ;;@ assembly/index.ts:33:6
   (get_local $0)
  )
  ;;@ assembly/index.ts:34:2
  (set_global $assembly/index/h
   ;;@ assembly/index.ts:34:6
   (get_local $1)
  )
  ;;@ assembly/index.ts:35:2
  (set_global $assembly/index/s
   ;;@ assembly/index.ts:35:6
   (i32.mul
    (get_local $0)
    ;;@ assembly/index.ts:35:14
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:38:7
  (set_local $0
   ;;@ assembly/index.ts:38:15
   (i32.const 0)
  )
  (loop $continue|0
   (if
    ;;@ assembly/index.ts:38:18
    (i32.lt_s
     (get_local $0)
     ;;@ assembly/index.ts:38:22
     (get_global $assembly/index/h)
    )
    (block
     ;;@ assembly/index.ts:39:9
     (set_local $1
      ;;@ assembly/index.ts:39:17
      (i32.const 0)
     )
     (loop $continue|1
      (if
       ;;@ assembly/index.ts:39:20
       (i32.lt_s
        (get_local $1)
        ;;@ assembly/index.ts:39:24
        (get_global $assembly/index/w)
       )
       (block
        (set_local $2
         ;;@ assembly/index.ts:40:16
         (if (result i32)
          (f64.gt
           ;;@ assembly/index.ts:40:21
           (call $~lib/math/JSMath.random)
           ;;@ assembly/index.ts:40:32
           (f64.const 0.1)
          )
          ;;@ assembly/index.ts:40:38
          (i32.and
           (get_global $assembly/index/BGR_DEAD)
           ;;@ assembly/index.ts:40:49
           (i32.const 16777215)
          )
          ;;@ assembly/index.ts:40:62
          (i32.or
           (get_global $assembly/index/BGR_ALIVE)
           ;;@ assembly/index.ts:40:74
           (i32.const -16777216)
          )
         )
        )
        ;;@ assembly/index.ts:21:2
        (i32.store
         ;;@ assembly/index.ts:21:13
         (i32.shl
          (i32.add
           ;;@ assembly/index.ts:21:14
           (i32.add
            (get_global $assembly/index/s)
            ;;@ assembly/index.ts:21:18
            (i32.mul
             (get_local $0)
             ;;@ assembly/index.ts:21:22
             (get_global $assembly/index/w)
            )
           )
           ;;@ assembly/index.ts:21:26
           (get_local $1)
          )
          ;;@ assembly/index.ts:21:32
          (i32.const 2)
         )
         ;;@ assembly/index.ts:21:35
         (get_local $2)
        )
        ;;@ assembly/index.ts:39:27
        (set_local $1
         (i32.add
          ;;@ assembly/index.ts:39:29
          (get_local $1)
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
     ;;@ assembly/index.ts:38:25
     (set_local $0
      (i32.add
       ;;@ assembly/index.ts:38:27
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
   ;;@ assembly/index.ts:47:12
   (i32.sub
    (get_global $assembly/index/h)
    ;;@ assembly/index.ts:47:16
    (i32.const 1)
   )
  )
  (set_local $8
   ;;@ assembly/index.ts:48:12
   (i32.sub
    (get_global $assembly/index/w)
    ;;@ assembly/index.ts:48:16
    (i32.const 1)
   )
  )
  (loop $continue|0
   (if
    ;;@ assembly/index.ts:52:18
    (i32.lt_s
     (get_local $0)
     ;;@ assembly/index.ts:52:22
     (get_global $assembly/index/h)
    )
    (block
     (set_local $5
      ;;@ assembly/index.ts:53:14
      (if (result i32)
       (get_local $0)
       ;;@ assembly/index.ts:53:29
       (i32.sub
        (get_local $0)
        ;;@ assembly/index.ts:53:33
        (i32.const 1)
       )
       ;;@ assembly/index.ts:53:23
       (get_local $7)
      )
     )
     (set_local $6
      ;;@ assembly/index.ts:54:14
      (if (result i32)
       (i32.eq
        (get_local $0)
        ;;@ assembly/index.ts:54:19
        (get_local $7)
       )
       ;;@ assembly/index.ts:54:25
       (i32.const 0)
       ;;@ assembly/index.ts:54:29
       (i32.add
        (get_local $0)
        ;;@ assembly/index.ts:54:33
        (i32.const 1)
       )
      )
     )
     ;;@ assembly/index.ts:55:9
     (set_local $1
      ;;@ assembly/index.ts:55:17
      (i32.const 0)
     )
     (loop $continue|1
      (if
       ;;@ assembly/index.ts:55:20
       (i32.lt_s
        (get_local $1)
        ;;@ assembly/index.ts:55:24
        (get_global $assembly/index/w)
       )
       (block
        ;;@ assembly/index.ts:61:6
        (set_local $2
         ;;@ assembly/index.ts:61:27
         (i32.add
          ;;@ assembly/index.ts:62:8
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
                     (get_local $5)
                     (get_global $assembly/index/w)
                    )
                    (tee_local $2
                     ;;@ assembly/index.ts:56:16
                     (if (result i32)
                      (get_local $1)
                      ;;@ assembly/index.ts:56:31
                      (i32.sub
                       (get_local $1)
                       ;;@ assembly/index.ts:56:35
                       (i32.const 1)
                      )
                      ;;@ assembly/index.ts:56:25
                      (get_local $8)
                     )
                    )
                   )
                   (i32.const 2)
                  )
                 )
                 ;;@ assembly/index.ts:62:25
                 (i32.const 1)
                )
                ;;@ assembly/index.ts:62:30
                (i32.and
                 (i32.load
                  (i32.shl
                   (i32.add
                    (i32.mul
                     (get_local $5)
                     (get_global $assembly/index/w)
                    )
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
                    (get_local $5)
                    (get_global $assembly/index/w)
                   )
                   (tee_local $3
                    ;;@ assembly/index.ts:57:16
                    (if (result i32)
                     (i32.eq
                      (get_local $1)
                      ;;@ assembly/index.ts:57:21
                      (get_local $8)
                     )
                     ;;@ assembly/index.ts:57:27
                     (i32.const 0)
                     ;;@ assembly/index.ts:57:31
                     (i32.add
                      (get_local $1)
                      ;;@ assembly/index.ts:57:35
                      (i32.const 1)
                     )
                    )
                   )
                  )
                  (i32.const 2)
                 )
                )
                ;;@ assembly/index.ts:62:69
                (i32.const 1)
               )
              )
              ;;@ assembly/index.ts:63:8
              (i32.and
               (i32.load
                (i32.shl
                 (i32.add
                  (i32.mul
                   (get_local $0)
                   (get_global $assembly/index/w)
                  )
                  (get_local $2)
                 )
                 (i32.const 2)
                )
               )
               ;;@ assembly/index.ts:63:25
               (i32.const 1)
              )
             )
             ;;@ assembly/index.ts:63:52
             (i32.and
              (i32.load
               (i32.shl
                (i32.add
                 (i32.mul
                  (get_local $0)
                  (get_global $assembly/index/w)
                 )
                 (get_local $3)
                )
                (i32.const 2)
               )
              )
              ;;@ assembly/index.ts:63:69
              (i32.const 1)
             )
            )
            ;;@ assembly/index.ts:64:8
            (i32.and
             (i32.load
              (i32.shl
               (i32.add
                (i32.mul
                 (get_local $6)
                 (get_global $assembly/index/w)
                )
                (get_local $2)
               )
               (i32.const 2)
              )
             )
             ;;@ assembly/index.ts:64:25
             (i32.const 1)
            )
           )
           ;;@ assembly/index.ts:64:30
           (i32.and
            (i32.load
             (i32.shl
              (i32.add
               (i32.mul
                (get_local $6)
                (get_global $assembly/index/w)
               )
               (get_local $1)
              )
              (i32.const 2)
             )
            )
            ;;@ assembly/index.ts:64:47
            (i32.const 1)
           )
          )
          ;;@ assembly/index.ts:64:52
          (i32.and
           (i32.load
            (i32.shl
             (i32.add
              (i32.mul
               (get_local $6)
               (get_global $assembly/index/w)
              )
              (get_local $3)
             )
             (i32.const 2)
            )
           )
           ;;@ assembly/index.ts:64:69
           (i32.const 1)
          )
         )
        )
        ;;@ assembly/index.ts:68:6
        (if
         ;;@ assembly/index.ts:68:10
         (i32.and
          ;;@ assembly/index.ts:67:6
          (tee_local $4
           ;;@ assembly/index.ts:15:9
           (i32.load
            ;;@ assembly/index.ts:15:19
            (i32.shl
             (i32.add
              ;;@ assembly/index.ts:15:20
              (i32.mul
               (get_local $0)
               ;;@ assembly/index.ts:15:24
               (get_global $assembly/index/w)
              )
              ;;@ assembly/index.ts:15:28
              (get_local $1)
             )
             ;;@ assembly/index.ts:15:34
             (i32.const 2)
            )
           )
          )
          ;;@ assembly/index.ts:68:17
          (i32.const 1)
         )
         ;;@ assembly/index.ts:68:20
         (if
          ;;@ assembly/index.ts:70:12
          (i32.eq
           (i32.and
            ;;@ assembly/index.ts:70:13
            (get_local $2)
            ;;@ assembly/index.ts:70:30
            (i32.const 14)
           )
           ;;@ assembly/index.ts:70:41
           (i32.const 2)
          )
          (i32.store
           (i32.shl
            (i32.add
             (i32.add
              (get_global $assembly/index/s)
              (i32.mul
               (get_local $0)
               (get_global $assembly/index/w)
              )
             )
             (get_local $1)
            )
            (i32.const 2)
           )
           (i32.or
            (i32.shl
             (select
              (tee_local $2
               (i32.sub
                (i32.shr_u
                 (get_local $4)
                 (i32.const 24)
                )
                (get_global $assembly/index/BIT_ROT)
               )
              )
              (tee_local $3
               (i32.const 0)
              )
              (i32.gt_s
               (get_local $2)
               (i32.const 0)
              )
             )
             (i32.const 24)
            )
            (i32.and
             (get_local $4)
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
               (get_local $0)
               (get_global $assembly/index/w)
              )
             )
             (get_local $1)
            )
            (i32.const 2)
           )
           ;;@ assembly/index.ts:72:23
           (i32.or
            (get_global $assembly/index/BGR_DEAD)
            ;;@ assembly/index.ts:72:34
            (i32.const -16777216)
           )
          )
         )
         ;;@ assembly/index.ts:73:13
         (if
          ;;@ assembly/index.ts:75:12
          (i32.eq
           (get_local $2)
           ;;@ assembly/index.ts:75:30
           (i32.const 3)
          )
          (i32.store
           (i32.shl
            (i32.add
             (i32.add
              (get_global $assembly/index/s)
              (i32.mul
               (get_local $0)
               (get_global $assembly/index/w)
              )
             )
             (get_local $1)
            )
            (i32.const 2)
           )
           ;;@ assembly/index.ts:75:43
           (i32.or
            (get_global $assembly/index/BGR_ALIVE)
            ;;@ assembly/index.ts:75:55
            (i32.const -16777216)
           )
          )
          ;;@ assembly/index.ts:21:2
          (i32.store
           ;;@ assembly/index.ts:21:13
           (i32.shl
            (i32.add
             ;;@ assembly/index.ts:21:14
             (i32.add
              (get_global $assembly/index/s)
              ;;@ assembly/index.ts:21:18
              (i32.mul
               (get_local $0)
               ;;@ assembly/index.ts:21:22
               (get_global $assembly/index/w)
              )
             )
             ;;@ assembly/index.ts:21:26
             (get_local $1)
            )
            ;;@ assembly/index.ts:21:32
            (i32.const 2)
           )
           ;;@ assembly/index.ts:28:12
           (i32.or
            (i32.shl
             ;;@ assembly/index.ts:27:10
             (select
              (tee_local $2
               ;;@ assembly/index.ts:27:19
               (i32.sub
                (i32.shr_u
                 ;;@ assembly/index.ts:27:20
                 (get_local $4)
                 ;;@ assembly/index.ts:27:26
                 (i32.const 24)
                )
                ;;@ assembly/index.ts:27:32
                (get_global $assembly/index/BIT_ROT)
               )
              )
              (tee_local $3
               ;;@ assembly/index.ts:27:41
               (i32.const 0)
              )
              (i32.gt_s
               (get_local $2)
               (i32.const 0)
              )
             )
             ;;@ assembly/index.ts:28:18
             (i32.const 24)
            )
            ;;@ assembly/index.ts:28:24
            (i32.and
             ;;@ assembly/index.ts:28:25
             (get_local $4)
             ;;@ assembly/index.ts:28:29
             (i32.const 16777215)
            )
           )
          )
         )
        )
        ;;@ assembly/index.ts:55:27
        (set_local $1
         (i32.add
          ;;@ assembly/index.ts:55:29
          (get_local $1)
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
     ;;@ assembly/index.ts:52:25
     (set_local $0
      (i32.add
       ;;@ assembly/index.ts:52:27
       (get_local $0)
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
    ;;@ assembly/index.ts:85:19
    (i32.lt_s
     (get_local $3)
     ;;@ assembly/index.ts:85:24
     (get_global $assembly/index/w)
    )
    (block
     ;;@ assembly/index.ts:85:33
     (if
      ;;@ assembly/index.ts:86:8
      (f64.lt
       ;;@ assembly/index.ts:86:13
       (call $~lib/math/JSMath.random)
       ;;@ assembly/index.ts:86:24
       (get_local $2)
      )
      (i32.store
       (i32.shl
        (i32.add
         (i32.add
          (get_global $assembly/index/s)
          (i32.mul
           (get_local $1)
           (get_global $assembly/index/w)
          )
         )
         (get_local $3)
        )
        (i32.const 2)
       )
       ;;@ assembly/index.ts:86:38
       (i32.or
        (get_global $assembly/index/BGR_ALIVE)
        ;;@ assembly/index.ts:86:50
        (i32.const -16777216)
       )
      )
     )
     ;;@ assembly/index.ts:85:27
     (set_local $3
      (i32.add
       ;;@ assembly/index.ts:85:29
       (get_local $3)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ assembly/index.ts:88:7
  (set_local $3
   ;;@ assembly/index.ts:88:16
   (i32.const 0)
  )
  (loop $continue|1
   (if
    ;;@ assembly/index.ts:88:19
    (i32.lt_s
     (get_local $3)
     ;;@ assembly/index.ts:88:24
     (get_global $assembly/index/h)
    )
    (block
     ;;@ assembly/index.ts:88:33
     (if
      ;;@ assembly/index.ts:89:8
      (f64.lt
       ;;@ assembly/index.ts:89:13
       (call $~lib/math/JSMath.random)
       ;;@ assembly/index.ts:89:24
       (get_local $2)
      )
      ;;@ assembly/index.ts:21:2
      (i32.store
       ;;@ assembly/index.ts:21:13
       (i32.shl
        (i32.add
         ;;@ assembly/index.ts:21:14
         (i32.add
          (get_global $assembly/index/s)
          ;;@ assembly/index.ts:21:18
          (i32.mul
           (get_local $3)
           ;;@ assembly/index.ts:21:22
           (get_global $assembly/index/w)
          )
         )
         ;;@ assembly/index.ts:21:26
         (get_local $0)
        )
        ;;@ assembly/index.ts:21:32
        (i32.const 2)
       )
       ;;@ assembly/index.ts:89:38
       (i32.or
        (get_global $assembly/index/BGR_ALIVE)
        ;;@ assembly/index.ts:89:50
        (i32.const -16777216)
       )
      )
     )
     ;;@ assembly/index.ts:88:27
     (set_local $3
      (i32.add
       ;;@ assembly/index.ts:88:29
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
