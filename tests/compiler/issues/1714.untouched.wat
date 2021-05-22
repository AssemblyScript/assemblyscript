(module
 (type $none_=>_i32 (func (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__data_end i32 (i32.const 92))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16476))
 (global $~lib/memory/__heap_base i32 (i32.const 16476))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00i\00s\00s\00u\00e\00s\00/\001\007\001\004\00.\00t\00s\00")
 (data (i32.const 60) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00i\003\002\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $issues/1714/a_i64_i32<i64,i32> (result i32)
  i32.const 8
  i32.const 4
  i32.eq
 )
 (func $issues/1714/foo<i32,i64> (result i32)
  call $issues/1714/a_i64_i32<i64,i32>
  i32.const 1
  i32.eq
 )
 (func $issues/1714/bar<i32,f64> (result i32)
  i32.const 0
  drop
  i32.const 80
 )
 (func $issues/1714/bar<f64,i32> (result i32)
  i32.const 1
  drop
  call $issues/1714/bar<i32,f64>
  return
 )
 (func $start:issues/1714
  call $issues/1714/foo<i32,i64>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 9
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $issues/1714/bar<f64,i32>
  i32.const 80
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 18
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:issues/1714
 )
)
