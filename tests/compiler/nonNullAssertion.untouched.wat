(module
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $HEAP_BASE i32 (i32.const 8))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "test" (func $nonNullAssertion/test))
 (export "test2" (func $nonNullAssertion/test2))
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
 )
)
