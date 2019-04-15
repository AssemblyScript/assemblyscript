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
 (data (i32.const 8) "\10\00\00\00\1e")
 (data (i32.const 24) "r\00u\00n\00t\00i\00m\00e\00/\00a\00s\00r\00t\00.\00t\00s")
 (data (i32.const 56) "\10\00\00\00\1c")
 (data (i32.const 72) "~\00l\00i\00b\00/\00m\00e\00m\00o\00r\00y\00.\00t\00s")
 (global $runtime/asrt/ROOT (mut i32) (i32.const 0))
 (global $runtime/asrt/ROOTS (mut i32) (i32.const 0))
 (global $runtime/asrt/CUR (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "__mm_allocate" (func $runtime/asrt/__mm_allocate))
 (export "__mm_free" (func $runtime/asrt/__mm_free))
 (export "__rt_visit" (func $runtime/asrt/__rt_visit))
 (export "__gc_retain" (func $runtime/asrt/__gc_retain))
 (export "__gc_release" (func $runtime/asrt/__gc_release))
 (export "__gc_collect" (func $runtime/asrt/collectCycles))
 (func $runtime/asrt/setSLMap (; 1 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  i32.const 22
  i32.ge_u
  if
   i32.const 0
   i32.const 24
   i32.const 167
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $2
  i32.store offset=4
 )
 (func $runtime/asrt/setHead (; 2 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $2
  i32.const 32
  i32.lt_u
  i32.const 0
  local.get $1
  i32.const 22
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 181
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $3
  i32.store offset=96
 )
 (func $runtime/asrt/getRight (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.tee $1
  i32.const -4
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
  i32.const -4
  i32.and
  i32.add
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 114
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $runtime/asrt/fls<usize> (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
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
 (func $runtime/asrt/getHead (; 5 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.const 32
  i32.lt_u
  i32.const 0
  local.get $1
  i32.const 22
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 172
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
 )
 (func $runtime/asrt/getSLMap (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 22
  i32.ge_u
  if
   i32.const 0
   i32.const 24
   i32.const 162
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
 )
 (func $runtime/asrt/removeBlock (; 7 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
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
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741824
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 264
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 8
   i32.div_u
   local.set $4
   i32.const 0
  else   
   local.get $2
   local.get $2
   call $runtime/asrt/fls<usize>
   local.tee $3
   i32.const 5
   i32.sub
   i32.shr_u
   i32.const 32
   i32.xor
   local.set $4
   local.get $3
   i32.const 7
   i32.sub
  end
  local.set $3
  local.get $1
  i32.load offset=20
  local.set $2
  local.get $1
  i32.load offset=16
  local.tee $5
  if
   local.get $5
   local.get $2
   i32.store offset=20
  end
  local.get $2
  if
   local.get $2
   local.get $5
   i32.store offset=16
  end
  local.get $0
  local.get $3
  local.get $4
  call $runtime/asrt/getHead
  local.get $1
  i32.eq
  if
   local.get $0
   local.get $3
   local.get $4
   local.get $2
   call $runtime/asrt/setHead
   local.get $2
   i32.eqz
   if
    local.get $0
    local.get $3
    local.get $0
    local.get $3
    call $runtime/asrt/getSLMap
    i32.const 1
    local.get $4
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $1
    call $runtime/asrt/setSLMap
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $3
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $runtime/asrt/getLeft (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 105
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $runtime/asrt/insertBlock (; 9 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
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
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 199
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $runtime/asrt/getRight
  local.tee $5
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $5
   call $runtime/asrt/removeBlock
   local.get $1
   local.get $4
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $3
   i32.add
   local.tee $3
   i32.store
   local.get $1
   call $runtime/asrt/getRight
   local.tee $5
   i32.load
   local.set $4
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   call $runtime/asrt/getLeft
   local.tee $1
   i32.load
   local.tee $2
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 217
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $runtime/asrt/removeBlock
   local.get $1
   local.get $3
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $2
   i32.add
   local.tee $3
   i32.store
  end
  local.get $5
  local.get $4
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741824
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 230
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 231
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 8
   i32.div_u
   local.set $2
   i32.const 0
  else   
   local.get $2
   local.get $2
   call $runtime/asrt/fls<usize>
   local.tee $3
   i32.const 5
   i32.sub
   i32.shr_u
   i32.const 32
   i32.xor
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
  end
  local.tee $4
  local.get $2
  call $runtime/asrt/getHead
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $3
  i32.store offset=20
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.get $4
  local.get $2
  local.get $1
  call $runtime/asrt/setHead
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $4
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $4
  local.get $0
  local.get $4
  call $runtime/asrt/getSLMap
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  call $runtime/asrt/setSLMap
 )
 (func $runtime/asrt/addMemory (; 10 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  i32.const 7
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  i32.const 7
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  local.get $2
  i32.le_u
  select
  select
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 374
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=2912
  local.tee $3
  if
   local.get $1
   i32.const 16
   i32.sub
   local.get $3
   i32.eq
   if (result i32)
    local.get $3
    i32.load
    local.set $4
    local.get $1
    i32.const 16
    i32.sub
   else    
    i32.const 0
    i32.const 24
    i32.const 391
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.set $1
  else   
   local.get $1
   local.get $0
   i32.const 2916
   i32.add
   i32.lt_u
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
  local.tee $2
  i32.const 48
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 32
  i32.sub
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $2
  i32.add
  i32.const 16
  i32.sub
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=2912
  local.get $0
  local.get $1
  call $runtime/asrt/insertBlock
 )
 (func $runtime/asrt/initialize (; 11 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 1
  current_memory
  local.tee $0
  i32.gt_s
  if (result i32)
   i32.const 1
   local.get $0
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
  i32.const 104
  i32.const 0
  i32.store
  i32.const 3016
  i32.const 0
  i32.store
  i32.const 0
  local.set $0
  loop $repeat|0
   local.get $0
   i32.const 22
   i32.lt_u
   if
    i32.const 104
    local.get $0
    i32.const 0
    call $runtime/asrt/setSLMap
    i32.const 0
    local.set $1
    loop $repeat|1
     local.get $1
     i32.const 32
     i32.lt_u
     if
      i32.const 104
      local.get $0
      local.get $1
      i32.const 0
      call $runtime/asrt/setHead
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $repeat|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  i32.const 104
  i32.const 3024
  current_memory
  i32.const 16
  i32.shl
  call $runtime/asrt/addMemory
  i32.const 104
 )
 (func $runtime/asrt/ffs<usize> (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
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
 (func $runtime/asrt/searchBlock (; 13 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 8
   i32.div_u
  else   
   local.get $1
   call $runtime/asrt/fls<usize>
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 5
   i32.sub
   i32.shr_u
   i32.const 32
   i32.xor
   local.tee $1
   i32.const 31
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    i32.add
   else    
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    i32.const 0
   end
  end
  local.set $1
  local.get $0
  local.get $2
  call $runtime/asrt/getSLMap
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $2
   local.get $1
   call $runtime/asrt/ffs<usize>
   call $runtime/asrt/getHead
  else   
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    call $runtime/asrt/ffs<usize>
    local.tee $1
    call $runtime/asrt/getSLMap
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 24
     i32.const 331
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $1
    local.get $2
    call $runtime/asrt/ffs<usize>
    call $runtime/asrt/getHead
   else    
    i32.const 0
   end
  end
 )
 (func $runtime/asrt/growMemory (; 14 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  current_memory
  local.tee $2
  local.get $1
  i32.const 65535
  i32.add
  i32.const -65536
  i32.and
  i32.const 16
  i32.shr_u
  local.tee $1
  local.get $2
  local.get $1
  i32.gt_s
  select
  grow_memory
  i32.const 0
  i32.lt_s
  if
   local.get $1
   grow_memory
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  current_memory
  i32.const 16
  i32.shl
  call $runtime/asrt/addMemory
 )
 (func $runtime/asrt/prepareBlock (; 15 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
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
   i32.const 346
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $runtime/asrt/removeBlock
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $3
   i32.const 2
   i32.and
   local.get $2
   i32.or
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $2
   i32.add
   local.tee $2
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $2
   call $runtime/asrt/insertBlock
  else   
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   call $runtime/asrt/getRight
   local.get $1
   call $runtime/asrt/getRight
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $1
  i32.const 16
  i32.add
 )
 (func $runtime/asrt/__mm_allocate (; 16 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $runtime/asrt/ROOT
  local.tee $1
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
  local.get $1
  local.get $0
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  local.tee $0
  i32.const 16
  local.get $0
  i32.const 16
  i32.gt_u
  select
  local.tee $2
  call $runtime/asrt/searchBlock
  local.tee $0
  i32.eqz
  if
   local.get $1
   local.get $2
   call $runtime/asrt/growMemory
   local.get $1
   local.get $2
   call $runtime/asrt/searchBlock
   local.tee $0
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
  local.get $0
  i32.load
  i32.const -4
  i32.and
  local.get $2
  i32.lt_u
  if
   i32.const 0
   i32.const 24
   i32.const 492
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $1
  local.get $0
  local.get $2
  call $runtime/asrt/prepareBlock
 )
 (func $runtime/asrt/freeBlock (; 17 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
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
  call $runtime/asrt/insertBlock
 )
 (func $runtime/asrt/__mm_free (; 18 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  if
   local.get $0
   i32.const 7
   i32.and
   if
    i32.const 0
    i32.const 24
    i32.const 503
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
   global.get $runtime/asrt/ROOT
   local.tee $1
   if
    local.get $1
    local.get $0
    i32.const 16
    i32.sub
    call $runtime/asrt/freeBlock
   end
  end
 )
 (func $runtime/asrt/decrement (; 19 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.const 268435455
  i32.and
  local.tee $1
  i32.const 1
  i32.eq
  if
   unreachable
  else   
   local.get $1
   i32.const 0
   i32.le_u
   if
    i32.const 0
    i32.const 24
    i32.const 642
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   drop
   unreachable
  end
  unreachable
 )
 (func $runtime/asrt/scan (; 20 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
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
    local.get $0
    i32.load offset=4
    i32.const -1879048193
    i32.and
    i32.store offset=4
   else    
    local.get $0
    local.get $1
    i32.const -1879048193
    i32.and
    i32.const 536870912
    i32.or
    i32.store offset=4
   end
   unreachable
  end
 )
 (func $runtime/asrt/collectWhite (; 21 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
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
   unreachable
  end
  global.get $runtime/asrt/ROOT
  local.get $0
  call $runtime/asrt/freeBlock
 )
 (func $runtime/asrt/__rt_visit (; 22 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        local.get $1
        i32.const 1
        i32.ne
        if
         local.get $1
         i32.const 2
         i32.eq
         br_if $case1|0
         block $tablify|0
          local.get $1
          i32.const 3
          i32.sub
          br_table $case2|0 $case3|0 $case4|0 $tablify|0
         end
         br $case5|0
        end
        local.get $0
        call $runtime/asrt/decrement
        br $break|0
       end
       local.get $0
       i32.load offset=4
       i32.const 268435455
       i32.and
       i32.const 0
       i32.le_u
       if
        i32.const 0
        i32.const 24
        i32.const 597
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
       i32.load offset=4
       local.tee $1
       i32.const 1879048192
       i32.and
       i32.const 268435456
       i32.ne
       if
        local.get $0
        local.get $1
        i32.const -1879048193
        i32.and
        i32.const 268435456
        i32.or
        i32.store offset=4
        unreachable
       end
       br $break|0
      end
      local.get $0
      call $runtime/asrt/scan
      br $break|0
     end
     local.get $0
     i32.load offset=4
     local.tee $1
     i32.const -268435456
     i32.and
     local.get $1
     i32.const 1
     i32.add
     i32.const -268435456
     i32.and
     i32.ne
     if
      i32.const 0
      i32.const 24
      i32.const 608
      i32.const 6
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $1
     i32.const 1879048192
     i32.and
     if
      local.get $0
      local.get $0
      i32.load offset=4
      i32.const -1879048193
      i32.and
      i32.store offset=4
      unreachable
     end
     br $break|0
    end
    local.get $0
    call $runtime/asrt/collectWhite
    br $break|0
   end
   i32.const 0
   i32.const 24
   i32.const 619
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/asrt/increment (; 23 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const -268435456
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const -268435456
  i32.and
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 626
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
 (func $runtime/asrt/__gc_retain (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  if
   local.get $0
   i32.const 16
   i32.sub
   call $runtime/asrt/increment
  end
 )
 (func $runtime/asrt/__gc_release (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  if
   local.get $0
   i32.const 16
   i32.sub
   call $runtime/asrt/decrement
  end
 )
 (func $runtime/asrt/collectCycles (; 26 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $runtime/asrt/ROOTS
  local.tee $4
  local.tee $2
  local.set $3
  global.get $runtime/asrt/CUR
  local.set $5
  loop $repeat|0
   local.get $3
   local.get $5
   i32.lt_u
   if
    local.get $3
    i32.load
    local.tee $0
    i32.load offset=4
    local.tee $1
    i32.const 1879048192
    i32.and
    i32.const 805306368
    i32.eq
    if (result i32)
     local.get $1
     i32.const 268435455
     i32.and
     i32.const 0
     i32.gt_u
    else     
     i32.const 0
    end
    if
     local.get $0
     i32.load offset=4
     local.tee $1
     i32.const 1879048192
     i32.and
     i32.const 268435456
     i32.ne
     if
      local.get $0
      local.get $1
      i32.const -1879048193
      i32.and
      i32.const 268435456
      i32.or
      i32.store offset=4
      unreachable
     end
     local.get $2
     local.get $0
     i32.store
     local.get $2
     i32.const 4
     i32.add
     local.set $2
    else     
     i32.const 0
     local.get $1
     i32.const 268435455
     i32.and
     i32.eqz
     local.get $1
     i32.const 1879048192
     i32.and
     select
     if
      global.get $runtime/asrt/ROOT
      local.get $0
      call $runtime/asrt/freeBlock
     else      
      local.get $0
      local.get $1
      i32.const 2147483647
      i32.and
      i32.store offset=4
     end
    end
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $repeat|0
   end
  end
  local.get $2
  global.set $runtime/asrt/CUR
  local.get $4
  local.set $0
  loop $repeat|1
   local.get $0
   local.get $2
   i32.lt_u
   if
    local.get $0
    i32.load
    call $runtime/asrt/scan
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $repeat|1
   end
  end
  local.get $4
  local.set $0
  loop $repeat|2
   local.get $0
   local.get $2
   i32.lt_u
   if
    local.get $0
    i32.load
    local.tee $1
    local.get $1
    i32.load offset=4
    i32.const 2147483647
    i32.and
    i32.store offset=4
    local.get $1
    call $runtime/asrt/collectWhite
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $repeat|2
   end
  end
  local.get $4
  global.set $runtime/asrt/CUR
 )
 (func $null (; 27 ;) (type $FUNCSIG$v)
  nop
 )
)
