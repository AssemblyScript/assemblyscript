(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00<\00\00\00\00\00\00\00\00\00\00\00.\00.\00/\00.\00.\00/\00c\00o\00m\00p\00i\00l\00e\00r\00/\00r\00u\00n\00t\00i\00m\00e\00/\00a\00s\00r\00t\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $../../compiler/runtime/asrt/ROOT (mut i32) (i32.const 0))
 (global $../../compiler/runtime/asrt/ACYCLIC_FLAG i32 (i32.const 0))
 (global $../../compiler/runtime/asrt/ROOTS (mut i32) (i32.const 0))
 (global $../../compiler/runtime/asrt/CUR (mut i32) (i32.const 0))
 (global $../../compiler/runtime/asrt/END (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 84))
 (export "memory" (memory $0))
 (export "memory.allocate" (func $assembly/index/memory.allocate))
 (export "memory.free" (func $assembly/index/memory.free))
 (func $../../compiler/runtime/asrt/setTail (; 1 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=2912
 )
 (func $../../compiler/runtime/asrt/setSLMap (; 2 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  i32.const 22
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 165
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store offset=4
 )
 (func $../../compiler/runtime/asrt/setHead (; 3 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $1
  i32.const 22
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 32
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 179
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 32
  i32.mul
  local.get $2
  i32.add
  i32.const 4
  i32.mul
  i32.add
  local.get $3
  i32.store offset=96
 )
 (func $../../compiler/runtime/asrt/getTail (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=2912
 )
 (func $../../compiler/runtime/asrt/getRight (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.set $1
  local.get $1
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 112
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  local.get $1
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 114
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $../../compiler/runtime/asrt/fls<usize> (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 467
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 31
  local.get $0
  i32.clz
  i32.sub
 )
 (func $../../compiler/runtime/asrt/getHead (; 7 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 22
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 32
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 170
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 32
  i32.mul
  local.get $2
  i32.add
  i32.const 4
  i32.mul
  i32.add
  i32.load offset=96
 )
 (func $../../compiler/runtime/asrt/getSLMap (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 22
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 160
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
 )
 (func $../../compiler/runtime/asrt/removeBlock (; 9 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 260
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  local.get $3
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $3
   i32.const 1073741824
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 262
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 8
   i32.div_u
   local.set $5
  else   
   local.get $3
   call $../../compiler/runtime/asrt/fls<usize>
   local.set $4
   local.get $3
   local.get $4
   i32.const 5
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 5
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  local.get $1
  i32.load offset=16
  local.set $6
  local.get $1
  i32.load offset=20
  local.set $7
  local.get $6
  if
   local.get $6
   local.get $7
   i32.store offset=20
  end
  local.get $7
  if
   local.get $7
   local.get $6
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.get $4
  local.get $5
  call $../../compiler/runtime/asrt/getHead
  i32.eq
  if
   local.get $0
   local.get $4
   local.get $5
   local.get $7
   call $../../compiler/runtime/asrt/setHead
   local.get $7
   i32.eqz
   if
    local.get $0
    local.get $4
    call $../../compiler/runtime/asrt/getSLMap
    local.set $8
    local.get $0
    local.get $4
    local.get $8
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $8
    call $../../compiler/runtime/asrt/setSLMap
    local.get $8
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $../../compiler/runtime/asrt/getLeft (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  i32.const 2
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 103
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.sub
  i32.load
  local.set $1
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 105
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $../../compiler/runtime/asrt/insertBlock (; 11 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 195
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 197
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $../../compiler/runtime/asrt/getRight
  local.set $3
  local.get $3
  i32.load
  local.set $4
  local.get $4
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $3
   call $../../compiler/runtime/asrt/removeBlock
   local.get $1
   local.get $2
   i32.const 16
   local.get $4
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.add
   local.tee $2
   i32.store
   local.get $1
   call $../../compiler/runtime/asrt/getRight
   local.set $3
   local.get $3
   i32.load
   local.set $4
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   call $../../compiler/runtime/asrt/getLeft
   local.set $5
   local.get $5
   i32.load
   local.set $6
   local.get $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 215
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $5
   call $../../compiler/runtime/asrt/removeBlock
   local.get $5
   local.get $6
   i32.const 16
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.add
   local.tee $6
   i32.store
   local.get $5
   local.set $1
   local.get $6
   local.set $2
  end
  local.get $3
  local.get $4
  i32.const 2
  i32.or
  i32.store
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $7
  local.get $7
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $7
   i32.const 1073741824
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 228
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $7
  i32.add
  local.get $3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 229
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $7
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $8
   local.get $7
   i32.const 8
   i32.div_u
   local.set $9
  else   
   local.get $7
   call $../../compiler/runtime/asrt/fls<usize>
   local.set $8
   local.get $7
   local.get $8
   i32.const 5
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 5
   i32.shl
   i32.xor
   local.set $9
   local.get $8
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $8
  end
  local.get $0
  local.get $8
  local.get $9
  call $../../compiler/runtime/asrt/getHead
  local.set $10
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $10
  i32.store offset=20
  local.get $10
  if
   local.get $10
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.get $8
  local.get $9
  local.get $1
  call $../../compiler/runtime/asrt/setHead
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $8
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $8
  local.get $0
  local.get $8
  call $../../compiler/runtime/asrt/getSLMap
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  call $../../compiler/runtime/asrt/setSLMap
 )
 (func $../../compiler/runtime/asrt/addMemory (; 12 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  local.get $2
  i32.le_u
  if (result i32)
   local.get $1
   i32.const 7
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  if (result i32)
   local.get $2
   i32.const 7
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 372
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $../../compiler/runtime/asrt/getTail
  local.set $3
  i32.const 0
  local.set $4
  local.get $3
  if
   local.get $1
   local.get $3
   i32.const 16
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 382
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $3
   i32.eq
   if
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
    local.get $3
    i32.load
    local.set $4
   else    
    i32.const 0
    i32.eqz
    if
     i32.const 0
     i32.const 24
     i32.const 391
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
   end
  else   
   local.get $1
   local.get $0
   i32.const 2916
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 395
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $5
  local.get $5
  i32.const 16
  i32.const 16
  i32.add
  i32.const 16
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $5
  i32.const 2
  i32.const 16
  i32.mul
  i32.sub
  local.set $6
  local.get $1
  local.set $7
  local.get $7
  local.get $6
  i32.const 1
  i32.or
  local.get $4
  i32.const 2
  i32.and
  i32.or
  i32.store
  local.get $7
  i32.const 0
  i32.store offset=16
  local.get $7
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $5
  i32.add
  i32.const 16
  i32.sub
  local.set $3
  local.get $3
  i32.const 0
  i32.const 2
  i32.or
  i32.store
  local.get $0
  local.get $3
  call $../../compiler/runtime/asrt/setTail
  local.get $0
  local.get $7
  call $../../compiler/runtime/asrt/insertBlock
  i32.const 1
 )
 (func $../../compiler/runtime/asrt/initialize (; 13 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/HEAP_BASE
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  local.set $0
  current_memory
  local.set $1
  local.get $0
  i32.const 2916
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $2
  local.get $2
  local.get $1
  i32.gt_s
  if (result i32)
   local.get $2
   local.get $1
   i32.sub
   grow_memory
   i32.const 0
   i32.lt_s
  else   
   i32.const 0
  end
  if
   unreachable
  end
  local.get $0
  local.set $3
  local.get $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  call $../../compiler/runtime/asrt/setTail
  block $break|0
   i32.const 0
   local.set $4
   loop $repeat|0
    local.get $4
    i32.const 22
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     local.get $3
     local.get $4
     i32.const 0
     call $../../compiler/runtime/asrt/setSLMap
     block $break|1
      i32.const 0
      local.set $5
      loop $repeat|1
       local.get $5
       i32.const 32
       i32.lt_u
       i32.eqz
       br_if $break|1
       local.get $3
       local.get $4
       local.get $5
       i32.const 0
       call $../../compiler/runtime/asrt/setHead
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       br $repeat|1
       unreachable
      end
      unreachable
     end
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $3
  local.get $0
  i32.const 2916
  i32.add
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  current_memory
  i32.const 16
  i32.shl
  call $../../compiler/runtime/asrt/addMemory
  drop
  local.get $3
 )
 (func $../../compiler/runtime/asrt/ffs<usize> (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 461
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.ctz
 )
 (func $../../compiler/runtime/asrt/ffs<u32> (; 15 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 461
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.ctz
 )
 (func $../../compiler/runtime/asrt/searchBlock (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 8
   i32.div_u
   local.set $3
  else   
   local.get $1
   call $../../compiler/runtime/asrt/fls<usize>
   local.set $2
   local.get $1
   local.get $2
   i32.const 5
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 5
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
   local.get $3
   i32.const 32
   i32.const 1
   i32.sub
   i32.lt_u
   if
    local.get $3
    i32.const 1
    i32.add
    local.set $3
   else    
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    i32.const 0
    local.set $3
   end
  end
  local.get $0
  local.get $2
  call $../../compiler/runtime/asrt/getSLMap
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $4
  local.get $4
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $6
   local.get $6
   i32.eqz
   if
    i32.const 0
    local.set $5
   else    
    local.get $6
    call $../../compiler/runtime/asrt/ffs<usize>
    local.set $2
    local.get $0
    local.get $2
    call $../../compiler/runtime/asrt/getSLMap
    local.set $4
    local.get $4
    i32.eqz
    if
     i32.const 0
     i32.const 24
     i32.const 329
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    local.get $4
    call $../../compiler/runtime/asrt/ffs<u32>
    call $../../compiler/runtime/asrt/getHead
    local.set $5
   end
  else   
   local.get $0
   local.get $2
   local.get $4
   call $../../compiler/runtime/asrt/ffs<u32>
   call $../../compiler/runtime/asrt/getHead
   local.set $5
  end
  local.get $5
 )
 (func $../../compiler/runtime/asrt/growMemory (; 17 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  current_memory
  local.set $2
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $3
  local.get $2
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  grow_memory
  i32.const 0
  i32.lt_s
  if
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  current_memory
  local.set $7
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  local.get $7
  i32.const 16
  i32.shl
  call $../../compiler/runtime/asrt/addMemory
  drop
 )
 (func $../../compiler/runtime/asrt/prepareBlock (; 18 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $3
  i32.const 1
  i32.and
  i32.const 0
  i32.ne
  if (result i32)
   local.get $2
   i32.const 7
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 344
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $../../compiler/runtime/asrt/removeBlock
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 16
  i32.const 16
  i32.add
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $5
   call $../../compiler/runtime/asrt/insertBlock
  else   
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   i32.store
   local.get $1
   call $../../compiler/runtime/asrt/getRight
   local.get $1
   call $../../compiler/runtime/asrt/getRight
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   i32.store
  end
  local.get $1
  i32.const 16
  i32.add
 )
 (func $../../compiler/runtime/asrt/__mm_allocate (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $../../compiler/runtime/asrt/ROOT
  local.set $1
  local.get $1
  i32.eqz
  if
   call $../../compiler/runtime/asrt/initialize
   local.tee $1
   global.set $../../compiler/runtime/asrt/ROOT
  end
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  local.get $0
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  local.tee $2
  i32.const 16
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  local.set $0
  local.get $1
  local.get $0
  call $../../compiler/runtime/asrt/searchBlock
  local.set $4
  local.get $4
  i32.eqz
  if
   local.get $1
   local.get $0
   call $../../compiler/runtime/asrt/growMemory
   local.get $1
   local.get $0
   call $../../compiler/runtime/asrt/searchBlock
   local.set $4
   local.get $4
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 490
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $4
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $0
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 492
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 0
  i32.store offset=4
  local.get $4
  i32.const 0
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store offset=12
  local.get $1
  local.get $4
  local.get $0
  call $../../compiler/runtime/asrt/prepareBlock
 )
 (func $assembly/index/memory.allocate (; 20 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $../../compiler/runtime/asrt/__mm_allocate
 )
 (func $../../compiler/runtime/asrt/freeBlock (; 21 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 454
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $../../compiler/runtime/asrt/insertBlock
 )
 (func $../../compiler/runtime/asrt/__mm_free (; 22 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  if
   local.get $0
   i32.const 7
   i32.and
   i32.eqz
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 503
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   global.get $../../compiler/runtime/asrt/ROOT
   local.set $1
   local.get $1
   if
    local.get $1
    local.get $0
    i32.const 16
    i32.sub
    call $../../compiler/runtime/asrt/freeBlock
   end
  end
 )
 (func $assembly/index/memory.free (; 23 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $../../compiler/runtime/asrt/__mm_free
 )
 (func $null (; 24 ;) (type $FUNCSIG$v)
 )
)
