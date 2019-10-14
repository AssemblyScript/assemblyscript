(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
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
 (global $relocatable/staticString i32 (i32.const 24))
 (global $relocatable/staticArray i32 (i32.const 72))
 (global $relocatable/staticFunction i32 (i32.const 1))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $relocatable/normalArray (mut i32) (i32.const 280))
 (global $~lib/started (mut i32) (i32.const 0))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (func $start:relocatable~anonymous|0 (; 4 ;) (type $FUNCSIG$i) (result i32)
  i32.const 42
 )
 (func $~lib/rt/shared/__retain (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  global.get $~lib/rt/__memory_base
  local.get $0
  call $~lib/bindings/asrt/retain
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
 (func $~lib/string/String#get:length (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  global.get $~lib/rt/__memory_base
  local.get $0
  i32.const 16
  i32.sub
  i32.add
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 9 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/shared/__retain
  drop
  local.get $2
  call $~lib/rt/shared/__retain
  drop
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $5
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  local.get $4
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $5
   i32.const 7
   i32.and
   local.get $6
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $break|0
    loop $continue|0
     global.get $~lib/rt/__memory_base
     local.get $5
     i32.add
     i64.load
     global.get $~lib/rt/__memory_base
     local.get $6
     i32.add
     i64.load
     i64.ne
     if
      br $break|0
     end
     local.get $5
     i32.const 8
     i32.add
     local.set $5
     local.get $6
     i32.const 8
     i32.add
     local.set $6
     local.get $4
     i32.const 4
     i32.sub
     local.set $4
     local.get $4
     i32.const 4
     i32.ge_u
     br_if $continue|0
    end
   end
  end
  block $break|1
   loop $continue|1
    local.get $4
    local.tee $7
    i32.const 1
    i32.sub
    local.set $4
    local.get $7
    i32.eqz
    br_if $break|1
    global.get $~lib/rt/__memory_base
    local.get $5
    i32.add
    i32.load16_u
    local.set $7
    global.get $~lib/rt/__memory_base
    local.get $6
    i32.add
    i32.load16_u
    local.set $8
    local.get $7
    local.get $8
    i32.ne
    if
     local.get $7
     local.get $8
     i32.sub
     local.set $9
     local.get $0
     call $~lib/rt/shared/__release
     local.get $2
     call $~lib/rt/shared/__release
     local.get $9
     return
    end
    local.get $5
    i32.const 2
    i32.add
    local.set $5
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    br $continue|1
   end
   unreachable
  end
  i32.const 0
  local.set $8
  local.get $0
  call $~lib/rt/shared/__release
  local.get $2
  call $~lib/rt/shared/__release
  local.get $8
 )
 (func $~lib/string/String.__eq (; 10 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/shared/__retain
  drop
  local.get $1
  call $~lib/rt/shared/__retain
  drop
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/shared/__release
   local.get $1
   call $~lib/rt/shared/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/shared/__release
   local.get $1
   call $~lib/rt/shared/__release
   local.get $2
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/shared/__release
   local.get $1
   call $~lib/rt/shared/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/shared/__release
  local.get $1
  call $~lib/rt/shared/__release
  local.get $2
 )
 (func $~lib/array/Array<i32>#__unchecked_get (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/rt/__memory_base
  global.get $~lib/rt/__memory_base
  local.get $0
  i32.add
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
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
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__unchecked_get
  local.set $2
  local.get $2
 )
 (func $start:relocatable (; 13 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 24
  global.get $~lib/rt/__memory_base
  i32.lt_u
  i32.eqz
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
  i32.lt_u
  i32.eqz
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
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 8
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 24
  i32.const 24
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 10
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 72
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $relocatable/normalArray
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 15
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 14 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  if
   return
  else
   i32.const 1
   global.set $~lib/started
  end
  call $start:relocatable
 )
 (func $~lib/array/Array<i32>#__visit_impl (; 15 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/rt/shared/__visit (; 16 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  global.get $~lib/rt/__memory_base
  local.get $0
  local.get $1
  global.get $~lib/rt/__table_base
  i32.const 2
  i32.add
  call $~lib/bindings/asrt/visit
 )
 (func $~lib/rt/__visit_members (; 17 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $block$4$break
   block $switch$1$default
    block $switch$1$case$5
     block $switch$1$case$4
      block $switch$1$case$2
       global.get $~lib/rt/__memory_base
       local.get $0
       i32.const 8
       i32.sub
       i32.add
       i32.load
       br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$5 $switch$1$default
      end
      return
     end
     br $block$4$break
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<i32>#__visit_impl
    br $block$4$break
   end
   unreachable
  end
  global.get $~lib/rt/__memory_base
  local.get $0
  i32.add
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/shared/__visit
  end
  return
 )
 (func $null (; 18 ;) (type $FUNCSIG$v)
 )
 ;; custom section "dylink", size 6
)
