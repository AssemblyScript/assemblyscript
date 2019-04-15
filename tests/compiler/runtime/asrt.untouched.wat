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
 (data (i32.const 8) "\10\00\00\00\1e\00\00\00\00\00\00\00\00\00\00\00r\00u\00n\00t\00i\00m\00e\00/\00a\00s\00r\00t\00.\00t\00s\00")
 (data (i32.const 56) "\10\00\00\00\1c\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00m\00e\00m\00o\00r\00y\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $runtime/asrt/ROOT (mut i32) (i32.const 0))
 (global $runtime/asrt/ACYCLIC_FLAG i32 (i32.const 0))
 (global $runtime/asrt/ROOTS (mut i32) (i32.const 0))
 (global $runtime/asrt/CUR (mut i32) (i32.const 0))
 (global $runtime/asrt/END (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 100))
 (export "memory" (memory $0))
 (export "__mm_allocate" (func $runtime/asrt/__mm_allocate))
 (export "__mm_free" (func $runtime/asrt/__mm_free))
 (export "__rt_visit" (func $runtime/asrt/__rt_visit))
 (export "__gc_retain" (func $runtime/asrt/__gc_retain))
 (export "__gc_release" (func $runtime/asrt/__gc_release))
 (export "__gc_collect" (func $runtime/asrt/collectCycles))
 (func $runtime/asrt/setTail (; 1 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=2912
 )
 (func $runtime/asrt/setSLMap (; 2 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $runtime/asrt/setHead (; 3 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
 (func $runtime/asrt/getTail (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=2912
 )
 (func $runtime/asrt/getRight (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $runtime/asrt/fls<usize> (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 465
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 31
  local.get $0
  i32.clz
  i32.sub
 )
 (func $runtime/asrt/getHead (; 7 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $runtime/asrt/getSLMap (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $runtime/asrt/removeBlock (; 9 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   call $runtime/asrt/fls<usize>
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
  call $runtime/asrt/getHead
  i32.eq
  if
   local.get $0
   local.get $4
   local.get $5
   local.get $7
   call $runtime/asrt/setHead
   local.get $7
   i32.eqz
   if
    local.get $0
    local.get $4
    call $runtime/asrt/getSLMap
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
    call $runtime/asrt/setSLMap
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
 (func $runtime/asrt/getLeft (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $runtime/asrt/insertBlock (; 11 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  call $runtime/asrt/getRight
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
   call $runtime/asrt/removeBlock
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
   call $runtime/asrt/getRight
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
   call $runtime/asrt/getLeft
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
   call $runtime/asrt/removeBlock
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
   call $runtime/asrt/fls<usize>
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
  call $runtime/asrt/getHead
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
  call $runtime/asrt/setHead
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
  call $runtime/asrt/getSLMap
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  call $runtime/asrt/setSLMap
 )
 (func $runtime/asrt/addMemory (; 12 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  call $runtime/asrt/getTail
  local.set $3
  i32.const 0
  local.set $4
  local.get $3
  if
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
     i32.const 389
     i32.const 6
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
    i32.const 393
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
  call $runtime/asrt/setTail
  local.get $0
  local.get $7
  call $runtime/asrt/insertBlock
  i32.const 1
 )
 (func $runtime/asrt/initialize (; 13 ;) (type $FUNCSIG$i) (result i32)
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
  call $runtime/asrt/setTail
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
     call $runtime/asrt/setSLMap
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
       call $runtime/asrt/setHead
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
  call $runtime/asrt/addMemory
  drop
  local.get $3
 )
 (func $runtime/asrt/ffs<usize> (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 459
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.ctz
 )
 (func $runtime/asrt/ffs<u32> (; 15 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 459
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.ctz
 )
 (func $runtime/asrt/searchBlock (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   call $runtime/asrt/fls<usize>
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
  call $runtime/asrt/getSLMap
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
    call $runtime/asrt/ffs<usize>
    local.set $2
    local.get $0
    local.get $2
    call $runtime/asrt/getSLMap
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
    call $runtime/asrt/ffs<u32>
    call $runtime/asrt/getHead
    local.set $5
   end
  else   
   local.get $0
   local.get $2
   local.get $4
   call $runtime/asrt/ffs<u32>
   call $runtime/asrt/getHead
   local.set $5
  end
  local.get $5
 )
 (func $runtime/asrt/growMemory (; 17 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  call $runtime/asrt/addMemory
  drop
 )
 (func $runtime/asrt/prepareBlock (; 18 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  call $runtime/asrt/removeBlock
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
   call $runtime/asrt/insertBlock
  else   
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   i32.store
   local.get $1
   call $runtime/asrt/getRight
   local.get $1
   call $runtime/asrt/getRight
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
 (func $runtime/asrt/__mm_allocate (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $runtime/asrt/ROOT
  local.set $1
  local.get $1
  i32.eqz
  if
   call $runtime/asrt/initialize
   local.tee $1
   global.set $runtime/asrt/ROOT
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
  call $runtime/asrt/searchBlock
  local.set $4
  local.get $4
  i32.eqz
  if
   local.get $1
   local.get $0
   call $runtime/asrt/growMemory
   local.get $1
   local.get $0
   call $runtime/asrt/searchBlock
   local.set $4
   local.get $4
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 488
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
   i32.const 490
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
  call $runtime/asrt/prepareBlock
 )
 (func $runtime/asrt/freeBlock (; 20 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   i32.const 452
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
  call $runtime/asrt/insertBlock
 )
 (func $runtime/asrt/__mm_free (; 21 ;) (type $FUNCSIG$vi) (param $0 i32)
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
    i32.const 501
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   global.get $runtime/asrt/ROOT
   local.set $1
   local.get $1
   if
    local.get $1
    local.get $0
    i32.const 16
    i32.sub
    call $runtime/asrt/freeBlock
   end
  end
 )
 (func $runtime/asrt/__rt_visit_members (; 22 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  unreachable
 )
 (func $runtime/asrt/__rt_flags (; 23 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  unreachable
 )
 (func $~lib/memory/memory.allocate (; 24 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  i32.const 72
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
 (func $runtime/asrt/growRoots (; 26 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $runtime/asrt/ROOTS
  local.set $0
  global.get $runtime/asrt/CUR
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
  global.set $runtime/asrt/ROOTS
  local.get $5
  local.get $1
  i32.add
  global.set $runtime/asrt/CUR
  local.get $5
  local.get $4
  i32.add
  global.set $runtime/asrt/END
 )
 (func $runtime/asrt/appendRoot (; 27 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  global.get $runtime/asrt/CUR
  local.set $1
  local.get $1
  global.get $runtime/asrt/END
  i32.ge_u
  if
   call $runtime/asrt/growRoots
   global.get $runtime/asrt/CUR
   local.set $1
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 1
  i32.add
  global.set $runtime/asrt/CUR
 )
 (func $runtime/asrt/decrement (; 28 ;) (type $FUNCSIG$vi) (param $0 i32)
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
   call $runtime/asrt/__rt_visit_members
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
   if
    global.get $runtime/asrt/ROOT
    local.get $0
    call $runtime/asrt/freeBlock
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
   call $runtime/asrt/__rt_flags
   global.get $runtime/asrt/ACYCLIC_FLAG
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
     call $runtime/asrt/appendRoot
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
 (func $runtime/asrt/markGray (; 29 ;) (type $FUNCSIG$vi) (param $0 i32)
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
   call $runtime/asrt/__rt_visit_members
  end
 )
 (func $runtime/asrt/scanBlack (; 30 ;) (type $FUNCSIG$vi) (param $0 i32)
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
  call $runtime/asrt/__rt_visit_members
 )
 (func $runtime/asrt/scan (; 31 ;) (type $FUNCSIG$vi) (param $0 i32)
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
    call $runtime/asrt/scanBlack
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
    call $runtime/asrt/__rt_visit_members
   end
  end
 )
 (func $runtime/asrt/collectWhite (; 32 ;) (type $FUNCSIG$vi) (param $0 i32)
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
   call $runtime/asrt/__rt_visit_members
  end
  global.get $runtime/asrt/ROOT
  local.get $0
  call $runtime/asrt/freeBlock
 )
 (func $runtime/asrt/__rt_visit (; 33 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
         call $runtime/asrt/decrement
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
        call $runtime/asrt/markGray
        br $break|0
        unreachable
       end
       unreachable
      end
      block
       local.get $0
       call $runtime/asrt/scan
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
       call $runtime/asrt/scanBlack
      end
      br $break|0
      unreachable
     end
     unreachable
    end
    block
     local.get $0
     call $runtime/asrt/collectWhite
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
 (func $runtime/asrt/increment (; 34 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $runtime/asrt/__gc_retain (; 35 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  if
   local.get $0
   i32.const 16
   i32.sub
   call $runtime/asrt/increment
  end
 )
 (func $runtime/asrt/__gc_release (; 36 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  if
   local.get $0
   i32.const 16
   i32.sub
   call $runtime/asrt/decrement
  end
 )
 (func $runtime/asrt/collectCycles (; 37 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $runtime/asrt/ROOTS
  local.set $0
  local.get $0
  local.set $1
  block $break|0
   block
    local.get $1
    local.set $2
    global.get $runtime/asrt/CUR
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
      call $runtime/asrt/markGray
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
       global.get $runtime/asrt/ROOT
       local.get $4
       call $runtime/asrt/freeBlock
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
  global.set $runtime/asrt/CUR
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
    call $runtime/asrt/scan
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
     call $runtime/asrt/collectWhite
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
  global.set $runtime/asrt/CUR
 )
 (func $null (; 38 ;) (type $FUNCSIG$v)
 )
)
