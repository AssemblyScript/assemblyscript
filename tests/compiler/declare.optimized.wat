(module
 (type $v (func))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (import "declare" "externalConstant" (global $declare/externalConstant i32))
 (import "declare" "my.externalConstant" (global $declare/my.externalConstant i32))
 (import "declare" "externalFunction" (func $declare/externalFunction))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "declare" "my.externalFunction" (func $declare/my.externalFunction))
 (memory $0 1)
 (data (i32.const 8) "\n\00\00\00d\00e\00c\00l\00a\00r\00e\00.\00t\00s")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 3 ;) (type $v)
  call $declare/externalFunction
  get_global $declare/externalConstant
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 5
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $declare/my.externalFunction
  get_global $declare/my.externalConstant
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 13
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 4 ;) (type $v)
  nop
 )
)
