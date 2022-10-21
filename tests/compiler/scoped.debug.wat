(module
 (type $none_=>_none (func_subtype func))
 (type $i32_=>_none (func_subtype (param i32) func))
 (global $scoped/aGlobal (mut i32) (i32.const 1))
 (global $scoped/aConstant i32 (i32.const 3))
 (global $scoped/aStartFunctionLocal (mut i32) (i32.const 2))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $scoped/fn (type $i32_=>_none) (param $c i32)
  (local $a i32)
  (local $b i32)
  i32.const 0
  local.set $a
  local.get $c
  local.set $b
 )
 (func $start:scoped (type $none_=>_none)
  (local $anotherStartFunctionLocal i32)
  (local $var$1 i32)
  (local $aGlobal i32)
  (local $var$3 i32)
  (local $aConstant i64)
  (local $aConstant_0 f32)
  i32.const 0
  local.set $anotherStartFunctionLocal
  loop $for-loop|0
   local.get $anotherStartFunctionLocal
   i32.const 1
   i32.lt_s
   local.set $var$1
   local.get $var$1
   if
    nop
    local.get $anotherStartFunctionLocal
    i32.const 1
    i32.add
    local.set $anotherStartFunctionLocal
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $aGlobal
  loop $for-loop|1
   local.get $aGlobal
   i32.const 1
   i32.lt_s
   local.set $var$3
   local.get $var$3
   if
    local.get $aGlobal
    drop
    local.get $aGlobal
    i32.const 1
    i32.add
    local.set $aGlobal
    br $for-loop|1
   end
  end
  i64.const 5
  local.set $aConstant
  f32.const 10
  local.set $aConstant_0
  i32.const 42
  call $scoped/fn
 )
 (func $~start (type $none_=>_none)
  call $start:scoped
 )
)
