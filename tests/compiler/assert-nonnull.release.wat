(module
 (type $i32_=>_i32 (func_subtype (param i32) (result i32) func))
 (type $none_=>_i32 (func_subtype (result i32) func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 34172))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\02\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 1100) "<")
 (data (i32.const 1112) "\02\00\00\00\"\00\00\00a\00s\00s\00e\00r\00t\00-\00n\00o\00n\00n\00u\00l\00l\00.\00t\00s")
 (data (i32.const 1164) "<")
 (data (i32.const 1176) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1228) ",")
 (data (i32.const 1240) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1276) "|")
 (data (i32.const 1288) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (table $0 1 1 funcref)
 (export "memory" (memory $0))
 (export "testVar" (func $export:assert-nonnull/testVar))
 (export "testObj" (func $export:assert-nonnull/testObj))
 (export "testProp" (func $export:assert-nonnull/testProp))
 (export "testArr" (func $export:assert-nonnull/testArr))
 (export "testElem" (func $export:assert-nonnull/testElem))
 (export "testAll" (func $export:assert-nonnull/testAll))
 (export "testAll2" (func $export:assert-nonnull/testAll2))
 (export "testFn" (func $export:assert-nonnull/testFn))
 (export "testFn2" (func $export:assert-nonnull/testFn2))
 (export "testRet" (func $export:assert-nonnull/testRet))
 (export "testObjFn" (func $export:assert-nonnull/testObjFn))
 (export "testObjRet" (func $export:assert-nonnull/testObjRet))
 (func $~lib/array/Array<assert-nonnull/Foo|null>#__get (type $i32_=>_i32) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1404
  i32.lt_s
  if
   i32.const 34192
   i32.const 34240
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  i32.load $0 offset=12
  i32.eqz
  if
   i32.const 1184
   i32.const 1248
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.load $0 offset=4
  i32.load $0
  local.tee $0
  i32.store $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assert-nonnull/testVar (type $i32_=>_i32) (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1404
  i32.lt_s
  if
   i32.const 34192
   i32.const 34240
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  i32.eqz
  if
   i32.const 1056
   i32.const 1120
   i32.const 2
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assert-nonnull/testObj (type $i32_=>_i32) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 1404
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1404
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store $0
   local.get $0
   i32.eqz
   if
    i32.const 1056
    i32.const 1120
    i32.const 11
    i32.const 10
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   local.set $0
   local.get $1
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 34192
  i32.const 34240
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:assert-nonnull/testProp (type $i32_=>_i32) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 1404
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1404
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   local.get $0
   i32.load $0
   local.tee $0
   i32.store $0
   local.get $0
   i32.eqz
   if
    i32.const 1056
    i32.const 1120
    i32.const 15
    i32.const 10
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 34192
  i32.const 34240
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:assert-nonnull/testArr (type $i32_=>_i32) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 1404
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1404
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store $0
   local.get $0
   i32.eqz
   if
    i32.const 1056
    i32.const 1120
    i32.const 19
    i32.const 10
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1404
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store $0
   local.get $0
   i32.load $0 offset=12
   i32.eqz
   if
    i32.const 1184
    i32.const 1248
    i32.const 114
    i32.const 42
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load $0 offset=4
   i32.load $0
   local.tee $0
   i32.store $0
   local.get $0
   i32.eqz
   if
    i32.const 1296
    i32.const 1248
    i32.const 118
    i32.const 40
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 34192
  i32.const 34240
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:assert-nonnull/testElem (type $i32_=>_i32) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 1404
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1404
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   local.get $0
   call $~lib/array/Array<assert-nonnull/Foo|null>#__get
   local.tee $0
   i32.store $0
   local.get $0
   i32.eqz
   if
    i32.const 1056
    i32.const 1120
    i32.const 23
    i32.const 10
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 34192
  i32.const 34240
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:assert-nonnull/testAll (type $i32_=>_i32) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   block $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 1404
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0
    local.get $1
    i32.const 16
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 1404
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i64.const 0
    i64.store $0
    local.get $1
    i64.const 0
    i64.store $0 offset=8
    local.get $0
    i32.eqz
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=4
    local.get $1
    local.get $0
    call $~lib/array/Array<assert-nonnull/Foo|null>#__get
    local.tee $0
    i32.store $0 offset=8
    local.get $0
    i32.eqz
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $1
    local.get $0
    i32.load $0
    local.tee $0
    i32.store $0 offset=12
    local.get $0
    i32.eqz
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    return
   end
   i32.const 34192
   i32.const 34240
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  i32.const 1120
  i32.const 27
  i32.const 10
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:assert-nonnull/testAll2 (type $i32_=>_i32) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   block $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 1404
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0
    local.get $1
    i32.const 16
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 1404
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i64.const 0
    i64.store $0
    local.get $1
    i64.const 0
    i64.store $0 offset=8
    local.get $0
    i32.eqz
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=4
    local.get $1
    local.get $0
    call $~lib/array/Array<assert-nonnull/Foo|null>#__get
    local.tee $0
    i32.store $0 offset=8
    local.get $0
    i32.eqz
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $1
    local.get $0
    i32.load $0
    local.tee $0
    i32.store $0 offset=12
    local.get $0
    i32.eqz
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    return
   end
   i32.const 34192
   i32.const 34240
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  i32.const 1120
  i32.const 31
  i32.const 10
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:assert-nonnull/testFn (type $i32_=>_i32) (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1404
  i32.lt_s
  if
   i32.const 34192
   i32.const 34240
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  i32.eqz
  if
   i32.const 1056
   i32.const 1120
   i32.const 35
   i32.const 10
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load $0
  call_indirect $0 (type $none_=>_i32)
  drop
  unreachable
 )
 (func $export:assert-nonnull/testFn2 (type $i32_=>_i32) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 1404
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1404
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $0
   i32.eqz
   if
    i32.const 1056
    i32.const 1120
    i32.const 39
    i32.const 13
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0
   call_indirect $0 (type $none_=>_i32)
   drop
   unreachable
  end
  i32.const 34192
  i32.const 34240
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:assert-nonnull/testRet (type $i32_=>_i32) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   block $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 1404
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0
    local.get $1
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 1404
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store $0
    local.get $0
    i32.eqz
    br_if $folding-inner1
    local.get $0
    i32.load $0
    call_indirect $0 (type $none_=>_i32)
    drop
    unreachable
   end
   i32.const 34192
   i32.const 34240
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  i32.const 1120
  i32.const 44
  i32.const 10
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:assert-nonnull/testObjFn (type $i32_=>_i32) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 1404
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1404
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   local.get $0
   i32.load $0 offset=4
   local.tee $0
   i32.store $0
   local.get $0
   i32.eqz
   if
    i32.const 1056
    i32.const 1120
    i32.const 48
    i32.const 10
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load $0
   call_indirect $0 (type $none_=>_i32)
   drop
   unreachable
  end
  i32.const 34192
  i32.const 34240
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:assert-nonnull/testObjRet (type $i32_=>_i32) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   block $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 1404
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0
    local.get $1
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 1404
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i64.const 0
    i64.store $0
    local.get $1
    local.get $0
    i32.load $0 offset=4
    local.tee $0
    i32.store $0
    local.get $0
    i32.eqz
    br_if $folding-inner1
    local.get $0
    i32.load $0
    call_indirect $0 (type $none_=>_i32)
    drop
    unreachable
   end
   i32.const 34192
   i32.const 34240
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  i32.const 1120
  i32.const 52
  i32.const 10
  call $~lib/builtins/abort
  unreachable
 )
)
