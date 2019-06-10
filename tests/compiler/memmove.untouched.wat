(module
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00m\00e\00m\00m\00o\00v\00e\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $memmove/base i32 (i32.const 8))
 (global $memmove/dest (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $memmove/memmove (; 1 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.set $3
  local.get $0
  local.get $1
  i32.eq
  if
   local.get $3
   return
  end
  local.get $0
  local.get $1
  i32.lt_u
  if
   local.get $1
   i32.const 8
   i32.rem_u
   local.get $0
   i32.const 8
   i32.rem_u
   i32.eq
   if
    block $break|0
     loop $continue|0
      local.get $0
      i32.const 8
      i32.rem_u
      i32.eqz
      br_if $break|0
      local.get $2
      i32.eqz
      if
       local.get $3
       return
      end
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      local.get $0
      local.tee $4
      i32.const 1
      i32.add
      local.set $0
      local.get $4
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $4
      i32.load8_u
      i32.store8
      br $continue|0
     end
     unreachable
    end
    block $break|1
     loop $continue|1
      local.get $2
      i32.const 8
      i32.ge_u
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $1
      i64.load
      i64.store
      local.get $2
      i32.const 8
      i32.sub
      local.set $2
      local.get $0
      i32.const 8
      i32.add
      local.set $0
      local.get $1
      i32.const 8
      i32.add
      local.set $1
      br $continue|1
     end
     unreachable
    end
   end
   block $break|2
    loop $continue|2
     local.get $2
     i32.eqz
     br_if $break|2
     local.get $0
     local.tee $4
     i32.const 1
     i32.add
     local.set $0
     local.get $4
     local.get $1
     local.tee $4
     i32.const 1
     i32.add
     local.set $1
     local.get $4
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $continue|2
    end
    unreachable
   end
  else   
   local.get $1
   i32.const 8
   i32.rem_u
   local.get $0
   i32.const 8
   i32.rem_u
   i32.eq
   if
    block $break|3
     loop $continue|3
      local.get $0
      local.get $2
      i32.add
      i32.const 8
      i32.rem_u
      i32.eqz
      br_if $break|3
      local.get $2
      i32.eqz
      if
       local.get $3
       return
      end
      local.get $0
      local.get $2
      i32.const 1
      i32.sub
      local.tee $2
      i32.add
      local.get $1
      local.get $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|3
     end
     unreachable
    end
    block $break|4
     loop $continue|4
      local.get $2
      i32.const 8
      i32.ge_u
      i32.eqz
      br_if $break|4
      local.get $2
      i32.const 8
      i32.sub
      local.set $2
      local.get $0
      local.get $2
      i32.add
      local.get $1
      local.get $2
      i32.add
      i64.load
      i64.store
      br $continue|4
     end
     unreachable
    end
   end
   block $break|5
    loop $continue|5
     local.get $2
     i32.eqz
     br_if $break|5
     local.get $0
     local.get $2
     i32.const 1
     i32.sub
     local.tee $2
     i32.add
     local.get $1
     local.get $2
     i32.add
     i32.load8_u
     i32.store8
     br $continue|5
    end
    unreachable
   end
  end
  local.get $3
 )
 (func $start:memmove (; 2 ;) (type $FUNCSIG$v)
  global.get $memmove/base
  i64.const 1229782938247303441
  i64.store
  global.get $memmove/base
  i32.const 8
  i32.add
  i64.const 2459565876494606882
  i64.store
  global.get $memmove/base
  i32.const 16
  i32.add
  i64.const 3689348814741910323
  i64.store
  global.get $memmove/base
  i32.const 24
  i32.add
  i64.const 4919131752989213764
  i64.store
  global.get $memmove/base
  i32.const 1
  i32.add
  global.get $memmove/base
  i32.const 16
  i32.add
  i32.const 4
  call $memmove/memmove
  global.set $memmove/dest
  global.get $memmove/dest
  global.get $memmove/base
  i32.const 1
  i32.add
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 55
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memmove/base
  i64.load
  i64.const 1229783084848853777
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 56
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memmove/base
  global.get $memmove/base
  i32.const 32
  call $memmove/memmove
  global.set $memmove/dest
  global.get $memmove/dest
  global.get $memmove/base
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 59
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memmove/base
  i64.load
  i64.const 1229783084848853777
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 60
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memmove/base
  i32.const 8
  i32.add
  i64.load
  i64.const 2459565876494606882
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 61
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memmove/base
  i32.const 16
  i32.add
  i64.load
  i64.const 3689348814741910323
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 62
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memmove/base
  i32.const 24
  i32.add
  i64.load
  i64.const 4919131752989213764
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 63
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memmove/base
  i32.const 5
  i32.add
  global.get $memmove/base
  i32.const 28
  i32.add
  i32.const 3
  call $memmove/memmove
  global.set $memmove/dest
  global.get $memmove/base
  i64.load
  i64.const 4919131679688438545
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 66
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memmove/base
  i32.const 8
  i32.add
  global.get $memmove/base
  i32.const 16
  i32.add
  i32.const 15
  call $memmove/memmove
  global.set $memmove/dest
  global.get $memmove/base
  i64.load
  i64.const 4919131679688438545
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 69
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memmove/base
  i32.const 8
  i32.add
  i64.load
  i64.const 3689348814741910323
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 70
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memmove/base
  i32.const 16
  i32.add
  i64.load
  i64.const 3694152654344438852
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 71
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memmove/base
  i32.const 24
  i32.add
  i64.load
  i64.const 4919131752989213764
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 72
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 3 ;) (type $FUNCSIG$v)
  call $start:memmove
 )
 (func $null (; 4 ;) (type $FUNCSIG$v)
 )
)
