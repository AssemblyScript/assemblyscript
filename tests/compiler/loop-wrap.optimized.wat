(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "testAlwaysWrapped" (func $loop-wrap/testAlwaysWrapped))
 (export "testFirstWrapped" (func $loop-wrap/testFirstWrapped))
 (export "testSubsequentWrapped" (func $loop-wrap/testSubsequentWrapped))
 (func $loop-wrap/testAlwaysWrapped (; 0 ;)
  (local $0 i32)
  loop $do-continue|0
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
    br_if $do-continue|0
   end
  end
 )
 (func $loop-wrap/testFirstWrapped (; 1 ;)
  (local $0 i32)
  loop $while-continue|1
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   i32.const 255
   i32.and
   i32.const 0
   local.get $0
   i32.const 255
   i32.and
   i32.const 10
   i32.ne
   select
   br_if $while-continue|1
  end
 )
 (func $loop-wrap/testSubsequentWrapped (; 2 ;) (param $0 i32)
  loop $do-continue|0
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
    br_if $do-continue|0
   end
  end
 )
)
