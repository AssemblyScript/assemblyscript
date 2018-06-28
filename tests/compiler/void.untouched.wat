(module
 (type $i (func (result i32)))
 (type $v (func))
 (global $void/u8Val1 (mut i32) (i32.const 1))
 (global $void/u8Val2 (mut i32) (i32.const 255))
 (global $HEAP_BASE i32 (i32.const 8))
 (memory $0 0)
 (export "memory" (memory $0))
 (start $start)
 (func $void/anInt (; 0 ;) (type $i) (result i32)
  (i32.const 2)
 )
 (func $start (; 1 ;) (type $v)
  (drop
   (i32.const 1)
  )
  (drop
   (call $void/anInt)
  )
  (drop
   (i32.add
    (get_global $void/u8Val1)
    (get_global $void/u8Val2)
   )
  )
 )
)
