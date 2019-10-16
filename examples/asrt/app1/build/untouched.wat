(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (import "env" "memory" (memory $0 1))
 (data (global.get $~lib/rt/__memory_base) "\00\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00a\00p\00p\001\00")
 (import "env" "table" (table $0 2 funcref))
 (elem (global.get $~lib/rt/__table_base) $null $~lib/rt/shared/visit)
 (import "env" "__memory_base" (global $~lib/rt/__memory_base i32))
 (import "env" "__table_base" (global $~lib/rt/__table_base i32))
 (import "asrt" "alloc" (func $~lib/bindings/asrt/alloc (param i32 i32 i32) (result i32)))
 (import "asrt" "retain" (func $~lib/bindings/asrt/retain (param i32 i32) (result i32)))
 (import "env" "log" (func $assembly/index/log<~lib/string/String> (param i32)))
 (import "app2" "sayHello" (func $assembly/index/sayHello (param i32)))
 (import "asrt" "release" (func $~lib/bindings/asrt/release (param i32 i32 i32) (result i32)))
 (import "asrt" "visit" (func $~lib/bindings/asrt/visit (param i32 i32 i32 i32)))
 (global $~lib/argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "main" (func $assembly/index/main))
 (func $~lib/rt/shared/__alloc (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/rt/__memory_base
  local.get $0
  local.get $1
  call $~lib/bindings/asrt/alloc
 )
 (func $~lib/rt/shared/__retain (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  global.get $~lib/rt/__memory_base
  local.get $0
  call $~lib/bindings/asrt/retain
 )
 (func $~lib/string/String.fromCharCode (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 0
  i32.gt_s
  local.set $2
  i32.const 2
  local.get $2
  i32.shl
  i32.const 1
  call $~lib/rt/shared/__alloc
  local.set $3
  global.get $~lib/rt/__memory_base
  local.get $3
  i32.add
  local.get $0
  i32.store16
  local.get $2
  if
   global.get $~lib/rt/__memory_base
   local.get $3
   i32.add
   local.get $1
   i32.store16 offset=2
  end
  local.get $3
  call $~lib/rt/shared/__retain
 )
 (func $~lib/string/String.fromCharCode|trampoline (; 9 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const -1
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/string/String.fromCharCode
 )
 (func $~lib/rt/shared/visit (; 10 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/rt/__visit_members
 )
 (func $~lib/rt/shared/__release (; 11 ;) (type $FUNCSIG$vi) (param $0 i32)
  global.get $~lib/rt/__memory_base
  local.get $0
  global.get $~lib/rt/__table_base
  i32.const 1
  i32.add
  call $~lib/bindings/asrt/release
  drop
 )
 (func $assembly/index/main (; 12 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 1
  global.set $~lib/argc
  i32.const 13
  i32.const 0
  call $~lib/string/String.fromCharCode|trampoline
  local.set $0
  local.get $0
  call $assembly/index/log<~lib/string/String>
  i32.const 24
  call $~lib/rt/shared/__retain
  local.set $1
  local.get $1
  call $assembly/index/log<~lib/string/String>
  local.get $1
  call $assembly/index/sayHello
  local.get $0
  call $~lib/rt/shared/__release
  local.get $1
  call $~lib/rt/shared/__release
 )
 (func $~lib/rt/shared/__visit (; 13 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  global.get $~lib/rt/__memory_base
  local.get $0
  local.get $1
  global.get $~lib/rt/__table_base
  i32.const 1
  i32.add
  call $~lib/bindings/asrt/visit
 )
 (func $~lib/rt/__visit_members (; 14 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $switch$1$default
   block $switch$1$case$4
    block $switch$1$case$2
     global.get $~lib/rt/__memory_base
     local.get $0
     i32.const 8
     i32.sub
     i32.add
     i32.load
     br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$default
    end
    return
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
  end
  unreachable
 )
 (func $null (; 15 ;) (type $FUNCSIG$v)
 )
 ;; custom section "dylink", size 5
)
