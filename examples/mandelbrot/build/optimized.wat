(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $FF (func (param f64) (result f64)))
 (type $v (func))
 (import "env" "memory" (memory $0 0))
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (import "Math" "LN2" (global $~lib/bindings/Math/LN2 f64))
 (import "Math" "log" (func $~lib/bindings/Math/log (param f64) (result f64)))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "computeLine" (func $assembly/index/computeLine))
 (func $assembly/index/computeLine (; 1 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  ;;@ assembly/index.ts:11:2
  (set_local $11
   ;;@ assembly/index.ts:11:19
   (f64.mul
    (f64.sub
     (f64.convert_u/i32
      (get_local $0)
     )
     ;;@ assembly/index.ts:9:2
     (tee_local $6
      ;;@ assembly/index.ts:9:19
      (f64.mul
       (tee_local $4
        (f64.convert_u/i32
         (get_local $2)
        )
       )
       (f64.const 0.5)
      )
     )
    )
    ;;@ assembly/index.ts:10:2
    (tee_local $10
     ;;@ assembly/index.ts:10:19
     (f64.div
      (f64.const 10)
      ;;@ assembly/index.ts:10:26
      (f64.min
       ;;@ assembly/index.ts:10:30
       (f64.mul
        (f64.const 3)
        (tee_local $9
         (f64.convert_u/i32
          (get_local $1)
         )
        )
       )
       ;;@ assembly/index.ts:10:41
       (f64.mul
        (f64.const 4)
        (get_local $4)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/index.ts:12:2
  (set_local $13
   ;;@ assembly/index.ts:12:19
   (f64.mul
    ;;@ assembly/index.ts:8:19
    (f64.mul
     (get_local $9)
     (f64.const 0.625)
    )
    (get_local $10)
   )
  )
  ;;@ assembly/index.ts:13:2
  (set_local $0
   ;;@ assembly/index.ts:13:19
   (i32.shl
    (i32.mul
     (get_local $0)
     (get_local $1)
    )
    ;;@ assembly/index.ts:13:34
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:14:2
  (set_local $14
   ;;@ assembly/index.ts:14:19
   (f64.div
    (f64.const 1)
    (tee_local $6
     (f64.convert_u/i32
      (get_local $3)
     )
    )
   )
  )
  ;;@ assembly/index.ts:16:2
  (set_local $9
   ;;@ assembly/index.ts:16:22
   (f64.min
    ;;@ assembly/index.ts:16:26
    (f64.const 8)
    (get_local $6)
   )
  )
  ;;@ assembly/index.ts:18:2
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     ;;@ assembly/index.ts:18:23
     (i32.ge_u
      (get_local $8)
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:19:4
    (set_local $12
     ;;@ assembly/index.ts:19:15
     (f64.sub
      (f64.mul
       (f64.convert_u/i32
        (get_local $8)
       )
       (get_local $10)
      )
      (get_local $13)
     )
    )
    (set_local $4
     ;;@ assembly/index.ts:22:13
     (f64.const 0)
    )
    (set_local $5
     ;;@ assembly/index.ts:22:23
     (f64.const 0)
    )
    ;;@ assembly/index.ts:23:4
    (set_local $7
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
         (tee_local $15
          ;;@ assembly/index.ts:24:19
          (f64.mul
           (get_local $4)
           (get_local $4)
          )
         )
         ;;@ assembly/index.ts:24:30
         (tee_local $6
          ;;@ assembly/index.ts:24:38
          (f64.mul
           (get_local $5)
           (get_local $5)
          )
         )
        )
        ;;@ assembly/index.ts:24:50
        (f64.const 4)
       )
       (block
        ;;@ assembly/index.ts:25:6
        (set_local $5
         ;;@ assembly/index.ts:25:11
         (f64.add
          (f64.mul
           (f64.mul
            (f64.const 2)
            (get_local $4)
           )
           (get_local $5)
          )
          (get_local $11)
         )
        )
        ;;@ assembly/index.ts:26:6
        (set_local $4
         ;;@ assembly/index.ts:26:11
         (f64.add
          (f64.sub
           (get_local $15)
           (get_local $6)
          )
          (get_local $12)
         )
        )
        ;;@ assembly/index.ts:27:30
        (br_if $break|1
         ;;@ assembly/index.ts:27:10
         (i32.ge_u
          (get_local $7)
          (get_local $3)
         )
        )
        ;;@ assembly/index.ts:28:6
        (set_local $7
         (i32.add
          (get_local $7)
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    ;;@ assembly/index.ts:32:4
    (block $break|2
     (loop $repeat|2
      (br_if $break|2
       (i32.eqz
        ;;@ assembly/index.ts:32:11
        (f64.lt
         (f64.convert_u/i32
          (get_local $7)
         )
         (get_local $9)
        )
       )
      )
      ;;@ assembly/index.ts:33:6
      (set_local $6
       ;;@ assembly/index.ts:33:18
       (f64.add
        (f64.sub
         (f64.mul
          (get_local $4)
          (get_local $4)
         )
         ;;@ assembly/index.ts:33:28
         (f64.mul
          (get_local $5)
          (get_local $5)
         )
        )
        (get_local $12)
       )
      )
      ;;@ assembly/index.ts:34:6
      (set_local $5
       ;;@ assembly/index.ts:34:11
       (f64.add
        (f64.mul
         (f64.mul
          (f64.const 2)
          (get_local $4)
         )
         (get_local $5)
        )
        (get_local $11)
       )
      )
      ;;@ assembly/index.ts:35:6
      (set_local $4
       (get_local $6)
      )
      ;;@ assembly/index.ts:32:38
      (set_local $7
       (i32.add
        (get_local $7)
        (i32.const 1)
       )
      )
      (br $repeat|2)
     )
    )
    ;;@ assembly/index.ts:41:4
    (set_local $2
     (i32.const 2047)
    )
    ;;@ assembly/index.ts:43:4
    (if
     ;;@ assembly/index.ts:43:8
     (f64.gt
      ;;@ assembly/index.ts:42:4
      (tee_local $6
       ;;@ assembly/index.ts:42:14
       (f64.add
        (f64.mul
         (get_local $4)
         (get_local $4)
        )
        ;;@ assembly/index.ts:42:24
        (f64.mul
         (get_local $5)
         (get_local $5)
        )
       )
      )
      ;;@ assembly/index.ts:43:14
      (f64.const 1)
     )
     ;;@ assembly/index.ts:45:6
     (set_local $2
      ;;@ assembly/index.ts:45:12
      (i32.trunc_u/f64
       ;;@ assembly/index.ts:45:18
       (f64.mul
        (f64.const 2047)
        (f64.min
         (f64.max
          ;;@ assembly/index.ts:45:43
          (f64.mul
           (f64.sub
            (f64.convert_u/i32
             ;;@ assembly/index.ts:45:44
             (i32.add
              (get_local $7)
              ;;@ assembly/index.ts:45:56
              (i32.const 1)
             )
            )
            ;;@ assembly/index.ts:44:17
            (f64.mul
             ;;@ assembly/index.ts:44:22
             (call $~lib/bindings/Math/log
              ;;@ assembly/index.ts:44:26
              (f64.mul
               (f64.const 0.5)
               ;;@ assembly/index.ts:44:37
               (call $~lib/bindings/Math/log
                (get_local $6)
               )
              )
             )
             ;;@ assembly/index.ts:44:49
             (f64.div
              ;;@ assembly/index.ts:44:50
              (f64.const 1)
              ;;@ assembly/index.ts:44:56
              (get_global $~lib/bindings/Math/LN2)
             )
            )
           )
           (get_local $14)
          )
          (f64.const 0)
         )
         (f64.const 1)
        )
       )
      )
     )
    )
    ;;@ assembly/index.ts:47:4
    (i32.store16
     ;;@ assembly/index.ts:47:15
     (i32.add
      (get_local $0)
      ;;@ assembly/index.ts:47:24
      (i32.shl
       (get_local $8)
       ;;@ assembly/index.ts:47:30
       (i32.const 1)
      )
     )
     (get_local $2)
    )
    ;;@ assembly/index.ts:18:34
    (set_local $8
     (i32.add
      (get_local $8)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $null (; 2 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
