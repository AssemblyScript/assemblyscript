(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\01\00\00\00\1c\00\00\00s\00t\00a\00t\00i\00c\00-\00t\00h\00i\00s\00.\00t\00s")
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 8
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
)
