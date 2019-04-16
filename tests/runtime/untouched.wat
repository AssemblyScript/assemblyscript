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
 (data (i32.const 8) "\10\00\00\00\"\00\00\00\00\00\00\00\00\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00d\00e\00x\00.\00t\00s\00")
 (data (i32.const 64) "\10\00\00\00\1c\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00m\00e\00m\00o\00r\00y\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $assembly/index/ROOT (mut i32) (i32.const 0))
 (global $assembly/index/ACYCLIC_FLAG i32 (i32.const 0))
 (global $assembly/index/CUR (mut i32) (i32.const 0))
 (global $assembly/index/END (mut i32) (i32.const 0))
 (global $assembly/index/ROOTS (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 108))
 (export "memory" (memory $0))
 (export "__mm_allocate" (func $assembly/index/__mm_allocate))
 (export "__mm_free" (func $assembly/index/__mm_free))
 (export "__rt_visit" (func $assembly/index/__rt_visit))
 (export "__gc_retain" (func $assembly/index/__gc_retain))
 (export "__gc_release" (func $assembly/index/__gc_release))
 (export "__gc_collect" (func $assembly/index/collectCycles))
 (func $assembly/index/setTail (; 1 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=1568
 )
 (func $assembly/index/setSLMap (; 2 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $assembly/index/setHead (; 3 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
 (func $assembly/index/getTail (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=1568
 )
 (func $assembly/index/getRight (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $assembly/index/fls<usize> (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $assembly/index/getHead (; 7 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $assembly/index/getSLMap (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $assembly/index/removeBlock (; 9 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   call $assembly/index/fls<usize>
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
  call $assembly/index/getHead
  i32.eq
  if
   local.get $0
   local.get $4
   local.get $5
   local.get $7
   call $assembly/index/setHead
   local.get $7
   i32.eqz
   if
    local.get $0
    local.get $4
    call $assembly/index/getSLMap
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
    call $assembly/index/setSLMap
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
 (func $assembly/index/getLeft (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $assembly/index/insertBlock (; 11 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  call $assembly/index/getRight
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
    call $assembly/index/removeBlock
    local.get $1
    local.get $2
    i32.const 3
    i32.and
    local.get $5
    i32.or
    local.tee $2
    i32.store
    local.get $1
    call $assembly/index/getRight
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
   call $assembly/index/getLeft
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
    call $assembly/index/removeBlock
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
   call $assembly/index/fls<usize>
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
  call $assembly/index/getHead
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
  call $assembly/index/setHead
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
  call $assembly/index/getSLMap
  i32.const 1
  local.get $10
  i32.shl
  i32.or
  call $assembly/index/setSLMap
 )
 (func $assembly/index/addMemory (; 12 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  call $assembly/index/getTail
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
  call $assembly/index/setTail
  local.get $0
  local.get $7
  call $assembly/index/insertBlock
  i32.const 1
 )
 (func $assembly/index/initialize (; 13 ;) (type $FUNCSIG$i) (result i32)
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
  call $assembly/index/setTail
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
     call $assembly/index/setSLMap
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
       call $assembly/index/setHead
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
  call $assembly/index/addMemory
  drop
  local.get $3
 )
 (func $assembly/index/ffs<usize> (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $assembly/index/ffs<u32> (; 15 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $assembly/index/searchBlock (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    call $assembly/index/fls<usize>
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
   call $assembly/index/fls<usize>
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
  call $assembly/index/getSLMap
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
    call $assembly/index/ffs<usize>
    local.set $2
    local.get $0
    local.get $2
    call $assembly/index/getSLMap
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
    call $assembly/index/ffs<u32>
    call $assembly/index/getHead
    local.set $6
   end
  else   
   local.get $0
   local.get $2
   local.get $5
   call $assembly/index/ffs<u32>
   call $assembly/index/getHead
   local.set $6
  end
  local.get $6
 )
 (func $assembly/index/growMemory (; 17 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  call $assembly/index/addMemory
  drop
 )
 (func $assembly/index/prepareBlock (; 18 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  call $assembly/index/removeBlock
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
   call $assembly/index/insertBlock
  else   
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   i32.store
   local.get $1
   call $assembly/index/getRight
   local.get $1
   call $assembly/index/getRight
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
 (func $assembly/index/__mm_allocate (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $assembly/index/ROOT
  local.set $1
  local.get $1
  i32.eqz
  if
   call $assembly/index/initialize
   local.tee $1
   global.set $assembly/index/ROOT
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
  call $assembly/index/searchBlock
  local.set $4
  local.get $4
  i32.eqz
  if
   local.get $1
   local.get $0
   call $assembly/index/growMemory
   local.get $1
   local.get $0
   call $assembly/index/searchBlock
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
  call $assembly/index/prepareBlock
 )
 (func $assembly/index/freeBlock (; 20 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  call $assembly/index/insertBlock
 )
 (func $assembly/index/__mm_free (; 21 ;) (type $FUNCSIG$vi) (param $0 i32)
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
   global.get $assembly/index/ROOT
   local.set $1
   local.get $1
   if
    local.get $1
    local.get $0
    i32.const 16
    i32.sub
    call $assembly/index/freeBlock
   end
  end
 )
 (func $assembly/index/__rt_visit_members (; 22 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  unreachable
 )
 (func $assembly/index/__rt_flags (; 23 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  unreachable
 )
 (func $~lib/memory/memory.allocate (; 24 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  i32.const 80
  i32.const 61
  i32.const 9
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/memory/memory.copy (; 25 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|0
      loop $continue|0
       local.get $0
       i32.const 7
       i32.and
       if
        block
         local.get $2
         i32.eqz
         if
          br $~lib/util/memory/memmove|inlined.0
         end
         local.get $2
         i32.const 1
         i32.sub
         local.set $2
         block (result i32)
          local.get $0
          local.tee $5
          i32.const 1
          i32.add
          local.set $0
          local.get $5
         end
         block (result i32)
          local.get $1
          local.tee $5
          i32.const 1
          i32.add
          local.set $1
          local.get $5
         end
         i32.load8_u
         i32.store8
        end
        br $continue|0
       end
      end
     end
     block $break|1
      loop $continue|1
       local.get $2
       i32.const 8
       i32.ge_u
       if
        block
         local.get $0
         local.get $1
         i64.load
         i64.store
         local.get $2
         i32.const 8
         i32.sub
         local.set $2
         local.get $0
         i32.const 8
         i32.add
         local.set $0
         local.get $1
         i32.const 8
         i32.add
         local.set $1
        end
        br $continue|1
       end
      end
     end
    end
    block $break|2
     loop $continue|2
      local.get $2
      if
       block
        block (result i32)
         local.get $0
         local.tee $5
         i32.const 1
         i32.add
         local.set $0
         local.get $5
        end
        block (result i32)
         local.get $1
         local.tee $5
         i32.const 1
         i32.add
         local.set $1
         local.get $5
        end
        i32.load8_u
        i32.store8
        local.get $2
        i32.const 1
        i32.sub
        local.set $2
       end
       br $continue|2
      end
     end
    end
   else    
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|3
      loop $continue|3
       local.get $0
       local.get $2
       i32.add
       i32.const 7
       i32.and
       if
        block
         local.get $2
         i32.eqz
         if
          br $~lib/util/memory/memmove|inlined.0
         end
         local.get $0
         local.get $2
         i32.const 1
         i32.sub
         local.tee $2
         i32.add
         local.get $1
         local.get $2
         i32.add
         i32.load8_u
         i32.store8
        end
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       local.get $2
       i32.const 8
       i32.ge_u
       if
        block
         local.get $2
         i32.const 8
         i32.sub
         local.set $2
         local.get $0
         local.get $2
         i32.add
         local.get $1
         local.get $2
         i32.add
         i64.load
         i64.store
        end
        br $continue|4
       end
      end
     end
    end
    block $break|5
     loop $continue|5
      local.get $2
      if
       local.get $0
       local.get $2
       i32.const 1
       i32.sub
       local.tee $2
       i32.add
       local.get $1
       local.get $2
       i32.add
       i32.load8_u
       i32.store8
       br $continue|5
      end
     end
    end
   end
  end
 )
 (func $assembly/index/growRoots (; 26 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $assembly/index/ROOTS
  local.set $0
  global.get $assembly/index/CUR
  local.get $0
  i32.sub
  local.set $1
  local.get $1
  i32.const 2
  i32.mul
  local.tee $2
  i32.const 64
  i32.const 2
  i32.shl
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  local.set $4
  local.get $4
  call $~lib/memory/memory.allocate
  local.set $5
  local.get $5
  local.get $0
  local.get $1
  call $~lib/memory/memory.copy
  local.get $5
  global.set $assembly/index/ROOTS
  local.get $5
  local.get $1
  i32.add
  global.set $assembly/index/CUR
  local.get $5
  local.get $4
  i32.add
  global.set $assembly/index/END
 )
 (func $assembly/index/appendRoot (; 27 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  global.get $assembly/index/CUR
  local.set $1
  local.get $1
  global.get $assembly/index/END
  i32.ge_u
  if
   call $assembly/index/growRoots
   global.get $assembly/index/CUR
   local.set $1
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 1
  i32.add
  global.set $assembly/index/CUR
 )
 (func $assembly/index/decrement (; 28 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.and
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 1
   call $assembly/index/__rt_visit_members
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
   if
    global.get $assembly/index/ROOT
    local.get $0
    call $assembly/index/freeBlock
   else    
    local.get $0
    i32.const -2147483648
    i32.const 0
    i32.or
    i32.const 0
    i32.or
    i32.store offset=4
   end
  else   
   local.get $2
   i32.const 0
   i32.gt_u
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 640
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   call $assembly/index/__rt_flags
   global.get $assembly/index/ACYCLIC_FLAG
   i32.and
   i32.eqz
   if
    local.get $0
    i32.const -2147483648
    i32.const 805306368
    i32.or
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
    local.get $1
    i32.const -2147483648
    i32.and
    i32.eqz
    if
     local.get $0
     call $assembly/index/appendRoot
    end
   else    
    local.get $0
    local.get $1
    i32.const 268435455
    i32.const -1
    i32.xor
    i32.and
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
   end
  end
 )
 (func $assembly/index/markGray (; 29 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.ne
  if
   local.get $0
   local.get $1
   i32.const 1879048192
   i32.const -1
   i32.xor
   i32.and
   i32.const 268435456
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 2
   call $assembly/index/__rt_visit_members
  end
 )
 (func $assembly/index/scanBlack (; 30 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1879048192
  i32.const -1
  i32.xor
  i32.and
  i32.const 0
  i32.or
  i32.store offset=4
  local.get $0
  i32.const 4
  call $assembly/index/__rt_visit_members
 )
 (func $assembly/index/scan (; 31 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.eq
  if
   local.get $1
   i32.const 268435455
   i32.and
   i32.const 0
   i32.gt_u
   if
    local.get $0
    call $assembly/index/scanBlack
   else    
    local.get $0
    local.get $1
    i32.const 1879048192
    i32.const -1
    i32.xor
    i32.and
    i32.const 536870912
    i32.or
    i32.store offset=4
    local.get $0
    i32.const 3
    call $assembly/index/__rt_visit_members
   end
  end
 )
 (func $assembly/index/collectWhite (; 32 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 536870912
  i32.eq
  if (result i32)
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  if
   local.get $0
   i32.const 5
   call $assembly/index/__rt_visit_members
  end
  global.get $assembly/index/ROOT
  local.get $0
  call $assembly/index/freeBlock
 )
 (func $assembly/index/__rt_visit (; 33 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        block $case0|0
         local.get $1
         local.set $2
         local.get $2
         i32.const 1
         i32.eq
         br_if $case0|0
         local.get $2
         i32.const 2
         i32.eq
         br_if $case1|0
         local.get $2
         i32.const 3
         i32.eq
         br_if $case2|0
         local.get $2
         i32.const 4
         i32.eq
         br_if $case3|0
         local.get $2
         i32.const 5
         i32.eq
         br_if $case4|0
         br $case5|0
        end
        block
         local.get $0
         call $assembly/index/decrement
         br $break|0
         unreachable
        end
        unreachable
       end
       block
        local.get $0
        i32.load offset=4
        i32.const 268435455
        i32.and
        i32.const 0
        i32.gt_u
        i32.eqz
        if
         i32.const 0
         i32.const 24
         i32.const 595
         i32.const 17
         call $~lib/builtins/abort
         unreachable
        end
        local.get $0
        local.get $0
        i32.load offset=4
        i32.const 1
        i32.sub
        i32.store offset=4
        local.get $0
        call $assembly/index/markGray
        br $break|0
        unreachable
       end
       unreachable
      end
      block
       local.get $0
       call $assembly/index/scan
       br $break|0
       unreachable
      end
      unreachable
     end
     block
      local.get $0
      i32.load offset=4
      local.set $2
      local.get $2
      i32.const 268435455
      i32.const -1
      i32.xor
      i32.and
      local.get $2
      i32.const 1
      i32.add
      i32.const 268435455
      i32.const -1
      i32.xor
      i32.and
      i32.eq
      i32.eqz
      if
       i32.const 0
       i32.const 24
       i32.const 606
       i32.const 6
       call $~lib/builtins/abort
       unreachable
      end
      local.get $0
      local.get $2
      i32.const 1
      i32.add
      i32.store offset=4
      local.get $2
      i32.const 1879048192
      i32.and
      i32.const 0
      i32.ne
      if
       local.get $0
       call $assembly/index/scanBlack
      end
      br $break|0
      unreachable
     end
     unreachable
    end
    block
     local.get $0
     call $assembly/index/collectWhite
     br $break|0
     unreachable
    end
    unreachable
   end
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 617
    i32.const 24
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $assembly/index/increment (; 34 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 624
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.store offset=4
 )
 (func $assembly/index/__gc_retain (; 35 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  if
   local.get $0
   i32.const 16
   i32.sub
   call $assembly/index/increment
  end
 )
 (func $assembly/index/__gc_release (; 36 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  if
   local.get $0
   i32.const 16
   i32.sub
   call $assembly/index/decrement
  end
 )
 (func $assembly/index/collectCycles (; 37 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $assembly/index/ROOTS
  local.set $0
  local.get $0
  local.set $1
  block $break|0
   block
    local.get $1
    local.set $2
    global.get $assembly/index/CUR
    local.set $3
   end
   loop $repeat|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     local.get $2
     i32.load
     local.set $4
     local.get $4
     i32.load offset=4
     local.set $5
     local.get $5
     i32.const 1879048192
     i32.and
     i32.const 805306368
     i32.eq
     if (result i32)
      local.get $5
      i32.const 268435455
      i32.and
      i32.const 0
      i32.gt_u
     else      
      i32.const 0
     end
     if
      local.get $4
      call $assembly/index/markGray
      local.get $1
      local.get $4
      i32.store
      local.get $1
      i32.const 4
      i32.add
      local.set $1
     else      
      local.get $5
      i32.const 1879048192
      i32.and
      i32.const 0
      i32.eq
      if (result i32)
       local.get $5
       i32.const 268435455
       i32.and
       i32.eqz
      else       
       i32.const 0
      end
      if
       global.get $assembly/index/ROOT
       local.get $4
       call $assembly/index/freeBlock
      else       
       local.get $4
       local.get $5
       i32.const -2147483648
       i32.const -1
       i32.xor
       i32.and
       i32.store offset=4
      end
     end
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $1
  global.set $assembly/index/CUR
  block $break|1
   local.get $0
   local.set $3
   loop $repeat|1
    local.get $3
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|1
    local.get $3
    i32.load
    call $assembly/index/scan
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $repeat|1
    unreachable
   end
   unreachable
  end
  block $break|2
   local.get $0
   local.set $3
   loop $repeat|2
    local.get $3
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|2
    block
     local.get $3
     i32.load
     local.set $2
     local.get $2
     local.get $2
     i32.load offset=4
     i32.const -2147483648
     i32.const -1
     i32.xor
     i32.and
     i32.store offset=4
     local.get $2
     call $assembly/index/collectWhite
    end
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  global.set $assembly/index/CUR
 )
 (func $null (; 38 ;) (type $FUNCSIG$v)
 )
)
