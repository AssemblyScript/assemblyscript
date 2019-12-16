(module
 (type $none_=>_none (func))
 (type $anyref_=>_anyref (func (param anyref) (result anyref)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $anyref_=>_none (func (param anyref)))
 (type $anyref_anyref_=>_i32 (func (param anyref anyref) (result i32)))
 (type $anyref_anyref_=>_anyref (func (param anyref anyref) (result anyref)))
 (import "reference-types" "someObject" (global $features/reference-types/someObject anyref))
 (import "reference-types" "someKey" (global $features/reference-types/someKey anyref))
 (import "Reflect" "has" (func $~lib/bindings/Reflect/has (param anyref anyref) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "console" "log" (func $~lib/bindings/console/log (param anyref)))
 (import "Reflect" "get" (func $~lib/bindings/Reflect/get (param anyref anyref) (result anyref)))
 (import "reference-types" "external" (func $features/reference-types/external (param anyref) (result anyref)))
 (memory $0 1)
 (data (i32.const 8) "6\00\00\00\01\00\00\00\01\00\00\006\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00r\00e\00f\00e\00r\00e\00n\00c\00e\00-\00t\00y\00p\00e\00s\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "external" (func $features/reference-types/external))
 (export "internal" (func $features/reference-types/internal))
 (start $start)
 (func $start:features/reference-types (; 5 ;)
  global.get $features/reference-types/someObject
  global.get $features/reference-types/someKey
  call $~lib/bindings/Reflect/has
  i32.const 0
  i32.ne
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
 )
 (func $features/reference-types/internal (; 6 ;) (param $0 anyref) (result anyref)
  (local $1 anyref)
  (local $2 anyref)
  (local $3 anyref)
  local.get $0
  call $features/reference-types/external
  local.set $1
  local.get $1
  call $features/reference-types/external
  local.set $2
  local.get $2
  call $features/reference-types/external
  local.set $3
  local.get $3
 )
 (func $start (; 7 ;)
  call $start:features/reference-types
 )
 (func $null (; 8 ;)
  unreachable
 )
)
