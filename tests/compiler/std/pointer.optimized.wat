(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iifv (func (param i32 i32 f32)))
 (type $iif (func (param i32 i32) (result f32)))
 (type $v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $std/pointer/one (mut i32) (i32.const 0))
 (global $std/pointer/two (mut i32) (i32.const 0))
 (global $std/pointer/add (mut i32) (i32.const 0))
 (global $std/pointer/sub (mut i32) (i32.const 0))
 (global $std/pointer/nextOne (mut i32) (i32.const 0))
 (global $std/pointer/buf (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 8) "\0e\00\00\00s\00t\00d\00/\00p\00o\00i\00n\00t\00e\00r\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func $std/pointer/Pointer<Entry>#constructor (; 1 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (get_local $0)
 )
 (func $std/pointer/Pointer<f32>#set (; 2 ;) (; has Stack IR ;) (type $iifv) (param $0 i32) (param $1 i32) (param $2 f32)
  (f32.store
   (i32.add
    (get_local $0)
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
   (get_local $2)
  )
 )
 (func $std/pointer/Pointer<f32>#get (; 3 ;) (; has Stack IR ;) (type $iif) (param $0 i32) (param $1 i32) (result f32)
  (f32.load
   (i32.add
    (get_local $0)
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
  )
 )
 (func $start (; 4 ;) (; has Stack IR ;) (type $v)
  (set_global $std/pointer/one
   (call $std/pointer/Pointer<Entry>#constructor
    (i32.const 8)
   )
  )
  (set_global $std/pointer/two
   (call $std/pointer/Pointer<Entry>#constructor
    (i32.const 24)
   )
  )
  (if
   (i32.ne
    (get_global $std/pointer/one)
    (i32.const 8)
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
    (get_global $std/pointer/two)
    (i32.const 24)
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
   (get_global $std/pointer/one)
   (i32.const 1)
  )
  (i32.store offset=4
   (get_global $std/pointer/one)
   (i32.const 2)
  )
  (if
   (i32.ne
    (i32.load
     (get_global $std/pointer/one)
    )
    (i32.const 1)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/pointer/one)
    )
    (i32.const 2)
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
   (i32.add
    (get_global $std/pointer/one)
    (get_global $std/pointer/two)
   )
  )
  (if
   (i32.ne
    (get_global $std/pointer/add)
    (i32.const 32)
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
   (i32.sub
    (get_global $std/pointer/two)
    (get_global $std/pointer/one)
   )
  )
  (if
   (i32.ne
    (get_global $std/pointer/sub)
    (i32.const 16)
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
   (i32.ne
    (get_global $std/pointer/one)
    (i32.const 8)
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
  (set_global $std/pointer/one
   (i32.add
    (get_global $std/pointer/one)
    (i32.const 8)
   )
  )
  (set_global $std/pointer/nextOne
   (get_global $std/pointer/one)
  )
  (if
   (i32.ne
    (get_global $std/pointer/nextOne)
    (get_global $std/pointer/one)
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
    (get_global $std/pointer/one)
    (i32.const 16)
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
    (get_global $std/pointer/two)
    (i32.const 24)
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
    (get_global $std/pointer/two)
    (i32.const 8)
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
    (i32.load
     (get_global $std/pointer/two)
    )
    (i32.const 1)
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
    (i32.load offset=4
     (get_global $std/pointer/two)
    )
    (i32.const 2)
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
   (call $std/pointer/Pointer<Entry>#constructor
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
   (f32.ne
    (call $std/pointer/Pointer<f32>#get
     (get_global $std/pointer/buf)
     (i32.const 0)
    )
    (f32.const 1.100000023841858)
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
   (f32.ne
    (call $std/pointer/Pointer<f32>#get
     (get_global $std/pointer/buf)
     (i32.const 1)
    )
    (f32.const 1.2000000476837158)
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
   (f32.ne
    (f32.load
     (get_global $std/pointer/buf)
    )
    (f32.const 1.100000023841858)
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
   (f32.ne
    (f32.load
     (i32.add
      (get_global $std/pointer/buf)
      (i32.const 4)
     )
    )
    (f32.const 1.2000000476837158)
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
   (f32.ne
    (f32.load
     (i32.const 0)
    )
    (f32.const 1.100000023841858)
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
   (f32.ne
    (f32.load
     (i32.const 4)
    )
    (f32.const 1.2000000476837158)
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
  (f32.store
   (i32.add
    (get_global $std/pointer/buf)
    (i32.const 8)
   )
   (f32.const 1.2999999523162842)
  )
  (if
   (f32.ne
    (call $std/pointer/Pointer<f32>#get
     (get_global $std/pointer/buf)
     (i32.const 2)
    )
    (f32.const 1.2999999523162842)
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
   (f32.ne
    (f32.load
     (i32.add
      (get_global $std/pointer/buf)
      (i32.const 8)
     )
    )
    (f32.const 1.2999999523162842)
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
   (f32.ne
    (f32.load
     (i32.const 8)
    )
    (f32.const 1.2999999523162842)
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
