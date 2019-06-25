(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00i\00n\00s\00t\00a\00n\00c\00e\00o\00f\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $instanceof/a (mut i32) (i32.const 0))
 (global $instanceof/b (mut i32) (i32.const 0))
 (global $instanceof/i (mut i32) (i32.const 0))
 (global $instanceof/I (mut i64) (i64.const 0))
 (global $instanceof/f (mut f32) (f32.const 0))
 (global $instanceof/F (mut f64) (f64.const 0))
 (global $instanceof/an (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 40))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $instanceof/isI32<i32> (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  return
 )
 (func $instanceof/isI32<f64> (; 2 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  i32.const 0
  return
 )
 (func $instanceof/isI32<u32> (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  return
 )
 (func $instanceof/isI32<u16> (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  return
 )
 (func $start:instanceof (; 5 ;) (type $FUNCSIG$v)
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 11
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 13
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 14
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 15
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 16
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 18
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 19
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 20
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 21
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 22
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 23
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 25
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 26
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 27
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 28
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 29
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 30
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 32
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 33
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 34
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 35
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 36
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 37
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 39
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 40
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 41
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 42
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 43
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 44
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 46
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 47
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 48
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 49
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 50
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 51
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  call $instanceof/isI32<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 62
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 0
  call $instanceof/isI32<f64>
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 63
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  call $instanceof/isI32<u32>
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 64
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  call $instanceof/isI32<u16>
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 65
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $instanceof/an
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 68
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 69
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.set $instanceof/an
  global.get $instanceof/an
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 71
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 72
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 6 ;) (type $FUNCSIG$v)
  call $start:instanceof
 )
 (func $null (; 7 ;) (type $FUNCSIG$v)
 )
)
