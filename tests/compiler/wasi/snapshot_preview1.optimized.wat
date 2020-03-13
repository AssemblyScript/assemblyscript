(module
 (type $none_=>_none (func))
 (memory $0 0)
 (global $wasi/snapshot_preview1/sig (mut i32) (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $~start (; 0 ;)
  i32.const 9
  global.set $wasi/snapshot_preview1/sig
 )
)
