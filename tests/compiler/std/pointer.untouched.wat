(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iifv (func (param i32 i32 f32)))
 (type $iif (func (param i32 i32) (result f32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $std/pointer/one (mut i32) (i32.const 0))
 (global $std/pointer/two (mut i32) (i32.const 0))
 (global $std/pointer/add (mut i32) (i32.const 0))
 (global $std/pointer/sub (mut i32) (i32.const 0))
 (global $std/pointer/nextOne (mut i32) (i32.const 0))
 (global $std/pointer/buf (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 40))
 (memory $0 1)
 (data (i32.const 8) "\0e\00\00\00s\00t\00d\00/\00p\00o\00i\00n\00t\00e\00r\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $std/pointer/Pointer<Entry>#constructor (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (get_local $1)
 )
 (func $std/pointer/Pointer<f32>#constructor (; 2 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (get_local $1)
 )
 (func $std/pointer/Pointer<f32>#set (; 3 ;) (type $iifv) (param $0 i32) (param $1 i32) (param $2 f32)
  (f32.store
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
 (func $std/pointer/Pointer<f32>#get (; 4 ;) (type $iif) (param $0 i32) (param $1 i32) (result f32)
  (f32.load
   (i32.add
    (get_local $0)
    (i32.mul
     (get_local $1)
     (i32.const 4)
    )
   )
  )
 )
 (func $start (; 5 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 f32)
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
     (i32.const 66)
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
     (i32.const 67)
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
    (br $std/pointer/Pointer<Entry>#get:value|inlined.0
     (get_local $0)
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (block $std/pointer/Pointer<Entry>#get:value|inlined.1 (result i32)
    (set_local $0
     (get_global $std/pointer/one)
    )
    (br $std/pointer/Pointer<Entry>#get:value|inlined.1
     (get_local $0)
    )
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
       (br $std/pointer/Pointer<Entry>#get:value|inlined.2
        (get_local $0)
       )
      )
     )
     (i32.const 1)
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
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (block $std/pointer/Pointer<Entry>#get:value|inlined.3 (result i32)
       (set_local $0
        (get_global $std/pointer/one)
       )
       (br $std/pointer/Pointer<Entry>#get:value|inlined.3
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
     (i32.const 8)
     (i32.const 72)
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
     (i32.const 75)
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
     (i32.const 78)
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
     (i32.const 80)
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
     (i32.const 82)
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
     (i32.const 83)
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
     (i32.const 85)
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
     (i32.const 88)
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
       (br $std/pointer/Pointer<Entry>#get:value|inlined.4
        (get_local $0)
       )
      )
     )
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (block $std/pointer/Pointer<Entry>#get:value|inlined.5 (result i32)
       (set_local $0
        (get_global $std/pointer/two)
       )
       (br $std/pointer/Pointer<Entry>#get:value|inlined.5
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
     (i32.const 8)
     (i32.const 90)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/pointer/buf
   (call $std/pointer/Pointer<f32>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $std/pointer/Pointer<f32>#set
   (get_global $std/pointer/buf)
   (i32.const 0)
   (f32.const 1.100000023841858)
  )
  (call $std/pointer/Pointer<f32>#set
   (get_global $std/pointer/buf)
   (i32.const 1)
   (f32.const 1.2000000476837158)
  )
  (if
   (i32.eqz
    (f32.eq
     (call $std/pointer/Pointer<f32>#get
      (get_global $std/pointer/buf)
      (i32.const 0)
     )
     (f32.const 1.100000023841858)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 96)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (call $std/pointer/Pointer<f32>#get
      (get_global $std/pointer/buf)
      (i32.const 1)
     )
     (f32.const 1.2000000476837158)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 97)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (block $std/pointer/Pointer<f32>#get|inlined.0 (result f32)
      (set_local $0
       (get_global $std/pointer/buf)
      )
      (set_local $1
       (i32.const 0)
      )
      (f32.load
       (i32.add
        (get_local $0)
        (i32.mul
         (get_local $1)
         (i32.const 4)
        )
       )
      )
     )
     (f32.const 1.100000023841858)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 99)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (block $std/pointer/Pointer<f32>#get|inlined.1 (result f32)
      (set_local $1
       (get_global $std/pointer/buf)
      )
      (set_local $0
       (i32.const 1)
      )
      (f32.load
       (i32.add
        (get_local $1)
        (i32.mul
         (get_local $0)
         (i32.const 4)
        )
       )
      )
     )
     (f32.const 1.2000000476837158)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 100)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (f32.load
      (i32.const 0)
     )
     (f32.const 1.100000023841858)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 102)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (f32.load
      (i32.const 4)
     )
     (f32.const 1.2000000476837158)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 103)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (block $std/pointer/Pointer<f32>#set|inlined.0
   (set_local $0
    (get_global $std/pointer/buf)
   )
   (set_local $1
    (i32.const 2)
   )
   (set_local $2
    (f32.const 1.2999999523162842)
   )
   (f32.store
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
  (if
   (i32.eqz
    (f32.eq
     (call $std/pointer/Pointer<f32>#get
      (get_global $std/pointer/buf)
      (i32.const 2)
     )
     (f32.const 1.2999999523162842)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 106)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (block $std/pointer/Pointer<f32>#get|inlined.2 (result f32)
      (set_local $1
       (get_global $std/pointer/buf)
      )
      (set_local $0
       (i32.const 2)
      )
      (f32.load
       (i32.add
        (get_local $1)
        (i32.mul
         (get_local $0)
         (i32.const 4)
        )
       )
      )
     )
     (f32.const 1.2999999523162842)
    )
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
  (if
   (i32.eqz
    (f32.eq
     (f32.load
      (i32.const 8)
     )
     (f32.const 1.2999999523162842)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 108)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
