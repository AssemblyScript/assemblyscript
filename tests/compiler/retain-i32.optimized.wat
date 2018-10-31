(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $FUNCSIG$v (func))
 (memory $0 1 65535)
 (data (i32.const 8) "\0d\00\00\00r\00e\00t\00a\00i\00n\00-\00i\003\002\00.\00t\00s")
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $retain-i32/si (mut i32) (i32.const 0))
 (global $retain-i32/ui (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $retain-i32/test (; 1 ;) (; has Stack IR ;) (type $FUNCSIG$v)
  nop
 )
 (func $start (; 2 ;) (; has Stack IR ;) (type $v)
  (local $0 i32)
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  call $retain-i32/test
  block $break|0
   i32.const -128
   set_local $0
   loop $repeat|0
    get_local $0
    i32.const 255
    i32.gt_s
    br_if $break|0
    call $retain-i32/test
    call $retain-i32/test
    call $retain-i32/test
    call $retain-i32/test
    call $retain-i32/test
    call $retain-i32/test
    call $retain-i32/test
    call $retain-i32/test
    call $retain-i32/test
    call $retain-i32/test
    call $retain-i32/test
    call $retain-i32/test
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
 (func $null (; 3 ;) (; has Stack IR ;) (type $v)
  nop
 )
)
