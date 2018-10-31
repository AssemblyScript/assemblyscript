(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (memory $0 1 65535)
 (data (i32.const 8) "\0e\00\00\00m\00a\00n\00y\00-\00l\00o\00c\00a\00l\00s\00.\00t\00s")
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "testI32" (func $many-locals/testI32))
 (export "testI8" (func $many-locals/testI8))
 (start $start)
 (func $many-locals/testI32 (; 1 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
 )
 (func $many-locals/testI8 (; 2 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
 )
 (func $start (; 3 ;) (; has Stack IR ;) (type $v)
  i32.const 42
  call $many-locals/testI32
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 133
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 42
  call $many-locals/testI8
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 267
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 4 ;) (; has Stack IR ;) (type $v)
  nop
 )
)
