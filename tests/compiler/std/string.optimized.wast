(module
 (type $i (func (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiI (func (param i32 i32) (result i64)))
 (type $iiF (func (param i32 i32) (result f64)))
 (type $iF (func (param i32) (result f64)))
 (type $v (func))
 (global $std/string/str (mut i32) (i32.const 8))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00h\00i\00,\00 \00I\00\'\00m\00 \00a\00 \00s\00t\00r\00i\00n\00g")
 (data (i32.const 48) "\02\00\00\00h\00i")
 (data (i32.const 56) "\04\00\00\00n\00u\00l\00l")
 (data (i32.const 72) "\06\00\00\00s\00t\00r\00i\00n\00g")
 (data (i32.const 88) "\03\00\00\00I\00\'\00m")
 (data (i32.const 104) "\01\00\00\00,")
 (data (i32.const 112) "\01\00\00\00x")
 (data (i32.const 120) "\01\00\00\000")
 (data (i32.const 128) "\01\00\00\001")
 (data (i32.const 136) "\05\00\00\000\00b\001\000\001")
 (data (i32.const 152) "\05\00\00\000\00o\007\000\007")
 (data (i32.const 168) "\05\00\00\000\00x\00f\000\00f")
 (data (i32.const 184) "\05\00\00\000\00x\00F\000\00F")
 (data (i32.const 200) "\03\00\00\000\001\001")
 (data (i32.const 216) "\04\00\00\000\00x\001\00g")
 (data (i32.const 232) "\03\00\00\000\00.\001")
 (data (i32.const 248) "\03\00\00\00.\002\005")
 (data (i32.const 264) "\08\00\00\00.\001\00f\00o\00o\00b\00a\00r")
 (export "getString" (func $std/string/getString))
 (export "memory" (memory $0))
 (start $start)
 (func $std:string/String#charCodeAt (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (unreachable)
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.load
     (get_local $0)
    )
   )
   (return
    (i32.const -1)
   )
  )
  (i32.load16_u offset=4
   (i32.add
    (get_local $0)
    (i32.shl
     (get_local $1)
     (i32.const 1)
    )
   )
  )
 )
 (func $std:memory/compare_memory (; 1 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 0)
   )
  )
  (loop $continue|0
   (if
    (if (result i32)
     (get_local $2)
     (i32.eq
      (i32.load8_u
       (get_local $0)
      )
      (i32.load8_u
       (get_local $1)
      )
     )
     (get_local $2)
    )
    (block
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (if (result i32)
   (get_local $2)
   (i32.sub
    (i32.load8_u
     (get_local $0)
    )
    (i32.load8_u
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $std:string/String#startsWith (; 2 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (set_local $1
    (i32.const 56)
   )
  )
  (if
   (i32.gt_s
    (i32.add
     (tee_local $4
      (i32.load
       (get_local $1)
      )
     )
     (tee_local $2
      (select
       (tee_local $2
        (select
         (get_local $2)
         (i32.const 0)
         (i32.gt_s
          (get_local $2)
          (get_local $3)
         )
        )
       )
       (tee_local $3
        (tee_local $5
         (i32.load
          (get_local $0)
         )
        )
       )
       (i32.lt_s
        (get_local $2)
        (get_local $3)
       )
      )
     )
    )
    (get_local $5)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $std:memory/compare_memory
    (i32.add
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
     (i32.shl
      (get_local $2)
      (i32.const 1)
     )
    )
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (i32.shl
     (get_local $4)
     (i32.const 1)
    )
   )
  )
 )
 (func $std:string/String#endsWith (; 3 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.lt_s
    (tee_local $3
     (i32.sub
      (select
       (tee_local $2
        (select
         (get_local $2)
         (i32.const 0)
         (i32.gt_s
          (get_local $2)
          (get_local $3)
         )
        )
       )
       (tee_local $3
        (i32.load
         (get_local $0)
        )
       )
       (i32.lt_s
        (get_local $2)
        (get_local $3)
       )
      )
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
    )
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $std:memory/compare_memory
    (i32.add
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
     (i32.shl
      (get_local $3)
      (i32.const 1)
     )
    )
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (i32.shl
     (get_local $2)
     (i32.const 1)
    )
   )
  )
 )
 (func $std:string/String#indexOf (; 4 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (set_local $1
    (i32.const 56)
   )
  )
  (set_local $4
   (i32.load
    (get_local $1)
   )
  )
  (set_local $2
   (select
    (tee_local $2
     (select
      (get_local $2)
      (i32.const 0)
      (i32.gt_s
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (tee_local $3
     (tee_local $5
      (i32.load
       (get_local $0)
      )
     )
    )
    (i32.lt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  (loop $continue|0
   (if
    (i32.le_s
     (i32.add
      (get_local $2)
      (get_local $4)
     )
     (get_local $5)
    )
    (block
     (if
      (i32.eqz
       (call $std:memory/compare_memory
        (i32.add
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
         (i32.shl
          (get_local $2)
          (i32.const 1)
         )
        )
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
        (i32.shl
         (get_local $4)
         (i32.const 1)
        )
       )
      )
      (return
       (get_local $2)
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (i32.const -1)
 )
 (func $std/string/getString (; 5 ;) (type $i) (result i32)
  (get_global $std/string/str)
 )
 (func $std:string/parseI64 (; 6 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (if
   (i32.eqz
    (tee_local $3
     (i32.load
      (get_local $0)
     )
    )
   )
   (return
    (i64.const 0)
   )
  )
  (set_local $5
   (if (result i64)
    (i32.eq
     (tee_local $2
      (i32.load16_u offset=4
       (get_local $0)
      )
     )
     (i32.const 45)
    )
    (block (result i64)
     (if
      (i32.eqz
       (tee_local $3
        (i32.sub
         (get_local $3)
         (i32.const 1)
        )
       )
      )
      (return
       (i64.const 0)
      )
     )
     (set_local $2
      (i32.load16_u offset=4
       (tee_local $0
        (i32.add
         (get_local $0)
         (i32.const 2)
        )
       )
      )
     )
     (i64.const -1)
    )
    (if (result i64)
     (i32.eq
      (get_local $2)
      (i32.const 43)
     )
     (block (result i64)
      (if
       (i32.eqz
        (tee_local $3
         (i32.sub
          (get_local $3)
          (i32.const 1)
         )
        )
       )
       (return
        (i64.const 0)
       )
      )
      (set_local $2
       (i32.load16_u offset=4
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const 2)
         )
        )
       )
      )
      (i64.const 1)
     )
     (i64.const 1)
    )
   )
  )
  (if
   (get_local $1)
   (if
    (i32.and
     (select
      (i32.lt_s
       (get_local $1)
       (i32.const 2)
      )
      (i32.gt_s
       (get_local $1)
       (i32.const 36)
      )
      (i32.lt_s
       (get_local $1)
       (i32.const 2)
      )
     )
     (i32.const 1)
    )
    (return
     (i64.const 0)
    )
   )
   (set_local $1
    (if (result i32)
     (i32.and
      (select
       (i32.gt_s
        (get_local $3)
        (i32.const 2)
       )
       (i32.eq
        (get_local $2)
        (i32.const 48)
       )
       (i32.eq
        (get_local $2)
        (i32.const 48)
       )
      )
      (i32.const 1)
     )
     (block $break|0 (result i32)
      (block $case6|0
       (block $case5|0
        (block $case3|0
         (if
          (i32.eqz
           (i32.or
            (i32.eq
             (tee_local $2
              (i32.load16_u offset=4
               (i32.add
                (get_local $0)
                (i32.const 2)
               )
              )
             )
             (i32.const 66)
            )
            (i32.eq
             (get_local $2)
             (i32.const 98)
            )
           )
          )
          (block
           (br_if $case3|0
            (i32.or
             (i32.eq
              (get_local $2)
              (i32.const 79)
             )
             (i32.eq
              (get_local $2)
              (i32.const 111)
             )
            )
           )
           (br_if $case5|0
            (i32.or
             (i32.eq
              (get_local $2)
              (i32.const 88)
             )
             (i32.eq
              (get_local $2)
              (i32.const 120)
             )
            )
           )
           (br $case6|0)
          )
         )
         (set_local $0
          (i32.add
           (get_local $0)
           (i32.const 4)
          )
         )
         (set_local $3
          (i32.sub
           (get_local $3)
           (i32.const 2)
          )
         )
         (br $break|0
          (i32.const 2)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
        )
        (set_local $3
         (i32.sub
          (get_local $3)
          (i32.const 2)
         )
        )
        (br $break|0
         (i32.const 8)
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
       (set_local $3
        (i32.sub
         (get_local $3)
         (i32.const 2)
        )
       )
       (br $break|0
        (i32.const 16)
       )
      )
      (i32.const 10)
     )
     (i32.const 10)
    )
   )
  )
  (block $break|1
   (loop $continue|1
    (if
     (block (result i32)
      (set_local $3
       (i32.sub
        (tee_local $2
         (get_local $3)
        )
        (i32.const 1)
       )
      )
      (get_local $2)
     )
     (block
      (if
       (i32.and
        (select
         (i32.le_s
          (tee_local $2
           (i32.load16_u offset=4
            (get_local $0)
           )
          )
          (i32.const 57)
         )
         (i32.ge_s
          (get_local $2)
          (i32.const 48)
         )
         (i32.ge_s
          (get_local $2)
          (i32.const 48)
         )
        )
        (i32.const 1)
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 48)
        )
       )
       (if
        (i32.and
         (select
          (i32.le_s
           (get_local $2)
           (i32.const 90)
          )
          (i32.ge_s
           (get_local $2)
           (i32.const 65)
          )
          (i32.ge_s
           (get_local $2)
           (i32.const 65)
          )
         )
         (i32.const 1)
        )
        (set_local $2
         (i32.sub
          (get_local $2)
          (i32.const 55)
         )
        )
        (if
         (i32.and
          (select
           (i32.le_s
            (get_local $2)
            (i32.const 122)
           )
           (i32.ge_s
            (get_local $2)
            (i32.const 97)
           )
           (i32.ge_s
            (get_local $2)
            (i32.const 97)
           )
          )
          (i32.const 1)
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 87)
          )
         )
         (br $break|1)
        )
       )
      )
      (br_if $break|1
       (i32.ge_s
        (get_local $2)
        (get_local $1)
       )
      )
      (set_local $4
       (i64.add
        (i64.mul
         (get_local $4)
         (i64.extend_s/i32
          (get_local $1)
         )
        )
        (i64.extend_s/i32
         (get_local $2)
        )
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 2)
       )
      )
      (br $continue|1)
     )
    )
   )
  )
  (i64.mul
   (get_local $5)
   (get_local $4)
  )
 )
 (func $std:string/parseInt (; 7 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
   )
   (return
    (f64.const nan:0x8000000000000)
   )
  )
  (if
   (i32.eq
    (tee_local $3
     (i32.load16_u offset=4
      (get_local $0)
     )
    )
    (i32.const 45)
   )
   (if
    (i32.eqz
     (i32.sub
      (get_local $2)
      (i32.const 1)
     )
    )
    (return
     (f64.const nan:0x8000000000000)
    )
   )
   (if
    (i32.eq
     (get_local $3)
     (i32.const 43)
    )
    (if
     (i32.eqz
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (return
      (f64.const nan:0x8000000000000)
     )
    )
   )
  )
  (if
   (select
    (i32.and
     (select
      (i32.lt_s
       (get_local $1)
       (i32.const 2)
      )
      (i32.gt_s
       (get_local $1)
       (i32.const 36)
      )
      (i32.lt_s
       (get_local $1)
       (i32.const 2)
      )
     )
     (i32.const 1)
    )
    (get_local $1)
    (get_local $1)
   )
   (return
    (f64.const nan:0x8000000000000)
   )
  )
  (f64.convert_s/i64
   (call $std:string/parseI64
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $std:string/parseFloat (; 8 ;) (type $iF) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (if
   (i32.eqz
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
   )
   (return
    (f64.const nan:0x8000000000000)
   )
  )
  (set_local $5
   (if (result f64)
    (i32.eq
     (tee_local $0
      (i32.load16_u offset=4
       (tee_local $1
        (get_local $0)
       )
      )
     )
     (i32.const 45)
    )
    (block (result f64)
     (if
      (i32.eqz
       (tee_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (return
       (f64.const nan:0x8000000000000)
      )
     )
     (drop
      (i32.load16_u offset=4
       (tee_local $1
        (i32.add
         (get_local $1)
         (i32.const 2)
        )
       )
      )
     )
     (f64.const -1)
    )
    (if (result f64)
     (i32.eq
      (get_local $0)
      (i32.const 43)
     )
     (block (result f64)
      (if
       (i32.eqz
        (tee_local $2
         (i32.sub
          (get_local $2)
          (i32.const 1)
         )
        )
       )
       (return
        (f64.const nan:0x8000000000000)
       )
      )
      (drop
       (i32.load16_u offset=4
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const 2)
         )
        )
       )
      )
      (f64.const 1)
     )
     (f64.const 1)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (block (result i32)
      (set_local $2
       (i32.sub
        (tee_local $0
         (get_local $2)
        )
        (i32.const 1)
       )
      )
      (get_local $0)
     )
     (block
      (if
       (i32.eq
        (tee_local $0
         (i32.load16_u offset=4
          (get_local $1)
         )
        )
        (i32.const 46)
       )
       (block
        (set_local $1
         (i32.add
          (get_local $1)
          (i32.const 2)
         )
        )
        (set_local $4
         (f64.const 0.1)
        )
        (block $break|1
         (loop $continue|1
          (if
           (block (result i32)
            (set_local $2
             (i32.sub
              (tee_local $0
               (get_local $2)
              )
              (i32.const 1)
             )
            )
            (get_local $0)
           )
           (block
            (if
             (i32.and
              (select
               (i32.eq
                (tee_local $0
                 (i32.load16_u offset=4
                  (get_local $1)
                 )
                )
                (i32.const 69)
               )
               (i32.eq
                (get_local $0)
                (i32.const 101)
               )
               (i32.eq
                (get_local $0)
                (i32.const 69)
               )
              )
              (i32.const 1)
             )
             (unreachable)
            )
            (br_if $break|1
             (i32.gt_u
              (tee_local $0
               (i32.sub
                (get_local $0)
                (i32.const 48)
               )
              )
              (i32.const 9)
             )
            )
            (set_local $3
             (f64.add
              (get_local $3)
              (f64.mul
               (f64.convert_s/i32
                (get_local $0)
               )
               (get_local $4)
              )
             )
            )
            (set_local $4
             (f64.mul
              (get_local $4)
              (f64.const 0.1)
             )
            )
            (set_local $1
             (i32.add
              (get_local $1)
              (i32.const 2)
             )
            )
            (br $continue|1)
           )
          )
         )
        )
        (br $break|0)
       )
      )
      (br_if $break|0
       (i32.ge_u
        (tee_local $0
         (i32.sub
          (get_local $0)
          (i32.const 48)
         )
        )
        (i32.const 10)
       )
      )
      (set_local $3
       (f64.add
        (f64.mul
         (get_local $3)
         (f64.const 10)
        )
        (f64.convert_s/i32
         (get_local $0)
        )
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 2)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (f64.mul
   (get_local $5)
   (get_local $3)
  )
 )
 (func $start (; 9 ;) (type $v)
  (if
   (i32.ne
    (get_global $std/string/str)
    (i32.const 8)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (i32.load
     (get_global $std/string/str)
    )
    (i32.const 16)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (call $std:string/String#charCodeAt
     (get_global $std/string/str)
     (i32.const 0)
    )
    (i32.const 104)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (call $std:string/String#startsWith
     (get_global $std/string/str)
     (i32.const 48)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (call $std:string/String#endsWith
     (get_global $std/string/str)
     (i32.const 72)
     (i32.const 2147483647)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.ne
     (call $std:string/String#indexOf
      (get_global $std/string/str)
      (i32.const 88)
      (i32.const 0)
     )
     (i32.const -1)
    )
   )
   (unreachable)
  )
  (if
   (i32.ne
    (call $std:string/String#indexOf
     (get_global $std/string/str)
     (i32.const 104)
     (i32.const 0)
    )
    (i32.const 2)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (call $std:string/String#indexOf
     (get_global $std/string/str)
     (i32.const 112)
     (i32.const 0)
    )
    (i32.const -1)
   )
   (unreachable)
  )
  (if
   (f64.ne
    (call $std:string/parseInt
     (i32.const 120)
     (i32.const 0)
    )
    (f64.const 0)
   )
   (unreachable)
  )
  (if
   (f64.ne
    (call $std:string/parseInt
     (i32.const 128)
     (i32.const 0)
    )
    (f64.const 1)
   )
   (unreachable)
  )
  (if
   (f64.ne
    (call $std:string/parseInt
     (i32.const 136)
     (i32.const 0)
    )
    (f64.const 5)
   )
   (unreachable)
  )
  (if
   (f64.ne
    (call $std:string/parseInt
     (i32.const 152)
     (i32.const 0)
    )
    (f64.const 455)
   )
   (unreachable)
  )
  (if
   (f64.ne
    (call $std:string/parseInt
     (i32.const 168)
     (i32.const 0)
    )
    (f64.const 3855)
   )
   (unreachable)
  )
  (if
   (f64.ne
    (call $std:string/parseInt
     (i32.const 184)
     (i32.const 0)
    )
    (f64.const 3855)
   )
   (unreachable)
  )
  (if
   (f64.ne
    (call $std:string/parseInt
     (i32.const 200)
     (i32.const 0)
    )
    (f64.const 11)
   )
   (unreachable)
  )
  (if
   (f64.ne
    (call $std:string/parseInt
     (i32.const 216)
     (i32.const 0)
    )
    (f64.const 1)
   )
   (unreachable)
  )
  (if
   (f64.ne
    (call $std:string/parseFloat
     (i32.const 120)
    )
    (f64.const 0)
   )
   (unreachable)
  )
  (if
   (f64.ne
    (call $std:string/parseFloat
     (i32.const 128)
    )
    (f64.const 1)
   )
   (unreachable)
  )
  (if
   (f64.ne
    (call $std:string/parseFloat
     (i32.const 232)
    )
    (f64.const 0.1)
   )
   (unreachable)
  )
  (if
   (f64.ne
    (call $std:string/parseFloat
     (i32.const 248)
    )
    (f64.const 0.25)
   )
   (unreachable)
  )
  (if
   (f64.ne
    (call $std:string/parseFloat
     (i32.const 264)
    )
    (f64.const 0.1)
   )
   (unreachable)
  )
 )
)
