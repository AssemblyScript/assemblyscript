(module
 (type $FUNCSIG$ff (func (param f32) (result f32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "test1" (func $infer-generic/test1))
 (export "test2" (func $infer-generic/test2))
 (export "test3" (func $infer-generic/test2))
 (export "test4" (func $infer-generic/test2))
 (func $infer-generic/test1 (; 0 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
 )
 (func $infer-generic/test2 (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $null (; 2 ;) (type $FUNCSIG$v)
  nop
 )
)
