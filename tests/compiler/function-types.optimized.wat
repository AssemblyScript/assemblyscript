(module
 (type $i (func (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $III (func (param i64 i64) (result i64)))
 (type $FFF (func (param f64 f64) (result f64)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $v (func))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $function-types/i32Adder (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $function-types/i64Adder (mut i32) (i32.const 0))
 (table 5 5 anyfunc)
 (elem (i32.const 0) $null $function-types/makeAdder<i32>~anonymous|1 $function-types/makeAdder<i64>~anonymous|2 $function-types/makeAdder<f64>~anonymous|3 $function-types/makeAdder<i32>~anonymous|1)
 (memory $0 1)
 (data (i32.const 8) "\11\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00t\00y\00p\00e\00s\00.\00t\00s")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $function-types/makeAdder<i32>~anonymous|1 (; 1 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $function-types/makeAdder<i32> (; 2 ;) (; has Stack IR ;) (type $i) (result i32)
  (i32.const 1)
 )
 (func $function-types/makeAdder<i64>~anonymous|2 (; 3 ;) (; has Stack IR ;) (type $III) (param $0 i64) (param $1 i64) (result i64)
  (i64.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $function-types/makeAdder<i64> (; 4 ;) (; has Stack IR ;) (type $i) (result i32)
  (i32.const 2)
 )
 (func $function-types/makeAdder<f64>~anonymous|3 (; 5 ;) (; has Stack IR ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (f64.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $function-types/makeAdder<f64> (; 6 ;) (; has Stack IR ;) (type $i) (result i32)
  (i32.const 3)
 )
 (func $function-types/doAddWithFn<i32> (; 7 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (set_global $~argc
   (i32.const 2)
  )
  (call_indirect (type $iii)
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $function-types/doAdd<i32> (; 8 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (set_global $~argc
   (i32.const 2)
  )
  (call_indirect (type $iii)
   (i32.const 3)
   (i32.const 4)
   (call $function-types/makeAdder<i32>)
  )
 )
 (func $function-types/makeAndAdd<i32>|trampoline (; 9 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (get_global $~argc)
       (i32.const 2)
      )
     )
    )
    (unreachable)
   )
   (set_local $0
    (call $function-types/makeAdder<i32>)
   )
  )
  (call $function-types/doAddWithFn<i32>
   (i32.const 1)
   (i32.const 2)
   (get_local $0)
  )
 )
 (func $start (; 10 ;) (; has Stack IR ;) (type $v)
  (set_global $function-types/i32Adder
   (call $function-types/makeAdder<i32>)
  )
  (set_global $~argc
   (i32.const 2)
  )
  (if
   (i32.ne
    (call_indirect (type $iii)
     (i32.const 1)
     (i32.const 2)
     (get_global $function-types/i32Adder)
    )
    (i32.const 3)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 11)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $function-types/i64Adder
   (call $function-types/makeAdder<i64>)
  )
  (set_global $~argc
   (i32.const 2)
  )
  (if
   (i64.ne
    (call_indirect (type $III)
     (i64.const 10)
     (i64.const 20)
     (get_global $function-types/i64Adder)
    )
    (i64.const 30)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 15)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 2)
  )
  (if
   (f64.ne
    (call_indirect (type $FFF)
     (f64.const 1.5)
     (f64.const 2.5)
     (call $function-types/makeAdder<f64>)
    )
    (f64.const 4)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 17)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $function-types/doAddWithFn<i32>
     (i32.const 2)
     (i32.const 3)
     (get_global $function-types/i32Adder)
    )
    (i32.const 5)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 23)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $function-types/doAdd<i32>)
    (i32.const 7)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 29)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $function-types/doAddWithFn<i32>
     (i32.const 4)
     (i32.const 5)
     (i32.const 4)
    )
    (i32.const 9)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 35)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 2)
  )
  (if
   (i32.ne
    (call $function-types/makeAndAdd<i32>|trampoline)
    (i32.const 3)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 41)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $function-types/doAddWithFn<i32>
     (i32.const 1)
     (i32.const 2)
     (call $function-types/makeAdder<i32>)
    )
    (i32.const 3)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 42)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
 (func $null (; 11 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
