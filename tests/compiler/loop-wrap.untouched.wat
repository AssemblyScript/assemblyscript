(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (export "memory" (memory $0))
 (export "testAlwaysWrapped" (func $loop-wrap/testAlwaysWrapped))
 (export "testFirstWrapped" (func $loop-wrap/testFirstWrapped))
 (export "testSubsequentWrapped" (func $loop-wrap/testSubsequentWrapped))
 (func $loop-wrap/testAlwaysWrapped (; 0 ;)
  (local $0 i32)
  i32.const 0
  local.set $0
  block $break|0
   loop $continue|0
    local.get $0
    i32.const 10
    i32.eq
    if
     br $break|0
    end
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
 (func $loop-wrap/testFirstWrapped (; 1 ;)
  (local $0 i32)
  i32.const 0
  local.set $0
  block $break|0
   loop $continue|0
    local.get $0
    i32.const 255
    i32.and
    i32.const 10
    i32.eq
    if
     br $break|0
    end
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
 (func $loop-wrap/testSubsequentWrapped (; 2 ;) (param $0 i32)
  (local $1 i32)
  local.get $0
  local.set $1
  block $break|0
   loop $continue|0
    local.get $1
    i32.const 255
    i32.and
    i32.const 10
    i32.eq
    if
     br $break|0
    end
    local.get $1
    i32.const 1
    i32.add
    i32.const 255
    i32.and
    local.tee $1
    br_if $continue|0
   end
  end
 )
)
