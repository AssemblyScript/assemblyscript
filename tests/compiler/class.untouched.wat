(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_f32_f32_=>_f32 (func (param i32 f32 f32) (result f32)))
 (type $f32_f32_=>_f32 (func (param f32 f32) (result f32)))
 (memory $0 0)
 (table $0 1 funcref)
 (global $class/Animal.ONE (mut i32) (i32.const 1))
 (export "memory" (memory $0))
 (export "test" (func $class/test))
 (start $~start)
 (func $class/Animal.add (; 0 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
  global.get $class/Animal.ONE
  i32.add
 )
 (func $class/Animal.sub<f32> (; 1 ;) (param $0 f32) (param $1 f32) (result f32)
  local.get $0
  local.get $1
  f32.sub
  global.get $class/Animal.ONE
  f32.convert_i32_s
  f32.add
 )
 (func $start:class (; 2 ;)
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
 (func $~lib/rt/stub/__retain (; 3 ;) (param $0 i32) (result i32)
  local.get $0
 )
 (func $class/Animal<f64>#instanceAdd (; 4 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  local.get $2
  i32.add
  global.get $class/Animal.ONE
  i32.add
 )
 (func $class/Animal<f64>#instanceSub<f32> (; 5 ;) (param $0 i32) (param $1 f32) (param $2 f32) (result f32)
  local.get $1
  local.get $2
  f32.sub
  global.get $class/Animal.ONE
  f32.convert_i32_s
  f32.add
 )
 (func $~lib/rt/stub/__release (; 6 ;) (param $0 i32)
  nop
 )
 (func $class/test (; 7 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
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
 (func $~start (; 8 ;)
  call $start:class
 )
)
