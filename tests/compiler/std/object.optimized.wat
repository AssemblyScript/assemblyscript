(module
 (type $FUNCSIG$idd (func (param f64 f64) (result i32)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iff (func (param f32 f32) (result i32)))
 (type $FUNCSIG$if (func (param f32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00s\00t\00d\00/\00o\00b\00j\00e\00c\00t\00.\00t\00s")
 (data (i32.const 56) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a")
 (data (i32.const 80) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b")
 (data (i32.const 104) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00a\00b")
 (data (i32.const 132) "\01\00\00\00\01")
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/number/isNaN<f64> (; 1 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.ne
 )
 (func $~lib/object/Object.is<f64> (; 2 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
  local.get $0
  local.get $1
  f64.eq
  if
   local.get $0
   i64.reinterpret_f64
   local.get $1
   i64.reinterpret_f64
   i64.eq
   return
  end
  local.get $0
  call $~lib/number/isNaN<f64>
  local.get $1
  call $~lib/number/isNaN<f64>
  i32.and
 )
 (func $~lib/number/isNaN<f32> (; 3 ;) (type $FUNCSIG$if) (param $0 f32) (result i32)
  local.get $0
  local.get $0
  f32.ne
 )
 (func $~lib/object/Object.is<f32> (; 4 ;) (type $FUNCSIG$iff) (param $0 f32) (param $1 f32) (result i32)
  local.get $0
  local.get $1
  f32.eq
  if
   local.get $0
   i32.reinterpret_f32
   local.get $1
   i32.reinterpret_f32
   i32.eq
   return
  end
  local.get $0
  call $~lib/number/isNaN<f32>
  local.get $1
  call $~lib/number/isNaN<f32>
  i32.and
 )
 (func $~lib/object/Object.is<i32> (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.eq
 )
 (func $~lib/object/Object.is<bool> (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  local.get $1
  i32.const 0
  i32.ne
  i32.eq
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
 (func $~lib/object/Object.is<~lib/string/String> (; 10 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
 )
 (func $start:std/object (; 11 ;) (type $FUNCSIG$v)
  f64.const 0
  f64.const 0
  call $~lib/object/Object.is<f64>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 4
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const -0
  call $~lib/object/Object.is<f64>
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const 0
  call $~lib/object/Object.is<f64>
  if
   i32.const 0
   i32.const 24
   i32.const 6
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const 1
  call $~lib/object/Object.is<f64>
  if
   i32.const 0
   i32.const 24
   i32.const 7
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const -1
  call $~lib/object/Object.is<f64>
  if
   i32.const 0
   i32.const 24
   i32.const 8
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const 1
  call $~lib/object/Object.is<f64>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 9
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const inf
  call $~lib/object/Object.is<f64>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 11
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const -inf
  call $~lib/object/Object.is<f64>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const -inf
  call $~lib/object/Object.is<f64>
  if
   i32.const 0
   i32.const 24
   i32.const 13
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const inf
  call $~lib/object/Object.is<f64>
  if
   i32.const 0
   i32.const 24
   i32.const 14
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const nan:0x8000000000000
  call $~lib/object/Object.is<f64>
  if
   i32.const 0
   i32.const 24
   i32.const 15
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const inf
  call $~lib/object/Object.is<f64>
  if
   i32.const 0
   i32.const 24
   i32.const 16
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const nan:0x8000000000000
  call $~lib/object/Object.is<f64>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 17
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const 0
  call $~lib/object/Object.is<f32>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 19
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const -0
  call $~lib/object/Object.is<f32>
  if
   i32.const 0
   i32.const 24
   i32.const 20
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const 0
  call $~lib/object/Object.is<f32>
  if
   i32.const 0
   i32.const 24
   i32.const 21
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const 1
  call $~lib/object/Object.is<f32>
  if
   i32.const 0
   i32.const 24
   i32.const 22
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const -1
  call $~lib/object/Object.is<f32>
  if
   i32.const 0
   i32.const 24
   i32.const 23
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const 1
  call $~lib/object/Object.is<f32>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 24
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const inf
  call $~lib/object/Object.is<f32>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 26
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const -inf
  call $~lib/object/Object.is<f32>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 27
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const -inf
  call $~lib/object/Object.is<f32>
  if
   i32.const 0
   i32.const 24
   i32.const 28
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const inf
  call $~lib/object/Object.is<f32>
  if
   i32.const 0
   i32.const 24
   i32.const 29
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const nan:0x400000
  call $~lib/object/Object.is<f32>
  if
   i32.const 0
   i32.const 24
   i32.const 30
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const inf
  call $~lib/object/Object.is<f32>
  if
   i32.const 0
   i32.const 24
   i32.const 31
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const nan:0x400000
  call $~lib/object/Object.is<f32>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 32
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const -1e-309
  call $~lib/object/Object.is<f64>
  if
   i32.const 0
   i32.const 24
   i32.const 34
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const -1e-309
  call $~lib/object/Object.is<f64>
  if
   i32.const 0
   i32.const 24
   i32.const 35
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const 0
  call $~lib/object/Object.is<f64>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 36
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/object/Object.is<i32>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 38
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const -1
  call $~lib/object/Object.is<i32>
  if
   i32.const 0
   i32.const 24
   i32.const 39
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 1
  call $~lib/object/Object.is<bool>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 41
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 0
  call $~lib/object/Object.is<bool>
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/object/Object.is<bool>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 43
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 72
  i32.const 72
  call $~lib/object/Object.is<~lib/string/String>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 45
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 72
  i32.const 96
  call $~lib/object/Object.is<~lib/string/String>
  if
   i32.const 0
   i32.const 24
   i32.const 46
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 72
  i32.const 120
  call $~lib/object/Object.is<~lib/string/String>
  if
   i32.const 0
   i32.const 24
   i32.const 47
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/object/Object.is<i32>
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 49
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 144
  i32.const 0
  call $~lib/object/Object.is<~lib/string/String>
  if
   i32.const 0
   i32.const 24
   i32.const 50
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 144
  call $~lib/object/Object.is<~lib/string/String>
  if
   i32.const 0
   i32.const 24
   i32.const 51
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 12 ;) (type $FUNCSIG$v)
  call $start:std/object
 )
 (func $null (; 13 ;) (type $FUNCSIG$v)
  nop
 )
)
