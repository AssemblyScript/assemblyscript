(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (import "env" "memory" (memory $0 1))
 (data (global.get $__memory_base) "\00\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\00\18\00\00\00\18\00\00\00\04\00\00\00\01\00\00\00\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00r\00e\00l\00o\00c\00a\00t\00a\00b\00l\00e\00")
 (import "env" "memory_base" (global $__memory_base i32))
 (import "env" "table_base" (global $__table_base i32))
 (import "env" "log" (func $relocatable/log (param i32 i32)))
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $relocatable/someStaticStuff i32 (i32.const 48))
 (global $__memory_size i32 (i32.const 112))
 (global $__table_size i32 (i32.const 1))
 (export "memory" (memory $0))
 (export "main" (func $relocatable/main))
 (export "__memory_size" (global $__memory_size))
 (export "__table_size" (global $__table_size))
 (start $start)
 (func $start:relocatable (; 1 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  global.get $relocatable/someStaticStuff
  drop
 )
 (func $~lib/rt/stub/__retain (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/string/String#get:length (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  global.get $__memory_base
  local.get $0
  i32.const 16
  i32.sub
  i32.add
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/rt/stub/__release (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $relocatable/main (; 5 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 80
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  local.get $0
  call $~lib/string/String#get:length
  call $relocatable/log
  local.get $0
  call $~lib/rt/stub/__release
 )
 (func $start (; 6 ;) (type $FUNCSIG$v)
  call $start:relocatable
 )
 (func $null (; 7 ;) (type $FUNCSIG$v)
 )
)
