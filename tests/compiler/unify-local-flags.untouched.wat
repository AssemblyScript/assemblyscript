(module
 (type $none_=>_none (func))
 (memory $0 0)
 (table $0 1 funcref)
 (export "memory" (memory $0))
 (export "testFor" (func $unify-local-flags/testFor))
 (export "testWhile" (func $unify-local-flags/testWhile))
 (export "testDo" (func $unify-local-flags/testDo))
 (func $unify-local-flags/testFor
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  local.set $0
  i32.const 0
  local.set $1
  loop $for-loop|2
   local.get $1
   i32.const 255
   i32.and
   i32.const 255
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $1
    local.set $0
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|2
   end
  end
 )
 (func $unify-local-flags/testWhile
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.set $0
  i32.const 0
  local.set $1
  loop $while-continue|2
   local.get $1
   i32.const 255
   i32.and
   i32.const 255
   i32.lt_u
   local.set $2
   local.get $2
   if
    local.get $1
    local.set $0
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|2
   end
  end
 )
 (func $unify-local-flags/testDo
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.set $0
  i32.const 0
  local.set $1
  loop $do-continue|1
   local.get $1
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.const 255
   i32.and
   i32.const 255
   i32.lt_u
   local.set $2
   local.get $2
   br_if $do-continue|1
  end
 )
)
