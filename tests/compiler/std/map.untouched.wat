(module
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiv (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iIiv (func (param i32 i64 i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $iIii (func (param i32 i64 i32) (result i32)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $iIIv (func (param i32 i64 i64)))
 (type $iII (func (param i32 i64) (result i64)))
 (type $iiIv (func (param i32 i32 i64)))
 (type $iiI (func (param i32 i32) (result i64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
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
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $HEAP_BASE i32 (i32.const 140))
 (memory $0 1)
 (data (i32.const 8) "\00\00\00\00")
 (data (i32.const 12) "\13\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 56) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 116) "\n\00\00\00s\00t\00d\00/\00m\00a\00p\00.\00t\00s\00")
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
     (i32.const 56)
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
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 1073741816)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 12)
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
   (call $~lib/memory/set_memory
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (i32.const 0)
    (get_local $1)
   )
  )
  (return
   (get_local $3)
  )
 )
 (func $std/map/Map<i32,i32>#clear (; 6 ;) (type $iv) (param $0 i32)
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
    (i32.const 4)
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
   (i32.const 4)
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
 (func $std/map/Map<i32,i32>#constructor (; 7 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/hash/hash32 (; 8 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/hash/hash<i32> (; 9 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/internal/hash/hash32
    (get_local $0)
   )
  )
 )
 (func $std/map/Map<i32,i32>#find (; 10 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (block $~lib/arraybuffer/ArrayBuffer#load<MapEntry<i32,i32>>|inlined.0 (result i32)
    (set_local $3
     (i32.load
      (get_local $0)
     )
    )
    (set_local $4
     (i32.and
      (get_local $2)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (br $~lib/arraybuffer/ArrayBuffer#load<MapEntry<i32,i32>>|inlined.0
     (i32.load offset=8
      (i32.add
       (get_local $3)
       (i32.mul
        (get_local $4)
        (i32.const 4)
       )
      )
     )
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (get_local $5)
     (block
      (block
       (if
        (if (result i32)
         (tee_local $4
          (i32.eqz
           (i32.and
            (i32.load offset=8
             (get_local $5)
            )
            (i32.const 1)
           )
          )
         )
         (i32.eq
          (i32.load
           (get_local $5)
          )
          (get_local $1)
         )
         (get_local $4)
        )
        (return
         (get_local $5)
        )
       )
       (set_local $5
        (i32.and
         (i32.load offset=8
          (get_local $5)
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
 (func $std/map/Map<i32,i32>#rehash (; 11 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (i32.const 4)
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
     (f64.const 2.6666666666666665)
    )
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $4)
     (block $std/map/ENTRY_SIZE<i32,i32>|inlined.1 (result i32)
      (br $std/map/ENTRY_SIZE<i32,i32>|inlined.1
       (i32.const 12)
      )
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
    (i32.const 8)
   )
  )
  (set_local $7
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
  )
  (set_local $8
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $std/map/ENTRY_SIZE<i32,i32>|inlined.2 (result i32)
      (br $std/map/ENTRY_SIZE<i32,i32>|inlined.2
       (i32.const 12)
      )
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
       (set_local $9
        (get_local $6)
       )
       (set_local $10
        (get_local $7)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=8
           (get_local $9)
          )
          (i32.const 1)
         )
        )
        (block
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
           (call $~lib/internal/hash/hash<i32>
            (i32.load
             (get_local $9)
            )
           )
           (get_local $1)
          )
         )
         (i32.store offset=8
          (get_local $10)
          (block $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.0 (result i32)
           (br $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.0
            (i32.load offset=8
             (i32.add
              (get_local $3)
              (i32.mul
               (get_local $11)
               (i32.const 4)
              )
             )
            )
           )
          )
         )
         (block $~lib/arraybuffer/ArrayBuffer#store<MapEntry<i32,i32>>|inlined.0
          (i32.store offset=8
           (i32.add
            (get_local $3)
            (i32.mul
             (get_local $11)
             (i32.const 4)
            )
           )
           (get_local $10)
          )
         )
         (set_local $7
          (i32.add
           (get_local $7)
           (block $std/map/ENTRY_SIZE<i32,i32>|inlined.3 (result i32)
            (br $std/map/ENTRY_SIZE<i32,i32>|inlined.3
             (i32.const 12)
            )
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $std/map/ENTRY_SIZE<i32,i32>|inlined.4 (result i32)
          (br $std/map/ENTRY_SIZE<i32,i32>|inlined.4
           (i32.const 12)
          )
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
 (func $std/map/Map<i32,i32>#set (; 12 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
     (i32.load offset=12
      (get_local $0)
     )
    )
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (get_local $5)
     )
     (block
      (call $std/map/Map<i32,i32>#rehash
       (get_local $0)
       (if (result i32)
        (i32.ge_s
         (i32.load offset=20
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
       (i32.load offset=12
        (get_local $0)
       )
      )
     )
    )
    (set_local $6
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $6)
       (i32.const 8)
      )
      (i32.mul
       (block (result i32)
        (set_local $7
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $7)
          (i32.const 1)
         )
        )
        (get_local $7)
       )
       (block $std/map/ENTRY_SIZE<i32,i32>|inlined.5 (result i32)
        (br $std/map/ENTRY_SIZE<i32,i32>|inlined.5
         (i32.const 12)
        )
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
    (i32.store offset=8
     (get_local $4)
     (block $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.1 (result i32)
      (set_local $8
       (i32.load
        (get_local $0)
       )
      )
      (br $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.1
       (i32.load offset=8
        (i32.add
         (get_local $8)
         (i32.mul
          (get_local $7)
          (i32.const 4)
         )
        )
       )
      )
     )
    )
    (block $~lib/arraybuffer/ArrayBuffer#store<usize>|inlined.0
     (set_local $8
      (i32.load
       (get_local $0)
      )
     )
     (i32.store offset=8
      (i32.add
       (get_local $8)
       (i32.mul
        (get_local $7)
        (i32.const 4)
       )
      )
      (get_local $4)
     )
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
   )
  )
 )
 (func $std/map/Map<i32,i32>#has (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/map/Map<i32,i32>#get (; 14 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/map/Map<i32,i32>#get:size (; 15 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $std/map/Map<i32,i32>#delete (; 16 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (i32.store offset=8
   (get_local $2)
   (i32.or
    (i32.load offset=8
     (get_local $2)
    )
    (i32.const 1)
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
     (i32.load offset=20
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=16
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
 (func $std/map/test<i32,i32> (; 17 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $0
   (call $std/map/Map<i32,i32>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $1
    (i32.const 1)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 200)
      )
     )
    )
    (block
     (call $std/map/Map<i32,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 100)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 165)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i32,i32>#has
         (get_local $0)
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 166)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i32,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 100)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 167)
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
     (call $std/map/Map<i32,i32>#get:size
      (get_local $0)
     )
     (i32.const 200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 169)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (i32.const 50)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $std/map/Map<i32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 173)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i32,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 100)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 174)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $std/map/Map<i32,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 100)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 176)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i32,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 100)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 177)
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
     (call $std/map/Map<i32,i32>#get:size
      (get_local $0)
     )
     (i32.const 200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 179)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $1
    (i32.const 1)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $std/map/Map<i32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 183)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i32,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 100)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 184)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $std/map/Map<i32,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i32,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 186)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i32,i32>#has
        (get_local $0)
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 187)
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
     (call $std/map/Map<i32,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 189)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $1
    (i32.const 1)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i32,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 193)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $std/map/Map<i32,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 100)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i32,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 195)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $std/map/Map<i32,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i32,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 197)
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
     (call $std/map/Map<i32,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 199)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $std/map/Map<i32,i32>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/map/Map<i32,i32>#get:size
      (get_local $0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 203)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $std/map/Map<i64,i32>#clear (; 18 ;) (type $iv) (param $0 i32)
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
    (i32.const 4)
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
   (i32.const 4)
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
 (func $std/map/Map<i64,i32>#constructor (; 19 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $std/map/Map<i64,i32>#clear
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/allocator/arena/allocate_memory
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
 (func $~lib/internal/hash/hash64 (; 20 ;) (type $Ii) (param $0 i64) (result i32)
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
   (i32.const -2128831035)
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
    (i32.const 16777619)
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
    (i32.const 16777619)
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
    (i32.const 16777619)
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
    (i32.const 16777619)
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
    (i32.const 16777619)
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
    (i32.const 16777619)
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
    (i32.const 16777619)
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
    (i32.const 16777619)
   )
  )
  (return
   (get_local $3)
  )
 )
 (func $~lib/internal/hash/hash<i64> (; 21 ;) (type $Ii) (param $0 i64) (result i32)
  (return
   (call $~lib/internal/hash/hash64
    (get_local $0)
   )
  )
 )
 (func $std/map/Map<i64,i32>#find (; 22 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (block $~lib/arraybuffer/ArrayBuffer#load<MapEntry<i64,i32>>|inlined.0 (result i32)
    (set_local $3
     (i32.load
      (get_local $0)
     )
    )
    (set_local $4
     (i32.and
      (get_local $2)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (br $~lib/arraybuffer/ArrayBuffer#load<MapEntry<i64,i32>>|inlined.0
     (i32.load offset=8
      (i32.add
       (get_local $3)
       (i32.mul
        (get_local $4)
        (i32.const 4)
       )
      )
     )
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (get_local $5)
     (block
      (block
       (if
        (if (result i32)
         (tee_local $4
          (i32.eqz
           (i32.and
            (i32.load offset=12
             (get_local $5)
            )
            (i32.const 1)
           )
          )
         )
         (i64.eq
          (i64.load
           (get_local $5)
          )
          (get_local $1)
         )
         (get_local $4)
        )
        (return
         (get_local $5)
        )
       )
       (set_local $5
        (i32.and
         (i32.load offset=12
          (get_local $5)
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
 (func $std/map/Map<i64,i32>#rehash (; 23 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (i32.const 4)
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
     (f64.const 2.6666666666666665)
    )
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $4)
     (block $std/map/ENTRY_SIZE<i64,i32>|inlined.1 (result i32)
      (br $std/map/ENTRY_SIZE<i64,i32>|inlined.1
       (i32.const 16)
      )
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
    (i32.const 8)
   )
  )
  (set_local $7
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
  )
  (set_local $8
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $std/map/ENTRY_SIZE<i64,i32>|inlined.2 (result i32)
      (br $std/map/ENTRY_SIZE<i64,i32>|inlined.2
       (i32.const 16)
      )
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
       (set_local $9
        (get_local $6)
       )
       (set_local $10
        (get_local $7)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=12
           (get_local $9)
          )
          (i32.const 1)
         )
        )
        (block
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
         (set_local $11
          (i32.and
           (call $~lib/internal/hash/hash<i64>
            (i64.load
             (get_local $9)
            )
           )
           (get_local $1)
          )
         )
         (i32.store offset=12
          (get_local $10)
          (block $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.2 (result i32)
           (br $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.2
            (i32.load offset=8
             (i32.add
              (get_local $3)
              (i32.mul
               (get_local $11)
               (i32.const 4)
              )
             )
            )
           )
          )
         )
         (block $~lib/arraybuffer/ArrayBuffer#store<MapEntry<i64,i32>>|inlined.0
          (i32.store offset=8
           (i32.add
            (get_local $3)
            (i32.mul
             (get_local $11)
             (i32.const 4)
            )
           )
           (get_local $10)
          )
         )
         (set_local $7
          (i32.add
           (get_local $7)
           (block $std/map/ENTRY_SIZE<i64,i32>|inlined.3 (result i32)
            (br $std/map/ENTRY_SIZE<i64,i32>|inlined.3
             (i32.const 16)
            )
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $std/map/ENTRY_SIZE<i64,i32>|inlined.4 (result i32)
          (br $std/map/ENTRY_SIZE<i64,i32>|inlined.4
           (i32.const 16)
          )
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
 (func $std/map/Map<i64,i32>#set (; 24 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $3
   (call $~lib/internal/hash/hash<i64>
    (get_local $1)
   )
  )
  (set_local $4
   (call $std/map/Map<i64,i32>#find
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
    (set_local $5
     (i32.load offset=12
      (get_local $0)
     )
    )
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (get_local $5)
     )
     (block
      (call $std/map/Map<i64,i32>#rehash
       (get_local $0)
       (if (result i32)
        (i32.ge_s
         (i32.load offset=20
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
       (i32.load offset=12
        (get_local $0)
       )
      )
     )
    )
    (set_local $6
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $6)
       (i32.const 8)
      )
      (i32.mul
       (block (result i32)
        (set_local $7
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $7)
          (i32.const 1)
         )
        )
        (get_local $7)
       )
       (block $std/map/ENTRY_SIZE<i64,i32>|inlined.5 (result i32)
        (br $std/map/ENTRY_SIZE<i64,i32>|inlined.5
         (i32.const 16)
        )
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
    (set_local $7
     (i32.and
      (get_local $3)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (i32.store offset=12
     (get_local $4)
     (block $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.3 (result i32)
      (set_local $8
       (i32.load
        (get_local $0)
       )
      )
      (br $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.3
       (i32.load offset=8
        (i32.add
         (get_local $8)
         (i32.mul
          (get_local $7)
          (i32.const 4)
         )
        )
       )
      )
     )
    )
    (block $~lib/arraybuffer/ArrayBuffer#store<usize>|inlined.1
     (set_local $8
      (i32.load
       (get_local $0)
      )
     )
     (i32.store offset=8
      (i32.add
       (get_local $8)
       (i32.mul
        (get_local $7)
        (i32.const 4)
       )
      )
      (get_local $4)
     )
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
   )
  )
 )
 (func $std/map/Map<i64,i32>#has (; 25 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (return
   (i32.ne
    (call $std/map/Map<i64,i32>#find
     (get_local $0)
     (get_local $1)
     (call $~lib/internal/hash/hash<i64>
      (get_local $1)
     )
    )
    (i32.const 0)
   )
  )
 )
 (func $std/map/Map<i64,i32>#get (; 26 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $std/map/Map<i64,i32>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i64>
     (get_local $1)
    )
   )
  )
  (return
   (if (result i32)
    (get_local $2)
    (i32.load offset=8
     (get_local $2)
    )
    (unreachable)
   )
  )
 )
 (func $std/map/Map<i64,i32>#get:size (; 27 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $std/map/Map<i64,i32>#delete (; 28 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (call $std/map/Map<i64,i32>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i64>
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
  (i32.store offset=12
   (get_local $2)
   (i32.or
    (i32.load offset=12
     (get_local $2)
    )
    (i32.const 1)
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
     (i32.load offset=20
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=16
         (get_local $0)
        )
       )
       (f64.const 0.75)
      )
     )
    )
    (get_local $3)
   )
   (call $std/map/Map<i64,i32>#rehash
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
 (func $std/map/test<i64,i32> (; 29 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  (set_local $0
   (call $std/map/Map<i64,i32>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $1
    (i64.const 1)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i64.le_s
       (get_local $1)
       (i64.const 200)
      )
     )
    )
    (block
     (call $std/map/Map<i64,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 100)
       (i32.wrap/i64
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 165)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i64,i32>#has
         (get_local $0)
         (i64.add
          (get_local $1)
          (i64.const 1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 166)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i64.eq
        (i64.extend_s/i32
         (call $std/map/Map<i64,i32>#get
          (get_local $0)
          (get_local $1)
         )
        )
        (i64.add
         (i64.extend_s/i32
          (i32.const 100)
         )
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 167)
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
     (call $std/map/Map<i64,i32>#get:size
      (get_local $0)
     )
     (i32.const 200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 169)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (i64.const 50)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i64.le_s
       (get_local $1)
       (i64.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $std/map/Map<i64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 173)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i64,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 100)
         (i32.wrap/i64
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 174)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $std/map/Map<i64,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 100)
       (i32.wrap/i64
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 176)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i64,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 100)
         (i32.wrap/i64
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 177)
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
     (call $std/map/Map<i64,i32>#get:size
      (get_local $0)
     )
     (i32.const 200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 179)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $1
    (i64.const 1)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i64.le_s
       (get_local $1)
       (i64.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $std/map/Map<i64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 183)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i64,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 100)
         (i32.wrap/i64
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 184)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $std/map/Map<i64,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i64,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 186)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i64,i32>#has
        (get_local $0)
        (i64.add
         (get_local $1)
         (i64.const 1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 187)
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
     (call $std/map/Map<i64,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 189)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $1
    (i64.const 1)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (i64.le_s
       (get_local $1)
       (i64.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i64,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 193)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $std/map/Map<i64,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 100)
       (i32.wrap/i64
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i64,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 195)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $std/map/Map<i64,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i64,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 197)
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
     (call $std/map/Map<i64,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 199)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $std/map/Map<i64,i32>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/map/Map<i64,i32>#get:size
      (get_local $0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 203)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $std/map/Map<i64,i64>#clear (; 30 ;) (type $iv) (param $0 i32)
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
    (i32.const 4)
    (i32.const 1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 96)
    (i32.const 1)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (i32.const 4)
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
 (func $std/map/Map<i64,i64>#constructor (; 31 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $std/map/Map<i64,i64>#clear
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/allocator/arena/allocate_memory
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
 (func $std/map/Map<i64,i64>#find (; 32 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (block $~lib/arraybuffer/ArrayBuffer#load<MapEntry<i64,i64>>|inlined.0 (result i32)
    (set_local $3
     (i32.load
      (get_local $0)
     )
    )
    (set_local $4
     (i32.and
      (get_local $2)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (br $~lib/arraybuffer/ArrayBuffer#load<MapEntry<i64,i64>>|inlined.0
     (i32.load offset=8
      (i32.add
       (get_local $3)
       (i32.mul
        (get_local $4)
        (i32.const 4)
       )
      )
     )
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (get_local $5)
     (block
      (block
       (if
        (if (result i32)
         (tee_local $4
          (i32.eqz
           (i32.and
            (i32.load offset=16
             (get_local $5)
            )
            (i32.const 1)
           )
          )
         )
         (i64.eq
          (i64.load
           (get_local $5)
          )
          (get_local $1)
         )
         (get_local $4)
        )
        (return
         (get_local $5)
        )
       )
       (set_local $5
        (i32.and
         (i32.load offset=16
          (get_local $5)
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
 (func $std/map/Map<i64,i64>#rehash (; 33 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (i32.const 4)
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
     (f64.const 2.6666666666666665)
    )
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $4)
     (block $std/map/ENTRY_SIZE<i64,i64>|inlined.1 (result i32)
      (br $std/map/ENTRY_SIZE<i64,i64>|inlined.1
       (i32.const 24)
      )
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
    (i32.const 8)
   )
  )
  (set_local $7
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
  )
  (set_local $8
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $std/map/ENTRY_SIZE<i64,i64>|inlined.2 (result i32)
      (br $std/map/ENTRY_SIZE<i64,i64>|inlined.2
       (i32.const 24)
      )
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
       (set_local $9
        (get_local $6)
       )
       (set_local $10
        (get_local $7)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=16
           (get_local $9)
          )
          (i32.const 1)
         )
        )
        (block
         (i64.store
          (get_local $10)
          (i64.load
           (get_local $9)
          )
         )
         (i64.store offset=8
          (get_local $10)
          (i64.load offset=8
           (get_local $9)
          )
         )
         (set_local $11
          (i32.and
           (call $~lib/internal/hash/hash<i64>
            (i64.load
             (get_local $9)
            )
           )
           (get_local $1)
          )
         )
         (i32.store offset=16
          (get_local $10)
          (block $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.4 (result i32)
           (br $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.4
            (i32.load offset=8
             (i32.add
              (get_local $3)
              (i32.mul
               (get_local $11)
               (i32.const 4)
              )
             )
            )
           )
          )
         )
         (block $~lib/arraybuffer/ArrayBuffer#store<MapEntry<i64,i64>>|inlined.0
          (i32.store offset=8
           (i32.add
            (get_local $3)
            (i32.mul
             (get_local $11)
             (i32.const 4)
            )
           )
           (get_local $10)
          )
         )
         (set_local $7
          (i32.add
           (get_local $7)
           (block $std/map/ENTRY_SIZE<i64,i64>|inlined.3 (result i32)
            (br $std/map/ENTRY_SIZE<i64,i64>|inlined.3
             (i32.const 24)
            )
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $std/map/ENTRY_SIZE<i64,i64>|inlined.4 (result i32)
          (br $std/map/ENTRY_SIZE<i64,i64>|inlined.4
           (i32.const 24)
          )
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
 (func $std/map/Map<i64,i64>#set (; 34 ;) (type $iIIv) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $3
   (call $~lib/internal/hash/hash<i64>
    (get_local $1)
   )
  )
  (set_local $4
   (call $std/map/Map<i64,i64>#find
    (get_local $0)
    (get_local $1)
    (get_local $3)
   )
  )
  (if
   (get_local $4)
   (i64.store offset=8
    (get_local $4)
    (get_local $2)
   )
   (block
    (set_local $5
     (i32.load offset=12
      (get_local $0)
     )
    )
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (get_local $5)
     )
     (block
      (call $std/map/Map<i64,i64>#rehash
       (get_local $0)
       (if (result i32)
        (i32.ge_s
         (i32.load offset=20
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
       (i32.load offset=12
        (get_local $0)
       )
      )
     )
    )
    (set_local $6
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $6)
       (i32.const 8)
      )
      (i32.mul
       (block (result i32)
        (set_local $7
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $7)
          (i32.const 1)
         )
        )
        (get_local $7)
       )
       (block $std/map/ENTRY_SIZE<i64,i64>|inlined.5 (result i32)
        (br $std/map/ENTRY_SIZE<i64,i64>|inlined.5
         (i32.const 24)
        )
       )
      )
     )
    )
    (i64.store
     (get_local $4)
     (get_local $1)
    )
    (i64.store offset=8
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
    (i32.store offset=16
     (get_local $4)
     (block $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.5 (result i32)
      (set_local $8
       (i32.load
        (get_local $0)
       )
      )
      (br $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.5
       (i32.load offset=8
        (i32.add
         (get_local $8)
         (i32.mul
          (get_local $7)
          (i32.const 4)
         )
        )
       )
      )
     )
    )
    (block $~lib/arraybuffer/ArrayBuffer#store<usize>|inlined.2
     (set_local $8
      (i32.load
       (get_local $0)
      )
     )
     (i32.store offset=8
      (i32.add
       (get_local $8)
       (i32.mul
        (get_local $7)
        (i32.const 4)
       )
      )
      (get_local $4)
     )
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
   )
  )
 )
 (func $std/map/Map<i64,i64>#has (; 35 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (return
   (i32.ne
    (call $std/map/Map<i64,i64>#find
     (get_local $0)
     (get_local $1)
     (call $~lib/internal/hash/hash<i64>
      (get_local $1)
     )
    )
    (i32.const 0)
   )
  )
 )
 (func $std/map/Map<i64,i64>#get (; 36 ;) (type $iII) (param $0 i32) (param $1 i64) (result i64)
  (local $2 i32)
  (set_local $2
   (call $std/map/Map<i64,i64>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i64>
     (get_local $1)
    )
   )
  )
  (return
   (if (result i64)
    (get_local $2)
    (i64.load offset=8
     (get_local $2)
    )
    (unreachable)
   )
  )
 )
 (func $std/map/Map<i64,i64>#get:size (; 37 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $std/map/Map<i64,i64>#delete (; 38 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (call $std/map/Map<i64,i64>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i64>
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
   (get_local $2)
   (i32.or
    (i32.load offset=16
     (get_local $2)
    )
    (i32.const 1)
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
     (i32.load offset=20
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=16
         (get_local $0)
        )
       )
       (f64.const 0.75)
      )
     )
    )
    (get_local $3)
   )
   (call $std/map/Map<i64,i64>#rehash
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
 (func $std/map/test<i64,i64> (; 39 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  (set_local $0
   (call $std/map/Map<i64,i64>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $1
    (i64.const 1)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i64.le_s
       (get_local $1)
       (i64.const 200)
      )
     )
    )
    (block
     (call $std/map/Map<i64,i64>#set
      (get_local $0)
      (get_local $1)
      (i64.add
       (i64.const 100)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i64,i64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 165)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i64,i64>#has
         (get_local $0)
         (i64.add
          (get_local $1)
          (i64.const 1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 166)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i64.eq
        (call $std/map/Map<i64,i64>#get
         (get_local $0)
         (get_local $1)
        )
        (i64.add
         (i64.const 100)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 167)
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
     (call $std/map/Map<i64,i64>#get:size
      (get_local $0)
     )
     (i32.const 200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 169)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (i64.const 50)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i64.le_s
       (get_local $1)
       (i64.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $std/map/Map<i64,i64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 173)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i64.eq
        (call $std/map/Map<i64,i64>#get
         (get_local $0)
         (get_local $1)
        )
        (i64.add
         (i64.const 100)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 174)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $std/map/Map<i64,i64>#set
      (get_local $0)
      (get_local $1)
      (i64.add
       (i64.const 100)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i64,i64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 176)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i64.eq
        (call $std/map/Map<i64,i64>#get
         (get_local $0)
         (get_local $1)
        )
        (i64.add
         (i64.const 100)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 177)
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
     (call $std/map/Map<i64,i64>#get:size
      (get_local $0)
     )
     (i32.const 200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 179)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $1
    (i64.const 1)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i64.le_s
       (get_local $1)
       (i64.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $std/map/Map<i64,i64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 183)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i64.eq
        (call $std/map/Map<i64,i64>#get
         (get_local $0)
         (get_local $1)
        )
        (i64.add
         (i64.const 100)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 184)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $std/map/Map<i64,i64>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i64,i64>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 186)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i64,i64>#has
        (get_local $0)
        (i64.add
         (get_local $1)
         (i64.const 1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 187)
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
     (call $std/map/Map<i64,i64>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 189)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $1
    (i64.const 1)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (i64.le_s
       (get_local $1)
       (i64.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i64,i64>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 193)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $std/map/Map<i64,i64>#set
      (get_local $0)
      (get_local $1)
      (i64.add
       (i64.const 100)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i64,i64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 195)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $std/map/Map<i64,i64>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i64,i64>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 197)
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
     (call $std/map/Map<i64,i64>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 199)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $std/map/Map<i64,i64>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/map/Map<i64,i64>#get:size
      (get_local $0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 203)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $std/map/Map<i32,i64>#clear (; 40 ;) (type $iv) (param $0 i32)
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
    (i32.const 4)
    (i32.const 1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 96)
    (i32.const 1)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (i32.const 4)
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
 (func $std/map/Map<i32,i64>#constructor (; 41 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $std/map/Map<i32,i64>#clear
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/allocator/arena/allocate_memory
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
 (func $std/map/Map<i32,i64>#find (; 42 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (block $~lib/arraybuffer/ArrayBuffer#load<MapEntry<i32,i64>>|inlined.0 (result i32)
    (set_local $3
     (i32.load
      (get_local $0)
     )
    )
    (set_local $4
     (i32.and
      (get_local $2)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (br $~lib/arraybuffer/ArrayBuffer#load<MapEntry<i32,i64>>|inlined.0
     (i32.load offset=8
      (i32.add
       (get_local $3)
       (i32.mul
        (get_local $4)
        (i32.const 4)
       )
      )
     )
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (get_local $5)
     (block
      (block
       (if
        (if (result i32)
         (tee_local $4
          (i32.eqz
           (i32.and
            (i32.load offset=16
             (get_local $5)
            )
            (i32.const 1)
           )
          )
         )
         (i32.eq
          (i32.load
           (get_local $5)
          )
          (get_local $1)
         )
         (get_local $4)
        )
        (return
         (get_local $5)
        )
       )
       (set_local $5
        (i32.and
         (i32.load offset=16
          (get_local $5)
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
 (func $std/map/Map<i32,i64>#rehash (; 43 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (i32.const 4)
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
     (f64.const 2.6666666666666665)
    )
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $4)
     (block $std/map/ENTRY_SIZE<i32,i64>|inlined.1 (result i32)
      (br $std/map/ENTRY_SIZE<i32,i64>|inlined.1
       (i32.const 24)
      )
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
    (i32.const 8)
   )
  )
  (set_local $7
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
  )
  (set_local $8
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $std/map/ENTRY_SIZE<i32,i64>|inlined.2 (result i32)
      (br $std/map/ENTRY_SIZE<i32,i64>|inlined.2
       (i32.const 24)
      )
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
       (set_local $9
        (get_local $6)
       )
       (set_local $10
        (get_local $7)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=16
           (get_local $9)
          )
          (i32.const 1)
         )
        )
        (block
         (i32.store
          (get_local $10)
          (i32.load
           (get_local $9)
          )
         )
         (i64.store offset=8
          (get_local $10)
          (i64.load offset=8
           (get_local $9)
          )
         )
         (set_local $11
          (i32.and
           (call $~lib/internal/hash/hash<i32>
            (i32.load
             (get_local $9)
            )
           )
           (get_local $1)
          )
         )
         (i32.store offset=16
          (get_local $10)
          (block $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.6 (result i32)
           (br $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.6
            (i32.load offset=8
             (i32.add
              (get_local $3)
              (i32.mul
               (get_local $11)
               (i32.const 4)
              )
             )
            )
           )
          )
         )
         (block $~lib/arraybuffer/ArrayBuffer#store<MapEntry<i32,i64>>|inlined.0
          (i32.store offset=8
           (i32.add
            (get_local $3)
            (i32.mul
             (get_local $11)
             (i32.const 4)
            )
           )
           (get_local $10)
          )
         )
         (set_local $7
          (i32.add
           (get_local $7)
           (block $std/map/ENTRY_SIZE<i32,i64>|inlined.3 (result i32)
            (br $std/map/ENTRY_SIZE<i32,i64>|inlined.3
             (i32.const 24)
            )
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $std/map/ENTRY_SIZE<i32,i64>|inlined.4 (result i32)
          (br $std/map/ENTRY_SIZE<i32,i64>|inlined.4
           (i32.const 24)
          )
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
 (func $std/map/Map<i32,i64>#set (; 44 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
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
   (call $std/map/Map<i32,i64>#find
    (get_local $0)
    (get_local $1)
    (get_local $3)
   )
  )
  (if
   (get_local $4)
   (i64.store offset=8
    (get_local $4)
    (get_local $2)
   )
   (block
    (set_local $5
     (i32.load offset=12
      (get_local $0)
     )
    )
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (get_local $5)
     )
     (block
      (call $std/map/Map<i32,i64>#rehash
       (get_local $0)
       (if (result i32)
        (i32.ge_s
         (i32.load offset=20
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
       (i32.load offset=12
        (get_local $0)
       )
      )
     )
    )
    (set_local $6
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $6)
       (i32.const 8)
      )
      (i32.mul
       (block (result i32)
        (set_local $7
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $7)
          (i32.const 1)
         )
        )
        (get_local $7)
       )
       (block $std/map/ENTRY_SIZE<i32,i64>|inlined.5 (result i32)
        (br $std/map/ENTRY_SIZE<i32,i64>|inlined.5
         (i32.const 24)
        )
       )
      )
     )
    )
    (i32.store
     (get_local $4)
     (get_local $1)
    )
    (i64.store offset=8
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
    (i32.store offset=16
     (get_local $4)
     (block $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.7 (result i32)
      (set_local $8
       (i32.load
        (get_local $0)
       )
      )
      (br $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.7
       (i32.load offset=8
        (i32.add
         (get_local $8)
         (i32.mul
          (get_local $7)
          (i32.const 4)
         )
        )
       )
      )
     )
    )
    (block $~lib/arraybuffer/ArrayBuffer#store<usize>|inlined.3
     (set_local $8
      (i32.load
       (get_local $0)
      )
     )
     (i32.store offset=8
      (i32.add
       (get_local $8)
       (i32.mul
        (get_local $7)
        (i32.const 4)
       )
      )
      (get_local $4)
     )
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
   )
  )
 )
 (func $std/map/Map<i32,i64>#has (; 45 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (i32.ne
    (call $std/map/Map<i32,i64>#find
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
 (func $std/map/Map<i32,i64>#get (; 46 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (set_local $2
   (call $std/map/Map<i32,i64>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i32>
     (get_local $1)
    )
   )
  )
  (return
   (if (result i64)
    (get_local $2)
    (i64.load offset=8
     (get_local $2)
    )
    (unreachable)
   )
  )
 )
 (func $std/map/Map<i32,i64>#get:size (; 47 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $std/map/Map<i32,i64>#delete (; 48 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (call $std/map/Map<i32,i64>#find
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
   (get_local $2)
   (i32.or
    (i32.load offset=16
     (get_local $2)
    )
    (i32.const 1)
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
     (i32.load offset=20
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=16
         (get_local $0)
        )
       )
       (f64.const 0.75)
      )
     )
    )
    (get_local $3)
   )
   (call $std/map/Map<i32,i64>#rehash
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
 (func $std/map/test<i32,i64> (; 49 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $0
   (call $std/map/Map<i32,i64>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $1
    (i32.const 1)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 200)
      )
     )
    )
    (block
     (call $std/map/Map<i32,i64>#set
      (get_local $0)
      (get_local $1)
      (i64.add
       (i64.const 100)
       (i64.extend_s/i32
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i32,i64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 165)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i32,i64>#has
         (get_local $0)
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 166)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i64.eq
        (call $std/map/Map<i32,i64>#get
         (get_local $0)
         (get_local $1)
        )
        (i64.add
         (i64.const 100)
         (i64.extend_s/i32
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 167)
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
     (call $std/map/Map<i32,i64>#get:size
      (get_local $0)
     )
     (i32.const 200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 169)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (i32.const 50)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $std/map/Map<i32,i64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 173)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i64.eq
        (call $std/map/Map<i32,i64>#get
         (get_local $0)
         (get_local $1)
        )
        (i64.add
         (i64.const 100)
         (i64.extend_s/i32
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 174)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $std/map/Map<i32,i64>#set
      (get_local $0)
      (get_local $1)
      (i64.add
       (i64.const 100)
       (i64.extend_s/i32
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i32,i64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 176)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i64.eq
        (call $std/map/Map<i32,i64>#get
         (get_local $0)
         (get_local $1)
        )
        (i64.add
         (i64.const 100)
         (i64.extend_s/i32
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 177)
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
     (call $std/map/Map<i32,i64>#get:size
      (get_local $0)
     )
     (i32.const 200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 179)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $1
    (i32.const 1)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $std/map/Map<i32,i64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 183)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i64.eq
        (call $std/map/Map<i32,i64>#get
         (get_local $0)
         (get_local $1)
        )
        (i64.add
         (i64.const 100)
         (i64.extend_s/i32
          (get_local $1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 184)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $std/map/Map<i32,i64>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i32,i64>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 186)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i32,i64>#has
        (get_local $0)
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 187)
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
     (call $std/map/Map<i32,i64>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 189)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $1
    (i32.const 1)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i32,i64>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 193)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $std/map/Map<i32,i64>#set
      (get_local $0)
      (get_local $1)
      (i64.add
       (i64.const 100)
       (i64.extend_s/i32
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i32,i64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 195)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $std/map/Map<i32,i64>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i32,i64>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 197)
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
     (call $std/map/Map<i32,i64>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 199)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $std/map/Map<i32,i64>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/map/Map<i32,i64>#get:size
      (get_local $0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 203)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $std/map/Map<i16,i32>#clear (; 50 ;) (type $iv) (param $0 i32)
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
    (i32.const 4)
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
   (i32.const 4)
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
 (func $std/map/Map<i16,i32>#constructor (; 51 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $std/map/Map<i16,i32>#clear
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/allocator/arena/allocate_memory
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
 (func $~lib/internal/hash/hash16 (; 52 ;) (type $ii) (param $0 i32) (result i32)
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
     (i32.shr_u
      (get_local $0)
      (i32.const 8)
     )
    )
    (i32.const 16777619)
   )
  )
  (return
   (get_local $1)
  )
 )
 (func $~lib/internal/hash/hash<i16> (; 53 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/internal/hash/hash16
    (i32.shr_s
     (i32.shl
      (get_local $0)
      (i32.const 16)
     )
     (i32.const 16)
    )
   )
  )
 )
 (func $std/map/Map<i16,i32>#find (; 54 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (block $~lib/arraybuffer/ArrayBuffer#load<MapEntry<i16,i32>>|inlined.0 (result i32)
    (set_local $3
     (i32.load
      (get_local $0)
     )
    )
    (set_local $4
     (i32.and
      (get_local $2)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (br $~lib/arraybuffer/ArrayBuffer#load<MapEntry<i16,i32>>|inlined.0
     (i32.load offset=8
      (i32.add
       (get_local $3)
       (i32.mul
        (get_local $4)
        (i32.const 4)
       )
      )
     )
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (get_local $5)
     (block
      (block
       (if
        (if (result i32)
         (tee_local $4
          (i32.eqz
           (i32.and
            (i32.load offset=8
             (get_local $5)
            )
            (i32.const 1)
           )
          )
         )
         (i32.eq
          (i32.load16_s
           (get_local $5)
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
         (get_local $5)
        )
       )
       (set_local $5
        (i32.and
         (i32.load offset=8
          (get_local $5)
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
 (func $std/map/Map<i16,i32>#rehash (; 55 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (i32.const 4)
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
     (f64.const 2.6666666666666665)
    )
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $4)
     (block $std/map/ENTRY_SIZE<i16,i32>|inlined.1 (result i32)
      (br $std/map/ENTRY_SIZE<i16,i32>|inlined.1
       (i32.const 12)
      )
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
    (i32.const 8)
   )
  )
  (set_local $7
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
  )
  (set_local $8
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $std/map/ENTRY_SIZE<i16,i32>|inlined.2 (result i32)
      (br $std/map/ENTRY_SIZE<i16,i32>|inlined.2
       (i32.const 12)
      )
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
       (set_local $9
        (get_local $6)
       )
       (set_local $10
        (get_local $7)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=8
           (get_local $9)
          )
          (i32.const 1)
         )
        )
        (block
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
           (call $~lib/internal/hash/hash<i16>
            (i32.load16_s
             (get_local $9)
            )
           )
           (get_local $1)
          )
         )
         (i32.store offset=8
          (get_local $10)
          (block $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.8 (result i32)
           (br $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.8
            (i32.load offset=8
             (i32.add
              (get_local $3)
              (i32.mul
               (get_local $11)
               (i32.const 4)
              )
             )
            )
           )
          )
         )
         (block $~lib/arraybuffer/ArrayBuffer#store<MapEntry<i16,i32>>|inlined.0
          (i32.store offset=8
           (i32.add
            (get_local $3)
            (i32.mul
             (get_local $11)
             (i32.const 4)
            )
           )
           (get_local $10)
          )
         )
         (set_local $7
          (i32.add
           (get_local $7)
           (block $std/map/ENTRY_SIZE<i16,i32>|inlined.3 (result i32)
            (br $std/map/ENTRY_SIZE<i16,i32>|inlined.3
             (i32.const 12)
            )
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $std/map/ENTRY_SIZE<i16,i32>|inlined.4 (result i32)
          (br $std/map/ENTRY_SIZE<i16,i32>|inlined.4
           (i32.const 12)
          )
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
 (func $std/map/Map<i16,i32>#set (; 56 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $3
   (call $~lib/internal/hash/hash<i16>
    (get_local $1)
   )
  )
  (set_local $4
   (call $std/map/Map<i16,i32>#find
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
     (i32.load offset=12
      (get_local $0)
     )
    )
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (get_local $5)
     )
     (block
      (call $std/map/Map<i16,i32>#rehash
       (get_local $0)
       (if (result i32)
        (i32.ge_s
         (i32.load offset=20
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
       (i32.load offset=12
        (get_local $0)
       )
      )
     )
    )
    (set_local $6
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $6)
       (i32.const 8)
      )
      (i32.mul
       (block (result i32)
        (set_local $7
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $7)
          (i32.const 1)
         )
        )
        (get_local $7)
       )
       (block $std/map/ENTRY_SIZE<i16,i32>|inlined.5 (result i32)
        (br $std/map/ENTRY_SIZE<i16,i32>|inlined.5
         (i32.const 12)
        )
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
    (set_local $7
     (i32.and
      (get_local $3)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (i32.store offset=8
     (get_local $4)
     (block $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.9 (result i32)
      (set_local $8
       (i32.load
        (get_local $0)
       )
      )
      (br $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.9
       (i32.load offset=8
        (i32.add
         (get_local $8)
         (i32.mul
          (get_local $7)
          (i32.const 4)
         )
        )
       )
      )
     )
    )
    (block $~lib/arraybuffer/ArrayBuffer#store<usize>|inlined.4
     (set_local $8
      (i32.load
       (get_local $0)
      )
     )
     (i32.store offset=8
      (i32.add
       (get_local $8)
       (i32.mul
        (get_local $7)
        (i32.const 4)
       )
      )
      (get_local $4)
     )
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
   )
  )
 )
 (func $std/map/Map<i16,i32>#has (; 57 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (i32.ne
    (call $std/map/Map<i16,i32>#find
     (get_local $0)
     (get_local $1)
     (call $~lib/internal/hash/hash<i16>
      (get_local $1)
     )
    )
    (i32.const 0)
   )
  )
 )
 (func $std/map/Map<i16,i32>#get (; 58 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (call $std/map/Map<i16,i32>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i16>
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
 (func $std/map/Map<i16,i32>#get:size (; 59 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $std/map/Map<i16,i32>#delete (; 60 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (call $std/map/Map<i16,i32>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i16>
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
  (i32.store offset=8
   (get_local $2)
   (i32.or
    (i32.load offset=8
     (get_local $2)
    )
    (i32.const 1)
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
     (i32.load offset=20
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=16
         (get_local $0)
        )
       )
       (f64.const 0.75)
      )
     )
    )
    (get_local $3)
   )
   (call $std/map/Map<i16,i32>#rehash
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
 (func $std/map/test<i16,i32> (; 61 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $0
   (call $std/map/Map<i16,i32>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $1
    (i32.const 1)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 200)
      )
     )
    )
    (block
     (call $std/map/Map<i16,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 100)
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
       (call $std/map/Map<i16,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 165)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i16,i32>#has
         (get_local $0)
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 166)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i16,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 100)
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
        (i32.const 116)
        (i32.const 167)
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
     (call $std/map/Map<i16,i32>#get:size
      (get_local $0)
     )
     (i32.const 200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 169)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (i32.const 50)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $std/map/Map<i16,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 173)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i16,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 100)
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
        (i32.const 116)
        (i32.const 174)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $std/map/Map<i16,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 100)
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
       (call $std/map/Map<i16,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 176)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i16,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 100)
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
        (i32.const 116)
        (i32.const 177)
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
     (call $std/map/Map<i16,i32>#get:size
      (get_local $0)
     )
     (i32.const 200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 179)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $1
    (i32.const 1)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $std/map/Map<i16,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 183)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i16,i32>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 100)
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
        (i32.const 116)
        (i32.const 184)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $std/map/Map<i16,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i16,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 186)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i16,i32>#has
        (get_local $0)
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 187)
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
     (call $std/map/Map<i16,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 189)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $1
    (i32.const 1)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i16,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 193)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $std/map/Map<i16,i32>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 100)
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
       (call $std/map/Map<i16,i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 195)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $std/map/Map<i16,i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i16,i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 197)
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
     (call $std/map/Map<i16,i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 199)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $std/map/Map<i16,i32>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/map/Map<i16,i32>#get:size
      (get_local $0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 203)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $std/map/Map<i16,i64>#clear (; 62 ;) (type $iv) (param $0 i32)
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
    (i32.const 4)
    (i32.const 1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 96)
    (i32.const 1)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (i32.const 4)
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
 (func $std/map/Map<i16,i64>#constructor (; 63 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $std/map/Map<i16,i64>#clear
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/allocator/arena/allocate_memory
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
 (func $std/map/Map<i16,i64>#find (; 64 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (block $~lib/arraybuffer/ArrayBuffer#load<MapEntry<i16,i64>>|inlined.0 (result i32)
    (set_local $3
     (i32.load
      (get_local $0)
     )
    )
    (set_local $4
     (i32.and
      (get_local $2)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (br $~lib/arraybuffer/ArrayBuffer#load<MapEntry<i16,i64>>|inlined.0
     (i32.load offset=8
      (i32.add
       (get_local $3)
       (i32.mul
        (get_local $4)
        (i32.const 4)
       )
      )
     )
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (get_local $5)
     (block
      (block
       (if
        (if (result i32)
         (tee_local $4
          (i32.eqz
           (i32.and
            (i32.load offset=16
             (get_local $5)
            )
            (i32.const 1)
           )
          )
         )
         (i32.eq
          (i32.load16_s
           (get_local $5)
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
         (get_local $5)
        )
       )
       (set_local $5
        (i32.and
         (i32.load offset=16
          (get_local $5)
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
 (func $std/map/Map<i16,i64>#rehash (; 65 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (i32.const 4)
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
     (f64.const 2.6666666666666665)
    )
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $4)
     (block $std/map/ENTRY_SIZE<i16,i64>|inlined.1 (result i32)
      (br $std/map/ENTRY_SIZE<i16,i64>|inlined.1
       (i32.const 24)
      )
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
    (i32.const 8)
   )
  )
  (set_local $7
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
  )
  (set_local $8
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $std/map/ENTRY_SIZE<i16,i64>|inlined.2 (result i32)
      (br $std/map/ENTRY_SIZE<i16,i64>|inlined.2
       (i32.const 24)
      )
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
       (set_local $9
        (get_local $6)
       )
       (set_local $10
        (get_local $7)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=16
           (get_local $9)
          )
          (i32.const 1)
         )
        )
        (block
         (i32.store16
          (get_local $10)
          (i32.load16_s
           (get_local $9)
          )
         )
         (i64.store offset=8
          (get_local $10)
          (i64.load offset=8
           (get_local $9)
          )
         )
         (set_local $11
          (i32.and
           (call $~lib/internal/hash/hash<i16>
            (i32.load16_s
             (get_local $9)
            )
           )
           (get_local $1)
          )
         )
         (i32.store offset=16
          (get_local $10)
          (block $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.10 (result i32)
           (br $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.10
            (i32.load offset=8
             (i32.add
              (get_local $3)
              (i32.mul
               (get_local $11)
               (i32.const 4)
              )
             )
            )
           )
          )
         )
         (block $~lib/arraybuffer/ArrayBuffer#store<MapEntry<i16,i64>>|inlined.0
          (i32.store offset=8
           (i32.add
            (get_local $3)
            (i32.mul
             (get_local $11)
             (i32.const 4)
            )
           )
           (get_local $10)
          )
         )
         (set_local $7
          (i32.add
           (get_local $7)
           (block $std/map/ENTRY_SIZE<i16,i64>|inlined.3 (result i32)
            (br $std/map/ENTRY_SIZE<i16,i64>|inlined.3
             (i32.const 24)
            )
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $std/map/ENTRY_SIZE<i16,i64>|inlined.4 (result i32)
          (br $std/map/ENTRY_SIZE<i16,i64>|inlined.4
           (i32.const 24)
          )
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
 (func $std/map/Map<i16,i64>#set (; 66 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $3
   (call $~lib/internal/hash/hash<i16>
    (get_local $1)
   )
  )
  (set_local $4
   (call $std/map/Map<i16,i64>#find
    (get_local $0)
    (get_local $1)
    (get_local $3)
   )
  )
  (if
   (get_local $4)
   (i64.store offset=8
    (get_local $4)
    (get_local $2)
   )
   (block
    (set_local $5
     (i32.load offset=12
      (get_local $0)
     )
    )
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (get_local $5)
     )
     (block
      (call $std/map/Map<i16,i64>#rehash
       (get_local $0)
       (if (result i32)
        (i32.ge_s
         (i32.load offset=20
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
       (i32.load offset=12
        (get_local $0)
       )
      )
     )
    )
    (set_local $6
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $6)
       (i32.const 8)
      )
      (i32.mul
       (block (result i32)
        (set_local $7
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $7)
          (i32.const 1)
         )
        )
        (get_local $7)
       )
       (block $std/map/ENTRY_SIZE<i16,i64>|inlined.5 (result i32)
        (br $std/map/ENTRY_SIZE<i16,i64>|inlined.5
         (i32.const 24)
        )
       )
      )
     )
    )
    (i32.store16
     (get_local $4)
     (get_local $1)
    )
    (i64.store offset=8
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
    (i32.store offset=16
     (get_local $4)
     (block $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.11 (result i32)
      (set_local $8
       (i32.load
        (get_local $0)
       )
      )
      (br $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.11
       (i32.load offset=8
        (i32.add
         (get_local $8)
         (i32.mul
          (get_local $7)
          (i32.const 4)
         )
        )
       )
      )
     )
    )
    (block $~lib/arraybuffer/ArrayBuffer#store<usize>|inlined.5
     (set_local $8
      (i32.load
       (get_local $0)
      )
     )
     (i32.store offset=8
      (i32.add
       (get_local $8)
       (i32.mul
        (get_local $7)
        (i32.const 4)
       )
      )
      (get_local $4)
     )
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
   )
  )
 )
 (func $std/map/Map<i16,i64>#has (; 67 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (i32.ne
    (call $std/map/Map<i16,i64>#find
     (get_local $0)
     (get_local $1)
     (call $~lib/internal/hash/hash<i16>
      (get_local $1)
     )
    )
    (i32.const 0)
   )
  )
 )
 (func $std/map/Map<i16,i64>#get (; 68 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (set_local $2
   (call $std/map/Map<i16,i64>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i16>
     (get_local $1)
    )
   )
  )
  (return
   (if (result i64)
    (get_local $2)
    (i64.load offset=8
     (get_local $2)
    )
    (unreachable)
   )
  )
 )
 (func $std/map/Map<i16,i64>#get:size (; 69 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $std/map/Map<i16,i64>#delete (; 70 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (call $std/map/Map<i16,i64>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i16>
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
   (get_local $2)
   (i32.or
    (i32.load offset=16
     (get_local $2)
    )
    (i32.const 1)
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
     (i32.load offset=20
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=16
         (get_local $0)
        )
       )
       (f64.const 0.75)
      )
     )
    )
    (get_local $3)
   )
   (call $std/map/Map<i16,i64>#rehash
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
 (func $std/map/test<i16,i64> (; 71 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $0
   (call $std/map/Map<i16,i64>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $1
    (i32.const 1)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 200)
      )
     )
    )
    (block
     (call $std/map/Map<i16,i64>#set
      (get_local $0)
      (get_local $1)
      (i64.add
       (i64.const 100)
       (i64.extend_s/i32
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
     (if
      (i32.eqz
       (call $std/map/Map<i16,i64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 165)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i16,i64>#has
         (get_local $0)
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 166)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i64.eq
        (call $std/map/Map<i16,i64>#get
         (get_local $0)
         (get_local $1)
        )
        (i64.add
         (i64.const 100)
         (i64.extend_s/i32
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
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 167)
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
     (call $std/map/Map<i16,i64>#get:size
      (get_local $0)
     )
     (i32.const 200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 169)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (i32.const 50)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $std/map/Map<i16,i64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 173)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i64.eq
        (call $std/map/Map<i16,i64>#get
         (get_local $0)
         (get_local $1)
        )
        (i64.add
         (i64.const 100)
         (i64.extend_s/i32
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
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 174)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $std/map/Map<i16,i64>#set
      (get_local $0)
      (get_local $1)
      (i64.add
       (i64.const 100)
       (i64.extend_s/i32
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
     (if
      (i32.eqz
       (call $std/map/Map<i16,i64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 176)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i64.eq
        (call $std/map/Map<i16,i64>#get
         (get_local $0)
         (get_local $1)
        )
        (i64.add
         (i64.const 100)
         (i64.extend_s/i32
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
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 177)
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
     (call $std/map/Map<i16,i64>#get:size
      (get_local $0)
     )
     (i32.const 200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 179)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $1
    (i32.const 1)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $std/map/Map<i16,i64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 183)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i64.eq
        (call $std/map/Map<i16,i64>#get
         (get_local $0)
         (get_local $1)
        )
        (i64.add
         (i64.const 100)
         (i64.extend_s/i32
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
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 184)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $std/map/Map<i16,i64>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i16,i64>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 186)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i16,i64>#has
        (get_local $0)
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 187)
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
     (call $std/map/Map<i16,i64>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 189)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $1
    (i32.const 1)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i16,i64>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 193)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $std/map/Map<i16,i64>#set
      (get_local $0)
      (get_local $1)
      (i64.add
       (i64.const 100)
       (i64.extend_s/i32
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
     (if
      (i32.eqz
       (call $std/map/Map<i16,i64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 195)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $std/map/Map<i16,i64>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i16,i64>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 197)
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
     (call $std/map/Map<i16,i64>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 199)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $std/map/Map<i16,i64>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/map/Map<i16,i64>#get:size
      (get_local $0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 203)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $std/map/Map<i32,i16>#clear (; 72 ;) (type $iv) (param $0 i32)
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
    (i32.const 4)
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
   (i32.const 4)
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
 (func $std/map/Map<i32,i16>#constructor (; 73 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $std/map/Map<i32,i16>#clear
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/allocator/arena/allocate_memory
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
 (func $std/map/Map<i32,i16>#find (; 74 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (block $~lib/arraybuffer/ArrayBuffer#load<MapEntry<i32,i16>>|inlined.0 (result i32)
    (set_local $3
     (i32.load
      (get_local $0)
     )
    )
    (set_local $4
     (i32.and
      (get_local $2)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (br $~lib/arraybuffer/ArrayBuffer#load<MapEntry<i32,i16>>|inlined.0
     (i32.load offset=8
      (i32.add
       (get_local $3)
       (i32.mul
        (get_local $4)
        (i32.const 4)
       )
      )
     )
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (get_local $5)
     (block
      (block
       (if
        (if (result i32)
         (tee_local $4
          (i32.eqz
           (i32.and
            (i32.load offset=8
             (get_local $5)
            )
            (i32.const 1)
           )
          )
         )
         (i32.eq
          (i32.load
           (get_local $5)
          )
          (get_local $1)
         )
         (get_local $4)
        )
        (return
         (get_local $5)
        )
       )
       (set_local $5
        (i32.and
         (i32.load offset=8
          (get_local $5)
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
 (func $std/map/Map<i32,i16>#rehash (; 75 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (i32.const 4)
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
     (f64.const 2.6666666666666665)
    )
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $4)
     (block $std/map/ENTRY_SIZE<i32,i16>|inlined.1 (result i32)
      (br $std/map/ENTRY_SIZE<i32,i16>|inlined.1
       (i32.const 12)
      )
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
    (i32.const 8)
   )
  )
  (set_local $7
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
  )
  (set_local $8
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $std/map/ENTRY_SIZE<i32,i16>|inlined.2 (result i32)
      (br $std/map/ENTRY_SIZE<i32,i16>|inlined.2
       (i32.const 12)
      )
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
       (set_local $9
        (get_local $6)
       )
       (set_local $10
        (get_local $7)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=8
           (get_local $9)
          )
          (i32.const 1)
         )
        )
        (block
         (i32.store
          (get_local $10)
          (i32.load
           (get_local $9)
          )
         )
         (i32.store16 offset=4
          (get_local $10)
          (i32.load16_s offset=4
           (get_local $9)
          )
         )
         (set_local $11
          (i32.and
           (call $~lib/internal/hash/hash<i32>
            (i32.load
             (get_local $9)
            )
           )
           (get_local $1)
          )
         )
         (i32.store offset=8
          (get_local $10)
          (block $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.12 (result i32)
           (br $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.12
            (i32.load offset=8
             (i32.add
              (get_local $3)
              (i32.mul
               (get_local $11)
               (i32.const 4)
              )
             )
            )
           )
          )
         )
         (block $~lib/arraybuffer/ArrayBuffer#store<MapEntry<i32,i16>>|inlined.0
          (i32.store offset=8
           (i32.add
            (get_local $3)
            (i32.mul
             (get_local $11)
             (i32.const 4)
            )
           )
           (get_local $10)
          )
         )
         (set_local $7
          (i32.add
           (get_local $7)
           (block $std/map/ENTRY_SIZE<i32,i16>|inlined.3 (result i32)
            (br $std/map/ENTRY_SIZE<i32,i16>|inlined.3
             (i32.const 12)
            )
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $std/map/ENTRY_SIZE<i32,i16>|inlined.4 (result i32)
          (br $std/map/ENTRY_SIZE<i32,i16>|inlined.4
           (i32.const 12)
          )
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
 (func $std/map/Map<i32,i16>#set (; 76 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
   (call $std/map/Map<i32,i16>#find
    (get_local $0)
    (get_local $1)
    (get_local $3)
   )
  )
  (if
   (get_local $4)
   (i32.store16 offset=4
    (get_local $4)
    (get_local $2)
   )
   (block
    (set_local $5
     (i32.load offset=12
      (get_local $0)
     )
    )
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (get_local $5)
     )
     (block
      (call $std/map/Map<i32,i16>#rehash
       (get_local $0)
       (if (result i32)
        (i32.ge_s
         (i32.load offset=20
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
       (i32.load offset=12
        (get_local $0)
       )
      )
     )
    )
    (set_local $6
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $6)
       (i32.const 8)
      )
      (i32.mul
       (block (result i32)
        (set_local $7
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $7)
          (i32.const 1)
         )
        )
        (get_local $7)
       )
       (block $std/map/ENTRY_SIZE<i32,i16>|inlined.5 (result i32)
        (br $std/map/ENTRY_SIZE<i32,i16>|inlined.5
         (i32.const 12)
        )
       )
      )
     )
    )
    (i32.store
     (get_local $4)
     (get_local $1)
    )
    (i32.store16 offset=4
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
    (i32.store offset=8
     (get_local $4)
     (block $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.13 (result i32)
      (set_local $8
       (i32.load
        (get_local $0)
       )
      )
      (br $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.13
       (i32.load offset=8
        (i32.add
         (get_local $8)
         (i32.mul
          (get_local $7)
          (i32.const 4)
         )
        )
       )
      )
     )
    )
    (block $~lib/arraybuffer/ArrayBuffer#store<usize>|inlined.6
     (set_local $8
      (i32.load
       (get_local $0)
      )
     )
     (i32.store offset=8
      (i32.add
       (get_local $8)
       (i32.mul
        (get_local $7)
        (i32.const 4)
       )
      )
      (get_local $4)
     )
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
   )
  )
 )
 (func $std/map/Map<i32,i16>#has (; 77 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (i32.ne
    (call $std/map/Map<i32,i16>#find
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
 (func $std/map/Map<i32,i16>#get (; 78 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (call $std/map/Map<i32,i16>#find
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
    (i32.load16_s offset=4
     (get_local $2)
    )
    (unreachable)
   )
  )
 )
 (func $std/map/Map<i32,i16>#get:size (; 79 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $std/map/Map<i32,i16>#delete (; 80 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (call $std/map/Map<i32,i16>#find
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
  (i32.store offset=8
   (get_local $2)
   (i32.or
    (i32.load offset=8
     (get_local $2)
    )
    (i32.const 1)
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
     (i32.load offset=20
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=16
         (get_local $0)
        )
       )
       (f64.const 0.75)
      )
     )
    )
    (get_local $3)
   )
   (call $std/map/Map<i32,i16>#rehash
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
 (func $std/map/test<i32,i16> (; 81 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $0
   (call $std/map/Map<i32,i16>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $1
    (i32.const 1)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 200)
      )
     )
    )
    (block
     (call $std/map/Map<i32,i16>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 100)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i32,i16>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 165)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i32,i16>#has
         (get_local $0)
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 166)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i32,i16>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.add
         (i32.const 100)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 167)
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
     (call $std/map/Map<i32,i16>#get:size
      (get_local $0)
     )
     (i32.const 200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 169)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (i32.const 50)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $std/map/Map<i32,i16>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 173)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i32,i16>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.shr_s
         (i32.shl
          (i32.add
           (i32.const 100)
           (get_local $1)
          )
          (i32.const 16)
         )
         (i32.const 16)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 174)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $std/map/Map<i32,i16>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 100)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i32,i16>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 176)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i32,i16>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.shr_s
         (i32.shl
          (i32.add
           (i32.const 100)
           (get_local $1)
          )
          (i32.const 16)
         )
         (i32.const 16)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 177)
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
     (call $std/map/Map<i32,i16>#get:size
      (get_local $0)
     )
     (i32.const 200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 179)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $1
    (i32.const 1)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $std/map/Map<i32,i16>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 183)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i32,i16>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.shr_s
         (i32.shl
          (i32.add
           (i32.const 100)
           (get_local $1)
          )
          (i32.const 16)
         )
         (i32.const 16)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 184)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $std/map/Map<i32,i16>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i32,i16>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 186)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i32,i16>#has
        (get_local $0)
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 187)
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
     (call $std/map/Map<i32,i16>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 189)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $1
    (i32.const 1)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (i32.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i32,i16>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 193)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $std/map/Map<i32,i16>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 100)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i32,i16>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 195)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $std/map/Map<i32,i16>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i32,i16>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 197)
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
     (call $std/map/Map<i32,i16>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 199)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $std/map/Map<i32,i16>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/map/Map<i32,i16>#get:size
      (get_local $0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 203)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $std/map/Map<i64,i16>#clear (; 82 ;) (type $iv) (param $0 i32)
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
    (i32.const 4)
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
   (i32.const 4)
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
 (func $std/map/Map<i64,i16>#constructor (; 83 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $std/map/Map<i64,i16>#clear
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/allocator/arena/allocate_memory
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
 (func $std/map/Map<i64,i16>#find (; 84 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (block $~lib/arraybuffer/ArrayBuffer#load<MapEntry<i64,i16>>|inlined.0 (result i32)
    (set_local $3
     (i32.load
      (get_local $0)
     )
    )
    (set_local $4
     (i32.and
      (get_local $2)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (br $~lib/arraybuffer/ArrayBuffer#load<MapEntry<i64,i16>>|inlined.0
     (i32.load offset=8
      (i32.add
       (get_local $3)
       (i32.mul
        (get_local $4)
        (i32.const 4)
       )
      )
     )
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (get_local $5)
     (block
      (block
       (if
        (if (result i32)
         (tee_local $4
          (i32.eqz
           (i32.and
            (i32.load offset=12
             (get_local $5)
            )
            (i32.const 1)
           )
          )
         )
         (i64.eq
          (i64.load
           (get_local $5)
          )
          (get_local $1)
         )
         (get_local $4)
        )
        (return
         (get_local $5)
        )
       )
       (set_local $5
        (i32.and
         (i32.load offset=12
          (get_local $5)
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
 (func $std/map/Map<i64,i16>#rehash (; 85 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (i32.const 4)
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
     (f64.const 2.6666666666666665)
    )
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.mul
     (get_local $4)
     (block $std/map/ENTRY_SIZE<i64,i16>|inlined.1 (result i32)
      (br $std/map/ENTRY_SIZE<i64,i16>|inlined.1
       (i32.const 16)
      )
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
    (i32.const 8)
   )
  )
  (set_local $7
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
  )
  (set_local $8
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $std/map/ENTRY_SIZE<i64,i16>|inlined.2 (result i32)
      (br $std/map/ENTRY_SIZE<i64,i16>|inlined.2
       (i32.const 16)
      )
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
       (set_local $9
        (get_local $6)
       )
       (set_local $10
        (get_local $7)
       )
       (if
        (i32.eqz
         (i32.and
          (i32.load offset=12
           (get_local $9)
          )
          (i32.const 1)
         )
        )
        (block
         (i64.store
          (get_local $10)
          (i64.load
           (get_local $9)
          )
         )
         (i32.store16 offset=8
          (get_local $10)
          (i32.load16_s offset=8
           (get_local $9)
          )
         )
         (set_local $11
          (i32.and
           (call $~lib/internal/hash/hash<i64>
            (i64.load
             (get_local $9)
            )
           )
           (get_local $1)
          )
         )
         (i32.store offset=12
          (get_local $10)
          (block $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.14 (result i32)
           (br $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.14
            (i32.load offset=8
             (i32.add
              (get_local $3)
              (i32.mul
               (get_local $11)
               (i32.const 4)
              )
             )
            )
           )
          )
         )
         (block $~lib/arraybuffer/ArrayBuffer#store<MapEntry<i64,i16>>|inlined.0
          (i32.store offset=8
           (i32.add
            (get_local $3)
            (i32.mul
             (get_local $11)
             (i32.const 4)
            )
           )
           (get_local $10)
          )
         )
         (set_local $7
          (i32.add
           (get_local $7)
           (block $std/map/ENTRY_SIZE<i64,i16>|inlined.3 (result i32)
            (br $std/map/ENTRY_SIZE<i64,i16>|inlined.3
             (i32.const 16)
            )
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $std/map/ENTRY_SIZE<i64,i16>|inlined.4 (result i32)
          (br $std/map/ENTRY_SIZE<i64,i16>|inlined.4
           (i32.const 16)
          )
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
 (func $std/map/Map<i64,i16>#set (; 86 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $3
   (call $~lib/internal/hash/hash<i64>
    (get_local $1)
   )
  )
  (set_local $4
   (call $std/map/Map<i64,i16>#find
    (get_local $0)
    (get_local $1)
    (get_local $3)
   )
  )
  (if
   (get_local $4)
   (i32.store16 offset=8
    (get_local $4)
    (get_local $2)
   )
   (block
    (set_local $5
     (i32.load offset=12
      (get_local $0)
     )
    )
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (get_local $5)
     )
     (block
      (call $std/map/Map<i64,i16>#rehash
       (get_local $0)
       (if (result i32)
        (i32.ge_s
         (i32.load offset=20
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
       (i32.load offset=12
        (get_local $0)
       )
      )
     )
    )
    (set_local $6
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $6)
       (i32.const 8)
      )
      (i32.mul
       (block (result i32)
        (set_local $7
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $7)
          (i32.const 1)
         )
        )
        (get_local $7)
       )
       (block $std/map/ENTRY_SIZE<i64,i16>|inlined.5 (result i32)
        (br $std/map/ENTRY_SIZE<i64,i16>|inlined.5
         (i32.const 16)
        )
       )
      )
     )
    )
    (i64.store
     (get_local $4)
     (get_local $1)
    )
    (i32.store16 offset=8
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
    (i32.store offset=12
     (get_local $4)
     (block $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.15 (result i32)
      (set_local $8
       (i32.load
        (get_local $0)
       )
      )
      (br $~lib/arraybuffer/ArrayBuffer#load<usize>|inlined.15
       (i32.load offset=8
        (i32.add
         (get_local $8)
         (i32.mul
          (get_local $7)
          (i32.const 4)
         )
        )
       )
      )
     )
    )
    (block $~lib/arraybuffer/ArrayBuffer#store<usize>|inlined.7
     (set_local $8
      (i32.load
       (get_local $0)
      )
     )
     (i32.store offset=8
      (i32.add
       (get_local $8)
       (i32.mul
        (get_local $7)
        (i32.const 4)
       )
      )
      (get_local $4)
     )
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
   )
  )
 )
 (func $std/map/Map<i64,i16>#has (; 87 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (return
   (i32.ne
    (call $std/map/Map<i64,i16>#find
     (get_local $0)
     (get_local $1)
     (call $~lib/internal/hash/hash<i64>
      (get_local $1)
     )
    )
    (i32.const 0)
   )
  )
 )
 (func $std/map/Map<i64,i16>#get (; 88 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $std/map/Map<i64,i16>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i64>
     (get_local $1)
    )
   )
  )
  (return
   (if (result i32)
    (get_local $2)
    (i32.load16_s offset=8
     (get_local $2)
    )
    (unreachable)
   )
  )
 )
 (func $std/map/Map<i64,i16>#get:size (; 89 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $std/map/Map<i64,i16>#delete (; 90 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (call $std/map/Map<i64,i16>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i64>
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
  (i32.store offset=12
   (get_local $2)
   (i32.or
    (i32.load offset=12
     (get_local $2)
    )
    (i32.const 1)
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
     (i32.load offset=20
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=16
         (get_local $0)
        )
       )
       (f64.const 0.75)
      )
     )
    )
    (get_local $3)
   )
   (call $std/map/Map<i64,i16>#rehash
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
 (func $std/map/test<i64,i16> (; 91 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  (set_local $0
   (call $std/map/Map<i64,i16>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $1
    (i64.const 1)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i64.le_s
       (get_local $1)
       (i64.const 200)
      )
     )
    )
    (block
     (call $std/map/Map<i64,i16>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 100)
       (i32.wrap/i64
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i64,i16>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 165)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i64,i16>#has
         (get_local $0)
         (i64.add
          (get_local $1)
          (i64.const 1)
         )
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 166)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i64.eq
        (i64.extend_s/i32
         (call $std/map/Map<i64,i16>#get
          (get_local $0)
          (get_local $1)
         )
        )
        (i64.add
         (i64.extend_s/i32
          (i32.const 100)
         )
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 167)
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
     (call $std/map/Map<i64,i16>#get:size
      (get_local $0)
     )
     (i32.const 200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 169)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (i64.const 50)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i64.le_s
       (get_local $1)
       (i64.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $std/map/Map<i64,i16>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 173)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i64,i16>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.shr_s
         (i32.shl
          (i32.add
           (i32.const 100)
           (i32.wrap/i64
            (get_local $1)
           )
          )
          (i32.const 16)
         )
         (i32.const 16)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 174)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $std/map/Map<i64,i16>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 100)
       (i32.wrap/i64
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i64,i16>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 176)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i64,i16>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.shr_s
         (i32.shl
          (i32.add
           (i32.const 100)
           (i32.wrap/i64
            (get_local $1)
           )
          )
          (i32.const 16)
         )
         (i32.const 16)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 177)
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
     (call $std/map/Map<i64,i16>#get:size
      (get_local $0)
     )
     (i32.const 200)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 179)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $1
    (i64.const 1)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i64.le_s
       (get_local $1)
       (i64.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $std/map/Map<i64,i16>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 183)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (i32.eq
        (call $std/map/Map<i64,i16>#get
         (get_local $0)
         (get_local $1)
        )
        (i32.shr_s
         (i32.shl
          (i32.add
           (i32.const 100)
           (i32.wrap/i64
            (get_local $1)
           )
          )
          (i32.const 16)
         )
         (i32.const 16)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 184)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $std/map/Map<i64,i16>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i64,i16>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 186)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i64,i16>#has
        (get_local $0)
        (i64.add
         (get_local $1)
         (i64.const 1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 187)
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
     (call $std/map/Map<i64,i16>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 189)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $1
    (i64.const 1)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (i64.le_s
       (get_local $1)
       (i64.const 50)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i64,i16>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 193)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $std/map/Map<i64,i16>#set
      (get_local $0)
      (get_local $1)
      (i32.add
       (i32.const 100)
       (i32.wrap/i64
        (get_local $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $std/map/Map<i64,i16>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 195)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $std/map/Map<i64,i16>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $std/map/Map<i64,i16>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 116)
        (i32.const 197)
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
     (call $std/map/Map<i64,i16>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 199)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $std/map/Map<i64,i16>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/map/Map<i64,i16>#get:size
      (get_local $0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 116)
     (i32.const 203)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $start (; 92 ;) (type $v)
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
  (call $std/map/test<i32,i32>)
  (call $std/map/test<i64,i32>)
  (call $std/map/test<i64,i64>)
  (call $std/map/test<i32,i64>)
  (call $std/map/test<i16,i32>)
  (call $std/map/test<i16,i64>)
  (call $std/map/test<i32,i16>)
  (call $std/map/test<i64,i16>)
 )
)
