(module
 (type $FUNCSIG$v (func))
 (memory $0 1)
 (data (i32.const 8) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00b\00o\00o\00l\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func $start:bool (; 0 ;) (type $FUNCSIG$v)
  nop
 )
 (func $start (; 1 ;) (type $FUNCSIG$v)
  call $start:bool
 )
 (func $null (; 2 ;) (type $FUNCSIG$v)
  nop
 )
)
