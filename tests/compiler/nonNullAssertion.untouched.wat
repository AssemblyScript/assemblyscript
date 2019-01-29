(module
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "testVar" (func $nonNullAssertion/testVar))
 (export "testObj" (func $nonNullAssertion/testObj))
 (export "testProp" (func $nonNullAssertion/testProp))
 (export "testArr" (func $nonNullAssertion/testArr))
 (export "testElem" (func $nonNullAssertion/testElem))
 (export "testAll" (func $nonNullAssertion/testAll))
 (start $start)
 (func $nonNullAssertion/testVar (; 0 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
 )
 (func $nonNullAssertion/testObj (; 1 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
 )
 (func $nonNullAssertion/testProp (; 2 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
 )
 (func $~lib/array/Array<Foo>#__get (; 3 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   i32.const 0
   set_local $3
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   get_local $3
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $nonNullAssertion/testArr (; 4 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 0
  call $~lib/array/Array<Foo>#__get
 )
 (func $~lib/array/Array<Foo | null>#__get (; 5 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   i32.const 0
   set_local $3
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   get_local $3
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $nonNullAssertion/testElem (; 6 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 0
  call $~lib/array/Array<Foo | null>#__get
 )
 (func $nonNullAssertion/testAll (; 7 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 0
  call $~lib/array/Array<Foo | null>#__get
  i32.load
 )
 (func $start (; 8 ;) (type $v)
  get_global $HEAP_BASE
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
 )
 (func $null (; 9 ;) (type $v)
 )
)
