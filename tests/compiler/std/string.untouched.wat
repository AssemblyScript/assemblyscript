(module
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiF (func (param i32 i32) (result f64)))
 (type $iF (func (param i32) (result f64)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $~lib/allocator/common/index/AL_BITS i32 (i32.const 3))
 (global $~lib/allocator/common/index/AL_SIZE i32 (i32.const 8))
 (global $~lib/allocator/common/index/AL_MASK i32 (i32.const 7))
 (global $~lib/allocator/common/index/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/string/str (mut i32) (i32.const 4))
 (global $std/string/nullStr (mut i32) (i32.const 0))
 (global $~lib/string/HEADER_SIZE i32 (i32.const 4))
 (global $argumentCount (mut i32) (i32.const 0))
 (global $~lib/string/CharCode.PLUS i32 (i32.const 43))
 (global $~lib/string/CharCode.MINUS i32 (i32.const 45))
 (global $~lib/string/CharCode.DOT i32 (i32.const 46))
 (global $~lib/string/CharCode._0 i32 (i32.const 48))
 (global $~lib/string/CharCode._1 i32 (i32.const 49))
 (global $~lib/string/CharCode._2 i32 (i32.const 50))
 (global $~lib/string/CharCode._3 i32 (i32.const 51))
 (global $~lib/string/CharCode._4 i32 (i32.const 52))
 (global $~lib/string/CharCode._5 i32 (i32.const 53))
 (global $~lib/string/CharCode._6 i32 (i32.const 54))
 (global $~lib/string/CharCode._7 i32 (i32.const 55))
 (global $~lib/string/CharCode._8 i32 (i32.const 56))
 (global $~lib/string/CharCode._9 i32 (i32.const 57))
 (global $~lib/string/CharCode.A i32 (i32.const 65))
 (global $~lib/string/CharCode.B i32 (i32.const 66))
 (global $~lib/string/CharCode.E i32 (i32.const 69))
 (global $~lib/string/CharCode.O i32 (i32.const 79))
 (global $~lib/string/CharCode.X i32 (i32.const 88))
 (global $~lib/string/CharCode.Z i32 (i32.const 90))
 (global $~lib/string/CharCode.a i32 (i32.const 97))
 (global $~lib/string/CharCode.b i32 (i32.const 98))
 (global $~lib/string/CharCode.e i32 (i32.const 101))
 (global $~lib/string/CharCode.o i32 (i32.const 111))
 (global $~lib/string/CharCode.x i32 (i32.const 120))
 (global $~lib/string/CharCode.z i32 (i32.const 122))
 (global $~lib/string/EMPTY i32 (i32.const 332))
 (global $std/string/c (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 372))
 (memory $0 1)
 (data (i32.const 4) "\10\00\00\00h\00i\00,\00 \00I\00\'\00m\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 40) "\0d\00\00\00s\00t\00d\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 72) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 104) "\02\00\00\00h\00i\00")
 (data (i32.const 112) "\04\00\00\00n\00u\00l\00l\00")
 (data (i32.const 124) "\06\00\00\00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 140) "\03\00\00\00I\00\'\00m\00")
 (data (i32.const 152) "\01\00\00\00,\00")
 (data (i32.const 160) "\01\00\00\00x\00")
 (data (i32.const 168) "\01\00\00\000\00")
 (data (i32.const 176) "\01\00\00\001\00")
 (data (i32.const 184) "\05\00\00\000\00b\001\000\001\00")
 (data (i32.const 200) "\05\00\00\000\00o\007\000\007\00")
 (data (i32.const 216) "\05\00\00\000\00x\00f\000\00f\00")
 (data (i32.const 232) "\05\00\00\000\00x\00F\000\00F\00")
 (data (i32.const 248) "\03\00\00\000\001\001\00")
 (data (i32.const 260) "\04\00\00\000\00x\001\00g\00")
 (data (i32.const 272) "\03\00\00\000\00.\001\00")
 (data (i32.const 284) "\03\00\00\00.\002\005\00")
 (data (i32.const 296) "\08\00\00\00.\001\00f\00o\00o\00b\00a\00r\00")
 (data (i32.const 316) "\01\00\00\00a\00")
 (data (i32.const 324) "\01\00\00\00b\00")
 (data (i32.const 332) "\00\00\00\00")
 (data (i32.const 336) "\02\00\00\00a\00b\00")
 (data (i32.const 344) "\02\00\00\00b\00a\00")
 (data (i32.const 352) "\02\00\00\00a\00a\00")
 (data (i32.const 360) "\03\00\00\00a\00b\00c\00")
 (export "getString" (func $std/string/getString))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/memory/compare_memory (; 1 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/string/String.__eq (; 2 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.eqz
     (get_local $1)
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
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.ne
    (get_local $2)
    (i32.load
     (get_local $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (return
   (i32.eqz
    (call $~lib/memory/compare_memory
     (i32.add
      (get_local $0)
      (i32.const 4)
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
 )
 (func $~lib/string/String.__ne (; 3 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (i32.eqz
    (call $~lib/string/String.__eq
     (get_local $0)
     (get_local $1)
    )
   )
  )
 )
 (func $~lib/string/String#charCodeAt (; 4 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/string/String.__ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 40)
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
 (func $~lib/string/String#startsWith (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (if
   (i32.eqz
    (call $~lib/string/String.__ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 231)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (call $~lib/string/String.__eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (i32.const 112)
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
    (call $~lib/memory/compare_memory
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
 (func $~lib/string/String#startsWith|trampoline (; 6 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (i32.sub
       (get_global $argumentCount)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (i32.const 0)
   )
  )
  (call $~lib/string/String#startsWith
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/string/String#endsWith (; 7 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (if
   (i32.eqz
    (call $~lib/string/String.__ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 100)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (call $~lib/string/String.__eq
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
    (call $~lib/memory/compare_memory
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
 (func $~lib/string/String#endsWith|trampoline (; 8 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (i32.sub
       (get_global $argumentCount)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (i32.const 2147483647)
   )
  )
  (call $~lib/string/String#endsWith
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/string/String#indexOf (; 9 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (if
   (i32.eqz
    (call $~lib/string/String.__ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 208)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (call $~lib/string/String.__eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (i32.const 112)
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
   (set_local $5
    (get_local $7)
   )
   (loop $continue|0
    (if
     (i32.le_s
      (i32.add
       (get_local $5)
       (get_local $8)
      )
      (get_local $4)
     )
     (block
      (block
       (if
        (i32.eqz
         (call $~lib/memory/compare_memory
          (i32.add
           (i32.add
            (get_local $0)
            (i32.const 4)
           )
           (i32.shl
            (get_local $5)
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
         (get_local $5)
        )
       )
      )
      (set_local $5
       (i32.add
        (get_local $5)
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
 (func $~lib/string/String#includes (; 10 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (return
   (i32.ne
    (call $~lib/string/String#indexOf
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (i32.const -1)
   )
  )
 )
 (func $~lib/string/String#includes|trampoline (; 11 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (i32.sub
       (get_global $argumentCount)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (i32.const 0)
   )
  )
  (call $~lib/string/String#includes
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/string/String#indexOf|trampoline (; 12 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (i32.sub
       (get_global $argumentCount)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (i32.const 0)
   )
  )
  (call $~lib/string/String#indexOf
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $std/string/getString (; 13 ;) (type $i) (result i32)
  (return
   (get_global $std/string/str)
  )
 )
 (func $~lib/string/parse<f64> (; 14 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
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
          (block
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
        )
        (block
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
      )
      (block
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
     )
     (block
      (set_local $1
       (i32.const 10)
      )
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
 (func $~lib/string/parseInt (; 15 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (return
   (call $~lib/string/parse<f64>
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $~lib/string/parseInt|trampoline (; 16 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (i32.sub
       (get_global $argumentCount)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $1
    (i32.const 0)
   )
  )
  (call $~lib/string/parseInt
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/string/parseFloat (; 17 ;) (type $iF) (param $0 i32) (result f64)
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
                  (i32.const 557)
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
 (func $~lib/allocator/arena/allocate_memory (; 18 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (nop)
  (if
   (if (result i32)
    (get_local $0)
    (i32.lt_u
     (get_local $0)
     (i32.const 1073741824)
    )
    (get_local $0)
   )
   (block
    (set_local $1
     (get_global $~lib/allocator/arena/offset)
    )
    (set_local $2
     (i32.and
      (i32.add
       (i32.add
        (get_local $1)
        (get_local $0)
       )
       (i32.const 7)
      )
      (i32.xor
       (i32.const 7)
       (i32.const -1)
      )
     )
    )
    (set_local $3
     (current_memory)
    )
    (if
     (i32.gt_u
      (get_local $2)
      (i32.shl
       (get_local $3)
       (i32.const 16)
      )
     )
     (block
      (set_local $4
       (i32.shr_u
        (i32.and
         (i32.add
          (i32.sub
           (get_local $2)
           (get_local $1)
          )
          (i32.const 65535)
         )
         (i32.xor
          (i32.const 65535)
          (i32.const -1)
         )
        )
        (i32.const 16)
       )
      )
      (set_local $5
       (select
        (tee_local $5
         (get_local $3)
        )
        (tee_local $6
         (get_local $4)
        )
        (i32.gt_s
         (get_local $5)
         (get_local $6)
        )
       )
      )
      (if
       (i32.lt_s
        (grow_memory
         (get_local $5)
        )
        (i32.const 0)
       )
       (if
        (i32.lt_s
         (grow_memory
          (get_local $4)
         )
         (i32.const 0)
        )
        (unreachable)
       )
      )
     )
    )
    (set_global $~lib/allocator/arena/offset
     (get_local $2)
    )
    (return
     (get_local $1)
    )
   )
  )
  (return
   (i32.const 0)
  )
 )
 (func $~lib/string/allocate (; 19 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (i32.gt_s
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 8)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $1
   (call $~lib/allocator/arena/allocate_memory
    (i32.add
     (i32.const 4)
     (i32.shl
      (get_local $0)
      (i32.const 1)
     )
    )
   )
  )
  (i32.store
   (get_local $1)
   (get_local $0)
  )
  (return
   (get_local $1)
  )
 )
 (func $~lib/memory/copy_memory (; 20 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (nop)
  (block $break|0
   (loop $continue|0
    (if
     (if (result i32)
      (get_local $2)
      (i32.and
       (get_local $1)
       (i32.const 3)
      )
      (get_local $2)
     )
     (block
      (block
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (if
   (i32.eq
    (i32.and
     (get_local $0)
     (i32.const 3)
    )
    (i32.const 0)
   )
   (block
    (block $break|1
     (loop $continue|1
      (if
       (i32.ge_u
        (get_local $2)
        (i32.const 16)
       )
       (block
        (block
         (i32.store
          (get_local $0)
          (i32.load
           (get_local $1)
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 4)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 4)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 8)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 12)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 12)
           )
          )
         )
         (set_local $1
          (i32.add
           (get_local $1)
           (i32.const 16)
          )
         )
         (set_local $0
          (i32.add
           (get_local $0)
           (i32.const 16)
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 16)
          )
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 8)
     )
     (block
      (i32.store
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (i32.store
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 8)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 4)
     )
     (block
      (i32.store
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 2)
     )
     (block
      (i32.store16
       (get_local $0)
       (i32.load16_u
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 2)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 2)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
     (i32.store8
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
    )
    (return)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.const 32)
   )
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (set_local $5
        (i32.and
         (get_local $0)
         (i32.const 3)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $5)
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $5)
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $5)
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      (block
       (set_local $3
        (i32.load
         (get_local $1)
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 3)
        )
       )
       (block $break|3
        (loop $continue|3
         (if
          (i32.ge_u
           (get_local $2)
           (i32.const 17)
          )
          (block
           (block
            (set_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 1)
              )
             )
            )
            (i32.store
             (get_local $0)
             (i32.or
              (i32.shr_u
               (get_local $3)
               (i32.const 24)
              )
              (i32.shl
               (get_local $4)
               (i32.const 8)
              )
             )
            )
            (set_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 5)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 4)
             )
             (i32.or
              (i32.shr_u
               (get_local $4)
               (i32.const 24)
              )
              (i32.shl
               (get_local $3)
               (i32.const 8)
              )
             )
            )
            (set_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 9)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 8)
             )
             (i32.or
              (i32.shr_u
               (get_local $3)
               (i32.const 24)
              )
              (i32.shl
               (get_local $4)
               (i32.const 8)
              )
             )
            )
            (set_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 13)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 12)
             )
             (i32.or
              (i32.shr_u
               (get_local $4)
               (i32.const 24)
              )
              (i32.shl
               (get_local $3)
               (i32.const 8)
              )
             )
            )
            (set_local $1
             (i32.add
              (get_local $1)
              (i32.const 16)
             )
            )
            (set_local $0
             (i32.add
              (get_local $0)
              (i32.const 16)
             )
            )
            (set_local $2
             (i32.sub
              (get_local $2)
              (i32.const 16)
             )
            )
           )
           (br $continue|3)
          )
         )
        )
       )
       (br $break|2)
      )
     )
     (block
      (set_local $3
       (i32.load
        (get_local $1)
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      (set_local $2
       (i32.sub
        (get_local $2)
        (i32.const 2)
       )
      )
      (block $break|4
       (loop $continue|4
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 18)
         )
         (block
          (block
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 2)
             )
            )
           )
           (i32.store
            (get_local $0)
            (i32.or
             (i32.shr_u
              (get_local $3)
              (i32.const 16)
             )
             (i32.shl
              (get_local $4)
              (i32.const 16)
             )
            )
           )
           (set_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 6)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 4)
            )
            (i32.or
             (i32.shr_u
              (get_local $4)
              (i32.const 16)
             )
             (i32.shl
              (get_local $3)
              (i32.const 16)
             )
            )
           )
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 10)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 8)
            )
            (i32.or
             (i32.shr_u
              (get_local $3)
              (i32.const 16)
             )
             (i32.shl
              (get_local $4)
              (i32.const 16)
             )
            )
           )
           (set_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 14)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 12)
            )
            (i32.or
             (i32.shr_u
              (get_local $4)
              (i32.const 16)
             )
             (i32.shl
              (get_local $3)
              (i32.const 16)
             )
            )
           )
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 16)
            )
           )
           (set_local $0
            (i32.add
             (get_local $0)
             (i32.const 16)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 16)
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
      (br $break|2)
     )
    )
    (block
     (set_local $3
      (i32.load
       (get_local $1)
      )
     )
     (i32.store8
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (block $break|5
      (loop $continue|5
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 19)
        )
        (block
         (block
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 3)
            )
           )
          )
          (i32.store
           (get_local $0)
           (i32.or
            (i32.shr_u
             (get_local $3)
             (i32.const 8)
            )
            (i32.shl
             (get_local $4)
             (i32.const 24)
            )
           )
          )
          (set_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 7)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 4)
           )
           (i32.or
            (i32.shr_u
             (get_local $4)
             (i32.const 8)
            )
            (i32.shl
             (get_local $3)
             (i32.const 24)
            )
           )
          )
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 11)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 8)
           )
           (i32.or
            (i32.shr_u
             (get_local $3)
             (i32.const 8)
            )
            (i32.shl
             (get_local $4)
             (i32.const 24)
            )
           )
          )
          (set_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 15)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 12)
           )
           (i32.or
            (i32.shr_u
             (get_local $4)
             (i32.const 8)
            )
            (i32.shl
             (get_local $3)
             (i32.const 24)
            )
           )
          )
          (set_local $1
           (i32.add
            (get_local $1)
            (i32.const 16)
           )
          )
          (set_local $0
           (i32.add
            (get_local $0)
            (i32.const 16)
           )
          )
          (set_local $2
           (i32.sub
            (get_local $2)
            (i32.const 16)
           )
          )
         )
         (br $continue|5)
        )
       )
      )
     )
     (br $break|2)
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 16)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 8)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 4)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 2)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 1)
   )
   (i32.store8
    (block (result i32)
     (set_local $5
      (get_local $0)
     )
     (set_local $0
      (i32.add
       (get_local $5)
       (i32.const 1)
      )
     )
     (get_local $5)
    )
    (i32.load8_u
     (block (result i32)
      (set_local $5
       (get_local $1)
      )
      (set_local $1
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
    )
   )
  )
 )
 (func $~lib/memory/move_memory (; 21 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return)
  )
  (if
   (i32.and
    (if (result i32)
     (tee_local $3
      (i32.le_u
       (i32.add
        (get_local $1)
        (get_local $2)
       )
       (get_local $0)
      )
     )
     (get_local $3)
     (i32.le_u
      (i32.add
       (get_local $0)
       (get_local $2)
      )
      (get_local $1)
     )
    )
    (i32.const 1)
   )
   (block
    (call $~lib/memory/copy_memory
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (return)
   )
  )
  (if
   (i32.lt_u
    (get_local $0)
    (get_local $1)
   )
   (block
    (if
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 7)
      )
      (i32.and
       (get_local $0)
       (i32.const 7)
      )
     )
     (block
      (block $break|0
       (loop $continue|0
        (if
         (i32.and
          (get_local $0)
          (i32.const 7)
         )
         (block
          (block
           (if
            (i32.eqz
             (get_local $2)
            )
            (return)
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 1)
            )
           )
           (i32.store8
            (block (result i32)
             (set_local $3
              (get_local $0)
             )
             (set_local $0
              (i32.add
               (get_local $3)
               (i32.const 1)
              )
             )
             (get_local $3)
            )
            (i32.load8_u
             (block (result i32)
              (set_local $3
               (get_local $1)
              )
              (set_local $1
               (i32.add
                (get_local $3)
                (i32.const 1)
               )
              )
              (get_local $3)
             )
            )
           )
          )
          (br $continue|0)
         )
        )
       )
      )
      (block $break|1
       (loop $continue|1
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
          (block
           (i64.store
            (get_local $0)
            (i64.load
             (get_local $1)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
           (set_local $0
            (i32.add
             (get_local $0)
             (i32.const 8)
            )
           )
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 8)
            )
           )
          )
          (br $continue|1)
         )
        )
       )
      )
     )
    )
    (block $break|2
     (loop $continue|2
      (if
       (get_local $2)
       (block
        (block
         (i32.store8
          (block (result i32)
           (set_local $3
            (get_local $0)
           )
           (set_local $0
            (i32.add
             (get_local $3)
             (i32.const 1)
            )
           )
           (get_local $3)
          )
          (i32.load8_u
           (block (result i32)
            (set_local $3
             (get_local $1)
            )
            (set_local $1
             (i32.add
              (get_local $3)
              (i32.const 1)
             )
            )
            (get_local $3)
           )
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        (br $continue|2)
       )
      )
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 7)
      )
      (i32.and
       (get_local $0)
       (i32.const 7)
      )
     )
     (block
      (block $break|3
       (loop $continue|3
        (if
         (i32.and
          (i32.add
           (get_local $0)
           (get_local $2)
          )
          (i32.const 7)
         )
         (block
          (block
           (if
            (i32.eqz
             (get_local $2)
            )
            (return)
           )
           (i32.store8
            (i32.add
             (get_local $0)
             (tee_local $2
              (i32.sub
               (get_local $2)
               (i32.const 1)
              )
             )
            )
            (i32.load8_u
             (i32.add
              (get_local $1)
              (get_local $2)
             )
            )
           )
          )
          (br $continue|3)
         )
        )
       )
      )
      (block $break|4
       (loop $continue|4
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
          (block
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
           (i64.store
            (i32.add
             (get_local $0)
             (get_local $2)
            )
            (i64.load
             (i32.add
              (get_local $1)
              (get_local $2)
             )
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
     )
    )
    (block $break|5
     (loop $continue|5
      (if
       (get_local $2)
       (block
        (block
         (i32.store8
          (i32.add
           (get_local $0)
           (tee_local $2
            (i32.sub
             (get_local $2)
             (i32.const 1)
            )
           )
          )
          (i32.load8_u
           (i32.add
            (get_local $1)
            (get_local $2)
           )
          )
         )
        )
        (br $continue|5)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/string/String#concat (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (call $~lib/string/String.__ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 79)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (call $~lib/string/String.__eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (i32.const 112)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $1)
   )
  )
  (set_local $4
   (i32.add
    (get_local $2)
    (get_local $3)
   )
  )
  (if
   (i32.eq
    (get_local $4)
    (i32.const 0)
   )
   (return
    (i32.const 332)
   )
  )
  (set_local $5
   (call $~lib/string/allocate
    (get_local $4)
   )
  )
  (call $~lib/memory/move_memory
   (i32.add
    (get_local $5)
    (i32.const 4)
   )
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (i32.shl
    (get_local $2)
    (i32.const 1)
   )
  )
  (call $~lib/memory/move_memory
   (i32.add
    (i32.add
     (get_local $5)
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
    (get_local $3)
    (i32.const 1)
   )
  )
  (return
   (get_local $5)
  )
 )
 (func $~lib/string/String.__concat (; 23 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (set_local $0
    (i32.const 112)
   )
  )
  (return
   (call $~lib/string/String#concat
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $~lib/string/String.__gt (; 24 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.and
    (if (result i32)
     (tee_local $2
      (i32.eqz
       (get_local $0)
      )
     )
     (get_local $2)
     (i32.eqz
      (get_local $1)
     )
    )
    (i32.const 1)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.load
     (get_local $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.load
     (get_local $1)
    )
   )
   (return
    (i32.const 1)
   )
  )
  (set_local $4
   (select
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
    (tee_local $3
     (i32.load
      (get_local $1)
     )
    )
    (i32.lt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  (return
   (i32.gt_s
    (call $~lib/memory/compare_memory
     (i32.add
      (get_local $0)
      (i32.const 4)
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
    (i32.const 0)
   )
  )
 )
 (func $~lib/string/String.__gte (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.and
    (if (result i32)
     (tee_local $2
      (i32.eqz
       (get_local $0)
      )
     )
     (get_local $2)
     (i32.eqz
      (get_local $1)
     )
    )
    (i32.const 1)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.load
     (get_local $0)
    )
   )
   (return
    (i32.eqz
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (if
   (i32.eqz
    (i32.load
     (get_local $1)
    )
   )
   (return
    (i32.const 1)
   )
  )
  (set_local $4
   (select
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
    (tee_local $3
     (i32.load
      (get_local $1)
     )
    )
    (i32.lt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  (return
   (i32.ge_s
    (call $~lib/memory/compare_memory
     (i32.add
      (get_local $0)
      (i32.const 4)
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
    (i32.const 0)
   )
  )
 )
 (func $~lib/string/String.__lt (; 26 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.and
    (if (result i32)
     (tee_local $2
      (i32.eqz
       (get_local $0)
      )
     )
     (get_local $2)
     (i32.eqz
      (get_local $1)
     )
    )
    (i32.const 1)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.load
     (get_local $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.load
     (get_local $0)
    )
   )
   (return
    (i32.const 1)
   )
  )
  (set_local $4
   (select
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
    (tee_local $3
     (i32.load
      (get_local $1)
     )
    )
    (i32.lt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  (return
   (i32.lt_s
    (call $~lib/memory/compare_memory
     (i32.add
      (get_local $0)
      (i32.const 4)
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
    (i32.const 0)
   )
  )
 )
 (func $~lib/string/String.__lte (; 27 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.and
    (if (result i32)
     (tee_local $2
      (i32.eqz
       (get_local $0)
      )
     )
     (get_local $2)
     (i32.eqz
      (get_local $1)
     )
    )
    (i32.const 1)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.load
     (get_local $1)
    )
   )
   (return
    (i32.eqz
     (i32.load
      (get_local $0)
     )
    )
   )
  )
  (if
   (i32.eqz
    (i32.load
     (get_local $0)
    )
   )
   (return
    (i32.const 1)
   )
  )
  (set_local $4
   (select
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
    (tee_local $3
     (i32.load
      (get_local $1)
     )
    )
    (i32.lt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  (return
   (i32.le_s
    (call $~lib/memory/compare_memory
     (i32.add
      (get_local $0)
      (i32.const 4)
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
    (i32.const 0)
   )
  )
 )
 (func $start (; 28 ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (i32.const 7)
    )
    (i32.xor
     (i32.const 7)
     (i32.const -1)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
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
     (i32.const 9)
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
     (i32.const 11)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/string/String#charCodeAt
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
     (i32.const 12)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (block (result i32)
     (set_global $argumentCount
      (i32.const 1)
     )
     (call $~lib/string/String#startsWith|trampoline
      (get_global $std/string/str)
      (i32.const 104)
      (i32.const 0)
     )
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
    (block (result i32)
     (set_global $argumentCount
      (i32.const 1)
     )
     (call $~lib/string/String#endsWith|trampoline
      (get_global $std/string/str)
      (i32.const 124)
      (i32.const 0)
     )
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
    (block (result i32)
     (set_global $argumentCount
      (i32.const 1)
     )
     (call $~lib/string/String#includes|trampoline
      (get_global $std/string/str)
      (i32.const 140)
      (i32.const 0)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 15)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block (result i32)
      (set_global $argumentCount
       (i32.const 1)
      )
      (call $~lib/string/String#indexOf|trampoline
       (get_global $std/string/str)
       (i32.const 152)
       (i32.const 0)
      )
     )
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 16)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block (result i32)
      (set_global $argumentCount
       (i32.const 1)
      )
      (call $~lib/string/String#indexOf|trampoline
       (get_global $std/string/str)
       (i32.const 160)
       (i32.const 0)
      )
     )
     (i32.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 17)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (block (result f64)
      (set_global $argumentCount
       (i32.const 1)
      )
      (call $~lib/string/parseInt|trampoline
       (i32.const 168)
       (i32.const 0)
      )
     )
     (f64.const 0)
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
     (block (result f64)
      (set_global $argumentCount
       (i32.const 1)
      )
      (call $~lib/string/parseInt|trampoline
       (i32.const 176)
       (i32.const 0)
      )
     )
     (f64.const 1)
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
     (block (result f64)
      (set_global $argumentCount
       (i32.const 1)
      )
      (call $~lib/string/parseInt|trampoline
       (i32.const 184)
       (i32.const 0)
      )
     )
     (f64.const 5)
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
     (block (result f64)
      (set_global $argumentCount
       (i32.const 1)
      )
      (call $~lib/string/parseInt|trampoline
       (i32.const 200)
       (i32.const 0)
      )
     )
     (f64.const 455)
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
     (block (result f64)
      (set_global $argumentCount
       (i32.const 1)
      )
      (call $~lib/string/parseInt|trampoline
       (i32.const 216)
       (i32.const 0)
      )
     )
     (f64.const 3855)
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
     (block (result f64)
      (set_global $argumentCount
       (i32.const 1)
      )
      (call $~lib/string/parseInt|trampoline
       (i32.const 232)
       (i32.const 0)
      )
     )
     (f64.const 3855)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 28)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (block (result f64)
      (set_global $argumentCount
       (i32.const 1)
      )
      (call $~lib/string/parseInt|trampoline
       (i32.const 248)
       (i32.const 0)
      )
     )
     (f64.const 11)
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
     (block (result f64)
      (set_global $argumentCount
       (i32.const 1)
      )
      (call $~lib/string/parseInt|trampoline
       (i32.const 260)
       (i32.const 0)
      )
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
     (call $~lib/string/parseFloat
      (i32.const 168)
     )
     (f64.const 0)
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
     (call $~lib/string/parseFloat
      (i32.const 176)
     )
     (f64.const 1)
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
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseFloat
      (i32.const 272)
     )
     (f64.const 0.1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 34)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseFloat
      (i32.const 284)
     )
     (f64.const 0.25)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 35)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f64.eq
     (call $~lib/string/parseFloat
      (i32.const 296)
     )
     (f64.const 0.1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 36)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/string/c
   (call $~lib/string/String.__concat
    (i32.const 316)
    (i32.const 324)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (get_global $std/string/c)
     (i32.const 336)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 39)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__ne
     (get_global $std/string/c)
     (i32.const 316)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 40)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (i32.const 332)
     (i32.const 332)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 41)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__ne
     (i32.const 332)
     (get_global $std/string/nullStr)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 42)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 324)
     (i32.const 316)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 44)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 344)
     (i32.const 316)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 45)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gte
     (i32.const 344)
     (i32.const 352)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 46)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 344)
     (i32.const 336)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 47)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__lt
      (i32.const 344)
      (i32.const 336)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 48)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__lt
      (i32.const 324)
      (get_global $std/string/nullStr)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 50)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__lt
      (get_global $std/string/nullStr)
      (i32.const 324)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 51)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 360)
     (i32.const 332)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 53)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__lt
     (i32.const 332)
     (i32.const 360)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 54)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gte
     (i32.const 360)
     (i32.const 332)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 55)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__lte
     (i32.const 332)
     (i32.const 360)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 56)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__lt
      (i32.const 360)
      (i32.const 332)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 57)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__gt
      (i32.const 332)
      (i32.const 360)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 58)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__lt
      (i32.const 332)
      (i32.const 332)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 59)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eqz
     (call $~lib/string/String.__gt
      (i32.const 332)
      (i32.const 332)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 60)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gte
     (i32.const 332)
     (i32.const 332)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 61)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__lte
     (i32.const 332)
     (i32.const 332)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 62)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
