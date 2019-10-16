(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$vdd (func (param f64 f64)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (import "env" "memory" (memory $0 1))
 (data (global.get $~lib/rt/__memory_base) "\00\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00a\00p\00p\001\00\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00t\00o\00m\00")
 (import "env" "table" (table $0 2 funcref))
 (elem (global.get $~lib/rt/__table_base) $null $~lib/rt/shared/visit)
 (import "env" "__memory_base" (global $~lib/rt/__memory_base i32))
 (import "env" "__table_base" (global $~lib/rt/__table_base i32))
 (import "asrt" "retain" (func $~lib/bindings/asrt/retain (param i32 i32) (result i32)))
 (import "asrt" "alloc" (func $~lib/bindings/asrt/alloc (param i32 i32 i32) (result i32)))
 (import "asrt" "release" (func $~lib/bindings/asrt/release (param i32 i32 i32) (result i32)))
 (import "app2" "caps" (func $assembly/index/caps (param i32)))
 (import "app2" "sayHello" (func $assembly/index/sayHello (param i32) (result i32)))
 (import "env" "_log" (func $../env/index/_log (param f64 f64)))
 (import "app2" "sayHello2" (func $assembly/index/sayHello2 (param i32) (result i32)))
 (import "app2" "increaseAge" (func $assembly/index/increaseAge (param i32)))
 (import "asrt" "visit" (func $~lib/bindings/asrt/visit (param i32 i32 i32 i32)))
 (global $assembly/index/name (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "main" (func $assembly/index/main))
 (start $start)
 (func $~lib/rt/shared/__retain (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  global.get $~lib/rt/__memory_base
  local.get $0
  call $~lib/bindings/asrt/retain
 )
 (func $start:assembly/index (; 10 ;) (type $FUNCSIG$v)
  global.get $~lib/rt/__memory_base
  i32.const 24
  i32.add
  call $~lib/rt/shared/__retain
  global.set $assembly/index/name
 )
 (func $~lib/rt/shared/__alloc (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/rt/__memory_base
  local.get $0
  local.get $1
  call $~lib/bindings/asrt/alloc
  local.set $2
  local.get $2
 )
 (func $assembly/index/Person#constructor (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 3
   call $~lib/rt/shared/__alloc
   call $~lib/rt/shared/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
 )
 (func $~lib/rt/shared/visit (; 13 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/rt/__visit_members
 )
 (func $~lib/rt/shared/__release (; 14 ;) (type $FUNCSIG$vi) (param $0 i32)
  global.get $~lib/rt/__memory_base
  local.get $0
  global.get $~lib/rt/__table_base
  i32.const 1
  i32.add
  call $~lib/bindings/asrt/release
  drop
 )
 (func $../env/index/log<~lib/string/String> (; 15 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/shared/__retain
  drop
  i32.const 1
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  f64.convert_i32_u
  local.get $0
  f64.convert_i32_u
  call $../env/index/_log
  local.get $0
  call $~lib/rt/shared/__release
 )
 (func $../env/index/log<i32> (; 16 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 0
  if (result i32)
   i32.const 0
  else
   i32.const 0
  end
  f64.convert_i32_u
  local.get $0
  f64.convert_i32_u
  call $../env/index/_log
 )
 (func $assembly/index/main (; 17 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  call $assembly/index/Person#constructor
  local.set $0
  local.get $0
  local.tee $1
  global.get $~lib/rt/__memory_base
  i32.const 48
  i32.add
  local.tee $2
  local.get $1
  i32.load
  local.tee $1
  i32.ne
  if
   local.get $2
   call $~lib/rt/shared/__retain
   drop
   local.get $1
   call $~lib/rt/shared/__release
  end
  local.get $2
  i32.store
  local.get $0
  i32.const 22
  i32.store offset=4
  local.get $0
  call $assembly/index/caps
  global.get $assembly/index/name
  call $assembly/index/sayHello
  local.set $2
  local.get $2
  call $../env/index/log<~lib/string/String>
  local.get $0
  call $assembly/index/sayHello2
  local.set $1
  local.get $1
  call $../env/index/log<~lib/string/String>
  local.get $0
  call $assembly/index/increaseAge
  local.get $0
  i32.load offset=4
  call $../env/index/log<i32>
  local.get $0
  call $~lib/rt/shared/__release
  local.get $2
  call $~lib/rt/shared/__release
  local.get $1
  call $~lib/rt/shared/__release
 )
 (func $start (; 18 ;) (type $FUNCSIG$v)
  call $start:assembly/index
 )
 (func $~lib/rt/shared/__visit (; 19 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  global.get $~lib/rt/__memory_base
  local.get $0
  local.get $1
  global.get $~lib/rt/__table_base
  i32.const 1
  i32.add
  call $~lib/bindings/asrt/visit
 )
 (func $~lib/rt/__visit_members (; 20 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $switch$1$default
   block $switch$1$case$4
    block $switch$1$case$2
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$4 $switch$1$default
    end
    return
   end
   local.get $0
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
 (func $null (; 21 ;) (type $FUNCSIG$v)
 )
 ;; custom section "dylink", size 5
)
