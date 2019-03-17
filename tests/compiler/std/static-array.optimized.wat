(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00\08\00\00\00\01\00\00\00\02")
 (data (i32.const 24) "\02\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\18\00\00\00\02")
 (data (i32.const 48) "\01\00\00\00\10\00\00\00\03\00\00\00\00\00\00\00\04")
 (data (i32.const 72) "\03\00\00\00\10\00\00\008\00\00\008\00\00\00H\00\00\00\02")
 (data (i32.const 96) "\01\00\00\00\08\00\00\00\00\00\c0?\00\00 @")
 (data (i32.const 112) "\04\00\00\00\10\00\00\00h\00\00\00h\00\00\00p\00\00\00\02")
 (data (i32.const 136) "\01\00\00\00\10")
 (data (i32.const 150) "\f4?\00\00\00\00\00\00\02@")
 (data (i32.const 160) "\05\00\00\00\10\00\00\00\90\00\00\00\90\00\00\00\a0\00\00\00\02")
 (data (i32.const 184) "\06\00\00\00&\00\00\00s\00t\00d\00/\00s\00t\00a\00t\00i\00c\00-\00a\00r\00r\00a\00y\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:std/static-array (; 1 ;) (type $FUNCSIG$v)
  i32.const 44
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 8
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 36
  i32.load
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 9
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 36
  i32.load
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 10
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 36
  i32.load
  i32.const 2
  i32.store
  i32.const 36
  i32.load
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 92
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 14
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 84
  i32.load
  i64.load
  i64.const 3
  i64.ne
  if
   i32.const 0
   i32.const 192
   i32.const 15
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 84
  i32.load
  i64.load offset=8
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 192
   i32.const 16
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 84
  i32.load
  i64.const 4
  i64.store
  i32.const 84
  i32.load
  i64.load
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 192
   i32.const 18
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 132
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 20
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 124
  i32.load
  f32.load
  f32.const 1.5
  f32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 21
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 124
  i32.load
  f32.load offset=4
  f32.const 2.5
  f32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 22
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 124
  i32.load
  f32.const 2.5
  f32.store
  i32.const 124
  i32.load
  f32.load
  f32.const 2.5
  f32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 24
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 180
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 192
   i32.const 26
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 172
  i32.load
  f64.load
  f64.const 1.25
  f64.ne
  if
   i32.const 0
   i32.const 192
   i32.const 27
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 172
  i32.load
  f64.load offset=8
  f64.const 2.25
  f64.ne
  if
   i32.const 0
   i32.const 192
   i32.const 28
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 172
  i32.load
  f64.const 2.25
  f64.store
  i32.const 172
  i32.load
  f64.load
  f64.const 2.25
  f64.ne
  if
   i32.const 0
   i32.const 192
   i32.const 30
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:std/static-array
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
  nop
 )
)
