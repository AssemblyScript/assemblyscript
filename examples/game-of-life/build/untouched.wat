(module
 (type $iiFv (func (param i32 i32 f64)))
 (type $F (func (result f64)))
 (type $v (func))
 (import "JSMath" "random" (func $~lib/math/JSMath.random (result f64)))
 (import "env" "memory" (memory $0 1))
 (global $assembly/index/RGB_ALIVE i32 (i32.const 15110867))
 (global $assembly/index/RGB_DEAD i32 (i32.const 8723366))
 (global $assembly/index/w (mut i32) (i32.const 0))
 (global $assembly/index/h (mut i32) (i32.const 0))
 (global $assembly/index/s (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (export "init" (func $assembly/index/init))
 (export "step" (func $assembly/index/step))
 (export "memory" (memory $0))
 (func $assembly/index/init (; 1 ;) (type $iiFv) (param $0 i32) (param $1 i32) (param $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
  ;;@ assembly/index.ts:34:2
  (block $break|0
   ;;@ assembly/index.ts:34:7
   (set_local $3
    ;;@ assembly/index.ts:34:15
    (i32.const 0)
   )
   (loop $continue|0
    (if
     ;;@ assembly/index.ts:34:18
     (i32.lt_s
      (get_local $3)
      ;;@ assembly/index.ts:34:22
      (get_global $assembly/index/h)
     )
     (block
      (block
       (block $break|1
        ;;@ assembly/index.ts:35:9
        (set_local $4
         ;;@ assembly/index.ts:35:17
         (i32.const 0)
        )
        (loop $continue|1
         (if
          ;;@ assembly/index.ts:35:20
          (i32.lt_s
           (get_local $4)
           ;;@ assembly/index.ts:35:24
           (get_global $assembly/index/w)
          )
          (block
           (block
            (block $assembly/index/set|inlined.0
             (set_local $5
              ;;@ assembly/index.ts:36:10
              (get_local $4)
             )
             (set_local $6
              ;;@ assembly/index.ts:36:13
              (get_local $3)
             )
             (set_local $7
              ;;@ assembly/index.ts:36:16
              (if (result i32)
               (f64.gt
                ;;@ assembly/index.ts:36:23
                (call $~lib/math/JSMath.random)
                ;;@ assembly/index.ts:36:34
                (f64.const 0.15)
               )
               ;;@ assembly/index.ts:36:41
               (i32.and
                (i32.const 8723366)
                ;;@ assembly/index.ts:36:52
                (i32.const 16777215)
               )
               ;;@ assembly/index.ts:36:65
               (i32.or
                (i32.const 15110867)
                ;;@ assembly/index.ts:36:77
                (i32.const -16777216)
               )
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
                  (get_local $6)
                  ;;@ assembly/index.ts:17:22
                  (get_global $assembly/index/w)
                 )
                )
                ;;@ assembly/index.ts:17:26
                (get_local $5)
               )
               ;;@ assembly/index.ts:17:32
               (i32.const 2)
              )
              ;;@ assembly/index.ts:17:35
              (get_local $7)
             )
            )
           )
           ;;@ assembly/index.ts:35:27
           (set_local $4
            (i32.add
             ;;@ assembly/index.ts:35:29
             (get_local $4)
             (i32.const 1)
            )
           )
           (br $continue|1)
          )
         )
        )
       )
      )
      ;;@ assembly/index.ts:34:25
      (set_local $3
       (i32.add
        ;;@ assembly/index.ts:34:27
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
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
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  ;;@ assembly/index.ts:43:2
  (block
   (set_local $0
    ;;@ assembly/index.ts:43:12
    (i32.sub
     (get_global $assembly/index/h)
     ;;@ assembly/index.ts:43:16
     (i32.const 1)
    )
   )
   (set_local $1
    ;;@ assembly/index.ts:44:12
    (i32.sub
     (get_global $assembly/index/w)
     ;;@ assembly/index.ts:44:16
     (i32.const 1)
    )
   )
  )
  ;;@ assembly/index.ts:48:2
  (block $break|0
   ;;@ assembly/index.ts:48:7
   (set_local $2
    ;;@ assembly/index.ts:48:15
    (i32.const 0)
   )
   (loop $continue|0
    (if
     ;;@ assembly/index.ts:48:18
     (i32.lt_s
      (get_local $2)
      ;;@ assembly/index.ts:48:22
      (get_global $assembly/index/h)
     )
     (block
      (block
       (block
        (set_local $3
         ;;@ assembly/index.ts:50:14
         (if (result i32)
          (i32.eq
           (get_local $2)
           ;;@ assembly/index.ts:50:19
           (i32.const 0)
          )
          ;;@ assembly/index.ts:50:23
          (get_local $0)
          ;;@ assembly/index.ts:50:29
          (i32.sub
           (get_local $2)
           ;;@ assembly/index.ts:50:33
           (i32.const 1)
          )
         )
        )
        (set_local $4
         ;;@ assembly/index.ts:51:14
         (if (result i32)
          (i32.eq
           (get_local $2)
           ;;@ assembly/index.ts:51:19
           (get_local $0)
          )
          ;;@ assembly/index.ts:51:25
          (i32.const 0)
          ;;@ assembly/index.ts:51:29
          (i32.add
           (get_local $2)
           ;;@ assembly/index.ts:51:33
           (i32.const 1)
          )
         )
        )
       )
       ;;@ assembly/index.ts:52:4
       (block $break|1
        ;;@ assembly/index.ts:52:9
        (set_local $5
         ;;@ assembly/index.ts:52:17
         (i32.const 0)
        )
        (loop $continue|1
         (if
          ;;@ assembly/index.ts:52:20
          (i32.lt_s
           (get_local $5)
           ;;@ assembly/index.ts:52:24
           (get_global $assembly/index/w)
          )
          (block
           (block
            (block
             (set_local $6
              ;;@ assembly/index.ts:53:16
              (if (result i32)
               (i32.eq
                (get_local $5)
                ;;@ assembly/index.ts:53:21
                (i32.const 0)
               )
               ;;@ assembly/index.ts:53:25
               (get_local $1)
               ;;@ assembly/index.ts:53:31
               (i32.sub
                (get_local $5)
                ;;@ assembly/index.ts:53:35
                (i32.const 1)
               )
              )
             )
             (set_local $7
              ;;@ assembly/index.ts:54:16
              (if (result i32)
               (i32.eq
                (get_local $5)
                ;;@ assembly/index.ts:54:21
                (get_local $1)
               )
               ;;@ assembly/index.ts:54:27
               (i32.const 0)
               ;;@ assembly/index.ts:54:31
               (i32.add
                (get_local $5)
                ;;@ assembly/index.ts:54:35
                (i32.const 1)
               )
              )
             )
            )
            ;;@ assembly/index.ts:58:6
            (set_local $9
             ;;@ assembly/index.ts:58:15
             (block $assembly/index/get|inlined.0 (result i32)
              (set_local $8
               ;;@ assembly/index.ts:58:19
               (get_local $6)
              )
              (set_local $9
               ;;@ assembly/index.ts:58:24
               (get_local $3)
              )
              (br $assembly/index/get|inlined.0
               (i32.load
                (i32.shl
                 (i32.add
                  (i32.mul
                   (get_local $9)
                   (get_global $assembly/index/w)
                  )
                  (get_local $8)
                 )
                 (i32.const 2)
                )
               )
              )
             )
            )
            ;;@ assembly/index.ts:59:6
            (set_local $10
             ;;@ assembly/index.ts:59:15
             (block $assembly/index/get|inlined.1 (result i32)
              (set_local $8
               ;;@ assembly/index.ts:59:19
               (get_local $5)
              )
              (set_local $10
               ;;@ assembly/index.ts:59:24
               (get_local $3)
              )
              (br $assembly/index/get|inlined.1
               (i32.load
                (i32.shl
                 (i32.add
                  (i32.mul
                   (get_local $10)
                   (get_global $assembly/index/w)
                  )
                  (get_local $8)
                 )
                 (i32.const 2)
                )
               )
              )
             )
            )
            ;;@ assembly/index.ts:60:6
            (set_local $11
             ;;@ assembly/index.ts:60:15
             (block $assembly/index/get|inlined.2 (result i32)
              (set_local $8
               ;;@ assembly/index.ts:60:19
               (get_local $7)
              )
              (set_local $11
               ;;@ assembly/index.ts:60:24
               (get_local $3)
              )
              (br $assembly/index/get|inlined.2
               (i32.load
                (i32.shl
                 (i32.add
                  (i32.mul
                   (get_local $11)
                   (get_global $assembly/index/w)
                  )
                  (get_local $8)
                 )
                 (i32.const 2)
                )
               )
              )
             )
            )
            ;;@ assembly/index.ts:61:6
            (set_local $12
             ;;@ assembly/index.ts:61:15
             (block $assembly/index/get|inlined.3 (result i32)
              (set_local $8
               ;;@ assembly/index.ts:61:19
               (get_local $6)
              )
              (set_local $12
               ;;@ assembly/index.ts:61:24
               (get_local $2)
              )
              (br $assembly/index/get|inlined.3
               (i32.load
                (i32.shl
                 (i32.add
                  (i32.mul
                   (get_local $12)
                   (get_global $assembly/index/w)
                  )
                  (get_local $8)
                 )
                 (i32.const 2)
                )
               )
              )
             )
            )
            ;;@ assembly/index.ts:62:6
            (set_local $13
             ;;@ assembly/index.ts:62:15
             (block $assembly/index/get|inlined.4 (result i32)
              (set_local $8
               ;;@ assembly/index.ts:62:19
               (get_local $5)
              )
              (set_local $13
               ;;@ assembly/index.ts:62:24
               (get_local $2)
              )
              (br $assembly/index/get|inlined.4
               (i32.load
                (i32.shl
                 (i32.add
                  (i32.mul
                   (get_local $13)
                   (get_global $assembly/index/w)
                  )
                  (get_local $8)
                 )
                 (i32.const 2)
                )
               )
              )
             )
            )
            ;;@ assembly/index.ts:63:6
            (set_local $14
             ;;@ assembly/index.ts:63:15
             (block $assembly/index/get|inlined.5 (result i32)
              (set_local $8
               ;;@ assembly/index.ts:63:19
               (get_local $7)
              )
              (set_local $14
               ;;@ assembly/index.ts:63:24
               (get_local $2)
              )
              (br $assembly/index/get|inlined.5
               (i32.load
                (i32.shl
                 (i32.add
                  (i32.mul
                   (get_local $14)
                   (get_global $assembly/index/w)
                  )
                  (get_local $8)
                 )
                 (i32.const 2)
                )
               )
              )
             )
            )
            ;;@ assembly/index.ts:64:6
            (set_local $15
             ;;@ assembly/index.ts:64:15
             (block $assembly/index/get|inlined.6 (result i32)
              (set_local $8
               ;;@ assembly/index.ts:64:19
               (get_local $6)
              )
              (set_local $15
               ;;@ assembly/index.ts:64:24
               (get_local $4)
              )
              (br $assembly/index/get|inlined.6
               (i32.load
                (i32.shl
                 (i32.add
                  (i32.mul
                   (get_local $15)
                   (get_global $assembly/index/w)
                  )
                  (get_local $8)
                 )
                 (i32.const 2)
                )
               )
              )
             )
            )
            ;;@ assembly/index.ts:65:6
            (set_local $16
             ;;@ assembly/index.ts:65:15
             (block $assembly/index/get|inlined.7 (result i32)
              (set_local $8
               ;;@ assembly/index.ts:65:19
               (get_local $5)
              )
              (set_local $16
               ;;@ assembly/index.ts:65:24
               (get_local $4)
              )
              (br $assembly/index/get|inlined.7
               (i32.load
                (i32.shl
                 (i32.add
                  (i32.mul
                   (get_local $16)
                   (get_global $assembly/index/w)
                  )
                  (get_local $8)
                 )
                 (i32.const 2)
                )
               )
              )
             )
            )
            ;;@ assembly/index.ts:66:6
            (set_local $17
             ;;@ assembly/index.ts:66:15
             (block $assembly/index/get|inlined.8 (result i32)
              (set_local $8
               ;;@ assembly/index.ts:66:19
               (get_local $7)
              )
              (set_local $17
               ;;@ assembly/index.ts:66:24
               (get_local $4)
              )
              ;;@ assembly/index.ts:11:35
              (br $assembly/index/get|inlined.8
               ;;@ assembly/index.ts:11:9
               (i32.load
                ;;@ assembly/index.ts:11:19
                (i32.shl
                 (i32.add
                  ;;@ assembly/index.ts:11:20
                  (i32.mul
                   (get_local $17)
                   ;;@ assembly/index.ts:11:24
                   (get_global $assembly/index/w)
                  )
                  ;;@ assembly/index.ts:11:28
                  (get_local $8)
                 )
                 ;;@ assembly/index.ts:11:34
                 (i32.const 2)
                )
               )
              )
             )
            )
            ;;@ assembly/index.ts:69:6
            (set_local $8
             ;;@ assembly/index.ts:69:27
             (i32.add
              ;;@ assembly/index.ts:70:8
              (i32.add
               (i32.add
                (i32.add
                 (i32.add
                  (i32.add
                   (i32.add
                    (i32.and
                     ;;@ assembly/index.ts:70:9
                     (get_local $9)
                     ;;@ assembly/index.ts:70:14
                     (i32.const 1)
                    )
                    ;;@ assembly/index.ts:70:19
                    (i32.and
                     ;;@ assembly/index.ts:70:20
                     (get_local $10)
                     ;;@ assembly/index.ts:70:25
                     (i32.const 1)
                    )
                   )
                   ;;@ assembly/index.ts:70:30
                   (i32.and
                    ;;@ assembly/index.ts:70:31
                    (get_local $11)
                    ;;@ assembly/index.ts:70:36
                    (i32.const 1)
                   )
                  )
                  ;;@ assembly/index.ts:71:8
                  (i32.and
                   ;;@ assembly/index.ts:71:9
                   (get_local $12)
                   ;;@ assembly/index.ts:71:14
                   (i32.const 1)
                  )
                 )
                 ;;@ assembly/index.ts:71:30
                 (i32.and
                  ;;@ assembly/index.ts:71:31
                  (get_local $14)
                  ;;@ assembly/index.ts:71:36
                  (i32.const 1)
                 )
                )
                ;;@ assembly/index.ts:72:8
                (i32.and
                 ;;@ assembly/index.ts:72:9
                 (get_local $15)
                 ;;@ assembly/index.ts:72:14
                 (i32.const 1)
                )
               )
               ;;@ assembly/index.ts:72:19
               (i32.and
                ;;@ assembly/index.ts:72:20
                (get_local $16)
                ;;@ assembly/index.ts:72:25
                (i32.const 1)
               )
              )
              ;;@ assembly/index.ts:72:30
              (i32.and
               ;;@ assembly/index.ts:72:31
               (get_local $17)
               ;;@ assembly/index.ts:72:36
               (i32.const 1)
              )
             )
            )
            ;;@ assembly/index.ts:75:6
            (set_local $18
             ;;@ assembly/index.ts:75:18
             (i32.and
              (get_local $13)
              ;;@ assembly/index.ts:75:23
              (i32.const 1)
             )
            )
            ;;@ assembly/index.ts:76:6
            (if
             ;;@ assembly/index.ts:76:10
             (get_local $18)
             ;;@ assembly/index.ts:79:8
             (if
              ;;@ assembly/index.ts:79:12
              (i32.and
               (if (result i32)
                (tee_local $19
                 (i32.lt_u
                  (get_local $8)
                  ;;@ assembly/index.ts:79:29
                  (i32.const 2)
                 )
                )
                (get_local $19)
                ;;@ assembly/index.ts:79:34
                (i32.gt_u
                 (get_local $8)
                 ;;@ assembly/index.ts:79:51
                 (i32.const 3)
                )
               )
               (i32.const 1)
              )
              ;;@ assembly/index.ts:79:54
              (block $assembly/index/set|inlined.1
               (set_local $19
                ;;@ assembly/index.ts:79:58
                (get_local $5)
               )
               (set_local $20
                ;;@ assembly/index.ts:79:61
                (get_local $2)
               )
               (set_local $21
                ;;@ assembly/index.ts:79:64
                (i32.or
                 (i32.const 8723366)
                 ;;@ assembly/index.ts:79:75
                 (i32.const -16777216)
                )
               )
               (i32.store
                (i32.shl
                 (i32.add
                  (i32.add
                   (get_global $assembly/index/s)
                   (i32.mul
                    (get_local $20)
                    (get_global $assembly/index/w)
                   )
                  )
                  (get_local $19)
                 )
                 (i32.const 2)
                )
                (get_local $21)
               )
              )
              ;;@ assembly/index.ts:81:13
              (block $assembly/index/set_fade|inlined.0
               (set_local $21
                ;;@ assembly/index.ts:81:22
                (get_local $5)
               )
               (set_local $20
                ;;@ assembly/index.ts:81:25
                (get_local $2)
               )
               (set_local $19
                ;;@ assembly/index.ts:81:28
                (get_local $13)
               )
               (set_local $22
                (select
                 (tee_local $22
                  (i32.sub
                   (i32.shr_u
                    (get_local $19)
                    (i32.const 24)
                   )
                   (i32.const 7)
                  )
                 )
                 (tee_local $23
                  (i32.const 0)
                 )
                 (i32.gt_s
                  (get_local $22)
                  (get_local $23)
                 )
                )
               )
               (block $assembly/index/set|inlined.2
                (set_local $23
                 (get_local $21)
                )
                (set_local $24
                 (get_local $20)
                )
                (set_local $25
                 (i32.or
                  (i32.shl
                   (get_local $22)
                   (i32.const 24)
                  )
                  (i32.and
                   (get_local $19)
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
                     (get_local $24)
                     (get_global $assembly/index/w)
                    )
                   )
                   (get_local $23)
                  )
                  (i32.const 2)
                 )
                 (get_local $25)
                )
               )
              )
             )
             ;;@ assembly/index.ts:84:8
             (if
              ;;@ assembly/index.ts:84:12
              (i32.eq
               (get_local $8)
               ;;@ assembly/index.ts:84:30
               (i32.const 3)
              )
              ;;@ assembly/index.ts:84:33
              (block $assembly/index/set|inlined.3
               (set_local $22
                ;;@ assembly/index.ts:84:37
                (get_local $5)
               )
               (set_local $19
                ;;@ assembly/index.ts:84:40
                (get_local $2)
               )
               (set_local $20
                ;;@ assembly/index.ts:84:43
                (i32.or
                 (i32.const 15110867)
                 ;;@ assembly/index.ts:84:55
                 (i32.const -16777216)
                )
               )
               (i32.store
                (i32.shl
                 (i32.add
                  (i32.add
                   (get_global $assembly/index/s)
                   (i32.mul
                    (get_local $19)
                    (get_global $assembly/index/w)
                   )
                  )
                  (get_local $22)
                 )
                 (i32.const 2)
                )
                (get_local $20)
               )
              )
              ;;@ assembly/index.ts:86:13
              (block $assembly/index/set_fade|inlined.1
               (set_local $20
                ;;@ assembly/index.ts:86:22
                (get_local $5)
               )
               (set_local $19
                ;;@ assembly/index.ts:86:25
                (get_local $2)
               )
               (set_local $22
                ;;@ assembly/index.ts:86:28
                (get_local $13)
               )
               ;;@ assembly/index.ts:23:2
               (set_local $21
                ;;@ assembly/index.ts:23:10
                (select
                 (tee_local $21
                  ;;@ assembly/index.ts:23:19
                  (i32.sub
                   (i32.shr_u
                    ;;@ assembly/index.ts:23:20
                    (get_local $22)
                    ;;@ assembly/index.ts:23:26
                    (i32.const 24)
                   )
                   ;;@ assembly/index.ts:23:32
                   (i32.const 7)
                  )
                 )
                 (tee_local $25
                  ;;@ assembly/index.ts:23:35
                  (i32.const 0)
                 )
                 (i32.gt_s
                  (get_local $21)
                  (get_local $25)
                 )
                )
               )
               ;;@ assembly/index.ts:24:2
               (block $assembly/index/set|inlined.4
                (set_local $25
                 ;;@ assembly/index.ts:24:6
                 (get_local $20)
                )
                (set_local $24
                 ;;@ assembly/index.ts:24:9
                 (get_local $19)
                )
                (set_local $23
                 ;;@ assembly/index.ts:24:12
                 (i32.or
                  (i32.shl
                   ;;@ assembly/index.ts:24:13
                   (get_local $21)
                   ;;@ assembly/index.ts:24:18
                   (i32.const 24)
                  )
                  ;;@ assembly/index.ts:24:24
                  (i32.and
                   ;;@ assembly/index.ts:24:25
                   (get_local $22)
                   ;;@ assembly/index.ts:24:29
                   (i32.const 16777215)
                  )
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
                     (get_local $24)
                     ;;@ assembly/index.ts:17:22
                     (get_global $assembly/index/w)
                    )
                   )
                   ;;@ assembly/index.ts:17:26
                   (get_local $25)
                  )
                  ;;@ assembly/index.ts:17:32
                  (i32.const 2)
                 )
                 ;;@ assembly/index.ts:17:35
                 (get_local $23)
                )
               )
              )
             )
            )
           )
           ;;@ assembly/index.ts:52:27
           (set_local $5
            (i32.add
             ;;@ assembly/index.ts:52:29
             (get_local $5)
             (i32.const 1)
            )
           )
           (br $continue|1)
          )
         )
        )
       )
      )
      ;;@ assembly/index.ts:48:25
      (set_local $2
       (i32.add
        ;;@ assembly/index.ts:48:27
        (get_local $2)
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
