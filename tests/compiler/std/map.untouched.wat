(module
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $~lib/internal/string/MAX_LENGTH i32 (i32.const 536870910))
 (global $~lib/internal/string/EMPTY i32 (i32.const 8))
 (global $~lib/internal/hash/FNV_OFFSET i32 (i32.const -2128831035))
 (global $~lib/internal/hash/FNV_PRIME i32 (i32.const 16777619))
 (global $std/map/INITIAL_CAPACITY i32 (i32.const 4))
 (global $std/map/FILL_FACTOR f64 (f64.const 2.6666666666666665))
 (global $std/map/FREE_FACTOR f64 (f64.const 0.75))
 (global $std/map/EMPTY i32 (i32.const 1))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/map/map (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 96))
 (memory $0 1)
 (data (i32.const 8) "\00\00\00\00")
 (data (i32.const 12) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 72) "\n\00\00\00s\00t\00d\00/\00m\00a\00p\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/arena/allocate_memory (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
 (func $~lib/internal/arraybuffer/computeSize (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.shl
    (i32.const 1)
    (i32.sub
     (i32.const 32)
     (i32.clz
      (i32.sub
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
       (i32.const 1)
      )
     )
    )
   )
  )
 )
 (func $~lib/internal/arraybuffer/allocUnsafe (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (i32.le_u
     (get_local $0)
     (i32.const 1073741816)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 12)
     (i32.const 22)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $1
   (call $~lib/allocator/arena/allocate_memory
    (call $~lib/internal/arraybuffer/computeSize
     (get_local $0)
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
 (func $~lib/memory/set_memory (; 4 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
    (i32.and
     (get_local $1)
     (i32.const 255)
    )
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
 (func $std/map/Map<i32,i32>#clear (; 5 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (i32.mul
    (i32.const 4)
    (i32.add
     (i32.load offset=20
      (get_local $0)
     )
     (i32.load offset=24
      (get_local $0)
     )
    )
   )
  )
  (set_local $2
   (call $~lib/internal/arraybuffer/allocUnsafe
    (get_local $1)
   )
  )
  (call $~lib/memory/set_memory
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i32.const 0)
   (i32.mul
    (i32.const 4)
    (i32.load offset=20
     (get_local $0)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $2)
  )
  (i32.store offset=4
   (get_local $0)
   (i32.sub
    (i32.const 4)
    (i32.const 1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 4)
  )
  (i32.store offset=12
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $std/map/Map<i32,i32>#constructor (; 6 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $std/map/Map<i32,i32>#clear
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/allocator/arena/allocate_memory
         (i32.const 28)
        )
       )
       (i32.store
        (get_local $1)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $1)
        (i32.const 0)
       )
       (i32.store offset=8
        (get_local $1)
        (i32.const 0)
       )
       (i32.store offset=12
        (get_local $1)
        (i32.const 0)
       )
       (i32.store offset=16
        (get_local $1)
        (i32.const 0)
       )
       (i32.store offset=20
        (get_local $1)
        (i32.const 4)
       )
       (i32.store offset=24
        (get_local $1)
        (i32.and
         (i32.add
          (i32.const 12)
          (i32.const 7)
         )
         (i32.xor
          (i32.const 7)
          (i32.const -1)
         )
        )
       )
       (get_local $1)
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/hash/hash32 (; 7 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.const -2128831035)
  )
  (set_local $1
   (i32.mul
    (i32.xor
     (get_local $1)
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
    (i32.const 16777619)
   )
  )
  (set_local $1
   (i32.mul
    (i32.xor
     (get_local $1)
     (i32.and
      (i32.shr_u
       (get_local $0)
       (i32.const 8)
      )
      (i32.const 255)
     )
    )
    (i32.const 16777619)
   )
  )
  (set_local $1
   (i32.mul
    (i32.xor
     (get_local $1)
     (i32.and
      (i32.shr_u
       (get_local $0)
       (i32.const 16)
      )
      (i32.const 255)
     )
    )
    (i32.const 16777619)
   )
  )
  (set_local $1
   (i32.mul
    (i32.xor
     (get_local $1)
     (i32.shr_u
      (get_local $0)
      (i32.const 24)
     )
    )
    (i32.const 16777619)
   )
  )
  (return
   (get_local $1)
  )
 )
 (func $~lib/internal/hash/hash<i32> (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/internal/hash/hash32
    (get_local $0)
   )
  )
 )
 (func $std/map/Map<i32,i32>#find (; 9 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load offset=8
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.mul
      (i32.and
       (get_local $2)
       (i32.load offset=4
        (get_local $0)
       )
      )
      (i32.load offset=20
       (get_local $0)
      )
     )
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (get_local $3)
     (block
      (block
       (if
        (if (result i32)
         (tee_local $4
          (i32.eqz
           (i32.and
            (i32.load offset=8
             (get_local $3)
            )
            (i32.const 1)
           )
          )
         )
         (i32.eq
          (i32.load
           (get_local $3)
          )
          (get_local $1)
         )
         (get_local $4)
        )
        (return
         (get_local $3)
        )
       )
       (set_local $3
        (i32.and
         (i32.load offset=8
          (get_local $3)
         )
         (i32.xor
          (i32.const 1)
          (i32.const -1)
         )
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
 (func $std/map/Map<i32,i32>#rehash (; 10 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $2
   (i32.add
    (get_local $1)
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.trunc_s/f64
    (f64.mul
     (f64.convert_s/i32
      (get_local $2)
     )
     (f64.const 2.6666666666666665)
    )
   )
  )
  (set_local $4
   (i32.add
    (i32.mul
     (get_local $2)
     (i32.load offset=20
      (get_local $0)
     )
    )
    (i32.mul
     (get_local $3)
     (i32.load offset=24
      (get_local $0)
     )
    )
   )
  )
  (set_local $5
   (call $~lib/internal/arraybuffer/allocUnsafe
    (get_local $4)
   )
  )
  (call $~lib/memory/set_memory
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
   (i32.const 0)
   (i32.mul
    (get_local $2)
    (i32.load offset=20
     (get_local $0)
    )
   )
  )
  (set_local $6
   (i32.add
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.const 8)
    )
    (i32.mul
     (i32.add
      (i32.load offset=4
       (get_local $0)
      )
      (i32.const 1)
     )
     (i32.load offset=20
      (get_local $0)
     )
    )
   )
  )
  (set_local $7
   (i32.add
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
    (i32.mul
     (get_local $2)
     (i32.load offset=20
      (get_local $0)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=12
      (get_local $0)
     )
     (i32.load offset=24
      (get_local $0)
     )
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ne
      (get_local $6)
      (get_local $8)
     )
     (block
      (block
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=8
           (get_local $6)
          )
          (i32.const 1)
         )
        )
        (block
         (i32.store
          (get_local $7)
          (i32.load
           (get_local $6)
          )
         )
         (i32.store offset=4
          (get_local $7)
          (i32.load offset=4
           (get_local $6)
          )
         )
         (set_local $9
          (i32.add
           (get_local $5)
           (i32.mul
            (i32.and
             (call $~lib/internal/hash/hash<i32>
              (i32.load
               (get_local $6)
              )
             )
             (get_local $1)
            )
            (i32.load offset=20
             (get_local $0)
            )
           )
          )
         )
         (i32.store offset=8
          (get_local $7)
          (i32.load offset=8
           (get_local $9)
          )
         )
         (i32.store offset=8
          (get_local $9)
          (get_local $7)
         )
         (set_local $7
          (i32.add
           (get_local $7)
           (i32.load offset=24
            (get_local $0)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (i32.load offset=24
          (get_local $0)
         )
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $3)
  )
  (i32.store offset=12
   (get_local $0)
   (i32.load offset=16
    (get_local $0)
   )
  )
 )
 (func $std/map/Map<i32,i32>#set (; 11 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $3
   (call $~lib/internal/hash/hash<i32>
    (get_local $1)
   )
  )
  (set_local $4
   (call $std/map/Map<i32,i32>#find
    (get_local $0)
    (get_local $1)
    (get_local $3)
   )
  )
  (if
   (get_local $4)
   (i32.store offset=4
    (get_local $4)
    (get_local $2)
   )
   (block
    (set_local $5
     (i32.load offset=8
      (get_local $0)
     )
    )
    (if
     (i32.eq
      (i32.load offset=12
       (get_local $0)
      )
      (get_local $5)
     )
     (block
      (call $std/map/Map<i32,i32>#rehash
       (get_local $0)
       (if (result i32)
        (i32.ge_s
         (i32.load offset=16
          (get_local $0)
         )
         (i32.trunc_s/f64
          (f64.mul
           (f64.convert_s/i32
            (get_local $5)
           )
           (f64.const 0.75)
          )
         )
        )
        (i32.or
         (i32.shl
          (i32.load offset=4
           (get_local $0)
          )
          (i32.const 1)
         )
         (i32.const 1)
        )
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
      (set_local $5
       (i32.load offset=8
        (get_local $0)
       )
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (i32.add
        (get_local $6)
        (i32.const 8)
       )
       (i32.mul
        (i32.add
         (i32.load offset=4
          (get_local $0)
         )
         (i32.const 1)
        )
        (i32.load offset=20
         (get_local $0)
        )
       )
      )
      (i32.mul
       (block (result i32)
        (set_local $7
         (i32.load offset=12
          (get_local $0)
         )
        )
        (i32.store offset=12
         (get_local $0)
         (i32.add
          (get_local $7)
          (i32.const 1)
         )
        )
        (get_local $7)
       )
       (i32.load offset=24
        (get_local $0)
       )
      )
     )
    )
    (i32.store
     (get_local $4)
     (get_local $1)
    )
    (i32.store offset=4
     (get_local $4)
     (get_local $2)
    )
    (set_local $7
     (i32.and
      (get_local $3)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (set_local $8
     (i32.add
      (i32.add
       (get_local $6)
       (i32.const 8)
      )
      (i32.mul
       (i32.and
        (get_local $3)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (i32.load offset=20
        (get_local $0)
       )
      )
     )
    )
    (i32.store offset=8
     (get_local $4)
     (i32.load
      (get_local $8)
     )
    )
    (i32.store
     (get_local $8)
     (get_local $4)
    )
    (i32.store offset=16
     (get_local $0)
     (i32.add
      (i32.load offset=16
       (get_local $0)
      )
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $std/map/Map<i32,i32>#has (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (i32.ne
    (call $std/map/Map<i32,i32>#find
     (get_local $0)
     (get_local $1)
     (call $~lib/internal/hash/hash<i32>
      (get_local $1)
     )
    )
    (i32.const 0)
   )
  )
 )
 (func $std/map/Map<i32,i32>#get (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (call $std/map/Map<i32,i32>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i32>
     (get_local $1)
    )
   )
  )
  (return
   (if (result i32)
    (get_local $2)
    (i32.load offset=4
     (get_local $2)
    )
    (unreachable)
   )
  )
 )
 (func $std/map/Map<i32,i32>#get:size (; 14 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.load offset=16
    (get_local $0)
   )
  )
 )
 (func $std/map/Map<i32,i32>#delete (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (call $std/map/Map<i32,i32>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i32>
     (get_local $1)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store offset=16
   (get_local $0)
   (i32.sub
    (i32.load offset=16
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=8
   (get_local $2)
   (i32.or
    (i32.load offset=8
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $3
     (i32.gt_u
      (i32.load offset=4
       (get_local $0)
      )
      (i32.const 4)
     )
    )
    (i32.lt_s
     (i32.load offset=16
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $0)
        )
       )
       (f64.const 0.75)
      )
     )
    )
    (get_local $3)
   )
   (call $std/map/Map<i32,i32>#rehash
    (get_local $0)
    (i32.shr_u
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 1)
    )
   )
  )
  (return
   (i32.const 1)
  )
 )
 (func $start (; 16 ;) (type $v)
  (local $0 i32)
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
  (set_global $std/map/map
   (call $std/map/Map<i32,i32>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $0
    (i32.const 1)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.le_s
       (get_local $0)
       (i32.const 200)
      )
     )
    )
    (block
     (call $std/map/Map<i32,i32>#set
      (get_global $std/map/map)
      (get_local $0)
      (i32.add
       (i32.const 100)
       (get_local $0)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i32,i32>#has
        (get_global $std/map/map)
        (get_local $0)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 72)
        (i32.const 179)
        (i32.const 2)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i32,i32>#has
         (get_global $std/map/map)
         (i32.add
          (get_local $0)
          (i32.const 1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 72)
        (i32.const 180)
        (i32.const 2)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i32,i32>#get
         (get_global $std/map/map)
         (get_local $0)
        )
        (i32.add
         (i32.const 100)
         (get_local $0)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 72)
        (i32.const 181)
        (i32.const 2)
       )
       (unreachable)
      )
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/map/Map<i32,i32>#get:size
      (get_global $std/map/map)
     )
     (i32.const 200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 183)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $0
    (i32.const 50)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i32.le_s
       (get_local $0)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $std/map/Map<i32,i32>#has
        (get_global $std/map/map)
        (get_local $0)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 72)
        (i32.const 187)
        (i32.const 2)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i32,i32>#get
         (get_global $std/map/map)
         (get_local $0)
        )
        (i32.add
         (i32.const 100)
         (get_local $0)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 72)
        (i32.const 188)
        (i32.const 2)
       )
       (unreachable)
      )
     )
     (call $std/map/Map<i32,i32>#set
      (get_global $std/map/map)
      (get_local $0)
      (i32.add
       (i32.const 100)
       (get_local $0)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i32,i32>#has
        (get_global $std/map/map)
        (get_local $0)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 72)
        (i32.const 190)
        (i32.const 2)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i32,i32>#get
         (get_global $std/map/map)
         (get_local $0)
        )
        (i32.add
         (i32.const 100)
         (get_local $0)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 72)
        (i32.const 191)
        (i32.const 2)
       )
       (unreachable)
      )
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/map/Map<i32,i32>#get:size
      (get_global $std/map/map)
     )
     (i32.const 200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 193)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $0
    (i32.const 1)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.le_s
       (get_local $0)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $std/map/Map<i32,i32>#has
        (get_global $std/map/map)
        (get_local $0)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 72)
        (i32.const 197)
        (i32.const 2)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i32,i32>#get
         (get_global $std/map/map)
         (get_local $0)
        )
        (i32.add
         (i32.const 100)
         (get_local $0)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 72)
        (i32.const 198)
        (i32.const 2)
       )
       (unreachable)
      )
     )
     (drop
      (call $std/map/Map<i32,i32>#delete
       (get_global $std/map/map)
       (get_local $0)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i32,i32>#has
         (get_global $std/map/map)
         (get_local $0)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 72)
        (i32.const 200)
        (i32.const 2)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i32,i32>#has
        (get_global $std/map/map)
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 72)
        (i32.const 201)
        (i32.const 2)
       )
       (unreachable)
      )
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/map/Map<i32,i32>#get:size
      (get_global $std/map/map)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 203)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/map/Map<i32,i32>#clear
   (get_global $std/map/map)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/map/Map<i32,i32>#get:size
      (get_global $std/map/map)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 207)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
