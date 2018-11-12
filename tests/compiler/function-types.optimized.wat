(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $III (func (param i64 i64) (result i64)))
 (type $FFF (func (param f64 f64) (result f64)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\11\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00t\00y\00p\00e\00s\00.\00t\00s")
 (table $0 5 anyfunc)
 (elem (i32.const 0) $null $function-types/makeAdder<i32>~anonymous|1 $function-types/makeAdder<i64>~anonymous|2 $function-types/makeAdder<f64>~anonymous|3 $function-types/makeAdder<i32>~anonymous|1)
 (global $function-types/i32Adder (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $function-types/i64Adder (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $function-types/makeAdder<i32>~anonymous|1 (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $function-types/makeAdder<i64>~anonymous|2 (; 2 ;) (type $III) (param $0 i64) (param $1 i64) (result i64)
  get_local $0
  get_local $1
  i64.add
 )
 (func $function-types/makeAdder<f64>~anonymous|3 (; 3 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  get_local $0
  get_local $1
  f64.add
 )
 (func $start (; 4 ;) (type $v)
  (local $0 i32)
  i32.const 1
  set_global $function-types/i32Adder
  i32.const 2
  set_global $~argc
  i32.const 1
  i32.const 2
  get_global $function-types/i32Adder
  call_indirect (type $iii)
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 11
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  set_global $function-types/i64Adder
  i32.const 2
  set_global $~argc
  i64.const 10
  i64.const 20
  get_global $function-types/i64Adder
  call_indirect (type $III)
  i64.const 30
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 15
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  set_global $~argc
  f64.const 1.5
  f64.const 2.5
  i32.const 3
  call_indirect (type $FFF)
  f64.const 4
  f64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 17
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  set_global $~argc
  i32.const 2
  i32.const 3
  get_global $function-types/i32Adder
  call_indirect (type $iii)
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 23
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  set_global $~argc
  i32.const 3
  i32.const 4
  i32.const 1
  call_indirect (type $iii)
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 29
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  set_global $~argc
  i32.const 4
  i32.const 5
  i32.const 4
  call_indirect (type $iii)
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 35
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  set_global $~argc
  block $1of1
   block $0of1
    block $outOfRange
     get_global $~argc
     i32.const 2
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 1
   set_local $0
  end
  i32.const 2
  set_global $~argc
  i32.const 1
  i32.const 2
  get_local $0
  call_indirect (type $iii)
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 41
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  set_global $~argc
  i32.const 1
  i32.const 2
  i32.const 1
  call_indirect (type $iii)
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 42
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 5 ;) (type $v)
  nop
 )
)
