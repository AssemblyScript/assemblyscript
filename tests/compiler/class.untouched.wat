(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $ifff (func (param i32 f32 f32) (result f32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00c\00l\00a\00s\00s\00.\00t\00s\00")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $class/Animal.ONE (mut i32) (i32.const 1))
 (global $HEAP_BASE i32 (i32.const 28))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $class/test))
 (start $start)
 (func $class/Animal.add (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
  get_global $class/Animal.ONE
  i32.add
 )
 (func $class/Animal.sub<f32> (; 2 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  get_local $0
  get_local $1
  f32.sub
  get_global $class/Animal.ONE
  f32.convert_s/i32
  f32.add
 )
 (func $class/Animal<f64>#instanceAdd (; 3 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $1
  get_local $2
  i32.add
  get_global $class/Animal.ONE
  i32.add
 )
 (func $class/Animal<f64>#instanceSub<f32> (; 4 ;) (type $ifff) (param $0 i32) (param $1 f32) (param $2 f32) (result f32)
  get_local $1
  get_local $2
  f32.sub
  get_global $class/Animal.ONE
  f32.convert_s/i32
  f32.add
 )
 (func $class/test (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  i32.const 1
  i32.const 2
  call $class/Animal<f64>#instanceAdd
  drop
  get_local $0
  f32.const 1
  f32.const 2
  call $class/Animal<f64>#instanceSub<f32>
  drop
  get_local $0
  i32.load
  drop
  get_local $0
  i32.load16_s offset=4
  drop
  get_local $0
  i32.load8_s offset=6
  drop
  get_local $0
  i32.const 0
  i32.const 1
  i32.add
  i32.store
  get_local $0
  i32.const 1
  i32.const 1
  i32.add
  i32.store16 offset=4
  get_local $0
  i32.const 1
  i32.const 1
  i32.add
  i32.const 1
  i32.add
  i32.store8 offset=6
  get_local $0
  set_local $1
  get_local $1
  set_local $2
  get_local $2
 )
 (func $start (; 6 ;) (type $v)
  i32.const 4
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 13
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $class/Animal.ONE
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
 (func $null (; 7 ;) (type $v)
 )
)
