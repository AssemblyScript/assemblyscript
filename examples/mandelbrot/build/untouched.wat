(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $FF (func (param f64) (result f64)))
 (type $Fi (func (param f64) (result i32)))
 (type $FFFF (func (param f64 f64 f64) (result f64)))
 (import "JSMath" "log" (func $~lib/math/JSMath.log (param f64) (result f64)))
 (import "JSMath" "LN2" (global $~lib/math/JSMath.LN2 f64))
 (import "env" "memory" (memory $0 1))
 (global $assembly/index/NUM_COLORS i32 (i32.const 2048))
 (global $HEAP_BASE i32 (i32.const 4))
 (export "computeLine" (func $assembly/index/computeLine))
 (export "memory" (memory $0))
 (func $isFinite<f64> (; 1 ;) (type $Fi) (param $0 f64) (result i32)
  ;;@ ~lib/builtins.ts:20:26
  (return
   ;;@ ~lib/builtins.ts:20:9
   (f64.eq
    (f64.sub
     (get_local $0)
     ;;@ ~lib/builtins.ts:20:17
     (get_local $0)
    )
    ;;@ ~lib/builtins.ts:20:26
    (f64.const 0)
   )
  )
 )
 (func $assembly/index/clamp<f64> (; 2 ;) (type $FFFF) (param $0 f64) (param $1 f64) (param $2 f64) (result f64)
  ;;@ assembly/index.ts:46:43
  (return
   ;;@ assembly/index.ts:46:9
   (f64.min
    ;;@ assembly/index.ts:46:13
    (f64.max
     ;;@ assembly/index.ts:46:17
     (get_local $0)
     ;;@ assembly/index.ts:46:24
     (get_local $1)
    )
    ;;@ assembly/index.ts:46:35
    (get_local $2)
   )
  )
 )
 (func $assembly/index/computeLine (; 3 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
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
  (local $17 i32)
  ;;@ assembly/index.ts:8:2
  (set_local $4
   ;;@ assembly/index.ts:8:19
   (f64.div
    (f64.convert_u/i32
     (get_local $1)
    )
    ;;@ assembly/index.ts:8:27
    (f64.const 1.6)
   )
  )
  ;;@ assembly/index.ts:9:2
  (set_local $5
   ;;@ assembly/index.ts:9:19
   (f64.div
    (f64.convert_u/i32
     (get_local $2)
    )
    ;;@ assembly/index.ts:9:28
    (f64.const 2)
   )
  )
  ;;@ assembly/index.ts:10:2
  (set_local $6
   ;;@ assembly/index.ts:10:14
   (f64.div
    (f64.const 10)
    ;;@ assembly/index.ts:10:21
    (f64.min
     ;;@ assembly/index.ts:10:25
     (f64.mul
      (f64.const 3)
      (f64.convert_u/i32
       ;;@ assembly/index.ts:10:29
       (get_local $1)
      )
     )
     ;;@ assembly/index.ts:10:36
     (f64.mul
      (f64.const 4)
      (f64.convert_u/i32
       ;;@ assembly/index.ts:10:40
       (get_local $2)
      )
     )
    )
   )
  )
  ;;@ assembly/index.ts:11:2
  (set_local $7
   ;;@ assembly/index.ts:11:18
   (f64.mul
    (f64.sub
     (f64.convert_u/i32
      ;;@ assembly/index.ts:11:19
      (get_local $0)
     )
     ;;@ assembly/index.ts:11:23
     (get_local $5)
    )
    ;;@ assembly/index.ts:11:37
    (get_local $6)
   )
  )
  ;;@ assembly/index.ts:12:2
  (block $break|0
   ;;@ assembly/index.ts:12:7
   (set_local $8
    ;;@ assembly/index.ts:12:20
    (i32.const 0)
   )
   (loop $continue|0
    (if
     ;;@ assembly/index.ts:12:23
     (i32.lt_u
      (get_local $8)
      ;;@ assembly/index.ts:12:27
      (get_local $1)
     )
     (block
      (block
       ;;@ assembly/index.ts:13:4
       (set_local $9
        ;;@ assembly/index.ts:13:15
        (f64.mul
         (f64.sub
          (f64.convert_u/i32
           ;;@ assembly/index.ts:13:16
           (get_local $8)
          )
          ;;@ assembly/index.ts:13:20
          (get_local $4)
         )
         ;;@ assembly/index.ts:13:34
         (get_local $6)
        )
       )
       ;;@ assembly/index.ts:16:4
       (block
        (set_local $10
         ;;@ assembly/index.ts:16:13
         (f64.const 0)
        )
        (set_local $11
         ;;@ assembly/index.ts:16:23
         (f64.const 0)
        )
       )
       ;;@ assembly/index.ts:17:4
       (set_local $14
        ;;@ assembly/index.ts:17:25
        (i32.const 0)
       )
       ;;@ assembly/index.ts:18:4
       (block $break|1
        (loop $continue|1
         (if
          ;;@ assembly/index.ts:18:11
          (f64.le
           (f64.add
            (tee_local $12
             ;;@ assembly/index.ts:18:19
             (f64.mul
              (get_local $10)
              ;;@ assembly/index.ts:18:24
              (get_local $10)
             )
            )
            ;;@ assembly/index.ts:18:30
            (tee_local $13
             ;;@ assembly/index.ts:18:38
             (f64.mul
              (get_local $11)
              ;;@ assembly/index.ts:18:43
              (get_local $11)
             )
            )
           )
           ;;@ assembly/index.ts:18:50
           (f64.const 4)
          )
          (block
           (block
            ;;@ assembly/index.ts:19:6
            (set_local $15
             ;;@ assembly/index.ts:19:19
             (f64.add
              (f64.sub
               (get_local $12)
               ;;@ assembly/index.ts:19:26
               (get_local $13)
              )
              ;;@ assembly/index.ts:19:33
              (get_local $9)
             )
            )
            ;;@ assembly/index.ts:20:6
            (set_local $11
             ;;@ assembly/index.ts:20:11
             (f64.add
              (f64.mul
               (f64.mul
                (f64.const 2)
                ;;@ assembly/index.ts:20:17
                (get_local $10)
               )
               ;;@ assembly/index.ts:20:22
               (get_local $11)
              )
              ;;@ assembly/index.ts:20:27
              (get_local $7)
             )
            )
            ;;@ assembly/index.ts:21:6
            (set_local $10
             ;;@ assembly/index.ts:21:11
             (get_local $15)
            )
            ;;@ assembly/index.ts:22:6
            (if
             ;;@ assembly/index.ts:22:10
             (i32.ge_u
              (get_local $14)
              ;;@ assembly/index.ts:22:23
              (get_local $3)
             )
             ;;@ assembly/index.ts:22:30
             (br $break|1)
            )
            ;;@ assembly/index.ts:23:6
            (set_local $14
             (i32.add
              ;;@ assembly/index.ts:23:8
              (get_local $14)
              (i32.const 1)
             )
            )
           )
           (br $continue|1)
          )
         )
        )
       )
       ;;@ assembly/index.ts:27:4
       (block $break|2
        ;;@ assembly/index.ts:27:9
        (set_local $16
         ;;@ assembly/index.ts:27:17
         (i32.const 0)
        )
        (loop $continue|2
         (if
          ;;@ assembly/index.ts:27:20
          (i32.and
           (if (result i32)
            (tee_local $17
             (i32.lt_s
              (get_local $16)
              ;;@ assembly/index.ts:27:24
              (i32.const 5)
             )
            )
            ;;@ assembly/index.ts:27:29
            (i32.lt_u
             (get_local $14)
             ;;@ assembly/index.ts:27:41
             (get_local $3)
            )
            (get_local $17)
           )
           (i32.const 1)
          )
          (block
           (block
            ;;@ assembly/index.ts:28:6
            (set_local $15
             ;;@ assembly/index.ts:28:19
             (f64.add
              (f64.sub
               (f64.mul
                (get_local $10)
                ;;@ assembly/index.ts:28:24
                (get_local $10)
               )
               ;;@ assembly/index.ts:28:29
               (f64.mul
                (get_local $11)
                ;;@ assembly/index.ts:28:34
                (get_local $11)
               )
              )
              ;;@ assembly/index.ts:28:39
              (get_local $9)
             )
            )
            ;;@ assembly/index.ts:29:6
            (set_local $11
             ;;@ assembly/index.ts:29:11
             (f64.add
              (f64.mul
               (f64.mul
                (f64.const 2)
                ;;@ assembly/index.ts:29:17
                (get_local $10)
               )
               ;;@ assembly/index.ts:29:22
               (get_local $11)
              )
              ;;@ assembly/index.ts:29:27
              (get_local $7)
             )
            )
            ;;@ assembly/index.ts:30:6
            (set_local $10
             ;;@ assembly/index.ts:30:11
             (get_local $15)
            )
           )
           ;;@ assembly/index.ts:27:48
           (block
            (set_local $16
             (i32.add
              ;;@ assembly/index.ts:27:50
              (get_local $16)
              (i32.const 1)
             )
            )
            ;;@ assembly/index.ts:27:53
            (set_local $14
             (i32.add
              ;;@ assembly/index.ts:27:55
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
       ;;@ assembly/index.ts:34:4
       (set_local $15
        ;;@ assembly/index.ts:34:20
        (f64.div
         ;;@ assembly/index.ts:34:27
         (call $~lib/math/JSMath.log
          ;;@ assembly/index.ts:34:38
          (call $~lib/math/JSMath.log
           ;;@ assembly/index.ts:34:42
           (f64.sqrt
            ;;@ assembly/index.ts:34:47
            (f64.add
             (f64.mul
              (get_local $10)
              ;;@ assembly/index.ts:34:52
              (get_local $10)
             )
             ;;@ assembly/index.ts:34:57
             (f64.mul
              (get_local $11)
              ;;@ assembly/index.ts:34:62
              (get_local $11)
             )
            )
           )
          )
         )
         ;;@ assembly/index.ts:34:70
         (get_global $~lib/math/JSMath.LN2)
        )
       )
       ;;@ assembly/index.ts:35:4
       (i32.store16
        ;;@ assembly/index.ts:35:15
        (i32.shl
         (i32.add
          ;;@ assembly/index.ts:35:16
          (i32.mul
           (get_local $0)
           ;;@ assembly/index.ts:35:20
           (get_local $1)
          )
          ;;@ assembly/index.ts:35:28
          (get_local $8)
         )
         ;;@ assembly/index.ts:35:34
         (i32.const 1)
        )
        ;;@ assembly/index.ts:36:6
        (if (result i32)
         (call $isFinite<f64>
          ;;@ assembly/index.ts:36:15
          (get_local $15)
         )
         ;;@ assembly/index.ts:37:10
         (i32.trunc_u/f64
          ;;@ assembly/index.ts:37:16
          (f64.mul
           (f64.convert_s/i32
            (i32.sub
             ;;@ assembly/index.ts:37:17
             (i32.const 2048)
             ;;@ assembly/index.ts:37:30
             (i32.const 1)
            )
           )
           ;;@ assembly/index.ts:37:35
           (call $assembly/index/clamp<f64>
            ;;@ assembly/index.ts:37:41
            (f64.div
             (f64.sub
              (f64.convert_u/i32
               ;;@ assembly/index.ts:37:42
               (i32.add
                (get_local $14)
                ;;@ assembly/index.ts:37:54
                (i32.const 1)
               )
              )
              ;;@ assembly/index.ts:37:58
              (get_local $15)
             )
             (f64.convert_u/i32
              ;;@ assembly/index.ts:37:66
              (get_local $3)
             )
            )
            ;;@ assembly/index.ts:37:73
            (f64.const 0)
            ;;@ assembly/index.ts:37:78
            (f64.const 1)
           )
          )
         )
         ;;@ assembly/index.ts:38:10
         (i32.div_s
          (i32.mul
           (i32.sub
            ;;@ assembly/index.ts:38:11
            (i32.const 2048)
            ;;@ assembly/index.ts:38:24
            (i32.const 1)
           )
           ;;@ assembly/index.ts:38:29
           (get_local $14)
          )
          ;;@ assembly/index.ts:38:41
          (get_local $3)
         )
        )
       )
      )
      ;;@ assembly/index.ts:12:34
      (set_local $8
       (i32.add
        ;;@ assembly/index.ts:12:36
        (get_local $8)
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
