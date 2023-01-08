(module
 (type $i32_i32_i32_=>_i32 (func_subtype (param i32 i32 i32) (result i32) func))
 (type $none_=>_none (func_subtype func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $call-optional/optIndirect (mut i32) (i32.const 96))
 (global $~lib/memory/__data_end i32 (i32.const 108))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32876))
 (global $~lib/memory/__heap_base i32 (i32.const 32876))
 (memory $0 1)
 (data (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00c\00a\00l\00l\00-\00o\00p\00t\00i\00o\00n\00a\00l\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 76) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $call-optional/opt@varargs)
 (export "memory" (memory $0))
 (start $~start)
 (func $call-optional/opt (type $i32_i32_i32_=>_i32) (param $a i32) (param $b i32) (param $c i32) (result i32)
  local.get $a
  local.get $b
  i32.add
  local.get $c
  i32.add
  return
 )
 (func $call-optional/opt@varargs (type $i32_i32_i32_=>_i32) (param $a i32) (param $b i32) (param $c i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const -1
    local.set $b
   end
   i32.const -2
   local.set $c
  end
  local.get $a
  local.get $b
  local.get $c
  call $call-optional/opt
 )
 (func $start:call-optional (type $none_=>_none)
  i32.const 3
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $call-optional/opt@varargs
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 4
  i32.const 2
  global.set $~argumentsLength
  i32.const 0
  call $call-optional/opt@varargs
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 5
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 4
  i32.const 5
  call $call-optional/opt
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 6
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 0
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  global.get $call-optional/optIndirect
  i32.load $0
  call_indirect $0 (type $i32_i32_i32_=>_i32)
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 9
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 4
  i32.const 0
  i32.const 2
  global.set $~argumentsLength
  global.get $call-optional/optIndirect
  i32.load $0
  call_indirect $0 (type $i32_i32_i32_=>_i32)
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 10
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 4
  i32.const 5
  i32.const 3
  global.set $~argumentsLength
  global.get $call-optional/optIndirect
  i32.load $0
  call_indirect $0 (type $i32_i32_i32_=>_i32)
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 11
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start (type $none_=>_none)
  call $start:call-optional
 )
)
