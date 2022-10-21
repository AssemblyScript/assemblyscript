(module
 (type $i32_=>_i32 (func_subtype (param i32) (result i32) func))
 (type $none_=>_none (func_subtype func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (type $f64_=>_i32 (func_subtype (param f64) (result i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $instanceof/a (mut i32) (i32.const 0))
 (global $instanceof/b (mut i32) (i32.const 0))
 (global $instanceof/i (mut i32) (i32.const 0))
 (global $instanceof/I (mut i64) (i64.const 0))
 (global $instanceof/f (mut f32) (f32.const 0))
 (global $instanceof/F (mut f64) (f64.const 0))
 (global $instanceof/an (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 65596))
 (global $~lib/memory/__heap_base i32 (i32.const 65596))
 (memory $0 2)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00i\00n\00s\00t\00a\00n\00c\00e\00o\00f\00.\00t\00s\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $instanceof/isI32<i32> (type $i32_=>_i32) (param $v i32) (result i32)
  i32.const 1
  drop
  i32.const 1
  return
 )
 (func $instanceof/isI32<f64> (type $f64_=>_i32) (param $v f64) (result i32)
  i32.const 0
  drop
  i32.const 0
  return
 )
 (func $instanceof/isI32<u32> (type $i32_=>_i32) (param $v i32) (result i32)
  i32.const 0
  drop
  i32.const 0
  return
 )
 (func $instanceof/isI32<u16> (type $i32_=>_i32) (param $v i32) (result i32)
  i32.const 0
  drop
  i32.const 0
  return
 )
 (func $start:instanceof (type $none_=>_none)
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  call $instanceof/isI32<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 62
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  call $instanceof/isI32<f64>
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 63
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $instanceof/isI32<u32>
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 64
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $instanceof/isI32<u16>
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 65
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $instanceof/an
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 68
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  i32.const 1
  global.set $instanceof/an
  global.get $instanceof/an
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 71
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
 )
 (func $~start (type $none_=>_none)
  call $start:instanceof
 )
)
