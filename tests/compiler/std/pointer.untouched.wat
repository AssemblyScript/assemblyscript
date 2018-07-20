(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $iv (func (param i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $std/pointer/one (mut i32) (i32.const 0))
 (global $std/pointer/two (mut i32) (i32.const 0))
 (global $std/pointer/add (mut i32) (i32.const 0))
 (global $std/pointer/sub (mut i32) (i32.const 0))
 (global $std/pointer/nextOne (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 40))
 (global $~argc (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 8) "\0e\00\00\00s\00t\00d\00/\00p\00o\00i\00n\00t\00e\00r\00.\00t\00s\00")
 (export "memory" (memory $0))
 (export "_setargc" (func $~setargc))
 (export "Pointer<Entry>#constructor" (func $std/pointer/Pointer<Entry>#constructor|trampoline))
 (start $start)
 (func $std/pointer/Pointer<Entry>#constructor (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (get_local $1)
 )
 (func $start (; 2 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
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
   (i32.eqz
    (i32.eq
     (block $std/pointer/Pointer<Entry>#get:offset|inlined.0 (result i32)
      (set_local $0
       (get_global $std/pointer/one)
      )
      (get_local $0)
     )
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 52)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $std/pointer/Pointer<Entry>#get:offset|inlined.1 (result i32)
      (set_local $0
       (get_global $std/pointer/two)
      )
      (get_local $0)
     )
     (i32.const 24)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 53)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (i32.store
   (block $std/pointer/Pointer<Entry>#get:value|inlined.0 (result i32)
    (set_local $0
     (get_global $std/pointer/one)
    )
    (get_local $0)
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (block $std/pointer/Pointer<Entry>#get:value|inlined.1 (result i32)
    (set_local $0
     (get_global $std/pointer/one)
    )
    (get_local $0)
   )
   (i32.const 2)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load
      (block $std/pointer/Pointer<Entry>#get:value|inlined.2 (result i32)
       (set_local $0
        (get_global $std/pointer/one)
       )
       (get_local $0)
      )
     )
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 57)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (block $std/pointer/Pointer<Entry>#get:value|inlined.3 (result i32)
       (set_local $0
        (get_global $std/pointer/one)
       )
       (get_local $0)
      )
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 58)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/pointer/add
   (block $std/pointer/Pointer<Entry>#add|inlined.0 (result i32)
    (set_local $0
     (get_global $std/pointer/one)
    )
    (set_local $1
     (get_global $std/pointer/two)
    )
    (i32.add
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $std/pointer/Pointer<Entry>#get:offset|inlined.2 (result i32)
      (set_local $1
       (get_global $std/pointer/add)
      )
      (get_local $1)
     )
     (i32.const 32)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 61)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/pointer/sub
   (block $std/pointer/Pointer<Entry>#sub|inlined.0 (result i32)
    (set_local $1
     (get_global $std/pointer/two)
    )
    (set_local $0
     (get_global $std/pointer/one)
    )
    (i32.sub
     (get_local $1)
     (get_local $0)
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $std/pointer/Pointer<Entry>#get:offset|inlined.3 (result i32)
      (set_local $0
       (get_global $std/pointer/sub)
      )
      (get_local $0)
     )
     (i32.const 16)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 64)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $std/pointer/Pointer<Entry>#get:offset|inlined.4 (result i32)
      (set_local $0
       (get_global $std/pointer/one)
      )
      (get_local $0)
     )
     (i32.const 8)
    )
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
  (set_global $std/pointer/nextOne
   (block (result i32)
    (set_global $std/pointer/one
     (block $std/pointer/Pointer<Entry>#inc|inlined.0 (result i32)
      (set_local $0
       (get_global $std/pointer/one)
      )
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
    )
    (get_global $std/pointer/one)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/pointer/nextOne)
     (get_global $std/pointer/one)
    )
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
  (if
   (i32.eqz
    (i32.eq
     (block $std/pointer/Pointer<Entry>#get:offset|inlined.5 (result i32)
      (set_local $0
       (get_global $std/pointer/one)
      )
      (get_local $0)
     )
     (i32.const 16)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 69)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $std/pointer/Pointer<Entry>#get:offset|inlined.6 (result i32)
      (set_local $0
       (get_global $std/pointer/two)
      )
      (get_local $0)
     )
     (i32.const 24)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 71)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/pointer/two
   (block $std/pointer/Pointer<Entry>#dec|inlined.0 (result i32)
    (set_local $0
     (get_global $std/pointer/two)
    )
    (i32.sub
     (get_local $0)
     (i32.const 8)
    )
   )
  )
  (set_global $std/pointer/two
   (block $std/pointer/Pointer<Entry>#dec|inlined.1 (result i32)
    (set_local $0
     (get_global $std/pointer/two)
    )
    (i32.sub
     (get_local $0)
     (i32.const 8)
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $std/pointer/Pointer<Entry>#get:offset|inlined.7 (result i32)
      (set_local $0
       (get_global $std/pointer/two)
      )
      (get_local $0)
     )
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 74)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load
      (block $std/pointer/Pointer<Entry>#get:value|inlined.4 (result i32)
       (set_local $0
        (get_global $std/pointer/two)
       )
       (get_local $0)
      )
     )
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (block $std/pointer/Pointer<Entry>#get:value|inlined.5 (result i32)
       (set_local $0
        (get_global $std/pointer/two)
       )
       (get_local $0)
      )
     )
     (i32.const 2)
    )
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
 )
 (func $std/pointer/Pointer<Entry>#constructor|trampoline (; 3 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
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
 (func $~setargc (; 4 ;) (type $iv) (param $0 i32)
  (set_global $~argc
   (get_local $0)
  )
 )
)
