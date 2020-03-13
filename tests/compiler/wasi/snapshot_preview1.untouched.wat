(module
 (type $none_=>_none (func))
 (memory $0 0)
 (table $0 1 funcref)
 (global $~lib/shared/target/Target.WASM32 i32 (i32.const 0))
 (global $~lib/shared/target/Target.WASM64 i32 (i32.const 1))
 (global $~lib/shared/target/Target.JS i32 (i32.const 2))
 (global $~lib/ASC_TARGET i32 (i32.const 0))
 (global $wasi/snapshot_preview1/sig (mut i32) (i32.const 1))
 (global $~started (mut i32) (i32.const 0))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $start:wasi/snapshot_preview1 (; 0 ;)
  i32.const 9
  global.set $wasi/snapshot_preview1/sig
 )
 (func $~start (; 1 ;)
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  call $start:wasi/snapshot_preview1
 )
)
