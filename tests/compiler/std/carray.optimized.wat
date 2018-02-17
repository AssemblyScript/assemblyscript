(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $std/carray/arr (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 36))
 (memory $0 1)
 (data (i32.const 4) "\0d\00\00\00s\00t\00d\00/\00c\00a\00r\00r\00a\00y\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func "$(lib)/array/CArray#__get" (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func "$(lib)/array/CArray#__set" (; 2 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $start (; 3 ;) (type $v)
  (local $0 i32)
  (set_global $std/carray/arr
   (get_global $HEAP_BASE)
  )
  (if
   (i32.load
    (get_global $HEAP_BASE)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 8)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.load
    (i32.add
     (get_global $HEAP_BASE)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 9)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call "$(lib)/array/CArray#__get"
    (get_global $std/carray/arr)
    (i32.const 0)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 11)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call "$(lib)/array/CArray#__get"
    (get_global $std/carray/arr)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 12)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call "$(lib)/array/CArray#__set"
   (get_global $std/carray/arr)
   (i32.const 0)
   (i32.const 42)
  )
  (call "$(lib)/array/CArray#__set"
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 17)
     (i32.const 0)
    )
    (unreachable)
   )
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 18)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/CArray#__get"
     (get_global $std/carray/arr)
     (i32.const 0)
    )
    (i32.const 42)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 20)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/CArray#__get"
     (get_global $std/carray/arr)
     (i32.const 1)
    )
    (i32.const 24)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 21)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (block (result i32)
    (call "$(lib)/array/CArray#__set"
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 23)
     (i32.const 0)
    )
    (unreachable)
   )
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
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 25)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call "$(lib)/array/CArray#__get"
     (get_global $std/carray/arr)
     (i32.const 3)
    )
    (i32.const 9000)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 26)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
