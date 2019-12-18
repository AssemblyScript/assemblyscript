(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i64_i64_=>_i64 (func (param i64 i64) (result i64)))
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00t\00y\00p\00e\00s\00.\00t\00s")
 (table $0 5 funcref)
 (elem (i32.const 1) $function-types/makeAdder<i32>~anonymous|0 $function-types/makeAdder<i64>~anonymous|0 $function-types/makeAdder<f64>~anonymous|0 $function-types/makeAdder<i32>~anonymous|0)
 (global $function-types/i32Adder (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $function-types/i64Adder (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $function-types/makeAdder<i32>~anonymous|0 (; 1 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $function-types/makeAdder<i64>~anonymous|0 (; 2 ;) (param $0 i64) (param $1 i64) (result i64)
  local.get $0
  local.get $1
  i64.add
 )
 (func $function-types/makeAdder<f64>~anonymous|0 (; 3 ;) (param $0 f64) (param $1 f64) (result f64)
  local.get $0
  local.get $1
  f64.add
 )
 (func $function-types/doAddWithFn<i32> (; 4 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  i32.const 2
  global.set $~lib/argc
  local.get $0
  local.get $1
  local.get $2
  call_indirect (type $i32_i32_=>_i32)
 )
 (func $start:function-types (; 5 ;)
  i32.const 1
  global.set $function-types/i32Adder
  i32.const 2
  global.set $~lib/argc
  i32.const 1
  i32.const 2
  call $function-types/makeAdder<i32>~anonymous|0
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 11
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  global.set $function-types/i64Adder
  i32.const 2
  global.set $~lib/argc
  i64.const 10
  i64.const 20
  call $function-types/makeAdder<i64>~anonymous|0
  i64.const 30
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 15
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  global.set $~lib/argc
  f64.const 1.5
  f64.const 2.5
  call $function-types/makeAdder<f64>~anonymous|0
  f64.const 4
  f64.ne
  if
   i32.const 0
   i32.const 24
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
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 23
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  global.set $~lib/argc
  i32.const 3
  i32.const 4
  call $function-types/makeAdder<i32>~anonymous|0
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 24
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
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 35
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  global.set $~lib/argc
  i32.const 1
  i32.const 2
  i32.const 1
  call $function-types/doAddWithFn<i32>
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 41
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 1
  call $function-types/doAddWithFn<i32>
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 6 ;)
  call $start:function-types
 )
)
