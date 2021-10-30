(module
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $memset/dest (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\01\00\00\00\12\00\00\00m\00e\00m\00s\00e\00t\00.\00t\00s")
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  i32.const 17468
  global.set $memset/dest
  i32.const 17468
  i32.const 1
  i32.const 16
  call $byn-split-outlined-A$memset/memset
  global.get $memset/dest
  i32.load8_u
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 72
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memset/dest
  i32.load8_u offset=15
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
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
  call $byn-split-outlined-A$memset/memset
  global.get $memset/dest
  i32.load8_u
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 77
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memset/dest
  i32.load8_u offset=1
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 78
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memset/dest
  i32.load8_u offset=14
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 79
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memset/dest
  i32.load8_u offset=15
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 80
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $byn-split-outlined-A$memset/memset (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
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
   return
  end
  local.get $0
  local.get $1
  i32.store8 offset=1
  local.get $0
  local.get $1
  i32.store8 offset=2
  local.get $0
  local.get $2
  i32.add
  local.tee $4
  i32.const 2
  i32.sub
  local.get $1
  i32.store8
  local.get $4
  i32.const 3
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 6
  i32.le_u
  if
   return
  end
  local.get $0
  local.get $1
  i32.store8 offset=3
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
   return
  end
  local.get $0
  i32.const 0
  local.get $0
  i32.sub
  i32.const 3
  i32.and
  local.tee $4
  i32.add
  local.tee $0
  local.get $1
  i32.const 255
  i32.and
  i32.const 16843009
  i32.mul
  local.tee $1
  i32.store
  local.get $0
  local.get $2
  local.get $4
  i32.sub
  i32.const -4
  i32.and
  local.tee $2
  i32.add
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 8
  i32.le_u
  if
   return
  end
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $2
  i32.add
  local.tee $4
  i32.const 12
  i32.sub
  local.get $1
  i32.store
  local.get $4
  i32.const 8
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 24
  i32.le_u
  if
   return
  end
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=16
  local.get $0
  local.get $1
  i32.store offset=20
  local.get $0
  local.get $1
  i32.store offset=24
  local.get $0
  local.get $2
  i32.add
  local.tee $4
  i32.const 28
  i32.sub
  local.get $1
  i32.store
  local.get $4
  i32.const 24
  i32.sub
  local.get $1
  i32.store
  local.get $4
  i32.const 20
  i32.sub
  local.get $1
  i32.store
  local.get $4
  i32.const 16
  i32.sub
  local.get $1
  i32.store
  local.get $0
  local.get $0
  i32.const 4
  i32.and
  i32.const 24
  i32.add
  local.tee $4
  i32.add
  local.set $0
  local.get $2
  local.get $4
  i32.sub
  local.set $2
  local.get $1
  i64.extend_i32_u
  local.tee $3
  i64.const 32
  i64.shl
  local.get $3
  i64.or
  local.set $3
  loop $while-continue|0
   local.get $2
   i32.const 32
   i32.ge_u
   if
    local.get $0
    local.get $3
    i64.store
    local.get $0
    local.get $3
    i64.store offset=8
    local.get $0
    local.get $3
    i64.store offset=16
    local.get $0
    local.get $3
    i64.store offset=24
    local.get $2
    i32.const 32
    i32.sub
    local.set $2
    local.get $0
    i32.const 32
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
 )
)
