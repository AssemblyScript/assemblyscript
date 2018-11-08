(module
 (type $v (func))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $scoped/fn (; 0 ;) (type $FUNCSIG$v)
  nop
 )
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  block $break|0
   loop $repeat|0
    get_local $0
    i32.const 1
    i32.ge_s
    br_if $break|0
    get_local $0
    i32.const 1
    i32.add
    set_local $0
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $break|1
   i32.const 0
   set_local $0
   loop $repeat|1
    get_local $0
    i32.const 1
    i32.ge_s
    br_if $break|1
    get_local $0
    i32.const 1
    i32.add
    set_local $0
    br $repeat|1
    unreachable
   end
   unreachable
  end
  call $scoped/fn
 )
 (func $null (; 2 ;) (type $v)
  nop
 )
)
