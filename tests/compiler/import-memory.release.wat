(module
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_none (func))
 (import "env" "memory" (memory $0 1))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (data (i32.const 1036) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00i\00m\00p\00o\00r\00t\00-\00m\00e\00m\00o\00r\00y\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  memory.size $0
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
)
