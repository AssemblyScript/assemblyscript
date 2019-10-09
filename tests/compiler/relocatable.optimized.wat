(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (import "env" "memory" (memory $0 1))
 (data (global.get $__memory_base) "\00\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\00\18\00\00\00\18\00\00\00\04\00\00\00\01\00\00\00\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00r\00e\00l\00o\00c\00a\00t\00a\00b\00l\00e\00")
 (import "env" "memory_base" (global $__memory_base i32))
 (import "env" "log" (func $relocatable/log (param i32 i32)))
 (global $__memory_size i32 (i32.const 112))
 (global $__table_size i32 (i32.const 1))
 (export "memory" (memory $0))
 (export "main" (func $relocatable/main))
 (export "__memory_size" (global $__memory_size))
 (export "__table_size" (global $__table_size))
 (func $relocatable/main (; 1 ;) (type $FUNCSIG$v)
  i32.const 80
  global.get $__memory_base
  i32.const -64
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
  call $relocatable/log
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  nop
 )
)
