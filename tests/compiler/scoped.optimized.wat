(module
 (type $none_=>_none (func))
 (memory $0 0)
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  (local $0 i32)
  loop $for-loop|0
   local.get $0
   i32.const 1
   i32.lt_s
   if
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   i32.const 1
   i32.lt_s
   if
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
   end
  end
 )
)
