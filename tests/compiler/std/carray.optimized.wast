(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $v (func))
 (global $std/carray/arr (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $std:array/CArray#__get (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.lt_s
    (get_local $1)
    (i32.const 0)
   )
   (unreachable)
  )
  (i32.load
   (i32.add
    (get_local $0)
    (i32.mul
     (get_local $1)
     (i32.const 4)
    )
   )
  )
 )
 (func $std:array/CArray#__set (; 1 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (if
   (i32.lt_s
    (get_local $1)
    (i32.const 0)
   )
   (unreachable)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.mul
     (get_local $1)
     (i32.const 4)
    )
   )
   (get_local $2)
  )
 )
 (func $start (; 2 ;) (type $v)
  (local $0 i32)
  (set_global $std/carray/arr
   (get_global $HEAP_BASE)
  )
  (if
   (i32.load
    (get_global $HEAP_BASE)
   )
   (unreachable)
  )
  (if
   (i32.load
    (i32.add
     (get_global $HEAP_BASE)
     (i32.const 4)
    )
   )
   (unreachable)
  )
  (if
   (call $std:array/CArray#__get
    (get_global $std/carray/arr)
    (i32.const 0)
   )
   (unreachable)
  )
  (if
   (call $std:array/CArray#__get
    (get_global $std/carray/arr)
    (i32.const 1)
   )
   (unreachable)
  )
  (call $std:array/CArray#__set
   (get_global $std/carray/arr)
   (i32.const 0)
   (i32.const 42)
  )
  (call $std:array/CArray#__set
   (get_global $std/carray/arr)
   (i32.const 1)
   (i32.const 24)
  )
  (if
   (i32.ne
    (i32.load
     (get_global $HEAP_BASE)
    )
    (i32.const 42)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (i32.load
     (i32.add
      (get_global $HEAP_BASE)
      (i32.const 4)
     )
    )
    (i32.const 24)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (call $std:array/CArray#__get
     (get_global $std/carray/arr)
     (i32.const 0)
    )
    (i32.const 42)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (call $std:array/CArray#__get
     (get_global $std/carray/arr)
     (i32.const 1)
    )
    (i32.const 24)
   )
   (unreachable)
  )
  (if
   (block (result i32)
    (call $std:array/CArray#__set
     (get_global $std/carray/arr)
     (i32.const 3)
     (tee_local $0
      (i32.const 9000)
     )
    )
    (i32.ne
     (get_local $0)
     (i32.const 9000)
    )
   )
   (unreachable)
  )
  (if
   (i32.ne
    (i32.load
     (i32.add
      (get_global $HEAP_BASE)
      (i32.const 12)
     )
    )
    (i32.const 9000)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (call $std:array/CArray#__get
     (get_global $std/carray/arr)
     (i32.const 3)
    )
    (i32.const 9000)
   )
   (unreachable)
  )
 )
)
