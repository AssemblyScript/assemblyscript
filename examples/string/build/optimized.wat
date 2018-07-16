(module
 (type $i (func (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iv (func (param i32)))
 (import "env" "memory" (memory $0 (shared 1 65534)))
 (global $~lib/allocator/tlsf/ROOT (mut i32) (i32.const 0))
 (global $assembly/index/s1 (mut i32) (i32.const 8))
 (global $assembly/index/s2 (mut i32) (i32.const 24))
 (global $HEAP_BASE i32 (i32.const 56))
 (data (i32.const 8) "\05\00\00\00H\00e\00l\00l\00o")
 (data (i32.const 24) "\06\00\00\00 \00W\00o\00r\00l\00d")
 (data (i32.const 40) "\04\00\00\00n\00u\00l\00l")
 (export "getString" (func $assembly/index/getString))
 (export "free" (func $assembly/index/free))
 (export "memory" (memory $0))
 (func $~lib/allocator/tlsf/Root#remove (; 0 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (if (result i32)
    (i32.lt_u
     (tee_local $2
      (i32.and
       (i32.load
        (get_local $1)
       )
       (i32.const -4)
      )
     )
     (i32.const 256)
    )
    (block (result i32)
     (set_local $4
      (i32.div_u
       (get_local $2)
       (i32.const 8)
      )
     )
     (i32.const 0)
    )
    (block (result i32)
     (set_local $4
      (i32.xor
       (i32.shr_u
        (get_local $2)
        (i32.sub
         (tee_local $3
          (i32.sub
           (i32.const 31)
           (i32.clz
            (get_local $2)
           )
          )
         )
         (i32.const 5)
        )
       )
       (i32.const 32)
      )
     )
     (i32.sub
      (get_local $3)
      (i32.const 7)
     )
    )
   )
  )
  (set_local $2
   (i32.load offset=8
    (get_local $1)
   )
  )
  (if
   (tee_local $5
    (i32.load offset=4
     (get_local $1)
    )
   )
   (i32.store offset=8
    (get_local $5)
    (get_local $2)
   )
  )
  (if
   (get_local $2)
   (i32.store offset=4
    (get_local $2)
    (get_local $5)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.load offset=96
     (i32.add
      (get_local $0)
      (i32.shl
       (i32.add
        (i32.shl
         (get_local $3)
         (i32.const 5)
        )
        (get_local $4)
       )
       (i32.const 2)
      )
     )
    )
   )
   (block
    (i32.store offset=96
     (i32.add
      (get_local $0)
      (i32.shl
       (i32.add
        (i32.shl
         (get_local $3)
         (i32.const 5)
        )
        (get_local $4)
       )
       (i32.const 2)
      )
     )
     (get_local $2)
    )
    (if
     (i32.eqz
      (get_local $2)
     )
     (block
      (i32.store offset=4
       (i32.add
        (get_local $0)
        (i32.shl
         (get_local $3)
         (i32.const 2)
        )
       )
       (tee_local $1
        (i32.and
         (i32.load offset=4
          (i32.add
           (get_local $0)
           (i32.shl
            (get_local $3)
            (i32.const 2)
           )
          )
         )
         (i32.xor
          (i32.shl
           (i32.const 1)
           (get_local $4)
          )
          (i32.const -1)
         )
        )
       )
      )
      (if
       (i32.eqz
        (get_local $1)
       )
       (i32.store
        (get_local $0)
        (i32.and
         (i32.load
          (get_local $0)
         )
         (i32.xor
          (i32.shl
           (i32.const 1)
           (get_local $3)
          )
          (i32.const -1)
         )
        )
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/allocator/tlsf/Root#insert (; 1 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load
    (get_local $1)
   )
  )
  (if
   (i32.and
    (tee_local $5
     (i32.load
      (tee_local $4
       (i32.add
        (i32.add
         (get_local $1)
         (i32.const 8)
        )
        (i32.and
         (i32.load
          (get_local $1)
         )
         (i32.const -4)
        )
       )
      )
     )
    )
    (i32.const 1)
   )
   (block
    (call $~lib/allocator/tlsf/Root#remove
     (get_local $0)
     (get_local $4)
    )
    (i32.store
     (get_local $1)
     (tee_local $2
      (i32.add
       (get_local $2)
       (i32.add
        (i32.and
         (get_local $5)
         (i32.const -4)
        )
        (i32.const 8)
       )
      )
     )
    )
    (set_local $5
     (i32.load
      (tee_local $4
       (i32.add
        (i32.add
         (get_local $1)
         (i32.const 8)
        )
        (i32.and
         (i32.load
          (get_local $1)
         )
         (i32.const -4)
        )
       )
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
    (set_local $3
     (i32.load
      (tee_local $1
       (i32.load
        (i32.sub
         (get_local $1)
         (i32.const 4)
        )
       )
      )
     )
    )
    (call $~lib/allocator/tlsf/Root#remove
     (get_local $0)
     (get_local $1)
    )
    (i32.store
     (get_local $1)
     (tee_local $3
      (i32.add
       (get_local $3)
       (i32.add
        (i32.and
         (get_local $2)
         (i32.const -4)
        )
        (i32.const 8)
       )
      )
     )
    )
    (set_local $2
     (get_local $3)
    )
   )
  )
  (i32.store
   (get_local $4)
   (i32.or
    (get_local $5)
    (i32.const 2)
   )
  )
  (i32.store
   (i32.sub
    (get_local $4)
    (i32.const 4)
   )
   (get_local $1)
  )
  (set_local $4
   (i32.load offset=96
    (i32.add
     (get_local $0)
     (i32.shl
      (i32.add
       (i32.shl
        (tee_local $2
         (if (result i32)
          (i32.lt_u
           (tee_local $3
            (i32.and
             (get_local $2)
             (i32.const -4)
            )
           )
           (i32.const 256)
          )
          (block (result i32)
           (set_local $3
            (i32.div_u
             (get_local $3)
             (i32.const 8)
            )
           )
           (i32.const 0)
          )
          (block (result i32)
           (set_local $3
            (i32.xor
             (i32.shr_u
              (get_local $3)
              (i32.sub
               (tee_local $2
                (i32.sub
                 (i32.const 31)
                 (i32.clz
                  (get_local $3)
                 )
                )
               )
               (i32.const 5)
              )
             )
             (i32.const 32)
            )
           )
           (i32.sub
            (get_local $2)
            (i32.const 7)
           )
          )
         )
        )
        (i32.const 5)
       )
       (get_local $3)
      )
      (i32.const 2)
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $1)
   (i32.const 0)
  )
  (i32.store offset=8
   (get_local $1)
   (get_local $4)
  )
  (if
   (get_local $4)
   (i32.store offset=4
    (get_local $4)
    (get_local $1)
   )
  )
  (i32.store offset=96
   (i32.add
    (get_local $0)
    (i32.shl
     (i32.add
      (i32.shl
       (get_local $2)
       (i32.const 5)
      )
      (get_local $3)
     )
     (i32.const 2)
    )
   )
   (get_local $1)
  )
  (i32.store
   (get_local $0)
   (i32.or
    (i32.load
     (get_local $0)
    )
    (i32.shl
     (i32.const 1)
     (get_local $2)
    )
   )
  )
  (i32.store offset=4
   (i32.add
    (get_local $0)
    (i32.shl
     (get_local $2)
     (i32.const 2)
    )
   )
   (i32.or
    (i32.load offset=4
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $2)
       (i32.const 2)
      )
     )
    )
    (i32.shl
     (i32.const 1)
     (get_local $3)
    )
   )
  )
 )
 (func $~lib/allocator/tlsf/Root#addMemory (; 2 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (tee_local $3
    (i32.load
     (i32.const 2912)
    )
   )
   (if
    (i32.eq
     (i32.sub
      (get_local $1)
      (i32.const 8)
     )
     (get_local $3)
    )
    (block
     (set_local $1
      (i32.sub
       (get_local $1)
       (i32.const 8)
      )
     )
     (set_local $4
      (i32.load
       (get_local $3)
      )
     )
    )
   )
  )
  (if
   (i32.lt_u
    (tee_local $2
     (i32.sub
      (get_local $2)
      (get_local $1)
     )
    )
    (i32.const 32)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store
   (get_local $1)
   (i32.or
    (i32.or
     (i32.sub
      (get_local $2)
      (i32.const 16)
     )
     (i32.const 1)
    )
    (i32.and
     (get_local $4)
     (i32.const 2)
    )
   )
  )
  (i32.store offset=4
   (get_local $1)
   (i32.const 0)
  )
  (i32.store offset=8
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $2
    (i32.sub
     (i32.add
      (get_local $1)
      (get_local $2)
     )
     (i32.const 8)
    )
   )
   (i32.const 2)
  )
  (i32.store
   (i32.const 2912)
   (get_local $2)
  )
  (call $~lib/allocator/tlsf/Root#insert
   (get_local $0)
   (get_local $1)
  )
  (i32.const 1)
 )
 (func $~lib/allocator/tlsf/Root#search (; 3 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $1
   (if (result i32)
    (i32.lt_u
     (get_local $1)
     (i32.const 256)
    )
    (i32.div_u
     (get_local $1)
     (i32.const 8)
    )
    (block (result i32)
     (set_local $1
      (i32.xor
       (i32.shr_u
        (get_local $1)
        (i32.sub
         (tee_local $2
          (i32.sub
           (i32.const 31)
           (i32.clz
            (get_local $1)
           )
          )
         )
         (i32.const 5)
        )
       )
       (i32.const 32)
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 7)
      )
     )
     (if (result i32)
      (i32.lt_u
       (get_local $1)
       (i32.const 31)
      )
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
      (block (result i32)
       (set_local $2
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
       (i32.const 0)
      )
     )
    )
   )
  )
  (tee_local $0
   (if (result i32)
    (tee_local $1
     (i32.and
      (i32.load offset=4
       (i32.add
        (get_local $0)
        (i32.shl
         (get_local $2)
         (i32.const 2)
        )
       )
      )
      (i32.shl
       (i32.const -1)
       (get_local $1)
      )
     )
    )
    (i32.load offset=96
     (i32.add
      (get_local $0)
      (i32.shl
       (i32.add
        (i32.shl
         (get_local $2)
         (i32.const 5)
        )
        (i32.ctz
         (get_local $1)
        )
       )
       (i32.const 2)
      )
     )
    )
    (if (result i32)
     (tee_local $1
      (i32.and
       (i32.load
        (get_local $0)
       )
       (i32.shl
        (i32.const -1)
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
      )
     )
     (block (result i32)
      (set_local $1
       (i32.load offset=4
        (i32.add
         (get_local $0)
         (i32.shl
          (tee_local $2
           (i32.ctz
            (get_local $1)
           )
          )
          (i32.const 2)
         )
        )
       )
      )
      (i32.load offset=96
       (i32.add
        (get_local $0)
        (i32.shl
         (i32.add
          (i32.shl
           (get_local $2)
           (i32.const 5)
          )
          (i32.ctz
           (get_local $1)
          )
         )
         (i32.const 2)
        )
       )
      )
     )
     (i32.const 0)
    )
   )
  )
 )
 (func $~lib/allocator/tlsf/Root#use (; 4 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $1)
   )
  )
  (call $~lib/allocator/tlsf/Root#remove
   (get_local $0)
   (get_local $1)
  )
  (if
   (i32.ge_u
    (tee_local $4
     (i32.sub
      (i32.and
       (get_local $3)
       (i32.const -4)
      )
      (get_local $2)
     )
    )
    (i32.const 24)
   )
   (block
    (i32.store
     (get_local $1)
     (i32.or
      (get_local $2)
      (i32.and
       (get_local $3)
       (i32.const 2)
      )
     )
    )
    (i32.store
     (tee_local $2
      (i32.add
       (i32.add
        (get_local $1)
        (i32.const 8)
       )
       (get_local $2)
      )
     )
     (i32.or
      (i32.sub
       (get_local $4)
       (i32.const 8)
      )
      (i32.const 1)
     )
    )
    (call $~lib/allocator/tlsf/Root#insert
     (get_local $0)
     (get_local $2)
    )
   )
   (block
    (i32.store
     (get_local $1)
     (i32.and
      (get_local $3)
      (i32.const -2)
     )
    )
    (i32.store
     (tee_local $2
      (i32.add
       (i32.add
        (get_local $1)
        (i32.const 8)
       )
       (i32.and
        (i32.load
         (get_local $1)
        )
        (i32.const -4)
       )
      )
     )
     (i32.and
      (i32.load
       (get_local $2)
      )
      (i32.const -3)
     )
    )
   )
  )
  (i32.add
   (get_local $1)
   (i32.const 8)
  )
 )
 (func $~lib/allocator/tlsf/allocate_memory (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (tee_local $2
     (get_global $~lib/allocator/tlsf/ROOT)
    )
   )
   (block
    (if
     (tee_local $1
      (i32.gt_s
       (tee_local $4
        (i32.shr_u
         (i32.and
          (i32.add
           (tee_local $3
            (i32.and
             (i32.add
              (get_global $HEAP_BASE)
              (i32.const 7)
             )
             (i32.const -8)
            )
           )
           (i32.const 68451)
          )
          (i32.const -65536)
         )
         (i32.const 16)
        )
       )
       (tee_local $5
        (current_memory)
       )
      )
     )
     (set_local $1
      (i32.lt_s
       (grow_memory
        (i32.sub
         (get_local $4)
         (get_local $5)
        )
       )
       (i32.const 0)
      )
     )
    )
    (if
     (get_local $1)
     (unreachable)
    )
    (set_global $~lib/allocator/tlsf/ROOT
     (tee_local $2
      (get_local $3)
     )
    )
    (i32.store
     (i32.const 2912)
     (i32.const 0)
    )
    (i32.store
     (get_local $2)
     (i32.const 0)
    )
    (block $break|0
     (set_local $1
      (i32.const 0)
     )
     (loop $repeat|0
      (br_if $break|0
       (i32.ge_u
        (get_local $1)
        (i32.const 22)
       )
      )
      (i32.store offset=4
       (i32.add
        (get_local $2)
        (i32.shl
         (get_local $1)
         (i32.const 2)
        )
       )
       (i32.const 0)
      )
      (block $break|1
       (set_local $3
        (i32.const 0)
       )
       (loop $repeat|1
        (br_if $break|1
         (i32.ge_u
          (get_local $3)
          (i32.const 32)
         )
        )
        (i32.store offset=96
         (i32.add
          (get_local $2)
          (i32.shl
           (i32.add
            (i32.shl
             (get_local $1)
             (i32.const 5)
            )
            (get_local $3)
           )
           (i32.const 2)
          )
         )
         (i32.const 0)
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 1)
         )
        )
        (br $repeat|1)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
    )
    (drop
     (call $~lib/allocator/tlsf/Root#addMemory
      (get_local $2)
      (i32.and
       (i32.add
        (get_local $2)
        (i32.const 2923)
       )
       (i32.const -8)
      )
      (i32.shl
       (current_memory)
       (i32.const 16)
      )
     )
    )
   )
  )
  (set_local $1
   (i32.const 0)
  )
  (if
   (get_local $0)
   (block
    (if
     (i32.gt_u
      (get_local $0)
      (i32.const 1073741824)
     )
     (unreachable)
    )
    (if
     (i32.eqz
      (tee_local $4
       (call $~lib/allocator/tlsf/Root#search
        (get_local $2)
        (tee_local $0
         (select
          (tee_local $4
           (i32.and
            (i32.add
             (get_local $0)
             (i32.const 7)
            )
            (i32.const -8)
           )
          )
          (i32.const 16)
          (i32.gt_u
           (get_local $4)
           (i32.const 16)
          )
         )
        )
       )
      )
     )
     (block
      (if
       (i32.lt_s
        (grow_memory
         (select
          (tee_local $5
           (current_memory)
          )
          (tee_local $3
           (i32.shr_u
            (i32.and
             (i32.add
              (get_local $0)
              (i32.const 65535)
             )
             (i32.const -65536)
            )
            (i32.const 16)
           )
          )
          (i32.gt_s
           (get_local $5)
           (get_local $3)
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
      (drop
       (call $~lib/allocator/tlsf/Root#addMemory
        (get_local $2)
        (i32.shl
         (get_local $5)
         (i32.const 16)
        )
        (i32.shl
         (current_memory)
         (i32.const 16)
        )
       )
      )
      (set_local $4
       (call $~lib/allocator/tlsf/Root#search
        (get_local $2)
        (get_local $0)
       )
      )
     )
    )
    (set_local $1
     (call $~lib/allocator/tlsf/Root#use
      (get_local $2)
      (get_local $4)
      (get_local $0)
     )
    )
   )
  )
  (get_local $1)
 )
 (func $~lib/memory/copy_memory (; 6 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (loop $continue|0
   (if
    (tee_local $3
     (if (result i32)
      (get_local $2)
      (i32.and
       (get_local $1)
       (i32.const 3)
      )
      (get_local $2)
     )
    )
    (block
     (set_local $0
      (i32.add
       (tee_local $4
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (tee_local $3
        (get_local $1)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $4)
      (i32.load8_u
       (get_local $3)
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
       (get_local $1)
      )
      (i32.store8
       (get_local $0)
       (i32.load8_u
        (get_local $1)
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
      (if
       (i32.ne
        (tee_local $3
         (i32.and
          (get_local $0)
          (i32.const 3)
         )
        )
        (i32.const 1)
       )
       (block
        (br_if $case1|2
         (i32.eq
          (get_local $3)
          (i32.const 2)
         )
        )
        (br_if $case2|2
         (i32.eq
          (get_local $3)
          (i32.const 3)
         )
        )
        (br $break|2)
       )
      )
      (set_local $5
       (i32.load
        (get_local $1)
       )
      )
      (i32.store8
       (get_local $0)
       (i32.load8_u
        (tee_local $3
         (get_local $1)
        )
       )
      )
      (set_local $0
       (tee_local $1
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
      )
      (i32.store8
       (get_local $1)
       (i32.load8_u
        (tee_local $1
         (i32.add
          (get_local $3)
          (i32.const 1)
         )
        )
       )
      )
      (set_local $0
       (i32.add
        (tee_local $4
         (i32.add
          (get_local $0)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
      (set_local $1
       (i32.add
        (tee_local $3
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
      (i32.store8
       (get_local $4)
       (i32.load8_u
        (get_local $3)
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
            (get_local $5)
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
            (tee_local $5
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
            (get_local $5)
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
            (tee_local $5
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
     (set_local $5
      (i32.load
       (get_local $1)
      )
     )
     (i32.store8
      (get_local $0)
      (i32.load8_u
       (get_local $1)
      )
     )
     (set_local $0
      (i32.add
       (tee_local $4
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (tee_local $3
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $4)
      (i32.load8_u
       (get_local $3)
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
           (get_local $5)
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
           (tee_local $5
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
           (get_local $5)
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
           (tee_local $5
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
    (set_local $5
     (i32.load
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (get_local $1)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
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
          (get_local $5)
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
          (tee_local $5
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
          (get_local $5)
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
          (tee_local $5
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
    (i32.store8
     (get_local $0)
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
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
     (get_local $0)
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
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
     (get_local $0)
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
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
     (get_local $0)
     (i32.load8_u
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
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
     (get_local $1)
    )
    (i32.store8
     (get_local $0)
     (i32.load8_u
      (get_local $1)
     )
    )
   )
  )
 )
 (func $~lib/memory/move_memory (; 7 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return)
  )
  (if
   (i32.eqz
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (get_local $0)
     )
    )
   )
   (set_local $3
    (i32.le_u
     (i32.add
      (get_local $0)
      (get_local $2)
     )
     (get_local $1)
    )
   )
  )
  (if
   (get_local $3)
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
            (tee_local $4
             (get_local $0)
            )
           )
           (i32.const 1)
          )
         )
         (set_local $1
          (i32.add
           (tee_local $3
            (get_local $1)
           )
           (i32.const 1)
          )
         )
         (i32.store8
          (get_local $4)
          (i32.load8_u
           (get_local $3)
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
          (tee_local $4
           (get_local $0)
          )
         )
         (i32.const 1)
        )
       )
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.store8
        (get_local $4)
        (i32.load8_u
         (get_local $3)
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
 (func $~lib/string/String#concat (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (set_local $1
    (i32.const 40)
   )
  )
  (if
   (i32.eqz
    (tee_local $2
     (i32.add
      (tee_local $4
       (i32.load
        (get_local $0)
       )
      )
      (tee_local $5
       (i32.load
        (get_local $1)
       )
      )
     )
    )
   )
   (return
    (i32.const 52)
   )
  )
  (i32.store
   (tee_local $3
    (call $~lib/allocator/tlsf/allocate_memory
     (i32.add
      (i32.shl
       (get_local $2)
       (i32.const 1)
      )
      (i32.const 4)
     )
    )
   )
   (get_local $2)
  )
  (call $~lib/memory/move_memory
   (tee_local $3
    (i32.add
     (tee_local $2
      (get_local $3)
     )
     (i32.const 4)
    )
   )
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (tee_local $0
    (i32.shl
     (get_local $4)
     (i32.const 1)
    )
   )
  )
  (call $~lib/memory/move_memory
   (i32.add
    (get_local $3)
    (get_local $0)
   )
   (i32.add
    (get_local $1)
    (i32.const 4)
   )
   (i32.shl
    (get_local $5)
    (i32.const 1)
   )
  )
  (get_local $2)
 )
 (func $assembly/index/getString (; 9 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (set_local $1
   (get_global $assembly/index/s2)
  )
  (if
   (i32.eqz
    (tee_local $0
     (get_global $assembly/index/s1)
    )
   )
   (set_local $0
    (i32.const 40)
   )
  )
  (call $~lib/string/String#concat
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/allocator/tlsf/free_memory (; 10 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (get_local $0)
   (if
    (tee_local $1
     (get_global $~lib/allocator/tlsf/ROOT)
    )
    (block
     (set_local $2
      (i32.load
       (tee_local $0
        (i32.sub
         (get_local $0)
         (i32.const 8)
        )
       )
      )
     )
     (i32.store
      (get_local $0)
      (i32.or
       (get_local $2)
       (i32.const 1)
      )
     )
     (call $~lib/allocator/tlsf/Root#insert
      (get_local $1)
      (get_local $0)
     )
    )
   )
  )
 )
 (func $assembly/index/free (; 11 ;) (type $iv) (param $0 i32)
  (call $~lib/allocator/tlsf/free_memory
   (get_local $0)
  )
 )
)
