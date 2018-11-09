(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00r\00e\00t\00a\00i\00n\00-\00i\003\002\00.\00t\00s")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $retain-i32/si (mut i32) (i32.const 0))
 (global $retain-i32/ui (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  block $break|0
   i32.const -128
   set_local $0
   loop $repeat|0
    get_local $0
    i32.const 255
    i32.gt_s
    br_if $break|0
    get_local $0
    i32.const 1
    i32.add
    set_local $0
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const -1
  set_global $retain-i32/si
  get_global $retain-i32/si
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
  set_global $retain-i32/si
  get_global $retain-i32/si
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
  set_global $retain-i32/si
  get_global $retain-i32/si
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
  set_global $retain-i32/si
  get_global $retain-i32/si
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
  set_global $retain-i32/si
  get_global $retain-i32/si
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
  set_global $retain-i32/si
  get_global $retain-i32/si
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
  set_global $retain-i32/si
  get_global $retain-i32/si
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
  set_global $retain-i32/si
  get_global $retain-i32/si
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
  set_global $retain-i32/si
  get_global $retain-i32/si
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
  set_global $retain-i32/si
  get_global $retain-i32/si
  if
   i32.const 0
   i32.const 8
   i32.const 105
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  set_global $retain-i32/si
  get_global $retain-i32/si
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
  set_global $retain-i32/ui
  get_global $retain-i32/ui
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
  set_global $retain-i32/ui
  get_global $retain-i32/ui
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
  set_global $retain-i32/ui
  get_global $retain-i32/ui
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
  set_global $retain-i32/ui
  get_global $retain-i32/ui
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
  set_global $retain-i32/ui
  get_global $retain-i32/ui
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
  set_global $retain-i32/ui
  get_global $retain-i32/ui
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
  set_global $retain-i32/ui
  get_global $retain-i32/ui
  if
   i32.const 0
   i32.const 8
   i32.const 131
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 2 ;) (type $v)
  nop
 )
)
