(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$if (func (param f32) (result i32)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) "\01\00\00\00\01")
 (data (i32.const 24) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00b\00c")
 (data (i32.const 48) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s")
 (table $0 2 funcref)
 (elem (i32.const 0) $builtins/test $start:builtins~anonymous|0)
 (global $builtins/b (mut i32) (i32.const 0))
 (global $builtins/i (mut i32) (i32.const 0))
 (global $builtins/I (mut i64) (i64.const 0))
 (global $builtins/f (mut f32) (f32.const 0))
 (global $builtins/F (mut f64) (f64.const 0))
 (global $builtins/u (mut i32) (i32.const 0))
 (global $builtins/U (mut i64) (i64.const 0))
 (global $builtins/s (mut i32) (i32.const 0))
 (global $builtins/fn i32 (i32.const 1))
 (export "memory" (memory $0))
 (export "test" (func $builtins/test))
 (start $start)
 (func $~lib/number/isNaN<f32> (; 1 ;) (type $FUNCSIG$if) (param $0 f32) (result i32)
  local.get $0
  local.get $0
  f32.ne
 )
 (func $~lib/number/isFinite<f32> (; 2 ;) (type $FUNCSIG$if) (param $0 f32) (result i32)
  local.get $0
  local.get $0
  f32.sub
  f32.const 0
  f32.eq
 )
 (func $~lib/number/isNaN<f64> (; 3 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.ne
 )
 (func $~lib/number/isFinite<f64> (; 4 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.sub
  f64.const 0
  f64.eq
 )
 (func $start:builtins~anonymous|0 (; 5 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $start:builtins (; 6 ;) (type $FUNCSIG$v)
  i32.const 31
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 1
  global.set $builtins/i
  i32.const 2
  global.set $builtins/i
  i32.const -2147483648
  global.set $builtins/i
  i32.const 42
  global.set $builtins/i
  global.get $builtins/i
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 64
   i32.const 67
   i32.const 19
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  global.set $builtins/i
  global.get $builtins/i
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 64
   i32.const 68
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $builtins/i
  global.get $builtins/i
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 64
   i32.const 69
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 63
  global.set $builtins/I
  i64.const 0
  global.set $builtins/I
  i64.const 1
  global.set $builtins/I
  i64.const 2
  global.set $builtins/I
  i64.const -9223372036854775808
  global.set $builtins/I
  i64.const 42
  global.set $builtins/I
  global.get $builtins/I
  i64.const 42
  i64.ne
  if
   i32.const 0
   i32.const 64
   i32.const 85
   i32.const 19
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 2
  global.set $builtins/I
  global.get $builtins/I
  i64.const 2
  i64.ne
  if
   i32.const 0
   i32.const 64
   i32.const 86
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  global.set $builtins/I
  global.get $builtins/i
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 64
   i32.const 87
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.25
  call $~lib/number/isNaN<f32>
  if
   i32.const 0
   i32.const 64
   i32.const 104
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  call $~lib/number/isNaN<f32>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 64
   i32.const 105
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.25
  call $~lib/number/isFinite<f32>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 64
   i32.const 106
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  call $~lib/number/isFinite<f32>
  if
   i32.const 0
   i32.const 64
   i32.const 107
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  call $~lib/number/isFinite<f32>
  if
   i32.const 0
   i32.const 64
   i32.const 108
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  call $~lib/number/isFinite<f32>
  if
   i32.const 0
   i32.const 64
   i32.const 109
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  global.set $builtins/f
  f32.const inf
  global.set $builtins/f
  f32.const 1.25
  global.set $builtins/f
  f32.const 2
  global.set $builtins/f
  f32.const 1.25
  global.set $builtins/f
  f32.const 1
  global.set $builtins/f
  f32.const 2.5
  global.set $builtins/f
  f32.const 1.25
  global.set $builtins/f
  f32.const 1
  global.set $builtins/f
  f32.const 1.1180340051651
  global.set $builtins/f
  f32.const 1
  global.set $builtins/f
  f32.const 1.25
  call $~lib/number/isNaN<f32>
  global.set $builtins/b
  f32.const 1.25
  call $~lib/number/isFinite<f32>
  global.set $builtins/b
  f64.const 1.25
  call $~lib/number/isNaN<f64>
  if
   i32.const 0
   i32.const 64
   i32.const 140
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  call $~lib/number/isNaN<f64>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 64
   i32.const 141
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.25
  call $~lib/number/isFinite<f64>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 64
   i32.const 142
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  call $~lib/number/isFinite<f64>
  if
   i32.const 0
   i32.const 64
   i32.const 143
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  call $~lib/number/isFinite<f64>
  if
   i32.const 0
   i32.const 64
   i32.const 144
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  call $~lib/number/isFinite<f64>
  if
   i32.const 0
   i32.const 64
   i32.const 145
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  global.set $builtins/F
  f64.const inf
  global.set $builtins/F
  f64.const 1.25
  global.set $builtins/F
  f64.const 2
  global.set $builtins/F
  f64.const 1.25
  global.set $builtins/F
  f64.const 1
  global.set $builtins/F
  f64.const 2.5
  global.set $builtins/F
  f64.const 1.25
  global.set $builtins/F
  f64.const 1
  global.set $builtins/F
  f64.const 1.118033988749895
  global.set $builtins/F
  f64.const 1
  global.set $builtins/F
  f64.const 1.25
  call $~lib/number/isNaN<f64>
  global.set $builtins/b
  f64.const 1.25
  call $~lib/number/isFinite<f64>
  global.set $builtins/b
  i32.const 8
  i32.load
  global.set $builtins/i
  i32.const 8
  global.get $builtins/i
  i32.store
  i32.const 8
  i32.const 8
  i32.load
  i32.store
  i32.const 8
  i64.load
  global.set $builtins/I
  i32.const 8
  global.get $builtins/I
  i64.store
  i32.const 8
  i32.const 8
  i64.load
  i64.store
  i32.const 8
  f32.load
  global.set $builtins/f
  i32.const 8
  global.get $builtins/f
  f32.store
  i32.const 8
  i32.const 8
  f32.load
  f32.store
  i32.const 8
  f64.load
  global.set $builtins/F
  i32.const 8
  global.get $builtins/F
  f64.store
  i32.const 8
  i32.const 8
  f64.load
  f64.store
  i32.const 8
  i32.load
  global.set $builtins/i
  i32.const 8
  global.get $builtins/i
  i32.store
  i32.const 8
  i32.const 8
  i32.load
  i32.store
  i32.const 8
  i64.load
  global.set $builtins/I
  i32.const 8
  global.get $builtins/I
  i64.store
  i32.const 8
  i32.const 8
  i64.load
  i64.store
  i32.const 8
  f32.load
  global.set $builtins/f
  i32.const 8
  global.get $builtins/f
  f32.store
  i32.const 8
  i32.const 8
  f32.load
  f32.store
  i32.const 8
  f64.load
  global.set $builtins/F
  i32.const 8
  global.get $builtins/F
  f64.store
  i32.const 8
  i32.const 8
  f64.load
  f64.store
  i32.const 8
  i32.load8_s
  global.set $builtins/i
  i32.const 8
  i32.load16_s
  global.set $builtins/i
  i32.const 8
  i32.load
  global.set $builtins/i
  i32.const 8
  i32.load8_u
  global.set $builtins/i
  i32.const 8
  i32.load16_u
  global.set $builtins/i
  i32.const 8
  i32.load
  global.set $builtins/i
  i32.const 8
  i32.load8_u
  global.set $builtins/u
  i32.const 8
  i32.load16_u
  global.set $builtins/u
  i32.const 8
  i32.load
  global.set $builtins/u
  i32.const 8
  i32.load8_s
  global.set $builtins/u
  i32.const 8
  i32.load16_s
  global.set $builtins/u
  i32.const 8
  i32.load
  global.set $builtins/u
  i32.const 8
  i64.load8_s
  global.set $builtins/I
  i32.const 8
  i64.load16_s
  global.set $builtins/I
  i32.const 8
  i64.load32_s
  global.set $builtins/I
  i32.const 8
  i64.load
  global.set $builtins/I
  i32.const 8
  i64.load8_u
  global.set $builtins/U
  i32.const 8
  i64.load16_u
  global.set $builtins/U
  i32.const 8
  i64.load32_u
  global.set $builtins/U
  i32.const 8
  i64.load
  global.set $builtins/U
  i32.const 8
  i32.const 1
  i32.store8
  i32.const 8
  i32.const 1
  i32.store16
  i32.const 8
  i32.const 1
  i32.store
  i32.const 8
  i64.const 1
  i64.store8
  i32.const 8
  i64.const 1
  i64.store16
  i32.const 8
  i64.const 1
  i64.store32
  i32.const 8
  i64.const 1
  i64.store
  i32.const 8
  i64.const 1
  i64.store
  i32.const 1067450368
  global.set $builtins/i
  f32.const 3.5032461608120427e-44
  global.set $builtins/f
  i64.const 4608308318706860032
  global.set $builtins/I
  f64.const 1.24e-322
  global.set $builtins/F
  memory.size
  drop
  i32.const 1
  memory.grow
  drop
  memory.size
  global.set $builtins/s
  i32.const 1
  memory.grow
  global.set $builtins/s
  i32.const 10
  global.set $builtins/i
  i64.const 200
  global.set $builtins/I
  f32.const 1.25
  global.set $builtins/f
  f64.const 25
  global.set $builtins/F
  global.get $builtins/i
  i32.eqz
  if
   unreachable
  end
  i32.const 1
  i32.const 2
  global.get $builtins/fn
  call_indirect (type $FUNCSIG$vii)
  f32.const nan:0x400000
  call $~lib/number/isNaN<f32>
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 294
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  call $~lib/number/isNaN<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 295
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  call $~lib/number/isFinite<f32>
  if
   i32.const 0
   i32.const 64
   i32.const 296
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  call $~lib/number/isFinite<f32>
  if
   i32.const 0
   i32.const 64
   i32.const 297
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  call $~lib/number/isFinite<f64>
  if
   i32.const 0
   i32.const 64
   i32.const 298
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  call $~lib/number/isFinite<f64>
  if
   i32.const 0
   i32.const 64
   i32.const 299
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  call $~lib/number/isFinite<f32>
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 300
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  call $~lib/number/isFinite<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 301
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.load8_s
  drop
  i32.const 8
  i32.load8_u
  drop
  i32.const 8
  i32.load16_s
  drop
  i32.const 8
  i32.load16_u
  drop
  i32.const 8
  i32.load
  drop
  i32.const 8
  i64.load8_s
  drop
  i32.const 8
  i64.load8_u
  drop
  i32.const 8
  i64.load16_s
  drop
  i32.const 8
  i64.load16_u
  drop
  i32.const 8
  i64.load32_s
  drop
  i32.const 8
  i64.load32_u
  drop
  i32.const 8
  i64.load
  drop
  i32.const 8
  f32.load
  drop
  i32.const 8
  f64.load
  drop
  i32.const 8
  i32.const 1
  i32.store8
  i32.const 8
  i32.const 1
  i32.store16
  i32.const 8
  i32.const 1
  i32.store
  i32.const 8
  i64.const 1
  i64.store8
  i32.const 8
  i64.const 1
  i64.store16
  i32.const 8
  i64.const 1
  i64.store32
  i32.const 8
  i64.const 1
  i64.store
  i32.const 8
  f32.const 1
  f32.store
  i32.const 8
  f64.const 1
  f64.store
 )
 (func $builtins/test (; 7 ;) (type $FUNCSIG$v)
  nop
 )
 (func $start (; 8 ;) (type $FUNCSIG$v)
  call $start:builtins
 )
)
