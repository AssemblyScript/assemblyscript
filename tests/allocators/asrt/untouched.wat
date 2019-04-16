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
 (data (i32.const 8) "\10\00\00\00>\00\00\00\00\00\00\00\00\00\00\00.\00.\00/\00.\00.\00/\00r\00u\00n\00t\00i\00m\00e\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00d\00e\00x\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $../../runtime/assembly/index/ROOT (mut i32) (i32.const 0))
 (global $../../runtime/assembly/index/ACYCLIC_FLAG i32 (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 88))
 (export "memory" (memory $0))
 (export "memory.allocate" (func $assembly/index/memory.allocate))
 (export "memory.free" (func $assembly/index/memory.free))
 (export "memory.fill" (func $assembly/index/memory.fill))
 (func $../../runtime/assembly/index/setTail (; 1 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=1568
 )
 (func $../../runtime/assembly/index/setSLMap (; 2 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  i32.const 23
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 175
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
 (func $../../runtime/assembly/index/setHead (; 3 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $1
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 189
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 16
  i32.mul
  local.get $2
  i32.add
  i32.const 4
  i32.mul
  i32.add
  local.get $3
  i32.store offset=96
 )
 (func $../../runtime/assembly/index/getTail (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=1568
 )
 (func $../../runtime/assembly/index/getRight (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 122
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
   i32.const 124
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $../../runtime/assembly/index/fls<usize> (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 481
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 31
  local.get $0
  i32.clz
  i32.sub
 )
 (func $../../runtime/assembly/index/getHead (; 7 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 180
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 16
  i32.mul
  local.get $2
  i32.add
  i32.const 4
  i32.mul
  i32.add
  i32.load offset=96
 )
 (func $../../runtime/assembly/index/getSLMap (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 23
  i32.lt_u
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
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
 )
 (func $../../runtime/assembly/index/removeBlock (; 9 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   i32.const 275
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
   i32.const 277
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
   i32.const 16
   i32.div_u
   local.set $5
  else   
   local.get $3
   call $../../runtime/assembly/index/fls<usize>
   local.set $4
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
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
  call $../../runtime/assembly/index/getHead
  i32.eq
  if
   local.get $0
   local.get $4
   local.get $5
   local.get $7
   call $../../runtime/assembly/index/setHead
   local.get $7
   i32.eqz
   if
    local.get $0
    local.get $4
    call $../../runtime/assembly/index/getSLMap
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
    call $../../runtime/assembly/index/setSLMap
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
 (func $../../runtime/assembly/index/getLeft (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  i32.const 2
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 113
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
   i32.const 115
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $../../runtime/assembly/index/insertBlock (; 11 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 205
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
   i32.const 207
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $../../runtime/assembly/index/getRight
  local.set $3
  local.get $3
  i32.load
  local.set $4
  local.get $4
  i32.const 1
  i32.and
  if
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $4
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $5
   local.get $5
   i32.const 1073741824
   i32.lt_u
   if
    local.get $0
    local.get $3
    call $../../runtime/assembly/index/removeBlock
    local.get $1
    local.get $2
    i32.const 3
    i32.and
    local.get $5
    i32.or
    local.tee $2
    i32.store
    local.get $1
    call $../../runtime/assembly/index/getRight
    local.set $3
    local.get $3
    i32.load
    local.set $4
   end
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   call $../../runtime/assembly/index/getLeft
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
    i32.const 228
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $6
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $7
   local.get $7
   i32.const 1073741824
   i32.lt_u
   if
    local.get $0
    local.get $5
    call $../../runtime/assembly/index/removeBlock
    local.get $5
    local.get $6
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $2
    i32.store
    local.get $5
    local.set $1
   end
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
  local.set $8
  local.get $8
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $8
   i32.const 1073741824
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 243
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $8
  i32.add
  local.get $3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 244
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $8
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $9
   local.get $8
   i32.const 16
   i32.div_u
   local.set $10
  else   
   local.get $8
   call $../../runtime/assembly/index/fls<usize>
   local.set $9
   local.get $8
   local.get $9
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $10
   local.get $9
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $9
  end
  local.get $0
  local.get $9
  local.get $10
  call $../../runtime/assembly/index/getHead
  local.set $11
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $11
  i32.store offset=20
  local.get $11
  if
   local.get $11
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.get $9
  local.get $10
  local.get $1
  call $../../runtime/assembly/index/setHead
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $9
  local.get $0
  local.get $9
  call $../../runtime/assembly/index/getSLMap
  i32.const 1
  local.get $10
  i32.shl
  i32.or
  call $../../runtime/assembly/index/setSLMap
 )
 (func $../../runtime/assembly/index/addMemory (; 12 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  if (result i32)
   local.get $2
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 387
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $../../runtime/assembly/index/getTail
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
    i32.const 397
    i32.const 15
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
    nop
   end
  else   
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 409
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
  call $../../runtime/assembly/index/setTail
  local.get $0
  local.get $7
  call $../../runtime/assembly/index/insertBlock
  i32.const 1
 )
 (func $../../runtime/assembly/index/initialize (; 13 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/HEAP_BASE
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $0
  current_memory
  local.set $1
  local.get $0
  i32.const 1572
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
  call $../../runtime/assembly/index/setTail
  block $break|0
   i32.const 0
   local.set $4
   loop $repeat|0
    local.get $4
    i32.const 23
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     local.get $3
     local.get $4
     i32.const 0
     call $../../runtime/assembly/index/setSLMap
     block $break|1
      i32.const 0
      local.set $5
      loop $repeat|1
       local.get $5
       i32.const 16
       i32.lt_u
       i32.eqz
       br_if $break|1
       local.get $3
       local.get $4
       local.get $5
       i32.const 0
       call $../../runtime/assembly/index/setHead
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
  i32.const 1572
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  current_memory
  i32.const 16
  i32.shl
  call $../../runtime/assembly/index/addMemory
  drop
  local.get $3
 )
 (func $../../runtime/assembly/index/ffs<usize> (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 475
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.ctz
 )
 (func $../../runtime/assembly/index/ffs<u32> (; 15 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 475
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.ctz
 )
 (func $../../runtime/assembly/index/searchBlock (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 16
   i32.div_u
   local.set $3
  else   
   local.get $1
   i32.const 536870912
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    local.get $1
    call $../../runtime/assembly/index/fls<usize>
    i32.const 4
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
   else    
    local.get $1
   end
   local.set $4
   local.get $4
   call $../../runtime/assembly/index/fls<usize>
   local.set $2
   local.get $4
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
  end
  local.get $0
  local.get $2
  call $../../runtime/assembly/index/getSLMap
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $5
  local.get $5
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
   local.set $4
   local.get $4
   i32.eqz
   if
    i32.const 0
    local.set $6
   else    
    local.get $4
    call $../../runtime/assembly/index/ffs<usize>
    local.set $2
    local.get $0
    local.get $2
    call $../../runtime/assembly/index/getSLMap
    local.set $5
    local.get $5
    i32.eqz
    if
     i32.const 0
     i32.const 24
     i32.const 344
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    local.get $5
    call $../../runtime/assembly/index/ffs<u32>
    call $../../runtime/assembly/index/getHead
    local.set $6
   end
  else   
   local.get $0
   local.get $2
   local.get $5
   call $../../runtime/assembly/index/ffs<u32>
   call $../../runtime/assembly/index/getHead
   local.set $6
  end
  local.get $6
 )
 (func $../../runtime/assembly/index/growMemory (; 17 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  call $../../runtime/assembly/index/addMemory
  drop
 )
 (func $../../runtime/assembly/index/prepareBlock (; 18 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 359
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $../../runtime/assembly/index/removeBlock
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
   call $../../runtime/assembly/index/insertBlock
  else   
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   i32.store
   local.get $1
   call $../../runtime/assembly/index/getRight
   local.get $1
   call $../../runtime/assembly/index/getRight
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
 (func $../../runtime/assembly/index/__mm_allocate (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $../../runtime/assembly/index/ROOT
  local.set $1
  local.get $1
  i32.eqz
  if
   call $../../runtime/assembly/index/initialize
   local.tee $1
   global.set $../../runtime/assembly/index/ROOT
  end
  local.get $0
  i32.const 1073741824
  i32.ge_u
  if
   i32.const 0
   i32.const 24
   i32.const 498
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
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
  call $../../runtime/assembly/index/searchBlock
  local.set $4
  local.get $4
  i32.eqz
  if
   local.get $1
   local.get $0
   call $../../runtime/assembly/index/growMemory
   local.get $1
   local.get $0
   call $../../runtime/assembly/index/searchBlock
   local.set $4
   local.get $4
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 504
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
   i32.const 506
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
  call $../../runtime/assembly/index/prepareBlock
 )
 (func $assembly/index/memory.allocate (; 20 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $../../runtime/assembly/index/__mm_allocate
 )
 (func $../../runtime/assembly/index/freeBlock (; 21 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   i32.const 468
   i32.const 2
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
  call $../../runtime/assembly/index/insertBlock
 )
 (func $../../runtime/assembly/index/__mm_free (; 22 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  if
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 517
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   global.get $../../runtime/assembly/index/ROOT
   local.set $1
   local.get $1
   if
    local.get $1
    local.get $0
    i32.const 16
    i32.sub
    call $../../runtime/assembly/index/freeBlock
   end
  end
 )
 (func $assembly/index/memory.free (; 23 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $../../runtime/assembly/index/__mm_free
 )
 (func $~lib/memory/memory.fill (; 24 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
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
    br $~lib/util/memory/memset|inlined.0
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
    br $~lib/util/memory/memset|inlined.0
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
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.set $5
   local.get $0
   local.get $5
   i32.add
   local.set $0
   local.get $2
   local.get $5
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
   local.set $4
   local.get $0
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 4
   i32.sub
   local.get $4
   i32.store
   local.get $2
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   i32.const 4
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 8
   i32.add
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 12
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 8
   i32.sub
   local.get $4
   i32.store
   local.get $2
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   i32.const 12
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 16
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 20
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 24
   i32.add
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 28
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 24
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 20
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 16
   i32.sub
   local.get $4
   i32.store
   i32.const 24
   local.get $0
   i32.const 4
   i32.and
   i32.add
   local.set $5
   local.get $0
   local.get $5
   i32.add
   local.set $0
   local.get $2
   local.get $5
   i32.sub
   local.set $2
   local.get $4
   i64.extend_i32_u
   local.get $4
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
  end
 )
 (func $assembly/index/memory.fill (; 25 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  local.get $2
  call $~lib/memory/memory.fill
 )
 (func $null (; 26 ;) (type $FUNCSIG$v)
 )
)
