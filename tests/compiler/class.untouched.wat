(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$fff (func (param f32 f32) (result f32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$fiff (func (param i32 f32 f32) (result f32)))
 (type $FUNCSIG$vi (func (param i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00c\00l\00a\00s\00s\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $class/Animal.ONE (mut i32) (i32.const 1))
 (export "memory" (memory $0))
 (export "test" (func $class/test))
 (start $start)
 (func $class/Animal.add (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
  global.get $class/Animal.ONE
  i32.add
 )
 (func $class/Animal.sub<f32> (; 2 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  local.get $0
  local.get $1
  f32.sub
  global.get $class/Animal.ONE
  f32.convert_i32_s
  f32.add
 )
 (func $start:class (; 3 ;) (type $FUNCSIG$v)
  i32.const 4
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 13
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $class/Animal.ONE
  drop
  i32.const 1
  i32.const 2
  call $class/Animal.add
  drop
  f32.const 1
  f32.const 2
  call $class/Animal.sub<f32>
  drop
 )
 (func $~lib/rt/stub/__retain (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $class/Animal<f64>#instanceAdd (; 5 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  local.get $2
  i32.add
  global.get $class/Animal.ONE
  i32.add
 )
 (func $class/Animal<f64>#instanceSub<f32> (; 6 ;) (type $FUNCSIG$fiff) (param $0 i32) (param $1 f32) (param $2 f32) (result f32)
  local.get $1
  local.get $2
  f32.sub
  global.get $class/Animal.ONE
  f32.convert_i32_s
  f32.add
 )
 (func $~lib/rt/stub/__release (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $class/test (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  drop
  local.get $0
  i32.const 1
  i32.const 2
  call $class/Animal<f64>#instanceAdd
  drop
  local.get $0
  f32.const 1
  f32.const 2
  call $class/Animal<f64>#instanceSub<f32>
  drop
  local.get $0
  i32.load
  drop
  local.get $0
  i32.load16_s offset=4
  drop
  local.get $0
  i32.load8_s offset=6
  drop
  local.get $0
  i32.const 0
  i32.const 1
  i32.add
  i32.store
  local.get $0
  i32.const 1
  i32.const 1
  i32.add
  i32.store16 offset=4
  local.get $0
  i32.const 1
  i32.const 1
  i32.add
  i32.const 1
  i32.add
  i32.store8 offset=6
  local.get $0
  local.set $1
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $2
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $start (; 9 ;) (type $FUNCSIG$v)
  call $start:class
 )
 (func $null (; 10 ;) (type $FUNCSIG$v)
 )
)
