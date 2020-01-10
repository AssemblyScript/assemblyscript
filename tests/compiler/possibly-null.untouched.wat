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
 (func $~lib/rt/stub/__retain (; 0 ;) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (; 1 ;) (param $0 i32)
  nop
 )
 (func $possibly-null/testTrue (; 2 ;) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  if
   nop
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testFalseElse (; 3 ;) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
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
 (func $possibly-null/testFalseContinuation (; 4 ;) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
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
 (func $possibly-null/testNeNull (; 5 ;) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 0
  i32.ne
  if
   nop
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testEqNullElse (; 6 ;) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
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
 (func $possibly-null/testEqNullContinuation (; 7 ;) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
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
 (func $possibly-null/testNotEqNull (; 8 ;) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
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
 (func $possibly-null/testNotNeNullElse (; 9 ;) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
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
 (func $possibly-null/testNotNeNullContinuation (; 10 ;) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
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
 (func $possibly-null/testWhile (; 11 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  loop $while-continue|0
   local.get $0
   local.set $1
   local.get $1
   if
    i32.const 0
    local.tee $2
    local.get $0
    local.tee $3
    i32.ne
    if
     local.get $2
     call $~lib/rt/stub/__retain
     local.set $2
     local.get $3
     call $~lib/rt/stub/__release
    end
    local.get $2
    local.set $0
    br $while-continue|0
   end
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testWhile2 (; 12 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  loop $while-continue|0
   local.get $0
   local.set $2
   local.get $2
   if
    local.get $1
    local.tee $3
    local.get $0
    local.tee $4
    i32.ne
    if
     local.get $3
     call $~lib/rt/stub/__retain
     local.set $3
     local.get $4
     call $~lib/rt/stub/__release
    end
    local.get $3
    local.set $0
    br $while-continue|0
   end
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/testWhile3 (; 13 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  loop $while-continue|0
   local.get $0
   local.set $2
   local.get $2
   if
    local.get $1
    if
     local.get $1
     local.tee $3
     local.get $0
     local.tee $4
     i32.ne
     if
      local.get $3
      call $~lib/rt/stub/__retain
      local.set $3
      local.get $4
      call $~lib/rt/stub/__release
     end
     local.get $3
     local.set $0
    end
    br $while-continue|0
   end
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $possibly-null/requireNonNull (; 14 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
 )
 (func $possibly-null/testLogicalAnd (; 15 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
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
 (func $possibly-null/testLogicalOr (; 16 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
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
 (func $possibly-null/testLogicalAndMulti (; 17 ;) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
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
 (func $possibly-null/testLogicalOrMulti (; 18 ;) (param $0 i32) (param $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
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
 (func $possibly-null/testAssign (; 19 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $1
  local.tee $2
  local.get $0
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $2
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
 (func $possibly-null/testNeverNull (; 20 ;) (param $0 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  if
   local.get $0
   drop
  end
  local.get $0
  call $~lib/rt/stub/__release
 )
)
