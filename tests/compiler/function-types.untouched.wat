(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i64_i64_=>_i64 (func (param i64 i64) (result i64)))
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 2)
 (data (i32.const 12) "\08\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 44) "\"\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\"\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00t\00y\00p\00e\00s\00.\00t\00s\00")
 (data (i32.const 108) "\08\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 140) "\08\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\08\00\00\00\03\00\00\00\00\00\00\00")
 (data (i32.const 172) "\08\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\04\00\00\00\00\00\00\00")
 (data (i32.const 204) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00s\00t\00a\00c\00k\00 \00o\00v\00e\00r\00f\00l\00o\00w\00")
 (data (i32.const 252) "\14\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00")
 (table $0 5 funcref)
 (elem (i32.const 1) $function-types/makeAdder<i32>~anonymous|0 $function-types/makeAdder<i64>~anonymous|0 $function-types/makeAdder<f64>~anonymous|0 $function-types/addI32)
 (global $function-types/i32Adder (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $function-types/i64Adder (mut i32) (i32.const 0))
 (global $~lib/ASC_FEATURE_BULK_MEMORY i32 (i32.const 0))
 (global $~lib/rt/__stack_base i32 (i32.const 292))
 (global $~lib/rt/__stack_size i32 (i32.const 65536))
 (global $~lib/rt/__stackptr (mut i32) (i32.const 292))
 (export "memory" (memory $0))
 (start $~start)
 (func $function-types/makeAdder<i32>~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $function-types/makeAdder<i32> (result i32)
  i32.const 32
 )
 (func $function-types/makeAdder<i64>~anonymous|0 (param $0 i64) (param $1 i64) (result i64)
  local.get $0
  local.get $1
  i64.add
 )
 (func $function-types/makeAdder<i64> (result i32)
  i32.const 128
 )
 (func $function-types/makeAdder<f64>~anonymous|0 (param $0 f64) (param $1 f64) (result f64)
  local.get $0
  local.get $1
  f64.add
 )
 (func $function-types/makeAdder<f64> (result i32)
  i32.const 160
 )
 (func $~lib/rt/__stackify (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.store
  local.get $0
 )
 (func $function-types/doAddWithFn<i32> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $3
  local.get $2
  local.get $3
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $2
  local.get $0
  local.get $1
  i32.const 2
  global.set $~argumentsLength
  local.get $2
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  local.set $4
  local.get $3
  call $~lib/rt/__stack_restore
  local.get $4
 )
 (func $function-types/doAdd<i32> (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 2
  global.set $~argumentsLength
  call $function-types/makeAdder<i32>
  i32.load
  call_indirect (type $i32_i32_=>_i32)
 )
 (func $function-types/addI32 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $function-types/makeAndAdd<i32> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $3
  local.get $2
  local.get $3
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $2
  local.get $0
  local.get $1
  i32.const 2
  global.set $~argumentsLength
  local.get $2
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  local.set $4
  local.get $3
  call $~lib/rt/__stack_restore
  local.get $4
 )
 (func $function-types/makeAndAdd<i32>@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $3
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
   local.get $3
   i32.const 0
   i32.add
   call $~lib/rt/__stackify
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $function-types/makeAndAdd<i32>
  local.set $4
  local.get $3
  call $~lib/rt/__stack_restore
  local.get $4
 )
 (func $start:function-types
  call $function-types/makeAdder<i32>
  global.set $function-types/i32Adder
  i32.const 1
  i32.const 2
  i32.const 2
  global.set $~argumentsLength
  global.get $function-types/i32Adder
  i32.load
  call_indirect (type $i32_i32_=>_i32)
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
  i32.load
  call_indirect (type $i64_i64_=>_i64)
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
  i32.load
  call_indirect (type $f64_f64_=>_f64)
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
 )
 (func $~start
  call $start:function-types
 )
 (func $~lib/rt/__stack_prepare (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/__stackptr
  local.set $1
  local.get $1
  local.get $0
  i32.add
  local.set $2
  local.get $2
  global.get $~lib/rt/__stack_base
  global.get $~lib/rt/__stack_size
  i32.add
  i32.le_u
  i32.eqz
  if
   i32.const 224
   i32.const 272
   i32.const 118
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.set $~lib/rt/__stackptr
  i32.const 0
  drop
  loop $while-continue|0
   local.get $2
   i32.const 4
   i32.sub
   local.tee $2
   local.get $1
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $2
    i32.const 0
    i32.store
    br $while-continue|0
   end
  end
  local.get $1
 )
 (func $~lib/rt/__stack_restore (param $0 i32)
  local.get $0
  global.set $~lib/rt/__stackptr
 )
)
