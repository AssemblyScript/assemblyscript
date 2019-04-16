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
 (data (i32.const 8) "\10\00\00\00\"")
 (data (i32.const 24) "a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00d\00e\00x\00.\00t\00s")
 (data (i32.const 64) "\10\00\00\00\1c")
 (data (i32.const 80) "~\00l\00i\00b\00/\00m\00e\00m\00o\00r\00y\00.\00t\00s")
 (global $assembly/index/ROOT (mut i32) (i32.const 0))
 (global $assembly/index/CUR (mut i32) (i32.const 0))
 (global $assembly/index/ROOTS (mut i32) (i32.const 0))
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
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store offset=4
 )
 (func $assembly/index/setHead (; 3 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $0
  local.get $1
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $3
  i32.store offset=96
 )
 (func $assembly/index/getRight (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.add
  local.get $0
  i32.load
  i32.const -4
  i32.and
  i32.add
 )
 (func $assembly/index/fls<usize> (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 31
  local.get $0
  i32.clz
  i32.sub
 )
 (func $assembly/index/getHead (; 6 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
 )
 (func $assembly/index/getSLMap (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
 )
 (func $assembly/index/removeBlock (; 8 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  i32.const -4
  i32.and
  local.tee $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 16
   i32.div_u
   local.set $4
   i32.const 0
  else   
   local.get $2
   local.get $2
   call $assembly/index/fls<usize>
   local.tee $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
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
  call $assembly/index/getHead
  local.get $1
  i32.eq
  if
   local.get $0
   local.get $3
   local.get $4
   local.get $2
   call $assembly/index/setHead
   local.get $2
   i32.eqz
   if
    local.get $0
    local.get $3
    local.get $0
    local.get $3
    call $assembly/index/getSLMap
    i32.const 1
    local.get $4
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $1
    call $assembly/index/setSLMap
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
 (func $assembly/index/insertBlock (; 9 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $1
  call $assembly/index/getRight
  local.tee $4
  i32.load
  local.tee $5
  i32.const 1
  i32.and
  if
   local.get $3
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const -4
   i32.and
   i32.add
   local.tee $2
   i32.const 1073741824
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $assembly/index/removeBlock
    local.get $1
    local.get $3
    i32.const 3
    i32.and
    local.get $2
    i32.or
    local.tee $3
    i32.store
    local.get $1
    call $assembly/index/getRight
    local.tee $4
    i32.load
    local.set $5
   end
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $2
   i32.load
   local.tee $6
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $7
   i32.const 1073741824
   i32.lt_u
   if
    local.get $0
    local.get $2
    call $assembly/index/removeBlock
    local.get $2
    local.get $6
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $3
    i32.store
    local.get $2
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $0
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 16
   i32.div_u
   local.set $3
   i32.const 0
  else   
   local.get $2
   local.get $2
   call $assembly/index/fls<usize>
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $3
   local.get $2
   i32.const 7
   i32.sub
  end
  local.tee $2
  local.get $3
  call $assembly/index/getHead
  local.set $4
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $4
  i32.store offset=20
  local.get $4
  if
   local.get $4
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.get $2
  local.get $3
  local.get $1
  call $assembly/index/setHead
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $2
  local.get $0
  local.get $2
  call $assembly/index/getSLMap
  i32.const 1
  local.get $3
  i32.shl
  i32.or
  call $assembly/index/setSLMap
 )
 (func $assembly/index/addMemory (; 10 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  block (result i32)
   local.get $0
   i32.load offset=1568
   local.tee $2
   if
    local.get $1
    i32.const 16
    i32.sub
    local.get $2
    i32.eq
    if
     local.get $2
     i32.load
     local.set $3
     local.get $1
     i32.const 16
     i32.sub
     local.set $1
    end
   end
   local.get $1
  end
  i32.sub
  local.tee $2
  i32.const 48
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
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
  call $assembly/index/setTail
  local.get $0
  local.get $1
  call $assembly/index/insertBlock
 )
 (func $assembly/index/initialize (; 11 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 112
  local.tee $3
  i32.const 67107
  i32.add
  i32.const -65536
  i32.and
  i32.const 16
  i32.shr_u
  local.tee $1
  current_memory
  local.tee $0
  i32.gt_s
  if (result i32)
   local.get $1
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
  local.get $3
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  call $assembly/index/setTail
  loop $repeat|0
   block $break|0
    local.get $2
    i32.const 23
    i32.ge_u
    br_if $break|0
    local.get $0
    local.get $2
    i32.const 0
    call $assembly/index/setSLMap
    i32.const 0
    local.set $1
    loop $repeat|1
     block $break|1
      local.get $1
      i32.const 16
      i32.ge_u
      br_if $break|1
      local.get $0
      local.get $2
      local.get $1
      i32.const 0
      call $assembly/index/setHead
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $repeat|1
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
  local.get $0
  local.get $3
  i32.const 1587
  i32.add
  i32.const -16
  i32.and
  current_memory
  i32.const 16
  i32.shl
  call $assembly/index/addMemory
  local.get $0
 )
 (func $assembly/index/searchBlock (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 16
   i32.div_u
   local.set $1
   i32.const 0
  else   
   block (result i32)
    local.get $1
    i32.const 536870912
    i32.lt_u
    if
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
     local.set $1
    end
    local.get $1
   end
   call $assembly/index/fls<usize>
   local.set $2
   local.get $1
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
  end
  local.tee $2
  call $assembly/index/getSLMap
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $2
   local.get $1
   i32.ctz
   call $assembly/index/getHead
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
    i32.ctz
    local.tee $1
    local.get $0
    local.get $1
    call $assembly/index/getSLMap
    i32.ctz
    call $assembly/index/getHead
   else    
    i32.const 0
   end
  end
 )
 (func $assembly/index/growMemory (; 13 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  current_memory
  local.tee $2
  local.tee $3
  local.get $1
  i32.const 65535
  i32.add
  i32.const -65536
  i32.and
  i32.const 16
  i32.shr_u
  local.tee $1
  local.tee $4
  local.get $3
  local.get $4
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
  call $assembly/index/addMemory
 )
 (func $assembly/index/prepareBlock (; 14 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $0
  local.get $1
  call $assembly/index/removeBlock
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
   local.tee $2
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $2
   call $assembly/index/insertBlock
  else   
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   call $assembly/index/getRight
   local.get $1
   call $assembly/index/getRight
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $1
  i32.const 16
  i32.add
 )
 (func $assembly/index/__mm_allocate (; 15 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $assembly/index/ROOT
  local.tee $2
  i32.eqz
  if
   call $assembly/index/initialize
   local.tee $2
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
  local.get $2
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  i32.const 16
  local.tee $1
  local.get $0
  local.get $1
  i32.gt_u
  select
  local.tee $1
  call $assembly/index/searchBlock
  local.tee $0
  i32.eqz
  if
   local.get $2
   local.get $1
   call $assembly/index/growMemory
   local.get $2
   local.get $1
   call $assembly/index/searchBlock
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  local.get $1
  call $assembly/index/prepareBlock
 )
 (func $assembly/index/freeBlock (; 16 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $assembly/index/insertBlock
 )
 (func $assembly/index/__mm_free (; 17 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  if
   global.get $assembly/index/ROOT
   local.tee $1
   if
    local.get $1
    local.get $0
    i32.const 16
    i32.sub
    call $assembly/index/freeBlock
   end
  end
 )
 (func $assembly/index/decrement (; 18 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.load offset=4
  i32.const 268435455
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
  if
   local.get $0
   i32.load offset=8
   drop
  end
  unreachable
 )
 (func $assembly/index/markGray (; 19 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
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
 )
 (func $assembly/index/scanBlack (; 20 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const -1879048193
  i32.and
  i32.store offset=4
  unreachable
 )
 (func $assembly/index/scan (; 21 ;) (type $FUNCSIG$vi) (param $0 i32)
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
    call $assembly/index/scanBlack
   else    
    local.get $0
    local.get $1
    i32.const -1879048193
    i32.and
    i32.const 536870912
    i32.or
    i32.store offset=4
    unreachable
   end
  end
 )
 (func $assembly/index/collectWhite (; 22 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const -2147483648
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 536870912
  i32.eq
  select
  if
   unreachable
  end
  global.get $assembly/index/ROOT
  local.get $0
  call $assembly/index/freeBlock
 )
 (func $assembly/index/__rt_visit (; 23 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  block $break|0
   block $case4|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        local.get $1
        i32.const 1
        i32.sub
        br_table $case0|0 $case1|0 $case2|0 $case3|0 $case4|0 $break|0
       end
       local.get $0
       call $assembly/index/decrement
       br $break|0
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
     end
     local.get $0
     call $assembly/index/scan
     br $break|0
    end
    local.get $0
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.const 1
    i32.add
    i32.store offset=4
    local.get $1
    i32.const 1879048192
    i32.and
    if
     local.get $0
     call $assembly/index/scanBlack
    end
    br $break|0
   end
   local.get $0
   call $assembly/index/collectWhite
  end
 )
 (func $assembly/index/__gc_retain (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $0
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
  end
 )
 (func $assembly/index/__gc_release (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  if
   local.get $0
   i32.const 16
   i32.sub
   call $assembly/index/decrement
  end
 )
 (func $assembly/index/collectCycles (; 26 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $assembly/index/ROOTS
  local.tee $5
  local.tee $2
  local.set $3
  global.get $assembly/index/CUR
  local.set $0
  loop $repeat|0
   block $break|0
    local.get $3
    local.get $0
    i32.ge_u
    br_if $break|0
    local.get $3
    i32.load
    local.tee $4
    i32.load offset=4
    local.tee $1
    i32.const 268435455
    i32.and
    i32.const 0
    i32.gt_u
    i32.const 0
    local.get $1
    i32.const 1879048192
    i32.and
    i32.const 805306368
    i32.eq
    select
    if
     local.get $4
     call $assembly/index/markGray
     local.get $2
     local.get $4
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
      global.get $assembly/index/ROOT
      local.get $4
      call $assembly/index/freeBlock
     else      
      local.get $4
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
  global.set $assembly/index/CUR
  local.get $5
  local.set $0
  loop $repeat|1
   block $break|1
    local.get $0
    local.get $2
    i32.ge_u
    br_if $break|1
    local.get $0
    i32.load
    call $assembly/index/scan
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $repeat|1
   end
  end
  local.get $5
  local.set $0
  loop $repeat|2
   block $break|2
    local.get $0
    local.get $2
    i32.ge_u
    br_if $break|2
    local.get $0
    i32.load
    local.tee $1
    local.get $1
    i32.load offset=4
    i32.const 2147483647
    i32.and
    i32.store offset=4
    local.get $1
    call $assembly/index/collectWhite
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $repeat|2
   end
  end
  local.get $5
  global.set $assembly/index/CUR
 )
 (func $null (; 27 ;) (type $FUNCSIG$v)
  nop
 )
)
