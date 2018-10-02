(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/array-literal/staticArrayI8 i32 (i32.const 24))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $std/array-literal/staticArrayI32 i32 (i32.const 112))
 (global $std/array-literal/emptyArrayI32 (mut i32) (i32.const 128))
 (global $std/array-literal/i (mut i32) (i32.const 0))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $std/array-literal/dynamicArrayI8 (mut i32) (i32.const 0))
 (global $std/array-literal/dynamicArrayI32 (mut i32) (i32.const 0))
 (global $std/array-literal/dynamicArrayRef (mut i32) (i32.const 0))
 (global $std/array-literal/dynamicArrayRefWithCtor (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 228))
 (table 1 1 anyfunc)
 (elem (i32.const 0) $null)
 (memory $0 1)
 (data (i32.const 8) "\03\00\00\00\00\00\00\00\00\01\02\00\00\00\00\00")
 (data (i32.const 24) "\08\00\00\00\03\00\00\00")
 (data (i32.const 32) "\14\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00-\00l\00i\00t\00e\00r\00a\00l\00.\00t\00s\00")
 (data (i32.const 80) "\0c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 112) "P\00\00\00\03\00\00\00")
 (data (i32.const 120) "\00\00\00\00\00\00\00\00")
 (data (i32.const 128) "x\00\00\00\00\00\00\00")
 (data (i32.const 136) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 168) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/array/Array<i8>#__get (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 0)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<i8,i8>|inlined.0 (result i32)
    (i32.load8_s offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 0)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $~lib/array/Array<i32>#__get (; 2 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.0 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
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
 (func $~lib/allocator/arena/__memory_allocate (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
  (set_local $4
   (i32.and
    (i32.add
     (i32.add
      (get_local $1)
      (select
       (tee_local $2
        (get_local $0)
       )
       (tee_local $3
        (i32.const 1)
       )
       (i32.gt_u
        (get_local $2)
        (get_local $3)
       )
      )
     )
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    (i32.xor
     (get_global $~lib/internal/allocator/AL_MASK)
     (i32.const -1)
    )
   )
  )
  (set_local $5
   (current_memory)
  )
  (if
   (i32.gt_u
    (get_local $4)
    (i32.shl
     (get_local $5)
     (i32.const 16)
    )
   )
   (block
    (set_local $2
     (i32.shr_u
      (i32.and
       (i32.add
        (i32.sub
         (get_local $4)
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
    (set_local $3
     (select
      (tee_local $3
       (get_local $5)
      )
      (tee_local $6
       (get_local $2)
      )
      (i32.gt_s
       (get_local $3)
       (get_local $6)
      )
     )
    )
    (if
     (i32.lt_s
      (grow_memory
       (get_local $3)
      )
      (i32.const 0)
     )
     (if
      (i32.lt_s
       (grow_memory
        (get_local $2)
       )
       (i32.const 0)
      )
      (unreachable)
     )
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_local $4)
  )
  (get_local $1)
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
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
     (i32.const 168)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $1
   (block $~lib/memory/memory.allocate|inlined.0 (result i32)
    (set_local $2
     (call $~lib/internal/arraybuffer/computeSize
      (get_local $0)
     )
    )
    (br $~lib/memory/memory.allocate|inlined.0
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $2)
     )
    )
   )
  )
  (i32.store
   (get_local $1)
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/memory/memory.allocate (; 6 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/allocator/arena/__memory_allocate
    (get_local $0)
   )
  )
 )
 (func $~lib/internal/memory/memset (; 7 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/array/Array<i8>#constructor (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 1073741816)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 136)
     (i32.const 37)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 0)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.0
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<i8>#__unchecked_set (; 9 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (block $~lib/internal/arraybuffer/storeUnsafe<i8,i8>|inlined.0
   (set_local $3
    (i32.load
     (get_local $0)
    )
   )
   (i32.store8 offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $1)
      (i32.const 0)
     )
    )
    (get_local $2)
   )
  )
 )
 (func $~lib/array/Array<i32>#constructor (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 136)
     (i32.const 37)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.1
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<i32>#__unchecked_set (; 11 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.0
   (set_local $3
    (i32.load
     (get_local $0)
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
 )
 (func $~lib/array/Array<Ref>#constructor (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 136)
     (i32.const 37)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.2
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<Ref>#__unchecked_set (; 13 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (block $~lib/internal/arraybuffer/storeUnsafe<Ref,Ref>|inlined.0
   (set_local $3
    (i32.load
     (get_local $0)
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
 )
 (func $std/array-literal/RefWithCtor#constructor (; 14 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $1
       (call $~lib/memory/memory.allocate
        (i32.const 0)
       )
      )
      (get_local $1)
     )
    )
   )
  )
 )
 (func $~lib/array/Array<RefWithCtor>#constructor (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 136)
     (i32.const 37)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.3
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<RefWithCtor>#__unchecked_set (; 16 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (block $~lib/internal/arraybuffer/storeUnsafe<RefWithCtor,RefWithCtor>|inlined.0
   (set_local $3
    (i32.load
     (get_local $0)
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
 )
 (func $start (; 17 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i8>#get:length|inlined.0 (result i32)
      (set_local $0
       (get_global $std/array-literal/staticArrayI8)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 4)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.shr_s
      (i32.shl
       (call $~lib/array/Array<i8>#__get
        (get_global $std/array-literal/staticArrayI8)
        (i32.const 0)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 5)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.shr_s
      (i32.shl
       (call $~lib/array/Array<i8>#__get
        (get_global $std/array-literal/staticArrayI8)
        (i32.const 1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 6)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.shr_s
      (i32.shl
       (call $~lib/array/Array<i8>#__get
        (get_global $std/array-literal/staticArrayI8)
        (i32.const 2)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 7)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.0 (result i32)
      (set_local $0
       (get_global $std/array-literal/staticArrayI32)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 10)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array-literal/staticArrayI32)
      (i32.const 0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 11)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array-literal/staticArrayI32)
      (i32.const 1)
     )
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 12)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array-literal/staticArrayI32)
      (i32.const 2)
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 13)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.1 (result i32)
      (set_local $0
       (get_global $std/array-literal/emptyArrayI32)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 16)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array-literal/dynamicArrayI8
   (block (result i32)
    (set_local $1
     (call $~lib/array/Array<i8>#constructor
      (i32.const 0)
      (i32.const 3)
     )
    )
    (call $~lib/array/Array<i8>#__unchecked_set
     (get_local $1)
     (i32.const 0)
     (get_global $std/array-literal/i)
    )
    (call $~lib/array/Array<i8>#__unchecked_set
     (get_local $1)
     (i32.const 1)
     (block (result i32)
      (set_global $std/array-literal/i
       (i32.add
        (get_global $std/array-literal/i)
        (i32.const 1)
       )
      )
      (get_global $std/array-literal/i)
     )
    )
    (call $~lib/array/Array<i8>#__unchecked_set
     (get_local $1)
     (i32.const 2)
     (block (result i32)
      (set_global $std/array-literal/i
       (i32.add
        (get_global $std/array-literal/i)
        (i32.const 1)
       )
      )
      (get_global $std/array-literal/i)
     )
    )
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i8>#get:length|inlined.1 (result i32)
      (set_local $1
       (get_global $std/array-literal/dynamicArrayI8)
      )
      (i32.load offset=4
       (get_local $1)
      )
     )
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 21)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.shr_s
      (i32.shl
       (call $~lib/array/Array<i8>#__get
        (get_global $std/array-literal/dynamicArrayI8)
        (i32.const 0)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 22)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.shr_s
      (i32.shl
       (call $~lib/array/Array<i8>#__get
        (get_global $std/array-literal/dynamicArrayI8)
        (i32.const 1)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 23)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.shr_s
      (i32.shl
       (call $~lib/array/Array<i8>#__get
        (get_global $std/array-literal/dynamicArrayI8)
        (i32.const 2)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 24)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array-literal/i
   (i32.const 0)
  )
  (set_global $std/array-literal/dynamicArrayI32
   (block (result i32)
    (set_local $2
     (call $~lib/array/Array<i32>#constructor
      (i32.const 0)
      (i32.const 3)
     )
    )
    (call $~lib/array/Array<i32>#__unchecked_set
     (get_local $2)
     (i32.const 0)
     (get_global $std/array-literal/i)
    )
    (call $~lib/array/Array<i32>#__unchecked_set
     (get_local $2)
     (i32.const 1)
     (block (result i32)
      (set_global $std/array-literal/i
       (i32.add
        (get_global $std/array-literal/i)
        (i32.const 1)
       )
      )
      (get_global $std/array-literal/i)
     )
    )
    (call $~lib/array/Array<i32>#__unchecked_set
     (get_local $2)
     (i32.const 2)
     (block (result i32)
      (set_global $std/array-literal/i
       (i32.add
        (get_global $std/array-literal/i)
        (i32.const 1)
       )
      )
      (get_global $std/array-literal/i)
     )
    )
    (get_local $2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.2 (result i32)
      (set_local $2
       (get_global $std/array-literal/dynamicArrayI32)
      )
      (i32.load offset=4
       (get_local $2)
      )
     )
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 29)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array-literal/dynamicArrayI32)
      (i32.const 0)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 30)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array-literal/dynamicArrayI32)
      (i32.const 1)
     )
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 31)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array-literal/dynamicArrayI32)
      (i32.const 2)
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 32)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array-literal/dynamicArrayRef
   (block (result i32)
    (set_local $3
     (call $~lib/array/Array<Ref>#constructor
      (i32.const 0)
      (i32.const 3)
     )
    )
    (call $~lib/array/Array<Ref>#__unchecked_set
     (get_local $3)
     (i32.const 0)
     (block (result i32)
      (set_local $2
       (call $~lib/memory/memory.allocate
        (i32.const 0)
       )
      )
      (get_local $2)
     )
    )
    (call $~lib/array/Array<Ref>#__unchecked_set
     (get_local $3)
     (i32.const 1)
     (block (result i32)
      (set_local $2
       (call $~lib/memory/memory.allocate
        (i32.const 0)
       )
      )
      (get_local $2)
     )
    )
    (call $~lib/array/Array<Ref>#__unchecked_set
     (get_local $3)
     (i32.const 2)
     (block (result i32)
      (set_local $2
       (call $~lib/memory/memory.allocate
        (i32.const 0)
       )
      )
      (get_local $2)
     )
    )
    (get_local $3)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<Ref>#get:length|inlined.0 (result i32)
      (set_local $3
       (get_global $std/array-literal/dynamicArrayRef)
      )
      (i32.load offset=4
       (get_local $3)
      )
     )
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 36)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array-literal/dynamicArrayRefWithCtor
   (block (result i32)
    (set_local $4
     (call $~lib/array/Array<RefWithCtor>#constructor
      (i32.const 0)
      (i32.const 3)
     )
    )
    (call $~lib/array/Array<RefWithCtor>#__unchecked_set
     (get_local $4)
     (i32.const 0)
     (call $std/array-literal/RefWithCtor#constructor
      (i32.const 0)
     )
    )
    (call $~lib/array/Array<RefWithCtor>#__unchecked_set
     (get_local $4)
     (i32.const 1)
     (call $std/array-literal/RefWithCtor#constructor
      (i32.const 0)
     )
    )
    (call $~lib/array/Array<RefWithCtor>#__unchecked_set
     (get_local $4)
     (i32.const 2)
     (call $std/array-literal/RefWithCtor#constructor
      (i32.const 0)
     )
    )
    (get_local $4)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<RefWithCtor>#get:length|inlined.0 (result i32)
      (set_local $4
       (get_global $std/array-literal/dynamicArrayRefWithCtor)
      )
      (i32.load offset=4
       (get_local $4)
      )
     )
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 40)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
 (func $null (; 18 ;) (type $v)
 )
)
