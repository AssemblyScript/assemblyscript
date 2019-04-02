(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$fff (func (param f32 f32) (result f32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$fiff (func (param i32 f32 f32) (result f32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00c\00l\00a\00s\00s\00.\00t\00s\00")
 (table $0 2 funcref)
 (elem (i32.const 0) $null $~lib/string/String~traverse)
 (global $class/Animal.ONE (mut i32) (i32.const 1))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 40))
 (global $~lib/capabilities i32 (i32.const 2))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $class/test))
 (export ".capabilities" (global $~lib/capabilities))
 (start $start)
 (func $~lib/string/String~traverse (; 1 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
 )
 (func $class/Animal.add (; 2 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
  global.get $class/Animal.ONE
  i32.add
 )
 (func $class/Animal.sub<f32> (; 3 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  local.get $0
  local.get $1
  f32.sub
  global.get $class/Animal.ONE
  f32.convert_i32_s
  f32.add
 )
 (func $start:class (; 4 ;) (type $FUNCSIG$v)
  i32.const 4
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 13
   i32.const 0
   call $~lib/env/abort
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
 (func $class/test (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
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
  local.set $2
  local.get $2
 )
 (func $start (; 8 ;) (type $FUNCSIG$v)
  call $start:class
 )
 (func $null (; 9 ;) (type $FUNCSIG$v)
 )
)
