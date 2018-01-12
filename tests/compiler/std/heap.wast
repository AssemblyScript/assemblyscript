(module
 (type $i (func (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (global $std/heap/size i32 (i32.const 42))
 (global $std:heap/HEAP_OFFSET (mut i32) (i32.const 0))
 (global $std:heap/ALIGN_LOG2 i32 (i32.const 3))
 (global $std:heap/ALIGN_SIZE i32 (i32.const 8))
 (global $std:heap/ALIGN_MASK i32 (i32.const 7))
 (global $std/heap/ptr1 (mut i32) (i32.const 0))
 (global $std/heap/ptr2 (mut i32) (i32.const 0))
 (global $std/heap/i (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $std:heap/Heap.allocate (; 0 ;) (type $ii) (param $0 i32) (result i32)
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
  (block
   (set_local $1
    (current_memory)
   )
  )
  (if
   (i32.gt_u
    (i32.add
     (get_global $std:heap/HEAP_OFFSET)
     (get_local $0)
    )
    (i32.shl
     (get_local $1)
     (i32.const 16)
    )
   )
   (if
    (i32.lt_s
     (grow_memory
      (select
       (tee_local $2
        (i32.trunc_s/f64
         (f64.ceil
          (f64.div
           (f64.convert_u/i32
            (get_local $0)
           )
           (f64.const 65536)
          )
         )
        )
       )
       (tee_local $3
        (i32.sub
         (i32.mul
          (get_local $1)
          (i32.const 2)
         )
         (get_local $1)
        )
       )
       (i32.gt_s
        (get_local $2)
        (get_local $3)
       )
      )
     )
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (block
   (set_local $4
    (get_global $std:heap/HEAP_OFFSET)
   )
  )
  (if
   (i32.and
    (block (result i32)
     (set_global $std:heap/HEAP_OFFSET
      (i32.add
       (get_global $std:heap/HEAP_OFFSET)
       (get_local $0)
      )
     )
     (get_global $std:heap/HEAP_OFFSET)
    )
    (i32.const 7)
   )
   (set_global $std:heap/HEAP_OFFSET
    (i32.add
     (i32.or
      (get_global $std:heap/HEAP_OFFSET)
      (i32.const 7)
     )
     (i32.const 1)
    )
   )
  )
  (return
   (get_local $4)
  )
 )
 (func $std:heap/Heap.fill (; 1 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (if
   (i32.eqz
    (i32.ge_u
     (get_local $0)
     (get_global $HEAP_BASE)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (get_local $0)
   )
  )
  (block
   (set_local $3
    (get_local $0)
   )
  )
  (i32.store8
   (get_local $3)
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $3)
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
   (return
    (get_local $0)
   )
  )
  (i32.store8
   (i32.add
    (get_local $3)
    (i32.const 1)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $3)
     (get_local $2)
    )
    (i32.const 2)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.add
    (get_local $3)
    (i32.const 2)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $3)
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
   (return
    (get_local $0)
   )
  )
  (i32.store8
   (i32.add
    (get_local $3)
    (i32.const 3)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $3)
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
   (return
    (get_local $0)
   )
  )
  (block
   (set_local $4
    (i32.and
     (i32.sub
      (i32.const 0)
      (get_local $3)
     )
     (i32.const 3)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $3)
    (get_local $4)
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $4)
   )
  )
  (set_local $2
   (i32.and
    (get_local $2)
    (i32.sub
     (i32.const 0)
     (i32.const 4)
    )
   )
  )
  (block
   (set_local $5
    (i32.mul
     (i32.div_u
      (i32.sub
       (i32.const 0)
       (i32.const 1)
      )
      (i32.const 255)
     )
     (get_local $1)
    )
   )
  )
  (i32.store
   (get_local $3)
   (get_local $5)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $3)
     (get_local $2)
    )
    (i32.const 4)
   )
   (get_local $5)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 8)
   )
   (return
    (get_local $0)
   )
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 8)
   )
   (get_local $5)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $3)
     (get_local $2)
    )
    (i32.const 12)
   )
   (get_local $5)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $3)
     (get_local $2)
    )
    (i32.const 8)
   )
   (get_local $5)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 24)
   )
   (return
    (get_local $0)
   )
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 12)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 20)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 24)
   )
   (get_local $5)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $3)
     (get_local $2)
    )
    (i32.const 28)
   )
   (get_local $5)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $3)
     (get_local $2)
    )
    (i32.const 24)
   )
   (get_local $5)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $3)
     (get_local $2)
    )
    (i32.const 20)
   )
   (get_local $5)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $3)
     (get_local $2)
    )
    (i32.const 16)
   )
   (get_local $5)
  )
  (set_local $4
   (i32.add
    (i32.const 24)
    (i32.and
     (get_local $3)
     (i32.const 4)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $3)
    (get_local $4)
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $4)
   )
  )
  (block
   (set_local $6
    (i64.or
     (i64.extend_u/i32
      (get_local $5)
     )
     (i64.shl
      (i64.extend_u/i32
       (get_local $5)
      )
      (i64.const 32)
     )
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
        (get_local $3)
        (get_local $6)
       )
       (i64.store
        (i32.add
         (get_local $3)
         (i32.const 8)
        )
        (get_local $6)
       )
       (i64.store
        (i32.add
         (get_local $3)
         (i32.const 16)
        )
        (get_local $6)
       )
       (i64.store
        (i32.add
         (get_local $3)
         (i32.const 24)
        )
        (get_local $6)
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 32)
        )
       )
       (set_local $3
        (i32.add
         (get_local $3)
         (i32.const 32)
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
 (func $std:heap/Heap.copy (; 2 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.eqz
    (i32.ge_u
     (get_local $0)
     (get_global $HEAP_BASE)
    )
   )
   (unreachable)
  )
  (block
   (set_local $3
    (get_local $0)
   )
  )
  (nop)
  (block $break|0
   (loop $continue|0
    (if
     (if (result i32)
      (i32.ne
       (get_local $2)
       (i32.const 0)
      )
      (i32.rem_u
       (get_local $1)
       (i32.const 4)
      )
      (get_local $2)
     )
     (block
      (block
       (i32.store8
        (block (result i32)
         (set_local $6
          (get_local $3)
         )
         (set_local $3
          (i32.add
           (get_local $6)
           (i32.const 1)
          )
         )
         (get_local $6)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $6
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $6)
            (i32.const 1)
           )
          )
          (get_local $6)
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
    (i32.rem_u
     (get_local $3)
     (i32.const 4)
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
          (get_local $3)
          (i32.load
           (get_local $1)
          )
         )
         (i32.store
          (i32.add
           (get_local $3)
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
           (get_local $3)
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
           (get_local $3)
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
         (set_local $3
          (i32.add
           (get_local $3)
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
       (get_local $3)
       (i32.load
        (get_local $1)
       )
      )
      (i32.store
       (i32.add
        (get_local $3)
        (i32.const 4)
       )
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
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
       (get_local $3)
       (i32.load
        (get_local $1)
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
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
       (get_local $3)
       (i32.load16_u
        (get_local $1)
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
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
       (set_local $6
        (get_local $3)
       )
       (set_local $3
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $6
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
      )
     )
    )
    (return
     (get_local $0)
    )
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
       (set_local $6
        (i32.rem_u
         (get_local $3)
         (i32.const 4)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $6)
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $6)
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $6)
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      (set_local $4
       (i32.load
        (get_local $1)
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $6
         (get_local $3)
        )
        (set_local $3
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $6
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $6)
           (i32.const 1)
          )
         )
         (get_local $6)
        )
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $6
         (get_local $3)
        )
        (set_local $3
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $6
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $6)
           (i32.const 1)
          )
         )
         (get_local $6)
        )
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $6
         (get_local $3)
        )
        (set_local $3
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $6
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $6)
           (i32.const 1)
          )
         )
         (get_local $6)
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
           (set_local $5
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 1)
             )
            )
           )
           (i32.store
            (get_local $3)
            (i32.or
             (i32.shr_u
              (get_local $4)
              (i32.const 24)
             )
             (i32.shl
              (get_local $5)
              (i32.const 8)
             )
            )
           )
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 5)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $3)
             (i32.const 4)
            )
            (i32.or
             (i32.shr_u
              (get_local $5)
              (i32.const 24)
             )
             (i32.shl
              (get_local $4)
              (i32.const 8)
             )
            )
           )
           (set_local $5
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 9)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $3)
             (i32.const 8)
            )
            (i32.or
             (i32.shr_u
              (get_local $4)
              (i32.const 24)
             )
             (i32.shl
              (get_local $5)
              (i32.const 8)
             )
            )
           )
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 13)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $3)
             (i32.const 12)
            )
            (i32.or
             (i32.shr_u
              (get_local $5)
              (i32.const 24)
             )
             (i32.shl
              (get_local $4)
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
           (set_local $3
            (i32.add
             (get_local $3)
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
     (set_local $4
      (i32.load
       (get_local $1)
      )
     )
     (i32.store8
      (block (result i32)
       (set_local $6
        (get_local $3)
       )
       (set_local $3
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $6
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
      )
     )
     (i32.store8
      (block (result i32)
       (set_local $6
        (get_local $3)
       )
       (set_local $3
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $6
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
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
          (set_local $5
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 2)
            )
           )
          )
          (i32.store
           (get_local $3)
           (i32.or
            (i32.shr_u
             (get_local $4)
             (i32.const 16)
            )
            (i32.shl
             (get_local $5)
             (i32.const 16)
            )
           )
          )
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 6)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $3)
            (i32.const 4)
           )
           (i32.or
            (i32.shr_u
             (get_local $5)
             (i32.const 16)
            )
            (i32.shl
             (get_local $4)
             (i32.const 16)
            )
           )
          )
          (set_local $5
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 10)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $3)
            (i32.const 8)
           )
           (i32.or
            (i32.shr_u
             (get_local $4)
             (i32.const 16)
            )
            (i32.shl
             (get_local $5)
             (i32.const 16)
            )
           )
          )
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 14)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $3)
            (i32.const 12)
           )
           (i32.or
            (i32.shr_u
             (get_local $5)
             (i32.const 16)
            )
            (i32.shl
             (get_local $4)
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
          (set_local $3
           (i32.add
            (get_local $3)
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
    (set_local $4
     (i32.load
      (get_local $1)
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
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
         (set_local $5
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 3)
           )
          )
         )
         (i32.store
          (get_local $3)
          (i32.or
           (i32.shr_u
            (get_local $4)
            (i32.const 8)
           )
           (i32.shl
            (get_local $5)
            (i32.const 24)
           )
          )
         )
         (set_local $4
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 7)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $3)
           (i32.const 4)
          )
          (i32.or
           (i32.shr_u
            (get_local $5)
            (i32.const 8)
           )
           (i32.shl
            (get_local $4)
            (i32.const 24)
           )
          )
         )
         (set_local $5
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 11)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $3)
           (i32.const 8)
          )
          (i32.or
           (i32.shr_u
            (get_local $4)
            (i32.const 8)
           )
           (i32.shl
            (get_local $5)
            (i32.const 24)
           )
          )
         )
         (set_local $4
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 15)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $3)
           (i32.const 12)
          )
          (i32.or
           (i32.shr_u
            (get_local $5)
            (i32.const 8)
           )
           (i32.shl
            (get_local $4)
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
         (set_local $3
          (i32.add
           (get_local $3)
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
  (if
   (i32.and
    (get_local $2)
    (i32.const 16)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
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
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
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
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
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
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $6
       (get_local $3)
      )
      (set_local $3
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
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
     (set_local $6
      (get_local $3)
     )
     (set_local $3
      (i32.add
       (get_local $6)
       (i32.const 1)
      )
     )
     (get_local $6)
    )
    (i32.load8_u
     (block (result i32)
      (set_local $6
       (get_local $1)
      )
      (set_local $1
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
    )
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $std:heap/Heap.compare (; 3 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std:heap/Heap.dispose (; 4 ;) (type $iv) (param $0 i32)
 )
 (func $start (; 5 ;) (type $v)
  (set_global $std:heap/HEAP_OFFSET
   (get_global $HEAP_BASE)
  )
  (set_global $std/heap/ptr1
   (call $std:heap/Heap.allocate
    (i32.const 42)
   )
  )
  (set_global $std/heap/ptr2
   (call $std:heap/Heap.allocate
    (i32.const 42)
   )
  )
  (if
   (i32.eqz
    (i32.ne
     (get_global $std/heap/ptr1)
     (get_global $std/heap/ptr2)
    )
   )
   (unreachable)
  )
  (drop
   (call $std:heap/Heap.fill
    (get_global $std/heap/ptr1)
    (i32.const 18)
    (i32.const 42)
   )
  )
  (block $break|0
   (set_global $std/heap/i
    (i32.const 0)
   )
   (loop $continue|0
    (if
     (i32.lt_u
      (get_global $std/heap/i)
      (i32.const 42)
     )
     (block
      (if
       (i32.eqz
        (i32.eq
         (i32.load8_u
          (i32.add
           (get_global $std/heap/ptr1)
           (get_global $std/heap/i)
          )
         )
         (i32.const 18)
        )
       )
       (unreachable)
      )
      (set_global $std/heap/i
       (i32.add
        (get_global $std/heap/i)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (drop
   (call $std:heap/Heap.copy
    (get_global $std/heap/ptr2)
    (get_global $std/heap/ptr1)
    (i32.const 42)
   )
  )
  (block $break|1
   (set_global $std/heap/i
    (i32.const 0)
   )
   (loop $continue|1
    (if
     (i32.lt_u
      (get_global $std/heap/i)
      (i32.const 42)
     )
     (block
      (if
       (i32.eqz
        (i32.eq
         (i32.load8_u
          (i32.add
           (get_global $std/heap/ptr2)
           (get_global $std/heap/i)
          )
         )
         (i32.const 18)
        )
       )
       (unreachable)
      )
      (set_global $std/heap/i
       (i32.add
        (get_global $std/heap/i)
        (i32.const 1)
       )
      )
      (br $continue|1)
     )
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std:heap/Heap.compare
      (get_global $std/heap/ptr1)
      (get_global $std/heap/ptr2)
      (i32.const 42)
     )
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (call $std:heap/Heap.dispose
   (get_global $std/heap/ptr1)
  )
  (call $std:heap/Heap.dispose
   (get_global $std/heap/ptr2)
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
  CLASS_PROTOTYPE: Array
  CLASS_PROTOTYPE: std:array/CArray
  CLASS_PROTOTYPE: CArray
  CLASS_PROTOTYPE: std:error/Error
  CLASS_PROTOTYPE: Error
  CLASS_PROTOTYPE: std:error/RangeError
  CLASS_PROTOTYPE: RangeError
  GLOBAL: std:heap/ALIGN_LOG2
  GLOBAL: std:heap/ALIGN_SIZE
  GLOBAL: std:heap/ALIGN_MASK
  GLOBAL: std:heap/HEAP_OFFSET
  CLASS_PROTOTYPE: std:heap/Heap
  CLASS_PROTOTYPE: Heap
  PROPERTY: std:heap/Heap.used
  PROPERTY: std:heap/Heap.free
  PROPERTY: std:heap/Heap.size
  FUNCTION_PROTOTYPE: std:heap/Heap.allocate
  FUNCTION_PROTOTYPE: std:heap/Heap.dispose
  FUNCTION_PROTOTYPE: std:heap/Heap.copy
  FUNCTION_PROTOTYPE: std:heap/Heap.fill
  FUNCTION_PROTOTYPE: std:heap/Heap.compare
  CLASS_PROTOTYPE: std:map/Map
  CLASS_PROTOTYPE: Map
  CLASS_PROTOTYPE: std:regexp/RegExp
  CLASS_PROTOTYPE: RegExp
  CLASS_PROTOTYPE: std:set/Set
  CLASS_PROTOTYPE: Set
  GLOBAL: std:string/EMPTY
  GLOBAL: std:string/cp
  GLOBAL: std:string/cn
  GLOBAL: std:string/cx
  GLOBAL: std:string/cX
  GLOBAL: std:string/c0
  GLOBAL: std:string/c9
  GLOBAL: std:string/ca
  GLOBAL: std:string/cz
  GLOBAL: std:string/cA
  GLOBAL: std:string/cZ
  CLASS_PROTOTYPE: std:string/String
  CLASS_PROTOTYPE: String
  FUNCTION_PROTOTYPE: std:string/isWhiteSpaceOrLineTerminator
  FUNCTION_PROTOTYPE: std:string/parseInt
  FUNCTION_PROTOTYPE: parseInt
  FUNCTION_PROTOTYPE: std:string/parseFloat
  FUNCTION_PROTOTYPE: parseFloat
  GLOBAL: std/heap/size
  GLOBAL: std/heap/ptr1
  GLOBAL: std/heap/ptr2
  GLOBAL: std/heap/i
[program.exports]
  CLASS_PROTOTYPE: std:array/Array
  CLASS_PROTOTYPE: std:array/CArray
  CLASS_PROTOTYPE: std:error/Error
  CLASS_PROTOTYPE: std:error/RangeError
  CLASS_PROTOTYPE: std:heap/Heap
  CLASS_PROTOTYPE: std:map/Map
  CLASS_PROTOTYPE: std:regexp/RegExp
  CLASS_PROTOTYPE: std:set/Set
  CLASS_PROTOTYPE: std:string/String
  FUNCTION_PROTOTYPE: std:string/parseInt
  FUNCTION_PROTOTYPE: std:string/parseFloat
;)
