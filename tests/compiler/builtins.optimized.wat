(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$if (func (param f32) (result i32)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viiddddd (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 12) "\01\00\00\00\01")
 (data (i32.const 24) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00b\00c")
 (data (i32.const 48) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s")
 (data (i32.const 88) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00s\00i\00g\00n\00a\00t\00u\00r\00e\00s")
 (data (i32.const 128) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00t\00e\00s\00t\00i\00n\00g")
 (data (i32.const 160) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00F\00u\00n\00c\00t\00i\00o\00n")
 (data (i32.const 192) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00C")
 (data (i32.const 216) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g")
 (data (i32.const 248) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00b\00o\00o\00l")
 (data (i32.const 272) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00i\008")
 (data (i32.const 296) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00u\008")
 (data (i32.const 320) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\001\006")
 (data (i32.const 344) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\001\006")
 (data (i32.const 368) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\003\002")
 (data (i32.const 392) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\003\002")
 (data (i32.const 416) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00f\003\002")
 (data (i32.const 440) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\006\004")
 (data (i32.const 464) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00u\006\004")
 (data (i32.const 488) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00f\006\004")
 (data (i32.const 512) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00i\00s\00i\00z\00e")
 (data (i32.const 544) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00u\00s\00i\00z\00e")
 (data (i32.const 576) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00v\00o\00i\00d")
 (data (i32.const 600) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00s\00o\00m\00e\00 \00v\00a\00l\00u\00e")
 (table $0 4 funcref)
 (elem (i32.const 0) $start:builtins~anonymous|1 $start:builtins~anonymous|0 $start:builtins~anonymous|1 $start:builtins~anonymous|2)
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
 (export "test" (func $start:builtins~anonymous|1))
 (start $start)
 (func $~lib/number/isNaN<f32> (; 2 ;) (type $FUNCSIG$if) (param $0 f32) (result i32)
  local.get $0
  local.get $0
  f32.ne
 )
 (func $~lib/number/isFinite<f32> (; 3 ;) (type $FUNCSIG$if) (param $0 f32) (result i32)
  local.get $0
  local.get $0
  f32.sub
  f32.const 0
  f32.eq
 )
 (func $~lib/number/isNaN<f64> (; 4 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.ne
 )
 (func $~lib/number/isFinite<f64> (; 5 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.sub
  f64.const 0
  f64.eq
 )
 (func $start:builtins~anonymous|0 (; 6 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/string/String#get:length (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 8 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  loop $continue|0
   local.get $2
   if (result i32)
    local.get $0
    i32.load16_u
    local.get $1
    i32.load16_u
    i32.sub
    local.tee $3
    i32.eqz
   else    
    i32.const 0
   end
   if
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $continue|0
   end
  end
  local.get $3
 )
 (func $~lib/string/String.__eq (; 9 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   i32.const 1
   local.get $0
   select
   br_if $folding-inner0
   local.get $0
   call $~lib/string/String#get:length
   local.tee $2
   local.get $1
   call $~lib/string/String#get:length
   i32.ne
   br_if $folding-inner0
   local.get $0
   local.get $1
   local.get $2
   call $~lib/util/string/compareImpl
   i32.eqz
   return
  end
  i32.const 0
 )
 (func $start:builtins~anonymous|1 (; 10 ;) (type $FUNCSIG$v)
  nop
 )
 (func $start:builtins~anonymous|2 (; 11 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  nop
 )
 (func $start:builtins (; 12 ;) (type $FUNCSIG$v)
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
  i32.const 104
  i32.const 5
  f64.const 0
  f64.const 0
  f64.const 12
  f64.const 27
  f64.const 27
  call $~lib/builtins/trace
  i32.const 176
  i32.const 176
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 437
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 176
  i32.const 176
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 438
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 208
  i32.const 208
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 439
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 232
  i32.const 232
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 264
  i32.const 264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 288
  i32.const 288
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 442
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 312
  i32.const 312
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 443
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 336
  i32.const 336
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 444
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 360
  i32.const 360
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 445
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 384
  i32.const 384
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 446
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 408
  i32.const 408
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 447
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 432
  i32.const 432
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 448
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 456
  i32.const 456
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 449
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 480
  i32.const 480
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 450
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 504
  i32.const 504
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 451
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 528
  i32.const 528
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 452
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 560
  i32.const 560
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 453
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 592
  i32.const 592
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 454
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 232
  i32.const 232
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 455
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 176
  i32.const 176
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 456
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 13 ;) (type $FUNCSIG$v)
  call $start:builtins
 )
)
