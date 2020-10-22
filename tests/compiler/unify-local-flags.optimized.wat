(module
 (type $none_=>_none (func))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "testFor" (func $unify-local-flags/testFor))
 (export "testWhile" (func $unify-local-flags/testFor))
 (export "testDo" (func $unify-local-flags/testDo))
 (func $unify-local-flags/testFor
  (local $0 i32)
  loop $for-loop|2
   local.get $0
   i32.const 255
   i32.and
   i32.const 255
   i32.lt_u
   if
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|2
   end
  end
 )
 (func $unify-local-flags/testDo
  (local $0 i32)
  loop $do-continue|1
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   i32.const 255
   i32.and
   i32.const 255
   i32.lt_u
   br_if $do-continue|1
  end
 )
)
