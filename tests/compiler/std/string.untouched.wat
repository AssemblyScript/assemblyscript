(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $i (func (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiF (func (param i32 i32) (result f64)))
 (type $iF (func (param i32) (result f64)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $std/string/str (mut i32) (i32.const 4))
 (global "$(lib)/string/HEAD" i32 (i32.const 4))
 (global "$(lib)/string/CharCode.PLUS" i32 (i32.const 43))
 (global "$(lib)/string/CharCode.MINUS" i32 (i32.const 45))
 (global "$(lib)/string/CharCode.DOT" i32 (i32.const 46))
 (global "$(lib)/string/CharCode._0" i32 (i32.const 48))
 (global "$(lib)/string/CharCode._1" i32 (i32.const 49))
 (global "$(lib)/string/CharCode._2" i32 (i32.const 50))
 (global "$(lib)/string/CharCode._3" i32 (i32.const 51))
 (global "$(lib)/string/CharCode._4" i32 (i32.const 52))
 (global "$(lib)/string/CharCode._5" i32 (i32.const 53))
 (global "$(lib)/string/CharCode._6" i32 (i32.const 54))
 (global "$(lib)/string/CharCode._7" i32 (i32.const 55))
 (global "$(lib)/string/CharCode._8" i32 (i32.const 56))
 (global "$(lib)/string/CharCode._9" i32 (i32.const 57))
 (global "$(lib)/string/CharCode.A" i32 (i32.const 65))
 (global "$(lib)/string/CharCode.B" i32 (i32.const 66))
 (global "$(lib)/string/CharCode.E" i32 (i32.const 69))
 (global "$(lib)/string/CharCode.O" i32 (i32.const 79))
 (global "$(lib)/string/CharCode.X" i32 (i32.const 88))
 (global "$(lib)/string/CharCode.Z" i32 (i32.const 90))
 (global "$(lib)/string/CharCode.a" i32 (i32.const 97))
 (global "$(lib)/string/CharCode.b" i32 (i32.const 98))
 (global "$(lib)/string/CharCode.e" i32 (i32.const 101))
 (global "$(lib)/string/CharCode.o" i32 (i32.const 111))
 (global "$(lib)/string/CharCode.x" i32 (i32.const 120))
 (global "$(lib)/string/CharCode.z" i32 (i32.const 122))
 (global $HEAP_BASE i32 (i32.const 320))
 (memory $0 1)
 (data (i32.const 4) "\10\00\00\00h\00i\00,\00 \00I\00\'\00m\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 40) "\0d\00\00\00s\00t\00d\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 72) "\0f\00\00\00(\00l\00i\00b\00)\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 108) "\02\00\00\00h\00i\00")
 (data (i32.const 116) "\04\00\00\00n\00u\00l\00l\00")
 (data (i32.const 128) "\06\00\00\00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 144) "\03\00\00\00I\00\'\00m\00")
 (data (i32.const 156) "\01\00\00\00,\00")
 (data (i32.const 164) "\01\00\00\00x\00")
 (data (i32.const 172) "\01\00\00\000\00")
 (data (i32.const 180) "\01\00\00\001\00")
 (data (i32.const 188) "\05\00\00\000\00b\001\000\001\00")
 (data (i32.const 204) "\05\00\00\000\00o\007\000\007\00")
 (data (i32.const 220) "\05\00\00\000\00x\00f\000\00f\00")
 (data (i32.const 236) "\05\00\00\000\00x\00F\000\00F\00")
 (data (i32.const 252) "\03\00\00\000\001\001\00")
 (data (i32.const 264) "\04\00\00\000\00x\001\00g\00")
 (data (i32.const 276) "\03\00\00\000\00.\001\00")
 (data (i32.const 288) "\03\00\00\00.\002\005\00")
 (data (i32.const 300) "\08\00\00\00.\001\00f\00o\00o\00b\00a\00r\00")
 (export "getString" (func $std/string/getString))
 (export "memory" (memory $0))
 (start $start)
 (func "$(lib)/string/String#charCodeAt" (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 39)
     (i32.const 4)
    )
    (unreachable)
   )
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
 (func "$(lib)/memory/compare_memory" (; 2 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func "$(lib)/string/String#startsWith" (; 3 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 168)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (i32.const 116)
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
    (call "$(lib)/memory/compare_memory"
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
 (func "$(lib)/string/String#startsWith@2" (; 4 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.const 0)
  )
  (call "$(lib)/string/String#startsWith"
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func "$(lib)/string/String#endsWith" (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 105)
     (i32.const 4)
    )
    (unreachable)
   )
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
    (call "$(lib)/memory/compare_memory"
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
 (func "$(lib)/string/String#endsWith@2" (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.const 2147483647)
  )
  (call "$(lib)/string/String#endsWith"
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func "$(lib)/string/String#indexOf" (; 7 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 145)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (i32.const 116)
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
      (block
       (if
        (i32.eqz
         (call "$(lib)/memory/compare_memory"
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
   (i32.const -1)
  )
 )
 (func "$(lib)/string/String#includes" (; 8 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (return
   (i32.ne
    (call "$(lib)/string/String#indexOf"
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (i32.const -1)
   )
  )
 )
 (func "$(lib)/string/String#includes@2" (; 9 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.const 0)
  )
  (call "$(lib)/string/String#includes"
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func "$(lib)/string/String#indexOf@2" (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.const 0)
  )
  (call "$(lib)/string/String#indexOf"
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $std/string/getString (; 11 ;) (type $i) (result i32)
  (return
   (get_global $std/string/str)
  )
 )
 (func "$(lib)/string/parse<f64>" (; 12 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (f64.const nan:0x8000000000000)
   )
  )
  (set_local $3
   (get_local $0)
  )
  (set_local $4
   (i32.load16_u offset=4
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
      (f64.const nan:0x8000000000000)
     )
    )
    (set_local $4
     (i32.load16_u offset=4
      (tee_local $3
       (i32.add
        (get_local $3)
        (i32.const 2)
       )
      )
     )
    )
    (set_local $5
     (f64.const -1)
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
       (f64.const nan:0x8000000000000)
      )
     )
     (set_local $4
      (i32.load16_u offset=4
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 2)
        )
       )
      )
     )
     (set_local $5
      (f64.const 1)
     )
    )
    (set_local $5
     (f64.const 1)
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
      (tee_local $6
       (i32.eq
        (get_local $4)
        (i32.const 48)
       )
      )
      (i32.gt_s
       (get_local $2)
       (i32.const 2)
      )
      (get_local $6)
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
             (i32.load16_u offset=4
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
   (if
    (i32.and
     (if (result i32)
      (tee_local $6
       (i32.lt_s
        (get_local $1)
        (i32.const 2)
       )
      )
      (get_local $6)
      (i32.gt_s
       (get_local $1)
       (i32.const 36)
      )
     )
     (i32.const 1)
    )
    (return
     (f64.const nan:0x8000000000000)
    )
   )
  )
  (set_local $7
   (f64.const 0)
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
        (i32.load16_u offset=4
         (get_local $3)
        )
       )
       (if
        (i32.and
         (if (result i32)
          (tee_local $6
           (i32.ge_s
            (get_local $4)
            (i32.const 48)
           )
          )
          (i32.le_s
           (get_local $4)
           (i32.const 57)
          )
          (get_local $6)
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
           (tee_local $6
            (i32.ge_s
             (get_local $4)
             (i32.const 65)
            )
           )
           (i32.le_s
            (get_local $4)
            (i32.const 90)
           )
           (get_local $6)
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
            (tee_local $6
             (i32.ge_s
              (get_local $4)
              (i32.const 97)
             )
            )
            (i32.le_s
             (get_local $4)
             (i32.const 122)
            )
            (get_local $6)
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
          (br $break|1)
         )
        )
       )
       (if
        (i32.ge_s
         (get_local $4)
         (get_local $1)
        )
        (br $break|1)
       )
       (set_local $7
        (f64.add
         (f64.mul
          (get_local $7)
          (f64.convert_s/i32
           (get_local $1)
          )
         )
         (f64.convert_s/i32
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
   (f64.mul
    (get_local $5)
    (get_local $7)
   )
  )
 )
 (func "$(lib)/string/parseInt" (; 13 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (return
   (call "$(lib)/string/parse<f64>"
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func "$(lib)/string/parseInt@1" (; 14 ;) (type $iF) (param $0 i32) (result f64)
  (local $1 i32)
  (set_local $1
   (i32.const 0)
  )
  (call "$(lib)/string/parseInt"
   (get_local $0)
   (get_local $1)
  )
 )
 (func "$(lib)/string/parseFloat" (; 15 ;) (type $iF) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (set_local $1
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (return
    (f64.const nan:0x8000000000000)
   )
  )
  (set_local $2
   (get_local $0)
  )
  (set_local $3
   (i32.load16_u offset=4
    (get_local $2)
   )
  )
  (nop)
  (if
   (i32.eq
    (get_local $3)
    (i32.const 45)
   )
   (block
    (if
     (i32.eqz
      (tee_local $1
       (i32.sub
        (get_local $1)
        (i32.const 1)
       )
      )
     )
     (return
      (f64.const nan:0x8000000000000)
     )
    )
    (set_local $3
     (i32.load16_u offset=4
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 2)
       )
      )
     )
    )
    (set_local $4
     (f64.const -1)
    )
   )
   (if
    (i32.eq
     (get_local $3)
     (i32.const 43)
    )
    (block
     (if
      (i32.eqz
       (tee_local $1
        (i32.sub
         (get_local $1)
         (i32.const 1)
        )
       )
      )
      (return
       (f64.const nan:0x8000000000000)
      )
     )
     (set_local $3
      (i32.load16_u offset=4
       (tee_local $2
        (i32.add
         (get_local $2)
         (i32.const 2)
        )
       )
      )
     )
     (set_local $4
      (f64.const 1)
     )
    )
    (set_local $4
     (f64.const 1)
    )
   )
  )
  (set_local $5
   (f64.const 0)
  )
  (block $break|0
   (loop $continue|0
    (if
     (block (result i32)
      (set_local $6
       (get_local $1)
      )
      (set_local $1
       (i32.sub
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (block
      (block
       (set_local $3
        (i32.load16_u offset=4
         (get_local $2)
        )
       )
       (if
        (i32.eq
         (get_local $3)
         (i32.const 46)
        )
        (block
         (set_local $2
          (i32.add
           (get_local $2)
           (i32.const 2)
          )
         )
         (set_local $7
          (f64.const 0.1)
         )
         (block $break|1
          (loop $continue|1
           (if
            (block (result i32)
             (set_local $6
              (get_local $1)
             )
             (set_local $1
              (i32.sub
               (get_local $6)
               (i32.const 1)
              )
             )
             (get_local $6)
            )
            (block
             (block
              (set_local $3
               (i32.load16_u offset=4
                (get_local $2)
               )
              )
              (if
               (i32.and
                (if (result i32)
                 (tee_local $6
                  (i32.eq
                   (get_local $3)
                   (i32.const 69)
                  )
                 )
                 (get_local $6)
                 (i32.eq
                  (get_local $3)
                  (i32.const 101)
                 )
                )
                (i32.const 1)
               )
               (if
                (i32.eqz
                 (i32.const 0)
                )
                (block
                 (call $abort
                  (i32.const 0)
                  (i32.const 72)
                  (i32.const 493)
                  (i32.const 10)
                 )
                 (unreachable)
                )
               )
              )
              (set_local $3
               (i32.sub
                (get_local $3)
                (i32.const 48)
               )
              )
              (if
               (i32.gt_u
                (get_local $3)
                (i32.const 9)
               )
               (br $break|1)
              )
              (set_local $5
               (f64.add
                (get_local $5)
                (f64.mul
                 (f64.convert_s/i32
                  (get_local $3)
                 )
                 (get_local $7)
                )
               )
              )
              (set_local $7
               (f64.mul
                (get_local $7)
                (f64.const 0.1)
               )
              )
              (set_local $2
               (i32.add
                (get_local $2)
                (i32.const 2)
               )
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
       (set_local $3
        (i32.sub
         (get_local $3)
         (i32.const 48)
        )
       )
       (if
        (i32.ge_u
         (get_local $3)
         (i32.const 10)
        )
        (br $break|0)
       )
       (set_local $5
        (f64.add
         (f64.mul
          (get_local $5)
          (f64.const 10)
         )
         (f64.convert_s/i32
          (get_local $3)
         )
        )
       )
       (set_local $2
        (i32.add
         (get_local $2)
         (i32.const 2)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (f64.mul
    (get_local $4)
    (get_local $5)
   )
  )
 )
 (func $start (; 16 ;) (type $v)
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/string/str)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 6)
     (i32.const 0)
    )
    (unreachable)
   )
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 8)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/string/String#charCodeAt"
      (get_global $std/string/str)
      (i32.const 0)
     )
     (i32.const 104)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 9)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call "$(lib)/string/String#startsWith@2"
     (get_global $std/string/str)
     (i32.const 108)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 10)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call "$(lib)/string/String#endsWith@2"
     (get_global $std/string/str)
     (i32.const 128)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 11)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call "$(lib)/string/String#includes@2"
     (get_global $std/string/str)
     (i32.const 144)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 12)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/string/String#indexOf@2"
      (get_global $std/string/str)
      (i32.const 156)
     )
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 13)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/string/String#indexOf@2"
      (get_global $std/string/str)
      (i32.const 164)
     )
     (i32.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 14)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call "$(lib)/string/parseInt@1"
      (i32.const 172)
     )
     (f64.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 20)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call "$(lib)/string/parseInt@1"
      (i32.const 180)
     )
     (f64.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 21)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call "$(lib)/string/parseInt@1"
      (i32.const 188)
     )
     (f64.const 5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 22)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call "$(lib)/string/parseInt@1"
      (i32.const 204)
     )
     (f64.const 455)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 23)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call "$(lib)/string/parseInt@1"
      (i32.const 220)
     )
     (f64.const 3855)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 24)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call "$(lib)/string/parseInt@1"
      (i32.const 236)
     )
     (f64.const 3855)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 25)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call "$(lib)/string/parseInt@1"
      (i32.const 252)
     )
     (f64.const 11)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 26)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call "$(lib)/string/parseInt@1"
      (i32.const 264)
     )
     (f64.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 27)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call "$(lib)/string/parseFloat"
      (i32.const 172)
     )
     (f64.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 29)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call "$(lib)/string/parseFloat"
      (i32.const 180)
     )
     (f64.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 30)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call "$(lib)/string/parseFloat"
      (i32.const 276)
     )
     (f64.const 0.1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 31)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call "$(lib)/string/parseFloat"
      (i32.const 288)
     )
     (f64.const 0.25)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 32)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call "$(lib)/string/parseFloat"
      (i32.const 300)
     )
     (f64.const 0.1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 33)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
