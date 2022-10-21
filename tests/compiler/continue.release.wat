(module
 (type $i32_=>_none (func_subtype (param i32) func))
 (memory $0 0)
 (export "testInherit" (func $continue/testInherit))
 (export "memory" (memory $0))
 (func $continue/testInherit (type $i32_=>_none) (param $0 i32)
  (local $1 i32)
  loop $for-loop|0
   local.get $1
   i32.const 10
   i32.lt_s
   if
    block $for-continue|0
     local.get $0
     i32.const 0
     local.get $1
     i32.const 5
     i32.eq
     select
     br_if $for-continue|0
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
)
