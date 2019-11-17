(module
 (type $FUNCSIG$iaa (func (param anyref anyref) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$va (func (param anyref)))
 (type $FUNCSIG$aaa (func (param anyref anyref) (result anyref)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ia (func (param anyref) (result i32)))
 (type $FUNCSIG$vaa (func (param anyref anyref)))
 (type $FUNCSIG$aa (func (param anyref) (result anyref)))
 (import "reference-types" "someObject" (global $features/reference-types/someObject anyref))
 (import "reference-types" "someKey" (global $features/reference-types/someKey anyref))
 (import "ref" "null" (global $~lib/reference/ref.null anyref))
 (import "Reflect" "has" (func $~lib/bindings/Reflect/has (param anyref anyref) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "console" "log" (func $~lib/bindings/console/log (param anyref)))
 (import "Reflect" "get" (func $~lib/bindings/Reflect/get (param anyref anyref) (result anyref)))
 (import "ref" "is_null" (func $~lib/reference/ref.is_null (param anyref) (result i32)))
 (import "ref" "eq" (func $~lib/reference/ref.eq (param anyref anyref) (result i32)))
 (import "reference-types" "external" (func $features/reference-types/external (param anyref) (result anyref)))
 (memory $0 1)
 (data (i32.const 8) "6\00\00\00\01\00\00\00\01\00\00\006\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00r\00e\00f\00e\00r\00e\00n\00c\00e\00-\00t\00y\00p\00e\00s\00.\00t\00s")
 (export "memory" (memory $0))
 (export "external" (func $features/reference-types/external))
 (export "internal" (func $features/reference-types/internal))
 (start $start)
 (func $features/reference-types/testGlobalFillers (; 7 ;) (type $FUNCSIG$v)
  global.get $~lib/reference/ref.null
  call $~lib/reference/ref.is_null
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 36
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/reference/ref.null
  global.get $~lib/reference/ref.null
  call $~lib/reference/ref.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/reference/ref.null
  global.get $~lib/reference/ref.null
  call $~lib/reference/ref.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 38
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/reference-types/testLocalFillers2 (; 8 ;) (type $FUNCSIG$vaa) (param $0 anyref) (param $1 anyref)
  local.get $0
  call $~lib/reference/ref.is_null
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 54
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/reference/ref.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 56
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/reference/ref.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 57
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:features/reference-types (; 9 ;) (type $FUNCSIG$v)
  global.get $features/reference-types/someObject
  global.get $features/reference-types/someKey
  call $~lib/bindings/Reflect/has
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 19
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/reference-types/someObject
  call $~lib/bindings/console/log
  global.get $features/reference-types/someKey
  call $~lib/bindings/console/log
  global.get $features/reference-types/someObject
  global.get $features/reference-types/someKey
  call $~lib/bindings/Reflect/get
  call $~lib/bindings/console/log
  call $features/reference-types/testGlobalFillers
  global.get $~lib/reference/ref.null
  call $~lib/reference/ref.is_null
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/reference/ref.null
  global.get $~lib/reference/ref.null
  call $features/reference-types/testLocalFillers2
 )
 (func $features/reference-types/internal (; 10 ;) (type $FUNCSIG$aa) (param $0 anyref) (result anyref)
  local.get $0
  call $features/reference-types/external
  call $features/reference-types/external
  call $features/reference-types/external
 )
 (func $start (; 11 ;) (type $FUNCSIG$v)
  call $start:features/reference-types
 )
 (func $null (; 12 ;) (type $FUNCSIG$v)
  nop
 )
)
