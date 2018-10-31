(module
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (memory $0 1 65535)
 (data (i32.const 8) "\06\00\00\00a\00b\00i\00.\00t\00s")
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $abi/condition (mut i32) (i32.const 0))
 (global $abi/y (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "exported" (func $abi/exported))
 (export "exportedExported" (func $abi/exportedExported))
 (export "exportedInternal" (func $abi/exportedInternal))
 (start $start)
 (func $abi/exported (; 1 ;) (; has Stack IR ;) (type $i) (result i32)
  i32.const -128
 )
 (func $abi/exportedExported (; 2 ;) (; has Stack IR ;) (type $i) (result i32)
  call $abi/exported
 )
 (func $abi/internal (; 3 ;) (; has Stack IR ;) (type $i) (result i32)
  i32.const 128
 )
 (func $abi/exportedInternal (; 4 ;) (; has Stack IR ;) (type $i) (result i32)
  call $abi/internal
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
 )
 (func $start (; 5 ;) (; has Stack IR ;) (type $v)
  call $abi/internal
  drop
  i32.const 1
  set_global $abi/condition
  i32.const 0
  set_global $abi/y
  get_global $abi/y
  if
   i32.const 0
   i32.const 8
   i32.const 65
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 6 ;) (; has Stack IR ;) (type $v)
  nop
 )
)
