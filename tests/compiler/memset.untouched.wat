(module
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\t\00\00\00m\00e\00m\00s\00e\00t\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $memset/dest (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 32))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $memset/memset (; 1 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  local.get $0
  local.set $3
  local.get $2
  i32.eqz
  if
   local.get $3
   return
  end
  local.get $0
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 1
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 2
  i32.le_u
  if
   local.get $3
   return
  end
  local.get $0
  i32.const 1
  i32.add
  local.get $1
  i32.store8
  local.get $0
  i32.const 2
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 2
  i32.sub
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 3
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 6
  i32.le_u
  if
   local.get $3
   return
  end
  local.get $0
  i32.const 3
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 4
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 8
  i32.le_u
  if
   local.get $3
   return
  end
  i32.const 0
  local.get $0
  i32.sub
  i32.const 3
  i32.and
  local.set $4
  local.get $0
  local.get $4
  i32.add
  local.set $0
  local.get $2
  local.get $4
  i32.sub
  local.set $2
  local.get $2
  i32.const -4
  i32.and
  local.set $2
  i32.const -1
  i32.const 255
  i32.div_u
  local.get $1
  i32.const 255
  i32.and
  i32.mul
  local.set $5
  local.get $0
  local.get $5
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 4
  i32.sub
  local.get $5
  i32.store
  local.get $2
  i32.const 8
  i32.le_u
  if
   local.get $3
   return
  end
  local.get $0
  i32.const 4
  i32.add
  local.get $5
  i32.store
  local.get $0
  i32.const 8
  i32.add
  local.get $5
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 12
  i32.sub
  local.get $5
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 8
  i32.sub
  local.get $5
  i32.store
  local.get $2
  i32.const 24
  i32.le_u
  if
   local.get $3
   return
  end
  local.get $0
  i32.const 12
  i32.add
  local.get $5
  i32.store
  local.get $0
  i32.const 16
  i32.add
  local.get $5
  i32.store
  local.get $0
  i32.const 20
  i32.add
  local.get $5
  i32.store
  local.get $0
  i32.const 24
  i32.add
  local.get $5
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 28
  i32.sub
  local.get $5
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 24
  i32.sub
  local.get $5
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 20
  i32.sub
  local.get $5
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 16
  i32.sub
  local.get $5
  i32.store
  i32.const 24
  local.get $0
  i32.const 4
  i32.and
  i32.add
  local.set $4
  local.get $0
  local.get $4
  i32.add
  local.set $0
  local.get $2
  local.get $4
  i32.sub
  local.set $2
  local.get $5
  i64.extend_i32_u
  local.get $5
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.set $6
  block $break|0
   loop $continue|0
    local.get $2
    i32.const 32
    i32.ge_u
    if
     block
      local.get $0
      local.get $6
      i64.store
      local.get $0
      i32.const 8
      i32.add
      local.get $6
      i64.store
      local.get $0
      i32.const 16
      i32.add
      local.get $6
      i64.store
      local.get $0
      i32.const 24
      i32.add
      local.get $6
      i64.store
      local.get $2
      i32.const 32
      i32.sub
      local.set $2
      local.get $0
      i32.const 32
      i32.add
      local.set $0
     end
     br $continue|0
    end
   end
  end
  local.get $3
 )
 (func $start:memset (; 2 ;) (type $FUNCSIG$v)
  global.get $~lib/memory/HEAP_BASE
  global.set $memset/dest
  global.get $memset/dest
  i32.const 1
  i32.const 16
  call $memset/memset
  drop
  global.get $memset/dest
  i32.load8_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 72
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $memset/dest
  i32.const 15
  i32.add
  i32.load8_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 73
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $memset/dest
  i32.const 1
  i32.add
  i32.const 2
  i32.const 14
  call $memset/memset
  drop
  global.get $memset/dest
  i32.load8_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 77
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $memset/dest
  i32.const 1
  i32.add
  i32.load8_u
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 78
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $memset/dest
  i32.const 14
  i32.add
  i32.load8_u
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 79
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $memset/dest
  i32.const 15
  i32.add
  i32.load8_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 80
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 3 ;) (type $FUNCSIG$v)
  call $start:memset
 )
 (func $null (; 4 ;) (type $FUNCSIG$v)
 )
)
