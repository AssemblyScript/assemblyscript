(module
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (global $infer-type/ri (mut i32) (i32.const 0))
 (global $infer-type/rI (mut i64) (i64.const 0))
 (global $infer-type/rf (mut f32) (f32.const 0))
 (global $infer-type/rF (mut f64) (f64.const 0))
 (export "memory" (memory $0))
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
  loop $loop|0
   local.get $0
   i32.const 10
   i32.lt_s
   if
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
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
