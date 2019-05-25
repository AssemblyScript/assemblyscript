(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "testTrue" (func $possibly-null/testTrue))
 (export "testFalseElse" (func $possibly-null/testTrue))
 (export "testFalseContinuation" (func $possibly-null/testTrue))
 (export "testNeNull" (func $possibly-null/testTrue))
 (export "testEqNullElse" (func $possibly-null/testTrue))
 (export "testEqNullContinuation" (func $possibly-null/testTrue))
 (export "testNotEqNull" (func $possibly-null/testTrue))
 (export "testNotNeNullElse" (func $possibly-null/testTrue))
 (export "testNotNeNullContinuation" (func $possibly-null/testTrue))
 (export "testWhile" (func $possibly-null/testWhile))
 (export "testWhile2" (func $possibly-null/testWhile2))
 (export "testWhile3" (func $possibly-null/testWhile3))
 (export "testLogicalAnd" (func $possibly-null/testTrue))
 (export "testLogicalOr" (func $possibly-null/testTrue))
 (export "testLogicalAndMulti" (func $possibly-null/testLogicalAndMulti))
 (export "testLogicalOrMulti" (func $possibly-null/testLogicalAndMulti))
 (export "testAssign" (func $possibly-null/testLogicalAndMulti))
 (export "testNeverNull" (func $possibly-null/testTrue))
 (func $possibly-null/testTrue (; 0 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $possibly-null/testWhile (; 1 ;) (type $FUNCSIG$vi) (param $0 i32)
  loop $continue|0
   local.get $0
   if
    i32.const 0
    local.set $0
    br $continue|0
   end
  end
 )
 (func $possibly-null/testWhile2 (; 2 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  loop $continue|0
   local.get $0
   if
    local.get $1
    local.set $0
    br $continue|0
   end
  end
 )
 (func $possibly-null/testWhile3 (; 3 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  loop $continue|0
   local.get $0
   if
    local.get $1
    local.get $0
    local.get $1
    select
    local.set $0
    br $continue|0
   end
  end
 )
 (func $possibly-null/testLogicalAndMulti (; 4 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $null (; 5 ;) (type $FUNCSIG$v)
  nop
 )
)
