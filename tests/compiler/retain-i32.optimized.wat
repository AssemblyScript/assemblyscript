(module
 (type $none_=>_none (func))
 (memory $0 1)
 (data (i32.const 1036) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00r\00e\00t\00a\00i\00n\00-\00i\003\002\00.\00t\00s")
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  (local $0 i32)
  i32.const -128
  local.set $0
  loop $for-loop|0
   local.get $0
   i32.const 255
   i32.le_s
   if
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 0
  i32.load8_s
  drop
  i32.const 0
  i32.load8_s
  drop
 )
)
