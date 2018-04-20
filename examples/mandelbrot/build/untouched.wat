(module
 (type $iiiv (func (param i32 i32 i32)))
 (type $FF (func (param f64) (result f64)))
 (import "JSMath" "log" (func $~lib/math/JSMath.log (param f64) (result f64)))
 (import "JSMath" "LN2" (global $~lib/math/JSMath.LN2 f64))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "compute" (func $assembly/index/compute))
 (export "memory" (memory $0))
 (func $assembly/index/compute (; 1 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 i32)
  (local $15 f64)
  (local $16 i32)
  (local $17 f64)
  ;;@ assembly/index.ts:5:2
  (set_local $3
   ;;@ assembly/index.ts:5:19
   (f64.div
    (f64.convert_u/i32
     (get_local $0)
    )
    ;;@ assembly/index.ts:5:27
    (f64.const 1.6)
   )
  )
  ;;@ assembly/index.ts:6:2
  (set_local $4
   ;;@ assembly/index.ts:6:19
   (f64.div
    (f64.convert_u/i32
     (get_local $1)
    )
    ;;@ assembly/index.ts:6:28
    (f64.const 2)
   )
  )
  ;;@ assembly/index.ts:7:2
  (set_local $5
   ;;@ assembly/index.ts:7:14
   (f64.div
    (f64.const 10)
    ;;@ assembly/index.ts:7:21
    (f64.min
     ;;@ assembly/index.ts:7:25
     (f64.mul
      (f64.const 3)
      (f64.convert_u/i32
       ;;@ assembly/index.ts:7:29
       (get_local $0)
      )
     )
     ;;@ assembly/index.ts:7:36
     (f64.mul
      (f64.const 4)
      (f64.convert_u/i32
       ;;@ assembly/index.ts:7:40
       (get_local $1)
      )
     )
    )
   )
  )
  ;;@ assembly/index.ts:8:2
  (block $break|0
   ;;@ assembly/index.ts:8:7
   (set_local $6
    ;;@ assembly/index.ts:8:20
    (i32.const 0)
   )
   (loop $continue|0
    (if
     ;;@ assembly/index.ts:8:23
     (i32.lt_u
      (get_local $6)
      ;;@ assembly/index.ts:8:27
      (get_local $1)
     )
     (block
      (block
       ;;@ assembly/index.ts:9:4
       (set_local $7
        ;;@ assembly/index.ts:9:20
        (f64.mul
         (f64.sub
          (f64.convert_u/i32
           ;;@ assembly/index.ts:9:21
           (get_local $6)
          )
          ;;@ assembly/index.ts:9:25
          (get_local $4)
         )
         ;;@ assembly/index.ts:9:39
         (get_local $5)
        )
       )
       ;;@ assembly/index.ts:10:4
       (block $break|1
        ;;@ assembly/index.ts:10:9
        (set_local $8
         ;;@ assembly/index.ts:10:22
         (i32.const 0)
        )
        (loop $continue|1
         (if
          ;;@ assembly/index.ts:10:25
          (i32.lt_u
           (get_local $8)
           ;;@ assembly/index.ts:10:29
           (get_local $0)
          )
          (block
           (block
            ;;@ assembly/index.ts:11:6
            (set_local $9
             ;;@ assembly/index.ts:11:17
             (f64.mul
              (f64.sub
               (f64.convert_u/i32
                ;;@ assembly/index.ts:11:18
                (get_local $8)
               )
               ;;@ assembly/index.ts:11:22
               (get_local $3)
              )
              ;;@ assembly/index.ts:11:36
              (get_local $5)
             )
            )
            ;;@ assembly/index.ts:14:6
            (block
             (set_local $10
              ;;@ assembly/index.ts:14:15
              (f64.const 0)
             )
             (set_local $11
              ;;@ assembly/index.ts:14:25
              (f64.const 0)
             )
            )
            ;;@ assembly/index.ts:15:6
            (set_local $14
             ;;@ assembly/index.ts:15:27
             (i32.const 0)
            )
            ;;@ assembly/index.ts:16:6
            (block $break|2
             (loop $continue|2
              (if
               ;;@ assembly/index.ts:16:13
               (f64.le
                (f64.add
                 (tee_local $12
                  ;;@ assembly/index.ts:16:21
                  (f64.mul
                   (get_local $10)
                   ;;@ assembly/index.ts:16:26
                   (get_local $10)
                  )
                 )
                 ;;@ assembly/index.ts:16:32
                 (tee_local $13
                  ;;@ assembly/index.ts:16:40
                  (f64.mul
                   (get_local $11)
                   ;;@ assembly/index.ts:16:45
                   (get_local $11)
                  )
                 )
                )
                ;;@ assembly/index.ts:16:52
                (f64.const 4)
               )
               (block
                (block
                 ;;@ assembly/index.ts:17:8
                 (set_local $15
                  ;;@ assembly/index.ts:17:16
                  (f64.add
                   (f64.sub
                    (get_local $12)
                    ;;@ assembly/index.ts:17:23
                    (get_local $13)
                   )
                   ;;@ assembly/index.ts:17:30
                   (get_local $9)
                  )
                 )
                 ;;@ assembly/index.ts:18:8
                 (set_local $11
                  ;;@ assembly/index.ts:18:13
                  (f64.add
                   (f64.mul
                    (f64.mul
                     (f64.const 2)
                     ;;@ assembly/index.ts:18:19
                     (get_local $10)
                    )
                    ;;@ assembly/index.ts:18:24
                    (get_local $11)
                   )
                   ;;@ assembly/index.ts:18:29
                   (get_local $7)
                  )
                 )
                 ;;@ assembly/index.ts:19:8
                 (set_local $10
                  ;;@ assembly/index.ts:19:13
                  (get_local $15)
                 )
                 ;;@ assembly/index.ts:20:8
                 (if
                  ;;@ assembly/index.ts:20:12
                  (i32.ge_u
                   (get_local $14)
                   ;;@ assembly/index.ts:20:25
                   (get_local $2)
                  )
                  ;;@ assembly/index.ts:20:32
                  (br $break|2)
                 )
                 ;;@ assembly/index.ts:21:8
                 (set_local $14
                  (i32.add
                   ;;@ assembly/index.ts:21:10
                   (get_local $14)
                   (i32.const 1)
                  )
                 )
                )
                (br $continue|2)
               )
              )
             )
            )
            ;;@ assembly/index.ts:25:6
            (block $break|3
             ;;@ assembly/index.ts:25:11
             (set_local $16
              ;;@ assembly/index.ts:25:19
              (i32.const 0)
             )
             (loop $continue|3
              (if
               ;;@ assembly/index.ts:25:22
               (i32.lt_s
                (get_local $16)
                ;;@ assembly/index.ts:25:26
                (i32.const 4)
               )
               (block
                (block
                 ;;@ assembly/index.ts:26:8
                 (set_local $15
                  ;;@ assembly/index.ts:26:16
                  (f64.add
                   (f64.sub
                    (tee_local $12
                     ;;@ assembly/index.ts:26:24
                     (f64.mul
                      (get_local $10)
                      ;;@ assembly/index.ts:26:29
                      (get_local $10)
                     )
                    )
                    ;;@ assembly/index.ts:26:35
                    (tee_local $13
                     ;;@ assembly/index.ts:26:43
                     (f64.mul
                      (get_local $11)
                      ;;@ assembly/index.ts:26:48
                      (get_local $11)
                     )
                    )
                   )
                   ;;@ assembly/index.ts:26:54
                   (get_local $9)
                  )
                 )
                 ;;@ assembly/index.ts:27:8
                 (set_local $11
                  ;;@ assembly/index.ts:27:13
                  (f64.add
                   (f64.mul
                    (f64.mul
                     (f64.const 2)
                     ;;@ assembly/index.ts:27:19
                     (get_local $10)
                    )
                    ;;@ assembly/index.ts:27:24
                    (get_local $11)
                   )
                   ;;@ assembly/index.ts:27:29
                   (get_local $7)
                  )
                 )
                 ;;@ assembly/index.ts:28:8
                 (set_local $10
                  ;;@ assembly/index.ts:28:13
                  (get_local $15)
                 )
                )
                ;;@ assembly/index.ts:25:29
                (set_local $16
                 (i32.add
                  ;;@ assembly/index.ts:25:31
                  (get_local $16)
                  (i32.const 1)
                 )
                )
                (br $continue|3)
               )
              )
             )
            )
            ;;@ assembly/index.ts:32:6
            (set_local $15
             ;;@ assembly/index.ts:32:22
             (f64.div
              ;;@ assembly/index.ts:32:29
              (call $~lib/math/JSMath.log
               ;;@ assembly/index.ts:32:40
               (call $~lib/math/JSMath.log
                ;;@ assembly/index.ts:32:44
                (f64.sqrt
                 ;;@ assembly/index.ts:32:49
                 (f64.add
                  (f64.mul
                   (get_local $10)
                   ;;@ assembly/index.ts:32:54
                   (get_local $10)
                  )
                  ;;@ assembly/index.ts:32:59
                  (f64.mul
                   (get_local $11)
                   ;;@ assembly/index.ts:32:64
                   (get_local $11)
                  )
                 )
                )
               )
              )
              ;;@ assembly/index.ts:32:72
              (get_global $~lib/math/JSMath.LN2)
             )
            )
            ;;@ assembly/index.ts:33:6
            (if
             ;;@ assembly/index.ts:33:10
             (f64.gt
              (get_local $15)
              ;;@ assembly/index.ts:33:17
              (f64.const 0)
             )
             ;;@ assembly/index.ts:33:20
             (block
              ;;@ assembly/index.ts:34:8
              (set_local $17
               ;;@ assembly/index.ts:34:24
               (f64.max
                ;;@ assembly/index.ts:34:33
                (f64.min
                 ;;@ assembly/index.ts:34:42
                 (f64.div
                  (f64.sub
                   ;;@ assembly/index.ts:34:43
                   (f64.convert_u/i32
                    ;;@ assembly/index.ts:34:49
                    (i32.add
                     (get_local $14)
                     ;;@ assembly/index.ts:34:61
                     (i32.const 1)
                    )
                   )
                   ;;@ assembly/index.ts:34:66
                   (get_local $15)
                  )
                  (f64.convert_u/i32
                   ;;@ assembly/index.ts:34:74
                   (get_local $2)
                  )
                 )
                 ;;@ assembly/index.ts:34:81
                 (f64.const 1)
                )
                ;;@ assembly/index.ts:34:87
                (f64.const 0)
               )
              )
              ;;@ assembly/index.ts:35:8
              (i32.store16
               ;;@ assembly/index.ts:35:19
               (i32.shl
                (i32.add
                 ;;@ assembly/index.ts:35:20
                 (i32.mul
                  (get_local $6)
                  ;;@ assembly/index.ts:35:24
                  (get_local $0)
                 )
                 ;;@ assembly/index.ts:35:32
                 (get_local $8)
                )
                ;;@ assembly/index.ts:35:38
                (i32.const 1)
               )
               ;;@ assembly/index.ts:35:41
               (i32.trunc_u/f64
                ;;@ assembly/index.ts:35:47
                (f64.mul
                 (f64.convert_u/i32
                  (i32.const 2047)
                 )
                 ;;@ assembly/index.ts:35:54
                 (get_local $17)
                )
               )
              )
             )
             ;;@ assembly/index.ts:37:8
             (i32.store16
              ;;@ assembly/index.ts:37:19
              (i32.shl
               (i32.add
                ;;@ assembly/index.ts:37:20
                (i32.mul
                 (get_local $6)
                 ;;@ assembly/index.ts:37:24
                 (get_local $0)
                )
                ;;@ assembly/index.ts:37:32
                (get_local $8)
               )
               ;;@ assembly/index.ts:37:38
               (i32.const 1)
              )
              ;;@ assembly/index.ts:37:41
              (i32.div_u
               (i32.mul
                (get_local $14)
                ;;@ assembly/index.ts:37:53
                (i32.const 2047)
               )
               ;;@ assembly/index.ts:37:60
               (get_local $2)
              )
             )
            )
           )
           ;;@ assembly/index.ts:10:36
           (set_local $8
            (i32.add
             ;;@ assembly/index.ts:10:38
             (get_local $8)
             (i32.const 1)
            )
           )
           (br $continue|1)
          )
         )
        )
       )
      )
      ;;@ assembly/index.ts:8:35
      (set_local $6
       (i32.add
        ;;@ assembly/index.ts:8:37
        (get_local $6)
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
