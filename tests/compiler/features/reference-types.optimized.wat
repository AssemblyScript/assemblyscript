(module
 (type $externref_=>_externref (func (param externref) (result externref)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $externref_=>_none (func (param externref)))
 (type $externref_externref_=>_i32 (func (param externref externref) (result i32)))
 (type $externref_externref_=>_externref (func (param externref externref) (result externref)))
 (import "reference-types" "someObject" (global $features/reference-types/someObject externref))
 (import "reference-types" "someKey" (global $features/reference-types/someKey externref))
 (import "Reflect" "has" (func $~lib/bindings/Reflect/has (param externref externref) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "console" "log" (func $~lib/bindings/console/log (param externref)))
 (import "Reflect" "get" (func $~lib/bindings/Reflect/get (param externref externref) (result externref)))
 (import "reference-types" "external" (func $features/reference-types/external (param externref) (result externref)))
 (memory $0 1)
 (data (i32.const 1036) "L\00\00\00\01\00\00\00\00\00\00\00\01\00\00\006\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00r\00e\00f\00e\00r\00e\00n\00c\00e\00-\00t\00y\00p\00e\00s\00.\00t\00s")
 (global $features/reference-types/funcGlobal (mut funcref) (ref.null func))
 (export "memory" (memory $0))
 (export "external" (func $features/reference-types/external))
 (export "internal" (func $features/reference-types/internal))
 (start $~start)
 (func $features/reference-types/internal (param $0 externref) (result externref)
  local.get $0
  call $features/reference-types/external
  call $features/reference-types/external
  call $features/reference-types/external
 )
 (func $~start
  global.get $features/reference-types/someObject
  global.get $features/reference-types/someKey
  call $~lib/bindings/Reflect/has
  i32.eqz
  if
   i32.const 0
   i32.const 1056
   i32.const 19
   i32.const 1
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
  global.get $features/reference-types/funcGlobal
  ref.is_null
  if
   i32.const 0
   i32.const 1056
   i32.const 32
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  ref.null func
  global.set $features/reference-types/funcGlobal
  i32.const 0
  i32.const 1056
  i32.const 34
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
)
