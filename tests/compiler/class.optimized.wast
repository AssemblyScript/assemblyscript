(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (memory $0 1)
 (export "test" (func $class/test))
 (export "memory" (memory $0))
 (start $start)
 (func $class/test (; 0 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ class.ts:23:2
  (drop
   (i32.load
    (get_local $0)
   )
  )
  ;;@ class.ts:24:2
  (drop
   (i32.load16_s offset=4
    (get_local $0)
   )
  )
  ;;@ class.ts:25:2
  (drop
   (i32.load8_s offset=6
    (get_local $0)
   )
  )
  ;;@ class.ts:27:2
  (i32.store
   (get_local $0)
   (i32.const 1)
  )
  ;;@ class.ts:28:2
  (i32.store16 offset=4
   (get_local $0)
   ;;@ class.ts:28:19
   (i32.const 2)
  )
  ;;@ class.ts:29:2
  (i32.store8 offset=6
   (get_local $0)
   ;;@ class.ts:29:25
   (i32.const 3)
  )
  ;;@ class.ts:31:12
  (get_local $0)
 )
 (func $start (; 1 ;) (type $v)
  (nop)
 )
)
