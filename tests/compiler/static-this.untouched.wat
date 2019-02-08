(module
 (type $i (func (result i32)))
 (type $iiii_ (func (param i32 i32 i32 i32)))
 (type $_ (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0e\00\00\00s\00t\00a\00t\00i\00c\00-\00t\00h\00i\00s\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $static-this/Foo.bar (mut i32) (i32.const 42))
 (global $HEAP_BASE i32 (i32.const 40))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $static-this/Foo.getBar (; 1 ;) (type $i) (result i32)
  global.get $static-this/Foo.bar
 )
 (func $start (; 2 ;) (type $_)
  call $static-this/Foo.getBar
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 8
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 3 ;) (type $_)
 )
)
