(module
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/shared/target/Target.WASM32 i32 (i32.const 0))
 (global $~lib/shared/target/Target.WASM64 i32 (i32.const 1))
 (global $~lib/shared/target/Target.JS i32 (i32.const 2))
 (global $~lib/ASC_TARGET i32 (i32.const 0))
 (global $wasi/sig (mut i32) (i32.const 1))
 (export "memory" (memory $0))
 (start $start)
 (func $start:wasi (; 0 ;) (type $FUNCSIG$v)
  i32.const 9
  global.set $wasi/sig
 )
 (func $start (; 1 ;) (type $FUNCSIG$v)
  call $start:wasi
 )
 (func $null (; 2 ;) (type $FUNCSIG$v)
 )
)
