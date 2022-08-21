(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_none (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/__rtti_base i32 (i32.const 48))
 (global $~lib/memory/__data_end i32 (i32.const 108))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16492))
 (global $~lib/memory/__heap_base i32 (i32.const 16492))
 (memory $0 1)
 (data (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 48) "\07\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\03\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\04\00\00\00")
 (table $0 2 2 funcref)
 (elem $0 (i32.const 1) $typenarrow/B#b1)
 (export "memory" (memory $0))
 (export "condiNarrow" (func $export:typenarrow/condiNarrow))
 (func $~lib/rt/__instanceof (param $ptr i32) (param $classId i32) (result i32)
  (local $id i32)
  (local $rttiBase i32)
  local.get $ptr
  i32.const 20
  i32.sub
  i32.load offset=12
  local.set $id
  global.get $~lib/rt/__rtti_base
  local.set $rttiBase
  local.get $id
  local.get $rttiBase
  i32.load
  i32.le_u
  if
   loop $do-loop|0
    local.get $id
    local.get $classId
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $rttiBase
    i32.const 4
    i32.add
    local.get $id
    i32.const 8
    i32.mul
    i32.add
    i32.load offset=4
    local.tee $id
    br_if $do-loop|0
   end
  end
  i32.const 0
 )
 (func $typenarrow/B#b1 (param $this i32)
  nop
 )
 (func $typenarrow/B#check (param $this i32) (result i32)
  i32.const 1
 )
 (func $typenarrow/condiNarrow (param $v0 i32) (param $v1 i32)
  (local $var$2 i32)
  local.get $v0
  local.tee $var$2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $var$2
   i32.const 4
   call $~lib/rt/__instanceof
  end
  if
   local.get $v0
   call $typenarrow/B#b1
   local.get $v0
   local.set $var$2
  end
  local.get $v0
  local.tee $var$2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $var$2
   i32.const 4
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   nop
  else
   local.get $v0
   call $typenarrow/B#b1
   local.get $v0
   local.set $var$2
  end
  local.get $v0
  local.tee $var$2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $var$2
   i32.const 4
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $v1
   local.tee $var$2
   i32.eqz
   if (result i32)
    i32.const 0
   else
    local.get $var$2
    i32.const 4
    call $~lib/rt/__instanceof
   end
  else
   i32.const 0
  end
  if
   local.get $v0
   call $typenarrow/B#b1
   local.get $v1
   call $typenarrow/B#b1
  end
  local.get $v0
  local.tee $var$2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $var$2
   i32.const 4
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $v1
   local.tee $var$2
   i32.eqz
   if (result i32)
    i32.const 0
   else
    local.get $var$2
    i32.const 4
    call $~lib/rt/__instanceof
   end
   i32.eqz
  else
   i32.const 0
  end
  if
   local.get $v0
   call $typenarrow/B#b1
  end
  local.get $v0
  local.tee $var$2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $var$2
   i32.const 4
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if (result i32)
   local.get $v1
   local.tee $var$2
   i32.eqz
   if (result i32)
    i32.const 0
   else
    local.get $var$2
    i32.const 4
    call $~lib/rt/__instanceof
   end
  else
   i32.const 0
  end
  if
   local.get $v1
   call $typenarrow/B#b1
  end
  local.get $v0
  local.tee $var$2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $var$2
   i32.const 4
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $v1
   local.tee $var$2
   i32.eqz
   if (result i32)
    i32.const 0
   else
    local.get $var$2
    i32.const 4
    call $~lib/rt/__instanceof
   end
   i32.eqz
  end
  if
   nop
  else
   i32.const 32
   drop
   i32.const 32
   drop
  end
  local.get $v0
  local.tee $var$2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $var$2
   i32.const 4
   call $~lib/rt/__instanceof
  end
  if (result i32)
   i32.const 1
  else
   local.get $v1
   local.tee $var$2
   i32.eqz
   if (result i32)
    i32.const 0
   else
    local.get $var$2
    i32.const 4
    call $~lib/rt/__instanceof
   end
   i32.eqz
  end
  if
   nop
  else
   i32.const 32
   drop
  end
  local.get $v0
  local.tee $var$2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $var$2
   i32.const 4
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $v1
   local.tee $var$2
   i32.eqz
   if (result i32)
    i32.const 0
   else
    local.get $var$2
    i32.const 4
    call $~lib/rt/__instanceof
   end
  end
  if
   nop
  else
   i32.const 32
   drop
  end
  local.get $v0
  local.tee $var$2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $var$2
   i32.const 4
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $v0
   call $typenarrow/B#check
  else
   i32.const 0
  end
  if
   nop
  end
  local.get $v0
  local.tee $var$2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $var$2
   i32.const 4
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if (result i32)
   i32.const 1
  else
   local.get $v0
   call $typenarrow/B#check
  end
  if
   nop
  end
  local.get $v0
  local.tee $var$2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $var$2
   i32.const 6
   call $~lib/rt/__instanceof
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  if
   local.get $v0
   i32.load
   drop
   local.get $v0
   call $typenarrow/B#b1
  end
  local.get $v0
  local.tee $var$2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $var$2
   i32.const 4
   call $~lib/rt/__instanceof
  end
  if (result i32)
   i32.const 1
  else
   local.get $v0
   local.tee $var$2
   i32.eqz
   if (result i32)
    i32.const 0
   else
    local.get $var$2
    i32.const 6
    call $~lib/rt/__instanceof
   end
  end
  if
   local.get $v0
   call $typenarrow/B#b1
  end
  local.get $v0
  local.tee $var$2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $var$2
   i32.const 4
   call $~lib/rt/__instanceof
  end
  if (result i32)
   local.get $v0
   local.tee $var$2
   i32.eqz
   if (result i32)
    i32.const 0
   else
    local.get $var$2
    i32.const 6
    call $~lib/rt/__instanceof
   end
  else
   i32.const 0
  end
  i32.eqz
  if
   nop
  else
   local.get $v0
   call $typenarrow/B#b1
   local.get $v0
   i32.load
   drop
  end
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 16512
   i32.const 16560
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $export:typenarrow/condiNarrow (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $typenarrow/condiNarrow
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
