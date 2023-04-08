(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "console.assert" (func $~lib/bindings/dom/console.assert (param i32 i32)))
 (import "env" "console.log" (func $~lib/bindings/dom/console.log (param i32)))
 (import "env" "console.debug" (func $~lib/bindings/dom/console.debug (param i32)))
 (import "env" "console.info" (func $~lib/bindings/dom/console.info (param i32)))
 (import "env" "console.warn" (func $~lib/bindings/dom/console.warn (param i32)))
 (import "env" "console.error" (func $~lib/bindings/dom/console.error (param i32)))
 (import "env" "console.time" (func $~lib/bindings/dom/console.time (param i32)))
 (import "env" "console.timeLog" (func $~lib/bindings/dom/console.timeLog (param i32)))
 (import "env" "console.timeEnd" (func $~lib/bindings/dom/console.timeEnd (param i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 34380))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\02\00\00\00\0c\00\00\00w\00h\00o\00o\00p\00s")
 (data $1 (i32.const 1068) "\1c")
 (data $1.1 (i32.const 1080) "\02\00\00\00\08\00\00\00p\00h\00e\00w")
 (data $2 (i32.const 1100) ",")
 (data $2.1 (i32.const 1112) "\02\00\00\00\12\00\00\00h\00e\00l\00l\00o\00 \00l\00o\00g")
 (data $3 (i32.const 1148) ",")
 (data $3.1 (i32.const 1160) "\02\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00d\00e\00b\00u\00g")
 (data $4 (i32.const 1196) ",")
 (data $4.1 (i32.const 1208) "\02\00\00\00\14\00\00\00h\00e\00l\00l\00o\00 \00i\00n\00f\00o")
 (data $5 (i32.const 1244) ",")
 (data $5.1 (i32.const 1256) "\02\00\00\00\14\00\00\00h\00e\00l\00l\00o\00 \00w\00a\00r\00n")
 (data $6 (i32.const 1292) ",")
 (data $6.1 (i32.const 1304) "\02\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00e\00r\00r\00o\00r")
 (data $7 (i32.const 1340) ",")
 (data $7.1 (i32.const 1352) "\02\00\00\00\12\00\00\00s\00o\00m\00e\00L\00a\00b\00e\00l")
 (data $8 (i32.const 1388) ",")
 (data $8.1 (i32.const 1400) "\02\00\00\00\14\00\00\00w\00r\00o\00n\00g\00L\00a\00b\00e\00l")
 (data $9 (i32.const 1436) ",")
 (data $9.1 (i32.const 1448) "\02\00\00\00\1c\00\00\00d\00u\00p\00l\00i\00c\00a\00t\00e\00L\00a\00b\00e\00l")
 (data $10 (i32.const 1484) "\1c")
 (data $10.1 (i32.const 1496) "\02\00\00\00\02\00\00\001")
 (data $11 (i32.const 1516) "\1c")
 (data $11.1 (i32.const 1528) "\02\00\00\00\04\00\00\001\002")
 (data $12 (i32.const 1548) "\1c")
 (data $12.1 (i32.const 1560) "\02\00\00\00\06\00\00\001\002\003")
 (data $13 (i32.const 1580) "\1c")
 (data $13.1 (i32.const 1592) "\02\00\00\00\08\00\00\001\002\003\004")
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 1612
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0
   local.get $0
   i32.const 1056
   i32.store $0
   i32.const 0
   i32.const 1056
   call $~lib/console/console.assert<bool>
   global.get $~lib/memory/__stack_pointer
   i32.const 1088
   i32.store $0
   i32.const 1
   i32.const 1088
   call $~lib/console/console.assert<bool>
   global.get $~lib/memory/__stack_pointer
   i32.const 1120
   i32.store $0 offset=4
   i32.const 1120
   call $~lib/console/console.log
   global.get $~lib/memory/__stack_pointer
   i32.const 1168
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1612
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   i32.const 1168
   i32.store $0
   i32.const 1168
   call $~lib/bindings/dom/console.debug
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1216
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1612
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   i32.const 1216
   i32.store $0
   i32.const 1216
   call $~lib/bindings/dom/console.info
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1264
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1612
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   i32.const 1264
   i32.store $0
   i32.const 1264
   call $~lib/bindings/dom/console.warn
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1312
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1612
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   i32.const 1312
   i32.store $0
   i32.const 1312
   call $~lib/bindings/dom/console.error
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 1360
   i32.store $0 offset=4
   i32.const 1360
   call $~lib/console/console.time
   global.get $~lib/memory/__stack_pointer
   i32.const 1360
   i32.store $0 offset=4
   i32.const 1360
   call $~lib/console/console.timeLog
   global.get $~lib/memory/__stack_pointer
   i32.const 1360
   i32.store $0 offset=4
   i32.const 1360
   call $~lib/console/console.timeEnd
   global.get $~lib/memory/__stack_pointer
   i32.const 1408
   i32.store $0 offset=4
   i32.const 1408
   call $~lib/console/console.timeLog
   global.get $~lib/memory/__stack_pointer
   i32.const 1408
   i32.store $0 offset=4
   i32.const 1408
   call $~lib/console/console.timeEnd
   global.get $~lib/memory/__stack_pointer
   i32.const 1456
   i32.store $0 offset=4
   i32.const 1456
   call $~lib/console/console.time
   global.get $~lib/memory/__stack_pointer
   i32.const 1456
   i32.store $0 offset=4
   i32.const 1456
   call $~lib/console/console.time
   global.get $~lib/memory/__stack_pointer
   i32.const 1504
   i32.store $0 offset=4
   i32.const 1504
   call $~lib/console/console.log
   global.get $~lib/memory/__stack_pointer
   i32.const 1536
   i32.store $0 offset=4
   i32.const 1536
   call $~lib/console/console.log
   global.get $~lib/memory/__stack_pointer
   i32.const 1568
   i32.store $0 offset=4
   i32.const 1568
   call $~lib/console/console.log
   global.get $~lib/memory/__stack_pointer
   i32.const 1600
   i32.store $0 offset=4
   i32.const 1600
   call $~lib/console/console.log
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 34400
  i32.const 34448
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/console/console.assert<bool> (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1612
  i32.lt_s
  if
   i32.const 34400
   i32.const 34448
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $1
  i32.store $0
  local.get $0
  i32.const 0
  i32.ne
  local.get $1
  call $~lib/bindings/dom/console.assert
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/console/console.log (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1612
  i32.lt_s
  if
   i32.const 34400
   i32.const 34448
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/bindings/dom/console.log
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/console/console.time (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1612
  i32.lt_s
  if
   i32.const 34400
   i32.const 34448
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/bindings/dom/console.time
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/console/console.timeLog (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1612
  i32.lt_s
  if
   i32.const 34400
   i32.const 34448
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/bindings/dom/console.timeLog
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/console/console.timeEnd (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1612
  i32.lt_s
  if
   i32.const 34400
   i32.const 34448
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/bindings/dom/console.timeEnd
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
