(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (global $exports/Animal.CAT i32 (i32.const 0))
 (global $exports/Animal.DOG i32 (i32.const 1))
 (global $exports/animals.Animal.CAT i32 (i32.const 0))
 (global $exports/animals.Animal.DOG i32 (i32.const 1))
 (global $exports/Car.TIRES i32 (i32.const 4))
 (global $exports/vehicles.Car.TIRES i32 (i32.const 4))
 (global $exports/outer.inner.a i32 (i32.const 42))
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (global $export/c i32 (i32.const 3))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32776))
 (global $~lib/memory/__heap_base i32 (i32.const 32776))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "add" (func $exports/add))
 (export "subOpt" (func $exports/subOpt@varargs))
 (export "Animal.CAT" (global $exports/Animal.CAT))
 (export "Animal.DOG" (global $exports/Animal.DOG))
 (export "renamed_mul" (func $export/mul))
 (export "memory" (memory $0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (func $exports/add (param $a i32) (param $b i32) (result i32)
  local.get $a
  local.get $b
  i32.add
  return
 )
 (func $exports/subOpt (param $a i32) (param $b i32) (result i32)
  local.get $a
  local.get $b
  i32.sub
  return
 )
 (func $exports/subOpt@varargs (param $a i32) (param $b i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $b
  end
  local.get $a
  local.get $b
  call $exports/subOpt
 )
 (func $export/mul (param $a i32) (param $b i32) (result i32)
  local.get $a
  local.get $b
  i32.mul
  return
 )
 (func $~setArgumentsLength (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
)
