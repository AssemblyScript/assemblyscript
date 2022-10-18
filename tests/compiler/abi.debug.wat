(module
 (type $none_=>_i32 (func_subtype (result i32) func))
 (type $none_=>_none (func_subtype func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $abi/condition (mut i32) (i32.const 0))
 (global $abi/y (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 44))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16428))
 (global $~lib/memory/__heap_base i32 (i32.const 16428))
 (memory $0 1)
 (data (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00a\00b\00i\00.\00t\00s\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "exported" (func $abi/exported))
 (export "exportedExported" (func $abi/exportedExported))
 (export "exportedInternal" (func $abi/exportedInternal))
 (export "memory" (memory $0))
 (start $~start)
 (func $abi/internal (type $none_=>_i32) (result i32)
  i32.const 128
 )
 (func $start:abi (type $none_=>_none)
  (local $var$0 i32)
  (local $var$1 i32)
  call $abi/internal
  drop
  i32.const 0
  i32.eqz
  global.set $abi/condition
  i32.const 256
  local.set $var$0
  local.get $var$0
  i32.extend8_s
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 32
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 256
  local.set $var$0
  global.get $abi/condition
  if
   local.get $var$0
   i32.extend8_s
   i32.const 2
   i32.div_s
   local.set $var$0
  else
   local.get $var$0
   i32.extend8_s
   i32.const 2
   i32.div_s
   local.set $var$0
  end
  local.get $var$0
  i32.extend8_s
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 45
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 256
  local.set $var$0
  global.get $abi/condition
  if
   local.get $var$0
   i32.extend8_s
   i32.const 24
   i32.const 7
   i32.and
   i32.shr_s
   local.set $var$0
  else
   local.get $var$0
   i32.const 127
   i32.and
   local.set $var$0
  end
  local.get $var$0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 58
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 256
  i32.extend8_s
  global.set $abi/y
  global.get $abi/y
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 65
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.ctz
  local.set $var$0
  local.get $var$0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 72
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.clz
  local.set $var$0
  local.get $var$0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 74
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.ctz
  local.set $var$1
  local.get $var$1
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 77
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.clz
  local.set $var$1
  local.get $var$1
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 79
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $abi/exported (type $none_=>_i32) (result i32)
  i32.const 128
  i32.extend8_s
 )
 (func $abi/exportedExported (type $none_=>_i32) (result i32)
  call $abi/exported
 )
 (func $abi/exportedInternal (type $none_=>_i32) (result i32)
  call $abi/internal
  i32.extend8_s
 )
 (func $~start (type $none_=>_none)
  call $start:abi
 )
)
