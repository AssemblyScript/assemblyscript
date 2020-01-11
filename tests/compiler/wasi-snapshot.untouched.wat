(module
 (type $none_=>_none (func))
 (memory $0 0)
 (table $0 1 funcref)
 (global $~lib/shared/target/Target.WASM32 i32 (i32.const 0))
 (global $~lib/shared/target/Target.WASM64 i32 (i32.const 1))
 (global $~lib/shared/target/Target.JS i32 (i32.const 2))
 (global $~lib/ASC_TARGET i32 (i32.const 0))
 (global $wasi-snapshot/sig (mut i32) (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:wasi-snapshot (; 0 ;)
  i32.const 9
  global.set $wasi-snapshot/sig
 )
 (func $~start (; 1 ;)
  call $start:wasi-snapshot
 )
)
