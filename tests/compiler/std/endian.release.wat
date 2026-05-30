(module
 (type $0 (func (param i32 i32 i32)))
 (type $1 (func))
 (type $2 (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/__abort_impl (param i32 i32 i32 i32)))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33852))
 (memory $0 1)
 (data $0 (i32.const 1036) ",")
 (data $0.1 (i32.const 1048) "\02\00\00\00\1a\00\00\00s\00t\00d\00/\00e\00n\00d\00i\00a\00n\00.\00t\00s")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/builtins/abort (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1084
  i32.lt_s
  if
   i32.const 33872
   i32.const 33920
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $2
  i32.const 1
  call $~lib/builtins/__abort_impl
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~start
  (local $0 i32)
  (local $1 i64)
  i32.const 8192
  i32.const 16909060
  i32.store
  i32.const 8192
  i32.load
  local.tee $0
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $0
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  i32.const 67305985
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8192
  i32.load
  i32.const 16909060
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8200
  i32.const 67305985
  i32.store
  i32.const 8200
  i32.load
  i32.const 67305985
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8208
  i32.const -1430532899
  i32.store
  i32.const 8208
  i32.load
  i32.const -1430532899
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8224
  i32.const 513
  i32.store16
  i32.const 8224
  i32.load16_u
  i32.const 513
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8224
  i32.load16_u
  local.tee $0
  i32.const 8
  i32.shl
  local.get $0
  i32.const 8
  i32.shr_u
  i32.or
  i32.const 65535
  i32.and
  i32.const 258
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 32
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8240
  i64.const 578437695752307201
  i64.store
  i32.const 8240
  i64.load
  local.tee $1
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $1
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $1
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $1
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  i64.const 72623859790382856
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 36
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8240
  i64.load
  i64.const 578437695752307201
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 37
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8256
  i32.const -272716322
  i32.store
  i32.const 8256
  i32.load
  local.tee $0
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $0
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  i32.const -559038737
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
 )
)
