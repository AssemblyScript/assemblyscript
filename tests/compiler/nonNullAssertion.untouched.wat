(module
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $i (func (result i32)))
 (type $v (func))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~argc (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 24))
 (table 1 1 anyfunc)
 (elem (i32.const 0) $nonNullAssertion/useTest2~anonymous|0)
 (memory $0 1)
 (data (i32.const 8) "\00\00\00\00\00\00\00\00")
 (data (i32.const 16) "\08\00\00\00\00\00\00\00")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $nonNullAssertion/test))
 (export "test2" (func $nonNullAssertion/test2))
 (export "useTest2" (func $nonNullAssertion/useTest2))
 (func $nonNullAssertion/test (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (get_local $0)
 )
 (func $~lib/array/Array<i32>#__get (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $nonNullAssertion/test2 (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (i32.load offset=8
    (get_local $0)
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (i32.add
   (i32.add
    (i32.add
     (i32.add
      (i32.load
       (get_local $0)
      )
      (call $~lib/array/Array<i32>#__get
       (i32.load offset=4
        (get_local $0)
       )
       (i32.const 0)
      )
     )
     (block (result i32)
      (set_global $~argc
       (i32.const 0)
      )
      (call_indirect (type $i)
       (i32.load offset=8
        (get_local $0)
       )
      )
     )
    )
    (block (result i32)
     (set_global $~argc
      (i32.const 0)
     )
     (call_indirect (type $i)
      (get_local $1)
     )
    )
   )
   (call $~lib/array/Array<i32>#__get
    (get_local $2)
    (i32.const 0)
   )
  )
 )
 (func $~lib/memory/memory.allocate (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (unreachable)
 )
 (func $nonNullAssertion/useTest2~anonymous|0 (; 4 ;) (type $i) (result i32)
  (i32.const 1)
 )
 (func $nonNullAssertion/useTest2 (; 5 ;) (type $v)
  (local $0 i32)
  (set_local $0
   (block (result i32)
    (set_local $0
     (call $~lib/memory/memory.allocate
      (i32.const 12)
     )
    )
    (i32.store
     (get_local $0)
     (i32.const 0)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.const 0)
    )
    (i32.store offset=8
     (get_local $0)
     (i32.const 0)
    )
    (get_local $0)
   )
  )
  (i32.store
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=4
   (get_local $0)
   (i32.const 16)
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 0)
  )
 )
)
