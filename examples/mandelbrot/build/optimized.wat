(module
 (type $iiiv (func (param i32 i32 i32)))
 (memory $0 1)
 (export "update" (func $assembly/index/update))
 (export "memory" (memory $0))
 (func $assembly/index/update (; 0 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  ;;@ assembly/index.ts:2:2
  (set_local $9
   ;;@ assembly/index.ts:2:19
   (f64.div
    (f64.convert_u/i32
     (get_local $0)
    )
    ;;@ assembly/index.ts:2:27
    (f64.const 1.6)
   )
  )
  ;;@ assembly/index.ts:3:2
  (set_local $10
   ;;@ assembly/index.ts:3:19
   (f64.div
    (f64.convert_u/i32
     (get_local $1)
    )
    ;;@ assembly/index.ts:3:28
    (f64.const 2)
   )
  )
  ;;@ assembly/index.ts:4:2
  (set_local $8
   ;;@ assembly/index.ts:4:14
   (f64.div
    (f64.const 4)
    (f64.convert_u/i32
     ;;@ assembly/index.ts:4:20
     (get_local $0)
    )
   )
  )
  (loop $continue|0
   (if
    ;;@ assembly/index.ts:5:23
    (i32.lt_u
     (get_local $5)
     ;;@ assembly/index.ts:5:27
     (get_local $1)
    )
    (block
     ;;@ assembly/index.ts:6:4
     (set_local $11
      ;;@ assembly/index.ts:6:20
      (f64.mul
       (f64.sub
        (f64.convert_u/i32
         ;;@ assembly/index.ts:6:21
         (get_local $5)
        )
        ;;@ assembly/index.ts:6:25
        (get_local $10)
       )
       ;;@ assembly/index.ts:6:39
       (get_local $8)
      )
     )
     ;;@ assembly/index.ts:7:9
     (set_local $6
      ;;@ assembly/index.ts:7:22
      (i32.const 0)
     )
     (loop $continue|1
      (if
       ;;@ assembly/index.ts:7:25
       (i32.lt_u
        (get_local $6)
        ;;@ assembly/index.ts:7:29
        (get_local $0)
       )
       (block
        ;;@ assembly/index.ts:8:6
        (set_local $12
         ;;@ assembly/index.ts:8:17
         (f64.mul
          (f64.sub
           (f64.convert_u/i32
            ;;@ assembly/index.ts:8:18
            (get_local $6)
           )
           ;;@ assembly/index.ts:8:22
           (get_local $9)
          )
          ;;@ assembly/index.ts:8:36
          (get_local $8)
         )
        )
        ;;@ assembly/index.ts:9:6
        (set_local $7
         ;;@ assembly/index.ts:9:22
         (i32.const 0)
        )
        ;;@ assembly/index.ts:10:6
        (block $break|2
         (set_local $3
          ;;@ assembly/index.ts:10:20
          (f64.const 0)
         )
         (set_local $4
          ;;@ assembly/index.ts:10:30
          (f64.const 0)
         )
         (loop $continue|2
          (if
           ;;@ assembly/index.ts:10:35
           (f64.le
            (f64.add
             (f64.mul
              (get_local $3)
              ;;@ assembly/index.ts:10:40
              (get_local $3)
             )
             ;;@ assembly/index.ts:10:45
             (f64.mul
              (get_local $4)
              ;;@ assembly/index.ts:10:50
              (get_local $4)
             )
            )
            ;;@ assembly/index.ts:10:56
            (f64.const 4)
           )
           (block
            ;;@ assembly/index.ts:11:8
            (set_local $13
             ;;@ assembly/index.ts:11:16
             (f64.add
              (f64.sub
               (f64.mul
                (get_local $3)
                ;;@ assembly/index.ts:11:21
                (get_local $3)
               )
               ;;@ assembly/index.ts:11:26
               (f64.mul
                (get_local $4)
                ;;@ assembly/index.ts:11:31
                (get_local $4)
               )
              )
              ;;@ assembly/index.ts:11:36
              (get_local $12)
             )
            )
            ;;@ assembly/index.ts:12:8
            (set_local $4
             ;;@ assembly/index.ts:12:13
             (f64.add
              (f64.mul
               (f64.mul
                (f64.const 2)
                ;;@ assembly/index.ts:12:19
                (get_local $3)
               )
               ;;@ assembly/index.ts:12:24
               (get_local $4)
              )
              ;;@ assembly/index.ts:12:29
              (get_local $11)
             )
            )
            ;;@ assembly/index.ts:13:8
            (set_local $3
             ;;@ assembly/index.ts:13:13
             (get_local $13)
            )
            ;;@ assembly/index.ts:14:32
            (br_if $break|2
             ;;@ assembly/index.ts:14:12
             (i32.ge_u
              (tee_local $7
               (i32.add
                ;;@ assembly/index.ts:14:14
                (get_local $7)
                (i32.const 1)
               )
              )
              ;;@ assembly/index.ts:14:27
              (get_local $2)
             )
            )
            ;;@ assembly/index.ts:10:61
            (set_local $7
             (i32.add
              ;;@ assembly/index.ts:10:63
              (get_local $7)
              (i32.const 1)
             )
            )
            (br $continue|2)
           )
          )
         )
        )
        ;;@ assembly/index.ts:16:6
        (i32.store8
         ;;@ assembly/index.ts:16:16
         (i32.add
          (i32.mul
           (get_local $5)
           ;;@ assembly/index.ts:16:20
           (get_local $0)
          )
          ;;@ assembly/index.ts:16:28
          (get_local $6)
         )
         ;;@ assembly/index.ts:16:31
         (i32.div_u
          (i32.mul
           (get_local $7)
           ;;@ assembly/index.ts:16:43
           (i32.const 255)
          )
          ;;@ assembly/index.ts:16:49
          (get_local $2)
         )
        )
        ;;@ assembly/index.ts:7:36
        (set_local $6
         (i32.add
          ;;@ assembly/index.ts:7:38
          (get_local $6)
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
     ;;@ assembly/index.ts:5:35
     (set_local $5
      (i32.add
       ;;@ assembly/index.ts:5:37
       (get_local $5)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
)
