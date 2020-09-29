(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "F\00\00\00\01\00\00\00\01\00\00\00F\00\00\00o\00p\00t\00i\00m\00i\00z\00e\00-\00i\00n\00s\00t\00r\00u\00c\00t\00i\00o\00n\00-\00r\00e\00g\00r\00e\00s\00s\00i\00o\00n\00s\00.\00t\00s\00")
 (table $0 1 funcref)
 (global $optimize-instruction-regressions/x (mut i32) (i32.const 128))
 (global $optimize-instruction-regressions/y (mut i32) (i32.const 128))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:optimize-instruction-regressions
  global.get $optimize-instruction-regressions/x
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_u
  i32.const -128
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 2
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 129
  global.set $optimize-instruction-regressions/x
  global.get $optimize-instruction-regressions/x
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_u
  i32.const -127
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $optimize-instruction-regressions/y
  i32.const 255
  i32.and
  i32.const -2147483648
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 7
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 129
  global.set $optimize-instruction-regressions/y
  global.get $optimize-instruction-regressions/y
  i32.const 255
  i32.and
  i32.const -2147483648
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 9
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:optimize-instruction-regressions
 )
)
