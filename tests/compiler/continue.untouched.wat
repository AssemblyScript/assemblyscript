(module
 (type $i32_=>_none (func (param i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (export "memory" (memory $0))
 (export "testInherit" (func $continue/testInherit))
 (func $continue/testInherit (; 0 ;) (param $0 i32)
  (local $1 i32)
  block $break|0
   i32.const 0
   local.set $1
   loop $loop|0
    local.get $1
    i32.const 10
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $continue|0
     local.get $0
     if
      local.get $1
      i32.const 5
      i32.eq
      if
       br $continue|0
      end
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
   unreachable
  end
 )
)
