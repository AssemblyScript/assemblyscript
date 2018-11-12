(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\16\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00e\00x\00p\00r\00e\00s\00s\00i\00o\00n\00.\00t\00s\00")
 (table $0 5 anyfunc)
 (elem (i32.const 0) $null $start~anonymous|1 $start~anonymous|2 $start~someName|3 $start~anonymous|4)
 (global $function-expression/f1 (mut i32) (i32.const 1))
 (global $~argc (mut i32) (i32.const 0))
 (global $function-expression/f2 (mut i32) (i32.const 2))
 (global $function-expression/f3 (mut i32) (i32.const 3))
 (global $function-expression/f4 (mut i32) (i32.const 4))
 (global $HEAP_BASE i32 (i32.const 56))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start~anonymous|1 (; 1 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
 )
 (func $start~anonymous|2 (; 2 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
 )
 (func $start~someName|3 (; 3 ;) (type $v)
  nop
 )
 (func $start~anonymous|4 (; 4 ;) (type $i) (result i32)
  i32.const 1
 )
 (func $start (; 5 ;) (type $v)
  block (result i32)
   i32.const 1
   set_global $~argc
   i32.const 1
   get_global $function-expression/f1
   call_indirect (type $ii)
  end
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 4
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   set_global $~argc
   i32.const 2
   get_global $function-expression/f2
   call_indirect (type $ii)
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 9
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block
   i32.const 0
   set_global $~argc
   get_global $function-expression/f3
   call_indirect (type $v)
  end
  block (result i32)
   i32.const 0
   set_global $~argc
   get_global $function-expression/f4
   call_indirect (type $i)
  end
  i32.const 1
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
 (func $null (; 6 ;) (type $v)
 )
)
