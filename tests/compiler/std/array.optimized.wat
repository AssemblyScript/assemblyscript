(module
 (type $i (func (result i32)))
 (type $F (func (result f64)))
 (type $Iv (func (param i64)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $II (func (param i64) (result i64)))
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $v (func))
 (import "JSMath" "random" (func $(lib)/math/JSMath.random (result f64)))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global "$(lib)/allocator/arena/startOffset" (mut i32) (i32.const 0))
 (global "$(lib)/allocator/arena/offset" (mut i32) (i32.const 0))
 (global "$(lib)/math/random_seeded" (mut i32) (i32.const 0))
 (global "$(lib)/math/random_state0" (mut i64) (i64.const 0))
 (global "$(lib)/math/random_state1" (mut i64) (i64.const 0))
 (global $std/array/arr (mut i32) (i32.const 0))
 (global $std/array/i (mut i32) (i32.const 0))
 (global $argumentCount (mut i32) (i32.const 0))
 (global $std/array/includes (mut i32) (i32.const 0))
 (global $std/array/every (mut i32) (i32.const 0))
 (global $std/array/some (mut i32) (i32.const 0))
 (global $std/array/boolVal (mut i32) (i32.const 0))
 (global $std/array/revesed0 (mut i32) (i32.const 96))
 (global $std/array/revesed1 (mut i32) (i32.const 112))
 (global $std/array/revesed2 (mut i32) (i32.const 128))
 (global $std/array/revesed4 (mut i32) (i32.const 152))
 (global $std/array/expected4 (mut i32) (i32.const 184))
 (global $std/array/revesed64 (mut i32) (i32.const 0))
 (global $std/array/revesed128 (mut i32) (i32.const 0))
 (global $std/array/revesed1024 (mut i32) (i32.const 0))
 (global $std/array/revesed10000 (mut i32) (i32.const 0))
 (global $std/array/randomized512 (mut i32) (i32.const 0))
 (global $std/array/randomized64 (mut i32) (i32.const 0))
 (global $std/array/randomized257 (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 252))
 (table 28 28 anyfunc)
 (elem (i32.const 0) $start~anonymous|0 $start~anonymous|1 $start~anonymous|2 $start~anonymous|3 $start~anonymous|2 $start~anonymous|5 $start~anonymous|6 $start~anonymous|7 $start~anonymous|8 $start~anonymous|9 $start~anonymous|10 $start~anonymous|11 $start~anonymous|12 $start~anonymous|13 $start~anonymous|14 $start~anonymous|15 $start~anonymous|16 $start~anonymous|16 $start~anonymous|18 $start~anonymous|19 $start~anonymous|20 $start~anonymous|16 $start~anonymous|22 $std/array/createDefaultComparator<i32>~anonymous|23 $start~anonymous|24 $start~anonymous|25 $start~anonymous|24 $start~anonymous|25)
 (memory $0 1)
 (data (i32.const 4) "\0d\00\00\00(\00l\00i\00b\00)\00/\00m\00a\00t\00h\00.\00t\00s")
 (data (i32.const 36) "\0c\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 64) "\0e\00\00\00(\00l\00i\00b\00)\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 96) "l")
 (data (i32.const 112) "|\00\00\00\01\00\00\00\01\00\00\00\01")
 (data (i32.const 128) "\8c\00\00\00\02\00\00\00\02\00\00\00\02\00\00\00\01")
 (data (i32.const 152) "\a4\00\00\00\04\00\00\00\04\00\00\00\03\00\00\00\02\00\00\00\01")
 (data (i32.const 184) "\c4\00\00\00\04\00\00\00\04\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 216) "\e4\00\00\00\01\00\00\00\01\00\00\00\01")
 (data (i32.const 232) "\f4\00\00\00\02\00\00\00\02\00\00\00\01\00\00\00\02")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func "$(lib)/math/murmurHash3" (; 2 ;) (type $II) (param $0 i64) (result i64)
  (i64.xor
   (tee_local $0
    (i64.mul
     (i64.xor
      (tee_local $0
       (i64.mul
        (i64.xor
         (get_local $0)
         (i64.shr_u
          (get_local $0)
          (i64.const 33)
         )
        )
        (i64.const -49064778989728563)
       )
      )
      (i64.shr_u
       (get_local $0)
       (i64.const 33)
      )
     )
     (i64.const -4265267296055464877)
    )
   )
   (i64.shr_u
    (get_local $0)
    (i64.const 33)
   )
  )
 )
 (func "$(lib)/math/NativeMath.seedRandom" (; 3 ;) (type $Iv) (param $0 i64)
  (if
   (i64.eqz
    (get_local $0)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 980)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_global "$(lib)/math/random_seeded"
   (i32.const 1)
  )
  (set_global "$(lib)/math/random_state0"
   (call "$(lib)/math/murmurHash3"
    (get_local $0)
   )
  )
  (set_global "$(lib)/math/random_state1"
   (call "$(lib)/math/murmurHash3"
    (get_global "$(lib)/math/random_state0")
   )
  )
 )
 (func "$(lib)/allocator/arena/allocate_memory" (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.gt_u
    (tee_local $2
     (i32.and
      (i32.add
       (i32.add
        (tee_local $1
         (get_global "$(lib)/allocator/arena/offset")
        )
        (get_local $0)
       )
       (i32.const 7)
      )
      (i32.const -8)
     )
    )
    (i32.shl
     (tee_local $0
      (current_memory)
     )
     (i32.const 16)
    )
   )
   (if
    (i32.lt_s
     (grow_memory
      (select
       (get_local $0)
       (tee_local $4
        (tee_local $3
         (i32.shr_u
          (i32.and
           (i32.add
            (i32.sub
             (get_local $2)
             (get_local $1)
            )
            (i32.const 65535)
           )
           (i32.const -65536)
          )
          (i32.const 16)
         )
        )
       )
       (i32.gt_s
        (get_local $0)
        (get_local $4)
       )
      )
     )
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (grow_memory
       (get_local $3)
      )
      (i32.const 0)
     )
     (unreachable)
    )
   )
  )
  (set_global "$(lib)/allocator/arena/offset"
   (get_local $2)
  )
  (get_local $1)
 )
 (func "$(lib)/array/Array<i32>#get:length" (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=8
   (get_local $0)
  )
 )
 (func "$(lib)/memory/copy_memory" (; 6 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (loop $continue|0
   (if
    (select
     (i32.and
      (get_local $1)
      (i32.const 3)
     )
     (get_local $2)
     (get_local $2)
    )
    (block
     (set_local $0
      (i32.add
       (tee_local $3
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $3)
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.load8_u
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
     (br $continue|0)
    )
   )
  )
  (if
   (i32.eqz
    (i32.and
     (get_local $0)
     (i32.const 3)
    )
   )
   (block
    (loop $continue|1
     (if
      (i32.ge_u
       (get_local $2)
       (i32.const 16)
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
       (br $continue|1)
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
     (block
      (set_local $3
       (get_local $0)
      )
      (i32.store8
       (get_local $3)
       (block (result i32)
        (set_local $3
         (get_local $1)
        )
        (i32.load8_u
         (get_local $3)
        )
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
       (block $tablify|0
        (br_table $case0|2 $case1|2 $case2|2 $tablify|0
         (i32.sub
          (i32.and
           (get_local $0)
           (i32.const 3)
          )
          (i32.const 1)
         )
        )
       )
       (br $break|2)
      )
      (set_local $4
       (i32.load
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (tee_local $3
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (i32.store8
       (get_local $3)
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $3
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        (i32.load8_u
         (get_local $3)
        )
       )
      )
      (set_local $0
       (i32.add
        (tee_local $3
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (i32.store8
       (get_local $3)
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $3
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        (i32.load8_u
         (get_local $3)
        )
       )
      )
      (set_local $0
       (i32.add
        (tee_local $3
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (i32.store8
       (get_local $3)
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $3
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        (i32.load8_u
         (get_local $3)
        )
       )
      )
      (set_local $2
       (i32.sub
        (get_local $2)
        (i32.const 3)
       )
      )
      (loop $continue|3
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 17)
        )
        (block
         (i32.store
          (get_local $0)
          (i32.or
           (i32.shr_u
            (get_local $4)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 1)
              )
             )
            )
            (i32.const 8)
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
            (get_local $3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 5)
              )
             )
            )
            (i32.const 8)
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
            (get_local $4)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 9)
              )
             )
            )
            (i32.const 8)
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
            (get_local $3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 13)
              )
             )
            )
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
         (br $continue|3)
        )
       )
      )
      (br $break|2)
     )
     (set_local $4
      (i32.load
       (get_local $1)
      )
     )
     (set_local $0
      (i32.add
       (tee_local $3
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $3)
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.load8_u
        (get_local $3)
       )
      )
     )
     (set_local $0
      (i32.add
       (tee_local $3
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $3)
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.load8_u
        (get_local $3)
       )
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 2)
      )
     )
     (loop $continue|4
      (if
       (i32.ge_u
        (get_local $2)
        (i32.const 18)
       )
       (block
        (i32.store
         (get_local $0)
         (i32.or
          (i32.shr_u
           (get_local $4)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 2)
             )
            )
           )
           (i32.const 16)
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
           (get_local $3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 6)
             )
            )
           )
           (i32.const 16)
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
           (get_local $4)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 10)
             )
            )
           )
           (i32.const 16)
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
           (get_local $3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 14)
             )
            )
           )
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
        (br $continue|4)
       )
      )
     )
     (br $break|2)
    )
    (set_local $4
     (i32.load
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
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
    (loop $continue|5
     (if
      (i32.ge_u
       (get_local $2)
       (i32.const 19)
      )
      (block
       (i32.store
        (get_local $0)
        (i32.or
         (i32.shr_u
          (get_local $4)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 3)
            )
           )
          )
          (i32.const 24)
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
          (get_local $3)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 7)
            )
           )
          )
          (i32.const 24)
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
          (get_local $4)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 11)
            )
           )
          )
          (i32.const 24)
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
          (get_local $3)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 15)
            )
           )
          )
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
       (br $continue|5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 16)
   )
   (block
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
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
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
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
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
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
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $3
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (i32.load8_u
       (get_local $3)
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
   (block
    (set_local $3
     (get_local $0)
    )
    (i32.store8
     (get_local $3)
     (block (result i32)
      (set_local $3
       (get_local $1)
      )
      (i32.load8_u
       (get_local $3)
      )
     )
    )
   )
  )
 )
 (func "$(lib)/memory/move_memory" (; 7 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
    (call "$(lib)/memory/copy_memory"
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
      (loop $continue|0
       (if
        (i32.and
         (get_local $0)
         (i32.const 7)
        )
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
         (set_local $0
          (i32.add
           (tee_local $3
            (get_local $0)
           )
           (i32.const 1)
          )
         )
         (i32.store8
          (get_local $3)
          (block (result i32)
           (set_local $1
            (i32.add
             (tee_local $3
              (get_local $1)
             )
             (i32.const 1)
            )
           )
           (i32.load8_u
            (get_local $3)
           )
          )
         )
         (br $continue|0)
        )
       )
      )
      (loop $continue|1
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 8)
        )
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
         (br $continue|1)
        )
       )
      )
     )
    )
    (loop $continue|2
     (if
      (get_local $2)
      (block
       (set_local $0
        (i32.add
         (tee_local $3
          (get_local $0)
         )
         (i32.const 1)
        )
       )
       (i32.store8
        (get_local $3)
        (block (result i32)
         (set_local $1
          (i32.add
           (tee_local $3
            (get_local $1)
           )
           (i32.const 1)
          )
         )
         (i32.load8_u
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
       (br $continue|2)
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
         (br $continue|3)
        )
       )
      )
      (loop $continue|4
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 8)
        )
        (block
         (i64.store
          (i32.add
           (get_local $0)
           (tee_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
          )
          (i64.load
           (i32.add
            (get_local $1)
            (get_local $2)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
    )
    (loop $continue|5
     (if
      (get_local $2)
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
       (br $continue|5)
      )
     )
    )
   )
  )
 )
 (func "$(lib)/allocator/arena/free_memory" (; 8 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func "$(lib)/array/Array<i32>#__grow" (; 9 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (if
   (i32.le_s
    (get_local $1)
    (i32.load offset=4
     (get_local $0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 9)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $2
   (call "$(lib)/allocator/arena/allocate_memory"
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
  )
  (if
   (i32.load
    (get_local $0)
   )
   (block
    (call "$(lib)/memory/move_memory"
     (get_local $2)
     (i32.load
      (get_local $0)
     )
     (i32.shl
      (i32.load offset=4
       (get_local $0)
      )
      (i32.const 2)
     )
    )
    (call "$(lib)/allocator/arena/free_memory"
     (i32.load
      (get_local $0)
     )
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $2)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
 )
 (func "$(lib)/array/Array<i32>#push" (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eq
    (i32.load offset=8
     (get_local $0)
    )
    (i32.load offset=4
     (get_local $0)
    )
   )
   (call "$(lib)/array/Array<i32>#__grow"
    (get_local $0)
    (if (result i32)
     (i32.load offset=4
      (get_local $0)
     )
     (i32.shl
      (i32.load offset=4
       (get_local $0)
      )
      (i32.const 1)
     )
     (i32.const 1)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.shl
     (i32.load offset=8
      (get_local $0)
     )
     (i32.const 2)
    )
   )
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=8
      (get_local $0)
     )
     (i32.const 1)
    )
   )
  )
  (get_local $2)
 )
 (func "$(lib)/array/Array<i32>#__get" (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.load offset=4
     (get_local $0)
    )
   )
   (unreachable)
  )
  (i32.load
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
  )
 )
 (func "$(lib)/array/Array<i32>#pop" (; 12 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.lt_s
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 1)
   )
   (unreachable)
  )
  (i32.load
   (i32.add
    (i32.load
     (get_local $0)
    )
    (block (result i32)
     (i32.store offset=8
      (get_local $0)
      (tee_local $1
       (i32.sub
        (i32.load offset=8
         (get_local $0)
        )
        (i32.const 1)
       )
      )
     )
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
   )
  )
 )
 (func "$(lib)/array/Array<i32>#unshift" (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eq
    (i32.load offset=8
     (get_local $0)
    )
    (tee_local $2
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (block
    (if
     (i32.le_s
      (tee_local $4
       (select
        (i32.shl
         (get_local $2)
         (i32.const 1)
        )
        (i32.const 1)
        (get_local $2)
       )
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 64)
       (i32.const 207)
       (i32.const 6)
      )
      (unreachable)
     )
    )
    (set_local $3
     (call "$(lib)/allocator/arena/allocate_memory"
      (i32.shl
       (get_local $4)
       (i32.const 2)
      )
     )
    )
    (if
     (i32.load
      (get_local $0)
     )
     (block
      (call "$(lib)/memory/move_memory"
       (i32.add
        (get_local $3)
        (i32.const 4)
       )
       (i32.load
        (get_local $0)
       )
       (i32.shl
        (get_local $2)
        (i32.const 2)
       )
      )
      (call "$(lib)/allocator/arena/free_memory"
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (get_local $4)
    )
   )
   (call "$(lib)/memory/move_memory"
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.const 4)
    )
    (i32.load
     (get_local $0)
    )
    (i32.shl
     (get_local $2)
     (i32.const 2)
    )
   )
  )
  (i32.store
   (i32.load
    (get_local $0)
   )
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (tee_local $3
    (i32.add
     (i32.load offset=8
      (get_local $0)
     )
     (i32.const 1)
    )
   )
  )
  (get_local $3)
 )
 (func "$(lib)/memory/set_memory" (; 14 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (return)
  )
  (i32.store8
   (get_local $0)
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 1)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 2)
   )
   (return)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 1)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 2)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 2)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 3)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 6)
   )
   (return)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 3)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 4)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 8)
   )
   (return)
  )
  (i32.store
   (tee_local $0
    (i32.add
     (get_local $0)
     (tee_local $4
      (i32.and
       (i32.sub
        (i32.const 0)
        (get_local $0)
       )
       (i32.const 3)
      )
     )
    )
   )
   (tee_local $1
    (i32.mul
     (get_local $1)
     (i32.const 16843009)
    )
   )
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (tee_local $2
      (i32.and
       (i32.sub
        (get_local $2)
        (get_local $4)
       )
       (i32.const -4)
      )
     )
    )
    (i32.const 4)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 8)
   )
   (return)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 12)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 8)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 24)
   )
   (return)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 12)
   )
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 20)
   )
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 28)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 24)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 20)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 16)
   )
   (get_local $1)
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (tee_local $4
     (i32.add
      (i32.and
       (get_local $0)
       (i32.const 4)
      )
      (i32.const 24)
     )
    )
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $4)
   )
  )
  (set_local $3
   (i64.or
    (i64.extend_u/i32
     (get_local $1)
    )
    (i64.shl
     (i64.extend_u/i32
      (get_local $1)
     )
     (i64.const 32)
    )
   )
  )
  (loop $continue|0
   (if
    (i32.ge_u
     (get_local $2)
     (i32.const 32)
    )
    (block
     (i64.store
      (get_local $0)
      (get_local $3)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
      (get_local $3)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 16)
      )
      (get_local $3)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 24)
      )
      (get_local $3)
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 32)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 32)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
 (func "$(lib)/array/Array<i32>#shift" (; 15 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.lt_s
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 1)
   )
   (unreachable)
  )
  (set_local $1
   (i32.load
    (i32.load
     (get_local $0)
    )
   )
  )
  (call "$(lib)/memory/move_memory"
   (i32.load
    (get_local $0)
   )
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 4)
   )
   (i32.shl
    (i32.sub
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 1)
    )
    (i32.const 2)
   )
  )
  (call "$(lib)/memory/set_memory"
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.shl
     (i32.sub
      (i32.load offset=4
       (get_local $0)
      )
      (i32.const 1)
     )
     (i32.const 2)
    )
   )
   (i32.const 0)
   (i32.const 4)
  )
  (i32.store offset=8
   (get_local $0)
   (i32.sub
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (get_local $1)
 )
 (func "$(lib)/array/Array<i32>#reverse" (; 16 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (i32.sub
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (loop $continue|0
   (if
    (i32.lt_u
     (get_local $1)
     (get_local $2)
    )
    (block
     (set_local $3
      (i32.load
       (i32.add
        (i32.load
         (get_local $0)
        )
        (i32.shl
         (get_local $1)
         (i32.const 2)
        )
       )
      )
     )
     (i32.store
      (i32.add
       (i32.load
        (get_local $0)
       )
       (i32.shl
        (get_local $1)
        (i32.const 2)
       )
      )
      (i32.load
       (i32.add
        (i32.load
         (get_local $0)
        )
        (i32.shl
         (get_local $2)
         (i32.const 2)
        )
       )
      )
     )
     (i32.store
      (i32.add
       (i32.load
        (get_local $0)
       )
       (i32.shl
        (get_local $2)
        (i32.const 2)
       )
      )
      (get_local $3)
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (get_local $0)
 )
 (func "$(lib)/array/Array<i32>#indexOf" (; 17 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.and
    (if (result i32)
     (tee_local $3
      (i32.eqz
       (i32.load offset=8
        (get_local $0)
       )
      )
     )
     (get_local $3)
     (i32.ge_s
      (get_local $2)
      (i32.load offset=8
       (get_local $0)
      )
     )
    )
    (i32.const 1)
   )
   (return
    (i32.const -1)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (if
    (i32.lt_s
     (tee_local $2
      (i32.add
       (i32.load offset=8
        (get_local $0)
       )
       (get_local $2)
      )
     )
     (i32.const 0)
    )
    (set_local $2
     (i32.const 0)
    )
   )
  )
  (loop $continue|0
   (if
    (i32.lt_u
     (get_local $2)
     (i32.load offset=8
      (get_local $0)
     )
    )
    (block
     (if
      (i32.eq
       (i32.load
        (i32.add
         (i32.load
          (get_local $0)
         )
         (i32.shl
          (get_local $2)
          (i32.const 2)
         )
        )
       )
       (get_local $1)
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
 (func "$(lib)/array/Array<i32>#indexOf|trampoline" (; 18 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  (call "$(lib)/array/Array<i32>#indexOf"
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func "$(lib)/array/Array<i32>#includes" (; 19 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.and
    (if (result i32)
     (tee_local $3
      (i32.eqz
       (i32.load offset=8
        (get_local $0)
       )
      )
     )
     (get_local $3)
     (i32.ge_s
      (get_local $2)
      (i32.load offset=8
       (get_local $0)
      )
     )
    )
    (i32.const 1)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (if
    (i32.lt_s
     (tee_local $2
      (i32.add
       (i32.load offset=8
        (get_local $0)
       )
       (get_local $2)
      )
     )
     (i32.const 0)
    )
    (set_local $2
     (i32.const 0)
    )
   )
  )
  (loop $continue|0
   (if
    (i32.lt_u
     (get_local $2)
     (i32.load offset=8
      (get_local $0)
     )
    )
    (block
     (if
      (i32.eq
       (i32.load
        (i32.add
         (i32.load
          (get_local $0)
         )
         (i32.shl
          (get_local $2)
          (i32.const 2)
         )
        )
       )
       (get_local $1)
      )
      (return
       (i32.const 1)
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
  (i32.const 0)
 )
 (func "$(lib)/array/Array<i32>#includes|trampoline" (; 20 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  (call "$(lib)/array/Array<i32>#includes"
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func "$(lib)/array/Array<i32>#splice" (; 21 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 1)
   )
   (return)
  )
  (if
   (i32.lt_s
    (get_local $1)
    (i32.const 0)
   )
   (if
    (i32.lt_s
     (tee_local $1
      (i32.add
       (i32.load offset=8
        (get_local $0)
       )
       (get_local $1)
      )
     )
     (i32.const 0)
    )
    (set_local $1
     (i32.const 0)
    )
    (if
     (i32.ge_s
      (get_local $1)
      (i32.load offset=8
       (get_local $0)
      )
     )
     (return)
    )
   )
   (if
    (i32.ge_s
     (get_local $1)
     (i32.load offset=8
      (get_local $0)
     )
    )
    (return)
   )
  )
  (call "$(lib)/memory/move_memory"
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.shl
     (i32.add
      (get_local $1)
      (tee_local $2
       (select
        (get_local $2)
        (tee_local $1
         (i32.sub
          (i32.load offset=8
           (get_local $0)
          )
          (get_local $1)
         )
        )
        (i32.lt_s
         (get_local $2)
         (get_local $1)
        )
       )
      )
     )
     (i32.const 2)
    )
   )
   (i32.shl
    (get_local $2)
    (i32.const 2)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.sub
    (i32.load offset=8
     (get_local $0)
    )
    (get_local $2)
   )
  )
 )
 (func "$(lib)/array/Array<i32>#__set" (; 22 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.lt_s
    (get_local $1)
    (i32.const 0)
   )
   (unreachable)
  )
  (if
   (i32.ge_s
    (get_local $1)
    (i32.load offset=4
     (get_local $0)
    )
   )
   (call "$(lib)/array/Array<i32>#__grow"
    (get_local $0)
    (select
     (tee_local $3
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (tee_local $4
      (i32.shl
       (i32.load offset=4
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (i32.gt_s
      (get_local $3)
      (get_local $4)
     )
    )
   )
  )
  (i32.store
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
   (get_local $2)
  )
 )
 (func $start~anonymous|0 (; 23 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eqz
   (get_local $0)
  )
 )
 (func "$(lib)/array/Array<i32>#findIndex" (; 24 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load offset=8
    (get_local $0)
   )
  )
  (loop $continue|0
   (if
    (i32.and
     (if (result i32)
      (tee_local $4
       (i32.lt_s
        (get_local $2)
        (get_local $3)
       )
      )
      (i32.lt_s
       (get_local $2)
       (i32.load offset=8
        (get_local $0)
       )
      )
      (get_local $4)
     )
     (i32.const 1)
    )
    (block
     (if
      (block (result i32)
       (set_global $argumentCount
        (i32.const 3)
       )
       (call_indirect (type $iiii)
        (i32.load
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.shl
           (get_local $2)
           (i32.const 2)
          )
         )
        )
        (get_local $2)
        (get_local $0)
        (get_local $1)
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
 (func $start~anonymous|1 (; 25 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 1)
  )
 )
 (func $start~anonymous|2 (; 26 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 100)
  )
 )
 (func $start~anonymous|3 (; 27 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_local $2)
    (i32.const 100)
   )
  )
  (i32.eq
   (get_local $0)
   (i32.const 100)
  )
 )
 (func $start~anonymous|5 (; 28 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_local $2)
   )
  )
  (i32.eq
   (get_local $0)
   (i32.const 100)
  )
 )
 (func $start~anonymous|6 (; 29 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 0)
  )
 )
 (func "$(lib)/array/Array<i32>#every" (; 30 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load offset=8
    (get_local $0)
   )
  )
  (loop $continue|0
   (if
    (i32.and
     (if (result i32)
      (tee_local $4
       (i32.lt_s
        (get_local $2)
        (get_local $3)
       )
      )
      (i32.lt_s
       (get_local $2)
       (i32.load offset=8
        (get_local $0)
       )
      )
      (get_local $4)
     )
     (i32.const 1)
    )
    (block
     (if
      (block (result i32)
       (set_global $argumentCount
        (i32.const 3)
       )
       (i32.eqz
        (call_indirect (type $iiii)
         (i32.load
          (i32.add
           (i32.load
            (get_local $0)
           )
           (i32.shl
            (get_local $2)
            (i32.const 2)
           )
          )
         )
         (get_local $2)
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (return
       (i32.const 0)
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
  (i32.const 1)
 )
 (func $start~anonymous|7 (; 31 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.le_s
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $start~anonymous|8 (; 32 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_local $2)
    (i32.const 100)
   )
  )
  (i32.lt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|9 (; 33 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.lt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|10 (; 34 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_local $2)
   )
  )
  (i32.lt_s
   (get_local $0)
   (i32.const 3)
  )
 )
 (func $start~anonymous|11 (; 35 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 3)
  )
 )
 (func "$(lib)/array/Array<i32>#some" (; 36 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load offset=8
    (get_local $0)
   )
  )
  (loop $continue|0
   (if
    (i32.and
     (if (result i32)
      (tee_local $4
       (i32.lt_s
        (get_local $2)
        (get_local $3)
       )
      )
      (i32.lt_s
       (get_local $2)
       (i32.load offset=8
        (get_local $0)
       )
      )
      (get_local $4)
     )
     (i32.const 1)
    )
    (block
     (if
      (block (result i32)
       (set_global $argumentCount
        (i32.const 3)
       )
       (call_indirect (type $iiii)
        (i32.load
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.shl
           (get_local $2)
           (i32.const 2)
          )
         )
        )
        (get_local $2)
        (get_local $0)
        (get_local $1)
       )
      )
      (return
       (i32.const 1)
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
  (i32.const 0)
 )
 (func $start~anonymous|12 (; 37 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.le_s
   (get_local $0)
   (i32.const -1)
  )
 )
 (func $start~anonymous|13 (; 38 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_local $2)
    (i32.const 100)
   )
  )
  (i32.gt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|14 (; 39 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.gt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|15 (; 40 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_local $2)
   )
  )
  (i32.gt_s
   (get_local $0)
   (i32.const 3)
  )
 )
 (func $start~anonymous|16 (; 41 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func "$(lib)/array/Array<i32>#reduce<i32>" (; 42 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (i32.load offset=8
    (get_local $0)
   )
  )
  (loop $continue|0
   (if
    (i32.and
     (if (result i32)
      (tee_local $5
       (i32.lt_s
        (get_local $3)
        (get_local $4)
       )
      )
      (i32.lt_s
       (get_local $3)
       (i32.load offset=8
        (get_local $0)
       )
      )
      (get_local $5)
     )
     (i32.const 1)
    )
    (block
     (set_global $argumentCount
      (i32.const 4)
     )
     (set_local $2
      (call_indirect (type $iiiii)
       (get_local $2)
       (i32.load
        (i32.add
         (i32.load
          (get_local $0)
         )
         (i32.shl
          (get_local $3)
          (i32.const 2)
         )
        )
       )
       (get_local $3)
       (get_local $0)
       (get_local $1)
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
  (get_local $2)
 )
 (func $start~anonymous|18 (; 43 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.and
   (select
    (get_local $0)
    (i32.gt_s
     (get_local $1)
     (i32.const 2)
    )
    (get_local $0)
   )
   (i32.const 1)
  )
 )
 (func $start~anonymous|19 (; 44 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.and
   (select
    (get_local $0)
    (i32.gt_s
     (get_local $1)
     (i32.const 100)
    )
    (get_local $0)
   )
   (i32.const 1)
  )
 )
 (func $start~anonymous|20 (; 45 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_local $3)
    (i32.const 1)
   )
  )
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|22 (; 46 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_local $3)
   )
  )
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func "$(lib)/array/Array#constructor" (; 47 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.lt_s
    (get_local $1)
    (i32.const 0)
   )
   (unreachable)
  )
  (i32.store
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (block (result i32)
     (i32.store
      (tee_local $2
       (call "$(lib)/allocator/arena/allocate_memory"
        (i32.const 12)
       )
      )
      (i32.const 0)
     )
     (i32.store offset=4
      (get_local $2)
      (i32.const 0)
     )
     (i32.store offset=8
      (get_local $2)
      (i32.const 0)
     )
     (tee_local $0
      (get_local $2)
     )
    )
   )
   (if (result i32)
    (get_local $1)
    (call "$(lib)/allocator/arena/allocate_memory"
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
    (i32.const 0)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (tee_local $2
    (get_local $1)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $std/array/createReverseOrderedArray (; 48 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (call "$(lib)/array/Array#constructor"
    (i32.const 0)
    (get_local $0)
   )
  )
  (set_local $0
   (i32.const 0)
  )
  (loop $continue|0
   (if
    (i32.lt_s
     (get_local $0)
     (call "$(lib)/array/Array<i32>#get:length"
      (get_local $1)
     )
    )
    (block
     (call "$(lib)/array/Array<i32>#__set"
      (get_local $1)
      (get_local $0)
      (i32.sub
       (i32.sub
        (call "$(lib)/array/Array<i32>#get:length"
         (get_local $1)
        )
        (i32.const 1)
       )
       (get_local $0)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (get_local $1)
 )
 (func "$(lib)/math/NativeMath.random" (; 49 ;) (type $F) (result f64)
  (local $0 i64)
  (local $1 i64)
  (if
   (i32.eqz
    (get_global "$(lib)/math/random_seeded")
   )
   (unreachable)
  )
  (set_local $0
   (get_global "$(lib)/math/random_state0")
  )
  (set_global "$(lib)/math/random_state0"
   (tee_local $1
    (get_global "$(lib)/math/random_state1")
   )
  )
  (set_global "$(lib)/math/random_state1"
   (tee_local $0
    (i64.xor
     (i64.xor
      (i64.xor
       (tee_local $0
        (i64.xor
         (get_local $0)
         (i64.shl
          (get_local $0)
          (i64.const 23)
         )
        )
       )
       (i64.shr_u
        (get_local $0)
        (i64.const 17)
       )
      )
      (get_local $1)
     )
     (i64.shr_u
      (get_local $1)
      (i64.const 26)
     )
    )
   )
  )
  (f64.sub
   (f64.reinterpret/i64
    (i64.or
     (i64.and
      (i64.add
       (get_local $1)
       (get_local $0)
      )
      (i64.const 4503599627370495)
     )
     (i64.const 4607182418800017408)
    )
   )
   (f64.const 1)
  )
 )
 (func $std/array/createRandomOrderedArray (; 50 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $0
   (call "$(lib)/array/Array#constructor"
    (i32.const 0)
    (get_local $0)
   )
  )
  (loop $continue|0
   (if
    (i32.lt_s
     (get_local $1)
     (call "$(lib)/array/Array<i32>#get:length"
      (get_local $0)
     )
    )
    (block
     (call "$(lib)/array/Array<i32>#__set"
      (get_local $0)
      (get_local $1)
      (i32.trunc_s/f64
       (f64.mul
        (call "$(lib)/math/NativeMath.random")
        (f64.convert_s/i32
         (call "$(lib)/array/Array<i32>#get:length"
          (get_local $0)
         )
        )
       )
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
  (get_local $0)
 )
 (func $std/array/createDefaultComparator<i32>~anonymous|23 (; 51 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (i32.gt_s
    (get_local $0)
    (get_local $1)
   )
   (i32.lt_s
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $std/array/createDefaultComparator<i32> (; 52 ;) (type $i) (result i32)
  (i32.const 23)
 )
 (func "$(lib)/array/conditionalSwap<i32>" (; 53 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (i32.load
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
   )
  )
  (set_local $5
   (i32.load
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.shl
      (get_local $2)
      (i32.const 2)
     )
    )
   )
  )
  (if
   (block (result i32)
    (set_global $argumentCount
     (i32.const 2)
    )
    (i32.lt_s
     (call_indirect (type $iii)
      (get_local $4)
      (get_local $5)
      (get_local $3)
     )
     (i32.const 0)
    )
   )
   (block
    (i32.store
     (i32.add
      (i32.load
       (get_local $0)
      )
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
     (get_local $5)
    )
    (i32.store
     (i32.add
      (i32.load
       (get_local $0)
      )
      (i32.shl
       (get_local $2)
       (i32.const 2)
      )
     )
     (get_local $4)
    )
   )
  )
  (get_local $0)
 )
 (func "$(lib)/array/insertionSort<i32>" (; 54 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $6
   (call "$(lib)/array/Array<i32>#get:length"
    (get_local $0)
   )
  )
  (loop $continue|0
   (if
    (i32.lt_s
     (get_local $3)
     (get_local $6)
    )
    (block
     (set_local $4
      (i32.load
       (i32.add
        (i32.load
         (get_local $0)
        )
        (i32.shl
         (get_local $3)
         (i32.const 2)
        )
       )
      )
     )
     (set_local $2
      (i32.sub
       (get_local $3)
       (i32.const 1)
      )
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.ge_s
         (get_local $2)
         (i32.const 0)
        )
        (block
         (set_local $5
          (i32.load
           (i32.add
            (i32.load
             (get_local $0)
            )
            (i32.shl
             (get_local $2)
             (i32.const 2)
            )
           )
          )
         )
         (set_global $argumentCount
          (i32.const 2)
         )
         (br_if $break|1
          (i32.ge_s
           (call_indirect (type $iii)
            (get_local $4)
            (get_local $5)
            (get_local $1)
           )
           (i32.const 0)
          )
         )
         (i32.store
          (i32.add
           (i32.load
            (get_local $0)
           )
           (i32.shl
            (i32.add
             (get_local $2)
             (i32.const 1)
            )
            (i32.const 2)
           )
          )
          (get_local $5)
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (call "$(lib)/array/Array<i32>#__set"
      (get_local $0)
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
      (get_local $4)
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
  (get_local $0)
 )
 (func "$(lib)/array/weakHeapSort<i32>" (; 55 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (call "$(lib)/memory/set_memory"
   (i32.load
    (tee_local $5
     (call "$(lib)/array/Array#constructor"
      (i32.const 0)
      (tee_local $2
       (i32.shr_s
        (i32.add
         (tee_local $7
          (call "$(lib)/array/Array<i32>#get:length"
           (get_local $0)
          )
         )
         (i32.const 7)
        )
        (i32.const 3)
       )
      )
     )
    )
   )
   (i32.const 0)
   (i32.shl
    (get_local $2)
    (i32.const 2)
   )
  )
  (set_local $3
   (i32.sub
    (get_local $7)
    (i32.const 1)
   )
  )
  (loop $continue|0
   (if
    (i32.gt_s
     (get_local $3)
     (i32.const 0)
    )
    (block
     (set_local $2
      (get_local $3)
     )
     (loop $continue|1
      (if
       (i32.eq
        (i32.and
         (get_local $2)
         (i32.const 1)
        )
        (i32.and
         (i32.shr_s
          (i32.load
           (i32.add
            (i32.load
             (get_local $5)
            )
            (i32.shl
             (i32.shr_s
              (get_local $2)
              (i32.const 4)
             )
             (i32.const 2)
            )
           )
          )
          (i32.and
           (i32.shr_s
            (get_local $2)
            (i32.const 1)
           )
           (i32.const 7)
          )
         )
         (i32.const 1)
        )
       )
       (block
        (set_local $2
         (i32.shr_s
          (get_local $2)
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
     (set_local $4
      (i32.load
       (i32.add
        (i32.load
         (get_local $0)
        )
        (i32.shl
         (tee_local $2
          (i32.shr_s
           (get_local $2)
           (i32.const 1)
          )
         )
         (i32.const 2)
        )
       )
      )
     )
     (set_local $6
      (i32.load
       (i32.add
        (i32.load
         (get_local $0)
        )
        (i32.shl
         (get_local $3)
         (i32.const 2)
        )
       )
      )
     )
     (if
      (block (result i32)
       (set_global $argumentCount
        (i32.const 2)
       )
       (i32.lt_s
        (call_indirect (type $iii)
         (get_local $4)
         (get_local $6)
         (get_local $1)
        )
        (i32.const 0)
       )
      )
      (block
       (i32.store
        (i32.add
         (i32.load
          (get_local $5)
         )
         (i32.shl
          (i32.shr_s
           (get_local $3)
           (i32.const 3)
          )
          (i32.const 2)
         )
        )
        (i32.xor
         (i32.load
          (i32.add
           (i32.load
            (get_local $5)
           )
           (i32.shl
            (i32.shr_s
             (get_local $3)
             (i32.const 3)
            )
            (i32.const 2)
           )
          )
         )
         (i32.shl
          (i32.const 1)
          (i32.and
           (get_local $3)
           (i32.const 7)
          )
         )
        )
       )
       (i32.store
        (i32.add
         (i32.load
          (get_local $0)
         )
         (i32.shl
          (get_local $3)
          (i32.const 2)
         )
        )
        (get_local $4)
       )
       (i32.store
        (i32.add
         (i32.load
          (get_local $0)
         )
         (i32.shl
          (get_local $2)
          (i32.const 2)
         )
        )
        (get_local $6)
       )
      )
     )
     (set_local $3
      (i32.sub
       (get_local $3)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (set_local $3
   (i32.sub
    (get_local $7)
    (i32.const 1)
   )
  )
  (loop $continue|2
   (if
    (i32.ge_s
     (get_local $3)
     (i32.const 2)
    )
    (block
     (set_local $4
      (i32.load
       (i32.load
        (get_local $0)
       )
      )
     )
     (i32.store
      (i32.load
       (get_local $0)
      )
      (i32.load
       (i32.add
        (i32.load
         (get_local $0)
        )
        (i32.shl
         (get_local $3)
         (i32.const 2)
        )
       )
      )
     )
     (i32.store
      (i32.add
       (i32.load
        (get_local $0)
       )
       (i32.shl
        (get_local $3)
        (i32.const 2)
       )
      )
      (get_local $4)
     )
     (set_local $2
      (i32.const 1)
     )
     (loop $continue|3
      (if
       (i32.lt_s
        (tee_local $4
         (i32.add
          (i32.shl
           (get_local $2)
           (i32.const 1)
          )
          (i32.and
           (i32.shr_s
            (i32.load
             (i32.add
              (i32.load
               (get_local $5)
              )
              (i32.shl
               (i32.shr_s
                (get_local $2)
                (i32.const 3)
               )
               (i32.const 2)
              )
             )
            )
            (i32.and
             (get_local $2)
             (i32.const 7)
            )
           )
           (i32.const 1)
          )
         )
        )
        (get_local $3)
       )
       (block
        (set_local $2
         (get_local $4)
        )
        (br $continue|3)
       )
      )
     )
     (loop $continue|4
      (if
       (i32.gt_s
        (get_local $2)
        (i32.const 0)
       )
       (block
        (set_local $4
         (i32.load
          (i32.load
           (get_local $0)
          )
         )
        )
        (set_local $6
         (i32.load
          (i32.add
           (i32.load
            (get_local $0)
           )
           (i32.shl
            (get_local $2)
            (i32.const 2)
           )
          )
         )
        )
        (if
         (block (result i32)
          (set_global $argumentCount
           (i32.const 2)
          )
          (i32.lt_s
           (call_indirect (type $iii)
            (get_local $4)
            (get_local $6)
            (get_local $1)
           )
           (i32.const 0)
          )
         )
         (block
          (i32.store
           (i32.add
            (i32.load
             (get_local $5)
            )
            (i32.shl
             (i32.shr_s
              (get_local $2)
              (i32.const 3)
             )
             (i32.const 2)
            )
           )
           (i32.xor
            (i32.load
             (i32.add
              (i32.load
               (get_local $5)
              )
              (i32.shl
               (i32.shr_s
                (get_local $2)
                (i32.const 3)
               )
               (i32.const 2)
              )
             )
            )
            (i32.shl
             (i32.const 1)
             (i32.and
              (get_local $2)
              (i32.const 7)
             )
            )
           )
          )
          (i32.store
           (i32.add
            (i32.load
             (get_local $0)
            )
            (i32.shl
             (get_local $2)
             (i32.const 2)
            )
           )
           (get_local $4)
          )
          (i32.store
           (i32.load
            (get_local $0)
           )
           (get_local $6)
          )
         )
        )
        (set_local $2
         (i32.shr_s
          (get_local $2)
          (i32.const 1)
         )
        )
        (br $continue|4)
       )
      )
     )
     (set_local $3
      (i32.sub
       (get_local $3)
       (i32.const 1)
      )
     )
     (br $continue|2)
    )
   )
  )
  (call "$(lib)/allocator/arena/free_memory"
   (i32.load
    (get_local $5)
   )
  )
  (set_local $1
   (i32.load offset=4
    (i32.load
     (get_local $0)
    )
   )
  )
  (i32.store offset=4
   (i32.load
    (get_local $0)
   )
   (i32.load
    (i32.load
     (get_local $0)
    )
   )
  )
  (i32.store
   (i32.load
    (get_local $0)
   )
   (get_local $1)
  )
  (get_local $0)
 )
 (func "$(lib)/array/sort<i32>" (; 56 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.le_s
    (tee_local $2
     (call "$(lib)/array/Array<i32>#get:length"
      (get_local $0)
     )
    )
    (i32.const 1)
   )
   (return
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $2)
    (i32.const 2)
   )
   (return
    (call "$(lib)/array/conditionalSwap<i32>"
     (get_local $0)
     (i32.const 1)
     (i32.const 0)
     (get_local $1)
    )
   )
  )
  (if
   (i32.le_s
    (get_local $2)
    (i32.const 256)
   )
   (return
    (call "$(lib)/array/insertionSort<i32>"
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (call "$(lib)/array/weakHeapSort<i32>"
   (get_local $0)
   (get_local $1)
  )
 )
 (func "$(lib)/array/Array<i32>#sort" (; 57 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call "$(lib)/array/sort<i32>"
   (get_local $0)
   (get_local $1)
  )
 )
 (func $std/array/isSorted<i32> (; 58 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (i32.const 1)
  )
  (set_local $3
   (call "$(lib)/array/Array<i32>#get:length"
    (get_local $0)
   )
  )
  (loop $continue|0
   (if
    (i32.lt_s
     (get_local $2)
     (get_local $3)
    )
    (block
     (if
      (block (result i32)
       (set_global $argumentCount
        (i32.const 2)
       )
       (i32.gt_s
        (call_indirect (type $iii)
         (call "$(lib)/array/Array<i32>#__get"
          (get_local $0)
          (i32.sub
           (get_local $2)
           (i32.const 1)
          )
         )
         (call "$(lib)/array/Array<i32>#__get"
          (get_local $0)
          (get_local $2)
         )
         (get_local $1)
        )
        (i32.const 0)
       )
      )
      (return
       (i32.const 0)
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
  (i32.const 1)
 )
 (func $std/array/assertSorted<i32> (; 59 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $std/array/isSorted<i32>
     (call "$(lib)/array/Array<i32>#sort"
      (get_local $0)
      (get_local $1)
     )
     (get_local $1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 54)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $std/array/assertSortedDefault<i32> (; 60 ;) (type $iv) (param $0 i32)
  (call $std/array/assertSorted<i32>
   (get_local $0)
   (call $std/array/createDefaultComparator<i32>)
  )
 )
 (func $std/array/isArraysEqual<i32> (; 61 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (set_local $3
   (get_local $2)
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (if
     (i32.ne
      (call "$(lib)/array/Array<i32>#get:length"
       (get_local $0)
      )
      (call "$(lib)/array/Array<i32>#get:length"
       (get_local $1)
      )
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $3
     (call "$(lib)/array/Array<i32>#get:length"
      (get_local $0)
     )
    )
   )
  )
  (set_local $2
   (i32.const 0)
  )
  (loop $continue|0
   (if
    (i32.lt_s
     (get_local $2)
     (get_local $3)
    )
    (block
     (if
      (i32.ne
       (call "$(lib)/array/Array<i32>#__get"
        (get_local $0)
        (get_local $2)
       )
       (call "$(lib)/array/Array<i32>#__get"
        (get_local $1)
        (get_local $2)
       )
      )
      (return
       (i32.const 0)
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
  (i32.const 1)
 )
 (func $std/array/isArraysEqual<i32>|trampoline (; 62 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (i32.sub
       (get_global $argumentCount)
       (i32.const 2)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (i32.const 0)
   )
  )
  (call $std/array/isArraysEqual<i32>
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $start~anonymous|24 (; 63 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|25 (; 64 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $1)
   (get_local $0)
  )
 )
 (func $start (; 65 ;) (type $v)
  (set_global "$(lib)/allocator/arena/startOffset"
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (i32.const 7)
    )
    (i32.const -8)
   )
  )
  (set_global "$(lib)/allocator/arena/offset"
   (get_global "$(lib)/allocator/arena/startOffset")
  )
  (call "$(lib)/math/NativeMath.seedRandom"
   (i64.reinterpret/f64
    (call "$(lib)/math/JSMath.random")
   )
  )
  (set_global $std/array/arr
   (call "$(lib)/allocator/arena/allocate_memory"
    (i32.const 12)
   )
  )
  (if
   (call "$(lib)/array/Array<i32>#get:length"
    (get_global $std/array/arr)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 63)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.load offset=4
    (get_global $std/array/arr)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 64)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_global $std/array/arr)
    (i32.const 42)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 42)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 68)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#get:length"
     (get_global $std/array/arr)
    )
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 69)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 70)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#pop"
    (get_global $std/array/arr)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 42)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 74)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call "$(lib)/array/Array<i32>#get:length"
    (get_global $std/array/arr)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 75)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 76)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_global $std/array/arr)
    (i32.const 43)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#get:length"
     (get_global $std/array/arr)
    )
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 80)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 81)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 43)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 82)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_global $std/array/arr)
    (i32.const 44)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#get:length"
     (get_global $std/array/arr)
    )
    (i32.const 2)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 86)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 2)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 87)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 43)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 88)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 44)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 89)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_global $std/array/arr)
    (i32.const 45)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#get:length"
     (get_global $std/array/arr)
    )
    (i32.const 3)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 93)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 4)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 94)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 43)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 95)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 44)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 96)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 2)
    )
    (i32.const 45)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 97)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#unshift"
    (get_global $std/array/arr)
    (i32.const 42)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#get:length"
     (get_global $std/array/arr)
    )
    (i32.const 4)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 101)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 4)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 102)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 42)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 103)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 43)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 104)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 2)
    )
    (i32.const 44)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 105)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 3)
    )
    (i32.const 45)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 106)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#unshift"
    (get_global $std/array/arr)
    (i32.const 41)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#get:length"
     (get_global $std/array/arr)
    )
    (i32.const 5)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 110)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 111)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 41)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 112)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 42)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 113)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 2)
    )
    (i32.const 43)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 114)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 3)
    )
    (i32.const 44)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 115)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 4)
    )
    (i32.const 45)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 116)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#shift"
    (get_global $std/array/arr)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 41)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 120)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#get:length"
     (get_global $std/array/arr)
    )
    (i32.const 4)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 121)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 122)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 42)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 123)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 43)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 124)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 2)
    )
    (i32.const 44)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 125)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 3)
    )
    (i32.const 45)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 126)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#pop"
    (get_global $std/array/arr)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 45)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 130)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#get:length"
     (get_global $std/array/arr)
    )
    (i32.const 3)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 131)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 132)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 42)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 133)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 43)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 134)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 2)
    )
    (i32.const 44)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 135)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#reverse"
    (get_global $std/array/arr)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#get:length"
     (get_global $std/array/arr)
    )
    (i32.const 3)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 139)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 140)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 44)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 141)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 43)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 142)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 2)
    )
    (i32.const 42)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 143)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_global $std/array/arr)
    (i32.const 43)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_global $std/array/arr)
    (i32.const 44)
   )
  )
  (set_global $std/array/i
   (block (result i32)
    (set_global $argumentCount
     (i32.const 1)
    )
    (call "$(lib)/array/Array<i32>#indexOf|trampoline"
     (get_global $std/array/arr)
     (i32.const 44)
     (i32.const 0)
    )
   )
  )
  (if
   (get_global $std/array/i)
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 150)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (block (result i32)
    (set_global $argumentCount
     (i32.const 1)
    )
    (call "$(lib)/array/Array<i32>#indexOf|trampoline"
     (get_global $std/array/arr)
     (i32.const 42)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 2)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 154)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (block (result i32)
    (set_global $argumentCount
     (i32.const 1)
    )
    (call "$(lib)/array/Array<i32>#indexOf|trampoline"
     (get_global $std/array/arr)
     (i32.const 45)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const -1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 158)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#indexOf"
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 100)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const -1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 162)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#indexOf"
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const -100)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 166)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#indexOf"
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const -2)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 3)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 170)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#indexOf"
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const -4)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 174)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#indexOf"
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 178)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#indexOf"
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 1)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 182)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#indexOf"
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 2)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 3)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 186)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (block (result i32)
    (set_global $argumentCount
     (i32.const 1)
    )
    (call "$(lib)/array/Array<i32>#includes|trampoline"
     (get_global $std/array/arr)
     (i32.const 44)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 190)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (block (result i32)
    (set_global $argumentCount
     (i32.const 1)
    )
    (call "$(lib)/array/Array<i32>#includes|trampoline"
     (get_global $std/array/arr)
     (i32.const 42)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 194)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (block (result i32)
    (set_global $argumentCount
     (i32.const 1)
    )
    (call "$(lib)/array/Array<i32>#includes|trampoline"
     (get_global $std/array/arr)
     (i32.const 45)
     (i32.const 0)
    )
   )
  )
  (if
   (get_global $std/array/includes)
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 198)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call "$(lib)/array/Array<i32>#includes"
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 100)
   )
  )
  (if
   (get_global $std/array/includes)
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 202)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call "$(lib)/array/Array<i32>#includes"
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const -100)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 206)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call "$(lib)/array/Array<i32>#includes"
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const -2)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 210)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call "$(lib)/array/Array<i32>#includes"
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const -4)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 214)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call "$(lib)/array/Array<i32>#includes"
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 218)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call "$(lib)/array/Array<i32>#includes"
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 1)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 222)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call "$(lib)/array/Array<i32>#includes"
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 2)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 226)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call "$(lib)/array/Array<i32>#splice"
   (get_global $std/array/arr)
   (i32.const 1)
   (i32.const 1)
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#get:length"
     (get_global $std/array/arr)
    )
    (i32.const 4)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 230)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 231)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 44)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 232)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#__get"
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 42)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 233)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call "$(lib)/array/Array<i32>#__set"
   (get_global $std/array/arr)
   (i32.const 0)
   (i32.const 0)
  )
  (call "$(lib)/array/Array<i32>#__set"
   (get_global $std/array/arr)
   (i32.const 1)
   (i32.const 1)
  )
  (call "$(lib)/array/Array<i32>#__set"
   (get_global $std/array/arr)
   (i32.const 2)
   (i32.const 2)
  )
  (call "$(lib)/array/Array<i32>#__set"
   (get_global $std/array/arr)
   (i32.const 3)
   (i32.const 3)
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#findIndex"
    (get_global $std/array/arr)
    (i32.const 0)
   )
  )
  (if
   (get_global $std/array/i)
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 242)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#findIndex"
    (get_global $std/array/arr)
    (i32.const 1)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 245)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#findIndex"
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const -1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 248)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#findIndex"
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const -1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 256)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#get:length"
     (get_global $std/array/arr)
    )
    (i32.const 8)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 257)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#findIndex"
    (get_global $std/array/arr)
    (i32.const 4)
   )
  )
  (if
   (i32.eq
    (get_global $std/array/i)
    (i32.const -1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 259)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_global $std/array/arr)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_global $std/array/arr)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_global $std/array/arr)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#findIndex"
    (get_global $std/array/arr)
    (i32.const 5)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const -1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 272)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#get:length"
     (get_global $std/array/arr)
    )
    (i32.const 2)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 273)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (set_global $std/array/every
   (call "$(lib)/array/Array<i32>#every"
    (get_global $std/array/arr)
    (i32.const 6)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/every)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 279)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/every
   (call "$(lib)/array/Array<i32>#every"
    (get_global $std/array/arr)
    (i32.const 7)
   )
  )
  (if
   (get_global $std/array/every)
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 282)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/every
   (call "$(lib)/array/Array<i32>#every"
    (get_global $std/array/arr)
    (i32.const 8)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/every)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 290)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#get:length"
     (get_global $std/array/arr)
    )
    (i32.const 8)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 291)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/every
   (call "$(lib)/array/Array<i32>#every"
    (get_global $std/array/arr)
    (i32.const 9)
   )
  )
  (if
   (get_global $std/array/every)
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 293)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_global $std/array/arr)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_global $std/array/arr)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_global $std/array/arr)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/every
   (call "$(lib)/array/Array<i32>#every"
    (get_global $std/array/arr)
    (i32.const 10)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/every)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 306)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#get:length"
     (get_global $std/array/arr)
    )
    (i32.const 2)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 307)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (set_global $std/array/some
   (call "$(lib)/array/Array<i32>#some"
    (get_global $std/array/arr)
    (i32.const 11)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/some)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 313)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/some
   (call "$(lib)/array/Array<i32>#some"
    (get_global $std/array/arr)
    (i32.const 12)
   )
  )
  (if
   (get_global $std/array/some)
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 316)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/some
   (call "$(lib)/array/Array<i32>#some"
    (get_global $std/array/arr)
    (i32.const 13)
   )
  )
  (if
   (get_global $std/array/some)
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 324)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#get:length"
     (get_global $std/array/arr)
    )
    (i32.const 8)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 325)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/some
   (call "$(lib)/array/Array<i32>#some"
    (get_global $std/array/arr)
    (i32.const 14)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/some)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 327)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_global $std/array/arr)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_global $std/array/arr)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_global $std/array/arr)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/some
   (call "$(lib)/array/Array<i32>#some"
    (get_global $std/array/arr)
    (i32.const 15)
   )
  )
  (if
   (get_global $std/array/some)
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 340)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#get:length"
     (get_global $std/array/arr)
    )
    (i32.const 2)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 341)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#reduce<i32>"
    (get_global $std/array/arr)
    (i32.const 16)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 348)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#reduce<i32>"
    (get_global $std/array/arr)
    (i32.const 17)
    (i32.const 4)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 10)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 352)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/boolVal
   (call "$(lib)/array/Array<i32>#reduce<i32>"
    (get_global $std/array/arr)
    (i32.const 18)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/boolVal)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 355)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/boolVal
   (call "$(lib)/array/Array<i32>#reduce<i32>"
    (get_global $std/array/arr)
    (i32.const 19)
    (i32.const 0)
   )
  )
  (if
   (get_global $std/array/boolVal)
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 358)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#reduce<i32>"
    (get_global $std/array/arr)
    (i32.const 20)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 366)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#get:length"
     (get_global $std/array/arr)
    )
    (i32.const 8)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 367)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#reduce<i32>"
    (get_global $std/array/arr)
    (i32.const 21)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 10)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 369)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_global $std/array/arr)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_global $std/array/arr)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_global $std/array/arr)
   )
  )
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#reduce<i32>"
    (get_global $std/array/arr)
    (i32.const 22)
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 382)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/Array<i32>#get:length"
     (get_global $std/array/arr)
    )
    (i32.const 2)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 383)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/revesed64
   (call $std/array/createReverseOrderedArray
    (i32.const 64)
   )
  )
  (set_global $std/array/revesed128
   (call $std/array/createReverseOrderedArray
    (i32.const 128)
   )
  )
  (set_global $std/array/revesed1024
   (call $std/array/createReverseOrderedArray
    (i32.const 1024)
   )
  )
  (set_global $std/array/revesed10000
   (call $std/array/createReverseOrderedArray
    (i32.const 10000)
   )
  )
  (set_global $std/array/randomized512
   (call $std/array/createRandomOrderedArray
    (i32.const 512)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/revesed0)
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/revesed1)
  )
  (if
   (block (result i32)
    (set_global $argumentCount
     (i32.const 2)
    )
    (i32.eqz
     (call $std/array/isArraysEqual<i32>|trampoline
      (get_global $std/array/revesed1)
      (i32.const 216)
      (i32.const 0)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 406)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/revesed2)
  )
  (if
   (block (result i32)
    (set_global $argumentCount
     (i32.const 2)
    )
    (i32.eqz
     (call $std/array/isArraysEqual<i32>|trampoline
      (get_global $std/array/revesed2)
      (i32.const 232)
      (i32.const 0)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 409)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/revesed4)
  )
  (if
   (block (result i32)
    (set_global $argumentCount
     (i32.const 2)
    )
    (i32.eqz
     (call $std/array/isArraysEqual<i32>|trampoline
      (get_global $std/array/revesed4)
      (get_global $std/array/expected4)
      (i32.const 0)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 412)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/revesed64)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<i32>
     (get_global $std/array/revesed64)
     (get_global $std/array/expected4)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 415)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/revesed128)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<i32>
     (get_global $std/array/revesed128)
     (get_global $std/array/expected4)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 418)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/revesed1024)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<i32>
     (get_global $std/array/revesed1024)
     (get_global $std/array/expected4)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 421)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/revesed10000)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<i32>
     (get_global $std/array/revesed10000)
     (get_global $std/array/expected4)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 424)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/randomized512)
  )
  (set_global $std/array/randomized64
   (call $std/array/createRandomOrderedArray
    (i32.const 64)
   )
  )
  (set_global $std/array/randomized257
   (call $std/array/createRandomOrderedArray
    (i32.const 257)
   )
  )
  (call $std/array/assertSorted<i32>
   (get_global $std/array/randomized64)
   (i32.const 24)
  )
  (call $std/array/assertSorted<i32>
   (get_global $std/array/randomized64)
   (i32.const 25)
  )
  (call $std/array/assertSorted<i32>
   (get_global $std/array/randomized257)
   (i32.const 26)
  )
  (call $std/array/assertSorted<i32>
   (get_global $std/array/randomized257)
   (i32.const 27)
  )
 )
)
