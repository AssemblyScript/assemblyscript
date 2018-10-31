(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$f (func (result f32)))
 (memory $0 1 65535)
 (data (i32.const 8) "\08\00\00\00c\00l\00a\00s\00s\00.\00t\00s")
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $class/Animal.ONE (mut i32) (i32.const 1))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $class/test))
 (start $start)
 (func $class/Animal.add (; 0 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  get_global $class/Animal.ONE
  i32.const 3
  i32.add
 )
 (func $class/Animal.sub<f32> (; 1 ;) (; has Stack IR ;) (type $FUNCSIG$f) (result f32)
  f32.const -1
  get_global $class/Animal.ONE
  f32.convert_s/i32
  f32.add
 )
 (func $class/test (; 2 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  call $class/Animal.add
  drop
  call $class/Animal.sub<f32>
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
  i32.const 1
  i32.store
  get_local $0
  i32.const 2
  i32.store16 offset=4
  get_local $0
  i32.const 3
  i32.store8 offset=6
  get_local $0
 )
 (func $start (; 3 ;) (; has Stack IR ;) (type $v)
  call $class/Animal.add
  drop
  call $class/Animal.sub<f32>
  drop
 )
 (func $null (; 4 ;) (; has Stack IR ;) (type $v)
  nop
 )
)
