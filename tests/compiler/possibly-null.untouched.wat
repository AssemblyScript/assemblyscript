(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
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
 (export "testLogicalAnd" (func $possibly-null/testLogicalAnd))
 (export "testLogicalOr" (func $possibly-null/testLogicalOr))
 (export "testLogicalAndMulti" (func $possibly-null/testLogicalAndMulti))
 (export "testLogicalOrMulti" (func $possibly-null/testLogicalOrMulti))
 (export "testAssign" (func $possibly-null/testAssign))
 (export "testNeverNull" (func $possibly-null/testNeverNull))
 (func $~lib/rt/stub/__retain (; 0 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 1 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $possibly-null/testTrue (; 2 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  if
   nop
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testFalseElse (; 3 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   local.get $0
   call $~lib/rt/stub/__release
   return
  else   
   nop
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testFalseContinuation (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if
   local.get $0
   call $~lib/rt/stub/__release
   return
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testNeNull (; 5 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.ne
  if
   nop
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testEqNullElse (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  if
   local.get $0
   call $~lib/rt/stub/__release
   return
  else   
   nop
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testEqNullContinuation (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  if
   local.get $0
   call $~lib/rt/stub/__release
   return
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testNotEqNull (; 8 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  i32.eqz
  if
   nop
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testNotNeNullElse (; 9 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $0
   call $~lib/rt/stub/__release
   return
  else   
   nop
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testNotNeNullContinuation (; 10 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   local.get $0
   call $~lib/rt/stub/__release
   return
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testWhile (; 11 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   loop $continue|0
    local.get $0
    i32.eqz
    br_if $break|0
    i32.const 0
    local.tee $1
    local.get $0
    local.tee $2
    i32.ne
    if
     local.get $1
     call $~lib/rt/stub/__retain
     drop
     local.get $2
     call $~lib/rt/stub/__release
    end
    local.get $1
    local.set $0
    br $continue|0
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testWhile2 (; 12 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   loop $continue|0
    local.get $0
    i32.eqz
    br_if $break|0
    local.get $1
    local.tee $2
    local.get $0
    local.tee $3
    i32.ne
    if
     local.get $2
     call $~lib/rt/stub/__retain
     drop
     local.get $3
     call $~lib/rt/stub/__release
    end
    local.get $2
    local.set $0
    br $continue|0
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testWhile3 (; 13 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  block $break|0
   loop $continue|0
    local.get $0
    i32.eqz
    br_if $break|0
    local.get $1
    if
     local.get $1
     local.tee $2
     local.get $0
     local.tee $3
     i32.ne
     if
      local.get $2
      call $~lib/rt/stub/__retain
      drop
      local.get $3
      call $~lib/rt/stub/__release
     end
     local.get $2
     local.set $0
    end
    br $continue|0
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/requireNonNull (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
 )
 (func $possibly-null/testLogicalAnd (; 15 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  if (result i32)
   local.get $0
   call $possibly-null/requireNonNull
   local.tee $1
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
  else   
   i32.const 0
  end
  drop
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testLogicalOr (; 16 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if (result i32)
   i32.const 1
  else   
   local.get $0
   call $possibly-null/requireNonNull
   local.tee $1
   i32.const 0
   i32.ne
   local.set $2
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
  end
  drop
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testLogicalAndMulti (; 17 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  if (result i32)
   local.get $1
  else   
   i32.const 0
  end
  if
   nop
  else   
   nop
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testLogicalOrMulti (; 18 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.eqz
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.eqz
  end
  if
   nop
  else   
   nop
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testAssign (; 19 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  call $~lib/rt/stub/__retain
  drop
  local.get $1
  local.tee $2
  local.get $0
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/stub/__retain
   drop
   local.get $3
   call $~lib/rt/stub/__release
  end
  local.get $2
  local.set $0
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testNeverNull (; 20 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  if
   local.get $0
   drop
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $null (; 21 ;) (type $FUNCSIG$v)
 )
)
