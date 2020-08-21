(module
 (type $none_=>_none (func))
 (memory $0 0)
 (table $0 1 funcref)
 (global $~lib/shared/target/Target.JS i32 (i32.const 0))
 (global $~lib/shared/target/Target.WASM32 i32 (i32.const 1))
 (global $~lib/shared/target/Target.WASM64 i32 (i32.const 2))
 (global $~lib/ASC_TARGET i32 (i32.const 1))
 (global $wasi/snapshot_preview1/sig (mut i32) (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:wasi/snapshot_preview1
  i32.const 0
  i32.const 0
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  i32.const 16
  i32.const 16
  i32.eq
  drop
  i32.const 20
  i32.const 20
  i32.eq
  drop
  i32.const 24
  i32.const 24
  i32.eq
  drop
  i32.const 0
  i32.const 0
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  i32.const 10
  i32.const 10
  i32.eq
  drop
  i32.const 16
  i32.const 16
  i32.eq
  drop
  i32.const 24
  i32.const 24
  i32.eq
  drop
  i32.const 32
  i32.const 32
  i32.eq
  drop
  i32.const 32
  i32.const 32
  i32.eq
  drop
  i32.const 0
  i32.const 0
  i32.eq
  drop
  i32.const 2
  i32.const 2
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  i32.const 16
  i32.const 16
  i32.eq
  drop
  i32.const 24
  i32.const 24
  i32.eq
  drop
  i32.const 0
  i32.const 0
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  i32.const 16
  i32.const 16
  i32.eq
  drop
  i32.const 24
  i32.const 24
  i32.eq
  drop
  i32.const 32
  i32.const 32
  i32.eq
  drop
  i32.const 40
  i32.const 40
  i32.eq
  drop
  i32.const 48
  i32.const 48
  i32.eq
  drop
  i32.const 56
  i32.const 56
  i32.eq
  drop
  i32.const 64
  i32.const 64
  i32.eq
  drop
  i32.const 0
  i32.const 0
  i32.eq
  drop
  i32.const 1
  global.get $~lib/shared/target/Target.WASM32
  i32.eq
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  i32.const 0
  i32.const 0
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  i32.const 16
  i32.const 16
  i32.eq
  drop
  i32.const 24
  i32.const 24
  i32.eq
  drop
  i32.const 32
  i32.const 32
  i32.eq
  drop
  i32.const 40
  i32.const 40
  i32.eq
  drop
  i32.const 48
  i32.const 48
  i32.eq
  drop
  i32.const 0
  i32.const 0
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  i32.const 16
  i32.const 16
  i32.eq
  drop
  i32.const 48
  i32.const 48
  i32.eq
  drop
  i32.const 48
  i32.const 48
  i32.eq
  drop
  i32.const 0
  i32.const 0
  i32.eq
  drop
  i32.const 1
  global.get $~lib/shared/target/Target.WASM32
  i32.eq
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  i32.const 9
  global.set $wasi/snapshot_preview1/sig
 )
 (func $~start
  call $start:wasi/snapshot_preview1
 )
)
