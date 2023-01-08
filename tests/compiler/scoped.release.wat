(module
 (type $none_=>_none (func_subtype func))
 (memory $0 0)
 (export "memory" (memory $0))
 (start $~start)
 (func $~start (type $none_=>_none)
  (local $0 i32)
  (local $1 i32)
  loop $for-loop|0
   local.get $0
   i32.const 0
   i32.le_s
   if
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $1
   i32.const 0
   i32.le_s
   if
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
 )
)
