(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) "\1c\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00 \00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 44) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00t\00a\00b\00l\00e\00b\00a\00s\00e\00.\00t\00s\00\00\00\00\00")
 (table $0 33 funcref)
 (elem (i32.const 32) $tablebase/foo)
 (global $tablebase/staticFunction i32 (i32.const 32))
 (global $~lib/ASC_TABLE_BASE i32 (i32.const 32))
 (export "memory" (memory $0))
 (start $~start)
 (func $tablebase/foo
  nop
 )
 (func $~lib/function/Function<%28%29=>void>#get:index (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $start:tablebase
  i32.const 32
  i32.const 32
  i32.eq
  drop
  global.get $tablebase/staticFunction
  call $~lib/function/Function<%28%29=>void>#get:index
  i32.const 32
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 6
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:tablebase
 )
)
