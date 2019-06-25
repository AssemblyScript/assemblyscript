(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00r\00e\00t\00a\00i\00n\00-\00i\003\002\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $retain-i32/si (mut i32) (i32.const 0))
 (global $retain-i32/ui (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:retain-i32 (; 1 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const -128
  local.set $0
  loop $repeat|0
   local.get $0
   i32.const 255
   i32.le_s
   if
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  i32.const -1
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 78
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const -1
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 81
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const -2
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const -2
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 84
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const -128
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const -128
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 87
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const -128
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const -128
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 90
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const -127
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const -127
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 93
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const -128
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const -128
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 96
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 99
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 102
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.set $retain-i32/si
  global.get $retain-i32/si
  if
   i32.const 0
   i32.const 8
   i32.const 105
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 108
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 255
  global.set $retain-i32/ui
  global.get $retain-i32/ui
  i32.const 255
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 113
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 255
  global.set $retain-i32/ui
  global.get $retain-i32/ui
  i32.const 255
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 116
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 254
  global.set $retain-i32/ui
  global.get $retain-i32/ui
  i32.const 254
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 119
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.set $retain-i32/ui
  global.get $retain-i32/ui
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 122
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.set $retain-i32/ui
  global.get $retain-i32/ui
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 125
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.set $retain-i32/ui
  global.get $retain-i32/ui
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 128
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.set $retain-i32/ui
  global.get $retain-i32/ui
  if
   i32.const 0
   i32.const 8
   i32.const 131
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:retain-i32
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
  nop
 )
)
