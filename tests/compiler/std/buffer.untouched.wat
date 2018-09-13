(module
 (type $ii (func (param i32) (result i32)))
 (type $iifv (func (param i32 i32 f32)))
 (type $iif (func (param i32 i32) (result f32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $std/buffer/buf (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 40))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00s\00t\00d\00/\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $std/buffer/Buffer.from<f32> (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (get_local $0)
 )
 (func $std/buffer/Buffer<f32>#set (; 2 ;) (type $iifv) (param $0 i32) (param $1 i32) (param $2 f32)
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
 (func $std/buffer/Buffer<f32>#get (; 3 ;) (type $iif) (param $0 i32) (param $1 i32) (result f32)
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
 (func $std/buffer/Buffer<f32>#slice (; 4 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.add
   (get_local $0)
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
 )
 (func $start (; 5 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 f32)
  (set_global $std/buffer/buf
   (call $std/buffer/Buffer.from<f32>
    (i32.const 0)
   )
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
   (i32.eqz
    (f32.eq
     (call $std/buffer/Buffer<f32>#get
      (get_global $std/buffer/buf)
      (i32.const 0)
     )
     (f32.const 1.100000023841858)
    )
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
   (i32.eqz
    (f32.eq
     (call $std/buffer/Buffer<f32>#get
      (get_global $std/buffer/buf)
      (i32.const 1)
     )
     (f32.const 1.2000000476837158)
    )
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
   (i32.eqz
    (f32.eq
     (block $std/buffer/Buffer<f32>#get|inlined.0 (result f32)
      (set_local $0
       (get_global $std/buffer/buf)
      )
      (set_local $1
       (i32.const 0)
      )
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
     (f32.const 1.100000023841858)
    )
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
   (i32.eqz
    (f32.eq
     (block $std/buffer/Buffer<f32>#get|inlined.1 (result f32)
      (set_local $1
       (get_global $std/buffer/buf)
      )
      (set_local $0
       (i32.const 1)
      )
      (f32.load
       (i32.add
        (get_local $1)
        (i32.shl
         (get_local $0)
         (i32.const 2)
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
     (i32.const 30)
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
     (i32.const 32)
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
     (i32.const 33)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (block $std/buffer/Buffer<f32>#set|inlined.0
   (set_local $0
    (get_global $std/buffer/buf)
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
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
    (get_local $2)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (call $std/buffer/Buffer<f32>#get
      (get_global $std/buffer/buf)
      (i32.const 2)
     )
     (f32.const 1.2999999523162842)
    )
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
   (i32.eqz
    (f32.eq
     (block $std/buffer/Buffer<f32>#get|inlined.2 (result f32)
      (set_local $1
       (get_global $std/buffer/buf)
      )
      (set_local $0
       (i32.const 2)
      )
      (f32.load
       (i32.add
        (get_local $1)
        (i32.shl
         (get_local $0)
         (i32.const 2)
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
     (i32.const 37)
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
     (i32.const 38)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/buffer/Buffer<f32>#slice
      (get_global $std/buffer/buf)
      (i32.const 1)
     )
     (i32.const 4)
    )
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
