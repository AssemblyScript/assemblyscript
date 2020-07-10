(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "\08\00\00\00\01\00\00\00\03\00\00\00\08\00\00\00 ")
 (data (i32.const 1056) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00t\00a\00b\00l\00e\00b\00a\00s\00e\00.\00t\00s")
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  i32.const 1040
  i32.load
  i32.const 32
  i32.ne
  if
   i32.const 0
   i32.const 1072
   i32.const 6
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
)
