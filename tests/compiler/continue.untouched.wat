(module
 (type $i32_=>_none (func (param i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (export "testInherit" (func $continue/testInherit))
 (export "memory" (memory $0))
 (func $continue/testInherit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $1
   i32.const 10
   i32.lt_s
   local.set $2
   local.get $2
   if
    block $for-continue|0
     local.get $0
     if
      local.get $1
      i32.const 5
      i32.eq
      if
       br $for-continue|0
      end
     end
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
