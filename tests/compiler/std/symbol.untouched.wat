(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/symbol/nextId (mut i32) (i32.const 12))
 (global $std/symbol/sym1 (mut i32) (i32.const 0))
 (global $std/symbol/sym2 (mut i32) (i32.const 0))
 (global $~lib/symbol/stringToId (mut i32) (i32.const 0))
 (global $~lib/map/INITIAL_CAPACITY i32 (i32.const 4))
 (global $~lib/map/BUCKET_SIZE i32 (i32.const 4))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~lib/symbol/idToString (mut i32) (i32.const 0))
 (global $~lib/internal/hash/FNV_OFFSET i32 (i32.const -2128831035))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $~lib/internal/hash/FNV_PRIME i32 (i32.const 16777619))
 (global $~lib/map/EMPTY i32 (i32.const 1))
 (global $~lib/map/FREE_FACTOR f64 (f64.const 0.75))
 (global $~lib/map/FILL_FACTOR f64 (f64.const 2.6666666666666665))
 (global $std/symbol/sym3 (mut i32) (i32.const 0))
 (global $std/symbol/sym4 (mut i32) (i32.const 0))
 (global $std/symbol/key1 (mut i32) (i32.const 0))
 (global $std/symbol/key2 (mut i32) (i32.const 0))
 (global $std/symbol/key3 (mut i32) (i32.const 0))
 (global $std/symbol/key4 (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 156))
 (memory $0 1)
 (data (i32.const 8) "\03\00\00\001\002\003\00")
 (data (i32.const 20) "\0d\00\00\00s\00t\00d\00/\00s\00y\00m\00b\00o\00l\00.\00t\00s\00")
 (data (i32.const 52) "\13\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 96) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/symbol/Symbol (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $2
   (block (result i32)
    (set_local $1
     (get_global $~lib/symbol/nextId)
    )
    (set_global $~lib/symbol/nextId
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (unreachable)
  )
  (get_local $2)
 )
 (func $~lib/allocator/arena/allocate_memory (; 2 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/computeSize (; 3 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/allocUnsafe (; 4 ;) (type $ii) (param $0 i32) (result i32)
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
     (i32.const 96)
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
 (func $~lib/memory/set_memory (; 5 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 6 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 1073741816)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 52)
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
 (func $~lib/map/Map<String,usize>#clear (; 7 ;) (type $iv) (param $0 i32)
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
 (func $~lib/map/Map<String,usize>#constructor (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/map/Map<String,usize>#clear
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
 (func $~lib/map/Map<usize,String>#clear (; 9 ;) (type $iv) (param $0 i32)
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
 (func $~lib/map/Map<usize,String>#constructor (; 10 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/map/Map<usize,String>#clear
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
 (func $~lib/internal/hash/hashStr (; 11 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $1
   (i32.const -2128831035)
  )
  (block $break|0
   (block
    (set_local $2
     (i32.const 0)
    )
    (set_local $3
     (i32.shl
      (i32.load
       (get_local $0)
      )
      (i32.const 1)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (set_local $1
     (i32.mul
      (i32.xor
       (get_local $1)
       (i32.load8_u offset=4
        (i32.add
         (get_local $0)
         (get_local $2)
        )
       )
      )
      (i32.const 16777619)
     )
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
  (get_local $1)
 )
 (func $~lib/memory/compare_memory (; 12 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
      (get_local $2)
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
 (func $~lib/string/String.__eq (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $2
     (i32.eq
      (get_local $0)
      (i32.const 0)
     )
    )
    (get_local $2)
    (i32.eq
     (get_local $1)
     (i32.const 0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.ne
    (get_local $3)
    (i32.load
     (get_local $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $~lib/memory/compare_memory
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (i32.shl
     (get_local $3)
     (i32.const 1)
    )
   )
  )
 )
 (func $~lib/map/Map<String,usize>#find (; 14 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
         (call $~lib/string/String.__eq
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
  (i32.const 0)
 )
 (func $~lib/map/Map<String,usize>#has (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/map/Map<String,usize>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<String>|inlined.0 (result i32)
     (br $~lib/internal/hash/hash<String>|inlined.0
      (call $~lib/internal/hash/hashStr
       (get_local $1)
      )
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<String,usize>#get (; 16 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (call $~lib/map/Map<String,usize>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<String>|inlined.1 (result i32)
     (br $~lib/internal/hash/hash<String>|inlined.1
      (call $~lib/internal/hash/hashStr
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
 (func $~lib/map/Map<String,usize>#rehash (; 17 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (block $~lib/map/ENTRY_SIZE<String,usize>|inlined.1 (result i32)
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
     (block $~lib/map/ENTRY_SIZE<String,usize>|inlined.2 (result i32)
      (i32.const 12)
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
           (block $~lib/internal/hash/hash<String>|inlined.3 (result i32)
            (set_local $11
             (i32.load
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<String>|inlined.3
             (call $~lib/internal/hash/hashStr
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
           (block $~lib/map/ENTRY_SIZE<String,usize>|inlined.3 (result i32)
            (i32.const 12)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/map/ENTRY_SIZE<String,usize>|inlined.4 (result i32)
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
 (func $~lib/map/Map<String,usize>#set (; 18 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (block $~lib/internal/hash/hash<String>|inlined.2 (result i32)
    (br $~lib/internal/hash/hash<String>|inlined.2
     (call $~lib/internal/hash/hashStr
      (get_local $1)
     )
    )
   )
  )
  (set_local $4
   (call $~lib/map/Map<String,usize>#find
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
     (call $~lib/map/Map<String,usize>#rehash
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
    (set_local $5
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $5)
       (i32.const 8)
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
       (block $~lib/map/ENTRY_SIZE<String,usize>|inlined.5 (result i32)
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
       (i32.const 4)
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
 (func $~lib/internal/hash/hash32 (; 19 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/map/Map<usize,String>#find (; 20 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  (i32.const 0)
 )
 (func $~lib/map/Map<usize,String>#rehash (; 21 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
     (block $~lib/map/ENTRY_SIZE<usize,String>|inlined.1 (result i32)
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
     (block $~lib/map/ENTRY_SIZE<usize,String>|inlined.2 (result i32)
      (i32.const 12)
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
           (block $~lib/internal/hash/hash<usize>|inlined.1 (result i32)
            (set_local $11
             (i32.load
              (get_local $9)
             )
            )
            (br $~lib/internal/hash/hash<usize>|inlined.1
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
           (block $~lib/map/ENTRY_SIZE<usize,String>|inlined.3 (result i32)
            (i32.const 12)
           )
          )
         )
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (block $~lib/map/ENTRY_SIZE<usize,String>|inlined.4 (result i32)
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
 (func $~lib/map/Map<usize,String>#set (; 22 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (block $~lib/internal/hash/hash<usize>|inlined.0 (result i32)
    (br $~lib/internal/hash/hash<usize>|inlined.0
     (call $~lib/internal/hash/hash32
      (get_local $1)
     )
    )
   )
  )
  (set_local $4
   (call $~lib/map/Map<usize,String>#find
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
     (call $~lib/map/Map<usize,String>#rehash
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
    (set_local $5
     (i32.load offset=8
      (get_local $0)
     )
    )
    (set_local $4
     (i32.add
      (i32.add
       (get_local $5)
       (i32.const 8)
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
       (block $~lib/map/ENTRY_SIZE<usize,String>|inlined.5 (result i32)
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
       (i32.const 4)
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
 (func $~lib/symbol/Symbol.for (; 23 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (get_global $~lib/symbol/stringToId)
   )
   (block
    (set_global $~lib/symbol/stringToId
     (call $~lib/map/Map<String,usize>#constructor
      (i32.const 0)
     )
    )
    (set_global $~lib/symbol/idToString
     (call $~lib/map/Map<usize,String>#constructor
      (i32.const 0)
     )
    )
   )
   (if
    (call $~lib/map/Map<String,usize>#has
     (get_global $~lib/symbol/stringToId)
     (get_local $0)
    )
    (return
     (call $~lib/map/Map<String,usize>#get
      (get_global $~lib/symbol/stringToId)
      (get_local $0)
     )
    )
   )
  )
  (set_local $2
   (block (result i32)
    (set_local $1
     (get_global $~lib/symbol/nextId)
    )
    (set_global $~lib/symbol/nextId
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (unreachable)
  )
  (call $~lib/map/Map<String,usize>#set
   (get_global $~lib/symbol/stringToId)
   (get_local $0)
   (get_local $2)
  )
  (call $~lib/map/Map<usize,String>#set
   (get_global $~lib/symbol/idToString)
   (get_local $2)
   (get_local $0)
  )
  (get_local $2)
 )
 (func $~lib/map/Map<usize,String>#has (; 24 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/map/Map<usize,String>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<usize>|inlined.2 (result i32)
     (br $~lib/internal/hash/hash<usize>|inlined.2
      (call $~lib/internal/hash/hash32
       (get_local $1)
      )
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/map/Map<usize,String>#get (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (call $~lib/map/Map<usize,String>#find
    (get_local $0)
    (get_local $1)
    (block $~lib/internal/hash/hash<usize>|inlined.3 (result i32)
     (br $~lib/internal/hash/hash<usize>|inlined.3
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
 (func $~lib/symbol/Symbol.keyFor (; 26 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if (result i32)
   (if (result i32)
    (tee_local $1
     (i32.ne
      (get_global $~lib/symbol/idToString)
      (i32.const 0)
     )
    )
    (call $~lib/map/Map<usize,String>#has
     (get_global $~lib/symbol/idToString)
     (get_local $0)
    )
    (get_local $1)
   )
   (call $~lib/map/Map<usize,String>#get
    (get_global $~lib/symbol/idToString)
    (get_local $0)
   )
   (i32.const 0)
  )
 )
 (func $start (; 27 ;) (type $v)
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
  (set_global $std/symbol/sym1
   (call $~lib/symbol/Symbol
    (i32.const 8)
   )
  )
  (set_global $std/symbol/sym2
   (call $~lib/symbol/Symbol
    (i32.const 8)
   )
  )
  (if
   (i32.eqz
    (i32.ne
     (get_global $std/symbol/sym1)
     (get_global $std/symbol/sym2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 20)
     (i32.const 6)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/symbol/sym3
   (call $~lib/symbol/Symbol.for
    (i32.const 8)
   )
  )
  (set_global $std/symbol/sym4
   (call $~lib/symbol/Symbol.for
    (i32.const 8)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/symbol/sym3)
     (get_global $std/symbol/sym4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 20)
     (i32.const 11)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/symbol/key1
   (call $~lib/symbol/Symbol.keyFor
    (get_global $std/symbol/sym1)
   )
  )
  (set_global $std/symbol/key2
   (call $~lib/symbol/Symbol.keyFor
    (get_global $std/symbol/sym2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/symbol/key1)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 20)
     (i32.const 16)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/symbol/key2)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 20)
     (i32.const 17)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/symbol/key3
   (call $~lib/symbol/Symbol.keyFor
    (get_global $std/symbol/sym3)
   )
  )
  (set_global $std/symbol/key4
   (call $~lib/symbol/Symbol.keyFor
    (get_global $std/symbol/sym4)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (get_global $std/symbol/key3)
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 20)
     (i32.const 22)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (get_global $std/symbol/key3)
     (get_global $std/symbol/key4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 20)
     (i32.const 23)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (i32.const 1)
  )
  (drop
   (i32.const 2)
  )
 )
)
