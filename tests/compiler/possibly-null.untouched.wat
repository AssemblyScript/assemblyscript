(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
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
 (export "testLogicalAnd" (func $possibly-null/testLogicalAnd))
 (export "testLogicalOr" (func $possibly-null/testLogicalOr))
 (export "testLogicalAndMulti" (func $possibly-null/testLogicalAndMulti))
 (export "testLogicalOrMulti" (func $possibly-null/testLogicalOrMulti))
 (export "testAssign" (func $possibly-null/testAssign))
 (export "testNeverNull" (func $possibly-null/testNeverNull))
 (func $possibly-null/testTrue (param $0 i32)
  local.get $0
  if
   i32.const 0
   drop
  end
 )
 (func $possibly-null/testFalseElse (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  else
   i32.const 0
   drop
  end
 )
 (func $possibly-null/testFalseContinuation (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  i32.const 0
  drop
 )
 (func $possibly-null/testNeNull (param $0 i32)
  local.get $0
  i32.const 0
  i32.ne
  if
   i32.const 0
   drop
  end
 )
 (func $possibly-null/testEqNullElse (param $0 i32)
  local.get $0
  i32.const 0
  i32.eq
  if
   return
  else
   i32.const 0
   drop
  end
 )
 (func $possibly-null/testEqNullContinuation (param $0 i32)
  local.get $0
  i32.const 0
  i32.eq
  if
   return
  end
  i32.const 0
  drop
 )
 (func $possibly-null/testNotEqNull (param $0 i32)
  local.get $0
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   drop
  end
 )
 (func $possibly-null/testNotNeNullElse (param $0 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   return
  else
   i32.const 0
   drop
  end
 )
 (func $possibly-null/testNotNeNullContinuation (param $0 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   return
  end
  i32.const 0
  drop
 )
 (func $possibly-null/testWhile (param $0 i32)
  (local $1 i32)
  loop $while-continue|0
   local.get $0
   local.set $1
   local.get $1
   if
    i32.const 0
    drop
    i32.const 0
    local.set $0
    i32.const 1
    i32.eqz
    drop
    br $while-continue|0
   end
  end
 )
 (func $possibly-null/testWhile2 (param $0 i32) (param $1 i32)
  (local $2 i32)
  loop $while-continue|0
   local.get $0
   local.set $2
   local.get $2
   if
    i32.const 0
    drop
    local.get $1
    local.set $0
    i32.const 1
    i32.eqz
    drop
    br $while-continue|0
   end
  end
 )
 (func $possibly-null/testWhile3 (param $0 i32) (param $1 i32)
  (local $2 i32)
  loop $while-continue|0
   local.get $0
   local.set $2
   local.get $2
   if
    i32.const 0
    drop
    local.get $1
    if
     local.get $1
     local.set $0
     i32.const 0
     drop
    end
    br $while-continue|0
   end
  end
 )
 (func $possibly-null/requireNonNull (param $0 i32) (result i32)
  local.get $0
 )
 (func $possibly-null/testLogicalAnd (param $0 i32)
  local.get $0
  if (result i32)
   local.get $0
   call $possibly-null/requireNonNull
  else
   i32.const 0
  end
  drop
 )
 (func $possibly-null/testLogicalOr (param $0 i32)
  local.get $0
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $0
   call $possibly-null/requireNonNull
   i32.const 0
   i32.ne
  end
  drop
 )
 (func $possibly-null/testLogicalAndMulti (param $0 i32) (param $1 i32)
  local.get $0
  if (result i32)
   local.get $1
  else
   i32.const 0
  end
  if
   i32.const 0
   drop
   i32.const 0
   drop
  else
   i32.const 1
   i32.eqz
   drop
   i32.const 1
   i32.eqz
   drop
  end
 )
 (func $possibly-null/testLogicalOrMulti (param $0 i32) (param $1 i32)
  local.get $0
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.eqz
  end
  if
   i32.const 1
   i32.eqz
   drop
   i32.const 1
   i32.eqz
   drop
  else
   i32.const 0
   drop
   i32.const 0
   drop
  end
 )
 (func $possibly-null/testAssign (param $0 i32) (param $1 i32)
  local.get $1
  local.set $0
  i32.const 0
  drop
 )
 (func $possibly-null/testNeverNull (param $0 i32)
  local.get $0
  if
   local.get $0
   drop
  end
 )
)
