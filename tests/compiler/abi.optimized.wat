(module
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01\00\00\00\0c\00\00\00a\00b\00i\00.\00t\00s")
 (global $abi/condition (mut i32) (i32.const 0))
 (global $abi/y (mut i32) (i32.const 0))
 (export "exported" (func $abi/exported))
 (export "exportedExported" (func $abi/exportedExported))
 (export "exportedInternal" (func $abi/exported))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:abi
  (local $0 i32)
  i32.const 0
  i32.eqz
  global.set $abi/condition
  i32.const 256
  local.tee $0
  i32.const 255
  i32.and
  if
   i32.const 0
   i32.const 1056
   i32.const 32
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.div_s
  i32.const 255
  i32.and
  if
   i32.const 0
   i32.const 1056
   i32.const 45
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 24
  i32.const 7
  i32.and
  i32.shr_s
  local.get $0
  i32.const 127
  i32.and
  global.get $abi/condition
  select
  if
   i32.const 0
   i32.const 1056
   i32.const 58
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 256
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  global.set $abi/y
  global.get $abi/y
  if
   i32.const 0
   i32.const 1056
   i32.const 65
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.ctz
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 72
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.clz
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 74
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.ctz
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 77
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.clz
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 79
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $abi/exported (result i32)
  i32.const 128
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
 )
 (func $abi/exportedExported (result i32)
  i32.const -128
 )
 (func $~start
  call $start:abi
 )
)
