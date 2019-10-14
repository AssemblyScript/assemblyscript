(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (import "env" "memory" (memory $0 1))
 (data (global.get $~lib/rt/__memory_base) "\00\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\004\002\00\00\00\00\00\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00*\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\000\00\00\000\00\00\00\04\00\00\00\01\00\00\00\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00r\00e\00l\00o\00c\00a\00t\00a\00b\00l\00e\00.\00t\00s\00\00\00\00\00$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00+\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\00\00\01\00\00\00\01\00\00\04\00\00\00\01\00\00\00")
 (import "env" "table" (table $0 3 funcref))
 (elem (global.get $~lib/rt/__table_base) $null $start:relocatable~anonymous|0 $~lib/rt/shared/visit)
 (import "env" "__memory_base" (global $~lib/rt/__memory_base i32))
 (import "env" "__table_base" (global $~lib/rt/__table_base i32))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "asrt" "retain" (func $~lib/bindings/asrt/retain (param i32 i32) (result i32)))
 (import "asrt" "release" (func $~lib/bindings/asrt/release (param i32 i32 i32) (result i32)))
 (import "asrt" "visit" (func $~lib/bindings/asrt/visit (param i32 i32 i32 i32)))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/started (mut i32) (i32.const 0))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (func $start:relocatable~anonymous|0 (; 4 ;) (type $FUNCSIG$i) (result i32)
  i32.const 42
 )
 (func $~lib/rt/shared/__retain (; 5 ;) (type $FUNCSIG$vi) (param $0 i32)
  global.get $~lib/rt/__memory_base
  local.get $0
  call $~lib/bindings/asrt/retain
  drop
 )
 (func $~lib/rt/shared/visit (; 6 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/rt/__visit_members
 )
 (func $~lib/rt/shared/__release (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  global.get $~lib/rt/__memory_base
  local.get $0
  global.get $~lib/rt/__table_base
  i32.const 2
  i32.add
  call $~lib/bindings/asrt/release
  drop
 )
 (func $~lib/array/Array<i32>#__get (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  global.get $~lib/rt/__memory_base
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
  global.get $~lib/rt/__memory_base
  global.get $~lib/rt/__memory_base
  local.get $0
  i32.add
  i32.load offset=4
  i32.add
  i32.load
 )
 (func $start:relocatable (; 9 ;) (type $FUNCSIG$v)
  i32.const 24
  global.get $~lib/rt/__memory_base
  i32.ge_u
  if
   i32.const 0
   i32.const 104
   i32.const 6
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 72
  global.get $~lib/rt/__memory_base
  i32.ge_u
  if
   i32.const 0
   i32.const 104
   i32.const 7
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.get $~lib/rt/__table_base
  i32.ge_u
  if
   i32.const 0
   i32.const 104
   i32.const 8
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 24
  call $~lib/rt/shared/__retain
  i32.const 24
  call $~lib/rt/shared/__retain
  i32.const 24
  call $~lib/rt/shared/__release
  i32.const 24
  call $~lib/rt/shared/__release
  i32.const 72
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 104
   i32.const 11
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $~lib/argc
  global.get $~lib/rt/__table_base
  i32.const 1
  i32.add
  call_indirect (type $FUNCSIG$i)
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 104
   i32.const 12
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
   i32.const 15
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 10 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  if
   return
  else
   i32.const 1
   global.set $~lib/started
  end
  call $start:relocatable
 )
 (func $~lib/rt/__visit_members (; 11 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  block $block$4$break
   block $switch$1$default
    block $switch$1$case$2
     global.get $~lib/rt/__memory_base
     local.get $0
     i32.const 8
     i32.sub
     i32.add
     i32.load
     br_table $switch$1$case$2 $switch$1$case$2 $block$4$break $block$4$break $switch$1$default
    end
    return
   end
   unreachable
  end
  global.get $~lib/rt/__memory_base
  local.get $0
  i32.add
  i32.load
  local.tee $0
  if
   global.get $~lib/rt/__memory_base
   local.get $0
   local.get $1
   global.get $~lib/rt/__table_base
   i32.const 2
   i32.add
   call $~lib/bindings/asrt/visit
  end
 )
 (func $null (; 12 ;) (type $FUNCSIG$v)
  nop
 )
 ;; custom section "dylink", size 6
)
