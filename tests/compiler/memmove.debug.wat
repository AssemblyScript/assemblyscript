(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $memmove/base i32 (i32.const 8))
 (global $memmove/dest (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16444))
 (global $~lib/memory/__heap_base i32 (i32.const 16444))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00m\00e\00m\00m\00o\00v\00e\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $memmove/memmove (param $dest i32) (param $src i32) (param $n i32) (result i32)
  (local $ret i32)
  (local $var$4 i32)
  (local $var$5 i32)
  local.get $dest
  local.set $ret
  local.get $dest
  local.get $src
  i32.eq
  if
   local.get $ret
   return
  end
  local.get $dest
  local.get $src
  i32.lt_u
  if
   local.get $src
   i32.const 8
   i32.rem_u
   local.get $dest
   i32.const 8
   i32.rem_u
   i32.eq
   if
    loop $while-continue|0
     local.get $dest
     i32.const 8
     i32.rem_u
     local.set $var$4
     local.get $var$4
     if
      local.get $n
      i32.eqz
      if
       local.get $ret
       return
      end
      local.get $n
      i32.const 1
      i32.sub
      local.set $n
      local.get $dest
      local.tee $var$5
      i32.const 1
      i32.add
      local.set $dest
      local.get $var$5
      local.get $src
      local.tee $var$5
      i32.const 1
      i32.add
      local.set $src
      local.get $var$5
      i32.load8_u
      i32.store8
      br $while-continue|0
     end
    end
    loop $while-continue|1
     local.get $n
     i32.const 8
     i32.ge_u
     local.set $var$4
     local.get $var$4
     if
      local.get $dest
      local.get $src
      i64.load
      i64.store
      local.get $n
      i32.const 8
      i32.sub
      local.set $n
      local.get $dest
      i32.const 8
      i32.add
      local.set $dest
      local.get $src
      i32.const 8
      i32.add
      local.set $src
      br $while-continue|1
     end
    end
   end
   loop $while-continue|2
    local.get $n
    local.set $var$4
    local.get $var$4
    if
     local.get $dest
     local.tee $var$5
     i32.const 1
     i32.add
     local.set $dest
     local.get $var$5
     local.get $src
     local.tee $var$5
     i32.const 1
     i32.add
     local.set $src
     local.get $var$5
     i32.load8_u
     i32.store8
     local.get $n
     i32.const 1
     i32.sub
     local.set $n
     br $while-continue|2
    end
   end
  else
   local.get $src
   i32.const 8
   i32.rem_u
   local.get $dest
   i32.const 8
   i32.rem_u
   i32.eq
   if
    loop $while-continue|3
     local.get $dest
     local.get $n
     i32.add
     i32.const 8
     i32.rem_u
     local.set $var$4
     local.get $var$4
     if
      local.get $n
      i32.eqz
      if
       local.get $ret
       return
      end
      local.get $dest
      local.get $n
      i32.const 1
      i32.sub
      local.tee $n
      i32.add
      local.get $src
      local.get $n
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|3
     end
    end
    loop $while-continue|4
     local.get $n
     i32.const 8
     i32.ge_u
     local.set $var$4
     local.get $var$4
     if
      local.get $n
      i32.const 8
      i32.sub
      local.set $n
      local.get $dest
      local.get $n
      i32.add
      local.get $src
      local.get $n
      i32.add
      i64.load
      i64.store
      br $while-continue|4
     end
    end
   end
   loop $while-continue|5
    local.get $n
    local.set $var$4
    local.get $var$4
    if
     local.get $dest
     local.get $n
     i32.const 1
     i32.sub
     local.tee $n
     i32.add
     local.get $src
     local.get $n
     i32.add
     i32.load8_u
     i32.store8
     br $while-continue|5
    end
   end
  end
  local.get $ret
 )
 (func $start:memmove
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
   i32.const 32
   i32.const 55
   i32.const 1
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
   i32.const 32
   i32.const 56
   i32.const 1
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
   i32.const 32
   i32.const 59
   i32.const 1
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
   i32.const 32
   i32.const 60
   i32.const 1
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
   i32.const 32
   i32.const 61
   i32.const 1
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
   i32.const 32
   i32.const 62
   i32.const 1
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
   i32.const 32
   i32.const 63
   i32.const 1
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
   i32.const 32
   i32.const 66
   i32.const 1
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
   i32.const 32
   i32.const 69
   i32.const 1
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
   i32.const 32
   i32.const 70
   i32.const 1
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
   i32.const 32
   i32.const 71
   i32.const 1
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
   i32.const 32
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
