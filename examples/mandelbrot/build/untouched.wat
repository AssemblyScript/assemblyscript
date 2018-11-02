(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $FF (func (param f64) (result f64)))
 (type $FFFF (func (param f64 f64 f64) (result f64)))
 (type $v (func))
 (import "env" "memory" (memory $0 0))
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (import "Math" "LN2" (global $~lib/bindings/Math/LN2 f64))
 (import "Math" "log" (func $~lib/bindings/Math/log (param f64) (result f64)))
 (global $assembly/index/NUM_COLORS i32 (i32.const 2048))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "computeLine" (func $assembly/index/computeLine))
 (func $assembly/index/clamp<f64> (; 1 ;) (type $FFFF) (param $0 f64) (param $1 f64) (param $2 f64) (result f64)
  ;;@ assembly/index.ts:55:43
  (f64.min
   ;;@ assembly/index.ts:55:13
   (f64.max
    ;;@ assembly/index.ts:55:17
    (get_local $0)
    ;;@ assembly/index.ts:55:24
    (get_local $1)
   )
   ;;@ assembly/index.ts:55:35
   (get_local $2)
  )
 )
 (func $assembly/index/computeLine (; 2 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 i32)
  (local $10 f64)
  (local $11 f64)
  (local $12 i32)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 i32)
  (local $19 f64)
  (local $20 i32)
  (local $21 f64)
  ;;@ assembly/index.ts:8:2
  (set_local $4
   ;;@ assembly/index.ts:8:19
   (f64.mul
    (f64.convert_u/i32
     (get_local $1)
    )
    ;;@ assembly/index.ts:8:28
    (f64.div
     ;;@ assembly/index.ts:8:29
     (f64.const 1)
     ;;@ assembly/index.ts:8:35
     (f64.const 1.6)
    )
   )
  )
  ;;@ assembly/index.ts:9:2
  (set_local $5
   ;;@ assembly/index.ts:9:19
   (f64.mul
    (f64.convert_u/i32
     (get_local $2)
    )
    ;;@ assembly/index.ts:9:28
    (f64.div
     ;;@ assembly/index.ts:9:29
     (f64.const 1)
     ;;@ assembly/index.ts:9:35
     (f64.const 2)
    )
   )
  )
  ;;@ assembly/index.ts:10:2
  (set_local $6
   ;;@ assembly/index.ts:10:19
   (f64.div
    (f64.const 10)
    ;;@ assembly/index.ts:10:26
    (f64.min
     ;;@ assembly/index.ts:10:30
     (f64.mul
      (f64.const 3)
      (f64.convert_u/i32
       ;;@ assembly/index.ts:10:34
       (get_local $1)
      )
     )
     ;;@ assembly/index.ts:10:41
     (f64.mul
      (f64.const 4)
      (f64.convert_u/i32
       ;;@ assembly/index.ts:10:45
       (get_local $2)
      )
     )
    )
   )
  )
  ;;@ assembly/index.ts:11:2
  (set_local $7
   ;;@ assembly/index.ts:11:19
   (f64.mul
    (f64.sub
     (f64.convert_u/i32
      ;;@ assembly/index.ts:11:20
      (get_local $0)
     )
     ;;@ assembly/index.ts:11:24
     (get_local $5)
    )
    ;;@ assembly/index.ts:11:38
    (get_local $6)
   )
  )
  ;;@ assembly/index.ts:12:2
  (set_local $8
   ;;@ assembly/index.ts:12:19
   (f64.mul
    (get_local $4)
    ;;@ assembly/index.ts:12:32
    (get_local $6)
   )
  )
  ;;@ assembly/index.ts:13:2
  (set_local $9
   ;;@ assembly/index.ts:13:19
   (i32.shl
    (i32.mul
     ;;@ assembly/index.ts:13:20
     (get_local $0)
     ;;@ assembly/index.ts:13:24
     (get_local $1)
    )
    ;;@ assembly/index.ts:13:34
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:14:2
  (set_local $10
   ;;@ assembly/index.ts:14:19
   (f64.div
    (f64.const 1)
    (f64.convert_u/i32
     ;;@ assembly/index.ts:14:25
     (get_local $3)
    )
   )
  )
  ;;@ assembly/index.ts:16:2
  (set_local $11
   ;;@ assembly/index.ts:16:22
   (f64.min
    ;;@ assembly/index.ts:16:26
    (f64.const 8)
    ;;@ assembly/index.ts:16:29
    (f64.convert_u/i32
     (get_local $3)
    )
   )
  )
  ;;@ assembly/index.ts:18:2
  (block $break|0
   ;;@ assembly/index.ts:18:7
   (set_local $12
    ;;@ assembly/index.ts:18:20
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/index.ts:18:23
      (i32.lt_u
       (get_local $12)
       ;;@ assembly/index.ts:18:27
       (get_local $1)
      )
     )
    )
    ;;@ assembly/index.ts:18:39
    (block
     ;;@ assembly/index.ts:19:4
     (set_local $13
      ;;@ assembly/index.ts:19:15
      (f64.sub
       (f64.mul
        (f64.convert_u/i32
         (get_local $12)
        )
        ;;@ assembly/index.ts:19:19
        (get_local $6)
       )
       ;;@ assembly/index.ts:19:27
       (get_local $8)
      )
     )
     (set_local $14
      ;;@ assembly/index.ts:22:13
      (f64.const 0)
     )
     (set_local $15
      ;;@ assembly/index.ts:22:23
      (f64.const 0)
     )
     ;;@ assembly/index.ts:23:4
     (set_local $18
      ;;@ assembly/index.ts:23:25
      (i32.const 0)
     )
     ;;@ assembly/index.ts:24:4
     (block $break|1
      (loop $continue|1
       (if
        ;;@ assembly/index.ts:24:11
        (f64.le
         (f64.add
          (tee_local $16
           ;;@ assembly/index.ts:24:19
           (f64.mul
            (get_local $14)
            ;;@ assembly/index.ts:24:24
            (get_local $14)
           )
          )
          ;;@ assembly/index.ts:24:30
          (tee_local $17
           ;;@ assembly/index.ts:24:38
           (f64.mul
            (get_local $15)
            ;;@ assembly/index.ts:24:43
            (get_local $15)
           )
          )
         )
         ;;@ assembly/index.ts:24:50
         (f64.const 4)
        )
        (block
         ;;@ assembly/index.ts:24:55
         (block
          ;;@ assembly/index.ts:25:6
          (set_local $15
           ;;@ assembly/index.ts:25:11
           (f64.add
            (f64.mul
             (f64.mul
              (f64.const 2)
              ;;@ assembly/index.ts:25:17
              (get_local $14)
             )
             ;;@ assembly/index.ts:25:22
             (get_local $15)
            )
            ;;@ assembly/index.ts:25:27
            (get_local $7)
           )
          )
          ;;@ assembly/index.ts:26:6
          (set_local $14
           ;;@ assembly/index.ts:26:11
           (f64.add
            (f64.sub
             (get_local $16)
             ;;@ assembly/index.ts:26:18
             (get_local $17)
            )
            ;;@ assembly/index.ts:26:25
            (get_local $13)
           )
          )
          ;;@ assembly/index.ts:27:6
          (if
           ;;@ assembly/index.ts:27:10
           (i32.ge_u
            (get_local $18)
            ;;@ assembly/index.ts:27:23
            (get_local $3)
           )
           ;;@ assembly/index.ts:27:30
           (br $break|1)
          )
          ;;@ assembly/index.ts:28:6
          (set_local $18
           (i32.add
            ;;@ assembly/index.ts:28:8
            (get_local $18)
            (i32.const 1)
           )
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     ;;@ assembly/index.ts:32:4
     (block $break|2
      (loop $continue|2
       (if
        ;;@ assembly/index.ts:32:11
        (f64.lt
         (f64.convert_u/i32
          (get_local $18)
         )
         ;;@ assembly/index.ts:32:23
         (get_local $11)
        )
        (block
         ;;@ assembly/index.ts:32:38
         (block
          ;;@ assembly/index.ts:33:6
          (set_local $19
           ;;@ assembly/index.ts:33:18
           (f64.add
            (f64.sub
             (f64.mul
              (get_local $14)
              ;;@ assembly/index.ts:33:23
              (get_local $14)
             )
             ;;@ assembly/index.ts:33:28
             (f64.mul
              (get_local $15)
              ;;@ assembly/index.ts:33:33
              (get_local $15)
             )
            )
            ;;@ assembly/index.ts:33:38
            (get_local $13)
           )
          )
          ;;@ assembly/index.ts:34:6
          (set_local $15
           ;;@ assembly/index.ts:34:11
           (f64.add
            (f64.mul
             (f64.mul
              (f64.const 2)
              ;;@ assembly/index.ts:34:17
              (get_local $14)
             )
             ;;@ assembly/index.ts:34:22
             (get_local $15)
            )
            ;;@ assembly/index.ts:34:27
            (get_local $7)
           )
          )
          ;;@ assembly/index.ts:35:6
          (set_local $14
           ;;@ assembly/index.ts:35:11
           (get_local $19)
          )
          ;;@ assembly/index.ts:36:6
          (set_local $18
           (i32.add
            ;;@ assembly/index.ts:36:8
            (get_local $18)
            (i32.const 1)
           )
          )
         )
         (br $continue|2)
        )
       )
      )
     )
     ;;@ assembly/index.ts:42:4
     (set_local $20
      ;;@ assembly/index.ts:42:14
      (i32.sub
       (get_global $assembly/index/NUM_COLORS)
       ;;@ assembly/index.ts:42:27
       (i32.const 1)
      )
     )
     ;;@ assembly/index.ts:43:4
     (set_local $19
      ;;@ assembly/index.ts:43:14
      (f64.add
       (f64.mul
        (get_local $14)
        ;;@ assembly/index.ts:43:19
        (get_local $14)
       )
       ;;@ assembly/index.ts:43:24
       (f64.mul
        (get_local $15)
        ;;@ assembly/index.ts:43:29
        (get_local $15)
       )
      )
     )
     ;;@ assembly/index.ts:44:4
     (if
      ;;@ assembly/index.ts:44:8
      (f64.gt
       (get_local $19)
       ;;@ assembly/index.ts:44:14
       (f64.const 1)
      )
      ;;@ assembly/index.ts:44:19
      (block
       ;;@ assembly/index.ts:45:6
       (set_local $21
        ;;@ assembly/index.ts:45:17
        (f64.mul
         ;;@ assembly/index.ts:45:22
         (call $~lib/bindings/Math/log
          ;;@ assembly/index.ts:45:26
          (f64.mul
           (f64.const 0.5)
           ;;@ assembly/index.ts:45:37
           (call $~lib/bindings/Math/log
            ;;@ assembly/index.ts:45:41
            (get_local $19)
           )
          )
         )
         ;;@ assembly/index.ts:45:49
         (f64.div
          ;;@ assembly/index.ts:45:50
          (f64.const 1)
          ;;@ assembly/index.ts:45:56
          (get_global $~lib/bindings/Math/LN2)
         )
        )
       )
       ;;@ assembly/index.ts:46:6
       (set_local $20
        ;;@ assembly/index.ts:46:12
        (i32.trunc_u/f64
         ;;@ assembly/index.ts:46:18
         (f64.mul
          (f64.convert_s/i32
           (i32.sub
            ;;@ assembly/index.ts:46:19
            (get_global $assembly/index/NUM_COLORS)
            ;;@ assembly/index.ts:46:32
            (i32.const 1)
           )
          )
          ;;@ assembly/index.ts:46:37
          (call $assembly/index/clamp<f64>
           ;;@ assembly/index.ts:46:43
           (f64.mul
            (f64.sub
             (f64.convert_u/i32
              ;;@ assembly/index.ts:46:44
              (i32.add
               (get_local $18)
               ;;@ assembly/index.ts:46:56
               (i32.const 1)
              )
             )
             ;;@ assembly/index.ts:46:60
             (get_local $21)
            )
            ;;@ assembly/index.ts:46:68
            (get_local $10)
           )
           ;;@ assembly/index.ts:46:78
           (f64.const 0)
           ;;@ assembly/index.ts:46:83
           (f64.const 1)
          )
         )
        )
       )
      )
     )
     ;;@ assembly/index.ts:48:4
     (i32.store16
      ;;@ assembly/index.ts:48:15
      (i32.add
       (get_local $9)
       ;;@ assembly/index.ts:48:24
       (i32.shl
        ;;@ assembly/index.ts:48:25
        (get_local $12)
        ;;@ assembly/index.ts:48:30
        (i32.const 1)
       )
      )
      ;;@ assembly/index.ts:48:34
      (get_local $20)
     )
    )
    ;;@ assembly/index.ts:18:34
    (set_local $12
     (i32.add
      ;;@ assembly/index.ts:18:36
      (get_local $12)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $null (; 3 ;) (type $v)
 )
)
