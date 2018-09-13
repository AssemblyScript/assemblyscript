(module
 (type $iifv (func (param i32 i32 f32)))
 (type $iif (func (param i32 i32) (result f32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $std/buffer/buf (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00s\00t\00d\00/\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func $std/buffer/Buffer.from<f32> (; 1 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (i32.const 0)
 )
 (func $std/buffer/Buffer<f32>#set (; 2 ;) (; has Stack IR ;) (type $iifv) (param $0 i32) (param $1 i32) (param $2 f32)
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
 (func $std/buffer/Buffer<f32>#get (; 3 ;) (; has Stack IR ;) (type $iif) (param $0 i32) (param $1 i32) (result f32)
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
 (func $std/buffer/Buffer<f32>#slice (; 4 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (i32.add
   (get_local $0)
   (i32.const 4)
  )
 )
 (func $start (; 5 ;) (; has Stack IR ;) (type $v)
  (set_global $std/buffer/buf
   (call $std/buffer/Buffer.from<f32>)
  )
  (call $std/buffer/Buffer<f32>#set
   (get_global $std/buffer/buf)
   (i32.const 0)
   (f32.const 1.100000023841858)
  )
  (call $std/buffer/Buffer<f32>#set
   (get_global $std/buffer/buf)
   (i32.const 1)
   (f32.const 1.2000000476837158)
  )
  (if
   (f32.ne
    (call $std/buffer/Buffer<f32>#get
     (get_global $std/buffer/buf)
     (i32.const 0)
    )
    (f32.const 1.100000023841858)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 26)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f32.ne
    (call $std/buffer/Buffer<f32>#get
     (get_global $std/buffer/buf)
     (i32.const 1)
    )
    (f32.const 1.2000000476837158)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 27)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f32.ne
    (f32.load
     (get_global $std/buffer/buf)
    )
    (f32.const 1.100000023841858)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 29)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f32.ne
    (f32.load
     (i32.add
      (get_global $std/buffer/buf)
      (i32.const 4)
     )
    )
    (f32.const 1.2000000476837158)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 30)
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
     (i32.const 32)
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
     (i32.const 33)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (f32.store
   (i32.add
    (get_global $std/buffer/buf)
    (i32.const 8)
   )
   (f32.const 1.2999999523162842)
  )
  (if
   (f32.ne
    (call $std/buffer/Buffer<f32>#get
     (get_global $std/buffer/buf)
     (i32.const 2)
    )
    (f32.const 1.2999999523162842)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 36)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f32.ne
    (f32.load
     (i32.add
      (get_global $std/buffer/buf)
      (i32.const 8)
     )
    )
    (f32.const 1.2999999523162842)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 37)
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
     (i32.const 38)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $std/buffer/Buffer<f32>#slice
     (get_global $std/buffer/buf)
    )
    (i32.const 4)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 40)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
