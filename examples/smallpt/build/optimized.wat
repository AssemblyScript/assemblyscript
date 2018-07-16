(module
 (type $F (func (result f64)))
 (type $Iv (func (param i64)))
 (type $iFFFi (func (param i32 f64 f64 f64) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iFiiiii (func (param i32 f64 i32 i32 i32 i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iFi (func (param i32 f64) (result i32)))
 (type $iFii (func (param i32 f64 i32) (result i32)))
 (type $iiF (func (param i32 i32) (result f64)))
 (type $i (func (result i32)))
 (type $v (func))
 (import "JSMath" "random" (func $~lib/math/JSMath.random (result f64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "env" "memory" (memory $0 (shared 1 65534)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $assembly/src/smallpt/seed (mut i64) (i64.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1 (mut i64) (i64.const 0))
 (global $assembly/src/smallpt/spheres (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 68))
 (data (i32.const 8) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 40) "\0c\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s")
 (export "render" (func $assembly/index/render))
 (export "newVec" (func $assembly/index/newVec))
 (export "newVecArray" (func $assembly/index/newVecArray))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/math/NativeMath.seedRandom (; 2 ;) (type $Iv) (param $0 i64)
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
 (func $~lib/allocator/arena/allocate_memory (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
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
     (i32.gt_u
      (tee_local $0
       (i32.and
        (i32.add
         (i32.add
          (tee_local $1
           (get_global $~lib/allocator/arena/offset)
          )
          (get_local $0)
         )
         (i32.const 7)
        )
        (i32.const -8)
       )
      )
      (i32.shl
       (tee_local $2
        (current_memory)
       )
       (i32.const 16)
      )
     )
     (if
      (i32.lt_s
       (grow_memory
        (select
         (get_local $2)
         (tee_local $3
          (i32.shr_u
           (i32.and
            (i32.add
             (i32.sub
              (get_local $0)
              (get_local $1)
             )
             (i32.const 65535)
            )
            (i32.const -65536)
           )
           (i32.const 16)
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
    (set_global $~lib/allocator/arena/offset
     (get_local $0)
    )
    (return
     (get_local $1)
    )
   )
  )
  (i32.const 0)
 )
 (func $assembly/src/smallpt/Vec#constructor (; 4 ;) (type $iFFFi) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (f64.store
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
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
 (func $assembly/src/smallpt/Sphere#constructor (; 5 ;) (type $iFiiiii) (param $0 i32) (param $1 f64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (f64.store
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 24)
      )
     )
     (get_local $1)
    )
    (i32.store offset=8
     (get_local $0)
     (get_local $2)
    )
    (i32.store offset=12
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=16
     (get_local $0)
     (get_local $4)
    )
    (i32.store offset=20
     (get_local $0)
     (get_local $5)
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/memory/set_memory (; 6 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<Sphere>#constructor (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (i32.store
   (tee_local $3
    (call $~lib/allocator/arena/allocate_memory
     (i32.shl
      (i32.const 1)
      (i32.sub
       (i32.const 32)
       (i32.clz
        (i32.add
         (tee_local $2
          (i32.shl
           (get_local $1)
           (i32.const 2)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
    )
   )
   (get_local $2)
  )
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (i32.store
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
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
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (call $~lib/memory/set_memory
   (i32.add
    (get_local $3)
    (i32.const 8)
   )
   (i32.const 0)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $assembly/src/smallpt/Vec#norm (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 f64)
  (call $assembly/src/smallpt/Vec#constructor
   (i32.const 0)
   (f64.div
    (f64.load
     (get_local $0)
    )
    (tee_local $1
     (f64.sqrt
      (f64.add
       (f64.add
        (f64.mul
         (f64.load
          (get_local $0)
         )
         (f64.load
          (get_local $0)
         )
        )
        (f64.mul
         (f64.load offset=8
          (get_local $0)
         )
         (f64.load offset=8
          (get_local $0)
         )
        )
       )
       (f64.mul
        (f64.load offset=16
         (get_local $0)
        )
        (f64.load offset=16
         (get_local $0)
        )
       )
      )
     )
    )
   )
   (f64.div
    (f64.load offset=8
     (get_local $0)
    )
    (get_local $1)
   )
   (f64.div
    (f64.load offset=16
     (get_local $0)
    )
    (get_local $1)
   )
  )
 )
 (func $assembly/src/smallpt/Ray#constructor (; 9 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (i32.store
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 8)
      )
     )
     (get_local $1)
    )
    (i32.store offset=4
     (get_local $0)
     (get_local $2)
    )
   )
  )
  (get_local $0)
 )
 (func $assembly/src/smallpt/Vec#mod (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $assembly/src/smallpt/Vec#constructor
   (i32.const 0)
   (f64.sub
    (f64.mul
     (f64.load offset=8
      (get_local $0)
     )
     (f64.load offset=16
      (get_local $1)
     )
    )
    (f64.mul
     (f64.load offset=16
      (get_local $0)
     )
     (f64.load offset=8
      (get_local $1)
     )
    )
   )
   (f64.sub
    (f64.mul
     (f64.load offset=16
      (get_local $0)
     )
     (f64.load
      (get_local $1)
     )
    )
    (f64.mul
     (f64.load
      (get_local $0)
     )
     (f64.load offset=16
      (get_local $1)
     )
    )
   )
   (f64.sub
    (f64.mul
     (f64.load
      (get_local $0)
     )
     (f64.load offset=8
      (get_local $1)
     )
    )
    (f64.mul
     (f64.load offset=8
      (get_local $0)
     )
     (f64.load
      (get_local $1)
     )
    )
   )
  )
 )
 (func $assembly/src/smallpt/Vec#multScalar (; 11 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (call $assembly/src/smallpt/Vec#constructor
   (i32.const 0)
   (f64.mul
    (f64.load
     (get_local $0)
    )
    (get_local $1)
   )
   (f64.mul
    (f64.load offset=8
     (get_local $0)
    )
    (get_local $1)
   )
   (f64.mul
    (f64.load offset=16
     (get_local $0)
    )
    (get_local $1)
   )
  )
 )
 (func $~lib/math/NativeMath.random (; 12 ;) (type $F) (result f64)
  (local $0 i64)
  (local $1 i64)
  (if
   (i32.eqz
    (get_global $~lib/math/random_seeded)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 1007)
     (i32.const 24)
    )
    (unreachable)
   )
  )
  (set_local $0
   (get_global $~lib/math/random_state0)
  )
  (set_global $~lib/math/random_state0
   (tee_local $1
    (get_global $~lib/math/random_state1)
   )
  )
  (set_global $~lib/math/random_state1
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
 (func $assembly/src/smallpt/Vec#add (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $assembly/src/smallpt/Vec#constructor
   (i32.const 0)
   (f64.add
    (f64.load
     (get_local $0)
    )
    (f64.load
     (get_local $1)
    )
   )
   (f64.add
    (f64.load offset=8
     (get_local $0)
    )
    (f64.load offset=8
     (get_local $1)
    )
   )
   (f64.add
    (f64.load offset=16
     (get_local $0)
    )
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
 )
 (func $assembly/src/smallpt/Vec#sub (; 14 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $assembly/src/smallpt/Vec#constructor
   (i32.const 0)
   (f64.sub
    (f64.load
     (get_local $0)
    )
    (f64.load
     (get_local $1)
    )
   )
   (f64.sub
    (f64.load offset=8
     (get_local $0)
    )
    (f64.load offset=8
     (get_local $1)
    )
   )
   (f64.sub
    (f64.load offset=16
     (get_local $0)
    )
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
 )
 (func $assembly/src/smallpt/Sphere#intersect (; 15 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (set_local $3
   (if (result f64)
    (f64.lt
     (tee_local $3
      (f64.add
       (f64.sub
        (f64.mul
         (tee_local $4
          (f64.add
           (f64.add
            (f64.mul
             (f64.load
              (tee_local $2
               (call $assembly/src/smallpt/Vec#sub
                (i32.load offset=8
                 (get_local $0)
                )
                (i32.load
                 (get_local $1)
                )
               )
              )
             )
             (f64.load
              (tee_local $1
               (i32.load offset=4
                (get_local $1)
               )
              )
             )
            )
            (f64.mul
             (f64.load offset=8
              (get_local $2)
             )
             (f64.load offset=8
              (get_local $1)
             )
            )
           )
           (f64.mul
            (f64.load offset=16
             (get_local $2)
            )
            (f64.load offset=16
             (get_local $1)
            )
           )
          )
         )
         (get_local $4)
        )
        (f64.add
         (f64.add
          (f64.mul
           (f64.load
            (get_local $2)
           )
           (f64.load
            (get_local $2)
           )
          )
          (f64.mul
           (f64.load offset=8
            (get_local $2)
           )
           (f64.load offset=8
            (get_local $2)
           )
          )
         )
         (f64.mul
          (f64.load offset=16
           (get_local $2)
          )
          (f64.load offset=16
           (get_local $2)
          )
         )
        )
       )
       (f64.mul
        (f64.load
         (get_local $0)
        )
        (f64.load
         (get_local $0)
        )
       )
      )
     )
     (f64.const 0)
    )
    (return
     (f64.const 0)
    )
    (f64.sqrt
     (get_local $3)
    )
   )
  )
  (if
   (i32.eqz
    (f64.gt
     (tee_local $5
      (f64.sub
       (get_local $4)
       (get_local $3)
      )
     )
     (f64.const 0.0001)
    )
   )
   (if
    (i32.eqz
     (f64.gt
      (tee_local $5
       (f64.add
        (get_local $4)
        (get_local $3)
       )
      )
      (f64.const 0.0001)
     )
    )
    (set_local $5
     (f64.const 0)
    )
   )
  )
  (get_local $5)
 )
 (func $assembly/src/smallpt/intersect (; 16 ;) (type $iFii) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (set_local $1
   (f64.const 1e20)
  )
  (block $break|0
   (set_local $2
    (i32.load offset=4
     (get_global $assembly/src/smallpt/spheres)
    )
   )
   (loop $repeat|0
    (set_local $2
     (i32.sub
      (tee_local $3
       (get_local $2)
      )
      (i32.const 1)
     )
    )
    (br_if $break|0
     (i32.eqz
      (get_local $3)
     )
    )
    (set_local $5
     (tee_local $4
      (call $assembly/src/smallpt/Sphere#intersect
       (tee_local $3
        (if (result i32)
         (i32.lt_u
          (get_local $2)
          (i32.shr_u
           (i32.load
            (tee_local $3
             (i32.load
              (get_global $assembly/src/smallpt/spheres)
             )
            )
           )
           (i32.const 2)
          )
         )
         (i32.load offset=8
          (i32.add
           (get_local $3)
           (i32.shl
            (get_local $2)
            (i32.const 2)
           )
          )
         )
         (unreachable)
        )
       )
       (get_local $0)
      )
     )
    )
    (if
     (f64.ne
      (get_local $4)
      (f64.const 0)
     )
     (set_local $5
      (f64.convert_u/i32
       (f64.lt
        (get_local $4)
        (get_local $1)
       )
      )
     )
    )
    (if
     (f64.ne
      (get_local $5)
      (f64.const 0)
     )
     (set_local $1
      (get_local $4)
     )
    )
    (br $repeat|0)
   )
  )
  (f64.lt
   (get_local $1)
   (f64.const inf)
  )
 )
 (func $assembly/src/smallpt/Vec#mod_in (; 17 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (f64.store
   (get_local $0)
   (f64.sub
    (f64.mul
     (f64.load offset=8
      (get_local $0)
     )
     (f64.load offset=16
      (get_local $1)
     )
    )
    (f64.mul
     (f64.load offset=16
      (get_local $0)
     )
     (f64.load offset=8
      (get_local $1)
     )
    )
   )
  )
  (f64.store offset=8
   (get_local $0)
   (f64.sub
    (f64.mul
     (f64.load offset=16
      (get_local $0)
     )
     (f64.load
      (get_local $1)
     )
    )
    (f64.mul
     (f64.load
      (get_local $0)
     )
     (f64.load offset=16
      (get_local $1)
     )
    )
   )
  )
  (f64.store offset=16
   (get_local $0)
   (f64.sub
    (f64.mul
     (f64.load
      (get_local $0)
     )
     (f64.load offset=8
      (get_local $1)
     )
    )
    (f64.mul
     (f64.load offset=8
      (get_local $0)
     )
     (f64.load
      (get_local $1)
     )
    )
   )
  )
  (get_local $0)
 )
 (func $assembly/src/smallpt/Vec#norm_in (; 18 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 f64)
  (f64.store
   (get_local $0)
   (f64.div
    (f64.load
     (get_local $0)
    )
    (tee_local $1
     (f64.sqrt
      (f64.add
       (f64.add
        (f64.mul
         (f64.load
          (get_local $0)
         )
         (f64.load
          (get_local $0)
         )
        )
        (f64.mul
         (f64.load offset=8
          (get_local $0)
         )
         (f64.load offset=8
          (get_local $0)
         )
        )
       )
       (f64.mul
        (f64.load offset=16
         (get_local $0)
        )
        (f64.load offset=16
         (get_local $0)
        )
       )
      )
     )
    )
   )
  )
  (f64.store offset=8
   (get_local $0)
   (f64.div
    (f64.load offset=8
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (f64.store offset=16
   (get_local $0)
   (f64.div
    (f64.load offset=16
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $assembly/src/smallpt/Vec#add_in (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (f64.store
   (get_local $0)
   (f64.add
    (f64.load
     (get_local $0)
    )
    (f64.load
     (get_local $1)
    )
   )
  )
  (f64.store offset=8
   (get_local $0)
   (f64.add
    (f64.load offset=8
     (get_local $0)
    )
    (f64.load offset=8
     (get_local $1)
    )
   )
  )
  (f64.store offset=16
   (get_local $0)
   (f64.add
    (f64.load offset=16
     (get_local $0)
    )
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
  (get_local $0)
 )
 (func $assembly/src/smallpt/Vec#mul (; 20 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $assembly/src/smallpt/Vec#constructor
   (i32.const 0)
   (f64.mul
    (f64.load
     (get_local $0)
    )
    (f64.load
     (get_local $1)
    )
   )
   (f64.mul
    (f64.load offset=8
     (get_local $0)
    )
    (f64.load offset=8
     (get_local $1)
    )
   )
   (f64.mul
    (f64.load offset=16
     (get_local $0)
    )
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
 )
 (func $assembly/src/smallpt/radiance (; 21 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 i32)
  (local $11 f64)
  (local $12 i32)
  (local $13 i32)
  (local $14 f64)
  (local $15 f64)
  (if
   (i32.eqz
    (call $assembly/src/smallpt/intersect
     (get_local $0)
     (f64.const 0)
     (i32.const 0)
    )
   )
   (return
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
    )
   )
  )
  (set_local $3
   (if (result i32)
    (i32.lt_u
     (i32.const 0)
     (i32.shr_u
      (i32.load
       (tee_local $3
        (i32.load
         (get_global $assembly/src/smallpt/spheres)
        )
       )
      )
      (i32.const 2)
     )
    )
    (i32.load offset=8
     (get_local $3)
    )
    (unreachable)
   )
  )
  (set_local $8
   (if (result i32)
    (f64.lt
     (f64.add
      (f64.add
       (f64.mul
        (f64.load
         (tee_local $3
          (call $assembly/src/smallpt/Vec#norm
           (call $assembly/src/smallpt/Vec#sub
            (tee_local $10
             (call $assembly/src/smallpt/Vec#add
              (i32.load
               (get_local $0)
              )
              (call $assembly/src/smallpt/Vec#multScalar
               (i32.load offset=4
                (get_local $0)
               )
               (f64.const 0)
              )
             )
            )
            (i32.load offset=8
             (tee_local $7
              (get_local $3)
             )
            )
           )
          )
         )
        )
        (f64.load
         (tee_local $4
          (i32.load offset=4
           (get_local $0)
          )
         )
        )
       )
       (f64.mul
        (f64.load offset=8
         (get_local $3)
        )
        (f64.load offset=8
         (get_local $4)
        )
       )
      )
      (f64.mul
       (f64.load offset=16
        (get_local $3)
       )
       (f64.load offset=16
        (get_local $4)
       )
      )
     )
     (f64.const 0)
    )
    (get_local $3)
    (call $assembly/src/smallpt/Vec#multScalar
     (get_local $3)
     (f64.const -1)
    )
   )
  )
  (if
   (tee_local $6
    (f64.gt
     (f64.load
      (tee_local $4
       (i32.load offset=16
        (get_local $7)
       )
      )
     )
     (f64.load offset=8
      (get_local $4)
     )
    )
   )
   (set_local $6
    (f64.gt
     (f64.load
      (get_local $4)
     )
     (f64.load offset=16
      (get_local $4)
     )
    )
   )
  )
  (set_local $5
   (if (result f64)
    (get_local $6)
    (f64.load
     (get_local $4)
    )
    (if (result f64)
     (f64.gt
      (f64.load offset=8
       (get_local $4)
      )
      (f64.load offset=16
       (get_local $4)
      )
     )
     (f64.load offset=8
      (get_local $4)
     )
     (f64.load offset=16
      (get_local $4)
     )
    )
   )
  )
  (if
   (i32.gt_s
    (tee_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (i32.const 5)
   )
   (set_local $4
    (if (result i32)
     (f64.lt
      (f64.convert_u/i32
       (get_local $2)
      )
      (get_local $5)
     )
     (call $assembly/src/smallpt/Vec#multScalar
      (get_local $4)
      (f64.div
       (f64.const 1)
       (get_local $5)
      )
     )
     (return
      (i32.load offset=12
       (get_local $7)
      )
     )
    )
   )
  )
  (if
   (i32.load offset=20
    (get_local $7)
   )
   (if
    (i32.eq
     (i32.load offset=20
      (get_local $7)
     )
     (i32.const 1)
    )
    (return
     (call $assembly/src/smallpt/Vec#add
      (i32.load offset=12
       (get_local $7)
      )
      (call $assembly/src/smallpt/Vec#mul
       (get_local $4)
       (call $assembly/src/smallpt/radiance
        (call $assembly/src/smallpt/Ray#constructor
         (i32.const 0)
         (get_local $10)
         (call $assembly/src/smallpt/Vec#sub
          (i32.load offset=4
           (get_local $0)
          )
          (call $assembly/src/smallpt/Vec#multScalar
           (get_local $3)
           (f64.mul
            (f64.const 2)
            (f64.add
             (f64.add
              (f64.mul
               (f64.load
                (get_local $3)
               )
               (f64.load
                (tee_local $0
                 (i32.load offset=4
                  (get_local $0)
                 )
                )
               )
              )
              (f64.mul
               (f64.load offset=8
                (get_local $3)
               )
               (f64.load offset=8
                (get_local $0)
               )
              )
             )
             (f64.mul
              (f64.load offset=16
               (get_local $3)
              )
              (f64.load offset=16
               (get_local $0)
              )
             )
            )
           )
          )
         )
        )
        (get_local $1)
        (get_local $2)
       )
      )
     )
    )
   )
   (block
    (drop
     (call $~lib/math/NativeMath.random)
    )
    (drop
     (call $~lib/math/NativeMath.random)
    )
    (if
     (f64.gt
      (f64.abs
       (f64.load
        (tee_local $6
         (get_local $8)
        )
       )
      )
      (f64.const 0.1)
     )
     (set_local $0
      (call $assembly/src/smallpt/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 1)
       (f64.const 0)
      )
     )
     (drop
      (call $assembly/src/smallpt/Vec#norm_in
       (call $assembly/src/smallpt/Vec#mod_in
        (tee_local $0
         (call $assembly/src/smallpt/Vec#constructor
          (i32.const 0)
          (f64.const 1)
          (f64.const 1)
          (f64.const 0)
         )
        )
        (get_local $6)
       )
      )
     )
    )
    (drop
     (call $assembly/src/smallpt/Vec#mod
      (get_local $6)
      (get_local $0)
     )
    )
    (unreachable)
   )
  )
  (set_local $6
   (call $assembly/src/smallpt/Ray#constructor
    (i32.const 0)
    (get_local $10)
    (call $assembly/src/smallpt/Vec#sub
     (i32.load offset=4
      (get_local $0)
     )
     (call $assembly/src/smallpt/Vec#multScalar
      (get_local $3)
      (f64.mul
       (f64.const 2)
       (f64.add
        (f64.add
         (f64.mul
          (f64.load
           (get_local $3)
          )
          (f64.load
           (tee_local $6
            (i32.load offset=4
             (get_local $0)
            )
           )
          )
         )
         (f64.mul
          (f64.load offset=8
           (get_local $3)
          )
          (f64.load offset=8
           (get_local $6)
          )
         )
        )
        (f64.mul
         (f64.load offset=16
          (get_local $3)
         )
         (f64.load offset=16
          (get_local $6)
         )
        )
       )
      )
     )
    )
   )
  )
  (if
   (f64.lt
    (tee_local $11
     (f64.sub
      (f64.const 1)
      (f64.mul
       (f64.mul
        (tee_local $5
         (if (result f64)
          (tee_local $12
           (f64.gt
            (f64.add
             (f64.add
              (f64.mul
               (f64.load
                (get_local $3)
               )
               (f64.load
                (get_local $8)
               )
              )
              (f64.mul
               (f64.load offset=8
                (get_local $3)
               )
               (f64.load offset=8
                (get_local $8)
               )
              )
             )
             (f64.mul
              (f64.load offset=16
               (get_local $3)
              )
              (f64.load offset=16
               (get_local $8)
              )
             )
            )
            (f64.const 0)
           )
          )
          (f64.const 0.6666666666666666)
          (f64.const 1.5)
         )
        )
        (get_local $5)
       )
       (f64.sub
        (f64.const 1)
        (f64.mul
         (tee_local $9
          (f64.add
           (f64.add
            (f64.mul
             (f64.load
              (tee_local $13
               (i32.load offset=4
                (get_local $0)
               )
              )
             )
             (f64.load
              (get_local $8)
             )
            )
            (f64.mul
             (f64.load offset=8
              (get_local $13)
             )
             (f64.load offset=8
              (get_local $8)
             )
            )
           )
           (f64.mul
            (f64.load offset=16
             (get_local $13)
            )
            (f64.load offset=16
             (get_local $8)
            )
           )
          )
         )
         (get_local $9)
        )
       )
      )
     )
    )
    (f64.const 0)
   )
   (return
    (call $assembly/src/smallpt/Vec#add
     (i32.load offset=12
      (get_local $7)
     )
     (call $assembly/src/smallpt/Vec#mul
      (get_local $4)
      (call $assembly/src/smallpt/radiance
       (get_local $6)
       (get_local $1)
       (get_local $2)
      )
     )
    )
   )
  )
  (set_local $0
   (call $assembly/src/smallpt/Vec#norm
    (call $assembly/src/smallpt/Vec#sub
     (tee_local $0
      (call $assembly/src/smallpt/Vec#multScalar
       (i32.load offset=4
        (get_local $0)
       )
       (get_local $5)
      )
     )
     (call $assembly/src/smallpt/Vec#multScalar
      (get_local $3)
      (f64.mul
       (tee_local $14
        (if (result f64)
         (get_local $12)
         (f64.const 1)
         (f64.const -1)
        )
       )
       (f64.add
        (f64.mul
         (get_local $9)
         (get_local $5)
        )
        (f64.sqrt
         (get_local $11)
        )
       )
      )
     )
    )
   )
  )
  (set_local $9
   (f64.add
    (f64.const 0.25)
    (f64.mul
     (f64.const 0.5)
     (tee_local $5
      (f64.add
       (f64.const 0.04)
       (f64.mul
        (f64.mul
         (f64.mul
          (f64.mul
           (f64.mul
            (f64.const 0.96)
            (tee_local $5
             (f64.sub
              (f64.const 1)
              (tee_local $5
               (if (result f64)
                (get_local $12)
                (f64.neg
                 (get_local $9)
                )
                (f64.add
                 (f64.add
                  (f64.mul
                   (f64.load
                    (get_local $0)
                   )
                   (f64.load
                    (get_local $3)
                   )
                  )
                  (f64.mul
                   (f64.load offset=8
                    (get_local $0)
                   )
                   (f64.load offset=8
                    (get_local $3)
                   )
                  )
                 )
                 (f64.mul
                  (f64.load offset=16
                   (get_local $0)
                  )
                  (f64.load offset=16
                   (get_local $3)
                  )
                 )
                )
               )
              )
             )
            )
           )
           (get_local $5)
          )
          (get_local $5)
         )
         (get_local $5)
        )
        (get_local $5)
       )
      )
     )
    )
   )
  )
  (set_local $14
   (f64.div
    (get_local $5)
    (get_local $9)
   )
  )
  (set_local $15
   (f64.div
    (tee_local $11
     (f64.sub
      (f64.const 1)
      (get_local $5)
     )
    )
    (f64.sub
     (f64.const 1)
     (get_local $9)
    )
   )
  )
  (call $assembly/src/smallpt/Vec#add
   (tee_local $3
    (i32.load offset=12
     (get_local $7)
    )
   )
   (call $assembly/src/smallpt/Vec#mul
    (get_local $4)
    (tee_local $0
     (if (result i32)
      (i32.gt_s
       (get_local $1)
       (i32.const 2)
      )
      (if (result i32)
       (f64.lt
        (call $~lib/math/NativeMath.random)
        (get_local $9)
       )
       (call $assembly/src/smallpt/Vec#multScalar
        (call $assembly/src/smallpt/radiance
         (get_local $6)
         (get_local $1)
         (get_local $2)
        )
        (get_local $14)
       )
       (call $assembly/src/smallpt/Vec#multScalar
        (call $assembly/src/smallpt/radiance
         (call $assembly/src/smallpt/Ray#constructor
          (i32.const 0)
          (get_local $10)
          (get_local $0)
         )
         (get_local $1)
         (get_local $2)
        )
        (get_local $15)
       )
      )
      (call $assembly/src/smallpt/Vec#add
       (call $assembly/src/smallpt/Vec#multScalar
        (call $assembly/src/smallpt/radiance
         (get_local $6)
         (get_local $1)
         (get_local $2)
        )
        (get_local $5)
       )
       (call $assembly/src/smallpt/Vec#multScalar
        (call $assembly/src/smallpt/radiance
         (call $assembly/src/smallpt/Ray#constructor
          (i32.const 0)
          (get_local $10)
          (get_local $0)
         )
         (get_local $1)
         (get_local $2)
        )
        (get_local $11)
       )
      )
     )
    )
   )
  )
 )
 (func $assembly/src/smallpt/_render (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (set_local $3
   (call $assembly/src/smallpt/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const -0.042612)
    (f64.const -1)
   )
  )
  (set_local $11
   (call $assembly/src/smallpt/Ray#constructor
    (i32.const 0)
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 50)
     (f64.const 52)
     (f64.const 295.6)
    )
    (call $assembly/src/smallpt/Vec#norm
     (get_local $3)
    )
   )
  )
  (set_local $13
   (call $assembly/src/smallpt/Vec#multScalar
    (call $assembly/src/smallpt/Vec#norm
     (call $assembly/src/smallpt/Vec#mod
      (tee_local $12
       (call $assembly/src/smallpt/Vec#constructor
        (i32.const 0)
        (f64.const 0.6846666666666666)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.load offset=4
       (get_local $11)
      )
     )
    )
    (f64.const 0.5135)
   )
  )
  (set_local $14
   (i32.wrap/i64
    (get_global $assembly/src/smallpt/seed)
   )
  )
  (set_local $3
   (call $assembly/src/smallpt/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $7)
      (i32.const 768)
     )
    )
    (block $break|1
     (set_local $5
      (i32.const 0)
     )
     (loop $repeat|1
      (br_if $break|1
       (i32.ge_s
        (get_local $5)
        (i32.const 1024)
       )
      )
      (block $break|2
       (set_local $8
        (i32.const 0)
       )
       (set_local $15
        (i32.add
         (i32.shl
          (i32.sub
           (i32.const 767)
           (get_local $7)
          )
          (i32.const 10)
         )
         (get_local $5)
        )
       )
       (loop $repeat|2
        (br_if $break|2
         (i32.ge_s
          (get_local $8)
          (i32.const 2)
         )
        )
        (block $break|3
         (set_local $9
          (i32.const 0)
         )
         (loop $repeat|3
          (br_if $break|3
           (i32.ge_s
            (get_local $9)
            (i32.const 2)
           )
          )
          (f64.store
           (get_local $3)
           (f64.const 0)
          )
          (f64.store offset=8
           (get_local $3)
           (f64.const 0)
          )
          (f64.store offset=16
           (get_local $3)
           (f64.const 0)
          )
          (block $break|4
           (set_local $6
            (i32.const 0)
           )
           (loop $repeat|4
            (br_if $break|4
             (i32.ge_s
              (get_local $6)
              (get_local $1)
             )
            )
            (set_local $4
             (if (result f64)
              (f64.lt
               (tee_local $4
                (f64.mul
                 (f64.const 2)
                 (call $~lib/math/NativeMath.random)
                )
               )
               (f64.const 1)
              )
              (f64.sub
               (f64.sqrt
                (get_local $4)
               )
               (f64.const 1)
              )
              (f64.sub
               (f64.const 1)
               (f64.sqrt
                (f64.sub
                 (f64.const 2)
                 (get_local $4)
                )
               )
              )
             )
            )
            (set_local $2
             (if (result f64)
              (f64.lt
               (tee_local $2
                (f64.mul
                 (f64.const 2)
                 (call $~lib/math/NativeMath.random)
                )
               )
               (f64.const 1)
              )
              (f64.sub
               (f64.sqrt
                (get_local $2)
               )
               (f64.const 1)
              )
              (f64.sub
               (f64.const 1)
               (f64.sqrt
                (f64.sub
                 (f64.const 2)
                 (get_local $2)
                )
               )
              )
             )
            )
            (set_local $17
             (call $assembly/src/smallpt/Vec#multScalar
              (tee_local $16
               (call $assembly/src/smallpt/Vec#add
                (call $assembly/src/smallpt/Vec#add
                 (call $assembly/src/smallpt/Vec#multScalar
                  (get_local $12)
                  (f64.sub
                   (f64.div
                    (f64.add
                     (f64.div
                      (f64.add
                       (f64.add
                        (f64.convert_s/i32
                         (get_local $9)
                        )
                        (f64.const 0.5)
                       )
                       (get_local $4)
                      )
                      (f64.const 2)
                     )
                     (f64.convert_s/i32
                      (get_local $5)
                     )
                    )
                    (f64.const 1024)
                   )
                   (f64.const 0.5)
                  )
                 )
                 (call $assembly/src/smallpt/Vec#multScalar
                  (get_local $13)
                  (f64.sub
                   (f64.div
                    (f64.add
                     (f64.div
                      (f64.add
                       (f64.add
                        (f64.convert_s/i32
                         (get_local $8)
                        )
                        (f64.const 0.5)
                       )
                       (get_local $2)
                      )
                      (f64.const 2)
                     )
                     (f64.convert_s/i32
                      (get_local $7)
                     )
                    )
                    (f64.const 768)
                   )
                   (f64.const 0.5)
                  )
                 )
                )
                (i32.load offset=4
                 (get_local $11)
                )
               )
              )
              (f64.const 140)
             )
            )
            (drop
             (call $assembly/src/smallpt/Vec#add_in
              (get_local $3)
              (call $assembly/src/smallpt/Vec#multScalar
               (call $assembly/src/smallpt/radiance
                (call $assembly/src/smallpt/Ray#constructor
                 (i32.const 0)
                 (call $assembly/src/smallpt/Vec#add
                  (i32.load
                   (get_local $11)
                  )
                  (get_local $17)
                 )
                 (call $assembly/src/smallpt/Vec#norm
                  (get_local $16)
                 )
                )
                (i32.const 0)
                (get_local $14)
               )
               (f64.div
                (f64.const 1)
                (f64.convert_s/i32
                 (get_local $1)
                )
               )
              )
             )
            )
            (set_local $6
             (i32.add
              (get_local $6)
              (i32.const 1)
             )
            )
            (br $repeat|4)
           )
          )
          (if
           (f64.lt
            (tee_local $2
             (f64.load
              (get_local $3)
             )
            )
            (f64.const 0)
           )
           (set_local $2
            (f64.const 0)
           )
           (if
            (f64.gt
             (get_local $2)
             (f64.const 1)
            )
            (set_local $2
             (f64.const 1)
            )
           )
          )
          (set_local $4
           (get_local $2)
          )
          (if
           (f64.lt
            (tee_local $2
             (f64.load offset=8
              (get_local $3)
             )
            )
            (f64.const 0)
           )
           (set_local $2
            (f64.const 0)
           )
           (if
            (f64.gt
             (get_local $2)
             (f64.const 1)
            )
            (set_local $2
             (f64.const 1)
            )
           )
          )
          (if
           (f64.lt
            (tee_local $10
             (f64.load offset=16
              (get_local $3)
             )
            )
            (f64.const 0)
           )
           (set_local $10
            (f64.const 0)
           )
           (if
            (f64.gt
             (get_local $10)
             (f64.const 1)
            )
            (set_local $10
             (f64.const 1)
            )
           )
          )
          (set_local $6
           (call $assembly/src/smallpt/Vec#multScalar
            (call $assembly/src/smallpt/Vec#constructor
             (i32.const 0)
             (get_local $4)
             (get_local $2)
             (get_local $10)
            )
            (f64.const 0.25)
           )
          )
          (drop
           (call $assembly/src/smallpt/Vec#add_in
            (i32.load offset=8
             (i32.add
              (i32.load
               (get_local $0)
              )
              (i32.shl
               (get_local $15)
               (i32.const 2)
              )
             )
            )
            (get_local $6)
           )
          )
          (set_local $9
           (i32.add
            (get_local $9)
            (i32.const 1)
           )
          )
          (br $repeat|3)
         )
        )
        (set_local $8
         (i32.add
          (get_local $8)
          (i32.const 1)
         )
        )
        (br $repeat|2)
       )
      )
      (set_local $5
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (br $repeat|1)
     )
    )
    (set_local $7
     (i32.add
      (get_local $7)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $0)
 )
 (func $assembly/index/render (; 23 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $assembly/src/smallpt/_render
   (get_local $0)
   (get_local $1)
  )
 )
 (func $assembly/index/newVec (; 24 ;) (type $i) (result i32)
  (call $assembly/src/smallpt/Vec#constructor
   (i32.const 0)
   (f64.const 1)
   (f64.const 2)
   (f64.const 3)
  )
 )
 (func $assembly/index/newVecArray (; 25 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (set_local $0
   (call $assembly/src/smallpt/Vec#constructor
    (i32.const 0)
    (f64.const 1)
    (f64.const 2)
    (f64.const 3)
   )
  )
  (i32.store offset=8
   (i32.load
    (tee_local $1
     (call $~lib/array/Array<Sphere>#constructor
      (i32.const 0)
      (i32.const 3)
     )
    )
   )
   (get_local $0)
  )
  (i32.store offset=8
   (i32.add
    (i32.load
     (get_local $1)
    )
    (i32.const 4)
   )
   (get_local $0)
  )
  (i32.store offset=8
   (i32.add
    (i32.load
     (get_local $1)
    )
    (i32.const 8)
   )
   (get_local $0)
  )
  (get_local $1)
 )
 (func $start (; 26 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_global $~lib/allocator/arena/startOffset
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (i32.const 7)
    )
    (i32.const -8)
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (set_global $assembly/src/smallpt/seed
   (i64.reinterpret/f64
    (call $~lib/math/JSMath.random)
   )
  )
  (call $~lib/math/NativeMath.seedRandom
   (get_global $assembly/src/smallpt/seed)
  )
  (set_local $1
   (call $~lib/array/Array<Sphere>#constructor
    (i32.const 0)
    (i32.const 9)
   )
  )
  (set_local $0
   (call $assembly/src/smallpt/Sphere#constructor
    (i32.const 0)
    (f64.const 1e5)
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 100001)
     (f64.const 40.8)
     (f64.const 81.6)
    )
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
    )
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 0.75)
     (f64.const 0.25)
     (f64.const 0.25)
    )
    (i32.const 0)
   )
  )
  (i32.store offset=8
   (i32.load
    (get_local $1)
   )
   (get_local $0)
  )
  (set_local $0
   (call $assembly/src/smallpt/Sphere#constructor
    (i32.const 0)
    (f64.const 1e5)
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const -99901)
     (f64.const 40.8)
     (f64.const 81.6)
    )
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
    )
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 0.25)
     (f64.const 0.25)
     (f64.const 0.75)
    )
    (i32.const 0)
   )
  )
  (i32.store offset=8
   (i32.add
    (i32.load
     (get_local $1)
    )
    (i32.const 4)
   )
   (get_local $0)
  )
  (set_local $0
   (call $assembly/src/smallpt/Sphere#constructor
    (i32.const 0)
    (f64.const 1e5)
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 50)
     (f64.const 40.8)
     (f64.const 1e5)
    )
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
    )
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 0.75)
     (f64.const 0.75)
     (f64.const 0.75)
    )
    (i32.const 0)
   )
  )
  (i32.store offset=8
   (i32.add
    (i32.load
     (get_local $1)
    )
    (i32.const 8)
   )
   (get_local $0)
  )
  (set_local $0
   (call $assembly/src/smallpt/Sphere#constructor
    (i32.const 0)
    (f64.const 1e5)
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 50)
     (f64.const 40.8)
     (f64.const -99830)
    )
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
    )
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
    )
    (i32.const 0)
   )
  )
  (i32.store offset=8
   (i32.add
    (i32.load
     (get_local $1)
    )
    (i32.const 12)
   )
   (get_local $0)
  )
  (set_local $0
   (call $assembly/src/smallpt/Sphere#constructor
    (i32.const 0)
    (f64.const 1e5)
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 50)
     (f64.const 1e5)
     (f64.const 81.6)
    )
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
    )
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 0.75)
     (f64.const 0.75)
     (f64.const 0.75)
    )
    (i32.const 0)
   )
  )
  (i32.store offset=8
   (i32.add
    (i32.load
     (get_local $1)
    )
    (i32.const 16)
   )
   (get_local $0)
  )
  (set_local $0
   (call $assembly/src/smallpt/Sphere#constructor
    (i32.const 0)
    (f64.const 1e5)
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 50)
     (f64.const -99918.4)
     (f64.const 81.6)
    )
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
    )
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 0.75)
     (f64.const 0.75)
     (f64.const 0.75)
    )
    (i32.const 0)
   )
  )
  (i32.store offset=8
   (i32.add
    (i32.load
     (get_local $1)
    )
    (i32.const 20)
   )
   (get_local $0)
  )
  (set_local $0
   (call $assembly/src/smallpt/Sphere#constructor
    (i32.const 0)
    (f64.const 16.5)
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 27)
     (f64.const 16.5)
     (f64.const 47)
    )
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
    )
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 0.999)
     (f64.const 0.999)
     (f64.const 0.999)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=8
   (i32.add
    (i32.load
     (get_local $1)
    )
    (i32.const 24)
   )
   (get_local $0)
  )
  (set_local $0
   (call $assembly/src/smallpt/Sphere#constructor
    (i32.const 0)
    (f64.const 16.5)
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 73)
     (f64.const 16.5)
     (f64.const 78)
    )
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
    )
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 0.999)
     (f64.const 0.999)
     (f64.const 0.999)
    )
    (i32.const 2)
   )
  )
  (i32.store offset=8
   (i32.add
    (i32.load
     (get_local $1)
    )
    (i32.const 28)
   )
   (get_local $0)
  )
  (set_local $0
   (call $assembly/src/smallpt/Sphere#constructor
    (i32.const 0)
    (f64.const 600)
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 50)
     (f64.const 681.33)
     (f64.const 81.6)
    )
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 12)
     (f64.const 12)
     (f64.const 12)
    )
    (call $assembly/src/smallpt/Vec#constructor
     (i32.const 0)
     (f64.const 0)
     (f64.const 0)
     (f64.const 0)
    )
    (i32.const 0)
   )
  )
  (i32.store offset=8
   (i32.add
    (i32.load
     (get_local $1)
    )
    (i32.const 32)
   )
   (get_local $0)
  )
  (set_global $assembly/src/smallpt/spheres
   (get_local $1)
  )
 )
)
