(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\12\00\00\00s\00w\00i\00t\00c\00h\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16444))
 (global $~lib/memory/__heap_base i32 (i32.const 16444))
 (export "memory" (memory $0))
 (start $~start)
 (func $switch/doSwitch (param $0 i32) (result i32)
  (local $1 i32)
  block $case4|0
   block $case3|0
    block $case2|0
     block $case1|0
      block $case0|0
       local.get $0
       local.set $1
       local.get $1
       i32.const 1
       i32.eq
       br_if $case0|0
       local.get $1
       i32.const 0
       i32.eq
       br_if $case1|0
       local.get $1
       i32.const 2
       i32.eq
       br_if $case3|0
       local.get $1
       i32.const 3
       i32.eq
       br_if $case4|0
       br $case2|0
      end
      i32.const 1
      return
     end
    end
    i32.const 0
    return
   end
  end
  i32.const 23
  return
 )
 (func $switch/doSwitchDefaultOmitted (param $0 i32) (result i32)
  (local $1 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      local.get $0
      local.set $1
      local.get $1
      i32.const 1
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 3
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     return
    end
   end
   i32.const 23
   return
  end
  i32.const 0
 )
 (func $switch/doSwitchBreakCase (param $0 i32) (result i32)
  (local $1 i32)
  block $break|0
   block $case1|0
    block $case0|0
     local.get $0
     local.set $1
     local.get $1
     i32.const 1
     i32.eq
     br_if $case0|0
     br $case1|0
    end
    br $break|0
   end
   i32.const 2
   return
  end
  i32.const 1
 )
 (func $switch/doSwitchBreakDefault (param $0 i32) (result i32)
  (local $1 i32)
  block $break|0
   block $case1|0
    block $case0|0
     local.get $0
     local.set $1
     local.get $1
     i32.const 1
     i32.eq
     br_if $case0|0
     br $case1|0
    end
    i32.const 1
    return
   end
   br $break|0
  end
  i32.const 2
 )
 (func $switch/doSwitchFallThroughCase (param $0 i32) (result i32)
  (local $1 i32)
  block $case1|0
   block $case0|0
    local.get $0
    local.set $1
    local.get $1
    i32.const 1
    i32.eq
    br_if $case1|0
    br $case0|0
   end
   i32.const 2
   return
  end
  i32.const 1
 )
 (func $switch/doSwitchFallThroughDefault (param $0 i32) (result i32)
  (local $1 i32)
  block $case1|0
   block $case0|0
    local.get $0
    local.set $1
    local.get $1
    i32.const 1
    i32.eq
    br_if $case0|0
    br $case1|0
   end
   i32.const 1
   return
  end
  i32.const 2
 )
 (func $switch/doSwitchEmpty (param $0 i32) (result i32)
  local.get $0
  drop
  i32.const 2
 )
 (func $start:switch
  i32.const 0
  call $switch/doSwitch
  i32.const 0
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
  i32.const 1
  call $switch/doSwitch
  i32.const 1
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
  i32.const 2
  call $switch/doSwitch
  i32.const 23
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 12
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  call $switch/doSwitch
  i32.const 23
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 13
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  call $switch/doSwitch
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 14
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $switch/doSwitch
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 24
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $switch/doSwitch
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 25
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $switch/doSwitch
  i32.const 23
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 26
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  call $switch/doSwitch
  i32.const 23
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 27
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  call $switch/doSwitch
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 28
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $switch/doSwitchDefaultOmitted
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 38
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $switch/doSwitchDefaultOmitted
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 39
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $switch/doSwitchDefaultOmitted
  i32.const 23
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 40
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  call $switch/doSwitchDefaultOmitted
  i32.const 23
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  call $switch/doSwitchDefaultOmitted
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 42
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $switch/doSwitchBreakCase
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 51
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $switch/doSwitchBreakCase
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 52
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $switch/doSwitchBreakCase
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 53
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $switch/doSwitchBreakDefault
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 62
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $switch/doSwitchBreakDefault
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 63
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $switch/doSwitchBreakDefault
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 64
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $switch/doSwitchFallThroughCase
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 73
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $switch/doSwitchFallThroughCase
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 74
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $switch/doSwitchFallThroughCase
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 75
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $switch/doSwitchFallThroughDefault
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 84
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $switch/doSwitchFallThroughDefault
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 85
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $switch/doSwitchFallThroughDefault
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 86
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $switch/doSwitchEmpty
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 92
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $switch/doSwitchEmpty
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 93
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $switch/doSwitchEmpty
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 94
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:switch
 )
)
