(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00g\00e\00t\00t\00e\00r\00-\00s\00e\00t\00t\00e\00r\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $getter-setter/Foo._bar (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 44))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $getter-setter/Foo.bar.get:bar (; 1 ;) (type $FUNCSIG$i) (result i32)
  global.get $getter-setter/Foo._bar
 )
 (func $getter-setter/Foo.bar.set:bar (; 2 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.set $getter-setter/Foo._bar
 )
 (func $start:getter-setter (; 3 ;) (type $FUNCSIG$v)
  call $getter-setter/Foo.bar.get:bar
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
  call $getter-setter/Foo.bar.set:bar
  call $getter-setter/Foo.bar.get:bar
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
   call $getter-setter/Foo.bar.set:bar
   call $getter-setter/Foo.bar.get:bar
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
 (func $start (; 4 ;) (type $FUNCSIG$v)
  call $start:getter-setter
 )
 (func $null (; 5 ;) (type $FUNCSIG$v)
 )
)
