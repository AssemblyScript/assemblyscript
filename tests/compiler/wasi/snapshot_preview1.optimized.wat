(module
 (type $none_=>_none (func))
 (memory $0 0)
 (global $wasi/snapshot_preview1/sig (mut i32) (i32.const 1))
 (global $~started (mut i32) (i32.const 0))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $~start (; 0 ;)
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  i32.const 9
  global.set $wasi/snapshot_preview1/sig
 )
)
