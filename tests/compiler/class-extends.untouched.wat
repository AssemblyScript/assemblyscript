(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 2)
 (data (i32.const 12) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00s\00t\00a\00c\00k\00 \00o\00v\00e\00r\00f\00l\00o\00w\00")
 (data (i32.const 60) "\14\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00")
 (table $0 1 funcref)
 (global $~lib/ASC_FEATURE_BULK_MEMORY i32 (i32.const 0))
 (global $~lib/rt/__stack_base i32 (i32.const 100))
 (global $~lib/rt/__stack_size i32 (i32.const 65536))
 (global $~lib/rt/__stackptr (mut i32) (i32.const 100))
 (export "memory" (memory $0))
 (export "test" (func $class-extends/test))
 (func $~lib/rt/__stackify (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.store
  local.get $0
 )
 (func $class-extends/A#set:a (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $class-extends/B#set:b (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 offset=4
 )
 (func $class-extends/test (param $0 i32)
  (local $1 i32)
  i32.const 4
  call $~lib/rt/__stack_prepare
  local.set $1
  local.get $0
  local.get $1
  i32.const 0
  i32.add
  call $~lib/rt/__stackify
  local.set $0
  local.get $0
  i32.load
  drop
  local.get $0
  i32.load16_s offset=4
  drop
  local.get $0
  i32.const 2
  call $class-extends/A#set:a
  local.get $0
  i32.const 3
  call $class-extends/B#set:b
  local.get $1
  call $~lib/rt/__stack_restore
 )
 (func $~lib/rt/__stack_prepare (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/__stackptr
  local.set $1
  local.get $1
  local.get $0
  i32.add
  local.set $2
  local.get $2
  global.get $~lib/rt/__stack_base
  global.get $~lib/rt/__stack_size
  i32.add
  i32.le_u
  i32.eqz
  if
   i32.const 32
   i32.const 80
   i32.const 118
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.set $~lib/rt/__stackptr
  i32.const 0
  drop
  loop $while-continue|0
   local.get $2
   i32.const 4
   i32.sub
   local.tee $2
   local.get $1
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $2
    i32.const 0
    i32.store
    br $while-continue|0
   end
  end
  local.get $1
 )
 (func $~lib/rt/__stack_restore (param $0 i32)
  local.get $0
  global.set $~lib/rt/__stackptr
 )
)
