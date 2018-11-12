(module
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00g\00e\00t\00t\00e\00r\00-\00s\00e\00t\00t\00e\00r\00.\00t\00s\00")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $getter-setter/Foo._bar (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 44))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $getter-setter/Foo.get:bar (; 1 ;) (type $i) (result i32)
  get_global $getter-setter/Foo._bar
 )
 (func $getter-setter/Foo.set:bar (; 2 ;) (type $iv) (param $0 i32)
  get_local $0
  set_global $getter-setter/Foo._bar
 )
 (func $start (; 3 ;) (type $v)
  call $getter-setter/Foo.get:bar
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 13
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  call $getter-setter/Foo.set:bar
  call $getter-setter/Foo.get:bar
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 15
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 2
   call $getter-setter/Foo.set:bar
   call $getter-setter/Foo.get:bar
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 16
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 4 ;) (type $v)
 )
)
