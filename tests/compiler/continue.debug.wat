(module
 (type $i32_=>_none (func_subtype (param i32) func))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32776))
 (global $~lib/memory/__heap_base i32 (i32.const 32776))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "testInherit" (func $continue/testInherit))
 (export "memory" (memory $0))
 (func $continue/testInherit (type $i32_=>_none) (param $b i32)
  (local $i i32)
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   i32.const 10
   i32.lt_s
   if
    block $for-continue|0
     local.get $b
     if
      local.get $i
      i32.const 5
      i32.eq
      if
       br $for-continue|0
      end
     end
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
 )
)
