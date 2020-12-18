(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00m\00e\00m\00m\00o\00v\00e\00.\00t\00s")
 (global $memmove/dest (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $memmove/memmove (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  block $folding-inner0
   local.get $0
   local.get $1
   i32.eq
   br_if $folding-inner0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $2
       i32.eqz
       br_if $folding-inner0
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
       local.get $0
       local.tee $3
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $4
       i32.const 1
       i32.add
       local.set $1
       local.get $3
       local.get $4
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $2
      i32.const 8
      i32.ge_u
      if
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
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $2
     if
      local.get $0
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $2
      i32.add
      i32.const 7
      i32.and
      if
       local.get $2
       i32.eqz
       br_if $folding-inner0
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
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $2
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $2
       i32.const 8
       i32.sub
       local.tee $2
       i32.add
       local.get $1
       local.get $2
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $2
     if
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
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $start:memmove
  i32.const 8
  i64.const 1229782938247303441
  i64.store
  i32.const 16
  i64.const 2459565876494606882
  i64.store
  i32.const 24
  i64.const 3689348814741910323
  i64.store
  i32.const 32
  i64.const 4919131752989213764
  i64.store
  i32.const 9
  i32.const 24
  i32.const 4
  call $memmove/memmove
  global.set $memmove/dest
  global.get $memmove/dest
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 55
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i64.load
  i64.const 1229783084848853777
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 56
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.const 8
  i32.const 32
  call $memmove/memmove
  global.set $memmove/dest
  global.get $memmove/dest
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 59
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i64.load
  i64.const 1229783084848853777
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 60
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  i64.load
  i64.const 2459565876494606882
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 61
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 24
  i64.load
  i64.const 3689348814741910323
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 62
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  i64.load
  i64.const 4919131752989213764
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 63
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 13
  i32.const 36
  i32.const 3
  call $memmove/memmove
  global.set $memmove/dest
  i32.const 8
  i64.load
  i64.const 4919131679688438545
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 66
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  i32.const 24
  i32.const 15
  call $memmove/memmove
  global.set $memmove/dest
  i32.const 8
  i64.load
  i64.const 4919131679688438545
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 69
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  i64.load
  i64.const 3689348814741910323
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 70
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 24
  i64.load
  i64.const 3694152654344438852
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 71
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  i64.load
  i64.const 4919131752989213764
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 72
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:memmove
 )
)
