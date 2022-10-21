(module
 (type $i32_=>_none (func (param i32)))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "testInherit" (func $continue/testInherit))
 (export "memory" (memory $0))
 (func $continue/testInherit (param $b i32)
  (local $i i32)
  (local $var$2 i32)
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   i32.const 10
   i32.lt_s
   local.set $var$2
   local.get $var$2
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
