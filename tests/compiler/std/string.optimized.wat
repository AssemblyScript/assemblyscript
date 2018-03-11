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
 (memory $0 1)
 (data (i32.const 4) "\10\00\00\00h\00i\00,\00 \00I\00\'\00m\00 \00a\00 \00s\00t\00r\00i\00n\00g")
 (data (i32.const 40) "\0d\00\00\00s\00t\00d\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 72) "\0f\00\00\00(\00l\00i\00b\00)\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 108) "\02\00\00\00h\00i")
 (data (i32.const 116) "\04\00\00\00n\00u\00l\00l")
 (data (i32.const 128) "\06\00\00\00s\00t\00r\00i\00n\00g")
 (data (i32.const 144) "\03\00\00\00I\00\'\00m")
 (data (i32.const 156) "\01\00\00\00,")
 (data (i32.const 164) "\01\00\00\00x")
 (data (i32.const 172) "\01\00\00\000")
 (data (i32.const 180) "\01\00\00\001")
 (data (i32.const 188) "\05\00\00\000\00b\001\000\001")
 (data (i32.const 204) "\05\00\00\000\00o\007\000\007")
 (data (i32.const 220) "\05\00\00\000\00x\00f\000\00f")
 (data (i32.const 236) "\05\00\00\000\00x\00F\000\00F")
 (data (i32.const 252) "\03\00\00\000\001\001")
 (data (i32.const 264) "\04\00\00\000\00x\001\00g")
 (data (i32.const 276) "\03\00\00\000\00.\001")
 (data (i32.const 288) "\03\00\00\00.\002\005")
 (data (i32.const 300) "\08\00\00\00.\001\00f\00o\00o\00b\00a\00r")
 (export "getString" (func $std/string/getString))
 (export "memory" (memory $0))
 (start $start)
 (func "$(lib)/string/String#charCodeAt" (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
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
 (func "$(lib)/string/String#startsWith" (; 3 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (get_local $0)
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
   (i32.eqz
    (get_local $1)
   )
   (set_local $1
    (i32.const 116)
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
   (call "$(lib)/memory/compare_memory"
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
 (func "$(lib)/string/String#startsWith|trampoline.2" (; 4 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call "$(lib)/string/String#startsWith"
   (get_local $0)
   (get_local $1)
   (i32.const 0)
  )
 )
 (func "$(lib)/string/String#endsWith" (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $0)
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
   (call "$(lib)/memory/compare_memory"
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
 (func "$(lib)/string/String#endsWith|trampoline.2" (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call "$(lib)/string/String#endsWith"
   (get_local $0)
   (get_local $1)
   (i32.const 2147483647)
  )
 )
 (func "$(lib)/string/String#indexOf" (; 7 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (get_local $0)
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
   (i32.eqz
    (get_local $1)
   )
   (set_local $1
    (i32.const 116)
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
       (call "$(lib)/memory/compare_memory"
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
 (func "$(lib)/string/String#includes" (; 8 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ne
   (call "$(lib)/string/String#indexOf"
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
   (i32.const -1)
  )
 )
 (func "$(lib)/string/String#includes|trampoline.2" (; 9 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call "$(lib)/string/String#includes"
   (get_local $0)
   (get_local $1)
   (i32.const 0)
  )
 )
 (func "$(lib)/string/String#indexOf|trampoline.2" (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call "$(lib)/string/String#indexOf"
   (get_local $0)
   (get_local $1)
   (i32.const 0)
  )
 )
 (func $std/string/getString (; 11 ;) (type $i) (result i32)
  (get_global $std/string/str)
 )
 (func "$(lib)/string/parse<f64>" (; 12 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (if
   (i32.eqz
    (tee_local $4
     (i32.load
      (get_local $0)
     )
    )
   )
   (return
    (f64.const nan:0x8000000000000)
   )
  )
  (set_local $6
   (if (result f64)
    (i32.eq
     (tee_local $2
      (i32.load16_u offset=4
       (tee_local $3
        (get_local $0)
       )
      )
     )
     (i32.const 45)
    )
    (block (result f64)
     (if
      (i32.eqz
       (tee_local $4
        (i32.sub
         (get_local $4)
         (i32.const 1)
        )
       )
      )
      (return
       (f64.const nan:0x8000000000000)
      )
     )
     (set_local $2
      (i32.load16_u offset=4
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 2)
        )
       )
      )
     )
     (f64.const -1)
    )
    (if (result f64)
     (i32.eq
      (get_local $2)
      (i32.const 43)
     )
     (block (result f64)
      (if
       (i32.eqz
        (tee_local $4
         (i32.sub
          (get_local $4)
          (i32.const 1)
         )
        )
       )
       (return
        (f64.const nan:0x8000000000000)
       )
      )
      (set_local $2
       (i32.load16_u offset=4
        (tee_local $3
         (i32.add
          (get_local $3)
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
  (if
   (get_local $1)
   (if
    (i32.and
     (if (result i32)
      (tee_local $0
       (i32.lt_s
        (get_local $1)
        (i32.const 2)
       )
      )
      (get_local $0)
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
   (set_local $1
    (if (result i32)
     (i32.and
      (if (result i32)
       (tee_local $0
        (i32.eq
         (get_local $2)
         (i32.const 48)
        )
       )
       (i32.gt_s
        (get_local $4)
        (i32.const 2)
       )
       (get_local $0)
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
             (tee_local $0
              (i32.load16_u offset=4
               (i32.add
                (get_local $3)
                (i32.const 2)
               )
              )
             )
             (i32.const 66)
            )
            (i32.eq
             (get_local $0)
             (i32.const 98)
            )
           )
          )
          (block
           (br_if $case3|0
            (i32.or
             (i32.eq
              (get_local $0)
              (i32.const 79)
             )
             (i32.eq
              (get_local $0)
              (i32.const 111)
             )
            )
           )
           (br_if $case5|0
            (i32.or
             (i32.eq
              (get_local $0)
              (i32.const 88)
             )
             (i32.eq
              (get_local $0)
              (i32.const 120)
             )
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
         (set_local $4
          (i32.sub
           (get_local $4)
           (i32.const 2)
          )
         )
         (br $break|0
          (i32.const 2)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 4)
         )
        )
        (set_local $4
         (i32.sub
          (get_local $4)
          (i32.const 2)
         )
        )
        (br $break|0
         (i32.const 8)
        )
       )
       (set_local $3
        (i32.add
         (get_local $3)
         (i32.const 4)
        )
       )
       (set_local $4
        (i32.sub
         (get_local $4)
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
      (set_local $4
       (i32.sub
        (tee_local $0
         (get_local $4)
        )
        (i32.const 1)
       )
      )
      (get_local $0)
     )
     (block
      (if
       (i32.and
        (if (result i32)
         (tee_local $0
          (i32.ge_s
           (tee_local $2
            (i32.load16_u offset=4
             (get_local $3)
            )
           )
           (i32.const 48)
          )
         )
         (i32.le_s
          (get_local $2)
          (i32.const 57)
         )
         (get_local $0)
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
         (if (result i32)
          (tee_local $0
           (i32.ge_s
            (get_local $2)
            (i32.const 65)
           )
          )
          (i32.le_s
           (get_local $2)
           (i32.const 90)
          )
          (get_local $0)
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
          (if (result i32)
           (tee_local $0
            (i32.ge_s
             (get_local $2)
             (i32.const 97)
            )
           )
           (i32.le_s
            (get_local $2)
            (i32.const 122)
           )
           (get_local $0)
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
      (set_local $5
       (f64.add
        (f64.mul
         (get_local $5)
         (f64.convert_s/i32
          (get_local $1)
         )
        )
        (f64.convert_s/i32
         (get_local $2)
        )
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 2)
       )
      )
      (br $continue|1)
     )
    )
   )
  )
  (f64.mul
   (get_local $6)
   (get_local $5)
  )
 )
 (func "$(lib)/string/parseInt" (; 13 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (call "$(lib)/string/parse<f64>"
   (get_local $0)
   (get_local $1)
  )
 )
 (func "$(lib)/string/parseInt|trampoline.1" (; 14 ;) (type $iF) (param $0 i32) (result f64)
  (call "$(lib)/string/parseInt"
   (get_local $0)
   (i32.const 0)
  )
 )
 (func "$(lib)/string/parseFloat" (; 15 ;) (type $iF) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (if
   (i32.eqz
    (tee_local $3
     (i32.load
      (get_local $0)
     )
    )
   )
   (return
    (f64.const nan:0x8000000000000)
   )
  )
  (set_local $6
   (if (result f64)
    (i32.eq
     (tee_local $2
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
       (tee_local $3
        (i32.sub
         (get_local $3)
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
      (get_local $2)
      (i32.const 43)
     )
     (block (result f64)
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
      (set_local $3
       (i32.sub
        (tee_local $0
         (get_local $3)
        )
        (i32.const 1)
       )
      )
      (get_local $0)
     )
     (block
      (if
       (i32.eq
        (tee_local $2
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
        (set_local $5
         (f64.const 0.1)
        )
        (block $break|1
         (loop $continue|1
          (if
           (block (result i32)
            (set_local $3
             (i32.sub
              (tee_local $0
               (get_local $3)
              )
              (i32.const 1)
             )
            )
            (get_local $0)
           )
           (block
            (if
             (i32.and
              (if (result i32)
               (tee_local $0
                (i32.eq
                 (tee_local $2
                  (i32.load16_u offset=4
                   (get_local $1)
                  )
                 )
                 (i32.const 69)
                )
               )
               (get_local $0)
               (i32.eq
                (get_local $2)
                (i32.const 101)
               )
              )
              (i32.const 1)
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
            (br_if $break|1
             (i32.gt_u
              (tee_local $2
               (i32.sub
                (get_local $2)
                (i32.const 48)
               )
              )
              (i32.const 9)
             )
            )
            (set_local $4
             (f64.add
              (get_local $4)
              (f64.mul
               (f64.convert_s/i32
                (get_local $2)
               )
               (get_local $5)
              )
             )
            )
            (set_local $5
             (f64.mul
              (get_local $5)
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
        (tee_local $2
         (i32.sub
          (get_local $2)
          (i32.const 48)
         )
        )
        (i32.const 10)
       )
      )
      (set_local $4
       (f64.add
        (f64.mul
         (get_local $4)
         (f64.const 10)
        )
        (f64.convert_s/i32
         (get_local $2)
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
   (get_local $6)
   (get_local $4)
  )
 )
 (func $start (; 16 ;) (type $v)
  (if
   (i32.ne
    (get_global $std/string/str)
    (i32.const 4)
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
   (i32.ne
    (i32.load
     (get_global $std/string/str)
    )
    (i32.const 16)
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
   (i32.ne
    (call "$(lib)/string/String#charCodeAt"
     (get_global $std/string/str)
     (i32.const 0)
    )
    (i32.const 104)
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
    (call "$(lib)/string/String#startsWith|trampoline.2"
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
    (call "$(lib)/string/String#endsWith|trampoline.2"
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
    (call "$(lib)/string/String#includes|trampoline.2"
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
   (i32.ne
    (call "$(lib)/string/String#indexOf|trampoline.2"
     (get_global $std/string/str)
     (i32.const 156)
    )
    (i32.const 2)
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
   (i32.ne
    (call "$(lib)/string/String#indexOf|trampoline.2"
     (get_global $std/string/str)
     (i32.const 164)
    )
    (i32.const -1)
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
   (f64.ne
    (call "$(lib)/string/parseInt|trampoline.1"
     (i32.const 172)
    )
    (f64.const 0)
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
   (f64.ne
    (call "$(lib)/string/parseInt|trampoline.1"
     (i32.const 180)
    )
    (f64.const 1)
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
   (f64.ne
    (call "$(lib)/string/parseInt|trampoline.1"
     (i32.const 188)
    )
    (f64.const 5)
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
   (f64.ne
    (call "$(lib)/string/parseInt|trampoline.1"
     (i32.const 204)
    )
    (f64.const 455)
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
   (f64.ne
    (call "$(lib)/string/parseInt|trampoline.1"
     (i32.const 220)
    )
    (f64.const 3855)
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
   (f64.ne
    (call "$(lib)/string/parseInt|trampoline.1"
     (i32.const 236)
    )
    (f64.const 3855)
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
   (f64.ne
    (call "$(lib)/string/parseInt|trampoline.1"
     (i32.const 252)
    )
    (f64.const 11)
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
   (f64.ne
    (call "$(lib)/string/parseInt|trampoline.1"
     (i32.const 264)
    )
    (f64.const 1)
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
   (f64.ne
    (call "$(lib)/string/parseFloat"
     (i32.const 172)
    )
    (f64.const 0)
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
   (f64.ne
    (call "$(lib)/string/parseFloat"
     (i32.const 180)
    )
    (f64.const 1)
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
   (f64.ne
    (call "$(lib)/string/parseFloat"
     (i32.const 276)
    )
    (f64.const 0.1)
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
   (f64.ne
    (call "$(lib)/string/parseFloat"
     (i32.const 288)
    )
    (f64.const 0.25)
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
   (f64.ne
    (call "$(lib)/string/parseFloat"
     (i32.const 300)
    )
    (f64.const 0.1)
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
