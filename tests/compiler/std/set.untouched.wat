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
 (type $iIv (func (param i32 i64)))
 (type $ifi (func (param i32 f32) (result i32)))
 (type $fi (func (param f32) (result i32)))
 (type $ifii (func (param i32 f32 i32) (result i32)))
 (type $ifv (func (param i32 f32)))
 (type $iFi (func (param i32 f64) (result i32)))
 (type $Fi (func (param f64) (result i32)))
 (type $iFii (func (param i32 f64 i32) (result i32)))
 (type $iFv (func (param i32 f64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/set/INITIAL_CAPACITY i32 (i32.const 4))
 (global $~lib/set/BUCKET_SIZE i32 (i32.const 4))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~lib/internal/hash/FNV_OFFSET i32 (i32.const -2128831035))
 (global $~lib/internal/hash/FNV_PRIME i32 (i32.const 16777619))
 (global $~lib/set/EMPTY i32 (i32.const 1))
 (global $~lib/set/FREE_FACTOR f64 (f64.const 0.75))
 (global $~lib/set/FILL_FACTOR f64 (f64.const 2.6666666666666665))
 (global $HEAP_BASE i32 (i32.const 136))
 (memory $0 1)
 (data (i32.const 8) "\13\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 52) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 112) "\n\00\00\00s\00t\00d\00/\00s\00e\00t\00.\00t\00s\00")
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
  (i32.const 0)
 )
 (func $~lib/internal/arraybuffer/computeSize (; 2 ;) (type $ii) (param $0 i32) (result i32)
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
     (i32.const 52)
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
  (get_local $1)
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
   (call $~lib/memory/set_memory
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (i32.const 0)
    (get_local $1)
   )
  )
  (get_local $3)
 )
 (func $~lib/set/Set<i8>#clear (; 6 ;) (type $iv) (param $0 i32)
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
    (i32.const 32)
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
 (func $~lib/set/Set<i8>#constructor (; 7 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/set/Set<i8>#clear
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
 (func $~lib/internal/hash/hash8 (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (i32.mul
   (i32.xor
    (i32.const -2128831035)
    (get_local $0)
   )
   (i32.const 16777619)
  )
 )
 (func $~lib/internal/hash/hash<i8> (; 9 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/internal/hash/hash8
    (i32.shr_s
     (i32.shl
      (get_local $0)
      (i32.const 24)
     )
     (i32.const 24)
    )
   )
  )
 )
 (func $~lib/set/Set<i8>#find (; 10 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
      (i32.const 4)
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
            (i32.load offset=4
             (get_local $3)
            )
            (i32.const 1)
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
         (i32.load offset=4
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
  (i32.const 0)
 )
 (func $~lib/set/Set<i8>#has (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/set/Set<i8>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i8>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<i8>#rehash (; 12 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (block $~lib/set/ENTRY_SIZE<i8>|inlined.1 (result i32)
      (i32.const 8)
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
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/set/ENTRY_SIZE<i8>|inlined.2 (result i32)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (i32.const 8)
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
          (i32.load offset=4
           (get_local $9)
          )
          (i32.const 1)
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
         (set_local $11
          (i32.and
           (block $~lib/internal/hash/hash<i8>|inlined.0 (result i32)
            (set_local $11
             (i32.load8_s
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<i8>|inlined.0
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
            (i32.const 4)
           )
          )
         )
         (i32.store offset=4
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
           (block $~lib/set/ENTRY_SIZE<i8>|inlined.3 (result i32)
            (i32.const 8)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/set/ENTRY_SIZE<i8>|inlined.4 (result i32)
          (i32.const 8)
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
 (func $~lib/set/Set<i8>#add (; 13 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/internal/hash/hash<i8>
    (get_local $1)
   )
  )
  (set_local $3
   (call $~lib/set/Set<i8>#find
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
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
     (call $~lib/set/Set<i8>#rehash
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
          (f64.const 0.75)
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
    (set_local $4
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (i32.add
       (get_local $4)
       (i32.const 8)
      )
      (i32.mul
       (block (result i32)
        (set_local $5
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (block $~lib/set/ENTRY_SIZE<i8>|inlined.5 (result i32)
        (i32.const 8)
       )
      )
     )
    )
    (i32.store8
     (get_local $3)
     (get_local $1)
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
    (set_local $5
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
       (i32.const 4)
      )
     )
    )
    (i32.store offset=4
     (get_local $3)
     (i32.load offset=8
      (get_local $5)
     )
    )
    (i32.store offset=8
     (get_local $5)
     (get_local $3)
    )
   )
  )
 )
 (func $~lib/set/Set<i8>#get:size (; 14 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/set/Set<i8>#delete (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/set/Set<i8>#find
    (get_local $0)
    (get_local $1)
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
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.or
    (i32.load offset=4
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
        (i32.const 4)
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
       (f64.const 0.75)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/set/Set<i8>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/set/test<i8> (; 16 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $0
   (call $~lib/set/Set<i8>#constructor
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
        (call $~lib/set/Set<i8>#has
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
     (call $~lib/set/Set<i8>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<i8>#has
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
     (call $~lib/set/Set<i8>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
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
      (i32.lt_s
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/set/Set<i8>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 16)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<i8>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<i8>#has
        (get_local $0)
        (get_local $1)
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
     (call $~lib/set/Set<i8>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
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
       (call $~lib/set/Set<i8>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 24)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<i8>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<i8>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 26)
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
     (call $~lib/set/Set<i8>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
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
        (call $~lib/set/Set<i8>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 32)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<i8>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<i8>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 34)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<i8>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<i8>#has
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
     (call $~lib/set/Set<i8>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<i8>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/set/Set<i8>#get:size
      (get_local $0)
     )
     (i32.const 0)
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
 )
 (func $~lib/set/Set<u8>#clear (; 17 ;) (type $iv) (param $0 i32)
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
    (i32.const 32)
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
 (func $~lib/set/Set<u8>#constructor (; 18 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/set/Set<u8>#clear
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
 (func $~lib/internal/hash/hash<u8> (; 19 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/internal/hash/hash8
    (i32.and
     (get_local $0)
     (i32.const 255)
    )
   )
  )
 )
 (func $~lib/set/Set<u8>#find (; 20 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
      (i32.const 4)
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
            (i32.load offset=4
             (get_local $3)
            )
            (i32.const 1)
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
         (i32.load offset=4
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
  (i32.const 0)
 )
 (func $~lib/set/Set<u8>#has (; 21 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/set/Set<u8>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<u8>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<u8>#rehash (; 22 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (block $~lib/set/ENTRY_SIZE<u8>|inlined.1 (result i32)
      (i32.const 8)
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
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/set/ENTRY_SIZE<u8>|inlined.2 (result i32)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (i32.const 8)
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
          (i32.load offset=4
           (get_local $9)
          )
          (i32.const 1)
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
         (set_local $11
          (i32.and
           (block $~lib/internal/hash/hash<u8>|inlined.0 (result i32)
            (set_local $11
             (i32.load8_u
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<u8>|inlined.0
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
            (i32.const 4)
           )
          )
         )
         (i32.store offset=4
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
           (block $~lib/set/ENTRY_SIZE<u8>|inlined.3 (result i32)
            (i32.const 8)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/set/ENTRY_SIZE<u8>|inlined.4 (result i32)
          (i32.const 8)
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
 (func $~lib/set/Set<u8>#add (; 23 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/internal/hash/hash<u8>
    (get_local $1)
   )
  )
  (set_local $3
   (call $~lib/set/Set<u8>#find
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
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
     (call $~lib/set/Set<u8>#rehash
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
          (f64.const 0.75)
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
    (set_local $4
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (i32.add
       (get_local $4)
       (i32.const 8)
      )
      (i32.mul
       (block (result i32)
        (set_local $5
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (block $~lib/set/ENTRY_SIZE<u8>|inlined.5 (result i32)
        (i32.const 8)
       )
      )
     )
    )
    (i32.store8
     (get_local $3)
     (get_local $1)
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
    (set_local $5
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
       (i32.const 4)
      )
     )
    )
    (i32.store offset=4
     (get_local $3)
     (i32.load offset=8
      (get_local $5)
     )
    )
    (i32.store offset=8
     (get_local $5)
     (get_local $3)
    )
   )
  )
 )
 (func $~lib/set/Set<u8>#get:size (; 24 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/set/Set<u8>#delete (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/set/Set<u8>#find
    (get_local $0)
    (get_local $1)
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
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.or
    (i32.load offset=4
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
        (i32.const 4)
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
       (f64.const 0.75)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/set/Set<u8>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/set/test<u8> (; 26 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $0
   (call $~lib/set/Set<u8>#constructor
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
        (call $~lib/set/Set<u8>#has
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
     (call $~lib/set/Set<u8>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<u8>#has
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
     (call $~lib/set/Set<u8>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
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
      (i32.lt_u
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/set/Set<u8>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 16)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<u8>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<u8>#has
        (get_local $0)
        (get_local $1)
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
     (call $~lib/set/Set<u8>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
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
       (call $~lib/set/Set<u8>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 24)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<u8>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<u8>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 26)
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
     (call $~lib/set/Set<u8>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
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
        (call $~lib/set/Set<u8>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 32)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<u8>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<u8>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 34)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<u8>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<u8>#has
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
     (call $~lib/set/Set<u8>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<u8>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/set/Set<u8>#get:size
      (get_local $0)
     )
     (i32.const 0)
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
 )
 (func $~lib/set/Set<i16>#clear (; 27 ;) (type $iv) (param $0 i32)
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
    (i32.const 32)
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
 (func $~lib/set/Set<i16>#constructor (; 28 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/set/Set<i16>#clear
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
 (func $~lib/internal/hash/hash16 (; 29 ;) (type $ii) (param $0 i32) (result i32)
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
  (get_local $1)
 )
 (func $~lib/internal/hash/hash<i16> (; 30 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/set/Set<i16>#find (; 31 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
      (i32.const 4)
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
            (i32.load offset=4
             (get_local $3)
            )
            (i32.const 1)
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
         (i32.load offset=4
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
  (i32.const 0)
 )
 (func $~lib/set/Set<i16>#has (; 32 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/set/Set<i16>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i16>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<i16>#rehash (; 33 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (block $~lib/set/ENTRY_SIZE<i16>|inlined.1 (result i32)
      (i32.const 8)
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
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/set/ENTRY_SIZE<i16>|inlined.2 (result i32)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (i32.const 8)
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
          (i32.load offset=4
           (get_local $9)
          )
          (i32.const 1)
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
         (set_local $11
          (i32.and
           (block $~lib/internal/hash/hash<i16>|inlined.0 (result i32)
            (set_local $11
             (i32.load16_s
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<i16>|inlined.0
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
            (i32.const 4)
           )
          )
         )
         (i32.store offset=4
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
           (block $~lib/set/ENTRY_SIZE<i16>|inlined.3 (result i32)
            (i32.const 8)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/set/ENTRY_SIZE<i16>|inlined.4 (result i32)
          (i32.const 8)
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
 (func $~lib/set/Set<i16>#add (; 34 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/internal/hash/hash<i16>
    (get_local $1)
   )
  )
  (set_local $3
   (call $~lib/set/Set<i16>#find
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
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
     (call $~lib/set/Set<i16>#rehash
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
          (f64.const 0.75)
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
    (set_local $4
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (i32.add
       (get_local $4)
       (i32.const 8)
      )
      (i32.mul
       (block (result i32)
        (set_local $5
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (block $~lib/set/ENTRY_SIZE<i16>|inlined.5 (result i32)
        (i32.const 8)
       )
      )
     )
    )
    (i32.store16
     (get_local $3)
     (get_local $1)
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
    (set_local $5
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
       (i32.const 4)
      )
     )
    )
    (i32.store offset=4
     (get_local $3)
     (i32.load offset=8
      (get_local $5)
     )
    )
    (i32.store offset=8
     (get_local $5)
     (get_local $3)
    )
   )
  )
 )
 (func $~lib/set/Set<i16>#get:size (; 35 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/set/Set<i16>#delete (; 36 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/set/Set<i16>#find
    (get_local $0)
    (get_local $1)
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
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.or
    (i32.load offset=4
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
        (i32.const 4)
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
       (f64.const 0.75)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/set/Set<i16>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/set/test<i16> (; 37 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $0
   (call $~lib/set/Set<i16>#constructor
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
        (call $~lib/set/Set<i16>#has
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
     (call $~lib/set/Set<i16>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<i16>#has
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
     (call $~lib/set/Set<i16>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
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
      (i32.lt_s
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/set/Set<i16>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 16)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<i16>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<i16>#has
        (get_local $0)
        (get_local $1)
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
     (call $~lib/set/Set<i16>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
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
       (call $~lib/set/Set<i16>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 24)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<i16>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<i16>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 26)
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
     (call $~lib/set/Set<i16>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
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
        (call $~lib/set/Set<i16>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 32)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<i16>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<i16>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 34)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<i16>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<i16>#has
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
     (call $~lib/set/Set<i16>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<i16>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/set/Set<i16>#get:size
      (get_local $0)
     )
     (i32.const 0)
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
 )
 (func $~lib/set/Set<u16>#clear (; 38 ;) (type $iv) (param $0 i32)
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
    (i32.const 32)
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
 (func $~lib/set/Set<u16>#constructor (; 39 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/set/Set<u16>#clear
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
 (func $~lib/internal/hash/hash<u16> (; 40 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/internal/hash/hash16
    (i32.and
     (get_local $0)
     (i32.const 65535)
    )
   )
  )
 )
 (func $~lib/set/Set<u16>#find (; 41 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
      (i32.const 4)
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
            (i32.load offset=4
             (get_local $3)
            )
            (i32.const 1)
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
         (i32.load offset=4
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
  (i32.const 0)
 )
 (func $~lib/set/Set<u16>#has (; 42 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/set/Set<u16>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<u16>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<u16>#rehash (; 43 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (block $~lib/set/ENTRY_SIZE<u16>|inlined.1 (result i32)
      (i32.const 8)
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
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/set/ENTRY_SIZE<u16>|inlined.2 (result i32)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (i32.const 8)
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
          (i32.load offset=4
           (get_local $9)
          )
          (i32.const 1)
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
         (set_local $11
          (i32.and
           (block $~lib/internal/hash/hash<u16>|inlined.0 (result i32)
            (set_local $11
             (i32.load16_u
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<u16>|inlined.0
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
            (i32.const 4)
           )
          )
         )
         (i32.store offset=4
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
           (block $~lib/set/ENTRY_SIZE<u16>|inlined.3 (result i32)
            (i32.const 8)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/set/ENTRY_SIZE<u16>|inlined.4 (result i32)
          (i32.const 8)
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
 (func $~lib/set/Set<u16>#add (; 44 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/internal/hash/hash<u16>
    (get_local $1)
   )
  )
  (set_local $3
   (call $~lib/set/Set<u16>#find
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
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
     (call $~lib/set/Set<u16>#rehash
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
          (f64.const 0.75)
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
    (set_local $4
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (i32.add
       (get_local $4)
       (i32.const 8)
      )
      (i32.mul
       (block (result i32)
        (set_local $5
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (block $~lib/set/ENTRY_SIZE<u16>|inlined.5 (result i32)
        (i32.const 8)
       )
      )
     )
    )
    (i32.store16
     (get_local $3)
     (get_local $1)
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
    (set_local $5
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
       (i32.const 4)
      )
     )
    )
    (i32.store offset=4
     (get_local $3)
     (i32.load offset=8
      (get_local $5)
     )
    )
    (i32.store offset=8
     (get_local $5)
     (get_local $3)
    )
   )
  )
 )
 (func $~lib/set/Set<u16>#get:size (; 45 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/set/Set<u16>#delete (; 46 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/set/Set<u16>#find
    (get_local $0)
    (get_local $1)
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
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.or
    (i32.load offset=4
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
        (i32.const 4)
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
       (f64.const 0.75)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/set/Set<u16>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/set/test<u16> (; 47 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $0
   (call $~lib/set/Set<u16>#constructor
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
        (call $~lib/set/Set<u16>#has
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
     (call $~lib/set/Set<u16>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<u16>#has
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
     (call $~lib/set/Set<u16>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
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
      (i32.lt_u
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/set/Set<u16>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 16)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<u16>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<u16>#has
        (get_local $0)
        (get_local $1)
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
     (call $~lib/set/Set<u16>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
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
       (call $~lib/set/Set<u16>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 24)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<u16>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<u16>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 26)
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
     (call $~lib/set/Set<u16>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
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
        (call $~lib/set/Set<u16>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 32)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<u16>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<u16>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 34)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<u16>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<u16>#has
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
     (call $~lib/set/Set<u16>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<u16>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/set/Set<u16>#get:size
      (get_local $0)
     )
     (i32.const 0)
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
 )
 (func $~lib/set/Set<i32>#clear (; 48 ;) (type $iv) (param $0 i32)
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
    (i32.const 32)
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
 (func $~lib/set/Set<i32>#constructor (; 49 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/set/Set<i32>#clear
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
 (func $~lib/internal/hash/hash32 (; 50 ;) (type $ii) (param $0 i32) (result i32)
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
  (get_local $1)
 )
 (func $~lib/internal/hash/hash<i32> (; 51 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/internal/hash/hash32
    (get_local $0)
   )
  )
 )
 (func $~lib/set/Set<i32>#find (; 52 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
      (i32.const 4)
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
            (i32.load offset=4
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
         (i32.load offset=4
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
  (i32.const 0)
 )
 (func $~lib/set/Set<i32>#has (; 53 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/set/Set<i32>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i32>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<i32>#rehash (; 54 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (block $~lib/set/ENTRY_SIZE<i32>|inlined.1 (result i32)
      (i32.const 8)
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
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/set/ENTRY_SIZE<i32>|inlined.2 (result i32)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (i32.const 8)
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
          (i32.load offset=4
           (get_local $9)
          )
          (i32.const 1)
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
         (set_local $11
          (i32.and
           (block $~lib/internal/hash/hash<i32>|inlined.0 (result i32)
            (set_local $11
             (i32.load
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<i32>|inlined.0
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
            (i32.const 4)
           )
          )
         )
         (i32.store offset=4
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
           (block $~lib/set/ENTRY_SIZE<i32>|inlined.3 (result i32)
            (i32.const 8)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/set/ENTRY_SIZE<i32>|inlined.4 (result i32)
          (i32.const 8)
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
 (func $~lib/set/Set<i32>#add (; 55 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/internal/hash/hash<i32>
    (get_local $1)
   )
  )
  (set_local $3
   (call $~lib/set/Set<i32>#find
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
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
     (call $~lib/set/Set<i32>#rehash
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
          (f64.const 0.75)
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
    (set_local $4
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (i32.add
       (get_local $4)
       (i32.const 8)
      )
      (i32.mul
       (block (result i32)
        (set_local $5
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (block $~lib/set/ENTRY_SIZE<i32>|inlined.5 (result i32)
        (i32.const 8)
       )
      )
     )
    )
    (i32.store
     (get_local $3)
     (get_local $1)
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
    (set_local $5
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
       (i32.const 4)
      )
     )
    )
    (i32.store offset=4
     (get_local $3)
     (i32.load offset=8
      (get_local $5)
     )
    )
    (i32.store offset=8
     (get_local $5)
     (get_local $3)
    )
   )
  )
 )
 (func $~lib/set/Set<i32>#get:size (; 56 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/set/Set<i32>#delete (; 57 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/set/Set<i32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<i32>|inlined.1 (result i32)
     (br $~lib/internal/hash/hash<i32>|inlined.1
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
  (i32.store offset=4
   (get_local $2)
   (i32.or
    (i32.load offset=4
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
        (i32.const 4)
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
       (f64.const 0.75)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/set/Set<i32>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/set/test<i32> (; 58 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $0
   (call $~lib/set/Set<i32>#constructor
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
        (call $~lib/set/Set<i32>#has
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
     (call $~lib/set/Set<i32>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<i32>#has
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
     (call $~lib/set/Set<i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
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
      (i32.lt_s
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/set/Set<i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 16)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<i32>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<i32>#has
        (get_local $0)
        (get_local $1)
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
     (call $~lib/set/Set<i32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
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
       (call $~lib/set/Set<i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 24)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 26)
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
     (call $~lib/set/Set<i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
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
        (call $~lib/set/Set<i32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 32)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<i32>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<i32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 34)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<i32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<i32>#has
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
     (call $~lib/set/Set<i32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<i32>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/set/Set<i32>#get:size
      (get_local $0)
     )
     (i32.const 0)
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
 )
 (func $~lib/set/Set<u32>#clear (; 59 ;) (type $iv) (param $0 i32)
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
    (i32.const 32)
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
 (func $~lib/set/Set<u32>#constructor (; 60 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/set/Set<u32>#clear
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
 (func $~lib/internal/hash/hash<u32> (; 61 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/internal/hash/hash32
    (get_local $0)
   )
  )
 )
 (func $~lib/set/Set<u32>#find (; 62 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
      (i32.const 4)
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
            (i32.load offset=4
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
         (i32.load offset=4
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
  (i32.const 0)
 )
 (func $~lib/set/Set<u32>#has (; 63 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/set/Set<u32>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<u32>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<u32>#rehash (; 64 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (block $~lib/set/ENTRY_SIZE<u32>|inlined.1 (result i32)
      (i32.const 8)
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
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/set/ENTRY_SIZE<u32>|inlined.2 (result i32)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (i32.const 8)
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
          (i32.load offset=4
           (get_local $9)
          )
          (i32.const 1)
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
         (set_local $11
          (i32.and
           (block $~lib/internal/hash/hash<u32>|inlined.0 (result i32)
            (set_local $11
             (i32.load
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<u32>|inlined.0
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
            (i32.const 4)
           )
          )
         )
         (i32.store offset=4
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
           (block $~lib/set/ENTRY_SIZE<u32>|inlined.3 (result i32)
            (i32.const 8)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/set/ENTRY_SIZE<u32>|inlined.4 (result i32)
          (i32.const 8)
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
 (func $~lib/set/Set<u32>#add (; 65 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/internal/hash/hash<u32>
    (get_local $1)
   )
  )
  (set_local $3
   (call $~lib/set/Set<u32>#find
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
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
     (call $~lib/set/Set<u32>#rehash
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
          (f64.const 0.75)
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
    (set_local $4
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (i32.add
       (get_local $4)
       (i32.const 8)
      )
      (i32.mul
       (block (result i32)
        (set_local $5
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (block $~lib/set/ENTRY_SIZE<u32>|inlined.5 (result i32)
        (i32.const 8)
       )
      )
     )
    )
    (i32.store
     (get_local $3)
     (get_local $1)
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
    (set_local $5
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
       (i32.const 4)
      )
     )
    )
    (i32.store offset=4
     (get_local $3)
     (i32.load offset=8
      (get_local $5)
     )
    )
    (i32.store offset=8
     (get_local $5)
     (get_local $3)
    )
   )
  )
 )
 (func $~lib/set/Set<u32>#get:size (; 66 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/set/Set<u32>#delete (; 67 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/set/Set<u32>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<u32>|inlined.1 (result i32)
     (br $~lib/internal/hash/hash<u32>|inlined.1
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
  (i32.store offset=4
   (get_local $2)
   (i32.or
    (i32.load offset=4
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
        (i32.const 4)
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
       (f64.const 0.75)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/set/Set<u32>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/set/test<u32> (; 68 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $0
   (call $~lib/set/Set<u32>#constructor
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
        (call $~lib/set/Set<u32>#has
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
     (call $~lib/set/Set<u32>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<u32>#has
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
     (call $~lib/set/Set<u32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
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
      (i32.lt_u
       (get_local $1)
       (i32.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/set/Set<u32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 16)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<u32>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<u32>#has
        (get_local $0)
        (get_local $1)
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
     (call $~lib/set/Set<u32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
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
       (call $~lib/set/Set<u32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 24)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<u32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<u32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 26)
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
     (call $~lib/set/Set<u32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
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
        (call $~lib/set/Set<u32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 32)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<u32>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<u32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 34)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<u32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<u32>#has
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
     (call $~lib/set/Set<u32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<u32>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/set/Set<u32>#get:size
      (get_local $0)
     )
     (i32.const 0)
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
 )
 (func $~lib/set/Set<i64>#clear (; 69 ;) (type $iv) (param $0 i32)
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
 (func $~lib/set/Set<i64>#constructor (; 70 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/set/Set<i64>#clear
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
 (func $~lib/internal/hash/hash64 (; 71 ;) (type $Ii) (param $0 i64) (result i32)
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
  (get_local $3)
 )
 (func $~lib/internal/hash/hash<i64> (; 72 ;) (type $Ii) (param $0 i64) (result i32)
  (return
   (call $~lib/internal/hash/hash64
    (get_local $0)
   )
  )
 )
 (func $~lib/set/Set<i64>#find (; 73 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
      (i32.const 4)
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
  (i32.const 0)
 )
 (func $~lib/set/Set<i64>#has (; 74 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (i32.ne
   (call $~lib/set/Set<i64>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i64>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<i64>#rehash (; 75 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (block $~lib/set/ENTRY_SIZE<i64>|inlined.1 (result i32)
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
    (i32.const 8)
   )
  )
  (set_local $7
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/set/ENTRY_SIZE<i64>|inlined.2 (result i32)
      (i32.const 16)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (i32.const 8)
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
          (i32.const 1)
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
         (set_local $12
          (i32.and
           (block $~lib/internal/hash/hash<i64>|inlined.0 (result i32)
            (set_local $11
             (i64.load
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<i64>|inlined.0
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
            (i32.const 4)
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
           (block $~lib/set/ENTRY_SIZE<i64>|inlined.3 (result i32)
            (i32.const 16)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/set/ENTRY_SIZE<i64>|inlined.4 (result i32)
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
 (func $~lib/set/Set<i64>#add (; 76 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/internal/hash/hash<i64>
    (get_local $1)
   )
  )
  (set_local $3
   (call $~lib/set/Set<i64>#find
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
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
     (call $~lib/set/Set<i64>#rehash
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
          (f64.const 0.75)
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
    (set_local $4
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (i32.add
       (get_local $4)
       (i32.const 8)
      )
      (i32.mul
       (block (result i32)
        (set_local $5
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (block $~lib/set/ENTRY_SIZE<i64>|inlined.5 (result i32)
        (i32.const 16)
       )
      )
     )
    )
    (i64.store
     (get_local $3)
     (get_local $1)
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
    (set_local $5
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
       (i32.const 4)
      )
     )
    )
    (i32.store offset=8
     (get_local $3)
     (i32.load offset=8
      (get_local $5)
     )
    )
    (i32.store offset=8
     (get_local $5)
     (get_local $3)
    )
   )
  )
 )
 (func $~lib/set/Set<i64>#get:size (; 77 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/set/Set<i64>#delete (; 78 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/set/Set<i64>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<i64>|inlined.1 (result i32)
     (br $~lib/internal/hash/hash<i64>|inlined.1
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
        (i32.const 4)
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
       (f64.const 0.75)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/set/Set<i64>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/set/test<i64> (; 79 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  (set_local $0
   (call $~lib/set/Set<i64>#constructor
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
        (call $~lib/set/Set<i64>#has
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
     (call $~lib/set/Set<i64>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<i64>#has
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
     (call $~lib/set/Set<i64>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
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
      (i64.lt_s
       (get_local $1)
       (i64.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/set/Set<i64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 16)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<i64>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<i64>#has
        (get_local $0)
        (get_local $1)
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
     (call $~lib/set/Set<i64>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
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
       (call $~lib/set/Set<i64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 24)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<i64>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<i64>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 26)
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
     (call $~lib/set/Set<i64>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
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
        (call $~lib/set/Set<i64>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 32)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<i64>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<i64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 34)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<i64>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<i64>#has
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
     (call $~lib/set/Set<i64>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<i64>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/set/Set<i64>#get:size
      (get_local $0)
     )
     (i32.const 0)
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
 )
 (func $~lib/set/Set<u64>#clear (; 80 ;) (type $iv) (param $0 i32)
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
 (func $~lib/set/Set<u64>#constructor (; 81 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/set/Set<u64>#clear
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
 (func $~lib/internal/hash/hash<u64> (; 82 ;) (type $Ii) (param $0 i64) (result i32)
  (return
   (call $~lib/internal/hash/hash64
    (get_local $0)
   )
  )
 )
 (func $~lib/set/Set<u64>#find (; 83 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
      (i32.const 4)
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
  (i32.const 0)
 )
 (func $~lib/set/Set<u64>#has (; 84 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (i32.ne
   (call $~lib/set/Set<u64>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<u64>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<u64>#rehash (; 85 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (block $~lib/set/ENTRY_SIZE<u64>|inlined.1 (result i32)
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
    (i32.const 8)
   )
  )
  (set_local $7
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/set/ENTRY_SIZE<u64>|inlined.2 (result i32)
      (i32.const 16)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (i32.const 8)
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
          (i32.const 1)
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
         (set_local $12
          (i32.and
           (block $~lib/internal/hash/hash<u64>|inlined.0 (result i32)
            (set_local $11
             (i64.load
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<u64>|inlined.0
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
            (i32.const 4)
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
           (block $~lib/set/ENTRY_SIZE<u64>|inlined.3 (result i32)
            (i32.const 16)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/set/ENTRY_SIZE<u64>|inlined.4 (result i32)
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
 (func $~lib/set/Set<u64>#add (; 86 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/internal/hash/hash<u64>
    (get_local $1)
   )
  )
  (set_local $3
   (call $~lib/set/Set<u64>#find
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
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
     (call $~lib/set/Set<u64>#rehash
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
          (f64.const 0.75)
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
    (set_local $4
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (i32.add
       (get_local $4)
       (i32.const 8)
      )
      (i32.mul
       (block (result i32)
        (set_local $5
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (block $~lib/set/ENTRY_SIZE<u64>|inlined.5 (result i32)
        (i32.const 16)
       )
      )
     )
    )
    (i64.store
     (get_local $3)
     (get_local $1)
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
    (set_local $5
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
       (i32.const 4)
      )
     )
    )
    (i32.store offset=8
     (get_local $3)
     (i32.load offset=8
      (get_local $5)
     )
    )
    (i32.store offset=8
     (get_local $5)
     (get_local $3)
    )
   )
  )
 )
 (func $~lib/set/Set<u64>#get:size (; 87 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/set/Set<u64>#delete (; 88 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/set/Set<u64>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<u64>|inlined.1 (result i32)
     (br $~lib/internal/hash/hash<u64>|inlined.1
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
        (i32.const 4)
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
       (f64.const 0.75)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/set/Set<u64>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/set/test<u64> (; 89 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  (set_local $0
   (call $~lib/set/Set<u64>#constructor
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
        (call $~lib/set/Set<u64>#has
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
     (call $~lib/set/Set<u64>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<u64>#has
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
     (call $~lib/set/Set<u64>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
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
      (i64.lt_u
       (get_local $1)
       (i64.const 100)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (call $~lib/set/Set<u64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 16)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<u64>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<u64>#has
        (get_local $0)
        (get_local $1)
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
     (call $~lib/set/Set<u64>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
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
       (call $~lib/set/Set<u64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 24)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<u64>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<u64>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 26)
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
     (call $~lib/set/Set<u64>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
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
        (call $~lib/set/Set<u64>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 32)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<u64>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<u64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 34)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<u64>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<u64>#has
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
     (call $~lib/set/Set<u64>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<u64>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/set/Set<u64>#get:size
      (get_local $0)
     )
     (i32.const 0)
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
 )
 (func $~lib/set/Set<f32>#clear (; 90 ;) (type $iv) (param $0 i32)
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
    (i32.const 32)
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
 (func $~lib/set/Set<f32>#constructor (; 91 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/set/Set<f32>#clear
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
 (func $~lib/internal/hash/hash<f32> (; 92 ;) (type $fi) (param $0 f32) (result i32)
  (return
   (call $~lib/internal/hash/hash32
    (i32.reinterpret/f32
     (get_local $0)
    )
   )
  )
 )
 (func $~lib/set/Set<f32>#find (; 93 ;) (type $ifii) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
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
      (i32.const 4)
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
            (i32.load offset=4
             (get_local $3)
            )
            (i32.const 1)
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
         (i32.load offset=4
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
  (i32.const 0)
 )
 (func $~lib/set/Set<f32>#has (; 94 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  (i32.ne
   (call $~lib/set/Set<f32>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<f32>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<f32>#rehash (; 95 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (block $~lib/set/ENTRY_SIZE<f32>|inlined.1 (result i32)
      (i32.const 8)
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
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/set/ENTRY_SIZE<f32>|inlined.2 (result i32)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (i32.const 8)
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
          (i32.load offset=4
           (get_local $9)
          )
          (i32.const 1)
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
         (set_local $12
          (i32.and
           (block $~lib/internal/hash/hash<f32>|inlined.0 (result i32)
            (set_local $11
             (f32.load
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<f32>|inlined.0
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
            (i32.const 4)
           )
          )
         )
         (i32.store offset=4
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
           (block $~lib/set/ENTRY_SIZE<f32>|inlined.3 (result i32)
            (i32.const 8)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/set/ENTRY_SIZE<f32>|inlined.4 (result i32)
          (i32.const 8)
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
 (func $~lib/set/Set<f32>#add (; 96 ;) (type $ifv) (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/internal/hash/hash<f32>
    (get_local $1)
   )
  )
  (set_local $3
   (call $~lib/set/Set<f32>#find
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
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
     (call $~lib/set/Set<f32>#rehash
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
          (f64.const 0.75)
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
    (set_local $4
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (i32.add
       (get_local $4)
       (i32.const 8)
      )
      (i32.mul
       (block (result i32)
        (set_local $5
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (block $~lib/set/ENTRY_SIZE<f32>|inlined.5 (result i32)
        (i32.const 8)
       )
      )
     )
    )
    (f32.store
     (get_local $3)
     (get_local $1)
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
    (set_local $5
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
       (i32.const 4)
      )
     )
    )
    (i32.store offset=4
     (get_local $3)
     (i32.load offset=8
      (get_local $5)
     )
    )
    (i32.store offset=8
     (get_local $5)
     (get_local $3)
    )
   )
  )
 )
 (func $~lib/set/Set<f32>#get:size (; 97 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/set/Set<f32>#delete (; 98 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/set/Set<f32>#find
    (get_local $0)
    (get_local $1)
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
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.or
    (i32.load offset=4
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
        (i32.const 4)
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
       (f64.const 0.75)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/set/Set<f32>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/set/test<f32> (; 99 ;) (type $v)
  (local $0 i32)
  (local $1 f32)
  (set_local $0
   (call $~lib/set/Set<f32>#constructor
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
        (call $~lib/set/Set<f32>#has
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
     (call $~lib/set/Set<f32>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<f32>#has
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
     (call $~lib/set/Set<f32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (f32.const 50)
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
       (call $~lib/set/Set<f32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 16)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<f32>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<f32>#has
        (get_local $0)
        (get_local $1)
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
     (call $~lib/set/Set<f32>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
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
       (call $~lib/set/Set<f32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 24)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<f32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<f32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 26)
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
     (call $~lib/set/Set<f32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
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
        (call $~lib/set/Set<f32>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 32)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<f32>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<f32>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 34)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<f32>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<f32>#has
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
     (call $~lib/set/Set<f32>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<f32>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/set/Set<f32>#get:size
      (get_local $0)
     )
     (i32.const 0)
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
 )
 (func $~lib/set/Set<f64>#clear (; 100 ;) (type $iv) (param $0 i32)
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
 (func $~lib/set/Set<f64>#constructor (; 101 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/set/Set<f64>#clear
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
 (func $~lib/internal/hash/hash<f64> (; 102 ;) (type $Fi) (param $0 f64) (result i32)
  (return
   (call $~lib/internal/hash/hash64
    (i64.reinterpret/f64
     (get_local $0)
    )
   )
  )
 )
 (func $~lib/set/Set<f64>#find (; 103 ;) (type $iFii) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
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
      (i32.const 4)
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
  (i32.const 0)
 )
 (func $~lib/set/Set<f64>#has (; 104 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (i32.ne
   (call $~lib/set/Set<f64>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<f64>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<f64>#rehash (; 105 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (block $~lib/set/ENTRY_SIZE<f64>|inlined.1 (result i32)
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
    (i32.const 8)
   )
  )
  (set_local $7
   (i32.add
    (get_local $6)
    (i32.mul
     (i32.load offset=16
      (get_local $0)
     )
     (block $~lib/set/ENTRY_SIZE<f64>|inlined.2 (result i32)
      (i32.const 16)
     )
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $5)
    (i32.const 8)
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
          (i32.const 1)
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
         (set_local $12
          (i32.and
           (block $~lib/internal/hash/hash<f64>|inlined.0 (result i32)
            (set_local $11
             (f64.load
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<f64>|inlined.0
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
            (i32.const 4)
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
           (block $~lib/set/ENTRY_SIZE<f64>|inlined.3 (result i32)
            (i32.const 16)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/set/ENTRY_SIZE<f64>|inlined.4 (result i32)
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
 (func $~lib/set/Set<f64>#add (; 106 ;) (type $iFv) (param $0 i32) (param $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/internal/hash/hash<f64>
    (get_local $1)
   )
  )
  (set_local $3
   (call $~lib/set/Set<f64>#find
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
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
     (call $~lib/set/Set<f64>#rehash
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
          (f64.const 0.75)
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
    (set_local $4
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (i32.add
       (get_local $4)
       (i32.const 8)
      )
      (i32.mul
       (block (result i32)
        (set_local $5
         (i32.load offset=16
          (get_local $0)
         )
        )
        (i32.store offset=16
         (get_local $0)
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (block $~lib/set/ENTRY_SIZE<f64>|inlined.5 (result i32)
        (i32.const 16)
       )
      )
     )
    )
    (f64.store
     (get_local $3)
     (get_local $1)
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
    (set_local $5
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
       (i32.const 4)
      )
     )
    )
    (i32.store offset=8
     (get_local $3)
     (i32.load offset=8
      (get_local $5)
     )
    )
    (i32.store offset=8
     (get_local $5)
     (get_local $3)
    )
   )
  )
 )
 (func $~lib/set/Set<f64>#get:size (; 107 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/set/Set<f64>#delete (; 108 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $~lib/set/Set<f64>#find
    (get_local $0)
    (get_local $1)
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
        (i32.const 4)
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
       (f64.const 0.75)
      )
     )
    )
    (get_local $4)
   )
   (call $~lib/set/Set<f64>#rehash
    (get_local $0)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/set/test<f64> (; 109 ;) (type $v)
  (local $0 i32)
  (local $1 f64)
  (set_local $0
   (call $~lib/set/Set<f64>#constructor
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
        (call $~lib/set/Set<f64>#has
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
     (call $~lib/set/Set<f64>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<f64>#has
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
     (call $~lib/set/Set<f64>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $1
    (f64.const 50)
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
       (call $~lib/set/Set<f64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 16)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<f64>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<f64>#has
        (get_local $0)
        (get_local $1)
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
     (call $~lib/set/Set<f64>#get:size
      (get_local $0)
     )
     (i32.const 100)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
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
       (call $~lib/set/Set<f64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 24)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<f64>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<f64>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 26)
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
     (call $~lib/set/Set<f64>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
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
        (call $~lib/set/Set<f64>#has
         (get_local $0)
         (get_local $1)
        )
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 32)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (call $~lib/set/Set<f64>#add
      (get_local $0)
      (get_local $1)
     )
     (if
      (i32.eqz
       (call $~lib/set/Set<f64>#has
        (get_local $0)
        (get_local $1)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 112)
        (i32.const 34)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (drop
      (call $~lib/set/Set<f64>#delete
       (get_local $0)
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (i32.eqz
        (call $~lib/set/Set<f64>#has
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
     (call $~lib/set/Set<f64>#get:size
      (get_local $0)
     )
     (i32.const 50)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<f64>#clear
   (get_local $0)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/set/Set<f64>#get:size
      (get_local $0)
     )
     (i32.const 0)
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
 )
 (func $start (; 110 ;) (type $v)
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
  (call $std/set/test<i8>)
  (call $std/set/test<u8>)
  (call $std/set/test<i16>)
  (call $std/set/test<u16>)
  (call $std/set/test<i32>)
  (call $std/set/test<u32>)
  (call $std/set/test<i64>)
  (call $std/set/test<u64>)
  (call $std/set/test<f32>)
  (call $std/set/test<f64>)
 )
)
