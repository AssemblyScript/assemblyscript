(module
 (type $0 (func))
 (type $1 (func (param i32)))
 (memory $0 0)
 (export "testAlwaysWrapped" (func $loop-wrap/testAlwaysWrapped))
 (export "testFirstWrapped" (func $loop-wrap/testFirstWrapped))
 (export "testSubsequentWrapped" (func $loop-wrap/testSubsequentWrapped))
 (export "memory" (memory $0))
 (func $loop-wrap/testAlwaysWrapped
  (local $0 i32)
  loop $do-loop|0
   local.get $0
   i32.const 10
   i32.ne
   if
    local.get $0
    i32.const 1
    i32.add
    i32.const 255
    i32.and
    local.tee $0
    br_if $do-loop|0
   end
  end
 )
 (func $loop-wrap/testFirstWrapped
  (local $0 i32)
  loop $do-loop|1
   local.get $0
   i32.const 255
   i32.and
   i32.const 10
   i32.ne
   if
    local.get $0
    i32.const 1
    i32.add
    local.tee $0
    i32.const 255
    i32.and
    br_if $do-loop|1
   end
  end
 )
 (func $loop-wrap/testSubsequentWrapped (param $0 i32)
  loop $do-loop|0
   local.get $0
   i32.const 255
   i32.and
   i32.const 10
   i32.ne
   if
    local.get $0
    i32.const 1
    i32.add
    i32.const 255
    i32.and
    local.tee $0
    br_if $do-loop|0
   end
  end
 )
)
