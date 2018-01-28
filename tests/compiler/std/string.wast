(module
 (type $i (func (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiI (func (param i32 i32) (result i64)))
 (type $v (func))
 (global $std/string/str (mut i32) (i32.const 8))
 (global $std:string/HEAD i32 (i32.const 4))
 (global $std:string/CharCode.PLUS i32 (i32.const 43))
 (global $std:string/CharCode.MINUS i32 (i32.const 45))
 (global $std:string/CharCode._0 i32 (i32.const 48))
 (global $std:string/CharCode._1 i32 (i32.const 49))
 (global $std:string/CharCode._2 i32 (i32.const 50))
 (global $std:string/CharCode._3 i32 (i32.const 51))
 (global $std:string/CharCode._4 i32 (i32.const 52))
 (global $std:string/CharCode._5 i32 (i32.const 53))
 (global $std:string/CharCode._6 i32 (i32.const 54))
 (global $std:string/CharCode._7 i32 (i32.const 55))
 (global $std:string/CharCode._8 i32 (i32.const 56))
 (global $std:string/CharCode._9 i32 (i32.const 57))
 (global $std:string/CharCode.A i32 (i32.const 65))
 (global $std:string/CharCode.B i32 (i32.const 66))
 (global $std:string/CharCode.O i32 (i32.const 79))
 (global $std:string/CharCode.X i32 (i32.const 88))
 (global $std:string/CharCode.Z i32 (i32.const 90))
 (global $std:string/CharCode.a i32 (i32.const 97))
 (global $std:string/CharCode.b i32 (i32.const 98))
 (global $std:string/CharCode.o i32 (i32.const 111))
 (global $std:string/CharCode.x i32 (i32.const 120))
 (global $std:string/CharCode.z i32 (i32.const 122))
 (global $HEAP_BASE i32 (i32.const 228))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00h\00i\00,\00 \00I\00\'\00m\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 48) "\02\00\00\00h\00i\00")
 (data (i32.const 56) "\04\00\00\00n\00u\00l\00l\00")
 (data (i32.const 72) "\06\00\00\00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 88) "\03\00\00\00I\00\'\00m\00")
 (data (i32.const 104) "\01\00\00\00,\00")
 (data (i32.const 112) "\01\00\00\00x\00")
 (data (i32.const 120) "\01\00\00\000\00")
 (data (i32.const 128) "\01\00\00\001\00")
 (data (i32.const 136) "\05\00\00\000\00b\001\000\001\00")
 (data (i32.const 152) "\05\00\00\000\00o\007\000\007\00")
 (data (i32.const 168) "\05\00\00\000\00x\00f\000\00f\00")
 (data (i32.const 184) "\05\00\00\000\00x\00F\000\00F\00")
 (data (i32.const 200) "\03\00\00\000\001\001\00")
 (data (i32.const 216) "\04\00\00\000\00x\001\00g\00")
 (export "getString" (func $std/string/getString))
 (export "memory" (memory $0))
 (start $start)
 (func $std:string/String#charCodeAt (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
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
    (i32.sub
     (i32.const 0)
     (i32.const 1)
    )
   )
  )
  (return
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
  (block $break|0
   (loop $continue|0
    (if
     (if (result i32)
      (i32.ne
       (get_local $2)
       (i32.const 0)
      )
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
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
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
 )
 (func $std:string/String#startsWith (; 2 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (i32.const 56)
   )
  )
  (set_local $3
   (get_local $2)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (set_local $7
   (select
    (tee_local $5
     (select
      (tee_local $5
       (get_local $2)
      )
      (tee_local $6
       (i32.const 0)
      )
      (i32.gt_s
       (get_local $5)
       (get_local $6)
      )
     )
    )
    (tee_local $6
     (get_local $4)
    )
    (i32.lt_s
     (get_local $5)
     (get_local $6)
    )
   )
  )
  (set_local $8
   (i32.load
    (get_local $1)
   )
  )
  (if
   (i32.gt_s
    (i32.add
     (get_local $8)
     (get_local $7)
    )
    (get_local $4)
   )
   (return
    (i32.const 0)
   )
  )
  (return
   (i32.eqz
    (call $std:memory/compare_memory
     (i32.add
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
      (i32.shl
       (get_local $7)
       (i32.const 1)
      )
     )
     (i32.add
      (get_local $1)
      (i32.const 4)
     )
     (i32.shl
      (get_local $8)
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $std:string/String#endsWith (; 3 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $5
   (select
    (tee_local $3
     (select
      (tee_local $3
       (get_local $2)
      )
      (tee_local $4
       (i32.const 0)
      )
      (i32.gt_s
       (get_local $3)
       (get_local $4)
      )
     )
    )
    (tee_local $4
     (i32.load
      (get_local $0)
     )
    )
    (i32.lt_s
     (get_local $3)
     (get_local $4)
    )
   )
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (set_local $7
   (i32.sub
    (get_local $5)
    (get_local $6)
   )
  )
  (if
   (i32.lt_s
    (get_local $7)
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (return
   (i32.eqz
    (call $std:memory/compare_memory
     (i32.add
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
      (i32.shl
       (get_local $7)
       (i32.const 1)
      )
     )
     (i32.add
      (get_local $1)
      (i32.const 4)
     )
     (i32.shl
      (get_local $6)
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $std:string/String#indexOf (; 4 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (i32.const 56)
   )
  )
  (set_local $3
   (get_local $2)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (set_local $7
   (select
    (tee_local $5
     (select
      (tee_local $5
       (get_local $3)
      )
      (tee_local $6
       (i32.const 0)
      )
      (i32.gt_s
       (get_local $5)
       (get_local $6)
      )
     )
    )
    (tee_local $6
     (get_local $4)
    )
    (i32.lt_s
     (get_local $5)
     (get_local $6)
    )
   )
  )
  (set_local $8
   (i32.load
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $9
    (get_local $7)
   )
   (loop $continue|0
    (if
     (i32.le_s
      (i32.add
       (get_local $9)
       (get_local $8)
      )
      (get_local $4)
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
           (get_local $9)
           (i32.const 1)
          )
         )
         (i32.add
          (get_local $1)
          (i32.const 4)
         )
         (i32.shl
          (get_local $8)
          (i32.const 1)
         )
        )
       )
       (return
        (get_local $9)
       )
      )
      (set_local $9
       (i32.add
        (get_local $9)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (i32.sub
    (i32.const 0)
    (i32.const 1)
   )
  )
 )
 (func $std:string/String#includes (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (return
   (i32.ne
    (call $std:string/String#indexOf
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (i32.sub
     (i32.const 0)
     (i32.const 1)
    )
   )
  )
 )
 (func $std/string/getString (; 6 ;) (type $i) (result i32)
  (return
   (get_global $std/string/str)
  )
 )
 (func $std:string/parseInt (; 7 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (i64.const 0)
   )
  )
  (set_local $4
   (i32.load16_u
    (get_local $3)
   )
  )
  (nop)
  (if
   (i32.eq
    (get_local $4)
    (i32.const 45)
   )
   (block
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
      (i64.const 0)
     )
    )
    (set_local $4
     (i32.load16_u
      (tee_local $3
       (i32.add
        (get_local $3)
        (i32.const 2)
       )
      )
     )
    )
    (set_local $5
     (i64.sub
      (i64.const 0)
      (i64.const 1)
     )
    )
   )
   (if
    (i32.eq
     (get_local $4)
     (i32.const 43)
    )
    (block
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
       (i64.const 0)
      )
     )
     (set_local $4
      (i32.load16_u
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 2)
        )
       )
      )
     )
     (set_local $5
      (i64.const 1)
     )
    )
    (set_local $5
     (i64.const 1)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (if
    (i32.and
     (if (result i32)
      (i32.ne
       (i32.eq
        (get_local $4)
        (i32.const 48)
       )
       (i32.const 0)
      )
      (i32.gt_s
       (get_local $2)
       (i32.const 2)
      )
      (i32.eq
       (get_local $4)
       (i32.const 48)
      )
     )
     (i32.const 1)
    )
    (block $break|0
     (block $case6|0
      (block $case5|0
       (block $case4|0
        (block $case3|0
         (block $case2|0
          (block $case1|0
           (block $case0|0
            (set_local $6
             (i32.load16_u
              (i32.add
               (get_local $3)
               (i32.const 2)
              )
             )
            )
            (br_if $case0|0
             (i32.eq
              (get_local $6)
              (i32.const 66)
             )
            )
            (br_if $case1|0
             (i32.eq
              (get_local $6)
              (i32.const 98)
             )
            )
            (br_if $case2|0
             (i32.eq
              (get_local $6)
              (i32.const 79)
             )
            )
            (br_if $case3|0
             (i32.eq
              (get_local $6)
              (i32.const 111)
             )
            )
            (br_if $case4|0
             (i32.eq
              (get_local $6)
              (i32.const 88)
             )
            )
            (br_if $case5|0
             (i32.eq
              (get_local $6)
              (i32.const 120)
             )
            )
            (br $case6|0)
           )
          )
          (set_local $3
           (i32.add
            (get_local $3)
            (i32.const 4)
           )
          )
          (set_local $2
           (i32.sub
            (get_local $2)
            (i32.const 2)
           )
          )
          (set_local $1
           (i32.const 2)
          )
          (br $break|0)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 4)
         )
        )
        (set_local $2
         (i32.sub
          (get_local $2)
          (i32.const 2)
         )
        )
        (set_local $1
         (i32.const 8)
        )
        (br $break|0)
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 4)
       )
      )
      (set_local $2
       (i32.sub
        (get_local $2)
        (i32.const 2)
       )
      )
      (set_local $1
       (i32.const 16)
      )
      (br $break|0)
     )
     (set_local $1
      (i32.const 10)
     )
    )
    (set_local $1
     (i32.const 10)
    )
   )
  )
  (set_local $7
   (i64.const 0)
  )
  (block $break|1
   (loop $continue|1
    (if
     (block (result i32)
      (set_local $6
       (get_local $2)
      )
      (set_local $2
       (i32.sub
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (block
      (block
       (set_local $4
        (i32.load16_u
         (get_local $3)
        )
       )
       (if
        (i32.and
         (if (result i32)
          (i32.ne
           (i32.ge_s
            (get_local $4)
            (i32.const 48)
           )
           (i32.const 0)
          )
          (i32.le_s
           (get_local $4)
           (i32.const 57)
          )
          (i32.ge_s
           (get_local $4)
           (i32.const 48)
          )
         )
         (i32.const 1)
        )
        (set_local $4
         (i32.sub
          (get_local $4)
          (i32.const 48)
         )
        )
        (if
         (i32.and
          (if (result i32)
           (i32.ne
            (i32.ge_s
             (get_local $4)
             (i32.const 65)
            )
            (i32.const 0)
           )
           (i32.le_s
            (get_local $4)
            (i32.const 90)
           )
           (i32.ge_s
            (get_local $4)
            (i32.const 65)
           )
          )
          (i32.const 1)
         )
         (set_local $4
          (i32.sub
           (get_local $4)
           (i32.sub
            (i32.const 65)
            (i32.const 10)
           )
          )
         )
         (if
          (i32.and
           (if (result i32)
            (i32.ne
             (i32.ge_s
              (get_local $4)
              (i32.const 97)
             )
             (i32.const 0)
            )
            (i32.le_s
             (get_local $4)
             (i32.const 122)
            )
            (i32.ge_s
             (get_local $4)
             (i32.const 97)
            )
           )
           (i32.const 1)
          )
          (set_local $4
           (i32.sub
            (get_local $4)
            (i32.sub
             (i32.const 97)
             (i32.const 10)
            )
           )
          )
          (return
           (i64.mul
            (get_local $5)
            (get_local $7)
           )
          )
         )
        )
       )
       (if
        (i32.ge_s
         (get_local $4)
         (get_local $1)
        )
        (return
         (i64.mul
          (get_local $5)
          (get_local $7)
         )
        )
       )
       (set_local $7
        (i64.add
         (i64.mul
          (get_local $7)
          (i64.extend_s/i32
           (get_local $1)
          )
         )
         (i64.extend_s/i32
          (get_local $4)
         )
        )
       )
       (set_local $3
        (i32.add
         (get_local $3)
         (i32.const 2)
        )
       )
      )
      (br $continue|1)
     )
    )
   )
  )
  (return
   (i64.mul
    (get_local $5)
    (get_local $7)
   )
  )
 )
 (func $start (; 8 ;) (type $v)
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/string/str)
     (i32.const 8)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load
      (get_global $std/string/str)
     )
     (i32.const 16)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std:string/String#charCodeAt
      (get_global $std/string/str)
      (i32.const 0)
     )
     (i32.const 104)
    )
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
    (call $std:string/String#includes
     (get_global $std/string/str)
     (i32.const 88)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std:string/String#indexOf
      (get_global $std/string/str)
      (i32.const 104)
      (i32.const 0)
     )
     (i32.const 2)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std:string/String#indexOf
      (get_global $std/string/str)
      (i32.const 112)
      (i32.const 0)
     )
     (i32.sub
      (i32.const 0)
      (i32.const 1)
     )
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (call $std:string/parseInt
      (i32.const 120)
      (i32.const 0)
     )
     (i64.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (call $std:string/parseInt
      (i32.const 128)
      (i32.const 0)
     )
     (i64.const 1)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (call $std:string/parseInt
      (i32.const 136)
      (i32.const 0)
     )
     (i64.const 5)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (call $std:string/parseInt
      (i32.const 152)
      (i32.const 0)
     )
     (i64.const 455)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (call $std:string/parseInt
      (i32.const 168)
      (i32.const 0)
     )
     (i64.const 3855)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (call $std:string/parseInt
      (i32.const 184)
      (i32.const 0)
     )
     (i64.const 3855)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (call $std:string/parseInt
      (i32.const 200)
      (i32.const 0)
     )
     (i64.const 11)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i64.eq
     (call $std:string/parseInt
      (i32.const 216)
      (i32.const 0)
     )
     (i64.const 1)
    )
   )
   (unreachable)
  )
 )
)
(;
[program.elements]
  GLOBAL: NaN
  GLOBAL: Infinity
  FUNCTION_PROTOTYPE: isNaN
  FUNCTION_PROTOTYPE: isFinite
  FUNCTION_PROTOTYPE: clz
  FUNCTION_PROTOTYPE: ctz
  FUNCTION_PROTOTYPE: popcnt
  FUNCTION_PROTOTYPE: rotl
  FUNCTION_PROTOTYPE: rotr
  FUNCTION_PROTOTYPE: abs
  FUNCTION_PROTOTYPE: max
  FUNCTION_PROTOTYPE: min
  FUNCTION_PROTOTYPE: ceil
  FUNCTION_PROTOTYPE: floor
  FUNCTION_PROTOTYPE: copysign
  FUNCTION_PROTOTYPE: nearest
  FUNCTION_PROTOTYPE: reinterpret
  FUNCTION_PROTOTYPE: sqrt
  FUNCTION_PROTOTYPE: trunc
  FUNCTION_PROTOTYPE: load
  FUNCTION_PROTOTYPE: store
  FUNCTION_PROTOTYPE: sizeof
  FUNCTION_PROTOTYPE: select
  FUNCTION_PROTOTYPE: unreachable
  FUNCTION_PROTOTYPE: current_memory
  FUNCTION_PROTOTYPE: grow_memory
  FUNCTION_PROTOTYPE: changetype
  FUNCTION_PROTOTYPE: assert
  FUNCTION_PROTOTYPE: i8
  FUNCTION_PROTOTYPE: i16
  FUNCTION_PROTOTYPE: i32
  FUNCTION_PROTOTYPE: i64
  FUNCTION_PROTOTYPE: u8
  FUNCTION_PROTOTYPE: u16
  FUNCTION_PROTOTYPE: u32
  FUNCTION_PROTOTYPE: u64
  FUNCTION_PROTOTYPE: bool
  FUNCTION_PROTOTYPE: f32
  FUNCTION_PROTOTYPE: f64
  FUNCTION_PROTOTYPE: isize
  FUNCTION_PROTOTYPE: usize
  GLOBAL: HEAP_BASE
  CLASS_PROTOTYPE: std:array/Array
  PROPERTY: std:array/Array#length
  CLASS_PROTOTYPE: Array
  CLASS_PROTOTYPE: std:array/CArray
  CLASS_PROTOTYPE: CArray
  CLASS_PROTOTYPE: std:error/Error
  CLASS_PROTOTYPE: Error
  CLASS_PROTOTYPE: std:error/RangeError
  CLASS_PROTOTYPE: RangeError
  CLASS_PROTOTYPE: std:map/Map
  CLASS_PROTOTYPE: Map
  FUNCTION_PROTOTYPE: std:memory/copy_memory
  FUNCTION_PROTOTYPE: std:memory/move_memory
  FUNCTION_PROTOTYPE: move_memory
  FUNCTION_PROTOTYPE: std:memory/set_memory
  FUNCTION_PROTOTYPE: set_memory
  FUNCTION_PROTOTYPE: std:memory/compare_memory
  FUNCTION_PROTOTYPE: compare_memory
  CLASS_PROTOTYPE: std:regexp/RegExp
  CLASS_PROTOTYPE: RegExp
  CLASS_PROTOTYPE: std:set/Set
  PROPERTY: std:set/Set#size
  CLASS_PROTOTYPE: Set
  GLOBAL: std:string/EMPTY
  GLOBAL: std:string/HEAD
  FUNCTION_PROTOTYPE: std:string/allocate
  CLASS_PROTOTYPE: std:string/String
  FUNCTION_PROTOTYPE: std:string/String.__concat
  FUNCTION_PROTOTYPE: std:string/String.__eq
  CLASS_PROTOTYPE: String
  FUNCTION_PROTOTYPE: std:string/isWhiteSpaceOrLineTerminator
  ENUM: std:string/CharCode
  FUNCTION_PROTOTYPE: std:string/parseInt
  FUNCTION_PROTOTYPE: parseInt
  FUNCTION_PROTOTYPE: std:string/parseFloat
  FUNCTION_PROTOTYPE: parseFloat
  GLOBAL: std/string/str
  FUNCTION_PROTOTYPE: std/string/getString
[program.exports]
  CLASS_PROTOTYPE: std:array/Array
  CLASS_PROTOTYPE: Array
  CLASS_PROTOTYPE: std:array/CArray
  CLASS_PROTOTYPE: CArray
  CLASS_PROTOTYPE: std:error/Error
  CLASS_PROTOTYPE: Error
  CLASS_PROTOTYPE: std:error/RangeError
  CLASS_PROTOTYPE: RangeError
  CLASS_PROTOTYPE: std:map/Map
  CLASS_PROTOTYPE: Map
  FUNCTION_PROTOTYPE: move_memory
  FUNCTION_PROTOTYPE: std:memory/move_memory
  FUNCTION_PROTOTYPE: set_memory
  FUNCTION_PROTOTYPE: std:memory/set_memory
  FUNCTION_PROTOTYPE: compare_memory
  FUNCTION_PROTOTYPE: std:memory/compare_memory
  CLASS_PROTOTYPE: std:regexp/RegExp
  CLASS_PROTOTYPE: RegExp
  CLASS_PROTOTYPE: std:set/Set
  CLASS_PROTOTYPE: Set
  CLASS_PROTOTYPE: std:string/String
  CLASS_PROTOTYPE: String
  FUNCTION_PROTOTYPE: parseInt
  FUNCTION_PROTOTYPE: std:string/parseInt
  FUNCTION_PROTOTYPE: parseFloat
  FUNCTION_PROTOTYPE: std:string/parseFloat
  FUNCTION_PROTOTYPE: std/string/getString
;)
