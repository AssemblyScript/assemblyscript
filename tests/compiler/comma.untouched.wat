(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00c\00o\00m\00m\00a\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $comma/a (mut i32) (i32.const 0))
 (global $comma/b (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:comma
  (local $0 i32)
  (local $1 i32)
  global.get $comma/a
  local.tee $0
  i32.const 1
  i32.add
  global.set $comma/a
  local.get $0
  global.set $comma/b
  global.get $comma/a
  drop
  global.get $comma/a
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $comma/b
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 5
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $comma/a
  i32.const 1
  i32.add
  global.set $comma/a
  global.get $comma/a
  global.set $comma/b
  global.get $comma/a
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 8
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $comma/b
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 9
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $comma/b
  global.get $comma/b
  global.set $comma/a
  global.get $comma/a
  i32.const 1
  i32.add
  global.set $comma/a
  global.get $comma/a
  global.set $comma/b
  global.get $comma/a
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 14
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $comma/b
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 15
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $comma/a
  i32.const 1
  i32.add
  global.set $comma/a
  global.get $comma/a
  global.set $comma/b
  global.get $comma/b
  global.set $comma/a
  global.get $comma/a
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 18
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $comma/b
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 19
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $1
   global.get $comma/a
   i32.lt_s
   local.set $0
   local.get $0
   if
    nop
    global.get $comma/a
    i32.const 1
    i32.sub
    global.set $comma/a
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $1
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  i32.const 2
  drop
  i32.const 3
  drop
 )
 (func $~start
  call $start:comma
 )
)
