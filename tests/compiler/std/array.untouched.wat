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
 (global "$(lib)/allocator/common/alignment/BITS" i32 (i32.const 3))
 (global "$(lib)/allocator/common/alignment/SIZE" i32 (i32.const 8))
 (global "$(lib)/allocator/common/alignment/MASK" i32 (i32.const 7))
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
 (elem (i32.const 0) $start~anonymous|0 $start~anonymous|1 $start~anonymous|2 $start~anonymous|3 $start~anonymous|4 $start~anonymous|5 $start~anonymous|6 $start~anonymous|7 $start~anonymous|8 $start~anonymous|9 $start~anonymous|10 $start~anonymous|11 $start~anonymous|12 $start~anonymous|13 $start~anonymous|14 $start~anonymous|15 $start~anonymous|16 $start~anonymous|17 $start~anonymous|18 $start~anonymous|19 $start~anonymous|20 $start~anonymous|21 $start~anonymous|22 $std/array/createDefaultComparator<i32>~anonymous|23 $start~anonymous|24 $start~anonymous|25 $start~anonymous|26 $start~anonymous|27)
 (memory $0 1)
 (data (i32.const 4) "\0d\00\00\00(\00l\00i\00b\00)\00/\00m\00a\00t\00h\00.\00t\00s\00")
 (data (i32.const 36) "\0c\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 64) "\0e\00\00\00(\00l\00i\00b\00)\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 96) "l\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 112) "|\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00")
 (data (i32.const 128) "\8c\00\00\00\02\00\00\00\02\00\00\00\02\00\00\00\01\00\00\00")
 (data (i32.const 152) "\a4\00\00\00\04\00\00\00\04\00\00\00\03\00\00\00\02\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 184) "\c4\00\00\00\04\00\00\00\04\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 216) "\e4\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00")
 (data (i32.const 232) "\f4\00\00\00\02\00\00\00\02\00\00\00\01\00\00\00\02\00\00\00")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func "$(lib)/math/murmurHash3" (; 2 ;) (type $II) (param $0 i64) (result i64)
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $0)
     (i64.const 33)
    )
   )
  )
  (set_local $0
   (i64.mul
    (get_local $0)
    (i64.const -49064778989728563)
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $0)
     (i64.const 33)
    )
   )
  )
  (set_local $0
   (i64.mul
    (get_local $0)
    (i64.const -4265267296055464877)
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $0)
     (i64.const 33)
    )
   )
  )
  (return
   (get_local $0)
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
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $1
   (get_global "$(lib)/allocator/arena/offset")
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
  (set_global "$(lib)/allocator/arena/offset"
   (get_local $2)
  )
  (return
   (get_local $1)
  )
 )
 (func "$(lib)/array/Array<i32>#get:length" (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.load offset=8
    (get_local $0)
   )
  )
 )
 (func "$(lib)/memory/copy_memory" (; 6 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func "$(lib)/allocator/arena/free_memory" (; 8 ;) (type $iv) (param $0 i32)
 )
 (func "$(lib)/array/Array<i32>#__grow" (; 9 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (i32.gt_s
     (get_local $1)
     (i32.load offset=4
      (get_local $0)
     )
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
    (i32.mul
     (get_local $1)
     (i32.const 4)
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
     (i32.mul
      (i32.load offset=4
       (get_local $0)
      )
      (i32.const 4)
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
    (i32.mul
     (i32.load offset=8
      (get_local $0)
     )
     (i32.const 4)
    )
   )
   (get_local $1)
  )
  (return
   (block (result i32)
    (set_local $2
     (i32.add
      (i32.load offset=8
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store offset=8
     (get_local $0)
     (get_local $2)
    )
    (get_local $2)
   )
  )
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
  (return
   (i32.load
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.mul
      (get_local $1)
      (i32.const 4)
     )
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
  (return
   (i32.load
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.mul
      (block (result i32)
       (set_local $1
        (i32.sub
         (i32.load offset=8
          (get_local $0)
         )
         (i32.const 1)
        )
       )
       (i32.store offset=8
        (get_local $0)
        (get_local $1)
       )
       (get_local $1)
      )
      (i32.const 4)
     )
    )
   )
  )
 )
 (func "$(lib)/array/Array<i32>#unshift" (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (i32.load offset=8
     (get_local $0)
    )
    (get_local $2)
   )
   (block
    (set_local $3
     (if (result i32)
      (get_local $2)
      (i32.shl
       (get_local $2)
       (i32.const 1)
      )
      (i32.const 1)
     )
    )
    (if
     (i32.eqz
      (i32.gt_s
       (get_local $3)
       (i32.load offset=4
        (get_local $0)
       )
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
    (set_local $4
     (call "$(lib)/allocator/arena/allocate_memory"
      (i32.mul
       (get_local $3)
       (i32.const 4)
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
        (get_local $4)
        (i32.const 4)
       )
       (i32.load
        (get_local $0)
       )
       (i32.mul
        (get_local $2)
        (i32.const 4)
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
     (get_local $4)
    )
    (i32.store offset=4
     (get_local $0)
     (get_local $3)
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
    (i32.mul
     (get_local $2)
     (i32.const 4)
    )
   )
  )
  (i32.store
   (i32.load
    (get_local $0)
   )
   (get_local $1)
  )
  (return
   (block (result i32)
    (set_local $4
     (i32.add
      (i32.load offset=8
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store offset=8
     (get_local $0)
     (get_local $4)
    )
    (get_local $4)
   )
  )
 )
 (func "$(lib)/memory/set_memory" (; 14 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
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
  (set_local $3
   (i32.and
    (i32.sub
     (i32.const 0)
     (get_local $0)
    )
    (i32.const 3)
   )
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (get_local $3)
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $3)
   )
  )
  (set_local $2
   (i32.and
    (get_local $2)
    (i32.const -4)
   )
  )
  (set_local $4
   (i32.mul
    (i32.div_u
     (i32.const -1)
     (i32.const 255)
    )
    (get_local $1)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 4)
   )
   (get_local $4)
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
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 12)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 8)
   )
   (get_local $4)
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
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 20)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 28)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 24)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 20)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 16)
   )
   (get_local $4)
  )
  (set_local $3
   (i32.add
    (i32.const 24)
    (i32.and
     (get_local $0)
     (i32.const 4)
    )
   )
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (get_local $3)
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $3)
   )
  )
  (set_local $5
   (i64.or
    (i64.extend_u/i32
     (get_local $4)
    )
    (i64.shl
     (i64.extend_u/i32
      (get_local $4)
     )
     (i64.const 32)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 32)
     )
     (block
      (block
       (i64.store
        (get_local $0)
        (get_local $5)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (get_local $5)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 16)
        )
        (get_local $5)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 24)
        )
        (get_local $5)
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
      )
      (br $continue|0)
     )
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
   (i32.mul
    (i32.sub
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 1)
    )
    (i32.const 4)
   )
  )
  (call "$(lib)/memory/set_memory"
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.mul
     (i32.sub
      (i32.load offset=4
       (get_local $0)
      )
      (i32.const 1)
     )
     (i32.const 4)
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
  (return
   (get_local $1)
  )
 )
 (func "$(lib)/array/Array<i32>#reverse" (; 16 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (block
    (set_local $1
     (i32.const 0)
    )
    (set_local $2
     (i32.sub
      (i32.load offset=8
       (get_local $0)
      )
      (i32.const 1)
     )
    )
   )
   (loop $continue|0
    (if
     (i32.lt_u
      (get_local $1)
      (get_local $2)
     )
     (block
      (block
       (set_local $3
        (i32.load
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.mul
           (get_local $1)
           (i32.const 4)
          )
         )
        )
       )
       (i32.store
        (i32.add
         (i32.load
          (get_local $0)
         )
         (i32.mul
          (get_local $1)
          (i32.const 4)
         )
        )
        (i32.load
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.mul
           (get_local $2)
           (i32.const 4)
          )
         )
        )
       )
       (i32.store
        (i32.add
         (i32.load
          (get_local $0)
         )
         (i32.mul
          (get_local $2)
          (i32.const 4)
         )
        )
        (get_local $3)
       )
      )
      (block
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
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (get_local $0)
  )
 )
 (func "$(lib)/array/Array<i32>#indexOf" (; 17 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.and
    (if (result i32)
     (tee_local $3
      (i32.eq
       (i32.load offset=8
        (get_local $0)
       )
       (i32.const 0)
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
   (block
    (set_local $2
     (i32.add
      (i32.load offset=8
       (get_local $0)
      )
      (get_local $2)
     )
    )
    (if
     (i32.lt_s
      (get_local $2)
      (i32.const 0)
     )
     (set_local $2
      (i32.const 0)
     )
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.lt_u
      (get_local $2)
      (i32.load offset=8
       (get_local $0)
      )
     )
     (block
      (block
       (if
        (i32.eq
         (i32.load
          (i32.add
           (i32.load
            (get_local $0)
           )
           (i32.mul
            (get_local $2)
            (i32.const 4)
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
      (i32.eq
       (i32.load offset=8
        (get_local $0)
       )
       (i32.const 0)
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
   (block
    (set_local $2
     (i32.add
      (i32.load offset=8
       (get_local $0)
      )
      (get_local $2)
     )
    )
    (if
     (i32.lt_s
      (get_local $2)
      (i32.const 0)
     )
     (set_local $2
      (i32.const 0)
     )
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.lt_u
      (get_local $2)
      (i32.load offset=8
       (get_local $0)
      )
     )
     (block
      (block
       (if
        (i32.eq
         (i32.load
          (i32.add
           (i32.load
            (get_local $0)
           )
           (i32.mul
            (get_local $2)
            (i32.const 4)
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
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (i32.const 0)
  )
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
  (local $3 i32)
  (local $4 i32)
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
   (block
    (set_local $1
     (i32.add
      (i32.load offset=8
       (get_local $0)
      )
      (get_local $1)
     )
    )
    (if
     (i32.lt_s
      (get_local $1)
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
  (set_local $2
   (select
    (tee_local $3
     (get_local $2)
    )
    (tee_local $4
     (i32.sub
      (i32.load offset=8
       (get_local $0)
      )
      (get_local $1)
     )
    )
    (i32.lt_s
     (get_local $3)
     (get_local $4)
    )
   )
  )
  (call "$(lib)/memory/move_memory"
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.mul
     (get_local $1)
     (i32.const 4)
    )
   )
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.mul
     (i32.add
      (get_local $1)
      (get_local $2)
     )
     (i32.const 4)
    )
   )
   (i32.mul
    (get_local $2)
    (i32.const 4)
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
    (i32.mul
     (get_local $1)
     (i32.const 4)
    )
   )
   (get_local $2)
  )
 )
 (func $start~anonymous|0 (; 23 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 0)
  )
 )
 (func "$(lib)/array/Array<i32>#findIndex" (; 24 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $2
   (i32.load offset=8
    (get_local $0)
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.and
      (if (result i32)
       (tee_local $4
        (i32.lt_s
         (get_local $3)
         (get_local $2)
        )
       )
       (i32.lt_s
        (get_local $3)
        (i32.load offset=8
         (get_local $0)
        )
       )
       (get_local $4)
      )
      (i32.const 1)
     )
     (block
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
            (i32.mul
             (get_local $3)
             (i32.const 4)
            )
           )
          )
          (get_local $3)
          (get_local $0)
          (get_local $1)
         )
        )
        (return
         (get_local $3)
        )
       )
       (set_local $3
        (i32.add
         (get_local $3)
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
   (i32.const -1)
  )
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
  (return
   (i32.eq
    (get_local $0)
    (i32.const 100)
   )
  )
 )
 (func $start~anonymous|4 (; 28 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 100)
  )
 )
 (func $start~anonymous|5 (; 29 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_local $2)
   )
  )
  (return
   (i32.eq
    (get_local $0)
    (i32.const 100)
   )
  )
 )
 (func $start~anonymous|6 (; 30 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 0)
  )
 )
 (func "$(lib)/array/Array<i32>#every" (; 31 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $2
   (i32.load offset=8
    (get_local $0)
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.and
      (if (result i32)
       (tee_local $4
        (i32.lt_s
         (get_local $3)
         (get_local $2)
        )
       )
       (i32.lt_s
        (get_local $3)
        (i32.load offset=8
         (get_local $0)
        )
       )
       (get_local $4)
      )
      (i32.const 1)
     )
     (block
      (block
       (if
        (i32.eqz
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
             (i32.mul
              (get_local $3)
              (i32.const 4)
             )
            )
           )
           (get_local $3)
           (get_local $0)
           (get_local $1)
          )
         )
        )
        (return
         (i32.const 0)
        )
       )
       (set_local $3
        (i32.add
         (get_local $3)
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
   (i32.const 1)
  )
 )
 (func $start~anonymous|7 (; 32 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.le_s
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $start~anonymous|8 (; 33 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_local $2)
    (i32.const 100)
   )
  )
  (return
   (i32.lt_s
    (get_local $0)
    (i32.const 10)
   )
  )
 )
 (func $start~anonymous|9 (; 34 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.lt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|10 (; 35 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_local $2)
   )
  )
  (return
   (i32.lt_s
    (get_local $0)
    (i32.const 3)
   )
  )
 )
 (func $start~anonymous|11 (; 36 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 3)
  )
 )
 (func "$(lib)/array/Array<i32>#some" (; 37 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $2
   (i32.load offset=8
    (get_local $0)
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.and
      (if (result i32)
       (tee_local $4
        (i32.lt_s
         (get_local $3)
         (get_local $2)
        )
       )
       (i32.lt_s
        (get_local $3)
        (i32.load offset=8
         (get_local $0)
        )
       )
       (get_local $4)
      )
      (i32.const 1)
     )
     (block
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
            (i32.mul
             (get_local $3)
             (i32.const 4)
            )
           )
          )
          (get_local $3)
          (get_local $0)
          (get_local $1)
         )
        )
        (return
         (i32.const 1)
        )
       )
       (set_local $3
        (i32.add
         (get_local $3)
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
   (i32.const 0)
  )
 )
 (func $start~anonymous|12 (; 38 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.le_s
   (get_local $0)
   (i32.const -1)
  )
 )
 (func $start~anonymous|13 (; 39 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_local $2)
    (i32.const 100)
   )
  )
  (return
   (i32.gt_s
    (get_local $0)
    (i32.const 10)
   )
  )
 )
 (func $start~anonymous|14 (; 40 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.gt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|15 (; 41 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_local $2)
   )
  )
  (return
   (i32.gt_s
    (get_local $0)
    (i32.const 3)
   )
  )
 )
 (func $start~anonymous|16 (; 42 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func "$(lib)/array/Array<i32>#reduce<i32>" (; 43 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (get_local $2)
  )
  (set_local $4
   (i32.load offset=8
    (get_local $0)
   )
  )
  (set_local $5
   (i32.const 0)
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.and
      (if (result i32)
       (tee_local $6
        (i32.lt_s
         (get_local $5)
         (get_local $4)
        )
       )
       (i32.lt_s
        (get_local $5)
        (i32.load offset=8
         (get_local $0)
        )
       )
       (get_local $6)
      )
      (i32.const 1)
     )
     (block
      (block
       (set_local $3
        (block (result i32)
         (set_global $argumentCount
          (i32.const 4)
         )
         (call_indirect (type $iiiii)
          (get_local $3)
          (i32.load
           (i32.add
            (i32.load
             (get_local $0)
            )
            (i32.mul
             (get_local $5)
             (i32.const 4)
            )
           )
          )
          (get_local $5)
          (get_local $0)
          (get_local $1)
         )
        )
       )
       (set_local $5
        (i32.add
         (get_local $5)
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
   (get_local $3)
  )
 )
 (func $start~anonymous|17 (; 44 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|18 (; 45 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.and
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (i32.gt_s
     (get_local $1)
     (i32.const 2)
    )
   )
   (i32.const 1)
  )
 )
 (func "$(lib)/array/Array<i32>#reduce<bool>" (; 46 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (get_local $2)
  )
  (set_local $4
   (i32.load offset=8
    (get_local $0)
   )
  )
  (set_local $5
   (i32.const 0)
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.and
      (if (result i32)
       (tee_local $6
        (i32.lt_s
         (get_local $5)
         (get_local $4)
        )
       )
       (i32.lt_s
        (get_local $5)
        (i32.load offset=8
         (get_local $0)
        )
       )
       (get_local $6)
      )
      (i32.const 1)
     )
     (block
      (block
       (set_local $3
        (block (result i32)
         (set_global $argumentCount
          (i32.const 4)
         )
         (call_indirect (type $iiiii)
          (get_local $3)
          (i32.load
           (i32.add
            (i32.load
             (get_local $0)
            )
            (i32.mul
             (get_local $5)
             (i32.const 4)
            )
           )
          )
          (get_local $5)
          (get_local $0)
          (get_local $1)
         )
        )
       )
       (set_local $5
        (i32.add
         (get_local $5)
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
   (get_local $3)
  )
 )
 (func $start~anonymous|19 (; 47 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.and
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (i32.gt_s
     (get_local $1)
     (i32.const 100)
    )
   )
   (i32.const 1)
  )
 )
 (func $start~anonymous|20 (; 48 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_local $3)
    (i32.const 1)
   )
  )
  (return
   (i32.add
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $start~anonymous|21 (; 49 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|22 (; 50 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (drop
   (call "$(lib)/array/Array<i32>#pop"
    (get_local $3)
   )
  )
  (return
   (i32.add
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func "$(lib)/array/Array#constructor" (; 51 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block
   (if
    (i32.lt_s
     (get_local $1)
     (i32.const 0)
    )
    (unreachable)
   )
   (i32.store
    (tee_local $0
     (if (result i32)
      (get_local $0)
      (get_local $0)
      (tee_local $0
       (block (result i32)
        (set_local $2
         (call "$(lib)/allocator/arena/allocate_memory"
          (i32.const 12)
         )
        )
        (i32.store
         (get_local $2)
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
        (get_local $2)
       )
      )
     )
    )
    (if (result i32)
     (get_local $1)
     (call "$(lib)/allocator/arena/allocate_memory"
      (i32.mul
       (get_local $1)
       (i32.const 4)
      )
     )
     (i32.const 0)
    )
   )
   (i32.store offset=4
    (get_local $0)
    (block (result i32)
     (set_local $2
      (get_local $1)
     )
     (i32.store offset=8
      (get_local $0)
      (get_local $2)
     )
     (get_local $2)
    )
   )
  )
  (get_local $0)
 )
 (func $std/array/createReverseOrderedArray (; 52 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (call "$(lib)/array/Array#constructor"
    (i32.const 0)
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (call "$(lib)/array/Array<i32>#get:length"
       (get_local $1)
      )
     )
     (block
      (block
       (call "$(lib)/array/Array<i32>#__set"
        (get_local $1)
        (get_local $2)
        (i32.sub
         (i32.sub
          (call "$(lib)/array/Array<i32>#get:length"
           (get_local $1)
          )
          (i32.const 1)
         )
         (get_local $2)
        )
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
  )
  (return
   (get_local $1)
  )
 )
 (func "$(lib)/math/NativeMath.random" (; 53 ;) (type $F) (result f64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i64)
  (if
   (i32.eqz
    (get_global "$(lib)/math/random_seeded")
   )
   (unreachable)
  )
  (set_local $0
   (get_global "$(lib)/math/random_state0")
  )
  (set_local $1
   (get_global "$(lib)/math/random_state1")
  )
  (set_global "$(lib)/math/random_state0"
   (get_local $1)
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shl
     (get_local $0)
     (i64.const 23)
    )
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $0)
     (i64.const 17)
    )
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (get_local $1)
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $1)
     (i64.const 26)
    )
   )
  )
  (set_global "$(lib)/math/random_state1"
   (get_local $0)
  )
  (set_local $2
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
  (return
   (f64.sub
    (f64.reinterpret/i64
     (get_local $2)
    )
    (f64.const 1)
   )
  )
 )
 (func $std/array/createRandomOrderedArray (; 54 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (call "$(lib)/array/Array#constructor"
    (i32.const 0)
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (call "$(lib)/array/Array<i32>#get:length"
       (get_local $1)
      )
     )
     (block
      (block
       (call "$(lib)/array/Array<i32>#__set"
        (get_local $1)
        (get_local $2)
        (i32.trunc_s/f64
         (f64.mul
          (call "$(lib)/math/NativeMath.random")
          (f64.convert_s/i32
           (call "$(lib)/array/Array<i32>#get:length"
            (get_local $1)
           )
          )
         )
        )
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
  )
  (return
   (get_local $1)
  )
 )
 (func $std/array/createDefaultComparator<i32>~anonymous|23 (; 55 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/array/createDefaultComparator<i32> (; 56 ;) (type $i) (result i32)
  (return
   (i32.const 23)
  )
 )
 (func "$(lib)/array/insertionSort<i32>" (; 57 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (nop)
  (block $break|0
   (block
    (set_local $5
     (i32.const 0)
    )
    (set_local $6
     (call "$(lib)/array/Array<i32>#get:length"
      (get_local $0)
     )
    )
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $5)
      (get_local $6)
     )
     (block
      (block
       (set_local $2
        (i32.load
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.mul
           (get_local $5)
           (i32.const 4)
          )
         )
        )
       )
       (set_local $4
        (i32.sub
         (get_local $5)
         (i32.const 1)
        )
       )
       (block $break|1
        (loop $continue|1
         (if
          (i32.ge_s
           (get_local $4)
           (i32.const 0)
          )
          (block
           (block
            (set_local $3
             (i32.load
              (i32.add
               (i32.load
                (get_local $0)
               )
               (i32.mul
                (get_local $4)
                (i32.const 4)
               )
              )
             )
            )
            (if
             (i32.lt_s
              (block (result i32)
               (set_global $argumentCount
                (i32.const 2)
               )
               (call_indirect (type $iii)
                (get_local $2)
                (get_local $3)
                (get_local $1)
               )
              )
              (i32.const 0)
             )
             (block
              (i32.store
               (i32.add
                (i32.load
                 (get_local $0)
                )
                (i32.mul
                 (i32.add
                  (get_local $4)
                  (i32.const 1)
                 )
                 (i32.const 4)
                )
               )
               (get_local $3)
              )
              (set_local $4
               (i32.sub
                (get_local $4)
                (i32.const 1)
               )
              )
             )
             (br $break|1)
            )
           )
           (br $continue|1)
          )
         )
        )
       )
       (i32.store
        (i32.add
         (i32.load
          (get_local $0)
         )
         (i32.mul
          (i32.add
           (get_local $4)
           (i32.const 1)
          )
          (i32.const 4)
         )
        )
        (get_local $2)
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
   (get_local $0)
  )
 )
 (func "$(lib)/array/weakHeapSort<i32>" (; 58 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (set_local $2
   (call "$(lib)/array/Array<i32>#get:length"
    (get_local $0)
   )
  )
  (nop)
  (set_local $9
   (i32.shr_s
    (i32.add
     (get_local $2)
     (i32.const 7)
    )
    (i32.const 3)
   )
  )
  (set_local $10
   (call "$(lib)/allocator/arena/allocate_memory"
    (i32.mul
     (get_local $9)
     (i32.const 4)
    )
   )
  )
  (call "$(lib)/memory/set_memory"
   (get_local $10)
   (i32.const 0)
   (i32.mul
    (get_local $9)
    (i32.const 4)
   )
  )
  (block $break|0
   (set_local $3
    (i32.sub
     (get_local $2)
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
      (block
       (set_local $4
        (get_local $3)
       )
       (block $break|1
        (loop $continue|1
         (if
          (i32.eq
           (i32.and
            (get_local $4)
            (i32.const 1)
           )
           (i32.and
            (i32.shr_s
             (i32.load
              (i32.add
               (get_local $10)
               (i32.mul
                (i32.shr_s
                 (get_local $4)
                 (i32.const 4)
                )
                (i32.const 4)
               )
              )
             )
             (i32.and
              (i32.shr_s
               (get_local $4)
               (i32.const 1)
              )
              (i32.const 7)
             )
            )
            (i32.const 1)
           )
          )
          (block
           (block
            (set_local $4
             (i32.shr_s
              (get_local $4)
              (i32.const 1)
             )
            )
           )
           (br $continue|1)
          )
         )
        )
       )
       (set_local $6
        (i32.shr_s
         (get_local $4)
         (i32.const 1)
        )
       )
       (set_local $7
        (i32.load
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.mul
           (get_local $6)
           (i32.const 4)
          )
         )
        )
       )
       (set_local $8
        (i32.load
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.mul
           (get_local $3)
           (i32.const 4)
          )
         )
        )
       )
       (if
        (i32.lt_s
         (block (result i32)
          (set_global $argumentCount
           (i32.const 2)
          )
          (call_indirect (type $iii)
           (get_local $7)
           (get_local $8)
           (get_local $1)
          )
         )
         (i32.const 0)
        )
        (block
         (i32.store
          (i32.add
           (get_local $10)
           (i32.mul
            (i32.shr_s
             (get_local $3)
             (i32.const 3)
            )
            (i32.const 4)
           )
          )
          (i32.xor
           (i32.load
            (i32.add
             (get_local $10)
             (i32.mul
              (i32.shr_s
               (get_local $3)
               (i32.const 3)
              )
              (i32.const 4)
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
           (i32.mul
            (get_local $3)
            (i32.const 4)
           )
          )
          (get_local $7)
         )
         (i32.store
          (i32.add
           (i32.load
            (get_local $0)
           )
           (i32.mul
            (get_local $6)
            (i32.const 4)
           )
          )
          (get_local $8)
         )
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
  )
  (block $break|2
   (set_local $3
    (i32.sub
     (get_local $2)
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
      (block
       (set_local $7
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
          (i32.mul
           (get_local $3)
           (i32.const 4)
          )
         )
        )
       )
       (i32.store
        (i32.add
         (i32.load
          (get_local $0)
         )
         (i32.mul
          (get_local $3)
          (i32.const 4)
         )
        )
        (get_local $7)
       )
       (set_local $11
        (i32.const 1)
       )
       (block $break|3
        (loop $continue|3
         (if
          (i32.lt_s
           (tee_local $5
            (i32.add
             (i32.shl
              (get_local $11)
              (i32.const 1)
             )
             (i32.and
              (i32.shr_s
               (i32.load
                (i32.add
                 (get_local $10)
                 (i32.mul
                  (i32.shr_s
                   (get_local $11)
                   (i32.const 3)
                  )
                  (i32.const 4)
                 )
                )
               )
               (i32.and
                (get_local $11)
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
           (block
            (set_local $11
             (get_local $5)
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
          (i32.gt_s
           (get_local $11)
           (i32.const 0)
          )
          (block
           (block
            (set_local $7
             (i32.load
              (i32.load
               (get_local $0)
              )
             )
            )
            (set_local $8
             (i32.load
              (i32.add
               (i32.load
                (get_local $0)
               )
               (i32.mul
                (get_local $11)
                (i32.const 4)
               )
              )
             )
            )
            (if
             (i32.lt_s
              (block (result i32)
               (set_global $argumentCount
                (i32.const 2)
               )
               (call_indirect (type $iii)
                (get_local $7)
                (get_local $8)
                (get_local $1)
               )
              )
              (i32.const 0)
             )
             (block
              (i32.store
               (i32.add
                (get_local $10)
                (i32.mul
                 (i32.shr_s
                  (get_local $11)
                  (i32.const 3)
                 )
                 (i32.const 4)
                )
               )
               (i32.xor
                (i32.load
                 (i32.add
                  (get_local $10)
                  (i32.mul
                   (i32.shr_s
                    (get_local $11)
                    (i32.const 3)
                   )
                   (i32.const 4)
                  )
                 )
                )
                (i32.shl
                 (i32.const 1)
                 (i32.and
                  (get_local $11)
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
                (i32.mul
                 (get_local $11)
                 (i32.const 4)
                )
               )
               (get_local $7)
              )
              (i32.store
               (i32.load
                (get_local $0)
               )
               (get_local $8)
              )
             )
            )
            (set_local $11
             (i32.shr_s
              (get_local $11)
              (i32.const 1)
             )
            )
           )
           (br $continue|4)
          )
         )
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
  )
  (call "$(lib)/allocator/arena/free_memory"
   (get_local $10)
  )
  (set_local $12
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
   (get_local $12)
  )
  (return
   (get_local $0)
  )
 )
 (func "$(lib)/array/sort<i32>" (; 59 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $2
   (call "$(lib)/array/Array<i32>#get:length"
    (get_local $0)
   )
  )
  (if
   (i32.le_s
    (get_local $2)
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
   (block
    (set_local $3
     (i32.load offset=4
      (i32.load
       (get_local $0)
      )
     )
    )
    (set_local $4
     (i32.load
      (i32.load
       (get_local $0)
      )
     )
    )
    (if
     (i32.lt_s
      (block (result i32)
       (set_global $argumentCount
        (i32.const 2)
       )
       (call_indirect (type $iii)
        (get_local $3)
        (get_local $4)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (block
      (i32.store offset=4
       (i32.load
        (get_local $0)
       )
       (get_local $4)
      )
      (i32.store
       (i32.load
        (get_local $0)
       )
       (get_local $3)
      )
     )
    )
    (return
     (get_local $0)
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
  (return
   (call "$(lib)/array/weakHeapSort<i32>"
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func "$(lib)/array/Array<i32>#sort" (; 60 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (call "$(lib)/array/sort<i32>"
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $std/array/isSorted<i32> (; 61 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (block
    (set_local $2
     (i32.const 1)
    )
    (set_local $3
     (call "$(lib)/array/Array<i32>#get:length"
      (get_local $0)
     )
    )
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (get_local $3)
     )
     (block
      (block
       (if
        (i32.gt_s
         (block (result i32)
          (set_global $argumentCount
           (i32.const 2)
          )
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
         )
         (i32.const 0)
        )
        (return
         (i32.const 0)
        )
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
  )
  (return
   (i32.const 1)
  )
 )
 (func $std/array/assertSorted<i32> (; 62 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (i32.const 77)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $std/array/assertSortedDefault<i32> (; 63 ;) (type $iv) (param $0 i32)
  (call $std/array/assertSorted<i32>
   (get_local $0)
   (call $std/array/createDefaultComparator<i32>)
  )
 )
 (func $std/array/isArraysEqual<i32> (; 64 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $4)
      (get_local $3)
     )
     (block
      (block
       (if
        (i32.ne
         (call "$(lib)/array/Array<i32>#__get"
          (get_local $0)
          (get_local $4)
         )
         (call "$(lib)/array/Array<i32>#__get"
          (get_local $1)
          (get_local $4)
         )
        )
        (return
         (i32.const 0)
        )
       )
      )
      (set_local $4
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (i32.const 1)
  )
 )
 (func $std/array/isArraysEqual<i32>|trampoline (; 65 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|24 (; 66 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|25 (; 67 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $1)
   (get_local $0)
  )
 )
 (func $start~anonymous|26 (; 68 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|27 (; 69 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $1)
   (get_local $0)
  )
 )
 (func $start (; 70 ;) (type $v)
  (set_global "$(lib)/allocator/arena/startOffset"
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
    (i32.add
     (i32.const 4)
     (i32.mul
      (i32.const 2)
      (i32.const 4)
     )
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 0)
    )
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
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_global $std/array/arr)
     )
     (i32.const 0)
    )
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
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_global $std/array/arr)
    (i32.const 42)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 42)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 91)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 92)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_global $std/array/arr)
     )
     (i32.const 1)
    )
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
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#pop"
    (get_global $std/array/arr)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 42)
    )
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
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 98)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_global $std/array/arr)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 99)
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
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_global $std/array/arr)
     )
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 43)
    )
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
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_global $std/array/arr)
    (i32.const 44)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 109)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_global $std/array/arr)
     )
     (i32.const 2)
    )
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
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 43)
    )
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
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 44)
    )
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
  (drop
   (call "$(lib)/array/Array<i32>#push"
    (get_global $std/array/arr)
    (i32.const 45)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 3)
    )
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
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_global $std/array/arr)
     )
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 117)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 43)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 118)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 44)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 119)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 2)
     )
     (i32.const 45)
    )
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
  (drop
   (call "$(lib)/array/Array<i32>#unshift"
    (get_global $std/array/arr)
    (i32.const 42)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 4)
    )
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
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_global $std/array/arr)
     )
     (i32.const 4)
    )
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
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 42)
    )
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
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 43)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 127)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 2)
     )
     (i32.const 44)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 128)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 3)
     )
     (i32.const 45)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 129)
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
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 5)
    )
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
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_global $std/array/arr)
     )
     (i32.const 8)
    )
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
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 41)
    )
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
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 42)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 136)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 2)
     )
     (i32.const 43)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 137)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 3)
     )
     (i32.const 44)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 138)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 4)
     )
     (i32.const 45)
    )
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
  (set_global $std/array/i
   (call "$(lib)/array/Array<i32>#shift"
    (get_global $std/array/arr)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 41)
    )
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
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 144)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_global $std/array/arr)
     )
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 145)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 42)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 146)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 43)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 147)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 2)
     )
     (i32.const 44)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 148)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 3)
     )
     (i32.const 45)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 149)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 45)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 153)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 3)
    )
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
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_global $std/array/arr)
     )
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 155)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 42)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 156)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 43)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 157)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 2)
     )
     (i32.const 44)
    )
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
  (drop
   (call "$(lib)/array/Array<i32>#reverse"
    (get_global $std/array/arr)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 3)
    )
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
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_global $std/array/arr)
     )
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 163)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 44)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 164)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 43)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 165)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 2)
     )
     (i32.const 42)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 173)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 177)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 181)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 185)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 189)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 3)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 193)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 197)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 201)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 205)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 3)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 209)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 213)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 217)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 221)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 225)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 229)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
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
  (set_global $std/array/includes
   (call "$(lib)/array/Array<i32>#includes"
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const -4)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 237)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 241)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
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
  (set_global $std/array/includes
   (call "$(lib)/array/Array<i32>#includes"
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 249)
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
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 253)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_global $std/array/arr)
     )
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 254)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 44)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 255)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#__get"
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 42)
    )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 265)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 268)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 271)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const -1)
    )
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
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 280)
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
   (i32.eqz
    (i32.ne
     (get_global $std/array/i)
     (i32.const -1)
    )
   )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 295)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 296)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/every)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 302)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/every)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 305)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/every)
     (i32.const 1)
    )
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
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 314)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/every)
     (i32.const 0)
    )
   )
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/every)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 329)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 330)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/some)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 336)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/some)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 339)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/some)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 347)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 8)
    )
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
  (set_global $std/array/some
   (call "$(lib)/array/Array<i32>#some"
    (get_global $std/array/arr)
    (i32.const 14)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/some)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 350)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/some)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 363)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 364)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 371)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 10)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 375)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/boolVal
   (call "$(lib)/array/Array<i32>#reduce<bool>"
    (get_global $std/array/arr)
    (i32.const 18)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/boolVal)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 378)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/boolVal
   (call "$(lib)/array/Array<i32>#reduce<bool>"
    (get_global $std/array/arr)
    (i32.const 19)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/boolVal)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 381)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 389)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 390)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 10)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 392)
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
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 405)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call "$(lib)/array/Array<i32>#get:length"
      (get_global $std/array/arr)
     )
     (i32.const 2)
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
   (i32.eqz
    (block (result i32)
     (set_global $argumentCount
      (i32.const 2)
     )
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
     (i32.const 429)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/revesed2)
  )
  (if
   (i32.eqz
    (block (result i32)
     (set_global $argumentCount
      (i32.const 2)
     )
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
     (i32.const 432)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/revesed4)
  )
  (if
   (i32.eqz
    (block (result i32)
     (set_global $argumentCount
      (i32.const 2)
     )
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
     (i32.const 435)
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
     (i32.const 438)
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
     (i32.const 441)
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
     (i32.const 444)
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
     (i32.const 447)
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
