(module
 (type $v (func))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00i\00n\00f\00e\00r\00-\00t\00y\00p\00e\00.\00t\00s")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $infer-type/ri (mut i32) (i32.const 0))
 (global $infer-type/rI (mut i64) (i64.const 0))
 (global $infer-type/rf (mut f32) (f32.const 0))
 (global $infer-type/rF (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  i32.const 0
  set_global $infer-type/ri
  i64.const 0
  set_global $infer-type/rI
  f32.const 0
  set_global $infer-type/rf
  f64.const 0
  set_global $infer-type/rF
  loop $repeat|0
   get_local $0
   i32.const 10
   i32.lt_s
   if
    get_local $0
    i32.const 1
    i32.add
    set_local $0
    br $repeat|0
   end
  end
 )
 (func $null (; 1 ;) (type $v)
  nop
 )
)
