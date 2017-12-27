(module
 (type $i (func (result i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (global $getter-setter/Foo._bar (mut i32) (i32.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $getter-setter/Foo.get:bar (; 0 ;) (type $i) (result i32)
  (get_global $getter-setter/Foo._bar)
 )
 (func $getter-setter/Foo.set:bar (; 1 ;) (type $iv) (param $0 i32)
  (set_global $getter-setter/Foo._bar
   (get_local $0)
  )
 )
 (func $start (; 2 ;) (type $v)
  (if
   (call $getter-setter/Foo.get:bar)
   (unreachable)
  )
  (call $getter-setter/Foo.set:bar
   (i32.const 1)
  )
  (if
   (i32.ne
    (call $getter-setter/Foo.get:bar)
    (i32.const 1)
   )
   (unreachable)
  )
  (if
   (block (result i32)
    (call $getter-setter/Foo.set:bar
     (i32.const 2)
    )
    (i32.ne
     (call $getter-setter/Foo.get:bar)
     (i32.const 2)
    )
   )
   (unreachable)
  )
 )
)
