(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $iv (func (param i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~argc (mut i32) (i32.const 0))
 (global $std/pointer/one (mut i32) (i32.const 0))
 (global $std/pointer/two (mut i32) (i32.const 0))
 (global $std/pointer/add (mut i32) (i32.const 0))
 (global $std/pointer/sub (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 8) "\0e\00\00\00s\00t\00d\00/\00p\00o\00i\00n\00t\00e\00r\00.\00t\00s")
 (export "_setargc" (func $~setargc))
 (export "Pointer<Entry>#constructor" (func $std/pointer/Pointer<Entry>#constructor|trampoline))
 (export "Pointer<Entry>#get:offset" (func $std/pointer/Pointer<Entry>#get:offset))
 (export "Pointer<Entry>#get:value" (func $std/pointer/Pointer<Entry>#get:offset))
 (export "memory" (memory $0))
 (start $start)
 (func $std/pointer/Pointer<Entry>#constructor (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (get_local $1)
 )
 (func $std/pointer/Pointer<Entry>#constructor|trampoline (; 2 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (get_global $~argc)
     )
    )
    (unreachable)
   )
   (set_local $1
    (i32.const 0)
   )
  )
  (call $std/pointer/Pointer<Entry>#constructor
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~setargc (; 3 ;) (type $iv) (param $0 i32)
  (set_global $~argc
   (get_local $0)
  )
 )
 (func $std/pointer/Pointer<Entry>#get:offset (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (get_local $0)
 )
 (func $start (; 5 ;) (type $v)
  (set_global $std/pointer/one
   (call $std/pointer/Pointer<Entry>#constructor
    (i32.const 0)
    (i32.const 8)
   )
  )
  (set_global $std/pointer/two
   (call $std/pointer/Pointer<Entry>#constructor
    (i32.const 0)
    (i32.const 24)
   )
  )
  (if
   (i32.ne
    (call $std/pointer/Pointer<Entry>#get:offset
     (get_global $std/pointer/one)
    )
    (i32.const 8)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 54)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $std/pointer/Pointer<Entry>#get:offset
     (get_global $std/pointer/two)
    )
    (i32.const 24)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 55)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (i32.store
   (call $std/pointer/Pointer<Entry>#get:offset
    (get_global $std/pointer/one)
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (call $std/pointer/Pointer<Entry>#get:offset
    (get_global $std/pointer/one)
   )
   (i32.const 2)
  )
  (if
   (i32.ne
    (i32.load
     (call $std/pointer/Pointer<Entry>#get:offset
      (get_global $std/pointer/one)
     )
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 59)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (call $std/pointer/Pointer<Entry>#get:offset
      (get_global $std/pointer/one)
     )
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 60)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/pointer/add
   (i32.add
    (get_global $std/pointer/one)
    (get_global $std/pointer/two)
   )
  )
  (if
   (i32.ne
    (call $std/pointer/Pointer<Entry>#get:offset
     (get_global $std/pointer/add)
    )
    (i32.const 32)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 63)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/pointer/sub
   (i32.sub
    (get_global $std/pointer/two)
    (get_global $std/pointer/one)
   )
  )
  (if
   (i32.ne
    (call $std/pointer/Pointer<Entry>#get:offset
     (get_global $std/pointer/sub)
    )
    (i32.const 16)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 66)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $std/pointer/Pointer<Entry>#get:offset
     (get_global $std/pointer/one)
    )
    (i32.const 8)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 68)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/pointer/one
   (i32.add
    (get_global $std/pointer/one)
    (i32.const 8)
   )
  )
  (if
   (i32.ne
    (call $std/pointer/Pointer<Entry>#get:offset
     (get_global $std/pointer/one)
    )
    (i32.const 16)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 70)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $std/pointer/Pointer<Entry>#get:offset
     (get_global $std/pointer/two)
    )
    (i32.const 24)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 72)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/pointer/two
   (i32.sub
    (get_global $std/pointer/two)
    (i32.const 8)
   )
  )
  (set_global $std/pointer/two
   (i32.sub
    (get_global $std/pointer/two)
    (i32.const 8)
   )
  )
  (if
   (i32.ne
    (call $std/pointer/Pointer<Entry>#get:offset
     (get_global $std/pointer/two)
    )
    (i32.const 8)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 75)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load
     (call $std/pointer/Pointer<Entry>#get:offset
      (get_global $std/pointer/two)
     )
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 76)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load offset=4
     (call $std/pointer/Pointer<Entry>#get:offset
      (get_global $std/pointer/two)
     )
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 77)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
