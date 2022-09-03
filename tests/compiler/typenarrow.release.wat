(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 17516))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\05\00\00\00\08\00\00\00\01")
 (data (i32.const 1072) "\07\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 1100) " \00\00\00\00\00\00\00 \00\00\00\03")
 (data (i32.const 1124) " \00\00\00\04")
 (export "memory" (memory $0))
 (export "condiNarrow" (func $export:typenarrow/condiNarrow))
 (func $typenarrow/condiNarrow (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=12
   local.tee $2
   i32.const 1072
   i32.load $0
   i32.le_u
   if
    loop $do-loop|0
     local.get $2
     i32.const 4
     i32.ne
     if
      local.get $2
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $2
      br_if $do-loop|0
     end
    end
   end
  end
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=12
   local.tee $2
   i32.const 1072
   i32.load $0
   i32.le_u
   if
    loop $do-loop|02
     local.get $2
     i32.const 4
     i32.ne
     if
      local.get $2
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $2
      br_if $do-loop|02
     end
    end
   end
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof4 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load $0 offset=12
    local.tee $2
    i32.const 1072
    i32.load $0
    i32.le_u
    if
     loop $do-loop|06
      i32.const 1
      local.get $2
      i32.const 4
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof4
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $2
      br_if $do-loop|06
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  i32.const 0
  local.get $1
  select
  if
   block $__inlined_func$~lib/rt/__instanceof7 (result i32)
    local.get $1
    i32.const 20
    i32.sub
    i32.load $0 offset=12
    local.tee $2
    i32.const 1072
    i32.load $0
    i32.le_u
    if
     loop $do-loop|09
      i32.const 1
      local.get $2
      i32.const 4
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof7
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $2
      br_if $do-loop|09
     end
    end
    i32.const 0
   end
   drop
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof12 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load $0 offset=12
    local.tee $2
    i32.const 1072
    i32.load $0
    i32.le_u
    if
     loop $do-loop|014
      i32.const 1
      local.get $2
      i32.const 4
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof12
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $2
      br_if $do-loop|014
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  i32.const 0
  local.get $1
  select
  if
   block $__inlined_func$~lib/rt/__instanceof15 (result i32)
    local.get $1
    i32.const 20
    i32.sub
    i32.load $0 offset=12
    local.tee $2
    i32.const 1072
    i32.load $0
    i32.le_u
    if
     loop $do-loop|017
      i32.const 1
      local.get $2
      i32.const 4
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof15
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $2
      br_if $do-loop|017
     end
    end
    i32.const 0
   end
   drop
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof19 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load $0 offset=12
    local.tee $2
    i32.const 1072
    i32.load $0
    i32.le_u
    if
     loop $do-loop|021
      i32.const 1
      local.get $2
      i32.const 4
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof19
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $2
      br_if $do-loop|021
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  i32.const 1
  local.get $1
  select
  i32.eqz
  if
   block $__inlined_func$~lib/rt/__instanceof22 (result i32)
    local.get $1
    i32.const 20
    i32.sub
    i32.load $0 offset=12
    local.tee $2
    i32.const 1072
    i32.load $0
    i32.le_u
    if
     loop $do-loop|024
      i32.const 1
      local.get $2
      i32.const 4
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof22
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $2
      br_if $do-loop|024
     end
    end
    i32.const 0
   end
   drop
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof26 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load $0 offset=12
    local.tee $2
    i32.const 1072
    i32.load $0
    i32.le_u
    if
     loop $do-loop|028
      i32.const 1
      local.get $2
      i32.const 4
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof26
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $2
      br_if $do-loop|028
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  i32.const 0
  local.get $1
  select
  if
   block $__inlined_func$~lib/rt/__instanceof29 (result i32)
    local.get $1
    i32.const 20
    i32.sub
    i32.load $0 offset=12
    local.tee $2
    i32.const 1072
    i32.load $0
    i32.le_u
    if
     loop $do-loop|031
      i32.const 1
      local.get $2
      i32.const 4
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof29
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $2
      br_if $do-loop|031
     end
    end
    i32.const 0
   end
   drop
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof32 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load $0 offset=12
    local.tee $2
    i32.const 1072
    i32.load $0
    i32.le_u
    if
     loop $do-loop|034
      i32.const 1
      local.get $2
      i32.const 4
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof32
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $2
      br_if $do-loop|034
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  i32.const 1
  local.get $1
  select
  i32.eqz
  if
   block $__inlined_func$~lib/rt/__instanceof35 (result i32)
    local.get $1
    i32.const 20
    i32.sub
    i32.load $0 offset=12
    local.tee $2
    i32.const 1072
    i32.load $0
    i32.le_u
    if
     loop $do-loop|037
      i32.const 1
      local.get $2
      i32.const 4
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof35
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $2
      br_if $do-loop|037
     end
    end
    i32.const 0
   end
   drop
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof38 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load $0 offset=12
    local.tee $2
    i32.const 1072
    i32.load $0
    i32.le_u
    if
     loop $do-loop|040
      i32.const 1
      local.get $2
      i32.const 4
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof38
      drop
      local.get $2
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $2
      br_if $do-loop|040
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  i32.const 0
  local.get $1
  select
  if
   block $__inlined_func$~lib/rt/__instanceof41 (result i32)
    local.get $1
    i32.const 20
    i32.sub
    i32.load $0 offset=12
    local.tee $1
    i32.const 1072
    i32.load $0
    i32.le_u
    if
     loop $do-loop|043
      i32.const 1
      local.get $1
      i32.const 4
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof41
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $1
      br_if $do-loop|043
     end
    end
    i32.const 0
   end
   drop
  end
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=12
   local.tee $1
   i32.const 1072
   i32.load $0
   i32.le_u
   if
    loop $do-loop|046
     local.get $1
     i32.const 4
     i32.ne
     if
      local.get $1
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $1
      br_if $do-loop|046
     end
    end
   end
  end
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=12
   local.tee $1
   i32.const 1072
   i32.load $0
   i32.le_u
   if
    loop $do-loop|049
     local.get $1
     i32.const 4
     i32.ne
     if
      local.get $1
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $1
      br_if $do-loop|049
     end
    end
   end
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof51 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load $0 offset=12
    local.tee $1
    i32.const 1072
    i32.load $0
    i32.le_u
    if
     loop $do-loop|053
      i32.const 1
      local.get $1
      i32.const 6
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof51
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $1
      br_if $do-loop|053
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   local.get $0
   i32.load $0
   drop
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof55 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load $0 offset=12
    local.tee $1
    i32.const 1072
    i32.load $0
    i32.le_u
    if
     loop $do-loop|057
      i32.const 1
      local.get $1
      i32.const 4
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof55
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $1
      br_if $do-loop|057
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  i32.const 1
  local.get $0
  select
  i32.eqz
  if
   block $__inlined_func$~lib/rt/__instanceof58 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load $0 offset=12
    local.tee $1
    i32.const 1072
    i32.load $0
    i32.le_u
    if
     loop $do-loop|060
      i32.const 1
      local.get $1
      i32.const 6
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof58
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $1
      br_if $do-loop|060
     end
    end
    i32.const 0
   end
   drop
  end
  local.get $0
  if (result i32)
   block $__inlined_func$~lib/rt/__instanceof62 (result i32)
    local.get $0
    i32.const 20
    i32.sub
    i32.load $0 offset=12
    local.tee $1
    i32.const 1072
    i32.load $0
    i32.le_u
    if
     loop $do-loop|064
      i32.const 1
      local.get $1
      i32.const 4
      i32.eq
      br_if $__inlined_func$~lib/rt/__instanceof62
      drop
      local.get $1
      i32.const 3
      i32.shl
      i32.const 1076
      i32.add
      i32.load $0 offset=4
      local.tee $1
      br_if $do-loop|064
     end
    end
    i32.const 0
   end
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   if (result i32)
    block $__inlined_func$~lib/rt/__instanceof65 (result i32)
     local.get $0
     i32.const 20
     i32.sub
     i32.load $0 offset=12
     local.tee $1
     i32.const 1072
     i32.load $0
     i32.le_u
     if
      loop $do-loop|067
       i32.const 1
       local.get $1
       i32.const 6
       i32.eq
       br_if $__inlined_func$~lib/rt/__instanceof65
       drop
       local.get $1
       i32.const 3
       i32.shl
       i32.const 1076
       i32.add
       i32.load $0 offset=4
       local.tee $1
       br_if $do-loop|067
      end
     end
     i32.const 0
    end
   else
    i32.const 0
   end
  else
   i32.const 0
  end
  if
   local.get $0
   i32.load $0
   drop
  end
 )
 (func $export:typenarrow/condiNarrow (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1132
  i32.lt_s
  if
   i32.const 17536
   i32.const 17584
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $1
  i32.store $0 offset=4
  local.get $0
  local.get $1
  call $typenarrow/condiNarrow
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
