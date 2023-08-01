(module
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
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
 (global $~lib/memory/__data_end i32 (i32.const 588))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33356))
 (global $~lib/memory/__heap_base i32 (i32.const 33356))
 (memory $0 1)
 (data $0 (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\00w\00h\00o\00o\00p\00s\00")
 (data $1 (i32.const 44) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00p\00h\00e\00w\00\00\00\00\00")
 (data $2 (i32.const 76) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\12\00\00\00h\00e\00l\00l\00o\00 \00l\00o\00g\00\00\00\00\00\00\00\00\00\00\00")
 (data $3 (i32.const 124) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00d\00e\00b\00u\00g\00\00\00\00\00\00\00")
 (data $4 (i32.const 172) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00h\00e\00l\00l\00o\00 \00i\00n\00f\00o\00\00\00\00\00\00\00\00\00")
 (data $5 (i32.const 220) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00h\00e\00l\00l\00o\00 \00w\00a\00r\00n\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 268) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00e\00r\00r\00o\00r\00\00\00\00\00\00\00")
 (data $7 (i32.const 316) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\12\00\00\00s\00o\00m\00e\00L\00a\00b\00e\00l\00\00\00\00\00\00\00\00\00\00\00")
 (data $8 (i32.const 364) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00w\00r\00o\00n\00g\00L\00a\00b\00e\00l\00\00\00\00\00\00\00\00\00")
 (data $9 (i32.const 412) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00d\00u\00p\00l\00i\00c\00a\00t\00e\00L\00a\00b\00e\00l\00")
 (data $10 (i32.const 460) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\001\00\00\00\00\00\00\00\00\00\00\00")
 (data $11 (i32.const 492) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\001\002\00\00\00\00\00\00\00\00\00")
 (data $12 (i32.const 524) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\001\002\003\00\00\00\00\00\00\00")
 (data $13 (i32.const 556) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\001\002\003\004\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  call $start:std/console
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 33376
   i32.const 33424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/console/console.assert<bool> (param $condition i32) (param $message i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $condition
  i32.eqz
  i32.eqz
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/bindings/dom/console.assert
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/console/console.log (param $message i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $message
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/bindings/dom/console.log
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/console/console.debug (param $message i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $message
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/bindings/dom/console.debug
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/console/console.info (param $message i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $message
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/bindings/dom/console.info
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/console/console.warn (param $message i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $message
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/bindings/dom/console.warn
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/console/console.error (param $message i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $message
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/bindings/dom/console.error
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/console/console.time (param $label i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $label
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/bindings/dom/console.time
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/console/console.timeLog (param $label i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $label
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/bindings/dom/console.timeLog
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/console/console.timeEnd (param $label i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $label
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/bindings/dom/console.timeEnd
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $start:std/console
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 0
  i32.const 32
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/console/console.assert<bool>
  i32.const 1
  i32.const 64
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/console/console.assert<bool>
  i32.const 96
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/console/console.log
  i32.const 144
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/console/console.debug
  i32.const 192
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/console/console.info
  i32.const 240
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/console/console.warn
  i32.const 288
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/console/console.error
  i32.const 336
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/console/console.time
  i32.const 336
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/console/console.timeLog
  i32.const 336
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/console/console.timeEnd
  i32.const 384
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/console/console.timeLog
  i32.const 384
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/console/console.timeEnd
  i32.const 432
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/console/console.time
  i32.const 432
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/console/console.time
  i32.const 480
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/console/console.log
  i32.const 512
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/console/console.log
  i32.const 544
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/console/console.log
  i32.const 576
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/console/console.log
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
