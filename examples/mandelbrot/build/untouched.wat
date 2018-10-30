(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $FF (func (param f64) (result f64)))
 (type $Fi (func (param f64) (result i32)))
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
 (func $~lib/builtins/isFinite<f64> (; 1 ;) (type $Fi) (param $0 f64) (result i32)
  ;;@ ~lib/builtins.ts:16:78
  (f64.eq
   ;;@ ~lib/builtins.ts:16:61
   (f64.sub
    (get_local $0)
    ;;@ ~lib/builtins.ts:16:69
    (get_local $0)
   )
   ;;@ ~lib/builtins.ts:16:78
   (f64.const 0)
  )
 )
 (func $assembly/index/clamp<f64> (; 2 ;) (type $FFFF) (param $0 f64) (param $1 f64) (param $2 f64) (result f64)
  ;;@ assembly/index.ts:51:43
  (f64.min
   ;;@ assembly/index.ts:51:13
   (f64.max
    ;;@ assembly/index.ts:51:17
    (get_local $0)
    ;;@ assembly/index.ts:51:24
    (get_local $1)
   )
   ;;@ assembly/index.ts:51:35
   (get_local $2)
  )
 )
 (func $assembly/index/computeLine (; 3 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 i32)
  (local $10 f64)
  (local $11 i32)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 i32)
  (local $18 f64)
  (local $19 f64)
  (local $20 i32)
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
  (set_local $8
   ;;@ assembly/index.ts:12:25
   (f64.mul
    (get_local $4)
    ;;@ assembly/index.ts:12:38
    (get_local $6)
   )
  )
  ;;@ assembly/index.ts:13:2
  (set_local $9
   ;;@ assembly/index.ts:13:14
   (i32.shl
    (i32.mul
     ;;@ assembly/index.ts:13:15
     (get_local $0)
     ;;@ assembly/index.ts:13:19
     (get_local $1)
    )
    ;;@ assembly/index.ts:13:29
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:14:2
  (set_local $10
   ;;@ assembly/index.ts:14:17
   (f64.div
    (f64.const 1)
    (f64.convert_u/i32
     ;;@ assembly/index.ts:14:23
     (get_local $3)
    )
   )
  )
  ;;@ assembly/index.ts:16:2
  (block $break|0
   ;;@ assembly/index.ts:16:7
   (set_local $11
    ;;@ assembly/index.ts:16:20
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/index.ts:16:23
      (i32.lt_u
       (get_local $11)
       ;;@ assembly/index.ts:16:27
       (get_local $1)
      )
     )
    )
    ;;@ assembly/index.ts:16:39
    (block
     ;;@ assembly/index.ts:17:4
     (set_local $12
      ;;@ assembly/index.ts:17:15
      (f64.sub
       (f64.mul
        (f64.convert_u/i32
         (get_local $11)
        )
        ;;@ assembly/index.ts:17:19
        (get_local $6)
       )
       ;;@ assembly/index.ts:17:27
       (get_local $8)
      )
     )
     (set_local $13
      ;;@ assembly/index.ts:20:13
      (f64.const 0)
     )
     (set_local $14
      ;;@ assembly/index.ts:20:23
      (f64.const 0)
     )
     ;;@ assembly/index.ts:21:4
     (set_local $17
      ;;@ assembly/index.ts:21:25
      (i32.const 0)
     )
     ;;@ assembly/index.ts:22:4
     (block $break|1
      (loop $continue|1
       (if
        ;;@ assembly/index.ts:22:11
        (f64.le
         (f64.add
          (tee_local $15
           ;;@ assembly/index.ts:22:19
           (f64.mul
            (get_local $13)
            ;;@ assembly/index.ts:22:24
            (get_local $13)
           )
          )
          ;;@ assembly/index.ts:22:30
          (tee_local $16
           ;;@ assembly/index.ts:22:38
           (f64.mul
            (get_local $14)
            ;;@ assembly/index.ts:22:43
            (get_local $14)
           )
          )
         )
         ;;@ assembly/index.ts:22:50
         (f64.const 4)
        )
        (block
         ;;@ assembly/index.ts:22:55
         (block
          ;;@ assembly/index.ts:23:6
          (set_local $18
           ;;@ assembly/index.ts:23:18
           (f64.add
            (f64.sub
             (get_local $15)
             ;;@ assembly/index.ts:23:25
             (get_local $16)
            )
            ;;@ assembly/index.ts:23:32
            (get_local $12)
           )
          )
          ;;@ assembly/index.ts:24:6
          (set_local $14
           ;;@ assembly/index.ts:24:11
           (f64.add
            (f64.mul
             (f64.mul
              (f64.const 2)
              ;;@ assembly/index.ts:24:17
              (get_local $13)
             )
             ;;@ assembly/index.ts:24:22
             (get_local $14)
            )
            ;;@ assembly/index.ts:24:27
            (get_local $7)
           )
          )
          ;;@ assembly/index.ts:25:6
          (set_local $13
           ;;@ assembly/index.ts:25:11
           (get_local $18)
          )
          ;;@ assembly/index.ts:26:6
          (if
           ;;@ assembly/index.ts:26:10
           (i32.ge_u
            (get_local $17)
            ;;@ assembly/index.ts:26:23
            (get_local $3)
           )
           ;;@ assembly/index.ts:26:30
           (br $break|1)
          )
          ;;@ assembly/index.ts:27:6
          (set_local $17
           (i32.add
            ;;@ assembly/index.ts:27:8
            (get_local $17)
            (i32.const 1)
           )
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     ;;@ assembly/index.ts:31:4
     (block $break|2
      ;;@ assembly/index.ts:31:9
      (set_local $18
       ;;@ assembly/index.ts:31:29
       (f64.min
        ;;@ assembly/index.ts:31:33
        (f64.const 8)
        ;;@ assembly/index.ts:31:36
        (f64.convert_u/i32
         (get_local $3)
        )
       )
      )
      (loop $repeat|2
       (br_if $break|2
        (i32.eqz
         ;;@ assembly/index.ts:31:44
         (f64.lt
          (f64.convert_u/i32
           (get_local $17)
          )
          ;;@ assembly/index.ts:31:56
          (get_local $18)
         )
        )
       )
       ;;@ assembly/index.ts:31:84
       (block
        ;;@ assembly/index.ts:32:6
        (set_local $19
         ;;@ assembly/index.ts:32:18
         (f64.add
          (f64.sub
           (f64.mul
            (get_local $13)
            ;;@ assembly/index.ts:32:23
            (get_local $13)
           )
           ;;@ assembly/index.ts:32:28
           (f64.mul
            (get_local $14)
            ;;@ assembly/index.ts:32:33
            (get_local $14)
           )
          )
          ;;@ assembly/index.ts:32:38
          (get_local $12)
         )
        )
        ;;@ assembly/index.ts:33:6
        (set_local $14
         ;;@ assembly/index.ts:33:11
         (f64.add
          (f64.mul
           (f64.mul
            (f64.const 2)
            ;;@ assembly/index.ts:33:17
            (get_local $13)
           )
           ;;@ assembly/index.ts:33:22
           (get_local $14)
          )
          ;;@ assembly/index.ts:33:27
          (get_local $7)
         )
        )
        ;;@ assembly/index.ts:34:6
        (set_local $13
         ;;@ assembly/index.ts:34:11
         (get_local $19)
        )
       )
       ;;@ assembly/index.ts:31:71
       (set_local $17
        (i32.add
         ;;@ assembly/index.ts:31:73
         (get_local $17)
         (i32.const 1)
        )
       )
       (br $repeat|2)
      )
     )
     ;;@ assembly/index.ts:40:4
     (set_local $18
      ;;@ assembly/index.ts:40:15
      (f64.mul
       ;;@ assembly/index.ts:40:20
       (call $~lib/bindings/Math/log
        ;;@ assembly/index.ts:40:24
        (f64.mul
         (f64.const 0.5)
         ;;@ assembly/index.ts:40:35
         (call $~lib/bindings/Math/log
          ;;@ assembly/index.ts:40:39
          (f64.add
           (f64.mul
            (get_local $13)
            ;;@ assembly/index.ts:40:44
            (get_local $13)
           )
           ;;@ assembly/index.ts:40:49
           (f64.mul
            (get_local $14)
            ;;@ assembly/index.ts:40:54
            (get_local $14)
           )
          )
         )
        )
       )
       ;;@ assembly/index.ts:40:61
       (f64.div
        ;;@ assembly/index.ts:40:62
        (f64.const 1)
        ;;@ assembly/index.ts:40:68
        (get_global $~lib/bindings/Math/LN2)
       )
      )
     )
     ;;@ assembly/index.ts:41:4
     (set_local $20
      ;;@ assembly/index.ts:41:15
      (if (result i32)
       (call $~lib/builtins/isFinite<f64>
        ;;@ assembly/index.ts:41:24
        (get_local $18)
       )
       ;;@ assembly/index.ts:42:8
       (i32.trunc_u/f64
        ;;@ assembly/index.ts:42:14
        (f64.mul
         (f64.convert_s/i32
          (i32.sub
           ;;@ assembly/index.ts:42:15
           (get_global $assembly/index/NUM_COLORS)
           ;;@ assembly/index.ts:42:28
           (i32.const 1)
          )
         )
         ;;@ assembly/index.ts:42:33
         (call $assembly/index/clamp<f64>
          ;;@ assembly/index.ts:42:39
          (f64.mul
           (f64.sub
            (f64.convert_u/i32
             ;;@ assembly/index.ts:42:40
             (i32.add
              (get_local $17)
              ;;@ assembly/index.ts:42:52
              (i32.const 1)
             )
            )
            ;;@ assembly/index.ts:42:56
            (get_local $18)
           )
           ;;@ assembly/index.ts:42:64
           (get_local $10)
          )
          ;;@ assembly/index.ts:42:74
          (f64.const 0)
          ;;@ assembly/index.ts:42:79
          (f64.const 1)
         )
        )
       )
       ;;@ assembly/index.ts:43:8
       (i32.sub
        (get_global $assembly/index/NUM_COLORS)
        ;;@ assembly/index.ts:43:21
        (i32.const 1)
       )
      )
     )
     ;;@ assembly/index.ts:44:4
     (i32.store16
      ;;@ assembly/index.ts:44:15
      (i32.add
       (get_local $9)
       ;;@ assembly/index.ts:44:23
       (i32.shl
        ;;@ assembly/index.ts:44:24
        (get_local $11)
        ;;@ assembly/index.ts:44:29
        (i32.const 1)
       )
      )
      ;;@ assembly/index.ts:44:33
      (get_local $20)
     )
    )
    ;;@ assembly/index.ts:16:34
    (set_local $11
     (i32.add
      ;;@ assembly/index.ts:16:36
      (get_local $11)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $null (; 4 ;) (type $v)
 )
)
