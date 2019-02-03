(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s")
 (data (i32.const 40) "\01\00\00\001")
 (table $0 2 anyfunc)
 (elem (i32.const 0) $builtins/test $start~anonymous|1)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $builtins/test))
 (start $start)
 (func $start~anonymous|1 (; 1 ;) (type $iiv) (param $0 i32) (param $1 i32)
  nop
 )
 (func $builtins/test (; 2 ;) (type $v)
  nop
 )
 (func $start (; 3 ;) (type $v)
  i32.const 0
  i32.const 8
  i32.const 16
  i32.const 0
  call $~lib/env/abort
  unreachable
 )
)
