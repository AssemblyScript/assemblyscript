(module
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  loop $repeat|0
   get_local $0
   i32.const 1
   i32.lt_s
   if
    get_local $0
    i32.const 1
    i32.add
    set_local $0
    br $repeat|0
   end
  end
  i32.const 0
  set_local $0
  loop $repeat|1
   get_local $0
   i32.const 1
   i32.lt_s
   if
    get_local $0
    i32.const 1
    i32.add
    set_local $0
    br $repeat|1
   end
  end
 )
 (func $null (; 1 ;) (type $v)
  nop
 )
)
