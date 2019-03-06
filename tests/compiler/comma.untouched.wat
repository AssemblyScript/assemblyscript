(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00c\00o\00m\00m\00a\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $comma/a (mut i32) (i32.const 0))
 (global $comma/b (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 28))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:comma (; 1 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  block
   block (result i32)
    global.get $comma/a
    local.tee $0
    i32.const 1
    i32.add
    global.set $comma/a
    local.get $0
   end
   global.set $comma/b
   global.get $comma/a
   drop
  end
  global.get $comma/a
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 4
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $comma/b
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 5
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block
   global.get $comma/a
   i32.const 1
   i32.add
   global.set $comma/a
   global.get $comma/a
   global.set $comma/b
  end
  global.get $comma/a
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 8
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $comma/b
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 9
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   global.set $comma/b
   global.get $comma/b
  end
  global.set $comma/a
  block (result i32)
   global.get $comma/a
   i32.const 1
   i32.add
   global.set $comma/a
   global.get $comma/a
  end
  global.set $comma/b
  global.get $comma/a
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 14
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $comma/b
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 15
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   global.get $comma/a
   i32.const 1
   i32.add
   global.set $comma/a
   block (result i32)
    global.get $comma/a
    global.set $comma/b
    global.get $comma/b
   end
  end
  global.set $comma/a
  global.get $comma/a
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 18
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $comma/b
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 19
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $break|0
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    global.get $comma/a
    i32.lt_s
    i32.eqz
    br_if $break|0
    nop
    block
     global.get $comma/a
     i32.const 1
     i32.sub
     global.set $comma/a
     local.get $1
     i32.const 1
     i32.add
     local.set $1
    end
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $1
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 22
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block
   i32.const 1
   drop
   i32.const 2
   drop
   i32.const 3
   drop
  end
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:comma
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
 )
)
