(module
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00i\00n\00l\00i\00n\00i\00n\00g\00.\00t\00s")
 (table $0 2 funcref)
 (elem (i32.const 0) $null $inlining/func_ii_opt)
 (global $~argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $inlining/test))
 (start $start)
 (func $inlining/test (; 1 ;) (type $i) (result i32)
  i32.const 3
 )
 (func $inlining/func_ii_opt (; 2 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $inlining/test_funcs (; 3 ;) (type $v)
  i32.const 1
  global.set $~argc
  i32.const 2
  i32.const 1
  call_indirect (type $ii)
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 67
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 4 ;) (type $v)
  call $inlining/test_funcs
 )
 (func $null (; 5 ;) (type $v)
  nop
 )
)
