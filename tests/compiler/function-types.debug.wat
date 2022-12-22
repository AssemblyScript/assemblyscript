(module
 (type $i32_i32_=>_i32 (func_subtype (param i32 i32) (result i32) func))
 (type $none_=>_i32 (func_subtype (result i32) func))
 (type $i32_i32_i32_=>_i32 (func_subtype (param i32 i32 i32) (result i32) func))
 (type $none_=>_none (func_subtype func))
 (type $i64_i64_=>_i64 (func_subtype (param i64 i64) (result i64) func))
 (type $f64_f64_=>_f64 (func_subtype (param f64 f64) (result f64) func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $function-types/i32Adder (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $function-types/i64Adder (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 204))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32972))
 (global $~lib/memory/__heap_base i32 (i32.const 32972))
 (memory $0 1)
 (data (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 44) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00t\00y\00p\00e\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 108) "\1c\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 140) "\1c\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\08\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 172) "\1c\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 5 5 funcref)
 (elem $0 (i32.const 1) $function-types/makeAdder<i32>~anonymous|0 $function-types/makeAdder<i64>~anonymous|0 $function-types/makeAdder<f64>~anonymous|0 $function-types/addI32)
 (export "memory" (memory $0))
 (start $~start)
 (func $function-types/makeAdder<i32>~anonymous|0 (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  local.get $a
  local.get $b
  i32.add
  return
 )
 (func $function-types/makeAdder<i32> (type $none_=>_i32) (result i32)
  i32.const 32
  return
 )
 (func $function-types/makeAdder<i64>~anonymous|0 (type $i64_i64_=>_i64) (param $a i64) (param $b i64) (result i64)
  local.get $a
  local.get $b
  i64.add
  return
 )
 (func $function-types/makeAdder<i64> (type $none_=>_i32) (result i32)
  i32.const 128
  return
 )
 (func $function-types/makeAdder<f64>~anonymous|0 (type $f64_f64_=>_f64) (param $a f64) (param $b f64) (result f64)
  local.get $a
  local.get $b
  f64.add
  return
 )
 (func $function-types/makeAdder<f64> (type $none_=>_i32) (result i32)
  i32.const 160
  return
 )
 (func $function-types/doAddWithFn<i32> (type $i32_i32_i32_=>_i32) (param $a i32) (param $b i32) (param $fn i32) (result i32)
  local.get $a
  local.get $b
  i32.const 2
  global.set $~argumentsLength
  local.get $fn
  i32.load $0
  call_indirect $0 (type $i32_i32_=>_i32)
  return
 )
 (func $function-types/doAdd<i32> (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  local.get $a
  local.get $b
  i32.const 2
  global.set $~argumentsLength
  call $function-types/makeAdder<i32>
  i32.load $0
  call_indirect $0 (type $i32_i32_=>_i32)
  return
 )
 (func $function-types/addI32 (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  local.get $a
  local.get $b
  i32.add
  return
 )
 (func $function-types/makeAndAdd<i32> (type $i32_i32_i32_=>_i32) (param $a i32) (param $b i32) (param $adder i32) (result i32)
  local.get $a
  local.get $b
  i32.const 2
  global.set $~argumentsLength
  local.get $adder
  i32.load $0
  call_indirect $0 (type $i32_i32_=>_i32)
  return
 )
 (func $~start (type $none_=>_none)
  call $start:function-types
 )
 (func $~stack_check (type $none_=>_none)
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 32992
   i32.const 33040
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $function-types/makeAndAdd<i32>@varargs (type $i32_i32_i32_=>_i32) (param $a i32) (param $b i32) (param $adder i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
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
   global.get $~lib/memory/__stack_pointer
   call $function-types/makeAdder<i32>
   local.tee $adder
   i32.store $0
  end
  local.get $a
  local.get $b
  local.get $adder
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $function-types/makeAndAdd<i32>
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $start:function-types (type $none_=>_none)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  call $function-types/makeAdder<i32>
  global.set $function-types/i32Adder
  i32.const 1
  i32.const 2
  i32.const 2
  global.set $~argumentsLength
  global.get $function-types/i32Adder
  i32.load $0
  call_indirect $0 (type $i32_i32_=>_i32)
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 11
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $function-types/makeAdder<i64>
  global.set $function-types/i64Adder
  i64.const 10
  i64.const 20
  i32.const 2
  global.set $~argumentsLength
  global.get $function-types/i64Adder
  i32.load $0
  call_indirect $0 (type $i64_i64_=>_i64)
  i64.const 30
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 15
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.5
  f64.const 2.5
  i32.const 2
  global.set $~argumentsLength
  call $function-types/makeAdder<f64>
  i32.load $0
  call_indirect $0 (type $f64_f64_=>_f64)
  f64.const 4
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 17
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 3
  global.get $function-types/i32Adder
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $function-types/doAddWithFn<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 23
   i32.const 1
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
   i32.const 64
   i32.const 29
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 5
  i32.const 192
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $function-types/doAddWithFn<i32>
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 35
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  i32.const 2
  global.set $~argumentsLength
  i32.const 0
  call $function-types/makeAndAdd<i32>@varargs
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  call $function-types/makeAdder<i32>
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $function-types/makeAndAdd<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 64
   i32.const 42
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
