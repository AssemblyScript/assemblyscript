(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "testTrue" (func $possibly-null/testTrue))
 (export "testFalseElse" (func $possibly-null/testFalseElse))
 (export "testFalseContinuation" (func $possibly-null/testFalseContinuation))
 (export "testNeNull" (func $possibly-null/testNeNull))
 (export "testEqNullElse" (func $possibly-null/testEqNullElse))
 (export "testEqNullContinuation" (func $possibly-null/testEqNullContinuation))
 (export "testNotEqNull" (func $possibly-null/testNotEqNull))
 (export "testNotNeNullElse" (func $possibly-null/testNotNeNullElse))
 (export "testNotNeNullContinuation" (func $possibly-null/testNotNeNullContinuation))
 (export "testWhile" (func $possibly-null/testWhile))
 (export "testWhile2" (func $possibly-null/testWhile2))
 (export "testWhile3" (func $possibly-null/testWhile3))
 (func $possibly-null/testTrue (; 0 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  if
   nop
  end
 )
 (func $possibly-null/testFalseElse (; 1 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  else   
   nop
  end
 )
 (func $possibly-null/testFalseContinuation (; 2 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
 )
 (func $possibly-null/testNeNull (; 3 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.ne
  if
   nop
  end
 )
 (func $possibly-null/testEqNullElse (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.eq
  if
   return
  else   
   nop
  end
 )
 (func $possibly-null/testEqNullContinuation (; 5 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.eq
  if
   return
  end
 )
 (func $possibly-null/testNotEqNull (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.eq
  i32.eqz
  if
   nop
  end
 )
 (func $possibly-null/testNotNeNullElse (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   return
  else   
   nop
  end
 )
 (func $possibly-null/testNotNeNullContinuation (; 8 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   return
  end
 )
 (func $possibly-null/testWhile (; 9 ;) (type $FUNCSIG$vi) (param $0 i32)
  loop $continue|0
   local.get $0
   if
    i32.const 0
    local.set $0
    br $continue|0
   end
  end
 )
 (func $possibly-null/testWhile2 (; 10 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  loop $continue|0
   local.get $0
   if
    local.get $1
    local.set $0
    br $continue|0
   end
  end
 )
 (func $possibly-null/testWhile3 (; 11 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  loop $continue|0
   local.get $0
   if
    local.get $1
    if
     local.get $1
     local.set $0
    end
    br $continue|0
   end
  end
 )
 (func $null (; 12 ;) (type $FUNCSIG$v)
 )
)
