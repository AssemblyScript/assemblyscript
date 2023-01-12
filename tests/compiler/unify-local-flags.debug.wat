(module
 (type $none_=>_none (func))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32776))
 (global $~lib/memory/__heap_base i32 (i32.const 32776))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "testFor" (func $unify-local-flags/testFor))
 (export "testWhile" (func $unify-local-flags/testWhile))
 (export "testDo" (func $unify-local-flags/testDo))
 (export "memory" (memory $0))
 (func $unify-local-flags/testFor
  (local $x i32)
  (local $i i32)
  i32.const 0
  local.set $x
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   i32.const 255
   i32.lt_u
   if
    local.get $i
    local.set $x
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
 )
 (func $unify-local-flags/testWhile
  (local $x i32)
  (local $i i32)
  i32.const 0
  local.set $x
  i32.const 0
  local.set $i
  loop $while-continue|2
   local.get $i
   i32.const 255
   i32.and
   i32.const 255
   i32.lt_u
   if
    local.get $i
    local.set $x
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $while-continue|2
   end
  end
 )
 (func $unify-local-flags/testDo
  (local $x i32)
  (local $i i32)
  i32.const 0
  local.set $x
  i32.const 0
  local.set $i
  loop $do-loop|2
   local.get $i
   local.set $x
   local.get $i
   i32.const 1
   i32.add
   local.tee $i
   i32.const 255
   i32.and
   i32.const 255
   i32.lt_u
   br_if $do-loop|2
  end
 )
)
