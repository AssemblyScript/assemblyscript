(module
 (type $none_=>_none (func))
 (type $externref_=>_externref (func (param externref) (result externref)))
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
 (data (i32.const 12) "L\00\00\00\01\00\00\00\00\00\00\00\01\00\00\006\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00r\00e\00f\00e\00r\00e\00n\00c\00e\00-\00t\00y\00p\00e\00s\00.\00t\00s\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $features/reference-types/funcGlobal (mut funcref) (ref.null func))
 (global $features/reference-types/funcGlobalInit (mut funcref) (ref.null func))
 (global $features/reference-types/externGlobal (mut externref) (ref.null extern))
 (global $features/reference-types/externGlobalInit (mut externref) (ref.null extern))
 (global $features/reference-types/exnGlobal (mut exnref) (ref.null exn))
 (global $features/reference-types/exnGlobalInit (mut exnref) (ref.null exn))
 (global $features/reference-types/anyGlobal (mut anyref) (ref.null any))
 (global $features/reference-types/anyGlobalInit (mut anyref) (ref.null any))
 (global $features/reference-types/otherFuncGlobal (mut funcref) (ref.null func))
 (export "memory" (memory $0))
 (export "external" (func $features/reference-types/external))
 (export "internal" (func $features/reference-types/internal))
 (start $~start)
 (func $features/reference-types/testLocal<funcref>
  (local $0 funcref)
  (local $1 funcref)
  local.get $0
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 61
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  ref.null func
  local.set $0
  local.get $0
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 63
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  ref.null func
  local.set $1
  local.get $1
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 65
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/reference-types/testLocal<externref>
  (local $0 externref)
  (local $1 externref)
  local.get $0
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 61
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  ref.null extern
  local.set $0
  local.get $0
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 63
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  ref.null extern
  local.set $1
  local.get $1
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 65
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/reference-types/testLocal<exnref>
  (local $0 exnref)
  (local $1 exnref)
  local.get $0
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 61
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  ref.null exn
  local.set $0
  local.get $0
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 63
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  ref.null exn
  local.set $1
  local.get $1
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 65
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/reference-types/testLocal<anyref>
  (local $0 anyref)
  (local $1 anyref)
  local.get $0
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 61
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  ref.null any
  local.set $0
  local.get $0
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 63
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  ref.null any
  local.set $1
  local.get $1
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 65
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/reference-types/someFunc
  nop
 )
 (func $start:features/reference-types
  (local $0 funcref)
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
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 32
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  ref.null func
  global.set $features/reference-types/funcGlobal
  global.get $features/reference-types/funcGlobal
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 34
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  ref.null func
  global.set $features/reference-types/funcGlobalInit
  global.get $features/reference-types/funcGlobalInit
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 36
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/reference-types/externGlobal
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 39
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  ref.null extern
  global.set $features/reference-types/externGlobal
  global.get $features/reference-types/externGlobal
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  ref.null extern
  global.set $features/reference-types/externGlobalInit
  global.get $features/reference-types/externGlobalInit
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 43
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/reference-types/exnGlobal
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 46
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  ref.null exn
  global.set $features/reference-types/exnGlobal
  global.get $features/reference-types/exnGlobal
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 48
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  ref.null exn
  global.set $features/reference-types/exnGlobalInit
  global.get $features/reference-types/exnGlobalInit
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 50
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/reference-types/anyGlobal
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 53
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  ref.null any
  global.set $features/reference-types/anyGlobal
  global.get $features/reference-types/anyGlobal
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 55
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  ref.null any
  global.set $features/reference-types/anyGlobalInit
  global.get $features/reference-types/anyGlobalInit
  ref.is_null
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 57
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $features/reference-types/testLocal<funcref>
  call $features/reference-types/testLocal<externref>
  call $features/reference-types/testLocal<exnref>
  call $features/reference-types/testLocal<anyref>
  ref.func $features/reference-types/someFunc
  global.set $features/reference-types/funcGlobal
  global.get $features/reference-types/funcGlobalInit
  ref.is_null
  if
   i32.const 0
   i32.const 32
   i32.const 76
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  ref.func $features/reference-types/someFunc
  global.set $features/reference-types/otherFuncGlobal
  global.get $features/reference-types/otherFuncGlobal
  ref.is_null
  if
   i32.const 0
   i32.const 32
   i32.const 78
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  ref.func $features/reference-types/someFunc
  local.set $0
  local.get $0
  ref.is_null
  if
   i32.const 0
   i32.const 32
   i32.const 81
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/reference-types/funcGlobal
  global.set $features/reference-types/anyGlobal
  global.get $features/reference-types/externGlobal
  global.set $features/reference-types/anyGlobal
  global.get $features/reference-types/exnGlobal
  global.set $features/reference-types/anyGlobal
 )
 (func $features/reference-types/internal (param $0 externref) (result externref)
  (local $1 externref)
  (local $2 externref)
  (local $3 externref)
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
 (func $~start
  call $start:features/reference-types
 )
)
