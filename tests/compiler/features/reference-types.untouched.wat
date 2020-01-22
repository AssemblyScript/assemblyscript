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
 (data (i32.const 16) "6\00\00\00\01\00\00\00\01\00\00\006\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00r\00e\00f\00e\00r\00e\00n\00c\00e\00-\00t\00y\00p\00e\00s\00.\00t\00s\00")
 (table $0 1 funcref)
 (global $features/reference-types/nullGlobal (mut anyref) (ref.null))
 (global $features/reference-types/nullGlobalInit (mut anyref) (ref.null))
 (global $features/reference-types/funcGlobal (mut anyref) (ref.null))
 (export "memory" (memory $0))
 (export "external" (func $features/reference-types/external))
 (export "internal" (func $features/reference-types/internal))
 (start $~start)
 (func $features/reference-types/someFunc (; 5 ;)
  nop
 )
 (func $start:features/reference-types (; 6 ;)
  (local $0 anyref)
  (local $1 anyref)
  global.get $features/reference-types/someObject
  global.get $features/reference-types/someKey
  call $~lib/bindings/Reflect/has
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
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
  global.get $features/reference-types/nullGlobal
  ref.is_null
  i32.eqz
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 32
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  ref.null
  global.set $features/reference-types/nullGlobal
  global.get $features/reference-types/nullGlobal
  ref.is_null
  i32.eqz
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 34
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  ref.null
  global.set $features/reference-types/nullGlobalInit
  global.get $features/reference-types/nullGlobalInit
  ref.is_null
  i32.eqz
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 36
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  ref.is_null
  i32.eqz
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 39
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  ref.null
  local.set $0
  local.get $0
  ref.is_null
  i32.eqz
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 41
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  ref.null
  local.set $1
  local.get $1
  ref.is_null
  i32.eqz
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 43
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  ref.func $features/reference-types/someFunc
  global.set $features/reference-types/funcGlobal
  ref.func $features/reference-types/someFunc
  local.set $1
 )
 (func $features/reference-types/internal (; 7 ;) (param $0 anyref) (result anyref)
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
 (func $~start (; 8 ;)
  call $start:features/reference-types
 )
)
