(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (import "env" "memory" (memory $0 1))
 (data (global.get $__memory_base) "\00\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\004\002\00\00\00\00\00\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00*\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\000\00\00\000\00\00\00\04\00\00\00\01\00\00\00\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00r\00e\00l\00o\00c\00a\00t\00a\00b\00l\00e\00.\00t\00s\00\00\00\00\00$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00+\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\00\00\01\00\00\00\01\00\00\04\00\00\00\01\00\00\00")
 (import "env" "table" (table $0 2 funcref))
 (elem (global.get $__table_base) $null $start:relocatable~anonymous|0)
 (import "env" "memory_base" (global $__memory_base i32))
 (import "env" "table_base" (global $__table_base i32))
 (import "env" "memory_base" (global $relocatable/__memory_base i32))
 (import "env" "table_base" (global $relocatable/__table_base i32))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/started (mut i32) (i32.const 0))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (func $start:relocatable~anonymous|0 (; 1 ;) (type $FUNCSIG$i) (result i32)
  i32.const 42
 )
 (func $~lib/array/Array<i32>#__get (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  global.get $__memory_base
  local.get $0
  i32.add
  i32.load offset=12
  i32.ge_u
  if
   i32.const 152
   i32.const 208
   i32.const 92
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  global.get $__memory_base
  global.get $__memory_base
  local.get $0
  i32.add
  i32.load offset=4
  i32.add
  i32.load
 )
 (func $start:relocatable (; 3 ;) (type $FUNCSIG$v)
  i32.const 24
  global.get $relocatable/__memory_base
  i32.ge_u
  if
   i32.const 0
   i32.const 104
   i32.const 11
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 72
  global.get $relocatable/__memory_base
  i32.ge_u
  if
   i32.const 0
   i32.const 104
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.get $relocatable/__table_base
  i32.ge_u
  if
   i32.const 0
   i32.const 104
   i32.const 13
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 72
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 104
   i32.const 16
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $~lib/argc
  global.get $__table_base
  i32.const 1
  i32.add
  call_indirect (type $FUNCSIG$i)
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 104
   i32.const 17
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 280
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.ne
  if
   i32.const 0
   i32.const 104
   i32.const 20
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 4 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  if
   return
  else
   i32.const 1
   global.set $~lib/started
  end
  call $start:relocatable
 )
 (func $null (; 5 ;) (type $FUNCSIG$v)
  nop
 )
 ;; custom section "dylink", size 6
)
