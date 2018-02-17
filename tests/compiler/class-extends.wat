(module
 (type $iv (func (param i32)))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "test" (func $class-extends/test))
 (export "memory" (memory $0))
 (func $class-extends/test (; 0 ;) (type $iv) (param $0 i32)
  ;;@ class-extends.ts:10:2
  (drop
   (i32.load
    (get_local $0)
   )
  )
  ;;@ class-extends.ts:11:2
  (drop
   (i32.load16_s offset=4
    (get_local $0)
   )
  )
  ;;@ class-extends.ts:12:2
  (i32.store
   (get_local $0)
   ;;@ class-extends.ts:12:8
   (i32.const 2)
  )
  ;;@ class-extends.ts:13:2
  (i32.store16 offset=4
   (get_local $0)
   ;;@ class-extends.ts:13:8
   (i32.const 3)
  )
 )
)
