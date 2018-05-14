(module
 (type $i (func (result i32)))
 (global $HEAP_BASE i32 (i32.const 8))
 (memory $0 1)
 (export "getValue" (func $named-import-default/getValue))
 (export "memory" (memory $0))
 (func $named-export-default/get3 (; 0 ;) (type $i) (result i32)
  (return
   (i32.const 3)
  )
 )
 (func $named-import-default/getValue (; 1 ;) (type $i) (result i32)
  (return
   (call $named-export-default/get3)
  )
 )
)
