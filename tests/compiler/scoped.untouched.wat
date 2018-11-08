(module
 (type $iv (func (param i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $scoped/aGlobal (mut i32) (i32.const 1))
 (global $scoped/aConstant i32 (i32.const 3))
 (global $scoped/aStartFunctionLocal (mut i32) (i32.const 2))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $scoped/fn (; 0 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  i32.const 0
  set_local $1
  get_local $0
  set_local $1
 )
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 f32)
  block $break|0
   i32.const 0
   set_local $0
   loop $repeat|0
    get_local $0
    i32.const 1
    i32.lt_s
    i32.eqz
    br_if $break|0
    nop
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
   set_local $1
   loop $repeat|1
    get_local $1
    i32.const 1
    i32.lt_s
    i32.eqz
    br_if $break|1
    get_local $1
    drop
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|1
    unreachable
   end
   unreachable
  end
  block
   i64.const 5
   set_local $2
   f32.const 10
   set_local $3
  end
  i32.const 42
  call $scoped/fn
 )
 (func $null (; 2 ;) (type $v)
 )
)
