(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $localinit/initInIf
  (local $a i32)
  i32.const 1
  local.tee $a
  i32.const 0
  i32.gt_s
  drop
  local.get $a
  drop
  local.get $a
  drop
 )
 (func $localinit/initInIfElse
  (local $a i32)
  i32.const 1
  local.tee $a
  i32.const 0
  i32.gt_s
  drop
  local.get $a
  drop
  local.get $a
  drop
 )
 (func $localinit/initInIfAnd (param $cond i32)
  (local $a i32)
  (local $b i32)
  local.get $cond
  if (result i32)
   i32.const 0
   local.tee $a
  else
   i32.const 0
  end
  if (result i32)
   i32.const 0
   local.tee $b
  else
   i32.const 0
  end
  if
   local.get $a
   drop
   local.get $b
   drop
  end
 )
 (func $localinit/initInIfOr (param $cond i32)
  (local $a i32)
  (local $b i32)
  local.get $cond
  if (result i32)
   i32.const 1
  else
   i32.const 0
   local.tee $a
  end
  if (result i32)
   i32.const 1
  else
   i32.const 0
   local.tee $b
  end
  if
   return
  end
  local.get $a
  drop
  local.get $b
  drop
 )
 (func $localinit/initInDo (param $cond i32)
  (local $a i32)
  loop $do-loop|0
   i32.const 1
   local.set $a
   local.get $cond
   br_if $do-loop|0
  end
  local.get $a
  drop
 )
 (func $localinit/initInWhile
  (local $a i32)
  block $while-break|0
   loop $while-continue|0
    i32.const 1
    local.tee $a
    if
     local.get $a
     drop
     br $while-break|0
    end
   end
  end
  local.get $a
  drop
 )
 (func $localinit/initInWhileAnd (param $cond i32)
  (local $a i32)
  loop $while-continue|0
   local.get $cond
   if (result i32)
    i32.const 0
    local.tee $a
   else
    i32.const 0
   end
   if
    local.get $a
    drop
    br $while-continue|0
   end
  end
 )
 (func $localinit/initInWhileOr (param $cond i32)
  (local $a i32)
  (local $b i32)
  loop $while-continue|0
   local.get $cond
   if (result i32)
    i32.const 1
   else
    i32.const 1
    local.tee $a
   end
   if (result i32)
    i32.const 1
   else
    i32.const 1
    local.tee $b
   end
   if
    return
   end
  end
  local.get $a
  drop
  local.get $b
  drop
 )
 (func $start:localinit
  call $localinit/initInIf
  call $localinit/initInIfElse
  i32.const 1
  call $localinit/initInIfAnd
  i32.const 1
  call $localinit/initInIfOr
  i32.const 0
  call $localinit/initInDo
  call $localinit/initInWhile
  i32.const 1
  call $localinit/initInWhileAnd
  i32.const 1
  call $localinit/initInWhileOr
 )
 (func $~start
  call $start:localinit
 )
)
