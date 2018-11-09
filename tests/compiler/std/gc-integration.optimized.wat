(module
 (type $iv (func (param i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\15\00\00\00s\00t\00d\00/\00g\00c\00-\00i\00n\00t\00e\00g\00r\00a\00t\00i\00o\00n\00.\00t\00s")
 (table $0 2 anyfunc)
 (elem (i32.const 0) $null $start~anonymous|1)
 (global $std/gc-integration/B.d (mut i32) (i32.const 16))
 (global $std/gc-integration/a_ref (mut i32) (i32.const 24))
 (global $std/gc-integration/b_ref (mut i32) (i32.const 32))
 (global $std/gc-integration/i (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start~anonymous|1 (; 1 ;) (type $iv) (param $0 i32)
  get_global $std/gc-integration/i
  i32.const 1
  i32.add
  set_global $std/gc-integration/i
  get_local $0
  get_global $std/gc-integration/i
  i32.const 3
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 18
   i32.const 37
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 2 ;) (type $v)
  i32.const 8
  i32.const 1
  call_indirect (type $iv)
  get_global $std/gc-integration/B.d
  i32.const 1
  call_indirect (type $iv)
  get_global $std/gc-integration/a_ref
  i32.const 1
  call_indirect (type $iv)
  get_global $std/gc-integration/b_ref
  i32.const 1
  call_indirect (type $iv)
  get_global $std/gc-integration/i
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 19
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 3 ;) (type $v)
  nop
 )
)
