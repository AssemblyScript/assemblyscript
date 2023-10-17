(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $memset/dest (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32828))
 (global $~lib/memory/__heap_base i32 (i32.const 32828))
 (memory $0 1)
 (data $0 (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\12\00\00\00m\00e\00m\00s\00e\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $memset/memset (param $dest i32) (param $c i32) (param $n i32) (result i32)
  (local $ret i32)
  (local $k i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $c32 i32)
  (local $9 i32)
  (local $10 i32)
  (local $c64 i64)
  (local $12 i32)
  (local $13 i32)
  local.get $dest
  local.set $ret
  local.get $n
  i32.eqz
  if
   local.get $ret
   return
  end
  local.get $dest
  local.get $c
  i32.store8 $0
  local.get $dest
  local.get $n
  i32.add
  i32.const 1
  i32.sub
  local.get $c
  i32.store8 $0
  local.get $n
  i32.const 2
  i32.le_u
  if
   local.get $ret
   return
  end
  local.get $dest
  i32.const 1
  i32.add
  local.get $c
  i32.store8 $0
  local.get $dest
  i32.const 2
  i32.add
  local.get $c
  i32.store8 $0
  local.get $dest
  local.get $n
  i32.add
  i32.const 2
  i32.sub
  local.get $c
  i32.store8 $0
  local.get $dest
  local.get $n
  i32.add
  i32.const 3
  i32.sub
  local.get $c
  i32.store8 $0
  local.get $n
  i32.const 6
  i32.le_u
  if
   local.get $ret
   return
  end
  local.get $dest
  i32.const 3
  i32.add
  local.get $c
  i32.store8 $0
  local.get $dest
  local.get $n
  i32.add
  i32.const 4
  i32.sub
  local.get $c
  i32.store8 $0
  local.get $n
  i32.const 8
  i32.le_u
  if
   local.get $ret
   return
  end
  i32.const 0
  local.get $dest
  i32.sub
  i32.const 3
  i32.and
  local.set $k
  local.get $dest
  local.get $k
  i32.add
  local.set $5
  local.get $5
  local.set $dest
  local.get $n
  local.get $k
  i32.sub
  local.set $6
  local.get $6
  local.set $n
  local.get $n
  i32.const -4
  i32.and
  local.set $7
  local.get $7
  local.set $n
  i32.const -1
  i32.const 255
  i32.div_u
  local.get $c
  i32.const 255
  i32.and
  i32.mul
  local.set $c32
  local.get $dest
  local.get $c32
  i32.store $0
  local.get $dest
  local.get $n
  i32.add
  i32.const 4
  i32.sub
  local.get $c32
  i32.store $0
  local.get $n
  i32.const 8
  i32.le_u
  if
   local.get $ret
   return
  end
  local.get $dest
  i32.const 4
  i32.add
  local.get $c32
  i32.store $0
  local.get $dest
  i32.const 8
  i32.add
  local.get $c32
  i32.store $0
  local.get $dest
  local.get $n
  i32.add
  i32.const 12
  i32.sub
  local.get $c32
  i32.store $0
  local.get $dest
  local.get $n
  i32.add
  i32.const 8
  i32.sub
  local.get $c32
  i32.store $0
  local.get $n
  i32.const 24
  i32.le_u
  if
   local.get $ret
   return
  end
  local.get $dest
  i32.const 12
  i32.add
  local.get $c32
  i32.store $0
  local.get $dest
  i32.const 16
  i32.add
  local.get $c32
  i32.store $0
  local.get $dest
  i32.const 20
  i32.add
  local.get $c32
  i32.store $0
  local.get $dest
  i32.const 24
  i32.add
  local.get $c32
  i32.store $0
  local.get $dest
  local.get $n
  i32.add
  i32.const 28
  i32.sub
  local.get $c32
  i32.store $0
  local.get $dest
  local.get $n
  i32.add
  i32.const 24
  i32.sub
  local.get $c32
  i32.store $0
  local.get $dest
  local.get $n
  i32.add
  i32.const 20
  i32.sub
  local.get $c32
  i32.store $0
  local.get $dest
  local.get $n
  i32.add
  i32.const 16
  i32.sub
  local.get $c32
  i32.store $0
  i32.const 24
  local.get $dest
  i32.const 4
  i32.and
  i32.add
  local.set $k
  local.get $dest
  local.get $k
  i32.add
  local.set $9
  local.get $9
  local.set $dest
  local.get $n
  local.get $k
  i32.sub
  local.set $10
  local.get $10
  local.set $n
  local.get $c32
  i64.extend_i32_u
  local.get $c32
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.set $c64
  loop $while-continue|0
   local.get $n
   i32.const 32
   i32.ge_u
   if
    local.get $dest
    local.get $c64
    i64.store $0
    local.get $dest
    i32.const 8
    i32.add
    local.get $c64
    i64.store $0
    local.get $dest
    i32.const 16
    i32.add
    local.get $c64
    i64.store $0
    local.get $dest
    i32.const 24
    i32.add
    local.get $c64
    i64.store $0
    local.get $n
    i32.const 32
    i32.sub
    local.set $12
    local.get $12
    local.set $n
    local.get $dest
    i32.const 32
    i32.add
    local.set $13
    local.get $13
    local.set $dest
    br $while-continue|0
   end
  end
  local.get $ret
  return
 )
 (func $start:memset
  global.get $~lib/memory/__heap_base
  global.set $memset/dest
  global.get $memset/dest
  i32.const 1
  i32.const 16
  call $memset/memset
  drop
  global.get $memset/dest
  i32.load8_u $0
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 72
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memset/dest
  i32.const 15
  i32.add
  i32.load8_u $0
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 73
   i32.const 1
   call $~lib/builtins/abort
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
  i32.load8_u $0
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 77
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memset/dest
  i32.const 1
  i32.add
  i32.load8_u $0
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 78
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memset/dest
  i32.const 14
  i32.add
  i32.load8_u $0
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 79
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memset/dest
  i32.const 15
  i32.add
  i32.load8_u $0
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 80
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:memset
 )
)
