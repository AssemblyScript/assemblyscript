(module
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $iIii (func (param i32 i64 i32) (result i32)))
 (type $iIiv (func (param i32 i64 i32)))
 (type $ifi (func (param i32 f32) (result i32)))
 (type $ifii (func (param i32 f32 i32) (result i32)))
 (type $ifiv (func (param i32 f32 i32)))
 (type $iFi (func (param i32 f64) (result i32)))
 (type $iFii (func (param i32 f64 i32) (result i32)))
 (type $iFiv (func (param i32 f64 i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/map/INITIAL_CAPACITY i32 (i32.const 4))
 (global $~lib/map/BUCKET_SIZE i32 (i32.const 4))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~lib/internal/hash/FNV_OFFSET i32 (i32.const -2128831035))
 (global $~lib/internal/hash/FNV_PRIME i32 (i32.const 16777619))
 (global $~lib/map/EMPTY i32 (i32.const 1))
 (global $~lib/map/FREE_FACTOR f64 (f64.const 0.75))
 (global $~lib/map/FILL_FACTOR f64 (f64.const 2.6666666666666665))
 (global $HEAP_BASE i32 (i32.const 136))
 (memory $0 1)
 (data (i32.const 8) "\13\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 52) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 112) "\n\00\00\00s\00t\00d\00/\00m\00a\00p\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 1 ;) (type $ii) (param $0 i32) (result i32)
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
      (get_global $~lib/internal/allocator/MAX_SIZE_32)
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
       (get_global $~lib/internal/allocator/AL_MASK)
      )
      (i32.xor
       (get_global $~lib/internal/allocator/AL_MASK)
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
  (i32.const 0)
 )
 (func $~lib/memory/memory.allocate (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/allocator/arena/__memory_allocate
    (get_local $0)
   )
  )
 )
 (func $~lib/internal/arraybuffer/computeSize (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (i32.shl
   (i32.const 1)
   (i32.sub
    (i32.const 32)
    (i32.clz
     (i32.sub
      (i32.add
       (get_local $0)
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/internal/arraybuffer/allocUnsafe (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (i32.le_u
     (get_local $0)
     (get_global $~lib/internal/arraybuffer/MAX_BLENGTH)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 52)
     (i32.const 22)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $1
   (call $~lib/memory/memory.allocate
    (call $~lib/internal/arraybuffer/computeSize
     (get_local $0)
    )
   )
  )
  (i32.store
   (get_local $1)
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/memory/memset (; 5 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/memory.fill (; 6 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (call $~lib/memory/memset
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 7 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (get_global $~lib/internal/arraybuffer/MAX_BLENGTH)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 13)
     (i32.const 40)
    )
    (unreachable)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocUnsafe
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (i32.and
     (get_local $2)
     (i32.const 1)
    )
   )
   (call $~lib/memory/memory.fill
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
    (i32.const 0)
    (get_local $1)
   )
  )
  (get_local $3)
 )
 (func $~lib/map/Map<i8,i32>#clear (; 8 ;) (type $iv) (param $0 i32)
  (i32.store
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 16)
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.sub
    (get_global $~lib/map/INITIAL_CAPACITY)
    (i32.const 1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 48)
    (i32.const 1)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (get_global $~lib/map/INITIAL_CAPACITY)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=20
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<i8,i32>#constructor (; 9 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/map/Map<i8,i32>#clear
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/memory/memory.allocate
         (i32.const 24)
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
        (i32.const 0)
       )
       (get_local $1)
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/hash/hash8 (; 10 ;) (type $ii) (param $0 i32) (result i32)
  (i32.mul
   (i32.xor
    (get_global $~lib/internal/hash/FNV_OFFSET)
    (get_local $0)
   )
   (get_global $~lib/internal/hash/FNV_PRIME)
  )
 )
 (func $~lib/map/Map<i8,i32>#find (; 11 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
      (get_global $~lib/map/BUCKET_SIZE)
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
            (get_global $~lib/map/EMPTY)
           )
          )
         )
         (i32.eq
          (i32.load8_s
           (get_local $3)
          )
          (i32.shr_s
           (i32.shl
            (get_local $1)
            (i32.const 24)
           )
           (i32.const 24)
          )
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
          (get_global $~lib/map/EMPTY)
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
  (i32.const 0)
 )
 (func $~lib/map/Map<i8,i32>#has (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/map/Map<i8,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<i8>|inlined.0 (result i32)
     (br $~lib/internal/hash/hash<i8>|inlined.0
      (call $~lib/internal/hash/hash8
       (i32.shr_s
        (i32.shl
         (get_local $1)
         (i32.const 24)
        )
        (i32.const 24)
       )
      )
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<i8,i32>#rehash (; 13 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
   (i32.add
    (get_local $1)
    (i32.const 1)
   )
  )
  (set_local $3
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $2)
     (get_global $~lib/map/BUCKET_SIZE)
    )
    (i32.const 0)
   )
  )
  (set_local $4
   (i32.trunc_s/f64
    (f64.mul
     (f64.convert_s/i32
      (get_local $2)
     )
     (get_global $~lib/map/FILL_FACTOR)
    )
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $4)
     (block $~lib/map/ENTRY_SIZE<i8,i32>|inlined.1 (result i32)
      (i32.const 12)
     )
    )
    (i32.const 1)
   )
  )
  (set_local $6
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (set_local $7
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/map/ENTRY_SIZE<i8,i32>|inlined.2 (result i32)
      (i32.const 12)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
     (block
      (block
       (set_local $9
        (get_local $6)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=8
           (get_local $9)
          )
          (get_global $~lib/map/EMPTY)
         )
        )
        (block
         (set_local $10
          (get_local $8)
         )
         (i32.store8
          (get_local $10)
          (i32.load8_s
           (get_local $9)
          )
         )
         (i32.store offset=4
          (get_local $10)
          (i32.load offset=4
           (get_local $9)
          )
         )
         (set_local $11
          (i32.and
           (block $~lib/internal/hash/hash<i8>|inlined.2 (result i32)
            (set_local $11
             (i32.load8_s
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<i8>|inlined.2
             (call $~lib/internal/hash/hash8
              (get_local $11)
             )
            )
           )
           (get_local $1)
          )
         )
         (set_local $12
          (i32.add
           (get_local $3)
           (i32.mul
            (get_local $11)
            (get_global $~lib/map/BUCKET_SIZE)
           )
          )
         )
         (i32.store offset=8
          (get_local $10)
          (i32.load offset=8
           (get_local $12)
          )
         )
         (i32.store offset=8
          (get_local $12)
          (get_local $8)
         )
         (set_local $8
          (i32.add
           (get_local $8)
           (block $~lib/map/ENTRY_SIZE<i8,i32>|inlined.3 (result i32)
            (i32.const 12)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/map/ENTRY_SIZE<i8,i32>|inlined.4 (result i32)
          (i32.const 12)
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
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/map/Map<i8,i32>#set (; 14 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (block $~lib/internal/hash/hash<i8>|inlined.1 (result i32)
    (br $~lib/internal/hash/hash<i8>|inlined.1
     (call $~lib/internal/hash/hash8
      (i32.shr_s
       (i32.shl
        (get_local $1)
        (i32.const 24)
       )
       (i32.const 24)
      )
     )
    )
   )
  )
  (set_local $4
   (call $~lib/map/Map<i8,i32>#find
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
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (i32.load offset=12
       (get_local $0)
      )
     )
     (call $~lib/map/Map<i8,i32>#rehash
      (get_local $0)
      (if (result i32)
       (i32.lt_s
        (i32.load offset=20
         (get_local $0)
        )
        (i32.trunc_s/f64
         (f64.mul
          (f64.convert_s/i32
           (i32.load offset=12
            (get_local $0)
           )
          )
          (get_global $~lib/map/FREE_FACTOR)
         )
        )
       )
       (i32.load offset=4
        (get_local $0)
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
      )
     )
    )
    (set_local $5
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $5)
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.mul
       (block (result i32)
        (set_local $6
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       (block $~lib/map/ENTRY_SIZE<i8,i32>|inlined.5 (result i32)
        (i32.const 12)
       )
      )
     )
    )
    (i32.store8
     (get_local $4)
     (get_local $1)
    )
    (i32.store offset=4
     (get_local $4)
     (get_local $2)
    )
    (i32.store offset=20
     (get_local $0)
     (i32.add
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (set_local $6
     (i32.add
      (i32.load
       (get_local $0)
      )
      (i32.mul
       (i32.and
        (get_local $3)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_global $~lib/map/BUCKET_SIZE)
      )
     )
    )
    (i32.store offset=8
     (get_local $4)
     (i32.load offset=8
      (get_local $6)
     )
    )
    (i32.store offset=8
     (get_local $6)
     (get_local $4)
    )
   )
  )
 )
 (func $~lib/map/Map<i8,i32>#get (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (call $~lib/map/Map<i8,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<i8>|inlined.3 (result i32)
     (br $~lib/internal/hash/hash<i8>|inlined.3
      (call $~lib/internal/hash/hash8
       (i32.shr_s
        (i32.shl
         (get_local $1)
         (i32.const 24)
        )
        (i32.const 24)
       )
      )
     )
    )
   )
  )
  (if (result i32)
   (get_local $2)
   (i32.load offset=4
    (get_local $2)
   )
   (unreachable)
  )
 )
 (func $~lib/map/Map<i8,i32>#get:size (; 16 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/map/Map<i8,i32>#delete (; 17 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/map/Map<i8,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<i8>|inlined.4 (result i32)
     (br $~lib/internal/hash/hash<i8>|inlined.4
      (call $~lib/internal/hash/hash8
       (i32.shr_s
        (i32.shl
         (get_local $1)
         (i32.const 24)
        )
        (i32.const 24)
       )
      )
     )
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
  (i32.store offset=8
   (get_local $2)
   (i32.or
    (i32.load offset=8
     (get_local $2)
    )
    (get_global $~lib/map/EMPTY)
   )
  )
  (i32.store offset=20
   (get_local $0)
   (i32.sub
    (i32.load offset=20
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.shr_u
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $4
     (i32.ge_u
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
      (select
       (tee_local $4
        (get_global $~lib/map/INITIAL_CAPACITY)
       )
       (tee_local $5
        (i32.load offset=20
         (get_local $0)
        )
       )
       (i32.gt_u
        (get_local $4)
        (get_local $5)
       )
      )
     )
    )
    (i32.lt_s
     (i32.load offset=20
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $0)
        )
       )
       (get_global $~lib/map/FREE_FACTOR)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/map/Map<i8,i32>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/map/test<i8,i32> (; 18 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $0
   (call $~lib/map/Map<i8,i32>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<i8,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 8)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<i8,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (i32.shr_s
        (i32.shl
         (get_local $1)
         (i32.const 24)
        )
        (i32.const 24)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<i8,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 10)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<i8,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (i32.shr_s
          (i32.shl
           (get_local $1)
           (i32.const 24)
          )
          (i32.const 24)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 11)
        (i32.const 4)
       )
       (unreachable)
      )
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
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i8,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 13)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i32.lt_s
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<i8,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 17)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<i8,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (i32.shr_s
          (i32.shl
           (get_local $1)
           (i32.const 24)
          )
          (i32.const 24)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 18)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<i8,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 20)
       (i32.shr_s
        (i32.shl
         (get_local $1)
         (i32.const 24)
        )
        (i32.const 24)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<i8,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 20)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<i8,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (i32.shr_s
          (i32.shl
           (get_local $1)
           (i32.const 24)
          )
          (i32.const 24)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 21)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i8,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.lt_s
       (get_local $1)
       (i32.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<i8,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 27)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<i8,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (i32.shr_s
          (i32.shl
           (get_local $1)
           (i32.const 24)
          )
          (i32.const 24)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 28)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<i8,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<i8,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 30)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i8,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 32)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (i32.lt_s
       (get_local $1)
       (i32.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<i8,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 36)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<i8,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (i32.shr_s
        (i32.shl
         (get_local $1)
         (i32.const 24)
        )
        (i32.const 24)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<i8,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 38)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<i8,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<i8,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 40)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|3)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i8,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/map/Map<i8,i32>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i8,i32>#get:size
      (get_local $0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 46)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/map/Map<u8,i32>#clear (; 19 ;) (type $iv) (param $0 i32)
  (i32.store
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 16)
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.sub
    (get_global $~lib/map/INITIAL_CAPACITY)
    (i32.const 1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 48)
    (i32.const 1)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (get_global $~lib/map/INITIAL_CAPACITY)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=20
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<u8,i32>#constructor (; 20 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/map/Map<u8,i32>#clear
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/memory/memory.allocate
         (i32.const 24)
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
        (i32.const 0)
       )
       (get_local $1)
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/map/Map<u8,i32>#find (; 21 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
      (get_global $~lib/map/BUCKET_SIZE)
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
            (get_global $~lib/map/EMPTY)
           )
          )
         )
         (i32.eq
          (i32.load8_u
           (get_local $3)
          )
          (i32.and
           (get_local $1)
           (i32.const 255)
          )
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
          (get_global $~lib/map/EMPTY)
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
  (i32.const 0)
 )
 (func $~lib/map/Map<u8,i32>#has (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/map/Map<u8,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<u8>|inlined.0 (result i32)
     (br $~lib/internal/hash/hash<u8>|inlined.0
      (call $~lib/internal/hash/hash8
       (i32.and
        (get_local $1)
        (i32.const 255)
       )
      )
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<u8,i32>#rehash (; 23 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
   (i32.add
    (get_local $1)
    (i32.const 1)
   )
  )
  (set_local $3
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $2)
     (get_global $~lib/map/BUCKET_SIZE)
    )
    (i32.const 0)
   )
  )
  (set_local $4
   (i32.trunc_s/f64
    (f64.mul
     (f64.convert_s/i32
      (get_local $2)
     )
     (get_global $~lib/map/FILL_FACTOR)
    )
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $4)
     (block $~lib/map/ENTRY_SIZE<u8,i32>|inlined.1 (result i32)
      (i32.const 12)
     )
    )
    (i32.const 1)
   )
  )
  (set_local $6
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (set_local $7
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/map/ENTRY_SIZE<u8,i32>|inlined.2 (result i32)
      (i32.const 12)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
     (block
      (block
       (set_local $9
        (get_local $6)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=8
           (get_local $9)
          )
          (get_global $~lib/map/EMPTY)
         )
        )
        (block
         (set_local $10
          (get_local $8)
         )
         (i32.store8
          (get_local $10)
          (i32.load8_u
           (get_local $9)
          )
         )
         (i32.store offset=4
          (get_local $10)
          (i32.load offset=4
           (get_local $9)
          )
         )
         (set_local $11
          (i32.and
           (block $~lib/internal/hash/hash<u8>|inlined.2 (result i32)
            (set_local $11
             (i32.load8_u
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<u8>|inlined.2
             (call $~lib/internal/hash/hash8
              (get_local $11)
             )
            )
           )
           (get_local $1)
          )
         )
         (set_local $12
          (i32.add
           (get_local $3)
           (i32.mul
            (get_local $11)
            (get_global $~lib/map/BUCKET_SIZE)
           )
          )
         )
         (i32.store offset=8
          (get_local $10)
          (i32.load offset=8
           (get_local $12)
          )
         )
         (i32.store offset=8
          (get_local $12)
          (get_local $8)
         )
         (set_local $8
          (i32.add
           (get_local $8)
           (block $~lib/map/ENTRY_SIZE<u8,i32>|inlined.3 (result i32)
            (i32.const 12)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/map/ENTRY_SIZE<u8,i32>|inlined.4 (result i32)
          (i32.const 12)
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
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/map/Map<u8,i32>#set (; 24 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (block $~lib/internal/hash/hash<u8>|inlined.1 (result i32)
    (br $~lib/internal/hash/hash<u8>|inlined.1
     (call $~lib/internal/hash/hash8
      (i32.and
       (get_local $1)
       (i32.const 255)
      )
     )
    )
   )
  )
  (set_local $4
   (call $~lib/map/Map<u8,i32>#find
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
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (i32.load offset=12
       (get_local $0)
      )
     )
     (call $~lib/map/Map<u8,i32>#rehash
      (get_local $0)
      (if (result i32)
       (i32.lt_s
        (i32.load offset=20
         (get_local $0)
        )
        (i32.trunc_s/f64
         (f64.mul
          (f64.convert_s/i32
           (i32.load offset=12
            (get_local $0)
           )
          )
          (get_global $~lib/map/FREE_FACTOR)
         )
        )
       )
       (i32.load offset=4
        (get_local $0)
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
      )
     )
    )
    (set_local $5
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $5)
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.mul
       (block (result i32)
        (set_local $6
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       (block $~lib/map/ENTRY_SIZE<u8,i32>|inlined.5 (result i32)
        (i32.const 12)
       )
      )
     )
    )
    (i32.store8
     (get_local $4)
     (get_local $1)
    )
    (i32.store offset=4
     (get_local $4)
     (get_local $2)
    )
    (i32.store offset=20
     (get_local $0)
     (i32.add
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (set_local $6
     (i32.add
      (i32.load
       (get_local $0)
      )
      (i32.mul
       (i32.and
        (get_local $3)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_global $~lib/map/BUCKET_SIZE)
      )
     )
    )
    (i32.store offset=8
     (get_local $4)
     (i32.load offset=8
      (get_local $6)
     )
    )
    (i32.store offset=8
     (get_local $6)
     (get_local $4)
    )
   )
  )
 )
 (func $~lib/map/Map<u8,i32>#get (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (call $~lib/map/Map<u8,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<u8>|inlined.3 (result i32)
     (br $~lib/internal/hash/hash<u8>|inlined.3
      (call $~lib/internal/hash/hash8
       (i32.and
        (get_local $1)
        (i32.const 255)
       )
      )
     )
    )
   )
  )
  (if (result i32)
   (get_local $2)
   (i32.load offset=4
    (get_local $2)
   )
   (unreachable)
  )
 )
 (func $~lib/map/Map<u8,i32>#get:size (; 26 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/map/Map<u8,i32>#delete (; 27 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/map/Map<u8,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<u8>|inlined.4 (result i32)
     (br $~lib/internal/hash/hash<u8>|inlined.4
      (call $~lib/internal/hash/hash8
       (i32.and
        (get_local $1)
        (i32.const 255)
       )
      )
     )
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
  (i32.store offset=8
   (get_local $2)
   (i32.or
    (i32.load offset=8
     (get_local $2)
    )
    (get_global $~lib/map/EMPTY)
   )
  )
  (i32.store offset=20
   (get_local $0)
   (i32.sub
    (i32.load offset=20
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.shr_u
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $4
     (i32.ge_u
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
      (select
       (tee_local $4
        (get_global $~lib/map/INITIAL_CAPACITY)
       )
       (tee_local $5
        (i32.load offset=20
         (get_local $0)
        )
       )
       (i32.gt_u
        (get_local $4)
        (get_local $5)
       )
      )
     )
    )
    (i32.lt_s
     (i32.load offset=20
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $0)
        )
       )
       (get_global $~lib/map/FREE_FACTOR)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/map/Map<u8,i32>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/map/test<u8,i32> (; 28 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $0
   (call $~lib/map/Map<u8,i32>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<u8,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 8)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<u8,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (i32.and
        (get_local $1)
        (i32.const 255)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<u8,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 10)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<u8,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (i32.and
          (get_local $1)
          (i32.const 255)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 11)
        (i32.const 4)
       )
       (unreachable)
      )
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
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u8,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 13)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i32.lt_u
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<u8,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 17)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<u8,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (i32.and
          (get_local $1)
          (i32.const 255)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 18)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<u8,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 20)
       (i32.and
        (get_local $1)
        (i32.const 255)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<u8,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 20)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<u8,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (i32.and
          (get_local $1)
          (i32.const 255)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 21)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u8,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.lt_u
       (get_local $1)
       (i32.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<u8,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 27)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<u8,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (i32.and
          (get_local $1)
          (i32.const 255)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 28)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<u8,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<u8,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 30)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u8,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 32)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (i32.lt_u
       (get_local $1)
       (i32.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<u8,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 36)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<u8,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (i32.and
        (get_local $1)
        (i32.const 255)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<u8,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 38)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<u8,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<u8,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 40)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|3)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u8,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/map/Map<u8,i32>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u8,i32>#get:size
      (get_local $0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 46)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/map/Map<i16,i32>#clear (; 29 ;) (type $iv) (param $0 i32)
  (i32.store
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 16)
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.sub
    (get_global $~lib/map/INITIAL_CAPACITY)
    (i32.const 1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 48)
    (i32.const 1)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (get_global $~lib/map/INITIAL_CAPACITY)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=20
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<i16,i32>#constructor (; 30 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/map/Map<i16,i32>#clear
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/memory/memory.allocate
         (i32.const 24)
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
        (i32.const 0)
       )
       (get_local $1)
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/hash/hash16 (; 31 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (get_global $~lib/internal/hash/FNV_OFFSET)
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
    (get_global $~lib/internal/hash/FNV_PRIME)
   )
  )
  (set_local $1
   (i32.mul
    (i32.xor
     (get_local $1)
     (i32.shr_u
      (get_local $0)
      (i32.const 8)
     )
    )
    (get_global $~lib/internal/hash/FNV_PRIME)
   )
  )
  (get_local $1)
 )
 (func $~lib/map/Map<i16,i32>#find (; 32 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
      (get_global $~lib/map/BUCKET_SIZE)
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
            (get_global $~lib/map/EMPTY)
           )
          )
         )
         (i32.eq
          (i32.load16_s
           (get_local $3)
          )
          (i32.shr_s
           (i32.shl
            (get_local $1)
            (i32.const 16)
           )
           (i32.const 16)
          )
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
          (get_global $~lib/map/EMPTY)
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
  (i32.const 0)
 )
 (func $~lib/map/Map<i16,i32>#has (; 33 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/map/Map<i16,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<i16>|inlined.0 (result i32)
     (br $~lib/internal/hash/hash<i16>|inlined.0
      (call $~lib/internal/hash/hash16
       (i32.shr_s
        (i32.shl
         (get_local $1)
         (i32.const 16)
        )
        (i32.const 16)
       )
      )
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<i16,i32>#rehash (; 34 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
   (i32.add
    (get_local $1)
    (i32.const 1)
   )
  )
  (set_local $3
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $2)
     (get_global $~lib/map/BUCKET_SIZE)
    )
    (i32.const 0)
   )
  )
  (set_local $4
   (i32.trunc_s/f64
    (f64.mul
     (f64.convert_s/i32
      (get_local $2)
     )
     (get_global $~lib/map/FILL_FACTOR)
    )
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $4)
     (block $~lib/map/ENTRY_SIZE<i16,i32>|inlined.1 (result i32)
      (i32.const 12)
     )
    )
    (i32.const 1)
   )
  )
  (set_local $6
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (set_local $7
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/map/ENTRY_SIZE<i16,i32>|inlined.2 (result i32)
      (i32.const 12)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
     (block
      (block
       (set_local $9
        (get_local $6)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=8
           (get_local $9)
          )
          (get_global $~lib/map/EMPTY)
         )
        )
        (block
         (set_local $10
          (get_local $8)
         )
         (i32.store16
          (get_local $10)
          (i32.load16_s
           (get_local $9)
          )
         )
         (i32.store offset=4
          (get_local $10)
          (i32.load offset=4
           (get_local $9)
          )
         )
         (set_local $11
          (i32.and
           (block $~lib/internal/hash/hash<i16>|inlined.2 (result i32)
            (set_local $11
             (i32.load16_s
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<i16>|inlined.2
             (call $~lib/internal/hash/hash16
              (get_local $11)
             )
            )
           )
           (get_local $1)
          )
         )
         (set_local $12
          (i32.add
           (get_local $3)
           (i32.mul
            (get_local $11)
            (get_global $~lib/map/BUCKET_SIZE)
           )
          )
         )
         (i32.store offset=8
          (get_local $10)
          (i32.load offset=8
           (get_local $12)
          )
         )
         (i32.store offset=8
          (get_local $12)
          (get_local $8)
         )
         (set_local $8
          (i32.add
           (get_local $8)
           (block $~lib/map/ENTRY_SIZE<i16,i32>|inlined.3 (result i32)
            (i32.const 12)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/map/ENTRY_SIZE<i16,i32>|inlined.4 (result i32)
          (i32.const 12)
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
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/map/Map<i16,i32>#set (; 35 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (block $~lib/internal/hash/hash<i16>|inlined.1 (result i32)
    (br $~lib/internal/hash/hash<i16>|inlined.1
     (call $~lib/internal/hash/hash16
      (i32.shr_s
       (i32.shl
        (get_local $1)
        (i32.const 16)
       )
       (i32.const 16)
      )
     )
    )
   )
  )
  (set_local $4
   (call $~lib/map/Map<i16,i32>#find
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
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (i32.load offset=12
       (get_local $0)
      )
     )
     (call $~lib/map/Map<i16,i32>#rehash
      (get_local $0)
      (if (result i32)
       (i32.lt_s
        (i32.load offset=20
         (get_local $0)
        )
        (i32.trunc_s/f64
         (f64.mul
          (f64.convert_s/i32
           (i32.load offset=12
            (get_local $0)
           )
          )
          (get_global $~lib/map/FREE_FACTOR)
         )
        )
       )
       (i32.load offset=4
        (get_local $0)
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
      )
     )
    )
    (set_local $5
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $5)
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.mul
       (block (result i32)
        (set_local $6
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       (block $~lib/map/ENTRY_SIZE<i16,i32>|inlined.5 (result i32)
        (i32.const 12)
       )
      )
     )
    )
    (i32.store16
     (get_local $4)
     (get_local $1)
    )
    (i32.store offset=4
     (get_local $4)
     (get_local $2)
    )
    (i32.store offset=20
     (get_local $0)
     (i32.add
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (set_local $6
     (i32.add
      (i32.load
       (get_local $0)
      )
      (i32.mul
       (i32.and
        (get_local $3)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_global $~lib/map/BUCKET_SIZE)
      )
     )
    )
    (i32.store offset=8
     (get_local $4)
     (i32.load offset=8
      (get_local $6)
     )
    )
    (i32.store offset=8
     (get_local $6)
     (get_local $4)
    )
   )
  )
 )
 (func $~lib/map/Map<i16,i32>#get (; 36 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (call $~lib/map/Map<i16,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<i16>|inlined.3 (result i32)
     (br $~lib/internal/hash/hash<i16>|inlined.3
      (call $~lib/internal/hash/hash16
       (i32.shr_s
        (i32.shl
         (get_local $1)
         (i32.const 16)
        )
        (i32.const 16)
       )
      )
     )
    )
   )
  )
  (if (result i32)
   (get_local $2)
   (i32.load offset=4
    (get_local $2)
   )
   (unreachable)
  )
 )
 (func $~lib/map/Map<i16,i32>#get:size (; 37 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/map/Map<i16,i32>#delete (; 38 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/map/Map<i16,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<i16>|inlined.4 (result i32)
     (br $~lib/internal/hash/hash<i16>|inlined.4
      (call $~lib/internal/hash/hash16
       (i32.shr_s
        (i32.shl
         (get_local $1)
         (i32.const 16)
        )
        (i32.const 16)
       )
      )
     )
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
  (i32.store offset=8
   (get_local $2)
   (i32.or
    (i32.load offset=8
     (get_local $2)
    )
    (get_global $~lib/map/EMPTY)
   )
  )
  (i32.store offset=20
   (get_local $0)
   (i32.sub
    (i32.load offset=20
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.shr_u
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $4
     (i32.ge_u
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
      (select
       (tee_local $4
        (get_global $~lib/map/INITIAL_CAPACITY)
       )
       (tee_local $5
        (i32.load offset=20
         (get_local $0)
        )
       )
       (i32.gt_u
        (get_local $4)
        (get_local $5)
       )
      )
     )
    )
    (i32.lt_s
     (i32.load offset=20
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $0)
        )
       )
       (get_global $~lib/map/FREE_FACTOR)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/map/Map<i16,i32>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/map/test<i16,i32> (; 39 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $0
   (call $~lib/map/Map<i16,i32>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<i16,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 8)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<i16,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (i32.shr_s
        (i32.shl
         (get_local $1)
         (i32.const 16)
        )
        (i32.const 16)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<i16,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 10)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<i16,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (i32.shr_s
          (i32.shl
           (get_local $1)
           (i32.const 16)
          )
          (i32.const 16)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 11)
        (i32.const 4)
       )
       (unreachable)
      )
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
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i16,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 13)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i32.lt_s
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<i16,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 17)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<i16,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (i32.shr_s
          (i32.shl
           (get_local $1)
           (i32.const 16)
          )
          (i32.const 16)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 18)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<i16,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 20)
       (i32.shr_s
        (i32.shl
         (get_local $1)
         (i32.const 16)
        )
        (i32.const 16)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<i16,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 20)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<i16,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (i32.shr_s
          (i32.shl
           (get_local $1)
           (i32.const 16)
          )
          (i32.const 16)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 21)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i16,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.lt_s
       (get_local $1)
       (i32.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<i16,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 27)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<i16,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (i32.shr_s
          (i32.shl
           (get_local $1)
           (i32.const 16)
          )
          (i32.const 16)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 28)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<i16,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<i16,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 30)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i16,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 32)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (i32.lt_s
       (get_local $1)
       (i32.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<i16,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 36)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<i16,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (i32.shr_s
        (i32.shl
         (get_local $1)
         (i32.const 16)
        )
        (i32.const 16)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<i16,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 38)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<i16,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<i16,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 40)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|3)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i16,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/map/Map<i16,i32>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i16,i32>#get:size
      (get_local $0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 46)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/map/Map<u16,i32>#clear (; 40 ;) (type $iv) (param $0 i32)
  (i32.store
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 16)
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.sub
    (get_global $~lib/map/INITIAL_CAPACITY)
    (i32.const 1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 48)
    (i32.const 1)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (get_global $~lib/map/INITIAL_CAPACITY)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=20
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<u16,i32>#constructor (; 41 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/map/Map<u16,i32>#clear
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/memory/memory.allocate
         (i32.const 24)
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
        (i32.const 0)
       )
       (get_local $1)
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/map/Map<u16,i32>#find (; 42 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
      (get_global $~lib/map/BUCKET_SIZE)
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
            (get_global $~lib/map/EMPTY)
           )
          )
         )
         (i32.eq
          (i32.load16_u
           (get_local $3)
          )
          (i32.and
           (get_local $1)
           (i32.const 65535)
          )
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
          (get_global $~lib/map/EMPTY)
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
  (i32.const 0)
 )
 (func $~lib/map/Map<u16,i32>#has (; 43 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/map/Map<u16,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<u16>|inlined.0 (result i32)
     (br $~lib/internal/hash/hash<u16>|inlined.0
      (call $~lib/internal/hash/hash16
       (i32.and
        (get_local $1)
        (i32.const 65535)
       )
      )
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<u16,i32>#rehash (; 44 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
   (i32.add
    (get_local $1)
    (i32.const 1)
   )
  )
  (set_local $3
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $2)
     (get_global $~lib/map/BUCKET_SIZE)
    )
    (i32.const 0)
   )
  )
  (set_local $4
   (i32.trunc_s/f64
    (f64.mul
     (f64.convert_s/i32
      (get_local $2)
     )
     (get_global $~lib/map/FILL_FACTOR)
    )
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $4)
     (block $~lib/map/ENTRY_SIZE<u16,i32>|inlined.1 (result i32)
      (i32.const 12)
     )
    )
    (i32.const 1)
   )
  )
  (set_local $6
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (set_local $7
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/map/ENTRY_SIZE<u16,i32>|inlined.2 (result i32)
      (i32.const 12)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
     (block
      (block
       (set_local $9
        (get_local $6)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=8
           (get_local $9)
          )
          (get_global $~lib/map/EMPTY)
         )
        )
        (block
         (set_local $10
          (get_local $8)
         )
         (i32.store16
          (get_local $10)
          (i32.load16_u
           (get_local $9)
          )
         )
         (i32.store offset=4
          (get_local $10)
          (i32.load offset=4
           (get_local $9)
          )
         )
         (set_local $11
          (i32.and
           (block $~lib/internal/hash/hash<u16>|inlined.2 (result i32)
            (set_local $11
             (i32.load16_u
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<u16>|inlined.2
             (call $~lib/internal/hash/hash16
              (get_local $11)
             )
            )
           )
           (get_local $1)
          )
         )
         (set_local $12
          (i32.add
           (get_local $3)
           (i32.mul
            (get_local $11)
            (get_global $~lib/map/BUCKET_SIZE)
           )
          )
         )
         (i32.store offset=8
          (get_local $10)
          (i32.load offset=8
           (get_local $12)
          )
         )
         (i32.store offset=8
          (get_local $12)
          (get_local $8)
         )
         (set_local $8
          (i32.add
           (get_local $8)
           (block $~lib/map/ENTRY_SIZE<u16,i32>|inlined.3 (result i32)
            (i32.const 12)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/map/ENTRY_SIZE<u16,i32>|inlined.4 (result i32)
          (i32.const 12)
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
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/map/Map<u16,i32>#set (; 45 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (block $~lib/internal/hash/hash<u16>|inlined.1 (result i32)
    (br $~lib/internal/hash/hash<u16>|inlined.1
     (call $~lib/internal/hash/hash16
      (i32.and
       (get_local $1)
       (i32.const 65535)
      )
     )
    )
   )
  )
  (set_local $4
   (call $~lib/map/Map<u16,i32>#find
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
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (i32.load offset=12
       (get_local $0)
      )
     )
     (call $~lib/map/Map<u16,i32>#rehash
      (get_local $0)
      (if (result i32)
       (i32.lt_s
        (i32.load offset=20
         (get_local $0)
        )
        (i32.trunc_s/f64
         (f64.mul
          (f64.convert_s/i32
           (i32.load offset=12
            (get_local $0)
           )
          )
          (get_global $~lib/map/FREE_FACTOR)
         )
        )
       )
       (i32.load offset=4
        (get_local $0)
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
      )
     )
    )
    (set_local $5
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $5)
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.mul
       (block (result i32)
        (set_local $6
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       (block $~lib/map/ENTRY_SIZE<u16,i32>|inlined.5 (result i32)
        (i32.const 12)
       )
      )
     )
    )
    (i32.store16
     (get_local $4)
     (get_local $1)
    )
    (i32.store offset=4
     (get_local $4)
     (get_local $2)
    )
    (i32.store offset=20
     (get_local $0)
     (i32.add
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (set_local $6
     (i32.add
      (i32.load
       (get_local $0)
      )
      (i32.mul
       (i32.and
        (get_local $3)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_global $~lib/map/BUCKET_SIZE)
      )
     )
    )
    (i32.store offset=8
     (get_local $4)
     (i32.load offset=8
      (get_local $6)
     )
    )
    (i32.store offset=8
     (get_local $6)
     (get_local $4)
    )
   )
  )
 )
 (func $~lib/map/Map<u16,i32>#get (; 46 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (call $~lib/map/Map<u16,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<u16>|inlined.3 (result i32)
     (br $~lib/internal/hash/hash<u16>|inlined.3
      (call $~lib/internal/hash/hash16
       (i32.and
        (get_local $1)
        (i32.const 65535)
       )
      )
     )
    )
   )
  )
  (if (result i32)
   (get_local $2)
   (i32.load offset=4
    (get_local $2)
   )
   (unreachable)
  )
 )
 (func $~lib/map/Map<u16,i32>#get:size (; 47 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/map/Map<u16,i32>#delete (; 48 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/map/Map<u16,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<u16>|inlined.4 (result i32)
     (br $~lib/internal/hash/hash<u16>|inlined.4
      (call $~lib/internal/hash/hash16
       (i32.and
        (get_local $1)
        (i32.const 65535)
       )
      )
     )
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
  (i32.store offset=8
   (get_local $2)
   (i32.or
    (i32.load offset=8
     (get_local $2)
    )
    (get_global $~lib/map/EMPTY)
   )
  )
  (i32.store offset=20
   (get_local $0)
   (i32.sub
    (i32.load offset=20
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.shr_u
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $4
     (i32.ge_u
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
      (select
       (tee_local $4
        (get_global $~lib/map/INITIAL_CAPACITY)
       )
       (tee_local $5
        (i32.load offset=20
         (get_local $0)
        )
       )
       (i32.gt_u
        (get_local $4)
        (get_local $5)
       )
      )
     )
    )
    (i32.lt_s
     (i32.load offset=20
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $0)
        )
       )
       (get_global $~lib/map/FREE_FACTOR)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/map/Map<u16,i32>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/map/test<u16,i32> (; 49 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $0
   (call $~lib/map/Map<u16,i32>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<u16,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 8)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<u16,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (i32.and
        (get_local $1)
        (i32.const 65535)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<u16,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 10)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<u16,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (i32.and
          (get_local $1)
          (i32.const 65535)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 11)
        (i32.const 4)
       )
       (unreachable)
      )
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
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u16,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 13)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i32.lt_u
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<u16,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 17)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<u16,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (i32.and
          (get_local $1)
          (i32.const 65535)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 18)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<u16,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 20)
       (i32.and
        (get_local $1)
        (i32.const 65535)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<u16,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 20)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<u16,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (i32.and
          (get_local $1)
          (i32.const 65535)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 21)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u16,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.lt_u
       (get_local $1)
       (i32.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<u16,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 27)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<u16,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (i32.and
          (get_local $1)
          (i32.const 65535)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 28)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<u16,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<u16,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 30)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u16,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 32)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (i32.lt_u
       (get_local $1)
       (i32.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<u16,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 36)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<u16,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (i32.and
        (get_local $1)
        (i32.const 65535)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<u16,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 38)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<u16,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<u16,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 40)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|3)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u16,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/map/Map<u16,i32>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u16,i32>#get:size
      (get_local $0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 46)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/map/Map<i32,i32>#clear (; 50 ;) (type $iv) (param $0 i32)
  (i32.store
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 16)
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.sub
    (get_global $~lib/map/INITIAL_CAPACITY)
    (i32.const 1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 48)
    (i32.const 1)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (get_global $~lib/map/INITIAL_CAPACITY)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=20
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<i32,i32>#constructor (; 51 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/map/Map<i32,i32>#clear
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/memory/memory.allocate
         (i32.const 24)
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
        (i32.const 0)
       )
       (get_local $1)
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/hash/hash32 (; 52 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (get_global $~lib/internal/hash/FNV_OFFSET)
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
    (get_global $~lib/internal/hash/FNV_PRIME)
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
    (get_global $~lib/internal/hash/FNV_PRIME)
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
    (get_global $~lib/internal/hash/FNV_PRIME)
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
    (get_global $~lib/internal/hash/FNV_PRIME)
   )
  )
  (get_local $1)
 )
 (func $~lib/map/Map<i32,i32>#find (; 53 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
      (get_global $~lib/map/BUCKET_SIZE)
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
            (get_global $~lib/map/EMPTY)
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
          (get_global $~lib/map/EMPTY)
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
  (i32.const 0)
 )
 (func $~lib/map/Map<i32,i32>#has (; 54 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/map/Map<i32,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<i32>|inlined.0 (result i32)
     (br $~lib/internal/hash/hash<i32>|inlined.0
      (call $~lib/internal/hash/hash32
       (get_local $1)
      )
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<i32,i32>#rehash (; 55 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
   (i32.add
    (get_local $1)
    (i32.const 1)
   )
  )
  (set_local $3
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $2)
     (get_global $~lib/map/BUCKET_SIZE)
    )
    (i32.const 0)
   )
  )
  (set_local $4
   (i32.trunc_s/f64
    (f64.mul
     (f64.convert_s/i32
      (get_local $2)
     )
     (get_global $~lib/map/FILL_FACTOR)
    )
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $4)
     (block $~lib/map/ENTRY_SIZE<i32,i32>|inlined.1 (result i32)
      (i32.const 12)
     )
    )
    (i32.const 1)
   )
  )
  (set_local $6
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (set_local $7
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/map/ENTRY_SIZE<i32,i32>|inlined.2 (result i32)
      (i32.const 12)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
     (block
      (block
       (set_local $9
        (get_local $6)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=8
           (get_local $9)
          )
          (get_global $~lib/map/EMPTY)
         )
        )
        (block
         (set_local $10
          (get_local $8)
         )
         (i32.store
          (get_local $10)
          (i32.load
           (get_local $9)
          )
         )
         (i32.store offset=4
          (get_local $10)
          (i32.load offset=4
           (get_local $9)
          )
         )
         (set_local $11
          (i32.and
           (block $~lib/internal/hash/hash<i32>|inlined.2 (result i32)
            (set_local $11
             (i32.load
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<i32>|inlined.2
             (call $~lib/internal/hash/hash32
              (get_local $11)
             )
            )
           )
           (get_local $1)
          )
         )
         (set_local $12
          (i32.add
           (get_local $3)
           (i32.mul
            (get_local $11)
            (get_global $~lib/map/BUCKET_SIZE)
           )
          )
         )
         (i32.store offset=8
          (get_local $10)
          (i32.load offset=8
           (get_local $12)
          )
         )
         (i32.store offset=8
          (get_local $12)
          (get_local $8)
         )
         (set_local $8
          (i32.add
           (get_local $8)
           (block $~lib/map/ENTRY_SIZE<i32,i32>|inlined.3 (result i32)
            (i32.const 12)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/map/ENTRY_SIZE<i32,i32>|inlined.4 (result i32)
          (i32.const 12)
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
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/map/Map<i32,i32>#set (; 56 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (block $~lib/internal/hash/hash<i32>|inlined.1 (result i32)
    (br $~lib/internal/hash/hash<i32>|inlined.1
     (call $~lib/internal/hash/hash32
      (get_local $1)
     )
    )
   )
  )
  (set_local $4
   (call $~lib/map/Map<i32,i32>#find
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
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (i32.load offset=12
       (get_local $0)
      )
     )
     (call $~lib/map/Map<i32,i32>#rehash
      (get_local $0)
      (if (result i32)
       (i32.lt_s
        (i32.load offset=20
         (get_local $0)
        )
        (i32.trunc_s/f64
         (f64.mul
          (f64.convert_s/i32
           (i32.load offset=12
            (get_local $0)
           )
          )
          (get_global $~lib/map/FREE_FACTOR)
         )
        )
       )
       (i32.load offset=4
        (get_local $0)
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
      )
     )
    )
    (set_local $5
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $5)
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.mul
       (block (result i32)
        (set_local $6
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       (block $~lib/map/ENTRY_SIZE<i32,i32>|inlined.5 (result i32)
        (i32.const 12)
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
    (i32.store offset=20
     (get_local $0)
     (i32.add
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (set_local $6
     (i32.add
      (i32.load
       (get_local $0)
      )
      (i32.mul
       (i32.and
        (get_local $3)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_global $~lib/map/BUCKET_SIZE)
      )
     )
    )
    (i32.store offset=8
     (get_local $4)
     (i32.load offset=8
      (get_local $6)
     )
    )
    (i32.store offset=8
     (get_local $6)
     (get_local $4)
    )
   )
  )
 )
 (func $~lib/map/Map<i32,i32>#get (; 57 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (call $~lib/map/Map<i32,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<i32>|inlined.3 (result i32)
     (br $~lib/internal/hash/hash<i32>|inlined.3
      (call $~lib/internal/hash/hash32
       (get_local $1)
      )
     )
    )
   )
  )
  (if (result i32)
   (get_local $2)
   (i32.load offset=4
    (get_local $2)
   )
   (unreachable)
  )
 )
 (func $~lib/map/Map<i32,i32>#get:size (; 58 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/map/Map<i32,i32>#delete (; 59 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/map/Map<i32,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<i32>|inlined.4 (result i32)
     (br $~lib/internal/hash/hash<i32>|inlined.4
      (call $~lib/internal/hash/hash32
       (get_local $1)
      )
     )
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
  (i32.store offset=8
   (get_local $2)
   (i32.or
    (i32.load offset=8
     (get_local $2)
    )
    (get_global $~lib/map/EMPTY)
   )
  )
  (i32.store offset=20
   (get_local $0)
   (i32.sub
    (i32.load offset=20
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.shr_u
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $4
     (i32.ge_u
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
      (select
       (tee_local $4
        (get_global $~lib/map/INITIAL_CAPACITY)
       )
       (tee_local $5
        (i32.load offset=20
         (get_local $0)
        )
       )
       (i32.gt_u
        (get_local $4)
        (get_local $5)
       )
      )
     )
    )
    (i32.lt_s
     (i32.load offset=20
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $0)
        )
       )
       (get_global $~lib/map/FREE_FACTOR)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/map/Map<i32,i32>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/map/test<i32,i32> (; 60 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $0
   (call $~lib/map/Map<i32,i32>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<i32,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 8)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<i32,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<i32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 10)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<i32,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 11)
        (i32.const 4)
       )
       (unreachable)
      )
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
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i32,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 13)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i32.lt_s
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<i32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 17)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<i32,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 18)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<i32,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 20)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<i32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 20)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<i32,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 21)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i32,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.lt_s
       (get_local $1)
       (i32.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<i32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 27)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<i32,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 28)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<i32,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<i32,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 30)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i32,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 32)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (i32.lt_s
       (get_local $1)
       (i32.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<i32,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 36)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<i32,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<i32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 38)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<i32,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<i32,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 40)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|3)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i32,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/map/Map<i32,i32>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i32,i32>#get:size
      (get_local $0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 46)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/map/Map<u32,i32>#clear (; 61 ;) (type $iv) (param $0 i32)
  (i32.store
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 16)
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.sub
    (get_global $~lib/map/INITIAL_CAPACITY)
    (i32.const 1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 48)
    (i32.const 1)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (get_global $~lib/map/INITIAL_CAPACITY)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=20
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<u32,i32>#constructor (; 62 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/map/Map<u32,i32>#clear
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/memory/memory.allocate
         (i32.const 24)
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
        (i32.const 0)
       )
       (get_local $1)
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/map/Map<u32,i32>#find (; 63 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
      (get_global $~lib/map/BUCKET_SIZE)
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
            (get_global $~lib/map/EMPTY)
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
          (get_global $~lib/map/EMPTY)
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
  (i32.const 0)
 )
 (func $~lib/map/Map<u32,i32>#has (; 64 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/map/Map<u32,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<u32>|inlined.0 (result i32)
     (br $~lib/internal/hash/hash<u32>|inlined.0
      (call $~lib/internal/hash/hash32
       (get_local $1)
      )
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<u32,i32>#rehash (; 65 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
   (i32.add
    (get_local $1)
    (i32.const 1)
   )
  )
  (set_local $3
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $2)
     (get_global $~lib/map/BUCKET_SIZE)
    )
    (i32.const 0)
   )
  )
  (set_local $4
   (i32.trunc_s/f64
    (f64.mul
     (f64.convert_s/i32
      (get_local $2)
     )
     (get_global $~lib/map/FILL_FACTOR)
    )
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $4)
     (block $~lib/map/ENTRY_SIZE<u32,i32>|inlined.1 (result i32)
      (i32.const 12)
     )
    )
    (i32.const 1)
   )
  )
  (set_local $6
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (set_local $7
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/map/ENTRY_SIZE<u32,i32>|inlined.2 (result i32)
      (i32.const 12)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
     (block
      (block
       (set_local $9
        (get_local $6)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=8
           (get_local $9)
          )
          (get_global $~lib/map/EMPTY)
         )
        )
        (block
         (set_local $10
          (get_local $8)
         )
         (i32.store
          (get_local $10)
          (i32.load
           (get_local $9)
          )
         )
         (i32.store offset=4
          (get_local $10)
          (i32.load offset=4
           (get_local $9)
          )
         )
         (set_local $11
          (i32.and
           (block $~lib/internal/hash/hash<u32>|inlined.2 (result i32)
            (set_local $11
             (i32.load
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<u32>|inlined.2
             (call $~lib/internal/hash/hash32
              (get_local $11)
             )
            )
           )
           (get_local $1)
          )
         )
         (set_local $12
          (i32.add
           (get_local $3)
           (i32.mul
            (get_local $11)
            (get_global $~lib/map/BUCKET_SIZE)
           )
          )
         )
         (i32.store offset=8
          (get_local $10)
          (i32.load offset=8
           (get_local $12)
          )
         )
         (i32.store offset=8
          (get_local $12)
          (get_local $8)
         )
         (set_local $8
          (i32.add
           (get_local $8)
           (block $~lib/map/ENTRY_SIZE<u32,i32>|inlined.3 (result i32)
            (i32.const 12)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/map/ENTRY_SIZE<u32,i32>|inlined.4 (result i32)
          (i32.const 12)
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
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/map/Map<u32,i32>#set (; 66 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (block $~lib/internal/hash/hash<u32>|inlined.1 (result i32)
    (br $~lib/internal/hash/hash<u32>|inlined.1
     (call $~lib/internal/hash/hash32
      (get_local $1)
     )
    )
   )
  )
  (set_local $4
   (call $~lib/map/Map<u32,i32>#find
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
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (i32.load offset=12
       (get_local $0)
      )
     )
     (call $~lib/map/Map<u32,i32>#rehash
      (get_local $0)
      (if (result i32)
       (i32.lt_s
        (i32.load offset=20
         (get_local $0)
        )
        (i32.trunc_s/f64
         (f64.mul
          (f64.convert_s/i32
           (i32.load offset=12
            (get_local $0)
           )
          )
          (get_global $~lib/map/FREE_FACTOR)
         )
        )
       )
       (i32.load offset=4
        (get_local $0)
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
      )
     )
    )
    (set_local $5
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $5)
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.mul
       (block (result i32)
        (set_local $6
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       (block $~lib/map/ENTRY_SIZE<u32,i32>|inlined.5 (result i32)
        (i32.const 12)
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
    (i32.store offset=20
     (get_local $0)
     (i32.add
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (set_local $6
     (i32.add
      (i32.load
       (get_local $0)
      )
      (i32.mul
       (i32.and
        (get_local $3)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_global $~lib/map/BUCKET_SIZE)
      )
     )
    )
    (i32.store offset=8
     (get_local $4)
     (i32.load offset=8
      (get_local $6)
     )
    )
    (i32.store offset=8
     (get_local $6)
     (get_local $4)
    )
   )
  )
 )
 (func $~lib/map/Map<u32,i32>#get (; 67 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (call $~lib/map/Map<u32,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<u32>|inlined.3 (result i32)
     (br $~lib/internal/hash/hash<u32>|inlined.3
      (call $~lib/internal/hash/hash32
       (get_local $1)
      )
     )
    )
   )
  )
  (if (result i32)
   (get_local $2)
   (i32.load offset=4
    (get_local $2)
   )
   (unreachable)
  )
 )
 (func $~lib/map/Map<u32,i32>#get:size (; 68 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/map/Map<u32,i32>#delete (; 69 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/map/Map<u32,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<u32>|inlined.4 (result i32)
     (br $~lib/internal/hash/hash<u32>|inlined.4
      (call $~lib/internal/hash/hash32
       (get_local $1)
      )
     )
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
  (i32.store offset=8
   (get_local $2)
   (i32.or
    (i32.load offset=8
     (get_local $2)
    )
    (get_global $~lib/map/EMPTY)
   )
  )
  (i32.store offset=20
   (get_local $0)
   (i32.sub
    (i32.load offset=20
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.shr_u
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $4
     (i32.ge_u
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
      (select
       (tee_local $4
        (get_global $~lib/map/INITIAL_CAPACITY)
       )
       (tee_local $5
        (i32.load offset=20
         (get_local $0)
        )
       )
       (i32.gt_u
        (get_local $4)
        (get_local $5)
       )
      )
     )
    )
    (i32.lt_s
     (i32.load offset=20
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $0)
        )
       )
       (get_global $~lib/map/FREE_FACTOR)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/map/Map<u32,i32>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/map/test<u32,i32> (; 70 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $0
   (call $~lib/map/Map<u32,i32>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<u32,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 8)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<u32,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<u32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 10)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<u32,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 11)
        (i32.const 4)
       )
       (unreachable)
      )
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
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u32,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 13)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i32.lt_u
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<u32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 17)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<u32,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 18)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<u32,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 20)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<u32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 20)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<u32,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 21)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u32,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.lt_u
       (get_local $1)
       (i32.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<u32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 27)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<u32,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 28)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<u32,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<u32,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 30)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u32,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 32)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (i32.lt_u
       (get_local $1)
       (i32.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<u32,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 36)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<u32,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<u32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 38)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<u32,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<u32,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 40)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|3)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u32,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/map/Map<u32,i32>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u32,i32>#get:size
      (get_local $0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 46)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/map/Map<i64,i32>#clear (; 71 ;) (type $iv) (param $0 i32)
  (i32.store
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 16)
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.sub
    (get_global $~lib/map/INITIAL_CAPACITY)
    (i32.const 1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 64)
    (i32.const 1)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (get_global $~lib/map/INITIAL_CAPACITY)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=20
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<i64,i32>#constructor (; 72 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/map/Map<i64,i32>#clear
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/memory/memory.allocate
         (i32.const 24)
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
        (i32.const 0)
       )
       (get_local $1)
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/hash/hash64 (; 73 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $1
   (i32.wrap/i64
    (get_local $0)
   )
  )
  (set_local $2
   (i32.wrap/i64
    (i64.shr_u
     (get_local $0)
     (i64.const 32)
    )
   )
  )
  (set_local $3
   (get_global $~lib/internal/hash/FNV_OFFSET)
  )
  (set_local $3
   (i32.mul
    (i32.xor
     (get_local $3)
     (i32.and
      (get_local $1)
      (i32.const 255)
     )
    )
    (get_global $~lib/internal/hash/FNV_PRIME)
   )
  )
  (set_local $3
   (i32.mul
    (i32.xor
     (get_local $3)
     (i32.and
      (i32.shr_u
       (get_local $1)
       (i32.const 8)
      )
      (i32.const 255)
     )
    )
    (get_global $~lib/internal/hash/FNV_PRIME)
   )
  )
  (set_local $3
   (i32.mul
    (i32.xor
     (get_local $3)
     (i32.and
      (i32.shr_u
       (get_local $1)
       (i32.const 16)
      )
      (i32.const 255)
     )
    )
    (get_global $~lib/internal/hash/FNV_PRIME)
   )
  )
  (set_local $3
   (i32.mul
    (i32.xor
     (get_local $3)
     (i32.shr_u
      (get_local $1)
      (i32.const 24)
     )
    )
    (get_global $~lib/internal/hash/FNV_PRIME)
   )
  )
  (set_local $3
   (i32.mul
    (i32.xor
     (get_local $3)
     (i32.and
      (get_local $2)
      (i32.const 255)
     )
    )
    (get_global $~lib/internal/hash/FNV_PRIME)
   )
  )
  (set_local $3
   (i32.mul
    (i32.xor
     (get_local $3)
     (i32.and
      (i32.shr_u
       (get_local $2)
       (i32.const 8)
      )
      (i32.const 255)
     )
    )
    (get_global $~lib/internal/hash/FNV_PRIME)
   )
  )
  (set_local $3
   (i32.mul
    (i32.xor
     (get_local $3)
     (i32.and
      (i32.shr_u
       (get_local $2)
       (i32.const 16)
      )
      (i32.const 255)
     )
    )
    (get_global $~lib/internal/hash/FNV_PRIME)
   )
  )
  (set_local $3
   (i32.mul
    (i32.xor
     (get_local $3)
     (i32.shr_u
      (get_local $2)
      (i32.const 24)
     )
    )
    (get_global $~lib/internal/hash/FNV_PRIME)
   )
  )
  (get_local $3)
 )
 (func $~lib/map/Map<i64,i32>#find (; 74 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
      (get_global $~lib/map/BUCKET_SIZE)
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
            (i32.load offset=12
             (get_local $3)
            )
            (get_global $~lib/map/EMPTY)
           )
          )
         )
         (i64.eq
          (i64.load
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
         (i32.load offset=12
          (get_local $3)
         )
         (i32.xor
          (get_global $~lib/map/EMPTY)
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
  (i32.const 0)
 )
 (func $~lib/map/Map<i64,i32>#has (; 75 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (i32.ne
   (call $~lib/map/Map<i64,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<i64>|inlined.0 (result i32)
     (br $~lib/internal/hash/hash<i64>|inlined.0
      (call $~lib/internal/hash/hash64
       (get_local $1)
      )
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<i64,i32>#rehash (; 76 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (set_local $2
   (i32.add
    (get_local $1)
    (i32.const 1)
   )
  )
  (set_local $3
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $2)
     (get_global $~lib/map/BUCKET_SIZE)
    )
    (i32.const 0)
   )
  )
  (set_local $4
   (i32.trunc_s/f64
    (f64.mul
     (f64.convert_s/i32
      (get_local $2)
     )
     (get_global $~lib/map/FILL_FACTOR)
    )
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $4)
     (block $~lib/map/ENTRY_SIZE<i64,i32>|inlined.1 (result i32)
      (i32.const 16)
     )
    )
    (i32.const 1)
   )
  )
  (set_local $6
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (set_local $7
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/map/ENTRY_SIZE<i64,i32>|inlined.2 (result i32)
      (i32.const 16)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
     (block
      (block
       (set_local $9
        (get_local $6)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=12
           (get_local $9)
          )
          (get_global $~lib/map/EMPTY)
         )
        )
        (block
         (set_local $10
          (get_local $8)
         )
         (i64.store
          (get_local $10)
          (i64.load
           (get_local $9)
          )
         )
         (i32.store offset=8
          (get_local $10)
          (i32.load offset=8
           (get_local $9)
          )
         )
         (set_local $12
          (i32.and
           (block $~lib/internal/hash/hash<i64>|inlined.2 (result i32)
            (set_local $11
             (i64.load
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<i64>|inlined.2
             (call $~lib/internal/hash/hash64
              (get_local $11)
             )
            )
           )
           (get_local $1)
          )
         )
         (set_local $13
          (i32.add
           (get_local $3)
           (i32.mul
            (get_local $12)
            (get_global $~lib/map/BUCKET_SIZE)
           )
          )
         )
         (i32.store offset=12
          (get_local $10)
          (i32.load offset=8
           (get_local $13)
          )
         )
         (i32.store offset=8
          (get_local $13)
          (get_local $8)
         )
         (set_local $8
          (i32.add
           (get_local $8)
           (block $~lib/map/ENTRY_SIZE<i64,i32>|inlined.3 (result i32)
            (i32.const 16)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/map/ENTRY_SIZE<i64,i32>|inlined.4 (result i32)
          (i32.const 16)
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
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/map/Map<i64,i32>#set (; 77 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (block $~lib/internal/hash/hash<i64>|inlined.1 (result i32)
    (br $~lib/internal/hash/hash<i64>|inlined.1
     (call $~lib/internal/hash/hash64
      (get_local $1)
     )
    )
   )
  )
  (set_local $4
   (call $~lib/map/Map<i64,i32>#find
    (get_local $0)
    (get_local $1)
    (get_local $3)
   )
  )
  (if
   (get_local $4)
   (i32.store offset=8
    (get_local $4)
    (get_local $2)
   )
   (block
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (i32.load offset=12
       (get_local $0)
      )
     )
     (call $~lib/map/Map<i64,i32>#rehash
      (get_local $0)
      (if (result i32)
       (i32.lt_s
        (i32.load offset=20
         (get_local $0)
        )
        (i32.trunc_s/f64
         (f64.mul
          (f64.convert_s/i32
           (i32.load offset=12
            (get_local $0)
           )
          )
          (get_global $~lib/map/FREE_FACTOR)
         )
        )
       )
       (i32.load offset=4
        (get_local $0)
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
      )
     )
    )
    (set_local $5
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $5)
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.mul
       (block (result i32)
        (set_local $6
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       (block $~lib/map/ENTRY_SIZE<i64,i32>|inlined.5 (result i32)
        (i32.const 16)
       )
      )
     )
    )
    (i64.store
     (get_local $4)
     (get_local $1)
    )
    (i32.store offset=8
     (get_local $4)
     (get_local $2)
    )
    (i32.store offset=20
     (get_local $0)
     (i32.add
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (set_local $6
     (i32.add
      (i32.load
       (get_local $0)
      )
      (i32.mul
       (i32.and
        (get_local $3)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_global $~lib/map/BUCKET_SIZE)
      )
     )
    )
    (i32.store offset=12
     (get_local $4)
     (i32.load offset=8
      (get_local $6)
     )
    )
    (i32.store offset=8
     (get_local $6)
     (get_local $4)
    )
   )
  )
 )
 (func $~lib/map/Map<i64,i32>#get (; 78 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $~lib/map/Map<i64,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<i64>|inlined.3 (result i32)
     (br $~lib/internal/hash/hash<i64>|inlined.3
      (call $~lib/internal/hash/hash64
       (get_local $1)
      )
     )
    )
   )
  )
  (if (result i32)
   (get_local $2)
   (i32.load offset=8
    (get_local $2)
   )
   (unreachable)
  )
 )
 (func $~lib/map/Map<i64,i32>#get:size (; 79 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/map/Map<i64,i32>#delete (; 80 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/map/Map<i64,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<i64>|inlined.4 (result i32)
     (br $~lib/internal/hash/hash<i64>|inlined.4
      (call $~lib/internal/hash/hash64
       (get_local $1)
      )
     )
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
  (i32.store offset=12
   (get_local $2)
   (i32.or
    (i32.load offset=12
     (get_local $2)
    )
    (get_global $~lib/map/EMPTY)
   )
  )
  (i32.store offset=20
   (get_local $0)
   (i32.sub
    (i32.load offset=20
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.shr_u
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $4
     (i32.ge_u
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
      (select
       (tee_local $4
        (get_global $~lib/map/INITIAL_CAPACITY)
       )
       (tee_local $5
        (i32.load offset=20
         (get_local $0)
        )
       )
       (i32.gt_u
        (get_local $4)
        (get_local $5)
       )
      )
     )
    )
    (i32.lt_s
     (i32.load offset=20
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $0)
        )
       )
       (get_global $~lib/map/FREE_FACTOR)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/map/Map<i64,i32>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/map/test<i64,i32> (; 81 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  (set_local $0
   (call $~lib/map/Map<i64,i32>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $1
    (i64.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i64.lt_s
       (get_local $1)
       (i64.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<i64,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 8)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<i64,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (i32.wrap/i64
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<i64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 10)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<i64,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (i32.wrap/i64
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 11)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i64.add
      (get_local $1)
      (i64.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i64,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 13)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (i64.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i64.lt_s
       (get_local $1)
       (i64.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<i64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 17)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<i64,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (i32.wrap/i64
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 18)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<i64,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 20)
       (i32.wrap/i64
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<i64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 20)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<i64,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (i32.wrap/i64
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 21)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i64.add
      (get_local $1)
      (i64.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i64,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $1
    (i64.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i64.lt_s
       (get_local $1)
       (i64.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<i64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 27)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<i64,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (i32.wrap/i64
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 28)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<i64,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<i64,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 30)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i64.add
      (get_local $1)
      (i64.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i64,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 32)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $1
    (i64.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (i64.lt_s
       (get_local $1)
       (i64.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<i64,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 36)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<i64,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (i32.wrap/i64
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<i64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 38)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<i64,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<i64,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 40)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i64.add
      (get_local $1)
      (i64.const 1)
     )
    )
    (br $repeat|3)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i64,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/map/Map<i64,i32>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<i64,i32>#get:size
      (get_local $0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 46)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/map/Map<u64,i32>#clear (; 82 ;) (type $iv) (param $0 i32)
  (i32.store
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 16)
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.sub
    (get_global $~lib/map/INITIAL_CAPACITY)
    (i32.const 1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 64)
    (i32.const 1)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (get_global $~lib/map/INITIAL_CAPACITY)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=20
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<u64,i32>#constructor (; 83 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/map/Map<u64,i32>#clear
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/memory/memory.allocate
         (i32.const 24)
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
        (i32.const 0)
       )
       (get_local $1)
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/map/Map<u64,i32>#find (; 84 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
      (get_global $~lib/map/BUCKET_SIZE)
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
            (i32.load offset=12
             (get_local $3)
            )
            (get_global $~lib/map/EMPTY)
           )
          )
         )
         (i64.eq
          (i64.load
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
         (i32.load offset=12
          (get_local $3)
         )
         (i32.xor
          (get_global $~lib/map/EMPTY)
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
  (i32.const 0)
 )
 (func $~lib/map/Map<u64,i32>#has (; 85 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (i32.ne
   (call $~lib/map/Map<u64,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<u64>|inlined.0 (result i32)
     (br $~lib/internal/hash/hash<u64>|inlined.0
      (call $~lib/internal/hash/hash64
       (get_local $1)
      )
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<u64,i32>#rehash (; 86 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (set_local $2
   (i32.add
    (get_local $1)
    (i32.const 1)
   )
  )
  (set_local $3
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $2)
     (get_global $~lib/map/BUCKET_SIZE)
    )
    (i32.const 0)
   )
  )
  (set_local $4
   (i32.trunc_s/f64
    (f64.mul
     (f64.convert_s/i32
      (get_local $2)
     )
     (get_global $~lib/map/FILL_FACTOR)
    )
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $4)
     (block $~lib/map/ENTRY_SIZE<u64,i32>|inlined.1 (result i32)
      (i32.const 16)
     )
    )
    (i32.const 1)
   )
  )
  (set_local $6
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (set_local $7
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/map/ENTRY_SIZE<u64,i32>|inlined.2 (result i32)
      (i32.const 16)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
     (block
      (block
       (set_local $9
        (get_local $6)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=12
           (get_local $9)
          )
          (get_global $~lib/map/EMPTY)
         )
        )
        (block
         (set_local $10
          (get_local $8)
         )
         (i64.store
          (get_local $10)
          (i64.load
           (get_local $9)
          )
         )
         (i32.store offset=8
          (get_local $10)
          (i32.load offset=8
           (get_local $9)
          )
         )
         (set_local $12
          (i32.and
           (block $~lib/internal/hash/hash<u64>|inlined.2 (result i32)
            (set_local $11
             (i64.load
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<u64>|inlined.2
             (call $~lib/internal/hash/hash64
              (get_local $11)
             )
            )
           )
           (get_local $1)
          )
         )
         (set_local $13
          (i32.add
           (get_local $3)
           (i32.mul
            (get_local $12)
            (get_global $~lib/map/BUCKET_SIZE)
           )
          )
         )
         (i32.store offset=12
          (get_local $10)
          (i32.load offset=8
           (get_local $13)
          )
         )
         (i32.store offset=8
          (get_local $13)
          (get_local $8)
         )
         (set_local $8
          (i32.add
           (get_local $8)
           (block $~lib/map/ENTRY_SIZE<u64,i32>|inlined.3 (result i32)
            (i32.const 16)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/map/ENTRY_SIZE<u64,i32>|inlined.4 (result i32)
          (i32.const 16)
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
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/map/Map<u64,i32>#set (; 87 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (block $~lib/internal/hash/hash<u64>|inlined.1 (result i32)
    (br $~lib/internal/hash/hash<u64>|inlined.1
     (call $~lib/internal/hash/hash64
      (get_local $1)
     )
    )
   )
  )
  (set_local $4
   (call $~lib/map/Map<u64,i32>#find
    (get_local $0)
    (get_local $1)
    (get_local $3)
   )
  )
  (if
   (get_local $4)
   (i32.store offset=8
    (get_local $4)
    (get_local $2)
   )
   (block
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (i32.load offset=12
       (get_local $0)
      )
     )
     (call $~lib/map/Map<u64,i32>#rehash
      (get_local $0)
      (if (result i32)
       (i32.lt_s
        (i32.load offset=20
         (get_local $0)
        )
        (i32.trunc_s/f64
         (f64.mul
          (f64.convert_s/i32
           (i32.load offset=12
            (get_local $0)
           )
          )
          (get_global $~lib/map/FREE_FACTOR)
         )
        )
       )
       (i32.load offset=4
        (get_local $0)
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
      )
     )
    )
    (set_local $5
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $5)
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.mul
       (block (result i32)
        (set_local $6
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       (block $~lib/map/ENTRY_SIZE<u64,i32>|inlined.5 (result i32)
        (i32.const 16)
       )
      )
     )
    )
    (i64.store
     (get_local $4)
     (get_local $1)
    )
    (i32.store offset=8
     (get_local $4)
     (get_local $2)
    )
    (i32.store offset=20
     (get_local $0)
     (i32.add
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (set_local $6
     (i32.add
      (i32.load
       (get_local $0)
      )
      (i32.mul
       (i32.and
        (get_local $3)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_global $~lib/map/BUCKET_SIZE)
      )
     )
    )
    (i32.store offset=12
     (get_local $4)
     (i32.load offset=8
      (get_local $6)
     )
    )
    (i32.store offset=8
     (get_local $6)
     (get_local $4)
    )
   )
  )
 )
 (func $~lib/map/Map<u64,i32>#get (; 88 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $~lib/map/Map<u64,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<u64>|inlined.3 (result i32)
     (br $~lib/internal/hash/hash<u64>|inlined.3
      (call $~lib/internal/hash/hash64
       (get_local $1)
      )
     )
    )
   )
  )
  (if (result i32)
   (get_local $2)
   (i32.load offset=8
    (get_local $2)
   )
   (unreachable)
  )
 )
 (func $~lib/map/Map<u64,i32>#get:size (; 89 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/map/Map<u64,i32>#delete (; 90 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/map/Map<u64,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<u64>|inlined.4 (result i32)
     (br $~lib/internal/hash/hash<u64>|inlined.4
      (call $~lib/internal/hash/hash64
       (get_local $1)
      )
     )
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
  (i32.store offset=12
   (get_local $2)
   (i32.or
    (i32.load offset=12
     (get_local $2)
    )
    (get_global $~lib/map/EMPTY)
   )
  )
  (i32.store offset=20
   (get_local $0)
   (i32.sub
    (i32.load offset=20
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.shr_u
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $4
     (i32.ge_u
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
      (select
       (tee_local $4
        (get_global $~lib/map/INITIAL_CAPACITY)
       )
       (tee_local $5
        (i32.load offset=20
         (get_local $0)
        )
       )
       (i32.gt_u
        (get_local $4)
        (get_local $5)
       )
      )
     )
    )
    (i32.lt_s
     (i32.load offset=20
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $0)
        )
       )
       (get_global $~lib/map/FREE_FACTOR)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/map/Map<u64,i32>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/map/test<u64,i32> (; 91 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  (set_local $0
   (call $~lib/map/Map<u64,i32>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $1
    (i64.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i64.lt_u
       (get_local $1)
       (i64.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<u64,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 8)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<u64,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (i32.wrap/i64
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<u64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 10)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<u64,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (i32.wrap/i64
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 11)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i64.add
      (get_local $1)
      (i64.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u64,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 13)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (i64.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i64.lt_u
       (get_local $1)
       (i64.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<u64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 17)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<u64,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (i32.wrap/i64
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 18)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<u64,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 20)
       (i32.wrap/i64
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<u64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 20)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<u64,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (i32.wrap/i64
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 21)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i64.add
      (get_local $1)
      (i64.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u64,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $1
    (i64.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i64.lt_u
       (get_local $1)
       (i64.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<u64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 27)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<u64,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (i32.wrap/i64
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 28)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<u64,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<u64,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 30)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i64.add
      (get_local $1)
      (i64.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u64,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 32)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $1
    (i64.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (i64.lt_u
       (get_local $1)
       (i64.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<u64,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 36)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<u64,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (i32.wrap/i64
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<u64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 38)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<u64,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<u64,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 40)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (i64.add
      (get_local $1)
      (i64.const 1)
     )
    )
    (br $repeat|3)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u64,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/map/Map<u64,i32>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<u64,i32>#get:size
      (get_local $0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 46)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/map/Map<f32,i32>#clear (; 92 ;) (type $iv) (param $0 i32)
  (i32.store
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 16)
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.sub
    (get_global $~lib/map/INITIAL_CAPACITY)
    (i32.const 1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 48)
    (i32.const 1)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (get_global $~lib/map/INITIAL_CAPACITY)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=20
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<f32,i32>#constructor (; 93 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/map/Map<f32,i32>#clear
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/memory/memory.allocate
         (i32.const 24)
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
        (i32.const 0)
       )
       (get_local $1)
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/map/Map<f32,i32>#find (; 94 ;) (type $ifii) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
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
      (get_global $~lib/map/BUCKET_SIZE)
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
            (get_global $~lib/map/EMPTY)
           )
          )
         )
         (f32.eq
          (f32.load
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
          (get_global $~lib/map/EMPTY)
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
  (i32.const 0)
 )
 (func $~lib/map/Map<f32,i32>#has (; 95 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  (i32.ne
   (call $~lib/map/Map<f32,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<f32>|inlined.0 (result i32)
     (br $~lib/internal/hash/hash<f32>|inlined.0
      (call $~lib/internal/hash/hash32
       (i32.reinterpret/f32
        (get_local $1)
       )
      )
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<f32,i32>#rehash (; 96 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 f32)
  (local $12 i32)
  (local $13 i32)
  (set_local $2
   (i32.add
    (get_local $1)
    (i32.const 1)
   )
  )
  (set_local $3
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $2)
     (get_global $~lib/map/BUCKET_SIZE)
    )
    (i32.const 0)
   )
  )
  (set_local $4
   (i32.trunc_s/f64
    (f64.mul
     (f64.convert_s/i32
      (get_local $2)
     )
     (get_global $~lib/map/FILL_FACTOR)
    )
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $4)
     (block $~lib/map/ENTRY_SIZE<f32,i32>|inlined.1 (result i32)
      (i32.const 12)
     )
    )
    (i32.const 1)
   )
  )
  (set_local $6
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (set_local $7
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/map/ENTRY_SIZE<f32,i32>|inlined.2 (result i32)
      (i32.const 12)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
     (block
      (block
       (set_local $9
        (get_local $6)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=8
           (get_local $9)
          )
          (get_global $~lib/map/EMPTY)
         )
        )
        (block
         (set_local $10
          (get_local $8)
         )
         (f32.store
          (get_local $10)
          (f32.load
           (get_local $9)
          )
         )
         (i32.store offset=4
          (get_local $10)
          (i32.load offset=4
           (get_local $9)
          )
         )
         (set_local $12
          (i32.and
           (block $~lib/internal/hash/hash<f32>|inlined.2 (result i32)
            (set_local $11
             (f32.load
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<f32>|inlined.2
             (call $~lib/internal/hash/hash32
              (i32.reinterpret/f32
               (get_local $11)
              )
             )
            )
           )
           (get_local $1)
          )
         )
         (set_local $13
          (i32.add
           (get_local $3)
           (i32.mul
            (get_local $12)
            (get_global $~lib/map/BUCKET_SIZE)
           )
          )
         )
         (i32.store offset=8
          (get_local $10)
          (i32.load offset=8
           (get_local $13)
          )
         )
         (i32.store offset=8
          (get_local $13)
          (get_local $8)
         )
         (set_local $8
          (i32.add
           (get_local $8)
           (block $~lib/map/ENTRY_SIZE<f32,i32>|inlined.3 (result i32)
            (i32.const 12)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/map/ENTRY_SIZE<f32,i32>|inlined.4 (result i32)
          (i32.const 12)
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
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/map/Map<f32,i32>#set (; 97 ;) (type $ifiv) (param $0 i32) (param $1 f32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (block $~lib/internal/hash/hash<f32>|inlined.1 (result i32)
    (br $~lib/internal/hash/hash<f32>|inlined.1
     (call $~lib/internal/hash/hash32
      (i32.reinterpret/f32
       (get_local $1)
      )
     )
    )
   )
  )
  (set_local $4
   (call $~lib/map/Map<f32,i32>#find
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
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (i32.load offset=12
       (get_local $0)
      )
     )
     (call $~lib/map/Map<f32,i32>#rehash
      (get_local $0)
      (if (result i32)
       (i32.lt_s
        (i32.load offset=20
         (get_local $0)
        )
        (i32.trunc_s/f64
         (f64.mul
          (f64.convert_s/i32
           (i32.load offset=12
            (get_local $0)
           )
          )
          (get_global $~lib/map/FREE_FACTOR)
         )
        )
       )
       (i32.load offset=4
        (get_local $0)
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
      )
     )
    )
    (set_local $5
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $5)
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.mul
       (block (result i32)
        (set_local $6
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       (block $~lib/map/ENTRY_SIZE<f32,i32>|inlined.5 (result i32)
        (i32.const 12)
       )
      )
     )
    )
    (f32.store
     (get_local $4)
     (get_local $1)
    )
    (i32.store offset=4
     (get_local $4)
     (get_local $2)
    )
    (i32.store offset=20
     (get_local $0)
     (i32.add
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (set_local $6
     (i32.add
      (i32.load
       (get_local $0)
      )
      (i32.mul
       (i32.and
        (get_local $3)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_global $~lib/map/BUCKET_SIZE)
      )
     )
    )
    (i32.store offset=8
     (get_local $4)
     (i32.load offset=8
      (get_local $6)
     )
    )
    (i32.store offset=8
     (get_local $6)
     (get_local $4)
    )
   )
  )
 )
 (func $~lib/map/Map<f32,i32>#get (; 98 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  (set_local $2
   (call $~lib/map/Map<f32,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<f32>|inlined.3 (result i32)
     (br $~lib/internal/hash/hash<f32>|inlined.3
      (call $~lib/internal/hash/hash32
       (i32.reinterpret/f32
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (if (result i32)
   (get_local $2)
   (i32.load offset=4
    (get_local $2)
   )
   (unreachable)
  )
 )
 (func $~lib/map/Map<f32,i32>#get:size (; 99 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/map/Map<f32,i32>#delete (; 100 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/map/Map<f32,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<f32>|inlined.4 (result i32)
     (br $~lib/internal/hash/hash<f32>|inlined.4
      (call $~lib/internal/hash/hash32
       (i32.reinterpret/f32
        (get_local $1)
       )
      )
     )
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
  (i32.store offset=8
   (get_local $2)
   (i32.or
    (i32.load offset=8
     (get_local $2)
    )
    (get_global $~lib/map/EMPTY)
   )
  )
  (i32.store offset=20
   (get_local $0)
   (i32.sub
    (i32.load offset=20
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.shr_u
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $4
     (i32.ge_u
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
      (select
       (tee_local $4
        (get_global $~lib/map/INITIAL_CAPACITY)
       )
       (tee_local $5
        (i32.load offset=20
         (get_local $0)
        )
       )
       (i32.gt_u
        (get_local $4)
        (get_local $5)
       )
      )
     )
    )
    (i32.lt_s
     (i32.load offset=20
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $0)
        )
       )
       (get_global $~lib/map/FREE_FACTOR)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/map/Map<f32,i32>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/map/test<f32,i32> (; 101 ;) (type $v)
  (local $0 i32)
  (local $1 f32)
  (set_local $0
   (call $~lib/map/Map<f32,i32>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $1
    (f32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (f32.lt
       (get_local $1)
       (f32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<f32,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 8)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<f32,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (i32.trunc_s/f32
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<f32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 10)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<f32,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (i32.trunc_s/f32
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 11)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (f32.add
      (get_local $1)
      (f32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<f32,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 13)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (f32.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (f32.lt
       (get_local $1)
       (f32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<f32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 17)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<f32,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (i32.trunc_s/f32
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 18)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<f32,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 20)
       (i32.trunc_s/f32
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<f32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 20)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<f32,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (i32.trunc_s/f32
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 21)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (f32.add
      (get_local $1)
      (f32.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<f32,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $1
    (f32.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (f32.lt
       (get_local $1)
       (f32.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<f32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 27)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<f32,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (i32.trunc_s/f32
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 28)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<f32,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<f32,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 30)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (f32.add
      (get_local $1)
      (f32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<f32,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 32)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $1
    (f32.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (f32.lt
       (get_local $1)
       (f32.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<f32,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 36)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<f32,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (i32.trunc_s/f32
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<f32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 38)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<f32,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<f32,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 40)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (f32.add
      (get_local $1)
      (f32.const 1)
     )
    )
    (br $repeat|3)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<f32,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/map/Map<f32,i32>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<f32,i32>#get:size
      (get_local $0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 46)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/map/Map<f64,i32>#clear (; 102 ;) (type $iv) (param $0 i32)
  (i32.store
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 16)
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.sub
    (get_global $~lib/map/INITIAL_CAPACITY)
    (i32.const 1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 64)
    (i32.const 1)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (get_global $~lib/map/INITIAL_CAPACITY)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=20
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<f64,i32>#constructor (; 103 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/map/Map<f64,i32>#clear
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/memory/memory.allocate
         (i32.const 24)
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
        (i32.const 0)
       )
       (get_local $1)
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/map/Map<f64,i32>#find (; 104 ;) (type $iFii) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
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
      (get_global $~lib/map/BUCKET_SIZE)
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
            (i32.load offset=12
             (get_local $3)
            )
            (get_global $~lib/map/EMPTY)
           )
          )
         )
         (f64.eq
          (f64.load
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
         (i32.load offset=12
          (get_local $3)
         )
         (i32.xor
          (get_global $~lib/map/EMPTY)
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
  (i32.const 0)
 )
 (func $~lib/map/Map<f64,i32>#has (; 105 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (i32.ne
   (call $~lib/map/Map<f64,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<f64>|inlined.0 (result i32)
     (br $~lib/internal/hash/hash<f64>|inlined.0
      (call $~lib/internal/hash/hash64
       (i64.reinterpret/f64
        (get_local $1)
       )
      )
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<f64,i32>#rehash (; 106 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 f64)
  (local $12 i32)
  (local $13 i32)
  (set_local $2
   (i32.add
    (get_local $1)
    (i32.const 1)
   )
  )
  (set_local $3
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $2)
     (get_global $~lib/map/BUCKET_SIZE)
    )
    (i32.const 0)
   )
  )
  (set_local $4
   (i32.trunc_s/f64
    (f64.mul
     (f64.convert_s/i32
      (get_local $2)
     )
     (get_global $~lib/map/FILL_FACTOR)
    )
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $4)
     (block $~lib/map/ENTRY_SIZE<f64,i32>|inlined.1 (result i32)
      (i32.const 16)
     )
    )
    (i32.const 1)
   )
  )
  (set_local $6
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (set_local $7
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/map/ENTRY_SIZE<f64,i32>|inlined.2 (result i32)
      (i32.const 16)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
     (block
      (block
       (set_local $9
        (get_local $6)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=12
           (get_local $9)
          )
          (get_global $~lib/map/EMPTY)
         )
        )
        (block
         (set_local $10
          (get_local $8)
         )
         (f64.store
          (get_local $10)
          (f64.load
           (get_local $9)
          )
         )
         (i32.store offset=8
          (get_local $10)
          (i32.load offset=8
           (get_local $9)
          )
         )
         (set_local $12
          (i32.and
           (block $~lib/internal/hash/hash<f64>|inlined.2 (result i32)
            (set_local $11
             (f64.load
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<f64>|inlined.2
             (call $~lib/internal/hash/hash64
              (i64.reinterpret/f64
               (get_local $11)
              )
             )
            )
           )
           (get_local $1)
          )
         )
         (set_local $13
          (i32.add
           (get_local $3)
           (i32.mul
            (get_local $12)
            (get_global $~lib/map/BUCKET_SIZE)
           )
          )
         )
         (i32.store offset=12
          (get_local $10)
          (i32.load offset=8
           (get_local $13)
          )
         )
         (i32.store offset=8
          (get_local $13)
          (get_local $8)
         )
         (set_local $8
          (i32.add
           (get_local $8)
           (block $~lib/map/ENTRY_SIZE<f64,i32>|inlined.3 (result i32)
            (i32.const 16)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/map/ENTRY_SIZE<f64,i32>|inlined.4 (result i32)
          (i32.const 16)
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
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/map/Map<f64,i32>#set (; 107 ;) (type $iFiv) (param $0 i32) (param $1 f64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (block $~lib/internal/hash/hash<f64>|inlined.1 (result i32)
    (br $~lib/internal/hash/hash<f64>|inlined.1
     (call $~lib/internal/hash/hash64
      (i64.reinterpret/f64
       (get_local $1)
      )
     )
    )
   )
  )
  (set_local $4
   (call $~lib/map/Map<f64,i32>#find
    (get_local $0)
    (get_local $1)
    (get_local $3)
   )
  )
  (if
   (get_local $4)
   (i32.store offset=8
    (get_local $4)
    (get_local $2)
   )
   (block
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (i32.load offset=12
       (get_local $0)
      )
     )
     (call $~lib/map/Map<f64,i32>#rehash
      (get_local $0)
      (if (result i32)
       (i32.lt_s
        (i32.load offset=20
         (get_local $0)
        )
        (i32.trunc_s/f64
         (f64.mul
          (f64.convert_s/i32
           (i32.load offset=12
            (get_local $0)
           )
          )
          (get_global $~lib/map/FREE_FACTOR)
         )
        )
       )
       (i32.load offset=4
        (get_local $0)
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
      )
     )
    )
    (set_local $5
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $5)
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.mul
       (block (result i32)
        (set_local $6
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       (block $~lib/map/ENTRY_SIZE<f64,i32>|inlined.5 (result i32)
        (i32.const 16)
       )
      )
     )
    )
    (f64.store
     (get_local $4)
     (get_local $1)
    )
    (i32.store offset=8
     (get_local $4)
     (get_local $2)
    )
    (i32.store offset=20
     (get_local $0)
     (i32.add
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (set_local $6
     (i32.add
      (i32.load
       (get_local $0)
      )
      (i32.mul
       (i32.and
        (get_local $3)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_global $~lib/map/BUCKET_SIZE)
      )
     )
    )
    (i32.store offset=12
     (get_local $4)
     (i32.load offset=8
      (get_local $6)
     )
    )
    (i32.store offset=8
     (get_local $6)
     (get_local $4)
    )
   )
  )
 )
 (func $~lib/map/Map<f64,i32>#get (; 108 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $~lib/map/Map<f64,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<f64>|inlined.3 (result i32)
     (br $~lib/internal/hash/hash<f64>|inlined.3
      (call $~lib/internal/hash/hash64
       (i64.reinterpret/f64
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (if (result i32)
   (get_local $2)
   (i32.load offset=8
    (get_local $2)
   )
   (unreachable)
  )
 )
 (func $~lib/map/Map<f64,i32>#get:size (; 109 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/map/Map<f64,i32>#delete (; 110 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/map/Map<f64,i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<f64>|inlined.4 (result i32)
     (br $~lib/internal/hash/hash<f64>|inlined.4
      (call $~lib/internal/hash/hash64
       (i64.reinterpret/f64
        (get_local $1)
       )
      )
     )
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
  (i32.store offset=12
   (get_local $2)
   (i32.or
    (i32.load offset=12
     (get_local $2)
    )
    (get_global $~lib/map/EMPTY)
   )
  )
  (i32.store offset=20
   (get_local $0)
   (i32.sub
    (i32.load offset=20
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.shr_u
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $4
     (i32.ge_u
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
      (select
       (tee_local $4
        (get_global $~lib/map/INITIAL_CAPACITY)
       )
       (tee_local $5
        (i32.load offset=20
         (get_local $0)
        )
       )
       (i32.gt_u
        (get_local $4)
        (get_local $5)
       )
      )
     )
    )
    (i32.lt_s
     (i32.load offset=20
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $0)
        )
       )
       (get_global $~lib/map/FREE_FACTOR)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/map/Map<f64,i32>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/map/test<f64,i32> (; 111 ;) (type $v)
  (local $0 i32)
  (local $1 f64)
  (set_local $0
   (call $~lib/map/Map<f64,i32>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $1
    (f64.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (f64.lt
       (get_local $1)
       (f64.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<f64,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 8)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<f64,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (i32.trunc_s/f64
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<f64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 10)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<f64,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (i32.trunc_s/f64
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 11)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (f64.add
      (get_local $1)
      (f64.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<f64,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 13)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (f64.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (f64.lt
       (get_local $1)
       (f64.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<f64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 17)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<f64,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 10)
         (i32.trunc_s/f64
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 18)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<f64,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 20)
       (i32.trunc_s/f64
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<f64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 20)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<f64,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (i32.trunc_s/f64
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 21)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (f64.add
      (get_local $1)
      (f64.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<f64,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $1
    (f64.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (f64.lt
       (get_local $1)
       (f64.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/map/Map<f64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 27)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $~lib/map/Map<f64,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 20)
         (i32.trunc_s/f64
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 28)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<f64,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<f64,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 30)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (f64.add
      (get_local $1)
      (f64.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<f64,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 32)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $1
    (f64.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (f64.lt
       (get_local $1)
       (f64.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<f64,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 36)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/map/Map<f64,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 10)
       (i32.trunc_s/f64
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/map/Map<f64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 38)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/map/Map<f64,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/map/Map<f64,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 40)
        (i32.const 4)
       )
       (unreachable)
      )
     )
    )
    (set_local $1
     (f64.add
      (get_local $1)
      (f64.const 1)
     )
    )
    (br $repeat|3)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<f64,i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/map/Map<f64,i32>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/map/Map<f64,i32>#get:size
      (get_local $0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 46)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $start (; 112 ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    (i32.xor
     (get_global $~lib/internal/allocator/AL_MASK)
     (i32.const -1)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (call $std/map/test<i8,i32>)
  (call $std/map/test<u8,i32>)
  (call $std/map/test<i16,i32>)
  (call $std/map/test<u16,i32>)
  (call $std/map/test<i32,i32>)
  (call $std/map/test<u32,i32>)
  (call $std/map/test<i64,i32>)
  (call $std/map/test<u64,i32>)
  (call $std/map/test<f32,i32>)
  (call $std/map/test<f64,i32>)
 )
)
