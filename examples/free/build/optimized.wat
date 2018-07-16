(module
 (type $F (func (result f64)))
 (type $Iv (func (param i64)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iFFFi (func (param i32 f64 f64 f64) (result i32)))
 (type $v (func))
 (import "JSMath" "random" (func $~lib/math/JSMath.random (result f64)))
 (import "index" "logi" (func $assembly/index/logi (param i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "env" "memory" (memory $0 (shared 1 65534)))
 (global $~lib/allocator/tlsf/ROOT (mut i32) (i32.const 0))
 (global $assembly/index/seed (mut i64) (i64.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1 (mut i64) (i64.const 0))
 (global $assembly/index/arrRef (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 40))
 (table 1 1 anyfunc)
 (elem (i32.const 0) $assembly/index/run~anonymous|0)
 (data (i32.const 8) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (export "run" (func $assembly/index/run))
 (export "run2" (func $assembly/index/run2))
 (export "run3" (func $assembly/index/run3))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/math/NativeMath.seedRandom (; 3 ;) (type $Iv) (param $0 i64)
  (set_global $~lib/math/random_seeded
   (i32.const 1)
  )
  (set_global $~lib/math/random_state0
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
  (set_global $~lib/math/random_state1
   (i64.xor
    (tee_local $0
     (i64.mul
      (i64.xor
       (tee_local $0
        (i64.mul
         (i64.xor
          (tee_local $0
           (get_global $~lib/math/random_state0)
          )
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
 )
 (func $~lib/allocator/tlsf/Root#remove (; 4 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/allocator/tlsf/Root#insert (; 5 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/allocator/tlsf/free_memory (; 6 ;) (type $iv) (param $0 i32)
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
 (func $assembly/index/run~anonymous|0 (; 7 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (call $assembly/index/logi
   (get_local $0)
  )
  (call $~lib/allocator/tlsf/free_memory
   (get_local $0)
  )
 )
 (func $~lib/array/Array<Vec>#forEach (; 8 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $5
    (i32.load offset=4
     (get_local $0)
    )
   )
   (loop $repeat|0
    (if
     (tee_local $3
      (i32.lt_s
       (get_local $2)
       (get_local $5)
      )
     )
     (set_local $3
      (i32.lt_s
       (get_local $2)
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (br_if $break|0
     (i32.eqz
      (get_local $3)
     )
    )
    (set_global $~argc
     (i32.const 3)
    )
    (call_indirect (type $iiiv)
     (i32.load offset=8
      (i32.add
       (get_local $4)
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
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $~lib/allocator/tlsf/Root#addMemory (; 9 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/allocator/tlsf/Root#search (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/allocator/tlsf/Root#use (; 11 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/allocator/tlsf/allocate_memory (; 12 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/allocUnsafe (; 13 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (i32.store
   (tee_local $1
    (call $~lib/allocator/tlsf/allocate_memory
     (i32.shl
      (i32.const 1)
      (i32.sub
       (i32.const 32)
       (i32.clz
        (i32.add
         (get_local $0)
         (i32.const 7)
        )
       )
      )
     )
    )
   )
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/memory/set_memory (; 14 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
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
    (tee_local $3
     (i32.add
      (get_local $0)
      (get_local $2)
     )
    )
    (i32.const 2)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (get_local $3)
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
  (set_local $2
   (i32.sub
    (get_local $2)
    (tee_local $3
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
  (i32.store
   (tee_local $0
    (i32.add
     (get_local $0)
     (get_local $3)
    )
   )
   (tee_local $1
    (i32.mul
     (i32.and
      (get_local $1)
      (i32.const 255)
     )
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
       (get_local $2)
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
    (tee_local $3
     (i32.add
      (get_local $0)
      (get_local $2)
     )
    )
    (i32.const 12)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (get_local $3)
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
    (tee_local $3
     (i32.add
      (get_local $0)
      (get_local $2)
     )
    )
    (i32.const 28)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (get_local $3)
    (i32.const 24)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (get_local $3)
    (i32.const 20)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (get_local $3)
    (i32.const 16)
   )
   (get_local $1)
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (tee_local $3
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
    (get_local $3)
   )
  )
  (set_local $4
   (i64.or
    (tee_local $4
     (i64.extend_u/i32
      (get_local $1)
     )
    )
    (i64.shl
     (get_local $4)
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
      (get_local $4)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
      (get_local $4)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 16)
      )
      (get_local $4)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 24)
      )
      (get_local $4)
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
 (func $~lib/array/Array<Vec>#constructor (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 23)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  (set_local $2
   (call $~lib/internal/arraybuffer/allocUnsafe
    (tee_local $3
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
   )
  )
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (i32.store
     (tee_local $0
      (call $~lib/allocator/tlsf/allocate_memory
       (i32.const 8)
      )
     )
     (i32.const 0)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.const 0)
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
  (call $~lib/memory/set_memory
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i32.const 0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $assembly/index/Vec#constructor (; 16 ;) (type $iFFFi) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (f64.store
     (tee_local $0
      (call $~lib/allocator/tlsf/allocate_memory
       (i32.const 24)
      )
     )
     (get_local $1)
    )
    (f64.store offset=8
     (get_local $0)
     (get_local $2)
    )
    (f64.store offset=16
     (get_local $0)
     (get_local $3)
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/memory/copy_memory (; 17 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/move_memory (; 18 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/internal/arraybuffer/reallocUnsafe (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.gt_s
    (get_local $1)
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
   )
   (if
    (i32.le_s
     (get_local $1)
     (i32.sub
      (i32.shl
       (i32.const 1)
       (i32.sub
        (i32.const 32)
        (i32.clz
         (i32.add
          (get_local $2)
          (i32.const 7)
         )
        )
       )
      )
      (i32.const 8)
     )
    )
    (block
     (i32.store
      (get_local $0)
      (get_local $1)
     )
     (call $~lib/memory/set_memory
      (i32.add
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
       (get_local $2)
      )
      (i32.const 0)
      (i32.sub
       (get_local $1)
       (get_local $2)
      )
     )
    )
    (block
     (call $~lib/memory/move_memory
      (tee_local $4
       (i32.add
        (tee_local $3
         (call $~lib/internal/arraybuffer/allocUnsafe
          (get_local $1)
         )
        )
        (i32.const 8)
       )
      )
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
      (get_local $2)
     )
     (call $~lib/memory/set_memory
      (i32.add
       (get_local $4)
       (get_local $2)
      )
      (i32.const 0)
      (i32.sub
       (get_local $1)
       (get_local $2)
      )
     )
     (return
      (get_local $3)
     )
    )
   )
   (if
    (i32.lt_s
     (get_local $1)
     (get_local $2)
    )
    (i32.store
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<Vec>#__set (; 20 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (tee_local $3
       (i32.load
        (get_local $0)
       )
      )
     )
     (i32.const 2)
    )
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 8)
       (i32.const 86)
       (i32.const 41)
      )
      (unreachable)
     )
    )
    (i32.store
     (get_local $0)
     (tee_local $3
      (call $~lib/internal/arraybuffer/reallocUnsafe
       (get_local $3)
       (i32.shl
        (tee_local $4
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (i32.const 2)
       )
      )
     )
    )
    (i32.store offset=4
     (get_local $0)
     (get_local $4)
    )
   )
  )
  (i32.store offset=8
   (i32.add
    (get_local $3)
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
   (get_local $2)
  )
 )
 (func $assembly/index/run (; 21 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (get_global $assembly/index/arrRef)
   (block
    (call $~lib/array/Array<Vec>#forEach
     (get_global $assembly/index/arrRef)
     (i32.const 0)
    )
    (call $assembly/index/logi
     (tee_local $1
      (get_global $assembly/index/arrRef)
     )
    )
    (call $~lib/allocator/tlsf/free_memory
     (get_local $1)
    )
   )
  )
  (set_local $2
   (call $~lib/array/Array<Vec>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $1)
      (get_local $0)
     )
    )
    (call $~lib/array/Array<Vec>#__set
     (get_local $2)
     (get_local $1)
     (call $assembly/index/Vec#constructor
      (i32.const 0)
      (f64.const 1)
      (f64.const 1)
      (f64.const 1)
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
  (set_global $assembly/index/arrRef
   (get_local $2)
  )
  (call $~lib/allocator/tlsf/free_memory
   (get_local $2)
  )
  (get_local $2)
 )
 (func $assembly/index/run2 (; 22 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (get_local $0)
   (call $~lib/allocator/tlsf/free_memory
    (get_local $0)
   )
  )
  (call $assembly/index/Vec#constructor
   (i32.const 0)
   (f64.const 1)
   (f64.const 1)
   (f64.const 1)
  )
 )
 (func $assembly/index/run3 (; 23 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (get_local $0)
   (block
    (block $break|0
     (loop $repeat|0
      (br_if $break|0
       (i32.ge_s
        (get_local $1)
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
      (call $~lib/allocator/tlsf/free_memory
       (tee_local $1
        (if (result i32)
         (i32.lt_u
          (tee_local $2
           (get_local $1)
          )
          (i32.shr_u
           (i32.load
            (tee_local $1
             (i32.load
              (get_local $0)
             )
            )
           )
           (i32.const 2)
          )
         )
         (i32.load offset=8
          (i32.add
           (get_local $1)
           (i32.shl
            (get_local $2)
            (i32.const 2)
           )
          )
         )
         (unreachable)
        )
       )
      )
      (set_local $1
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
    )
    (call $~lib/allocator/tlsf/free_memory
     (i32.load
      (tee_local $1
       (get_local $0)
      )
     )
    )
    (call $~lib/allocator/tlsf/free_memory
     (get_local $0)
    )
   )
  )
  (set_local $0
   (call $~lib/array/Array<Vec>#constructor
    (i32.const 0)
    (i32.const 1)
   )
  )
  (set_local $1
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 1)
    (f64.const 1)
    (f64.const 1)
   )
  )
  (i32.store offset=8
   (i32.load
    (get_local $0)
   )
   (get_local $1)
  )
  (get_local $0)
 )
 (func $start (; 24 ;) (type $v)
  (set_global $assembly/index/seed
   (i64.reinterpret/f64
    (call $~lib/math/JSMath.random)
   )
  )
  (block
   (call $~lib/math/NativeMath.seedRandom
    (get_global $assembly/index/seed)
   )
  )
 )
)
