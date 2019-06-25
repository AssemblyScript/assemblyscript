(module
 (type $FUNCSIG$v (func))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00i\00n\00f\00e\00r\00-\00t\00y\00p\00e\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $infer-type/ri (mut i32) (i32.const 0))
 (global $infer-type/rI (mut i64) (i64.const 0))
 (global $infer-type/rf (mut f32) (f32.const 0))
 (global $infer-type/rF (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:infer-type (; 0 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  global.set $infer-type/ri
  i64.const 0
  global.set $infer-type/rI
  f32.const 0
  global.set $infer-type/rf
  f64.const 0
  global.set $infer-type/rF
  loop $repeat|0
   local.get $0
   i32.const 10
   i32.lt_s
   if
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
 )
 (func $start (; 1 ;) (type $FUNCSIG$v)
  call $start:infer-type
 )
 (func $null (; 2 ;) (type $FUNCSIG$v)
  nop
 )
)
