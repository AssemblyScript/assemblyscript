(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i64_i64_=>_i64 (func (param i64 i64) (result i64)))
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00t\00y\00p\00e\00s\00.\00t\00s\00")
 (table $0 5 funcref)
 (elem (i32.const 1) $function-types/makeAdder<i32>~anonymous|0 $function-types/makeAdder<i64>~anonymous|0 $function-types/makeAdder<f64>~anonymous|0 $function-types/addI32)
 (global $function-types/i32Adder (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $function-types/i64Adder (mut i32) (i32.const 0))
 (export "__argumentsLength" (global $~argumentsLength))
 (export "memory" (memory $0))
 (start $~start)
 (func $function-types/makeAdder<i32>~anonymous|0 (; 1 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $function-types/makeAdder<i32> (; 2 ;) (result i32)
  i32.const 1
 )
 (func $function-types/makeAdder<i64>~anonymous|0 (; 3 ;) (param $0 i64) (param $1 i64) (result i64)
  local.get $0
  local.get $1
  i64.add
 )
 (func $function-types/makeAdder<i64> (; 4 ;) (result i32)
  i32.const 2
 )
 (func $function-types/makeAdder<f64>~anonymous|0 (; 5 ;) (param $0 f64) (param $1 f64) (result f64)
  local.get $0
  local.get $1
  f64.add
 )
 (func $function-types/makeAdder<f64> (; 6 ;) (result i32)
  i32.const 3
 )
 (func $function-types/doAddWithFn<i32> (; 7 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  i32.const 2
  global.set $~argumentsLength
  local.get $0
  local.get $1
  local.get $2
  call_indirect (type $i32_i32_=>_i32)
 )
 (func $function-types/doAdd<i32> (; 8 ;) (param $0 i32) (param $1 i32) (result i32)
  i32.const 2
  global.set $~argumentsLength
  local.get $0
  local.get $1
  call $function-types/makeAdder<i32>
  call_indirect (type $i32_i32_=>_i32)
 )
 (func $function-types/addI32 (; 9 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $function-types/makeAndAdd<i32> (; 10 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  i32.const 2
  global.set $~argumentsLength
  local.get $0
  local.get $1
  local.get $2
  call_indirect (type $i32_i32_=>_i32)
 )
 (func $function-types/makeAndAdd<i32>|trampoline (; 11 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 2
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   call $function-types/makeAdder<i32>
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $function-types/makeAndAdd<i32>
 )
 (func $start:function-types (; 12 ;)
  call $function-types/makeAdder<i32>
  global.set $function-types/i32Adder
  i32.const 2
  global.set $~argumentsLength
  i32.const 1
  i32.const 2
  global.get $function-types/i32Adder
  call_indirect (type $i32_i32_=>_i32)
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 11
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  call $function-types/makeAdder<i64>
  global.set $function-types/i64Adder
  i32.const 2
  global.set $~argumentsLength
  i64.const 10
  i64.const 20
  global.get $function-types/i64Adder
  call_indirect (type $i64_i64_=>_i64)
  i64.const 30
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 15
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  global.set $~argumentsLength
  f64.const 1.5
  f64.const 2.5
  call $function-types/makeAdder<f64>
  call_indirect (type $f64_f64_=>_f64)
  f64.const 4
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 17
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 3
  global.get $function-types/i32Adder
  call $function-types/doAddWithFn<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 23
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  i32.const 4
  call $function-types/doAdd<i32>
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 29
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 5
  i32.const 4
  call $function-types/doAddWithFn<i32>
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 35
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  global.set $~argumentsLength
  i32.const 1
  i32.const 2
  i32.const 0
  call $function-types/makeAndAdd<i32>|trampoline
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 41
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  call $function-types/makeAdder<i32>
  call $function-types/makeAndAdd<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 42
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start (; 13 ;)
  call $start:function-types
 )
)
