(module
 (type $i (func (result i32)))
 (type $v (func))
 (global $enum/NonConstant.ZERO (mut i32) (i32.const 0))
 (global $enum/NonConstant.ONE (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 4) "\08")
 (export "memory" (memory $0))
 (start $start)
 (func $enum/getZero (; 0 ;) (type $i) (result i32)
  (i32.const 0)
 )
 (func $start (; 1 ;) (type $v)
  (set_global $enum/NonConstant.ZERO
   (call $enum/getZero)
  )
  (set_global $enum/NonConstant.ONE
   (i32.add
    (get_global $enum/NonConstant.ZERO)
    (i32.const 1)
   )
  )
 )
)
