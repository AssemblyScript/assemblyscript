(module
 (type $i (func (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiF (func (param i32 i32) (result f64)))
 (type $v (func))
 (global $std/string/str (mut i32) (i32.const 8))
 (global $std/string/str123 (mut i32) (i32.const 48))
 (global $std/string/str123ab (mut i32) (i32.const 64))
 (global $std/string/strab123 (mut i32) (i32.const 80))
 (global $std/string/strHex (mut i32) (i32.const 96))
 (global $std/string/strHexInvalid (mut i32) (i32.const 112))
 (global $std/string/strHexnInvalid (mut i32) (i32.const 120))
 (global $std/string/strHexnnInv (mut i32) (i32.const 136))
 (global $std/string/str123n (mut i32) (i32.const 152))
 (global $std/string/strHexn (mut i32) (i32.const 168))
 (global $std/string/strHexp (mut i32) (i32.const 184))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00h\00i\00,\00 \00I\00\'\00m\00 \00a\00 \00s\00t\00r\00i\00n\00g")
 (data (i32.const 48) "\03\00\00\001\002\003")
 (data (i32.const 64) "\05\00\00\001\002\003\00a\00b")
 (data (i32.const 80) "\05\00\00\00a\00b\001\002\003")
 (data (i32.const 96) "\04\00\00\000\00x\001\000")
 (data (i32.const 112) "\02\00\00\000\00x")
 (data (i32.const 120) "\03\00\00\00-\000\00x")
 (data (i32.const 136) "\06\00\00\00-\00-\000\00x\001\000")
 (data (i32.const 152) "\04\00\00\00-\001\002\003")
 (data (i32.const 168) "\05\00\00\00-\000\00x\001\000")
 (data (i32.const 184) "\05\00\00\00+\000\00x\001\000")
 (data (i32.const 200) "\02\00\00\00h\00i")
 (data (i32.const 208) "\06\00\00\00s\00t\00r\00i\00n\00g")
 (data (i32.const 224) "\03\00\00\00I\00\'\00m")
 (data (i32.const 240) "\01\00\00\00,")
 (data (i32.const 248) "\01\00\00\00x")
 (export "getString" (func $std/string/getString))
 (export "memory" (memory $0))
 (start $start)
 (func $std:string/String#charCodeAt (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std:heap/compare_memory (; 1 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std:string/parseInt (; 5 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  (block $folding-inner0
   (br_if $folding-inner0
    (i32.and
     (if (result i32)
      (tee_local $2
       (i32.and
        (select
         (i32.and
          (select
           (i32.lt_s
            (get_local $1)
            (i32.const 2)
           )
           (i32.ne
            (get_local $1)
            (i32.const 0)
           )
           (get_local $1)
          )
          (i32.const 1)
         )
         (i32.eqz
          (tee_local $4
           (i32.load
            (get_local $0)
           )
          )
         )
         (get_local $4)
        )
        (i32.const 1)
       )
      )
      (get_local $2)
      (i32.gt_s
       (get_local $1)
       (i32.const 36)
      )
     )
     (i32.const 1)
    )
   )
   (set_local $7
    (i32.eq
     (tee_local $2
      (call $std:string/String#charCodeAt
       (get_local $0)
       (i32.const 0)
      )
     )
     (i32.const 45)
    )
   )
   (if
    (i32.and
     (select
      (i32.eq
       (get_local $2)
       (i32.const 43)
      )
      (get_local $7)
      (i32.eq
       (get_local $2)
       (i32.const 43)
      )
     )
     (i32.const 1)
    )
    (block
     (br_if $folding-inner0
      (i32.eq
       (get_local $4)
       (i32.const 1)
      )
     )
     (set_local $3
      (i32.const 1)
     )
    )
   )
   (if
    (i32.eqz
     (get_local $1)
    )
    (set_local $1
     (if (result i32)
      (i32.eq
       (call $std:string/String#charCodeAt
        (get_local $0)
        (get_local $3)
       )
       (i32.const 48)
      )
      (if (result i32)
       (i32.and
        (select
         (i32.and
          (select
           (i32.eq
            (tee_local $1
             (call $std:string/String#charCodeAt
              (get_local $0)
              (i32.add
               (get_local $3)
               (i32.const 1)
              )
             )
            )
            (i32.const 120)
           )
           (i32.eq
            (get_local $1)
            (i32.const 88)
           )
           (i32.eq
            (get_local $1)
            (i32.const 120)
           )
          )
          (i32.const 1)
         )
         (i32.gt_u
          (get_local $4)
          (i32.const 1)
         )
         (i32.gt_u
          (get_local $4)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
       (block (result i32)
        (br_if $folding-inner0
         (i32.lt_u
          (get_local $4)
          (i32.add
           (get_local $3)
           (i32.const 3)
          )
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 2)
         )
        )
        (i32.const 16)
       )
       (i32.const 10)
      )
      (i32.const 10)
     )
    )
   )
   (block $break|0
    (loop $continue|0
     (if
      (i32.lt_u
       (get_local $3)
       (get_local $4)
      )
      (block
       (if
        (i32.and
         (select
          (i32.le_s
           (tee_local $2
            (call $std:string/String#charCodeAt
             (get_local $0)
             (get_local $3)
            )
           )
           (i32.const 57)
          )
          (i32.le_s
           (i32.const 48)
           (get_local $2)
          )
          (i32.le_s
           (i32.const 48)
           (get_local $2)
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
            (i32.const 122)
           )
           (i32.le_s
            (i32.const 97)
            (get_local $2)
           )
           (i32.le_s
            (i32.const 97)
            (get_local $2)
           )
          )
          (i32.const 1)
         )
         (set_local $2
          (i32.add
           (get_local $2)
           (i32.const -87)
          )
         )
         (if
          (i32.and
           (select
            (i32.le_s
             (get_local $2)
             (i32.const 90)
            )
            (i32.le_s
             (i32.const 65)
             (get_local $2)
            )
            (i32.le_s
             (i32.const 65)
             (get_local $2)
            )
           )
           (i32.const 1)
          )
          (set_local $2
           (i32.add
            (get_local $2)
            (i32.const -55)
           )
          )
          (block
           (br_if $break|0
            (get_local $5)
           )
           (br $folding-inner0)
          )
         )
        )
       )
       (if
        (i32.ge_s
         (get_local $2)
         (get_local $1)
        )
        (block
         (br_if $break|0
          (get_local $5)
         )
         (br $folding-inner0)
        )
       )
       (set_local $5
        (i32.const 1)
       )
       (set_local $6
        (f64.add
         (f64.mul
          (get_local $6)
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
         (i32.const 1)
        )
       )
       (br $continue|0)
      )
     )
    )
   )
   (br_if $folding-inner0
    (i32.and
     (select
      (i32.eqz
       (get_local $5)
      )
      (i32.gt_u
       (get_local $4)
       (i32.const 2)
      )
      (get_local $5)
     )
     (i32.const 1)
    )
   )
   (return
    (select
     (f64.neg
      (get_local $6)
     )
     (get_local $6)
     (get_local $7)
    )
   )
  )
  (f64.const nan:0x8000000000000)
 )
 (func $std/string/getString (; 6 ;) (type $i) (result i32)
  (get_global $std/string/str)
 )
 (func $start (; 7 ;) (type $v)
  (local $0 f64)
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
     (i32.const 200)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (call $std:string/String#endsWith
     (get_global $std/string/str)
     (i32.const 208)
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
      (i32.const 224)
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
     (i32.const 240)
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
     (i32.const 248)
     (i32.const 0)
    )
    (i32.const -1)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (i32.trunc_s/f64
     (call $std:string/parseInt
      (get_global $std/string/str123)
      (i32.const 0)
     )
    )
    (i32.const 123)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (i32.trunc_s/f64
     (call $std:string/parseInt
      (get_global $std/string/str123ab)
      (i32.const 0)
     )
    )
    (i32.const 123)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (i32.trunc_s/f64
     (call $std:string/parseInt
      (get_global $std/string/strHex)
      (i32.const 0)
     )
    )
    (i32.const 16)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (i32.trunc_s/f64
     (call $std:string/parseInt
      (get_global $std/string/strHex)
      (i32.const 0)
     )
    )
    (i32.const 16)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (i32.trunc_s/f64
     (call $std:string/parseInt
      (get_global $std/string/str123n)
      (i32.const 0)
     )
    )
    (i32.const -123)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (i32.trunc_s/f64
     (call $std:string/parseInt
      (get_global $std/string/strHexn)
      (i32.const 0)
     )
    )
    (i32.const -16)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (i32.trunc_s/f64
     (call $std:string/parseInt
      (get_global $std/string/strHexp)
      (i32.const 0)
     )
    )
    (i32.const 16)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (i32.trunc_s/f64
     (call $std:string/parseInt
      (get_global $std/string/str123)
      (i32.const 0)
     )
    )
    (i32.const 123)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (i32.trunc_s/f64
     (call $std:string/parseInt
      (get_global $std/string/str123)
      (i32.const 10)
     )
    )
    (i32.const 123)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (i32.trunc_s/f64
     (call $std:string/parseInt
      (get_global $std/string/str123)
      (i32.const 16)
     )
    )
    (i32.const 291)
   )
   (unreachable)
  )
  (if
   (f64.eq
    (tee_local $0
     (call $std:string/parseInt
      (get_global $std/string/strab123)
      (i32.const 0)
     )
    )
    (get_local $0)
   )
   (unreachable)
  )
  (if
   (f64.eq
    (tee_local $0
     (call $std:string/parseInt
      (get_global $std/string/strHexInvalid)
      (i32.const 0)
     )
    )
    (get_local $0)
   )
   (unreachable)
  )
  (if
   (f64.eq
    (tee_local $0
     (call $std:string/parseInt
      (get_global $std/string/strHexnInvalid)
      (i32.const 0)
     )
    )
    (get_local $0)
   )
   (unreachable)
  )
  (if
   (f64.eq
    (tee_local $0
     (call $std:string/parseInt
      (get_global $std/string/strHexnnInv)
      (i32.const 0)
     )
    )
    (get_local $0)
   )
   (unreachable)
  )
  (if
   (f64.eq
    (tee_local $0
     (call $std:string/parseInt
      (get_global $std/string/str123)
      (i32.const 1)
     )
    )
    (get_local $0)
   )
   (unreachable)
  )
  (if
   (f64.eq
    (tee_local $0
     (call $std:string/parseInt
      (get_global $std/string/str123)
      (i32.const 37)
     )
    )
    (get_local $0)
   )
   (unreachable)
  )
 )
)
