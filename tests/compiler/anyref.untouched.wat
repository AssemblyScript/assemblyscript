(module
 (type $FUNCSIG$iaa (func (param anyref anyref) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$aa (func (param anyref) (result anyref)))
 (type $FUNCSIG$aaa (func (param anyref anyref) (result anyref)))
 (type $FUNCSIG$va (func (param anyref)))
 (type $FUNCSIG$v (func))
 (import "anyref" "someObject" (global $anyref/someObject anyref))
 (import "anyref" "someKey" (global $anyref/someKey anyref))
 (import "Reflect" "has" (func $~lib/bindings/Reflect/has (param anyref anyref) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "console" "time" (func $~lib/bindings/console/time (param anyref) (result anyref)))
 (import "Reflect" "get" (func $~lib/bindings/Reflect/get (param anyref anyref) (result anyref)))
 (import "console" "log" (func $~lib/bindings/console/log (param anyref)))
 (import "console" "timeEnd" (func $~lib/bindings/console/timeEnd (param anyref)))
 (import "anyref" "external" (func $anyref/external (param anyref) (result anyref)))
 (memory $0 1)
 (data (i32.const 8) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00a\00n\00y\00r\00e\00f\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "external" (func $anyref/external))
 (export "internal" (func $anyref/internal))
 (start $start)
 (func $start:anyref (; 7 ;) (type $FUNCSIG$v)
  global.get $anyref/someObject
  global.get $anyref/someKey
  call $~lib/bindings/Reflect/has
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 16
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $anyref/someKey
  call $~lib/bindings/console/time
  drop
  global.get $anyref/someObject
  global.get $anyref/someKey
  call $~lib/bindings/Reflect/get
  call $~lib/bindings/console/log
  global.get $anyref/someKey
  call $~lib/bindings/console/timeEnd
 )
 (func $anyref/internal (; 8 ;) (type $FUNCSIG$aa) (param $0 anyref) (result anyref)
  local.get $0
 )
 (func $start (; 9 ;) (type $FUNCSIG$v)
  call $start:anyref
 )
 (func $null (; 10 ;) (type $FUNCSIG$v)
 )
)
