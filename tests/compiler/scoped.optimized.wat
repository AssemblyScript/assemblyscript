(module
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:scoped (; 0 ;) (type $FUNCSIG$v)
  (local $0 i32)
  loop $repeat|0
   local.get $0
   i32.const 1
   i32.lt_s
   if
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  i32.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 1
   i32.lt_s
   if
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|1
   end
  end
 )
 (func $start (; 1 ;) (type $FUNCSIG$v)
  call $start:scoped
 )
 (func $null (; 2 ;) (type $FUNCSIG$v)
  nop
 )
)
