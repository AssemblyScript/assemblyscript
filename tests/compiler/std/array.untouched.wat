(module
 (type $i (func (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global "$(lib)/allocator/common/alignment/BITS" i32 (i32.const 3))
 (global "$(lib)/allocator/common/alignment/SIZE" i32 (i32.const 8))
 (global "$(lib)/allocator/common/alignment/MASK" i32 (i32.const 7))
 (global "$(lib)/allocator/arena/startOffset" (mut i32) (i32.const 0))
 (global "$(lib)/allocator/arena/offset" (mut i32) (i32.const 0))
 (global $std/array/arr (mut i32) (i32.const 0))
 (global $std/array/i (mut i32) (i32.const 0))
 (global $argumentCount (mut i32) (i32.const 0))
 (global $std/array/includes (mut i32) (i32.const 0))
 (global $std/array/every (mut i32) (i32.const 0))
 (global $std/array/some (mut i32) (i32.const 0))
 (global $std/array/boolVal (mut i32) (i32.const 0))
 (global $std/array/unsorted0 (mut i32) (i32.const 64))
 (global $std/array/unsorted1 (mut i32) (i32.const 80))
 (global $std/array/unsorted2 (mut i32) (i32.const 96))
 (global $std/array/unsorted4 (mut i32) (i32.const 120))
 (global $std/array/unsorted64 (mut i32) (i32.const 0))
 (global $std/array/unsorted128 (mut i32) (i32.const 0))
 (global $std/array/unsorted1024 (mut i32) (i32.const 0))
 (global $std/array/unsorted65536 (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 148))
 (table 25 25 anyfunc)
 (elem (i32.const 0) $start~anonymous|0 $start~anonymous|1 $start~anonymous|2 $start~anonymous|3 $start~anonymous|4 $start~anonymous|5 $start~anonymous|6 $start~anonymous|7 $start~anonymous|8 $start~anonymous|9 $start~anonymous|10 $start~anonymous|11 $start~anonymous|12 $start~anonymous|13 $start~anonymous|14 $start~anonymous|15 $start~anonymous|16 $start~anonymous|17 $start~anonymous|18 $start~anonymous|19 $start~anonymous|20 $start~anonymous|21 $start~anonymous|22 "$(lib)/array/createDefaultComparator<i32>~anonymous|23" $std/array/createDefaultComparator<i32>~anonymous|24)
 (memory $0 1)
 (data (i32.const 4) "\0c\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 32) "\0e\00\00\00(\00l\00i\00b\00)\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 64) "L\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 80) "\\\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00")
 (data (i32.const 96) "l\00\00\00\02\00\00\00\02\00\00\00\02\00\00\00\01\00\00\00")
 (data (i32.const 120) "\84\00\00\00\04\00\00\00\04\00\00\00\04\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func "$(lib)/allocator/arena/allocate_memory" (; 1 ;) (type $ii) (param $0 i32) (result i32)
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
 (func "$(lib)/array/Array<i32>#get:length" (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.load offset=8
    (get_local $0)
   )
  )
 )
 (func "$(lib)/memory/copy_memory" (; 3 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func "$(lib)/memory/move_memory" (; 4 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func "$(lib)/allocator/arena/free_memory" (; 5 ;) (type $iv) (param $0 i32)
 )
 (func "$(lib)/array/Array<i32>#__grow" (; 6 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (i32.const 32)
     (i32.const 112)
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
 (func "$(lib)/array/Array<i32>#push" (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func "$(lib)/array/Array<i32>#__get" (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func "$(lib)/array/Array<i32>#pop" (; 9 ;) (type $ii) (param $0 i32) (result i32)
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
 (func "$(lib)/array/Array<i32>#unshift" (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
       (i32.const 32)
       (i32.const 310)
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
 (func "$(lib)/memory/set_memory" (; 11 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func "$(lib)/array/Array<i32>#shift" (; 12 ;) (type $ii) (param $0 i32) (result i32)
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
 (func "$(lib)/array/Array<i32>#reverse" (; 13 ;) (type $ii) (param $0 i32) (result i32)
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
 (func "$(lib)/array/Array<i32>#indexOf" (; 14 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func "$(lib)/array/Array<i32>#indexOf|trampoline" (; 15 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func "$(lib)/array/Array<i32>#includes" (; 16 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func "$(lib)/array/Array<i32>#includes|trampoline" (; 17 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func "$(lib)/array/Array<i32>#splice" (; 18 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func "$(lib)/array/Array<i32>#__set" (; 19 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $start~anonymous|0 (; 20 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 0)
  )
 )
 (func "$(lib)/array/Array<i32>#findIndex" (; 21 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $start~anonymous|1 (; 22 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 1)
  )
 )
 (func $start~anonymous|2 (; 23 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 100)
  )
 )
 (func $start~anonymous|3 (; 24 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|4 (; 25 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 100)
  )
 )
 (func $start~anonymous|5 (; 26 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|6 (; 27 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 0)
  )
 )
 (func "$(lib)/array/Array<i32>#every" (; 28 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $start~anonymous|7 (; 29 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.le_s
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $start~anonymous|8 (; 30 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|9 (; 31 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.lt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|10 (; 32 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|11 (; 33 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 3)
  )
 )
 (func "$(lib)/array/Array<i32>#some" (; 34 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $start~anonymous|12 (; 35 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.le_s
   (get_local $0)
   (i32.const -1)
  )
 )
 (func $start~anonymous|13 (; 36 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|14 (; 37 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.gt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|15 (; 38 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|16 (; 39 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func "$(lib)/array/Array<i32>#reduce<i32>" (; 40 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|17 (; 41 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|18 (; 42 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func "$(lib)/array/Array<i32>#reduce<bool>" (; 43 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|19 (; 44 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $start~anonymous|20 (; 45 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $start~anonymous|21 (; 46 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|22 (; 47 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func "$(lib)/array/Array#constructor" (; 48 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/array/createReverseOrderArray (; 49 ;) (type $ii) (param $0 i32) (result i32)
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
 (func "$(lib)/array/conditionalSwap<i32>" (; 50 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (call "$(lib)/array/Array<i32>#__get"
    (get_local $0)
    (get_local $1)
   )
  )
  (set_local $5
   (call "$(lib)/array/Array<i32>#__get"
    (get_local $0)
    (get_local $2)
   )
  )
  (if
   (i32.lt_s
    (block (result i32)
     (set_global $argumentCount
      (i32.const 2)
     )
     (call_indirect (type $iii)
      (get_local $4)
      (get_local $5)
      (get_local $3)
     )
    )
    (i32.const 0)
   )
   (block
    (call "$(lib)/array/Array<i32>#__set"
     (get_local $0)
     (get_local $1)
     (get_local $5)
    )
    (call "$(lib)/array/Array<i32>#__set"
     (get_local $0)
     (get_local $2)
     (get_local $4)
    )
   )
  )
  (return
   (get_local $0)
  )
 )
 (func "$(lib)/array/insertionSort<i32>" (; 51 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
        (call "$(lib)/array/Array<i32>#__get"
         (get_local $0)
         (get_local $5)
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
             (call "$(lib)/array/Array<i32>#__get"
              (get_local $0)
              (get_local $4)
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
              (call "$(lib)/array/Array<i32>#__set"
               (get_local $0)
               (i32.add
                (get_local $4)
                (i32.const 1)
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
       (call "$(lib)/array/Array<i32>#__set"
        (get_local $0)
        (i32.add
         (get_local $4)
         (i32.const 1)
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
 (func "$(lib)/array/weakHeapSort<i32>" (; 52 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (set_local $2
   (call "$(lib)/array/Array<i32>#get:length"
    (get_local $0)
   )
  )
  (nop)
  (if
   (i32.gt_s
    (get_local $2)
    (i32.const 1)
   )
   (block
    (set_local $9
     (i32.shr_u
      (i32.add
       (get_local $2)
       (i32.const 7)
      )
      (i32.const 3)
     )
    )
    (set_local $10
     (call "$(lib)/array/Array#constructor"
      (i32.const 0)
      (get_local $9)
     )
    )
    (block $break|0
     (set_local $3
      (i32.const 0)
     )
     (loop $continue|0
      (if
       (i32.lt_s
        (get_local $3)
        (get_local $9)
       )
       (block
        (call "$(lib)/array/Array<i32>#__set"
         (get_local $10)
         (get_local $3)
         (i32.const 0)
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
    (block $break|1
     (set_local $3
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (loop $continue|1
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
         (block $break|2
          (loop $continue|2
           (if
            (i32.eq
             (i32.and
              (get_local $4)
              (i32.const 1)
             )
             (i32.and
              (i32.shr_u
               (call "$(lib)/array/Array<i32>#__get"
                (get_local $10)
                (i32.shr_u
                 (get_local $4)
                 (i32.const 4)
                )
               )
               (i32.and
                (i32.shr_u
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
               (i32.shr_u
                (get_local $4)
                (i32.const 1)
               )
              )
             )
             (br $continue|2)
            )
           )
          )
         )
         (set_local $6
          (i32.shr_u
           (get_local $4)
           (i32.const 1)
          )
         )
         (set_local $7
          (call "$(lib)/array/Array<i32>#__get"
           (get_local $0)
           (get_local $6)
          )
         )
         (set_local $8
          (call "$(lib)/array/Array<i32>#__get"
           (get_local $0)
           (get_local $3)
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
           (call "$(lib)/array/Array<i32>#__set"
            (get_local $10)
            (i32.shr_u
             (get_local $3)
             (i32.const 3)
            )
            (i32.xor
             (call "$(lib)/array/Array<i32>#__get"
              (get_local $10)
              (i32.shr_u
               (get_local $3)
               (i32.const 3)
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
           (call "$(lib)/array/Array<i32>#__set"
            (get_local $0)
            (get_local $3)
            (get_local $7)
           )
           (call "$(lib)/array/Array<i32>#__set"
            (get_local $0)
            (get_local $6)
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
        (br $continue|1)
       )
      )
     )
    )
    (block $break|3
     (set_local $3
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (loop $continue|3
      (if
       (i32.ge_s
        (get_local $3)
        (i32.const 2)
       )
       (block
        (block
         (set_local $7
          (call "$(lib)/array/Array<i32>#__get"
           (get_local $0)
           (i32.const 0)
          )
         )
         (call "$(lib)/array/Array<i32>#__set"
          (get_local $0)
          (i32.const 0)
          (call "$(lib)/array/Array<i32>#__get"
           (get_local $0)
           (get_local $3)
          )
         )
         (call "$(lib)/array/Array<i32>#__set"
          (get_local $0)
          (get_local $3)
          (get_local $7)
         )
         (set_local $11
          (i32.const 1)
         )
         (block $break|4
          (loop $continue|4
           (if
            (i32.lt_s
             (tee_local $5
              (i32.add
               (i32.shl
                (get_local $11)
                (i32.const 1)
               )
               (i32.and
                (i32.shr_u
                 (call "$(lib)/array/Array<i32>#__get"
                  (get_local $10)
                  (i32.shr_u
                   (get_local $11)
                   (i32.const 3)
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
             (br $continue|4)
            )
           )
          )
         )
         (block $break|5
          (loop $continue|5
           (if
            (i32.gt_s
             (get_local $11)
             (i32.const 0)
            )
            (block
             (block
              (set_local $7
               (call "$(lib)/array/Array<i32>#__get"
                (get_local $0)
                (i32.const 0)
               )
              )
              (set_local $8
               (call "$(lib)/array/Array<i32>#__get"
                (get_local $0)
                (get_local $11)
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
                (call "$(lib)/array/Array<i32>#__set"
                 (get_local $10)
                 (i32.shr_u
                  (get_local $3)
                  (i32.const 3)
                 )
                 (i32.xor
                  (call "$(lib)/array/Array<i32>#__get"
                   (get_local $10)
                   (i32.shr_u
                    (get_local $3)
                    (i32.const 3)
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
                (call "$(lib)/array/Array<i32>#__set"
                 (get_local $0)
                 (get_local $11)
                 (get_local $7)
                )
                (call "$(lib)/array/Array<i32>#__set"
                 (get_local $0)
                 (i32.const 0)
                 (get_local $8)
                )
               )
              )
              (set_local $11
               (i32.shr_u
                (get_local $11)
                (i32.const 1)
               )
              )
             )
             (br $continue|5)
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
        (br $continue|3)
       )
      )
     )
    )
    (set_local $11
     (call "$(lib)/array/Array<i32>#__get"
      (get_local $0)
      (i32.const 1)
     )
    )
    (call "$(lib)/array/Array<i32>#__set"
     (get_local $0)
     (i32.const 1)
     (call "$(lib)/array/Array<i32>#__get"
      (get_local $0)
      (i32.const 0)
     )
    )
    (call "$(lib)/array/Array<i32>#__set"
     (get_local $0)
     (i32.const 0)
     (get_local $11)
    )
   )
  )
  (return
   (get_local $0)
  )
 )
 (func "$(lib)/array/sort<i32>" (; 53 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  (return
   (call "$(lib)/array/weakHeapSort<i32>"
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func "$(lib)/array/Array<i32>#sort" (; 54 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (call "$(lib)/array/sort<i32>"
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func "$(lib)/array/createDefaultComparator<i32>~anonymous|23" (; 55 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func "$(lib)/array/createDefaultComparator<i32>" (; 56 ;) (type $i) (result i32)
  (return
   (i32.const 23)
  )
 )
 (func "$(lib)/array/Array<i32>#sort|trampoline" (; 57 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (get_global $argumentCount)
     )
    )
    (unreachable)
   )
   (set_local $1
    (call "$(lib)/array/createDefaultComparator<i32>")
   )
  )
  (call "$(lib)/array/Array<i32>#sort"
   (get_local $0)
   (get_local $1)
  )
 )
 (func $std/array/isSorted<i32> (; 58 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/array/createDefaultComparator<i32>~anonymous|24 (; 59 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/array/createDefaultComparator<i32> (; 60 ;) (type $i) (result i32)
  (return
   (i32.const 24)
  )
 )
 (func $std/array/isSorted<i32>|trampoline (; 61 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    (call $std/array/createDefaultComparator<i32>)
   )
  )
  (call $std/array/isSorted<i32>
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start (; 62 ;) (type $v)
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
     (i32.const 4)
     (i32.const 30)
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
     (i32.const 4)
     (i32.const 31)
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
     (i32.const 4)
     (i32.const 35)
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
     (i32.const 4)
     (i32.const 36)
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
     (i32.const 4)
     (i32.const 37)
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
     (i32.const 4)
     (i32.const 41)
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
     (i32.const 4)
     (i32.const 42)
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
     (i32.const 4)
     (i32.const 43)
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
     (i32.const 4)
     (i32.const 47)
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
     (i32.const 4)
     (i32.const 48)
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
     (i32.const 4)
     (i32.const 49)
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
     (i32.const 4)
     (i32.const 53)
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
     (i32.const 4)
     (i32.const 54)
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
     (i32.const 4)
     (i32.const 55)
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
     (i32.const 4)
     (i32.const 56)
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
     (i32.const 4)
     (i32.const 60)
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
     (i32.const 4)
     (i32.const 61)
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
     (i32.const 4)
     (i32.const 62)
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
     (i32.const 4)
     (i32.const 63)
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
     (i32.const 4)
     (i32.const 64)
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
     (i32.const 4)
     (i32.const 68)
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
     (i32.const 4)
     (i32.const 69)
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
     (i32.const 4)
     (i32.const 70)
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
     (i32.const 4)
     (i32.const 71)
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
     (i32.const 4)
     (i32.const 72)
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
     (i32.const 4)
     (i32.const 73)
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
     (i32.const 4)
     (i32.const 77)
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
     (i32.const 4)
     (i32.const 78)
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
     (i32.const 4)
     (i32.const 79)
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
     (i32.const 4)
     (i32.const 80)
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
     (i32.const 4)
     (i32.const 81)
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
     (i32.const 4)
     (i32.const 82)
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
     (i32.const 4)
     (i32.const 83)
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
     (i32.const 4)
     (i32.const 87)
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
     (i32.const 4)
     (i32.const 88)
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
     (i32.const 4)
     (i32.const 89)
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
     (i32.const 4)
     (i32.const 90)
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
     (i32.const 4)
     (i32.const 91)
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
     (i32.const 4)
     (i32.const 92)
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
     (i32.const 4)
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
     (i32.const 45)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
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
     (i32.const 3)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
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
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 99)
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
     (i32.const 4)
     (i32.const 100)
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
     (i32.const 4)
     (i32.const 101)
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
     (i32.const 4)
     (i32.const 102)
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
     (i32.const 4)
     (i32.const 106)
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
     (i32.const 4)
     (i32.const 107)
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
     (i32.const 4)
     (i32.const 108)
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
     (i32.const 4)
     (i32.const 109)
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
     (i32.const 4)
     (i32.const 110)
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
     (i32.const 4)
     (i32.const 117)
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
     (i32.const 4)
     (i32.const 121)
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
     (i32.const 4)
     (i32.const 125)
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
     (i32.const 4)
     (i32.const 129)
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
     (i32.const 4)
     (i32.const 133)
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
     (i32.const 4)
     (i32.const 137)
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
     (i32.const 4)
     (i32.const 141)
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
     (i32.const 4)
     (i32.const 145)
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
     (i32.const 4)
     (i32.const 149)
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
     (i32.const 4)
     (i32.const 153)
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
     (i32.const 4)
     (i32.const 157)
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
     (i32.const 4)
     (i32.const 161)
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
     (i32.const 4)
     (i32.const 165)
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
     (i32.const 4)
     (i32.const 169)
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
     (i32.const 4)
     (i32.const 173)
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
     (i32.const 4)
     (i32.const 177)
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
     (i32.const 4)
     (i32.const 181)
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
     (i32.const 4)
     (i32.const 185)
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
     (i32.const 4)
     (i32.const 189)
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
     (i32.const 4)
     (i32.const 193)
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
     (i32.const 4)
     (i32.const 197)
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
     (i32.const 4)
     (i32.const 198)
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
     (i32.const 4)
     (i32.const 199)
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
     (i32.const 4)
     (i32.const 200)
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
     (i32.const 4)
     (i32.const 209)
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
     (i32.const 4)
     (i32.const 212)
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
     (i32.const 4)
     (i32.const 215)
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
     (i32.const 4)
     (i32.const 223)
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
     (i32.const 4)
     (i32.const 224)
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
     (i32.const 4)
     (i32.const 226)
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
     (i32.const 4)
     (i32.const 239)
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
     (i32.const 4)
     (i32.const 240)
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
     (i32.const 4)
     (i32.const 246)
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
     (i32.const 4)
     (i32.const 249)
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
     (i32.const 4)
     (i32.const 257)
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
     (i32.const 4)
     (i32.const 258)
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
     (i32.const 4)
     (i32.const 260)
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
     (i32.const 4)
     (i32.const 273)
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
     (i32.const 4)
     (i32.const 274)
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
     (i32.const 4)
     (i32.const 280)
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
     (i32.const 4)
     (i32.const 283)
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
     (i32.const 4)
     (i32.const 291)
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
     (i32.const 4)
     (i32.const 292)
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
     (i32.const 4)
     (i32.const 294)
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
     (i32.const 4)
     (i32.const 307)
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
     (i32.const 4)
     (i32.const 308)
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
     (i32.const 4)
     (i32.const 315)
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
     (i32.const 4)
     (i32.const 319)
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
     (i32.const 4)
     (i32.const 322)
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
     (i32.const 4)
     (i32.const 325)
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
     (i32.const 4)
     (i32.const 333)
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
     (i32.const 4)
     (i32.const 334)
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
     (i32.const 4)
     (i32.const 336)
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
     (i32.const 4)
     (i32.const 349)
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
     (i32.const 4)
     (i32.const 350)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/unsorted64
   (call $std/array/createReverseOrderArray
    (i32.const 64)
   )
  )
  (set_global $std/array/unsorted128
   (call $std/array/createReverseOrderArray
    (i32.const 128)
   )
  )
  (set_global $std/array/unsorted1024
   (call $std/array/createReverseOrderArray
    (i32.const 1024)
   )
  )
  (set_global $std/array/unsorted65536
   (call $std/array/createReverseOrderArray
    (i32.shl
     (i32.const 1)
     (i32.const 16)
    )
   )
  )
  (if
   (i32.eqz
    (block (result i32)
     (set_global $argumentCount
      (i32.const 1)
     )
     (call $std/array/isSorted<i32>|trampoline
      (block (result i32)
       (set_global $argumentCount
        (i32.const 0)
       )
       (call "$(lib)/array/Array<i32>#sort|trampoline"
        (get_global $std/array/unsorted0)
        (i32.const 0)
       )
      )
      (i32.const 0)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 364)
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
     (call $std/array/isSorted<i32>|trampoline
      (block (result i32)
       (set_global $argumentCount
        (i32.const 0)
       )
       (call "$(lib)/array/Array<i32>#sort|trampoline"
        (get_global $std/array/unsorted1)
        (i32.const 0)
       )
      )
      (i32.const 0)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 365)
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
     (call $std/array/isSorted<i32>|trampoline
      (block (result i32)
       (set_global $argumentCount
        (i32.const 0)
       )
       (call "$(lib)/array/Array<i32>#sort|trampoline"
        (get_global $std/array/unsorted2)
        (i32.const 0)
       )
      )
      (i32.const 0)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 366)
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
     (call $std/array/isSorted<i32>|trampoline
      (block (result i32)
       (set_global $argumentCount
        (i32.const 0)
       )
       (call "$(lib)/array/Array<i32>#sort|trampoline"
        (get_global $std/array/unsorted4)
        (i32.const 0)
       )
      )
      (i32.const 0)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 367)
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
     (call $std/array/isSorted<i32>|trampoline
      (block (result i32)
       (set_global $argumentCount
        (i32.const 0)
       )
       (call "$(lib)/array/Array<i32>#sort|trampoline"
        (get_global $std/array/unsorted64)
        (i32.const 0)
       )
      )
      (i32.const 0)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 369)
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
     (call $std/array/isSorted<i32>|trampoline
      (block (result i32)
       (set_global $argumentCount
        (i32.const 0)
       )
       (call "$(lib)/array/Array<i32>#sort|trampoline"
        (get_global $std/array/unsorted128)
        (i32.const 0)
       )
      )
      (i32.const 0)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 370)
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
     (call $std/array/isSorted<i32>|trampoline
      (block (result i32)
       (set_global $argumentCount
        (i32.const 0)
       )
       (call "$(lib)/array/Array<i32>#sort|trampoline"
        (get_global $std/array/unsorted1024)
        (i32.const 0)
       )
      )
      (i32.const 0)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 371)
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
     (call $std/array/isSorted<i32>|trampoline
      (block (result i32)
       (set_global $argumentCount
        (i32.const 0)
       )
       (call "$(lib)/array/Array<i32>#sort|trampoline"
        (get_global $std/array/unsorted65536)
        (i32.const 0)
       )
      )
      (i32.const 0)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 372)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
