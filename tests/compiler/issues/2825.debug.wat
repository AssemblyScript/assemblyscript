(module
 (type $0 (func))
 (type $1 (func (param i32 i32 i32 i32)))
 (type $2 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32828))
 (global $~lib/memory/__heap_base i32 (i32.const 32828))
 (memory $0 1)
 (data $0 (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00i\00s\00s\00u\00e\00s\00/\002\008\002\005\00.\00t\00s\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "init" (func $issues/2825/init))
 (export "memory" (memory $0))
 (start $~start)
 (func $issues/2825/increment (param $x i32) (result i32)
  local.get $x
  i32.const 1234
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 2
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $x
  i32.const 1
  i32.add
  return
 )
 (func $start:issues/2825
  (local $i i32)
  (local $i|1 i32)
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   i32.const 10
   i32.lt_s
   if
    i32.const 1234
    local.set $i|1
    local.get $i
    call $issues/2825/increment
    local.set $i
    br $for-loop|0
   end
  end
 )
 (func $issues/2825/init
  (local $not_unassigned i32)
  loop $for-loop|0
   i32.const 1
   if
    i32.const 0
    local.set $not_unassigned
    local.get $not_unassigned
    drop
    br $for-loop|0
   end
  end
 )
 (func $~start
  call $start:issues/2825
 )
)
