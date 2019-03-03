(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\06\00\00\00a\00b\00i\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $abi/condition (mut i32) (i32.const 0))
 (global $abi/y (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 24))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "exported" (func $abi/exported))
 (export "exportedExported" (func $abi/exportedExported))
 (export "exportedInternal" (func $abi/exportedInternal))
 (start $start)
 (func $abi/internal (; 1 ;) (type $FUNCSIG$i) (result i32)
  i32.const 128
 )
 (func $start:abi (; 2 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  call $abi/internal
  drop
  i32.const 0
  i32.eqz
  global.set $abi/condition
  block
   i32.const 256
   local.set $0
   local.get $0
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   i32.eqz
   i32.eqz
   if
    i32.const 0
    i32.const 8
    i32.const 32
    i32.const 2
    call $~lib/env/abort
    unreachable
   end
  end
  block
   i32.const 256
   local.set $0
   global.get $abi/condition
   if
    local.get $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 2
    i32.div_s
    local.set $0
   else    
    local.get $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 2
    i32.div_s
    local.set $0
   end
   local.get $0
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   i32.eqz
   i32.eqz
   if
    i32.const 0
    i32.const 8
    i32.const 45
    i32.const 2
    call $~lib/env/abort
    unreachable
   end
  end
  block
   i32.const 256
   local.set $0
   global.get $abi/condition
   if
    local.get $0
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.const 24
    i32.shr_s
    local.set $0
   else    
    local.get $0
    i32.const 127
    i32.and
    local.set $0
   end
   local.get $0
   i32.eqz
   i32.eqz
   if
    i32.const 0
    i32.const 8
    i32.const 58
    i32.const 2
    call $~lib/env/abort
    unreachable
   end
  end
  block
   i32.const 256
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   global.set $abi/y
   global.get $abi/y
   i32.eqz
   i32.eqz
   if
    i32.const 0
    i32.const 8
    i32.const 65
    i32.const 2
    call $~lib/env/abort
    unreachable
   end
  end
  block
   i32.const 2
   i32.ctz
   local.set $0
   local.get $0
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 8
    i32.const 72
    i32.const 2
    call $~lib/env/abort
    unreachable
   end
   i32.const 1
   i32.clz
   local.set $0
   local.get $0
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 8
    i32.const 74
    i32.const 2
    call $~lib/env/abort
    unreachable
   end
   i32.const 2
   i32.ctz
   local.set $1
   local.get $1
   i32.eqz
   if
    i32.const 0
    i32.const 8
    i32.const 77
    i32.const 2
    call $~lib/env/abort
    unreachable
   end
   i32.const 1
   i32.clz
   local.set $1
   local.get $1
   i32.eqz
   if
    i32.const 0
    i32.const 8
    i32.const 79
    i32.const 2
    call $~lib/env/abort
    unreachable
   end
  end
 )
 (func $abi/exported (; 3 ;) (type $FUNCSIG$i) (result i32)
  i32.const 128
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
 )
 (func $abi/exportedExported (; 4 ;) (type $FUNCSIG$i) (result i32)
  call $abi/exported
 )
 (func $abi/exportedInternal (; 5 ;) (type $FUNCSIG$i) (result i32)
  call $abi/internal
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
 )
 (func $start (; 6 ;) (type $FUNCSIG$v)
  call $start:abi
 )
 (func $null (; 7 ;) (type $FUNCSIG$v)
 )
)
