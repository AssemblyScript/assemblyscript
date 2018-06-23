(module
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $getter-setter/Foo._bar (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 44))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00g\00e\00t\00t\00e\00r\00-\00s\00e\00t\00t\00e\00r\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $getter-setter/Foo.get:bar (; 1 ;) (type $i) (result i32)
  (get_global $getter-setter/Foo._bar)
 )
 (func $getter-setter/Foo.set:bar (; 2 ;) (type $iv) (param $0 i32)
  (set_global $getter-setter/Foo._bar
   (get_local $0)
  )
 )
 (func $start (; 3 ;) (type $v)
  (if
   (i32.eqz
    (i32.eq
     (call $getter-setter/Foo.get:bar)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 13)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $getter-setter/Foo.set:bar
   (i32.const 1)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $getter-setter/Foo.get:bar)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 15)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block (result i32)
      (call $getter-setter/Foo.set:bar
       (i32.const 2)
      )
      (call $getter-setter/Foo.get:bar)
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 16)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
