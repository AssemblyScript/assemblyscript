(module
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00 \00\00\00c\00a\00l\00l\00-\00o\00p\00t\00i\00o\00n\00a\00l\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 76) "\1c\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 2 funcref)
 (elem (i32.const 1) $call-optional/opt@varargs)
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $call-optional/optIndirect (mut i32) (i32.const 96))
 (export "memory" (memory $0))
 (start $~start)
 (func $call-optional/opt (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
  local.get $2
  i32.add
 )
 (func $call-optional/opt@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    local.set $1
   end
   i32.const -2
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $call-optional/opt
 )
 (func $start:call-optional
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
  i32.load
  call_indirect (type $i32_i32_i32_=>_i32)
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
  i32.load
  call_indirect (type $i32_i32_i32_=>_i32)
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
  i32.load
  call_indirect (type $i32_i32_i32_=>_i32)
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
 (func $~start
  call $start:call-optional
 )
)
