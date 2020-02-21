(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\0c\00\00\00\01\00\00\00\03\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 48) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 112) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00f\00i\00x\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 176) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00s\00t\00d\00/\00f\00i\00x\00e\00d\00.\00t\00s\00")
 (table $0 1 funcref)
 (global $std/fixed/arr i32 (i32.const 32))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/fixedarray/FixedArray<i32>#get:length (; 1 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 2
  i32.shr_u
 )
 (func $~lib/fixedarray/FixedArray<i32>#__unchecked_get (; 2 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/fixedarray/FixedArray<i32>#__get (; 3 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  call $~lib/fixedarray/FixedArray<i32>#get:length
  i32.ge_u
  if
   i32.const 64
   i32.const 128
   i32.const 24
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/fixedarray/FixedArray<i32>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $~lib/fixedarray/FixedArray<i32>#__unchecked_set (; 4 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/fixedarray/FixedArray<i32>#__set (; 5 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  call $~lib/fixedarray/FixedArray<i32>#get:length
  i32.ge_u
  if
   i32.const 64
   i32.const 128
   i32.const 39
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/fixedarray/FixedArray<i32>#__unchecked_set
 )
 (func $start:std/fixed (; 6 ;)
  i32.const 32
  i32.const 0
  call $~lib/fixedarray/FixedArray<i32>#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 3
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  i32.const 1
  call $~lib/fixedarray/FixedArray<i32>#__get
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 4
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  i32.const 2
  call $~lib/fixedarray/FixedArray<i32>#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 5
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  call $~lib/fixedarray/FixedArray<i32>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 6
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/fixed/arr
  i32.const 1
  i32.const 4
  call $~lib/fixedarray/FixedArray<i32>#__set
  i32.const 32
  i32.const 1
  call $~lib/fixedarray/FixedArray<i32>#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 9
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32
  call $~lib/fixedarray/FixedArray<i32>#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 192
   i32.const 10
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start (; 7 ;)
  call $start:std/fixed
 )
)
