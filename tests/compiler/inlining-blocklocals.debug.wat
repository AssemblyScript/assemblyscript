(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $inlining-blocklocals/b (mut i32) (i32.const 2))
 (global $inlining-blocklocals/theCall_a (mut i32) (i32.const 0))
 (global $inlining-blocklocals/theCall_b (mut i32) (i32.const 0))
 (global $inlining-blocklocals/theCall_c (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 92))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32860))
 (global $~lib/memory/__heap_base i32 (i32.const 32860))
 (memory $0 1)
 (data $0 (i32.const 12) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00.\00\00\00i\00n\00l\00i\00n\00i\00n\00g\00-\00b\00l\00o\00c\00k\00l\00o\00c\00a\00l\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $inlining-blocklocals/test
  (local $a i32)
  (local $1 i32)
  (local $2 i32)
  (local $a|3 i32)
  (local $b i32)
  (local $c i32)
  i32.const 1
  local.set $a
  local.get $a
  local.tee $1
  i32.const 1
  i32.add
  local.set $a
  local.get $1
  local.set $a|3
  global.get $inlining-blocklocals/b
  local.tee $2
  i32.const 1
  i32.add
  global.set $inlining-blocklocals/b
  local.get $2
  local.set $b
  local.get $a
  i32.const 1
  i32.add
  local.tee $a
  local.set $c
  local.get $a|3
  global.set $inlining-blocklocals/theCall_a
  local.get $b
  global.set $inlining-blocklocals/theCall_b
  local.get $c
  global.set $inlining-blocklocals/theCall_c
  global.get $inlining-blocklocals/theCall_a
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 18
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $inlining-blocklocals/theCall_b
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 19
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $inlining-blocklocals/theCall_c
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 20
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:inlining-blocklocals
  call $inlining-blocklocals/test
 )
 (func $~start
  call $start:inlining-blocklocals
 )
)
