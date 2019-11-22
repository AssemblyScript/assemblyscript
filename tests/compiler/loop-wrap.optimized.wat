(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vi (func (param i32)))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "testAlwaysWrapped" (func $loop-wrap/testAlwaysWrapped))
 (export "testFirstWrapped" (func $loop-wrap/testFirstWrapped))
 (export "testSubsequentWrapped" (func $loop-wrap/testSubsequentWrapped))
 (func $loop-wrap/testAlwaysWrapped (; 0 ;) (type $FUNCSIG$v)
  (local $0 i32)
  loop $continue|0
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
    br_if $continue|0
   end
  end
 )
 (func $loop-wrap/testFirstWrapped (; 1 ;) (type $FUNCSIG$v)
  (local $0 i32)
  loop $continue|0
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
    br_if $continue|0
   end
  end
 )
 (func $loop-wrap/testSubsequentWrapped (; 2 ;) (type $FUNCSIG$vi) (param $0 i32)
  loop $continue|0
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
    br_if $continue|0
   end
  end
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
  nop
 )
)
