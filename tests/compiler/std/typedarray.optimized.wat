(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiFv (func (param i32 i32 f64)))
 (type $FFi (func (param f64 f64) (result i32)))
 (type $iiF (func (param i32 i32) (result f64)))
 (type $v (func))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/typedarray/arr (mut i32) (i32.const 0))
 (global $std/typedarray/af64 (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $std/typedarray/clampedArr (mut i32) (i32.const 0))
 (table 1 1 anyfunc)
 (elem (i32.const 0) $~lib/internal/typedarray/TypedArray<f64,f64>#sort|trampoline~anonymous|0)
 (memory $0 1)
 (data (i32.const 8) "\11\00\00\00s\00t\00d\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 48) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 112) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/internal/arraybuffer/computeSize (; 1 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/allocator/arena/__memory_allocate (; 2 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 3 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 1073741816)
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
 (func $~lib/internal/memory/memset (; 4 ;) (; has Stack IR ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/memory/memory.allocate (; 5 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (call $~lib/allocator/arena/__memory_allocate
   (i32.const 12)
  )
 )
 (func $~lib/internal/typedarray/TypedArray<i8,i32>#constructor (; 6 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 1073741816)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 24)
     (i32.const 34)
    )
    (unreachable)
   )
  )
  (call $~lib/internal/memory/memset
   (i32.add
    (tee_local $2
     (call $~lib/internal/arraybuffer/allocateUnsafe
      (get_local $0)
     )
    )
    (i32.const 8)
   )
   (get_local $0)
  )
  (i32.store
   (tee_local $1
    (call $~lib/memory/memory.allocate)
   )
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
  (i32.store
   (get_local $1)
   (get_local $2)
  )
  (i32.store offset=4
   (get_local $1)
   (i32.const 0)
  )
  (i32.store offset=8
   (get_local $1)
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/internal/typedarray/TypedArray<i16,i32>#constructor (; 7 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 536870908)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 24)
     (i32.const 34)
    )
    (unreachable)
   )
  )
  (call $~lib/internal/memory/memset
   (i32.add
    (tee_local $2
     (call $~lib/internal/arraybuffer/allocateUnsafe
      (tee_local $0
       (i32.shl
        (get_local $0)
        (i32.const 1)
       )
      )
     )
    )
    (i32.const 8)
   )
   (get_local $0)
  )
  (i32.store
   (tee_local $1
    (call $~lib/memory/memory.allocate)
   )
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
  (i32.store
   (get_local $1)
   (get_local $2)
  )
  (i32.store offset=4
   (get_local $1)
   (i32.const 0)
  )
  (i32.store offset=8
   (get_local $1)
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/internal/typedarray/TypedArray<i32,i32>#constructor (; 8 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 24)
     (i32.const 34)
    )
    (unreachable)
   )
  )
  (call $~lib/internal/memory/memset
   (i32.add
    (tee_local $2
     (call $~lib/internal/arraybuffer/allocateUnsafe
      (tee_local $0
       (i32.shl
        (get_local $0)
        (i32.const 2)
       )
      )
     )
    )
    (i32.const 8)
   )
   (get_local $0)
  )
  (i32.store
   (tee_local $1
    (call $~lib/memory/memory.allocate)
   )
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
  (i32.store
   (get_local $1)
   (get_local $2)
  )
  (i32.store offset=4
   (get_local $1)
   (i32.const 0)
  )
  (i32.store offset=8
   (get_local $1)
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/internal/typedarray/TypedArray<i64,i64>#constructor (; 9 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 134217727)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 24)
     (i32.const 34)
    )
    (unreachable)
   )
  )
  (call $~lib/internal/memory/memset
   (i32.add
    (tee_local $2
     (call $~lib/internal/arraybuffer/allocateUnsafe
      (tee_local $0
       (i32.shl
        (get_local $0)
        (i32.const 3)
       )
      )
     )
    )
    (i32.const 8)
   )
   (get_local $0)
  )
  (i32.store
   (tee_local $1
    (call $~lib/memory/memory.allocate)
   )
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
  (i32.store
   (get_local $1)
   (get_local $2)
  )
  (i32.store offset=4
   (get_local $1)
   (i32.const 0)
  )
  (i32.store offset=8
   (get_local $1)
   (get_local $0)
  )
  (get_local $1)
 )
 (func $std/typedarray/testInstantiate (; 10 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (if
   (i32.load offset=4
    (tee_local $1
     (call $~lib/internal/typedarray/TypedArray<i8,i32>#constructor
      (get_local $0)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 18)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=8
     (get_local $1)
    )
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 19)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.sub
     (i32.load offset=8
      (get_local $1)
     )
     (i32.load offset=4
      (get_local $1)
     )
    )
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 20)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.load offset=4
    (tee_local $1
     (call $~lib/internal/typedarray/TypedArray<i8,i32>#constructor
      (get_local $0)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=8
     (get_local $1)
    )
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 24)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.sub
     (i32.load offset=8
      (get_local $1)
     )
     (i32.load offset=4
      (get_local $1)
     )
    )
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 25)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.load offset=4
    (tee_local $1
     (call $~lib/internal/typedarray/TypedArray<i8,i32>#constructor
      (get_local $0)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 28)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=8
     (get_local $1)
    )
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 29)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.sub
     (i32.load offset=8
      (get_local $1)
     )
     (i32.load offset=4
      (get_local $1)
     )
    )
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 30)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.load offset=4
    (tee_local $1
     (call $~lib/internal/typedarray/TypedArray<i16,i32>#constructor
      (get_local $0)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 33)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=8
     (get_local $1)
    )
    (i32.shl
     (get_local $0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 34)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.shr_s
     (i32.sub
      (i32.load offset=8
       (get_local $1)
      )
      (i32.load offset=4
       (get_local $1)
      )
     )
     (i32.const 1)
    )
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 35)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.load offset=4
    (tee_local $1
     (call $~lib/internal/typedarray/TypedArray<i16,i32>#constructor
      (get_local $0)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=8
     (get_local $1)
    )
    (i32.shl
     (get_local $0)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 39)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.shr_s
     (i32.sub
      (i32.load offset=8
       (get_local $1)
      )
      (i32.load offset=4
       (get_local $1)
      )
     )
     (i32.const 1)
    )
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 40)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.load offset=4
    (tee_local $1
     (call $~lib/internal/typedarray/TypedArray<i32,i32>#constructor
      (get_local $0)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 43)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=8
     (get_local $1)
    )
    (i32.shl
     (get_local $0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 44)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.shr_s
     (i32.sub
      (i32.load offset=8
       (get_local $1)
      )
      (i32.load offset=4
       (get_local $1)
      )
     )
     (i32.const 2)
    )
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 45)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.load offset=4
    (tee_local $1
     (call $~lib/internal/typedarray/TypedArray<i32,i32>#constructor
      (get_local $0)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 48)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=8
     (get_local $1)
    )
    (i32.shl
     (get_local $0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 49)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.shr_s
     (i32.sub
      (i32.load offset=8
       (get_local $1)
      )
      (i32.load offset=4
       (get_local $1)
      )
     )
     (i32.const 2)
    )
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 50)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.load offset=4
    (tee_local $1
     (call $~lib/internal/typedarray/TypedArray<i64,i64>#constructor
      (get_local $0)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 53)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=8
     (get_local $1)
    )
    (i32.shl
     (get_local $0)
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 54)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.shr_s
     (i32.sub
      (i32.load offset=8
       (get_local $1)
      )
      (i32.load offset=4
       (get_local $1)
      )
     )
     (i32.const 3)
    )
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 55)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.load offset=4
    (tee_local $1
     (call $~lib/internal/typedarray/TypedArray<i64,i64>#constructor
      (get_local $0)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 58)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=8
     (get_local $1)
    )
    (i32.shl
     (get_local $0)
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 59)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.shr_s
     (i32.sub
      (i32.load offset=8
       (get_local $1)
      )
      (i32.load offset=4
       (get_local $1)
      )
     )
     (i32.const 3)
    )
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 60)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.load offset=4
    (tee_local $1
     (call $~lib/internal/typedarray/TypedArray<i32,i32>#constructor
      (get_local $0)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 63)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=8
     (get_local $1)
    )
    (i32.shl
     (get_local $0)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 64)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.shr_s
     (i32.sub
      (i32.load offset=8
       (get_local $1)
      )
      (i32.load offset=4
       (get_local $1)
      )
     )
     (i32.const 2)
    )
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 65)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.load offset=4
    (tee_local $1
     (call $~lib/internal/typedarray/TypedArray<i64,i64>#constructor
      (get_local $0)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 68)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=8
     (get_local $1)
    )
    (i32.shl
     (get_local $0)
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 69)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.shr_s
     (i32.sub
      (i32.load offset=8
       (get_local $1)
      )
      (i32.load offset=4
       (get_local $1)
      )
     )
     (i32.const 3)
    )
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 70)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/internal/typedarray/TypedArray<i32,i32>#__set (; 11 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.shr_u
     (i32.sub
      (i32.load offset=8
       (get_local $0)
      )
      (tee_local $3
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 55)
     (i32.const 42)
    )
    (unreachable)
   )
  )
  (i32.store offset=8
   (i32.add
    (i32.add
     (i32.load
      (get_local $0)
     )
     (get_local $3)
    )
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
   (get_local $2)
  )
 )
 (func $~lib/internal/typedarray/TypedArray<i32,i32>#__get (; 12 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.shr_u
     (i32.sub
      (i32.load offset=8
       (get_local $0)
      )
      (tee_local $2
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 42)
     (i32.const 42)
    )
    (unreachable)
   )
  )
  (i32.load offset=8
   (i32.add
    (i32.add
     (i32.load
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
  )
 )
 (func $~lib/typedarray/Int32Array#subarray (; 13 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (select
    (i32.const 1)
    (tee_local $1
     (i32.shr_s
      (i32.sub
       (i32.load offset=8
        (get_local $0)
       )
       (i32.load offset=4
        (get_local $0)
       )
      )
      (i32.const 2)
     )
    )
    (i32.lt_s
     (i32.const 1)
     (get_local $1)
    )
   )
  )
  (set_local $3
   (select
    (tee_local $1
     (select
      (i32.const 2)
      (get_local $1)
      (i32.lt_s
       (i32.const 2)
       (get_local $1)
      )
     )
    )
    (get_local $2)
    (i32.gt_s
     (get_local $1)
     (get_local $2)
    )
   )
  )
  (i32.store
   (tee_local $1
    (call $~lib/allocator/arena/__memory_allocate
     (i32.const 12)
    )
   )
   (i32.load
    (get_local $0)
   )
  )
  (i32.store offset=4
   (get_local $1)
   (i32.shl
    (get_local $2)
    (i32.const 2)
   )
  )
  (i32.store offset=8
   (get_local $1)
   (i32.shl
    (get_local $3)
    (i32.const 2)
   )
  )
  (get_local $1)
 )
 (func $~lib/internal/typedarray/TypedArray<f64,f64>#__set (; 14 ;) (; has Stack IR ;) (type $iiFv) (param $0 i32) (param $1 i32) (param $2 f64)
  (local $3 i32)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.shr_u
     (i32.sub
      (i32.load offset=8
       (get_local $0)
      )
      (tee_local $3
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 55)
     (i32.const 42)
    )
    (unreachable)
   )
  )
  (f64.store offset=8
   (i32.add
    (i32.add
     (i32.load
      (get_local $0)
     )
     (get_local $3)
    )
    (i32.shl
     (get_local $1)
     (i32.const 3)
    )
   )
   (get_local $2)
  )
 )
 (func $~lib/typedarray/Float64Array#subarray (; 15 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (select
    (i32.const 2)
    (tee_local $1
     (i32.shr_s
      (i32.sub
       (i32.load offset=8
        (get_local $0)
       )
       (i32.load offset=4
        (get_local $0)
       )
      )
      (i32.const 3)
     )
    )
    (i32.lt_s
     (i32.const 2)
     (get_local $1)
    )
   )
  )
  (set_local $3
   (select
    (tee_local $1
     (select
      (i32.const 6)
      (get_local $1)
      (i32.lt_s
       (i32.const 6)
       (get_local $1)
      )
     )
    )
    (get_local $2)
    (i32.gt_s
     (get_local $1)
     (get_local $2)
    )
   )
  )
  (i32.store
   (tee_local $1
    (call $~lib/allocator/arena/__memory_allocate
     (i32.const 12)
    )
   )
   (i32.load
    (get_local $0)
   )
  )
  (i32.store offset=4
   (get_local $1)
   (i32.shl
    (get_local $2)
    (i32.const 3)
   )
  )
  (i32.store offset=8
   (get_local $1)
   (i32.shl
    (get_local $3)
    (i32.const 3)
   )
  )
  (get_local $1)
 )
 (func $~lib/internal/array/insertionSort<f64> (; 16 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $4)
      (get_local $2)
     )
    )
    (set_local $6
     (f64.load offset=8
      (i32.add
       (i32.add
        (get_local $0)
        (get_local $1)
       )
       (i32.shl
        (get_local $4)
        (i32.const 3)
       )
      )
     )
    )
    (set_local $5
     (i32.sub
      (get_local $4)
      (i32.const 1)
     )
    )
    (block $break|1
     (loop $continue|1
      (if
       (i32.ge_s
        (get_local $5)
        (i32.const 0)
       )
       (block
        (set_local $7
         (f64.load offset=8
          (i32.add
           (i32.add
            (get_local $0)
            (get_local $1)
           )
           (i32.shl
            (get_local $5)
            (i32.const 3)
           )
          )
         )
        )
        (set_global $~argc
         (i32.const 2)
        )
        (br_if $break|1
         (i32.ge_s
          (call_indirect (type $FFi)
           (get_local $6)
           (get_local $7)
           (get_local $3)
          )
          (i32.const 0)
         )
        )
        (set_local $5
         (i32.sub
          (tee_local $8
           (get_local $5)
          )
          (i32.const 1)
         )
        )
        (f64.store offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (i32.add
            (get_local $8)
            (i32.const 1)
           )
           (i32.const 3)
          )
         )
         (get_local $7)
        )
        (br $continue|1)
       )
      )
     )
    )
    (f64.store offset=8
     (i32.add
      (i32.add
       (get_local $0)
       (get_local $1)
      )
      (i32.shl
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
       (i32.const 3)
      )
     )
     (get_local $6)
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $~lib/allocator/arena/__memory_free (; 17 ;) (; has Stack IR ;) (type $FUNCSIG$v)
  (nop)
 )
 (func $~lib/internal/array/weakHeapSort<f64> (; 18 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  (local $9 f64)
  (call $~lib/internal/memory/memset
   (tee_local $8
    (call $~lib/allocator/arena/__memory_allocate
     (tee_local $6
      (i32.shl
       (i32.shr_s
        (i32.add
         (get_local $2)
         (i32.const 31)
        )
        (i32.const 5)
       )
       (i32.const 2)
      )
     )
    )
   )
   (get_local $6)
  )
  (block $break|0
   (set_local $4
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.le_s
      (get_local $4)
      (i32.const 0)
     )
    )
    (set_local $6
     (get_local $4)
    )
    (loop $continue|1
     (if
      (i32.eq
       (i32.and
        (get_local $6)
        (i32.const 1)
       )
       (i32.and
        (i32.shr_u
         (i32.load
          (i32.add
           (get_local $8)
           (i32.shl
            (i32.shr_s
             (get_local $6)
             (i32.const 6)
            )
            (i32.const 2)
           )
          )
         )
         (i32.and
          (i32.shr_s
           (get_local $6)
           (i32.const 1)
          )
          (i32.const 31)
         )
        )
        (i32.const 1)
       )
      )
      (block
       (set_local $6
        (i32.shr_s
         (get_local $6)
         (i32.const 1)
        )
       )
       (br $continue|1)
      )
     )
    )
    (set_local $9
     (f64.load offset=8
      (i32.add
       (i32.add
        (get_local $0)
        (get_local $1)
       )
       (i32.shl
        (tee_local $5
         (i32.shr_s
          (get_local $6)
          (i32.const 1)
         )
        )
        (i32.const 3)
       )
      )
     )
    )
    (set_local $7
     (f64.load offset=8
      (i32.add
       (i32.add
        (get_local $0)
        (get_local $1)
       )
       (i32.shl
        (get_local $4)
        (i32.const 3)
       )
      )
     )
    )
    (set_global $~argc
     (i32.const 2)
    )
    (if
     (i32.lt_s
      (call_indirect (type $FFi)
       (get_local $9)
       (get_local $7)
       (get_local $3)
      )
      (i32.const 0)
     )
     (block
      (i32.store
       (tee_local $6
        (i32.add
         (get_local $8)
         (i32.shl
          (i32.shr_s
           (get_local $4)
           (i32.const 5)
          )
          (i32.const 2)
         )
        )
       )
       (i32.xor
        (i32.load
         (get_local $6)
        )
        (i32.shl
         (i32.const 1)
         (i32.and
          (get_local $4)
          (i32.const 31)
         )
        )
       )
      )
      (f64.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $4)
         (i32.const 3)
        )
       )
       (get_local $9)
      )
      (f64.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $5)
         (i32.const 3)
        )
       )
       (get_local $7)
      )
     )
    )
    (set_local $4
     (i32.sub
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (block $break|2
   (set_local $4
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.lt_s
      (get_local $4)
      (i32.const 2)
     )
    )
    (set_local $7
     (f64.load offset=8
      (i32.add
       (get_local $0)
       (get_local $1)
      )
     )
    )
    (f64.store offset=8
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (f64.load offset=8
      (i32.add
       (i32.add
        (get_local $0)
        (get_local $1)
       )
       (i32.shl
        (get_local $4)
        (i32.const 3)
       )
      )
     )
    )
    (f64.store offset=8
     (i32.add
      (i32.add
       (get_local $0)
       (get_local $1)
      )
      (i32.shl
       (get_local $4)
       (i32.const 3)
      )
     )
     (get_local $7)
    )
    (set_local $5
     (i32.const 1)
    )
    (loop $continue|3
     (if
      (i32.lt_s
       (tee_local $6
        (i32.add
         (i32.shl
          (get_local $5)
          (i32.const 1)
         )
         (i32.and
          (i32.shr_u
           (i32.load
            (i32.add
             (get_local $8)
             (i32.shl
              (i32.shr_s
               (get_local $5)
               (i32.const 5)
              )
              (i32.const 2)
             )
            )
           )
           (i32.and
            (get_local $5)
            (i32.const 31)
           )
          )
          (i32.const 1)
         )
        )
       )
       (get_local $4)
      )
      (block
       (set_local $5
        (get_local $6)
       )
       (br $continue|3)
      )
     )
    )
    (loop $continue|4
     (if
      (i32.gt_s
       (get_local $5)
       (i32.const 0)
      )
      (block
       (set_local $7
        (f64.load offset=8
         (i32.add
          (get_local $0)
          (get_local $1)
         )
        )
       )
       (set_local $9
        (f64.load offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $5)
           (i32.const 3)
          )
         )
        )
       )
       (set_global $~argc
        (i32.const 2)
       )
       (if
        (i32.lt_s
         (call_indirect (type $FFi)
          (get_local $7)
          (get_local $9)
          (get_local $3)
         )
         (i32.const 0)
        )
        (block
         (i32.store
          (tee_local $2
           (i32.add
            (get_local $8)
            (i32.shl
             (i32.shr_s
              (get_local $5)
              (i32.const 5)
             )
             (i32.const 2)
            )
           )
          )
          (i32.xor
           (i32.load
            (get_local $2)
           )
           (i32.shl
            (i32.const 1)
            (i32.and
             (get_local $5)
             (i32.const 31)
            )
           )
          )
         )
         (f64.store offset=8
          (i32.add
           (i32.add
            (get_local $0)
            (get_local $1)
           )
           (i32.shl
            (get_local $5)
            (i32.const 3)
           )
          )
          (get_local $7)
         )
         (f64.store offset=8
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (get_local $9)
         )
        )
       )
       (set_local $5
        (i32.shr_s
         (get_local $5)
         (i32.const 1)
        )
       )
       (br $continue|4)
      )
     )
    )
    (set_local $4
     (i32.sub
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (call $~lib/allocator/arena/__memory_free)
  (set_local $7
   (f64.load offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.const 8)
    )
   )
  )
  (f64.store offset=8
   (i32.add
    (i32.add
     (get_local $0)
     (get_local $1)
    )
    (i32.const 8)
   )
   (f64.load offset=8
    (i32.add
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (f64.store offset=8
   (i32.add
    (get_local $0)
    (get_local $1)
   )
   (get_local $7)
  )
 )
 (func $~lib/internal/typedarray/TypedArray<f64,f64>#sort (; 19 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.le_s
    (tee_local $4
     (i32.shr_s
      (i32.sub
       (i32.load offset=8
        (get_local $0)
       )
       (i32.load offset=4
        (get_local $0)
       )
      )
      (i32.const 3)
     )
    )
    (i32.const 1)
   )
   (return
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $4)
    (i32.const 2)
   )
   (block
    (set_local $5
     (f64.load offset=8
      (i32.add
       (i32.add
        (get_local $3)
        (get_local $2)
       )
       (i32.const 8)
      )
     )
    )
    (set_local $6
     (f64.load offset=8
      (i32.add
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (set_global $~argc
     (i32.const 2)
    )
    (if
     (i32.lt_s
      (call_indirect (type $FFi)
       (get_local $5)
       (get_local $6)
       (get_local $1)
      )
      (i32.const 0)
     )
     (block
      (f64.store offset=8
       (i32.add
        (i32.add
         (get_local $3)
         (get_local $2)
        )
        (i32.const 8)
       )
       (get_local $6)
      )
      (f64.store offset=8
       (i32.add
        (get_local $3)
        (get_local $2)
       )
       (get_local $5)
      )
     )
    )
    (return
     (get_local $0)
    )
   )
  )
  (if
   (i32.lt_s
    (get_local $4)
    (i32.const 256)
   )
   (call $~lib/internal/array/insertionSort<f64>
    (get_local $3)
    (get_local $2)
    (get_local $4)
    (get_local $1)
   )
   (call $~lib/internal/array/weakHeapSort<f64>
    (get_local $3)
    (get_local $2)
    (get_local $4)
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/typedarray/TypedArray<f64,f64>#sort|trampoline~anonymous|0 (; 20 ;) (; has Stack IR ;) (type $FFi) (param $0 f64) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i64)
  (i32.sub
   (i64.gt_s
    (tee_local $2
     (i64.xor
      (tee_local $2
       (i64.reinterpret/f64
        (get_local $0)
       )
      )
      (i64.shr_u
       (i64.shr_s
        (get_local $2)
        (i64.const 63)
       )
       (i64.const 1)
      )
     )
    )
    (tee_local $3
     (i64.xor
      (tee_local $3
       (i64.reinterpret/f64
        (get_local $1)
       )
      )
      (i64.shr_u
       (i64.shr_s
        (get_local $3)
        (i64.const 63)
       )
       (i64.const 1)
      )
     )
    )
   )
   (i64.lt_s
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $~lib/internal/typedarray/TypedArray<f64,f64>#sort|trampoline (; 21 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (get_global $~argc)
     )
    )
    (unreachable)
   )
  )
  (call $~lib/internal/typedarray/TypedArray<f64,f64>#sort
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/internal/typedarray/TypedArray<f64,f64>#__get (; 22 ;) (; has Stack IR ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.shr_u
     (i32.sub
      (i32.load offset=8
       (get_local $0)
      )
      (tee_local $2
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 42)
     (i32.const 42)
    )
    (unreachable)
   )
  )
  (f64.load offset=8
   (i32.add
    (i32.add
     (i32.load
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.shl
     (get_local $1)
     (i32.const 3)
    )
   )
  )
 )
 (func $~lib/internal/typedarray/TypedArray<u8,u32>#__set (; 23 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (tee_local $3
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 55)
     (i32.const 42)
    )
    (unreachable)
   )
  )
  (i32.store8 offset=8
   (i32.add
    (i32.add
     (i32.load
      (get_local $0)
     )
     (get_local $3)
    )
    (get_local $1)
   )
   (get_local $2)
  )
 )
 (func $~lib/typedarray/Uint8ClampedArray#__set (; 24 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
   (get_local $0)
   (get_local $1)
   (select
    (tee_local $3
     (select
      (get_local $2)
      (i32.const 255)
      (i32.lt_s
       (get_local $2)
       (i32.const 255)
      )
     )
    )
    (i32.const 0)
    (i32.gt_s
     (get_local $3)
     (i32.const 0)
    )
   )
  )
 )
 (func $~lib/internal/typedarray/TypedArray<u8,u32>#__get (; 25 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (tee_local $2
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 42)
     (i32.const 42)
    )
    (unreachable)
   )
  )
  (i32.load8_u offset=8
   (i32.add
    (i32.add
     (i32.load
      (get_local $0)
     )
     (get_local $2)
    )
    (get_local $1)
   )
  )
 )
 (func $start (; 26 ;) (; has Stack IR ;) (type $v)
  (local $0 i32)
  (set_global $~lib/allocator/arena/startOffset
   (i32.const 176)
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (call $std/typedarray/testInstantiate
   (i32.const 0)
  )
  (call $std/typedarray/testInstantiate
   (i32.const 5)
  )
  (set_global $std/typedarray/arr
   (call $~lib/internal/typedarray/TypedArray<i32,i32>#constructor
    (i32.const 3)
   )
  )
  (call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
   (get_global $std/typedarray/arr)
   (i32.const 0)
   (i32.const 1)
  )
  (call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
   (get_global $std/typedarray/arr)
   (i32.const 1)
   (i32.const 2)
  )
  (call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
   (get_global $std/typedarray/arr)
   (i32.const 2)
   (i32.const 3)
  )
  (if
   (i32.ne
    (i32.shr_s
     (i32.sub
      (i32.load offset=8
       (tee_local $0
        (get_global $std/typedarray/arr)
       )
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
    (i32.const 3)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 80)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.load offset=4
    (get_global $std/typedarray/arr)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 81)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=8
     (get_global $std/typedarray/arr)
    )
    (i32.const 12)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 82)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/internal/typedarray/TypedArray<i32,i32>#__get
     (get_global $std/typedarray/arr)
     (i32.const 0)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 83)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/internal/typedarray/TypedArray<i32,i32>#__get
     (get_global $std/typedarray/arr)
     (i32.const 1)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 84)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/internal/typedarray/TypedArray<i32,i32>#__get
     (get_global $std/typedarray/arr)
     (i32.const 2)
    )
    (i32.const 3)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 85)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/typedarray/arr
   (call $~lib/typedarray/Int32Array#subarray
    (get_global $std/typedarray/arr)
   )
  )
  (if
   (i32.ne
    (i32.shr_s
     (i32.sub
      (i32.load offset=8
       (tee_local $0
        (get_global $std/typedarray/arr)
       )
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 88)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (get_global $std/typedarray/arr)
    )
    (i32.const 4)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 89)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=8
     (get_global $std/typedarray/arr)
    )
    (i32.const 8)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 90)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/internal/typedarray/TypedArray<i32,i32>#__get
     (get_global $std/typedarray/arr)
     (i32.const 0)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 91)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/typedarray/af64
   (call $~lib/internal/typedarray/TypedArray<i64,i64>#constructor
    (i32.const 8)
   )
  )
  (call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
   (get_global $std/typedarray/af64)
   (i32.const 0)
   (f64.const 1)
  )
  (call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
   (get_global $std/typedarray/af64)
   (i32.const 1)
   (f64.const 2)
  )
  (call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
   (get_global $std/typedarray/af64)
   (i32.const 2)
   (f64.const 7)
  )
  (call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
   (get_global $std/typedarray/af64)
   (i32.const 3)
   (f64.const 6)
  )
  (call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
   (get_global $std/typedarray/af64)
   (i32.const 4)
   (f64.const 5)
  )
  (call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
   (get_global $std/typedarray/af64)
   (i32.const 5)
   (f64.const 4)
  )
  (call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
   (get_global $std/typedarray/af64)
   (i32.const 6)
   (f64.const 3)
  )
  (call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
   (get_global $std/typedarray/af64)
   (i32.const 7)
   (f64.const 8)
  )
  (set_global $std/typedarray/af64
   (call $~lib/typedarray/Float64Array#subarray
    (get_global $std/typedarray/af64)
   )
  )
  (if
   (i32.ne
    (i32.shr_s
     (i32.sub
      (i32.load offset=8
       (tee_local $0
        (get_global $std/typedarray/af64)
       )
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 3)
    )
    (i32.const 4)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 105)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 0)
  )
  (drop
   (call $~lib/internal/typedarray/TypedArray<f64,f64>#sort|trampoline
    (get_global $std/typedarray/af64)
   )
  )
  (if
   (tee_local $0
    (f64.eq
     (call $~lib/internal/typedarray/TypedArray<f64,f64>#__get
      (get_global $std/typedarray/af64)
      (i32.const 0)
     )
     (f64.const 4)
    )
   )
   (set_local $0
    (f64.eq
     (call $~lib/internal/typedarray/TypedArray<f64,f64>#__get
      (get_global $std/typedarray/af64)
      (i32.const 1)
     )
     (f64.const 5)
    )
   )
  )
  (if
   (get_local $0)
   (set_local $0
    (f64.eq
     (call $~lib/internal/typedarray/TypedArray<f64,f64>#__get
      (get_global $std/typedarray/af64)
      (i32.const 2)
     )
     (f64.const 6)
    )
   )
  )
  (if
   (get_local $0)
   (set_local $0
    (f64.eq
     (call $~lib/internal/typedarray/TypedArray<f64,f64>#__get
      (get_global $std/typedarray/af64)
      (i32.const 3)
     )
     (f64.const 7)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 107)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/typedarray/clampedArr
   (call $~lib/internal/typedarray/TypedArray<i8,i32>#constructor
    (i32.const 3)
   )
  )
  (call $~lib/typedarray/Uint8ClampedArray#__set
   (get_global $std/typedarray/clampedArr)
   (i32.const 0)
   (i32.const -32)
  )
  (call $~lib/typedarray/Uint8ClampedArray#__set
   (get_global $std/typedarray/clampedArr)
   (i32.const 1)
   (i32.const 2)
  )
  (call $~lib/typedarray/Uint8ClampedArray#__set
   (get_global $std/typedarray/clampedArr)
   (i32.const 2)
   (i32.const 256)
  )
  (if
   (i32.and
    (call $~lib/internal/typedarray/TypedArray<u8,u32>#__get
     (get_global $std/typedarray/clampedArr)
     (i32.const 0)
    )
    (i32.const 255)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 114)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.and
     (call $~lib/internal/typedarray/TypedArray<u8,u32>#__get
      (get_global $std/typedarray/clampedArr)
      (i32.const 1)
     )
     (i32.const 255)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 115)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.and
     (call $~lib/internal/typedarray/TypedArray<u8,u32>#__get
      (get_global $std/typedarray/clampedArr)
      (i32.const 2)
     )
     (i32.const 255)
    )
    (i32.const 255)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 116)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/internal/typedarray/TypedArray<i64,i64>#constructor
    (i32.const 134217727)
   )
  )
 )
)
