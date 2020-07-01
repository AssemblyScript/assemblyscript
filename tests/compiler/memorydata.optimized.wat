(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 0) "01234567890123456789")
 (data (i32.const 32) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00m\00e\00m\00o\00r\00y\00d\00a\00t\00a\00.\00t\00s")
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  i32.const 0
  i64.load
  i64.const 3978425819141910832
  i64.ne
  if
   i32.const 0
   i32.const 48
   i32.const 2
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i64.load
  i64.const 3833745473465760056
  i64.ne
  if
   i32.const 0
   i32.const 48
   i32.const 3
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  i32.load
  i32.const 959985462
  i32.ne
  if
   i32.const 0
   i32.const 48
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
)
