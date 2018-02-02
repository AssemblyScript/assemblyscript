(module
 (type $iv (func (param i32)))
 (type $v (func))
 (global $getter-setter/Foo._bar (mut i32) (i32.const 0))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $getter-setter/Foo.set:bar (; 0 ;) (type $iv) (param $0 i32)
  ;;@ getter-setter.ts:9:4
  (set_global $getter-setter/Foo._bar
   ;;@ getter-setter.ts:9:15
   (get_local $0)
  )
 )
 (func $start (; 1 ;) (type $v)
  ;;@ getter-setter.ts:13:0
  (if
   (get_global $getter-setter/Foo._bar)
   (unreachable)
  )
  ;;@ getter-setter.ts:14:0
  (call $getter-setter/Foo.set:bar
   ;;@ getter-setter.ts:14:10
   (i32.const 1)
  )
  ;;@ getter-setter.ts:15:0
  (if
   ;;@ getter-setter.ts:15:7
   (i32.ne
    (get_global $getter-setter/Foo._bar)
    ;;@ getter-setter.ts:15:18
    (i32.const 1)
   )
   (unreachable)
  )
  ;;@ getter-setter.ts:16:0
  (if
   ;;@ getter-setter.ts:16:7
   (block (result i32)
    (call $getter-setter/Foo.set:bar
     ;;@ getter-setter.ts:16:18
     (i32.const 2)
    )
    ;;@ getter-setter.ts:16:7
    (i32.ne
     (get_global $getter-setter/Foo._bar)
     ;;@ getter-setter.ts:16:24
     (i32.const 2)
    )
   )
   (unreachable)
  )
 )
)
