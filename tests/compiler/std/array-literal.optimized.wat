(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $v (func))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/array-literal/emptyArrayI32 (mut i32) (i32.const 128))
 (global $std/array-literal/i (mut i32) (i32.const 0))
 (global $std/array-literal/dynamicArrayI8 (mut i32) (i32.const 0))
 (global $std/array-literal/dynamicArrayI32 (mut i32) (i32.const 0))
 (global $std/array-literal/dynamicArrayRef (mut i32) (i32.const 0))
 (global $std/array-literal/dynamicArrayRefWithCtor (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 8) "\03")
 (data (i32.const 17) "\01\02")
 (data (i32.const 24) "\08\00\00\00\03")
 (data (i32.const 32) "\14\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00-\00l\00i\00t\00e\00r\00a\00l\00.\00t\00s")
 (data (i32.const 80) "\0c")
 (data (i32.const 92) "\01\00\00\00\02")
 (data (i32.const 112) "P\00\00\00\03")
 (data (i32.const 128) "x")
 (data (i32.const 136) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 168) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/array/Array<i8>#__get (; 1 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (tee_local $0
   (if (result i32)
    (i32.lt_u
     (get_local $1)
     (i32.load
      (tee_local $0
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (i32.load8_s offset=8
     (i32.add
      (get_local $0)
      (get_local $1)
     )
    )
    (unreachable)
   )
  )
 )
 (func $~lib/array/Array<i32>#__get (; 2 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (tee_local $0
   (if (result i32)
    (i32.lt_u
     (get_local $1)
     (i32.shr_u
      (i32.load
       (tee_local $0
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
      (get_local $0)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
    (unreachable)
   )
  )
 )
 (func $~lib/internal/arraybuffer/computeSize (; 3 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/allocator/arena/__memory_allocate (; 4 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 1073741824)
   )
   (unreachable)
  )
  (if
   (i32.gt_u
    (tee_local $2
     (i32.and
      (i32.add
       (i32.add
        (tee_local $1
         (get_global $~lib/allocator/arena/offset)
        )
        (select
         (get_local $0)
         (i32.const 1)
         (i32.gt_u
          (get_local $0)
          (i32.const 1)
         )
        )
       )
       (i32.const 7)
      )
      (i32.const -8)
     )
    )
    (i32.shl
     (tee_local $3
      (current_memory)
     )
     (i32.const 16)
    )
   )
   (if
    (i32.lt_s
     (grow_memory
      (select
       (get_local $3)
       (tee_local $0
        (i32.shr_u
         (i32.and
          (i32.add
           (i32.sub
            (get_local $2)
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
        (get_local $3)
        (get_local $0)
       )
      )
     )
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (grow_memory
       (get_local $0)
      )
      (i32.const 0)
     )
     (unreachable)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_local $2)
  )
  (get_local $1)
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 5 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 1073741816)
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
  (i32.store
   (tee_local $1
    (call $~lib/allocator/arena/__memory_allocate
     (call $~lib/internal/arraybuffer/computeSize
      (get_local $0)
     )
    )
   )
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/memory/memory.allocate (; 6 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/allocator/arena/__memory_allocate
   (get_local $0)
  )
 )
 (func $~lib/internal/memory/memset (; 7 ;) (; has Stack IR ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (return)
  )
  (i32.store8
   (get_local $0)
   (i32.const 0)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $1)
    )
    (i32.const 1)
   )
   (i32.const 0)
  )
  (if
   (i32.le_u
    (get_local $1)
    (i32.const 2)
   )
   (return)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 1)
   )
   (i32.const 0)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 2)
   )
   (i32.const 0)
  )
  (i32.store8
   (i32.sub
    (tee_local $2
     (i32.add
      (get_local $0)
      (get_local $1)
     )
    )
    (i32.const 2)
   )
   (i32.const 0)
  )
  (i32.store8
   (i32.sub
    (get_local $2)
    (i32.const 3)
   )
   (i32.const 0)
  )
  (if
   (i32.le_u
    (get_local $1)
    (i32.const 6)
   )
   (return)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 3)
   )
   (i32.const 0)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $1)
    )
    (i32.const 4)
   )
   (i32.const 0)
  )
  (if
   (i32.le_u
    (get_local $1)
    (i32.const 8)
   )
   (return)
  )
  (i32.store
   (tee_local $0
    (i32.add
     (get_local $0)
     (tee_local $2
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
   (i32.const 0)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (tee_local $1
      (i32.and
       (i32.sub
        (get_local $1)
        (get_local $2)
       )
       (i32.const -4)
      )
     )
    )
    (i32.const 4)
   )
   (i32.const 0)
  )
  (if
   (i32.le_u
    (get_local $1)
    (i32.const 8)
   )
   (return)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.sub
    (tee_local $2
     (i32.add
      (get_local $0)
      (get_local $1)
     )
    )
    (i32.const 12)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.sub
    (get_local $2)
    (i32.const 8)
   )
   (i32.const 0)
  )
  (if
   (i32.le_u
    (get_local $1)
    (i32.const 24)
   )
   (return)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 12)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 20)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.sub
    (tee_local $2
     (i32.add
      (get_local $0)
      (get_local $1)
     )
    )
    (i32.const 28)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.sub
    (get_local $2)
    (i32.const 24)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.sub
    (get_local $2)
    (i32.const 20)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.sub
    (get_local $2)
    (i32.const 16)
   )
   (i32.const 0)
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (tee_local $2
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
  (set_local $1
   (i32.sub
    (get_local $1)
    (get_local $2)
   )
  )
  (loop $continue|0
   (if
    (i32.ge_u
     (get_local $1)
     (i32.const 32)
    )
    (block
     (i64.store
      (get_local $0)
      (i64.const 0)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
      (i64.const 0)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 16)
      )
      (i64.const 0)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 24)
      )
      (i64.const 0)
     )
     (set_local $1
      (i32.sub
       (get_local $1)
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
 (func $~lib/array/Array<i8>#constructor (; 8 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (i32.const 3)
   )
  )
  (i32.store
   (tee_local $0
    (call $~lib/memory/memory.allocate
     (i32.const 8)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (get_local $0)
   (i32.const 0)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=4
   (get_local $0)
   (i32.const 3)
  )
  (call $~lib/internal/memory/memset
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
   (i32.const 3)
  )
  (get_local $0)
 )
 (func $~lib/array/Array<i8>#__unchecked_set (; 9 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store8 offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (get_local $1)
   )
   (get_local $2)
  )
 )
 (func $~lib/array/Array<i32>#constructor (; 10 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (i32.const 12)
   )
  )
  (i32.store
   (tee_local $0
    (call $~lib/memory/memory.allocate
     (i32.const 8)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (get_local $0)
   (i32.const 0)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=4
   (get_local $0)
   (i32.const 3)
  )
  (call $~lib/internal/memory/memset
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
   (i32.const 12)
  )
  (get_local $0)
 )
 (func $~lib/array/Array<i32>#__unchecked_set (; 11 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store offset=8
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
   (get_local $2)
  )
 )
 (func $std/array-literal/RefWithCtor#constructor (; 12 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (call $~lib/memory/memory.allocate
   (i32.const 0)
  )
 )
 (func $start (; 13 ;) (; has Stack IR ;) (type $v)
  (local $0 i32)
  (set_global $~lib/allocator/arena/startOffset
   (i32.const 232)
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (if
   (i32.ne
    (i32.load
     (i32.const 28)
    )
    (i32.const 3)
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
   (i32.and
    (call $~lib/array/Array<i8>#__get
     (i32.const 24)
     (i32.const 0)
    )
    (i32.const 255)
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
   (i32.ne
    (i32.and
     (call $~lib/array/Array<i8>#__get
      (i32.const 24)
      (i32.const 1)
     )
     (i32.const 255)
    )
    (i32.const 1)
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
   (i32.ne
    (i32.and
     (call $~lib/array/Array<i8>#__get
      (i32.const 24)
      (i32.const 2)
     )
     (i32.const 255)
    )
    (i32.const 2)
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
   (i32.ne
    (i32.load
     (i32.const 116)
    )
    (i32.const 3)
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
   (call $~lib/array/Array<i32>#__get
    (i32.const 112)
    (i32.const 0)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (i32.const 112)
     (i32.const 1)
    )
    (i32.const 1)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (i32.const 112)
     (i32.const 2)
    )
    (i32.const 2)
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
   (i32.load offset=4
    (get_global $std/array-literal/emptyArrayI32)
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
  (call $~lib/array/Array<i8>#__unchecked_set
   (tee_local $0
    (call $~lib/array/Array<i8>#constructor)
   )
   (i32.const 0)
   (get_global $std/array-literal/i)
  )
  (set_global $std/array-literal/i
   (i32.add
    (get_global $std/array-literal/i)
    (i32.const 1)
   )
  )
  (call $~lib/array/Array<i8>#__unchecked_set
   (get_local $0)
   (i32.const 1)
   (get_global $std/array-literal/i)
  )
  (set_global $std/array-literal/i
   (i32.add
    (get_global $std/array-literal/i)
    (i32.const 1)
   )
  )
  (call $~lib/array/Array<i8>#__unchecked_set
   (get_local $0)
   (i32.const 2)
   (get_global $std/array-literal/i)
  )
  (set_global $std/array-literal/dynamicArrayI8
   (get_local $0)
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array-literal/dynamicArrayI8)
    )
    (i32.const 3)
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
   (i32.and
    (call $~lib/array/Array<i8>#__get
     (get_global $std/array-literal/dynamicArrayI8)
     (i32.const 0)
    )
    (i32.const 255)
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
   (i32.ne
    (i32.and
     (call $~lib/array/Array<i8>#__get
      (get_global $std/array-literal/dynamicArrayI8)
      (i32.const 1)
     )
     (i32.const 255)
    )
    (i32.const 1)
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
   (i32.ne
    (i32.and
     (call $~lib/array/Array<i8>#__get
      (get_global $std/array-literal/dynamicArrayI8)
      (i32.const 2)
     )
     (i32.const 255)
    )
    (i32.const 2)
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
  (call $~lib/array/Array<i32>#__unchecked_set
   (tee_local $0
    (call $~lib/array/Array<i32>#constructor)
   )
   (i32.const 0)
   (get_global $std/array-literal/i)
  )
  (set_global $std/array-literal/i
   (i32.add
    (get_global $std/array-literal/i)
    (i32.const 1)
   )
  )
  (call $~lib/array/Array<i32>#__unchecked_set
   (get_local $0)
   (i32.const 1)
   (get_global $std/array-literal/i)
  )
  (set_global $std/array-literal/i
   (i32.add
    (get_global $std/array-literal/i)
    (i32.const 1)
   )
  )
  (call $~lib/array/Array<i32>#__unchecked_set
   (get_local $0)
   (i32.const 2)
   (get_global $std/array-literal/i)
  )
  (set_global $std/array-literal/dynamicArrayI32
   (get_local $0)
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array-literal/dynamicArrayI32)
    )
    (i32.const 3)
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
   (call $~lib/array/Array<i32>#__get
    (get_global $std/array-literal/dynamicArrayI32)
    (i32.const 0)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array-literal/dynamicArrayI32)
     (i32.const 1)
    )
    (i32.const 1)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array-literal/dynamicArrayI32)
     (i32.const 2)
    )
    (i32.const 2)
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
  (call $~lib/array/Array<i32>#__unchecked_set
   (tee_local $0
    (call $~lib/array/Array<i32>#constructor)
   )
   (i32.const 0)
   (call $~lib/memory/memory.allocate
    (i32.const 0)
   )
  )
  (call $~lib/array/Array<i32>#__unchecked_set
   (get_local $0)
   (i32.const 1)
   (call $~lib/memory/memory.allocate
    (i32.const 0)
   )
  )
  (call $~lib/array/Array<i32>#__unchecked_set
   (get_local $0)
   (i32.const 2)
   (call $~lib/memory/memory.allocate
    (i32.const 0)
   )
  )
  (set_global $std/array-literal/dynamicArrayRef
   (get_local $0)
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array-literal/dynamicArrayRef)
    )
    (i32.const 3)
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
  (call $~lib/array/Array<i32>#__unchecked_set
   (tee_local $0
    (call $~lib/array/Array<i32>#constructor)
   )
   (i32.const 0)
   (call $std/array-literal/RefWithCtor#constructor)
  )
  (call $~lib/array/Array<i32>#__unchecked_set
   (get_local $0)
   (i32.const 1)
   (call $std/array-literal/RefWithCtor#constructor)
  )
  (call $~lib/array/Array<i32>#__unchecked_set
   (get_local $0)
   (i32.const 2)
   (call $std/array-literal/RefWithCtor#constructor)
  )
  (set_global $std/array-literal/dynamicArrayRefWithCtor
   (get_local $0)
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/array-literal/dynamicArrayRefWithCtor)
    )
    (i32.const 3)
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
 (func $null (; 14 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
