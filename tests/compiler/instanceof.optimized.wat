(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00i\00n\00s\00t\00a\00n\00c\00e\00o\00f\00.\00t\00s")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $instanceof/an (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $instanceof/isI32<i32> (; 1 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
 )
 (func $instanceof/isI32<f64> (; 2 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
 )
 (func $start (; 3 ;) (type $v)
  call $instanceof/isI32<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 38
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $instanceof/isI32<f64>
  if
   i32.const 0
   i32.const 8
   i32.const 39
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $instanceof/isI32<f64>
  if
   i32.const 0
   i32.const 8
   i32.const 40
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $instanceof/an
  if
   i32.const 0
   i32.const 8
   i32.const 43
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  set_global $instanceof/an
  get_global $instanceof/an
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 46
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 4 ;) (type $v)
  nop
 )
)
