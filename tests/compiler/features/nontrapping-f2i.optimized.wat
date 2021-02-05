(module
 (type $none_=>_none (func))
 (memory $0 0)
 (global $~started (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
 )
)
