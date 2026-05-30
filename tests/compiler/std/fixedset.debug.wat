(module
 (type $0 (func (param i32 i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func (param i32 i32) (result i32)))
 (type $3 (func (param i32)))
 (type $4 (func))
 (type $5 (func (param i32 i32 i32)))
 (type $6 (func (param i32 i64) (result i32)))
 (type $7 (func (param i32 i32 i32 i32)))
 (type $8 (func (param i32 f32) (result i32)))
 (type $9 (func (param i32 f64) (result i32)))
 (type $10 (func (param i64) (result i32)))
 (type $11 (func (param i32) (result i64)))
 (type $12 (func (param i32 i64)))
 (type $13 (func (param i32 i32 i64)))
 (type $14 (func (param i32 i32 i64) (result i32)))
 (type $15 (func (result i32)))
 (type $16 (func (param f32) (result i32)))
 (type $17 (func (param i32) (result f32)))
 (type $18 (func (param i32 f32)))
 (type $19 (func (param f64) (result i32)))
 (type $20 (func (param i32) (result f64)))
 (type $21 (func (param i32 f64)))
 (type $22 (func (param i32 i32 f32)))
 (type $23 (func (param i32 i32 f64)))
 (import "env" "abort" (func $~lib/builtins/__abort_impl (param i32 i32 i32 i32)))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/shared/runtime/Runtime.Memory i32 (i32.const 3))
 (global $~lib/native/ASC_RUNTIME i32 (i32.const 2))
 (global $~lib/native/ASC_FEATURE_EXCEPTION_HANDLING i32 (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 576))
 (global $~lib/memory/__data_end i32 (i32.const 644))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33412))
 (global $~lib/memory/__heap_base i32 (i32.const 33412))
 (memory $0 1)
 (data $0 (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data $1 (i32.const 76) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $2 (i32.const 144) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $3 (i32.const 176) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $4 (i32.const 204) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $5 (i32.const 268) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 320) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $7 (i32.const 348) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $8 (i32.const 412) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00s\00t\00d\00/\00f\00i\00x\00e\00d\00s\00e\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $9 (i32.const 476) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data $10 (i32.const 524) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data $11 (i32.const 576) "\10\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\00\00\00\00\02\t\00\00\00\00\00\00\02\01\00\00\00\00\00\00\02\n\00\00\00\00\00\00\02\02\00\00\00\00\00\00\02\19\00\00\00\00\00\00\02\1a\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $this i32) (param $nextWithColor i32)
  local.get $this
  local.get $nextWithColor
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=8
 )
 (func $~lib/rt/itcms/initLazy (param $space i32) (result i32)
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:prev
  local.get $space
  return
 )
 (func $~lib/rt/itcms/Object#get:nextWithColor (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/itcms/Object#get:next (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  return
 )
 (func $~lib/rt/itcms/Object#get:color (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  return
 )
 (func $~lib/rt/itcms/visitRoots (param $cookie i32)
  (local $pn i32)
  (local $iter i32)
  local.get $cookie
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $pn
  local.get $pn
  call $~lib/rt/itcms/Object#get:next
  local.set $iter
  loop $while-continue|0
   local.get $iter
   local.get $pn
   i32.ne
   if
    i32.const 1
    drop
    local.get $iter
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 96
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $iter
    i32.const 20
    i32.add
    local.get $cookie
    call $~lib/rt/__visit_members
    local.get $iter
    call $~lib/rt/itcms/Object#get:next
    local.set $iter
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $this i32) (param $color i32)
  local.get $this
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $color
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/itcms/Object#set:next (param $this i32) (param $obj i32)
  local.get $this
  local.get $obj
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $this i32)
  (local $next i32)
  (local $prev i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:next
  local.set $next
  local.get $next
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   i32.const 0
   i32.eq
   if (result i32)
    local.get $this
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 96
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $this
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  i32.const 1
  drop
  local.get $prev
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $next
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $next
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/Object#get:rtId (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/shared/typeinfo/Typeinfo#get:flags (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/__typeinfo (param $id i32) (result i32)
  (local $ptr i32)
  global.get $~lib/rt/__rtti_base
  local.set $ptr
  local.get $id
  local.get $ptr
  i32.load
  i32.gt_u
  if
   i32.const 224
   i32.const 288
   i32.const 22
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr
  i32.const 4
  i32.add
  local.get $id
  i32.const 4
  i32.mul
  i32.add
  call $~lib/shared/typeinfo/Typeinfo#get:flags
  return
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $this i32) (result i32)
  (local $rtId i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:rtId
  local.set $rtId
  local.get $rtId
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $rtId
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
  return
 )
 (func $~lib/rt/itcms/Object#linkTo (param $this i32) (param $list i32) (param $withColor i32)
  (local $prev i32)
  local.get $list
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  local.get $this
  local.get $list
  local.get $withColor
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $this
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $this
  call $~lib/rt/itcms/Object#set:next
  local.get $list
  local.get $this
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $this i32)
  (local $1 i32)
  local.get $this
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 96
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $this
  call $~lib/rt/itcms/Object#unlink
  local.get $this
  global.get $~lib/rt/itcms/toSpace
  local.get $this
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__visit (param $ptr i32) (param $cookie i32)
  (local $obj i32)
  local.get $ptr
  i32.eqz
  if
   return
  end
  local.get $ptr
  i32.const 20
  i32.sub
  local.set $obj
  i32.const 0
  drop
  local.get $obj
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $obj
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $cookie i32)
  (local $ptr i32)
  global.get $~lib/memory/__stack_pointer
  local.set $ptr
  loop $while-continue|0
   local.get $ptr
   global.get $~lib/memory/__heap_base
   i32.lt_u
   if
    local.get $ptr
    i32.load
    local.get $cookie
    call $~lib/rt/itcms/__visit
    local.get $ptr
    i32.const 4
    i32.add
    local.set $ptr
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/common/BLOCK#get:mmInfo (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:size (param $this i32) (result i32)
  i32.const 4
  local.get $this
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  return
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $this i32) (param $flMap i32)
  local.get $this
  local.get $flMap
  i32.store
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $this i32) (param $mmInfo i32)
  local.get $this
  local.get $mmInfo
  i32.store
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $this i32) (param $next i32)
  local.get $this
  local.get $next
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/Block#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/tlsf/Block#get:next (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/tlsf/Root#get:flMap (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/tlsf/removeBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $6 i32)
  (local $7 i32)
  (local $boundedSize i32)
  (local $prev i32)
  (local $next i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $root|14 i32)
  (local $fl|15 i32)
  (local $sl|16 i32)
  (local $head i32)
  (local $root|18 i32)
  (local $fl|19 i32)
  (local $slMap i32)
  (local $root|21 i32)
  (local $fl|22 i32)
  (local $slMap|23 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/tlsf/Block#get:prev
  local.set $prev
  local.get $block
  call $~lib/rt/tlsf/Block#get:next
  local.set $next
  local.get $prev
  if
   local.get $prev
   local.get $next
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $next
  if
   local.get $next
   local.get $prev
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $block
  block $~lib/rt/tlsf/GETHEAD|inlined.0 (result i32)
   local.get $root
   local.set $root|11
   local.get $fl
   local.set $fl|12
   local.get $sl
   local.set $sl|13
   local.get $root|11
   local.get $fl|12
   i32.const 4
   i32.shl
   local.get $sl|13
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.0
  end
  i32.eq
  if
   local.get $root
   local.set $root|14
   local.get $fl
   local.set $fl|15
   local.get $sl
   local.set $sl|16
   local.get $next
   local.set $head
   local.get $root|14
   local.get $fl|15
   i32.const 4
   i32.shl
   local.get $sl|16
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $head
   i32.store offset=96
   local.get $next
   i32.eqz
   if
    block $~lib/rt/tlsf/GETSL|inlined.0 (result i32)
     local.get $root
     local.set $root|18
     local.get $fl
     local.set $fl|19
     local.get $root|18
     local.get $fl|19
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.0
    end
    local.set $slMap
    local.get $root
    local.set $root|21
    local.get $fl
    local.set $fl|22
    local.get $slMap
    i32.const 1
    local.get $sl
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $slMap
    local.set $slMap|23
    local.get $root|21
    local.get $fl|22
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap|23
    i32.store offset=4
    local.get $slMap
    i32.eqz
    if
     local.get $root
     local.get $root
     call $~lib/rt/tlsf/Root#get:flMap
     i32.const 1
     local.get $fl
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $block|3 i32)
  (local $right i32)
  (local $rightInfo i32)
  (local $block|6 i32)
  (local $block|7 i32)
  (local $left i32)
  (local $leftInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $13 i32)
  (local $14 i32)
  (local $boundedSize i32)
  (local $root|16 i32)
  (local $fl|17 i32)
  (local $sl|18 i32)
  (local $head i32)
  (local $root|20 i32)
  (local $fl|21 i32)
  (local $sl|22 i32)
  (local $head|23 i32)
  (local $root|24 i32)
  (local $fl|25 i32)
  (local $root|26 i32)
  (local $fl|27 i32)
  (local $slMap i32)
  i32.const 1
  drop
  local.get $block
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETRIGHT|inlined.0 (result i32)
   local.get $block
   local.set $block|3
   local.get $block|3
   i32.const 4
   i32.add
   local.get $block|3
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   br $~lib/rt/tlsf/GETRIGHT|inlined.0
  end
  local.set $right
  local.get $right
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $rightInfo
  local.get $rightInfo
  i32.const 1
  i32.and
  if
   local.get $root
   local.get $right
   call $~lib/rt/tlsf/removeBlock
   local.get $block
   local.get $blockInfo
   i32.const 4
   i32.add
   local.get $rightInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.1 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.1
   end
   local.set $right
   local.get $right
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $rightInfo
  end
  local.get $blockInfo
  i32.const 2
  i32.and
  if
   block $~lib/rt/tlsf/GETFREELEFT|inlined.0 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.sub
    i32.load
    br $~lib/rt/tlsf/GETFREELEFT|inlined.0
   end
   local.set $left
   local.get $left
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $leftInfo
   i32.const 1
   drop
   local.get $leftInfo
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $root
   local.get $left
   call $~lib/rt/tlsf/removeBlock
   local.get $left
   local.set $block
   local.get $block
   local.get $leftInfo
   i32.const 4
   i32.add
   local.get $blockInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $right
  local.get $rightInfo
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $block
  i32.const 4
  i32.add
  local.get $size
  i32.add
  local.get $right
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $right
  i32.const 4
  i32.sub
  local.get $block
  i32.store
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $13
   i32.const 1073741820
   local.tee $14
   local.get $13
   local.get $14
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETHEAD|inlined.1 (result i32)
   local.get $root
   local.set $root|16
   local.get $fl
   local.set $fl|17
   local.get $sl
   local.set $sl|18
   local.get $root|16
   local.get $fl|17
   i32.const 4
   i32.shl
   local.get $sl|18
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.1
  end
  local.set $head
  local.get $block
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $block
  local.get $head
  call $~lib/rt/tlsf/Block#set:next
  local.get $head
  if
   local.get $head
   local.get $block
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $root
  local.set $root|20
  local.get $fl
  local.set $fl|21
  local.get $sl
  local.set $sl|22
  local.get $block
  local.set $head|23
  local.get $root|20
  local.get $fl|21
  i32.const 4
  i32.shl
  local.get $sl|22
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $head|23
  i32.store offset=96
  local.get $root
  local.get $root
  call $~lib/rt/tlsf/Root#get:flMap
  i32.const 1
  local.get $fl
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|26
  local.get $fl
  local.set $fl|27
  block $~lib/rt/tlsf/GETSL|inlined.1 (result i32)
   local.get $root
   local.set $root|24
   local.get $fl
   local.set $fl|25
   local.get $root|24
   local.get $fl|25
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.1
  end
  i32.const 1
  local.get $sl
  i32.shl
  i32.or
  local.set $slMap
  local.get $root|26
  local.get $fl|27
  i32.const 2
  i32.shl
  i32.add
  local.get $slMap
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $root i32) (param $start i32) (param $endU64 i64) (result i32)
  (local $end i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $tailInfo i32)
  (local $size i32)
  (local $leftSize i32)
  (local $left i32)
  (local $root|10 i32)
  (local $tail|11 i32)
  local.get $endU64
  i32.wrap_i64
  local.set $end
  i32.const 1
  drop
  local.get $start
  i64.extend_i32_u
  local.get $endU64
  i64.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $start
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $start
  local.get $end
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $end
  block $~lib/rt/tlsf/GETTAIL|inlined.0 (result i32)
   local.get $root
   local.set $root|4
   local.get $root|4
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.0
  end
  local.set $tail
  i32.const 0
  local.set $tailInfo
  local.get $tail
  if
   i32.const 1
   drop
   local.get $start
   local.get $tail
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $start
   i32.const 16
   i32.sub
   local.get $tail
   i32.eq
   if
    local.get $start
    i32.const 16
    i32.sub
    local.set $start
    local.get $tail
    call $~lib/rt/common/BLOCK#get:mmInfo
    local.set $tailInfo
   else
   end
  else
   i32.const 1
   drop
   local.get $start
   local.get $root
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $end
  local.get $start
  i32.sub
  local.set $size
  local.get $size
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $size
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $leftSize
  local.get $start
  local.set $left
  local.get $left
  local.get $leftSize
  i32.const 1
  i32.or
  local.get $tailInfo
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $start
  i32.const 4
  i32.add
  local.get $leftSize
  i32.add
  local.set $tail
  local.get $tail
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.set $root|10
  local.get $tail
  local.set $tail|11
  local.get $root|10
  local.get $tail|11
  i32.store offset=1568
  local.get $root
  local.get $left
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
  return
 )
 (func $~lib/rt/tlsf/initialize
  (local $rootOffset i32)
  (local $pagesBefore i32)
  (local $pagesNeeded i32)
  (local $root i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $fl i32)
  (local $root|7 i32)
  (local $fl|8 i32)
  (local $slMap i32)
  (local $sl i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $head i32)
  (local $memStart i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $rootOffset
  memory.size
  local.set $pagesBefore
  local.get $rootOffset
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
  local.set $pagesNeeded
  local.get $pagesNeeded
  local.get $pagesBefore
  i32.gt_s
  if (result i32)
   local.get $pagesNeeded
   local.get $pagesBefore
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  local.get $rootOffset
  local.set $root
  local.get $root
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|4
  i32.const 0
  local.set $tail
  local.get $root|4
  local.get $tail
  i32.store offset=1568
  i32.const 0
  local.set $fl
  loop $for-loop|0
   local.get $fl
   i32.const 23
   i32.lt_u
   if
    local.get $root
    local.set $root|7
    local.get $fl
    local.set $fl|8
    i32.const 0
    local.set $slMap
    local.get $root|7
    local.get $fl|8
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap
    i32.store offset=4
    i32.const 0
    local.set $sl
    loop $for-loop|1
     local.get $sl
     i32.const 16
     i32.lt_u
     if
      local.get $root
      local.set $root|11
      local.get $fl
      local.set $fl|12
      local.get $sl
      local.set $sl|13
      i32.const 0
      local.set $head
      local.get $root|11
      local.get $fl|12
      i32.const 4
      i32.shl
      local.get $sl|13
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $head
      i32.store offset=96
      local.get $sl
      i32.const 1
      i32.add
      local.set $sl
      br $for-loop|1
     end
    end
    local.get $fl
    i32.const 1
    i32.add
    local.set $fl
    br $for-loop|0
   end
  end
  local.get $rootOffset
  i32.const 1572
  i32.add
  local.set $memStart
  i32.const 0
  drop
  local.get $root
  local.get $memStart
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $root
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $ptr i32) (result i32)
  (local $block i32)
  local.get $ptr
  i32.const 4
  i32.sub
  local.set $block
  local.get $ptr
  i32.const 0
  i32.ne
  if (result i32)
   local.get $ptr
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $block
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/freeBlock (param $root i32) (param $block i32)
  i32.const 0
  drop
  local.get $block
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $ptr i32)
  local.get $ptr
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $ptr
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $obj i32)
  local.get $obj
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $obj
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $obj
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $obj i32)
  (local $1 i32)
  (local $black i32)
  (local $from i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $black
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    loop $while-continue|1
     local.get $obj
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $obj
      global.set $~lib/rt/itcms/iter
      local.get $obj
      call $~lib/rt/itcms/Object#get:color
      local.get $black
      i32.ne
      if
       local.get $obj
       local.get $black
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $obj
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $obj
      call $~lib/rt/itcms/Object#get:next
      local.set $obj
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    local.get $obj
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $obj
     loop $while-continue|2
      local.get $obj
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $obj
       call $~lib/rt/itcms/Object#get:color
       local.get $black
       i32.ne
       if
        local.get $obj
        local.get $black
        call $~lib/rt/itcms/Object#set:color
        local.get $obj
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $obj
       call $~lib/rt/itcms/Object#get:next
       local.set $obj
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $from
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $from
     global.set $~lib/rt/itcms/toSpace
     local.get $black
     global.set $~lib/rt/itcms/white
     local.get $from
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $obj
   local.get $obj
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $obj
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $obj
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 96
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $obj
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
  return
 )
 (func $~lib/rt/itcms/interrupt
  (local $budget i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $budget
  loop $do-loop|0
   local.get $budget
   call $~lib/rt/itcms/step
   i32.sub
   local.set $budget
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    i32.const 200
    i32.const 100
    i32.rem_u
    i32.const 0
    i32.eq
    drop
    global.get $~lib/rt/itcms/total
    i32.const 200
    i32.const 100
    i32.div_u
    i32.mul
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $budget
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $size i32) (result i32)
  local.get $size
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $size
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
  return
 )
 (func $~lib/rt/tlsf/prepareSize (param $size i32) (result i32)
  local.get $size
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 32
   i32.const 368
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  call $~lib/rt/tlsf/computeSize
  return
 )
 (func $~lib/rt/tlsf/roundSize (param $size i32) (result i32)
  local.get $size
  i32.const 536870910
  i32.lt_u
  if (result i32)
   local.get $size
   i32.const 1
   i32.const 27
   local.get $size
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
  else
   local.get $size
  end
  return
 )
 (func $~lib/rt/tlsf/searchBlock (param $root i32) (param $size i32) (result i32)
  (local $fl i32)
  (local $sl i32)
  (local $requestSize i32)
  (local $root|5 i32)
  (local $fl|6 i32)
  (local $slMap i32)
  (local $head i32)
  (local $flMap i32)
  (local $root|10 i32)
  (local $fl|11 i32)
  (local $root|12 i32)
  (local $fl|13 i32)
  (local $sl|14 i32)
  (local $root|15 i32)
  (local $fl|16 i32)
  (local $sl|17 i32)
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $requestSize
   i32.const 4
   i32.const 8
   i32.mul
   i32.const 1
   i32.sub
   local.get $requestSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $requestSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETSL|inlined.2 (result i32)
   local.get $root
   local.set $root|5
   local.get $fl
   local.set $fl|6
   local.get $root|5
   local.get $fl|6
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.2
  end
  i32.const 0
  i32.const -1
  i32.xor
  local.get $sl
  i32.shl
  i32.and
  local.set $slMap
  i32.const 0
  local.set $head
  local.get $slMap
  i32.eqz
  if
   local.get $root
   call $~lib/rt/tlsf/Root#get:flMap
   i32.const 0
   i32.const -1
   i32.xor
   local.get $fl
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $flMap
   local.get $flMap
   i32.eqz
   if
    i32.const 0
    local.set $head
   else
    local.get $flMap
    i32.ctz
    local.set $fl
    block $~lib/rt/tlsf/GETSL|inlined.3 (result i32)
     local.get $root
     local.set $root|10
     local.get $fl
     local.set $fl|11
     local.get $root|10
     local.get $fl|11
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.3
    end
    local.set $slMap
    i32.const 1
    drop
    local.get $slMap
    i32.eqz
    if
     i32.const 0
     i32.const 368
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    block $~lib/rt/tlsf/GETHEAD|inlined.2 (result i32)
     local.get $root
     local.set $root|12
     local.get $fl
     local.set $fl|13
     local.get $slMap
     i32.ctz
     local.set $sl|14
     local.get $root|12
     local.get $fl|13
     i32.const 4
     i32.shl
     local.get $sl|14
     i32.add
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=96
     br $~lib/rt/tlsf/GETHEAD|inlined.2
    end
    local.set $head
   end
  else
   block $~lib/rt/tlsf/GETHEAD|inlined.3 (result i32)
    local.get $root
    local.set $root|15
    local.get $fl
    local.set $fl|16
    local.get $slMap
    i32.ctz
    local.set $sl|17
    local.get $root|15
    local.get $fl|16
    i32.const 4
    i32.shl
    local.get $sl|17
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    br $~lib/rt/tlsf/GETHEAD|inlined.3
   end
   local.set $head
  end
  local.get $head
  return
 )
 (func $~lib/rt/tlsf/growMemory (param $root i32) (param $size i32)
  (local $pagesBefore i32)
  (local $root|3 i32)
  (local $pagesNeeded i32)
  (local $5 i32)
  (local $6 i32)
  (local $pagesWanted i32)
  (local $pagesAfter i32)
  i32.const 0
  drop
  local.get $size
  i32.const 256
  i32.ge_u
  if
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $size
  end
  memory.size
  local.set $pagesBefore
  local.get $size
  i32.const 4
  local.get $pagesBefore
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  block $~lib/rt/tlsf/GETTAIL|inlined.1 (result i32)
   local.get $root
   local.set $root|3
   local.get $root|3
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.1
  end
  i32.ne
  i32.shl
  i32.add
  local.set $size
  local.get $size
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesBefore
  local.tee $5
  local.get $pagesNeeded
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.set $pagesWanted
  local.get $pagesWanted
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $pagesNeeded
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $pagesAfter
  local.get $root
  local.get $pagesBefore
  i32.const 16
  i32.shl
  local.get $pagesAfter
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $root i32) (param $block i32) (param $size i32)
  (local $blockInfo i32)
  (local $remaining i32)
  (local $spare i32)
  (local $block|6 i32)
  (local $block|7 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $size
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $size
  i32.sub
  local.set $remaining
  local.get $remaining
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $block
   local.get $size
   local.get $blockInfo
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $block
   i32.const 4
   i32.add
   local.get $size
   i32.add
   local.set $spare
   local.get $spare
   local.get $remaining
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $root
   local.get $spare
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $block
   local.get $blockInfo
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.3 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.add
    local.get $block|7
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.3
   end
   block $~lib/rt/tlsf/GETRIGHT|inlined.2 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.2
   end
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $root i32) (param $size i32) (result i32)
  (local $payloadSize i32)
  (local $block i32)
  local.get $size
  call $~lib/rt/tlsf/prepareSize
  local.set $payloadSize
  local.get $root
  local.get $payloadSize
  call $~lib/rt/tlsf/searchBlock
  local.set $block
  local.get $block
  i32.eqz
  if
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/growMemory
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/searchBlock
   local.set $block
   i32.const 1
   drop
   local.get $block
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $payloadSize
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/removeBlock
  local.get $root
  local.get $block
  local.get $payloadSize
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/__alloc (param $size i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $size
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  return
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $this i32) (param $rtId i32)
  local.get $this
  local.get $rtId
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $this i32) (param $rtSize i32)
  local.get $this
  local.get $rtSize
  i32.store offset=16
 )
 (func $~lib/rt/itcms/__new (param $size i32) (param $id i32) (result i32)
  (local $obj i32)
  (local $ptr i32)
  local.get $size
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 32
   i32.const 96
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $size
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $obj
  local.get $obj
  local.get $id
  call $~lib/rt/itcms/Object#set:rtId
  local.get $obj
  local.get $size
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $obj
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $obj
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $obj
  i32.const 20
  i32.add
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $size
  memory.fill
  local.get $ptr
  return
 )
 (func $~lib/fixedset/FixedSet<i32>#set:dataPtr (param $this i32) (param $dataPtr i32)
  local.get $this
  local.get $dataPtr
  i32.store
 )
 (func $~lib/fixedset/FixedSet<i32>#set:_capacity (param $this i32) (param $_capacity i32)
  local.get $this
  local.get $_capacity
  i32.store offset=4
 )
 (func $~lib/fixedset/FixedSet<i32>#set:capacityMask (param $this i32) (param $capacityMask i32)
  local.get $this
  local.get $capacityMask
  i32.store offset=8
 )
 (func $~lib/rt/itcms/__link (param $parentPtr i32) (param $childPtr i32) (param $expectMultiple i32)
  (local $child i32)
  (local $parent i32)
  (local $parentColor i32)
  local.get $childPtr
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $parentPtr
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $childPtr
  i32.const 20
  i32.sub
  local.set $child
  local.get $child
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $parentPtr
   i32.const 20
   i32.sub
   local.set $parent
   local.get $parent
   call $~lib/rt/itcms/Object#get:color
   local.set $parentColor
   local.get $parentColor
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $expectMultiple
    if
     local.get $parent
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $parentColor
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/fixedset/FixedSet<i32>#set:_count (param $this i32) (param $_count i32)
  local.get $this
  local.get $_count
  i32.store offset=12
 )
 (func $~lib/fixedset/FixedSet<i32>#set:_entriesUsed (param $this i32) (param $_entriesUsed i32)
  local.get $this
  local.get $_entriesUsed
  i32.store offset=16
 )
 (func $~lib/fixedset/FixedSet<i32>#get:_count (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/util/hash/HASH<i32> (param $key i32) (result i32)
  (local $key|1 i32)
  (local $len i32)
  (local $h i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 4
  i32.const 4
  i32.le_u
  drop
  block $~lib/util/hash/hash32|inlined.0 (result i32)
   local.get $key
   local.set $key|1
   i32.const 4
   local.set $len
   i32.const 0
   i32.const 374761393
   i32.add
   local.get $len
   i32.add
   local.set $h
   local.get $h
   local.get $key|1
   i32.const -1028477379
   i32.mul
   i32.add
   local.set $h
   local.get $h
   i32.const 17
   i32.rotl
   i32.const 668265263
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 15
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   i32.const -2048144777
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 13
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   i32.const -1028477379
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 16
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   br $~lib/util/hash/hash32|inlined.0
  end
  return
 )
 (func $~lib/fixedset/FixedSet<i32>#get:capacityMask (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/fixedset/FixedSet<i32>#get:dataPtr (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/fixedset/FixedSetSlot<i32>#get:state (param $this i32) (result i32)
  local.get $this
  i32.load8_u offset=4
 )
 (func $~lib/fixedset/FixedSetSlot<i32>#get:hash (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/fixedset/FixedSetSlot<i32>#get:key (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/fixedset/FixedSetSlot<i32>#set:state (param $this i32) (param $state i32)
  local.get $this
  local.get $state
  i32.store8 offset=4
 )
 (func $~lib/fixedset/FixedSet<i32>#get:_entriesUsed (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/fixedset/FixedSet<i32>#get:_capacity (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/fixedset/FixedSetSlot<i32>#set:hash (param $this i32) (param $hash i32)
  local.get $this
  local.get $hash
  i32.store
 )
 (func $~lib/fixedset/FixedSetSlot<i32>#set:key (param $this i32) (param $key i32)
  local.get $this
  local.get $key
  i32.store offset=8
 )
 (func $~lib/array/Array<i32>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<i32>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<i32>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/array/Array<i32>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/array/Array<i32>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteLength (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:rtSize (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/rt/itcms/__renew (param $oldPtr i32) (param $size i32) (result i32)
  (local $oldObj i32)
  (local $newPtr i32)
  (local $4 i32)
  (local $5 i32)
  local.get $oldPtr
  i32.const 20
  i32.sub
  local.set $oldObj
  local.get $size
  local.get $oldObj
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $oldObj
   local.get $size
   call $~lib/rt/itcms/Object#set:rtSize
   local.get $oldPtr
   return
  end
  local.get $size
  local.get $oldObj
  call $~lib/rt/itcms/Object#get:rtId
  call $~lib/rt/itcms/__new
  local.set $newPtr
  local.get $newPtr
  local.get $oldPtr
  local.get $size
  local.tee $4
  local.get $oldObj
  call $~lib/rt/itcms/Object#get:rtSize
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_u
  select
  memory.copy
  local.get $newPtr
  return
 )
 (func $~lib/array/Array<i32>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/fixedset/FixedSet<u32>#set:dataPtr (param $this i32) (param $dataPtr i32)
  local.get $this
  local.get $dataPtr
  i32.store
 )
 (func $~lib/fixedset/FixedSet<u32>#set:_capacity (param $this i32) (param $_capacity i32)
  local.get $this
  local.get $_capacity
  i32.store offset=4
 )
 (func $~lib/fixedset/FixedSet<u32>#set:capacityMask (param $this i32) (param $capacityMask i32)
  local.get $this
  local.get $capacityMask
  i32.store offset=8
 )
 (func $~lib/fixedset/FixedSet<u32>#set:_count (param $this i32) (param $_count i32)
  local.get $this
  local.get $_count
  i32.store offset=12
 )
 (func $~lib/fixedset/FixedSet<u32>#set:_entriesUsed (param $this i32) (param $_entriesUsed i32)
  local.get $this
  local.get $_entriesUsed
  i32.store offset=16
 )
 (func $~lib/fixedset/FixedSet<u32>#get:_count (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/util/hash/HASH<u32> (param $key i32) (result i32)
  (local $key|1 i32)
  (local $len i32)
  (local $h i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 4
  i32.const 4
  i32.le_u
  drop
  block $~lib/util/hash/hash32|inlined.1 (result i32)
   local.get $key
   local.set $key|1
   i32.const 4
   local.set $len
   i32.const 0
   i32.const 374761393
   i32.add
   local.get $len
   i32.add
   local.set $h
   local.get $h
   local.get $key|1
   i32.const -1028477379
   i32.mul
   i32.add
   local.set $h
   local.get $h
   i32.const 17
   i32.rotl
   i32.const 668265263
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 15
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   i32.const -2048144777
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 13
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   i32.const -1028477379
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 16
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   br $~lib/util/hash/hash32|inlined.1
  end
  return
 )
 (func $~lib/fixedset/FixedSet<u32>#get:capacityMask (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/fixedset/FixedSet<u32>#get:dataPtr (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/fixedset/FixedSetSlot<u32>#get:state (param $this i32) (result i32)
  local.get $this
  i32.load8_u offset=4
 )
 (func $~lib/fixedset/FixedSetSlot<u32>#get:hash (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/fixedset/FixedSetSlot<u32>#get:key (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/fixedset/FixedSetSlot<u32>#set:state (param $this i32) (param $state i32)
  local.get $this
  local.get $state
  i32.store8 offset=4
 )
 (func $~lib/fixedset/FixedSet<u32>#get:_entriesUsed (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/fixedset/FixedSet<u32>#get:_capacity (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/fixedset/FixedSetSlot<u32>#set:hash (param $this i32) (param $hash i32)
  local.get $this
  local.get $hash
  i32.store
 )
 (func $~lib/fixedset/FixedSetSlot<u32>#set:key (param $this i32) (param $key i32)
  local.get $this
  local.get $key
  i32.store offset=8
 )
 (func $~lib/array/Array<u32>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<u32>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<u32>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/array/Array<u32>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/array/Array<u32>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<u32>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/fixedset/FixedSet<i64>#set:dataPtr (param $this i32) (param $dataPtr i32)
  local.get $this
  local.get $dataPtr
  i32.store
 )
 (func $~lib/fixedset/FixedSet<i64>#set:_capacity (param $this i32) (param $_capacity i32)
  local.get $this
  local.get $_capacity
  i32.store offset=4
 )
 (func $~lib/fixedset/FixedSet<i64>#set:capacityMask (param $this i32) (param $capacityMask i32)
  local.get $this
  local.get $capacityMask
  i32.store offset=8
 )
 (func $~lib/fixedset/FixedSet<i64>#set:_count (param $this i32) (param $_count i32)
  local.get $this
  local.get $_count
  i32.store offset=12
 )
 (func $~lib/fixedset/FixedSet<i64>#set:_entriesUsed (param $this i32) (param $_entriesUsed i32)
  local.get $this
  local.get $_entriesUsed
  i32.store offset=16
 )
 (func $~lib/fixedset/FixedSet<i64>#get:_count (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/util/hash/HASH<i64> (param $key i64) (result i32)
  (local $key|1 i64)
  (local $h i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 8
  i32.const 4
  i32.le_u
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  block $~lib/util/hash/hash64|inlined.0 (result i32)
   local.get $key
   local.set $key|1
   i32.const 0
   i32.const 374761393
   i32.add
   i32.const 8
   i32.add
   local.set $h
   local.get $h
   local.get $key|1
   i32.wrap_i64
   i32.const -1028477379
   i32.mul
   i32.add
   local.set $h
   local.get $h
   i32.const 17
   i32.rotl
   i32.const 668265263
   i32.mul
   local.set $h
   local.get $h
   local.get $key|1
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   i32.const -1028477379
   i32.mul
   i32.add
   local.set $h
   local.get $h
   i32.const 17
   i32.rotl
   i32.const 668265263
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 15
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   i32.const -2048144777
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 13
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   i32.const -1028477379
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 16
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   br $~lib/util/hash/hash64|inlined.0
  end
  return
 )
 (func $~lib/fixedset/FixedSet<i64>#get:capacityMask (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/fixedset/FixedSet<i64>#get:dataPtr (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/fixedset/FixedSetSlot<i64>#get:state (param $this i32) (result i32)
  local.get $this
  i32.load8_u offset=4
 )
 (func $~lib/fixedset/FixedSetSlot<i64>#get:hash (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/fixedset/FixedSetSlot<i64>#get:key (param $this i32) (result i64)
  local.get $this
  i64.load offset=8
 )
 (func $~lib/fixedset/FixedSetSlot<i64>#set:state (param $this i32) (param $state i32)
  local.get $this
  local.get $state
  i32.store8 offset=4
 )
 (func $~lib/fixedset/FixedSet<i64>#get:_entriesUsed (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/fixedset/FixedSet<i64>#get:_capacity (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/fixedset/FixedSetSlot<i64>#set:hash (param $this i32) (param $hash i32)
  local.get $this
  local.get $hash
  i32.store
 )
 (func $~lib/fixedset/FixedSetSlot<i64>#set:key (param $this i32) (param $key i64)
  local.get $this
  local.get $key
  i64.store offset=8
 )
 (func $~lib/array/Array<i64>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<i64>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<i64>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/array/Array<i64>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/array/Array<i64>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<i64>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/fixedset/FixedSet<u64>#set:dataPtr (param $this i32) (param $dataPtr i32)
  local.get $this
  local.get $dataPtr
  i32.store
 )
 (func $~lib/fixedset/FixedSet<u64>#set:_capacity (param $this i32) (param $_capacity i32)
  local.get $this
  local.get $_capacity
  i32.store offset=4
 )
 (func $~lib/fixedset/FixedSet<u64>#set:capacityMask (param $this i32) (param $capacityMask i32)
  local.get $this
  local.get $capacityMask
  i32.store offset=8
 )
 (func $~lib/fixedset/FixedSet<u64>#set:_count (param $this i32) (param $_count i32)
  local.get $this
  local.get $_count
  i32.store offset=12
 )
 (func $~lib/fixedset/FixedSet<u64>#set:_entriesUsed (param $this i32) (param $_entriesUsed i32)
  local.get $this
  local.get $_entriesUsed
  i32.store offset=16
 )
 (func $~lib/fixedset/FixedSet<u64>#get:_count (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/util/hash/HASH<u64> (param $key i64) (result i32)
  (local $key|1 i64)
  (local $h i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 8
  i32.const 4
  i32.le_u
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  block $~lib/util/hash/hash64|inlined.1 (result i32)
   local.get $key
   local.set $key|1
   i32.const 0
   i32.const 374761393
   i32.add
   i32.const 8
   i32.add
   local.set $h
   local.get $h
   local.get $key|1
   i32.wrap_i64
   i32.const -1028477379
   i32.mul
   i32.add
   local.set $h
   local.get $h
   i32.const 17
   i32.rotl
   i32.const 668265263
   i32.mul
   local.set $h
   local.get $h
   local.get $key|1
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   i32.const -1028477379
   i32.mul
   i32.add
   local.set $h
   local.get $h
   i32.const 17
   i32.rotl
   i32.const 668265263
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 15
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   i32.const -2048144777
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 13
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   i32.const -1028477379
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 16
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   br $~lib/util/hash/hash64|inlined.1
  end
  return
 )
 (func $~lib/fixedset/FixedSet<u64>#get:capacityMask (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/fixedset/FixedSet<u64>#get:dataPtr (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/fixedset/FixedSetSlot<u64>#get:state (param $this i32) (result i32)
  local.get $this
  i32.load8_u offset=4
 )
 (func $~lib/fixedset/FixedSetSlot<u64>#get:hash (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/fixedset/FixedSetSlot<u64>#get:key (param $this i32) (result i64)
  local.get $this
  i64.load offset=8
 )
 (func $~lib/fixedset/FixedSetSlot<u64>#set:state (param $this i32) (param $state i32)
  local.get $this
  local.get $state
  i32.store8 offset=4
 )
 (func $~lib/fixedset/FixedSet<u64>#get:_entriesUsed (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/fixedset/FixedSet<u64>#get:_capacity (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/fixedset/FixedSetSlot<u64>#set:hash (param $this i32) (param $hash i32)
  local.get $this
  local.get $hash
  i32.store
 )
 (func $~lib/fixedset/FixedSetSlot<u64>#set:key (param $this i32) (param $key i64)
  local.get $this
  local.get $key
  i64.store offset=8
 )
 (func $~lib/array/Array<u64>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<u64>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<u64>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/array/Array<u64>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/array/Array<u64>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<u64>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/fixedset/FixedSet<f32>#set:dataPtr (param $this i32) (param $dataPtr i32)
  local.get $this
  local.get $dataPtr
  i32.store
 )
 (func $~lib/fixedset/FixedSet<f32>#set:_capacity (param $this i32) (param $_capacity i32)
  local.get $this
  local.get $_capacity
  i32.store offset=4
 )
 (func $~lib/fixedset/FixedSet<f32>#set:capacityMask (param $this i32) (param $capacityMask i32)
  local.get $this
  local.get $capacityMask
  i32.store offset=8
 )
 (func $~lib/fixedset/FixedSet<f32>#set:_count (param $this i32) (param $_count i32)
  local.get $this
  local.get $_count
  i32.store offset=12
 )
 (func $~lib/fixedset/FixedSet<f32>#set:_entriesUsed (param $this i32) (param $_entriesUsed i32)
  local.get $this
  local.get $_entriesUsed
  i32.store offset=16
 )
 (func $~lib/fixedset/FixedSet<f32>#get:_count (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/util/hash/HASH<f32> (param $key f32) (result i32)
  (local $key|1 i32)
  (local $len i32)
  (local $h i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  block $~lib/util/hash/hash32|inlined.2 (result i32)
   local.get $key
   i32.reinterpret_f32
   local.set $key|1
   i32.const 4
   local.set $len
   i32.const 0
   i32.const 374761393
   i32.add
   local.get $len
   i32.add
   local.set $h
   local.get $h
   local.get $key|1
   i32.const -1028477379
   i32.mul
   i32.add
   local.set $h
   local.get $h
   i32.const 17
   i32.rotl
   i32.const 668265263
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 15
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   i32.const -2048144777
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 13
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   i32.const -1028477379
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 16
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   br $~lib/util/hash/hash32|inlined.2
  end
  return
 )
 (func $~lib/fixedset/FixedSet<f32>#get:capacityMask (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/fixedset/FixedSet<f32>#get:dataPtr (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/fixedset/FixedSetSlot<f32>#get:state (param $this i32) (result i32)
  local.get $this
  i32.load8_u offset=4
 )
 (func $~lib/fixedset/FixedSetSlot<f32>#get:hash (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/fixedset/FixedSetSlot<f32>#get:key (param $this i32) (result f32)
  local.get $this
  f32.load offset=8
 )
 (func $~lib/fixedset/FixedSetSlot<f32>#set:state (param $this i32) (param $state i32)
  local.get $this
  local.get $state
  i32.store8 offset=4
 )
 (func $~lib/fixedset/FixedSet<f32>#get:_entriesUsed (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/fixedset/FixedSet<f32>#get:_capacity (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/fixedset/FixedSetSlot<f32>#set:hash (param $this i32) (param $hash i32)
  local.get $this
  local.get $hash
  i32.store
 )
 (func $~lib/fixedset/FixedSetSlot<f32>#set:key (param $this i32) (param $key f32)
  local.get $this
  local.get $key
  f32.store offset=8
 )
 (func $~lib/array/Array<f32>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<f32>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<f32>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/array/Array<f32>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/array/Array<f32>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<f32>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/fixedset/FixedSet<f64>#set:dataPtr (param $this i32) (param $dataPtr i32)
  local.get $this
  local.get $dataPtr
  i32.store
 )
 (func $~lib/fixedset/FixedSet<f64>#set:_capacity (param $this i32) (param $_capacity i32)
  local.get $this
  local.get $_capacity
  i32.store offset=4
 )
 (func $~lib/fixedset/FixedSet<f64>#set:capacityMask (param $this i32) (param $capacityMask i32)
  local.get $this
  local.get $capacityMask
  i32.store offset=8
 )
 (func $~lib/fixedset/FixedSet<f64>#set:_count (param $this i32) (param $_count i32)
  local.get $this
  local.get $_count
  i32.store offset=12
 )
 (func $~lib/fixedset/FixedSet<f64>#set:_entriesUsed (param $this i32) (param $_entriesUsed i32)
  local.get $this
  local.get $_entriesUsed
  i32.store offset=16
 )
 (func $~lib/fixedset/FixedSet<f64>#get:_count (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/util/hash/HASH<f64> (param $key f64) (result i32)
  (local $key|1 i64)
  (local $h i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1
  drop
  i32.const 8
  i32.const 4
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  block $~lib/util/hash/hash64|inlined.2 (result i32)
   local.get $key
   i64.reinterpret_f64
   local.set $key|1
   i32.const 0
   i32.const 374761393
   i32.add
   i32.const 8
   i32.add
   local.set $h
   local.get $h
   local.get $key|1
   i32.wrap_i64
   i32.const -1028477379
   i32.mul
   i32.add
   local.set $h
   local.get $h
   i32.const 17
   i32.rotl
   i32.const 668265263
   i32.mul
   local.set $h
   local.get $h
   local.get $key|1
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   i32.const -1028477379
   i32.mul
   i32.add
   local.set $h
   local.get $h
   i32.const 17
   i32.rotl
   i32.const 668265263
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 15
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   i32.const -2048144777
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 13
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   i32.const -1028477379
   i32.mul
   local.set $h
   local.get $h
   local.get $h
   i32.const 16
   i32.shr_u
   i32.xor
   local.set $h
   local.get $h
   br $~lib/util/hash/hash64|inlined.2
  end
  return
 )
 (func $~lib/fixedset/FixedSet<f64>#get:capacityMask (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/fixedset/FixedSet<f64>#get:dataPtr (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/fixedset/FixedSetSlot<f64>#get:state (param $this i32) (result i32)
  local.get $this
  i32.load8_u offset=4
 )
 (func $~lib/fixedset/FixedSetSlot<f64>#get:hash (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/fixedset/FixedSetSlot<f64>#get:key (param $this i32) (result f64)
  local.get $this
  f64.load offset=8
 )
 (func $~lib/fixedset/FixedSetSlot<f64>#set:state (param $this i32) (param $state i32)
  local.get $this
  local.get $state
  i32.store8 offset=4
 )
 (func $~lib/fixedset/FixedSet<f64>#get:_entriesUsed (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/fixedset/FixedSet<f64>#get:_capacity (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/fixedset/FixedSetSlot<f64>#set:hash (param $this i32) (param $hash i32)
  local.get $this
  local.get $hash
  i32.store
 )
 (func $~lib/fixedset/FixedSetSlot<f64>#set:key (param $this i32) (param $key f64)
  local.get $this
  local.get $key
  f64.store offset=8
 )
 (func $~lib/array/Array<f64>#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<f64>#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store offset=4
 )
 (func $~lib/array/Array<f64>#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store offset=8
 )
 (func $~lib/array/Array<f64>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/array/Array<f64>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<f64>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $start:std/fixedset
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 144
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 176
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 320
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  call $std/fixedset/testNumeric<i32>
  call $std/fixedset/testNumeric<u32>
  call $std/fixedset/testNumeric<i64>
  call $std/fixedset/testNumeric<u64>
  call $std/fixedset/testNumeric<f32>
  call $std/fixedset/testNumeric<f64>
  call $std/fixedset/testOperators
  call $std/fixedset/testCapacity
 )
 (func $~start
  call $start:std/fixedset
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 33440
   i32.const 33488
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/builtins/abort (param $message i32) (param $fileName i32) (param $lineNumber i32) (param $columnNumber i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  drop
  local.get $message
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $fileName
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $lineNumber
  local.get $columnNumber
  call $~lib/builtins/__abort_impl
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<i32>#constructor (param $this i32) (param $initialCapacity i32) (result i32)
  (local $cap i32)
  (local $bufferSize i32)
  (local $ptr i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<i32>#set:dataPtr
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<i32>#set:_capacity
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<i32>#set:capacityMask
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<i32>#set:_count
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<i32>#set:_entriesUsed
  local.get $initialCapacity
  i32.const 4
  i32.lt_s
  if
   i32.const 4
   local.set $initialCapacity
  end
  i32.const 4
  local.set $cap
  loop $while-continue|0
   local.get $cap
   local.get $initialCapacity
   i32.lt_s
   if
    local.get $cap
    i32.const 1
    i32.shl
    local.set $cap
    br $while-continue|0
   end
  end
  local.get $cap
  block $~lib/fixedset/FS_SLOT_SIZE<i32>|inlined.0 (result i32)
   i32.const 12
   i32.const 3
   i32.add
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<i32>|inlined.0
  end
  i32.mul
  local.set $bufferSize
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.eq
  drop
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $bufferSize
  memory.fill
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $ptr
  call $~lib/fixedset/FixedSet<i32>#set:dataPtr
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $cap
  call $~lib/fixedset/FixedSet<i32>#set:_capacity
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $cap
  i32.const 1
  i32.sub
  call $~lib/fixedset/FixedSet<i32>#set:capacityMask
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  local.get $this
  local.get $ptr
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/fixedset/FixedSet<i32>#get:size (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/fixedset/FixedSet<i32>#get:_count
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/fixedset/FixedSet<i32>#has (param $this i32) (param $key i32) (result i32)
  (local $this|2 i32)
  (local $key|3 i32)
  (local $hashCode i32)
  (local $mask i32)
  (local $start i32)
  (local $i i32)
  (local $data i32)
  (local $slotSize i32)
  (local $slot i32)
  (local $state i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $~lib/fixedset/FixedSet<i32>#findSlot|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|2
   i32.store
   local.get $key
   local.set $key|3
   local.get $key
   call $~lib/util/hash/HASH<i32>
   local.set $hashCode
   local.get $this|2
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=4
   local.get $12
   call $~lib/fixedset/FixedSet<i32>#get:capacityMask
   local.set $mask
   local.get $hashCode
   local.get $mask
   i32.and
   local.set $start
   local.get $start
   local.set $i
   local.get $this|2
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=4
   local.get $12
   call $~lib/fixedset/FixedSet<i32>#get:dataPtr
   local.set $data
   block $~lib/fixedset/FS_SLOT_SIZE<i32>|inlined.1 (result i32)
    i32.const 12
    i32.const 3
    i32.add
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    br $~lib/fixedset/FS_SLOT_SIZE<i32>|inlined.1
   end
   local.set $slotSize
   loop $do-loop|0
    local.get $data
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $slot
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<i32>#get:state
    local.set $state
    local.get $state
    i32.const 255
    i32.and
    i32.const 0
    i32.eq
    if
     i32.const -1
     br $~lib/fixedset/FixedSet<i32>#findSlot|inlined.0
    end
    local.get $state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<i32>#get:hash
     local.get $hashCode
     i32.eq
    else
     i32.const 0
    end
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<i32>#get:key
     local.get $key|3
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $i
     br $~lib/fixedset/FixedSet<i32>#findSlot|inlined.0
    end
    local.get $i
    i32.const 1
    i32.add
    local.get $mask
    i32.and
    local.set $i
    local.get $i
    local.get $start
    i32.ne
    br_if $do-loop|0
   end
   i32.const -1
   br $~lib/fixedset/FixedSet<i32>#findSlot|inlined.0
  end
  i32.const -1
  i32.ne
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
  return
 )
 (func $~lib/fixedset/FixedSet<i32>#delete (param $this i32) (param $key i32) (result i32)
  (local $this|2 i32)
  (local $key|3 i32)
  (local $hashCode i32)
  (local $mask i32)
  (local $start i32)
  (local $i i32)
  (local $data i32)
  (local $slotSize i32)
  (local $slot i32)
  (local $state i32)
  (local $idx i32)
  (local $slot|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $~lib/fixedset/FixedSet<i32>#findSlot|inlined.1 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|2
   i32.store
   local.get $key
   local.set $key|3
   local.get $key
   call $~lib/util/hash/HASH<i32>
   local.set $hashCode
   local.get $this|2
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<i32>#get:capacityMask
   local.set $mask
   local.get $hashCode
   local.get $mask
   i32.and
   local.set $start
   local.get $start
   local.set $i
   local.get $this|2
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<i32>#get:dataPtr
   local.set $data
   block $~lib/fixedset/FS_SLOT_SIZE<i32>|inlined.2 (result i32)
    i32.const 12
    i32.const 3
    i32.add
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    br $~lib/fixedset/FS_SLOT_SIZE<i32>|inlined.2
   end
   local.set $slotSize
   loop $do-loop|0
    local.get $data
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $slot
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<i32>#get:state
    local.set $state
    local.get $state
    i32.const 255
    i32.and
    i32.const 0
    i32.eq
    if
     i32.const -1
     br $~lib/fixedset/FixedSet<i32>#findSlot|inlined.1
    end
    local.get $state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<i32>#get:hash
     local.get $hashCode
     i32.eq
    else
     i32.const 0
    end
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<i32>#get:key
     local.get $key|3
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $i
     br $~lib/fixedset/FixedSet<i32>#findSlot|inlined.1
    end
    local.get $i
    i32.const 1
    i32.add
    local.get $mask
    i32.and
    local.set $i
    local.get $i
    local.get $start
    i32.ne
    br_if $do-loop|0
   end
   i32.const -1
   br $~lib/fixedset/FixedSet<i32>#findSlot|inlined.1
  end
  local.set $idx
  local.get $idx
  i32.const -1
  i32.eq
  if
   i32.const 0
   local.set $14
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $14
   return
  end
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=4
  local.get $14
  call $~lib/fixedset/FixedSet<i32>#get:dataPtr
  local.get $idx
  block $~lib/fixedset/FS_SLOT_SIZE<i32>|inlined.3 (result i32)
   i32.const 12
   i32.const 3
   i32.add
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<i32>|inlined.3
  end
  i32.mul
  i32.add
  local.set $slot|13
  local.get $slot|13
  i32.const 2
  call $~lib/fixedset/FixedSetSlot<i32>#set:state
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=4
  local.get $14
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  call $~lib/fixedset/FixedSet<i32>#get:_count
  i32.const 1
  i32.sub
  call $~lib/fixedset/FixedSet<i32>#set:_count
  i32.const 1
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
 (func $~lib/fixedset/FixedSet<i32>#rehash (param $this i32) (param $newCapacity i32)
  (local $oldData i32)
  (local $oldCapacity i32)
  (local $slotSize i32)
  (local $newMask i32)
  (local $bufferSize i32)
  (local $newData i32)
  (local $i i32)
  (local $oldSlot i32)
  (local $h i32)
  (local $j i32)
  (local $newSlot i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/fixedset/FixedSet<i32>#get:dataPtr
  local.set $oldData
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/fixedset/FixedSet<i32>#get:_capacity
  local.set $oldCapacity
  block $~lib/fixedset/FS_SLOT_SIZE<i32>|inlined.4 (result i32)
   i32.const 12
   i32.const 3
   i32.add
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<i32>|inlined.4
  end
  local.set $slotSize
  local.get $newCapacity
  i32.const 1
  i32.sub
  local.set $newMask
  local.get $newCapacity
  local.get $slotSize
  i32.mul
  local.set $bufferSize
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.eq
  drop
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $newData
  local.get $newData
  i32.const 0
  local.get $bufferSize
  memory.fill
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $oldCapacity
   i32.lt_s
   if
    local.get $oldData
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $oldSlot
    local.get $oldSlot
    call $~lib/fixedset/FixedSetSlot<i32>#get:state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if
     local.get $oldSlot
     call $~lib/fixedset/FixedSetSlot<i32>#get:hash
     local.set $h
     local.get $h
     local.get $newMask
     i32.and
     local.set $j
     loop $while-continue|1
      local.get $newData
      local.get $j
      local.get $slotSize
      i32.mul
      i32.add
      call $~lib/fixedset/FixedSetSlot<i32>#get:state
      i32.const 255
      i32.and
      i32.const 0
      i32.ne
      if
       local.get $j
       i32.const 1
       i32.add
       local.get $newMask
       i32.and
       local.set $j
       br $while-continue|1
      end
     end
     local.get $newData
     local.get $j
     local.get $slotSize
     i32.mul
     i32.add
     local.set $newSlot
     local.get $newSlot
     local.get $h
     call $~lib/fixedset/FixedSetSlot<i32>#set:hash
     local.get $newSlot
     i32.const 1
     call $~lib/fixedset/FixedSetSlot<i32>#set:state
     local.get $newSlot
     local.get $oldSlot
     call $~lib/fixedset/FixedSetSlot<i32>#get:key
     call $~lib/fixedset/FixedSetSlot<i32>#set:key
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $newData
  call $~lib/fixedset/FixedSet<i32>#set:dataPtr
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $newCapacity
  call $~lib/fixedset/FixedSet<i32>#set:_capacity
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $newMask
  call $~lib/fixedset/FixedSet<i32>#set:capacityMask
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=4
  local.get $13
  call $~lib/fixedset/FixedSet<i32>#get:_count
  call $~lib/fixedset/FixedSet<i32>#set:_entriesUsed
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  local.get $this
  local.get $newData
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<i32>#add (param $this i32) (param $key i32) (result i32)
  (local $hashCode i32)
  (local $mask i32)
  (local $start i32)
  (local $i i32)
  (local $data i32)
  (local $slotSize i32)
  (local $firstDeleted i32)
  (local $slot i32)
  (local $state i32)
  (local $insertIdx i32)
  (local $insertSlot i32)
  (local $insertSlot|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<i32>#get:_entriesUsed
  i32.const 4
  i32.mul
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<i32>#get:_capacity
  i32.const 3
  i32.mul
  i32.ge_s
  if
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<i32>#get:_count
   i32.const 2
   i32.mul
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<i32>#get:_capacity
   i32.gt_s
   if (result i32)
    local.get $this
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    call $~lib/fixedset/FixedSet<i32>#get:_capacity
    i32.const 1
    i32.shl
   else
    local.get $this
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    call $~lib/fixedset/FixedSet<i32>#get:_capacity
   end
   call $~lib/fixedset/FixedSet<i32>#rehash
  end
  local.get $key
  call $~lib/util/hash/HASH<i32>
  local.set $hashCode
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<i32>#get:capacityMask
  local.set $mask
  local.get $hashCode
  local.get $mask
  i32.and
  local.set $start
  local.get $start
  local.set $i
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<i32>#get:dataPtr
  local.set $data
  block $~lib/fixedset/FS_SLOT_SIZE<i32>|inlined.5 (result i32)
   i32.const 12
   i32.const 3
   i32.add
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<i32>|inlined.5
  end
  local.set $slotSize
  i32.const -1
  local.set $firstDeleted
  loop $do-loop|0
   local.get $data
   local.get $i
   local.get $slotSize
   i32.mul
   i32.add
   local.set $slot
   local.get $slot
   call $~lib/fixedset/FixedSetSlot<i32>#get:state
   local.set $state
   local.get $state
   i32.const 255
   i32.and
   i32.const 1
   i32.eq
   if
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<i32>#get:hash
    local.get $hashCode
    i32.eq
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<i32>#get:key
     local.get $key
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $14
     return
    end
   else
    local.get $state
    i32.const 255
    i32.and
    i32.const 0
    i32.eq
    if
     local.get $firstDeleted
     i32.const -1
     i32.ne
     if (result i32)
      local.get $firstDeleted
     else
      local.get $i
     end
     local.set $insertIdx
     local.get $data
     local.get $insertIdx
     local.get $slotSize
     i32.mul
     i32.add
     local.set $insertSlot
     local.get $insertSlot
     local.get $hashCode
     call $~lib/fixedset/FixedSetSlot<i32>#set:hash
     local.get $insertSlot
     i32.const 1
     call $~lib/fixedset/FixedSetSlot<i32>#set:state
     local.get $insertSlot
     local.get $key
     call $~lib/fixedset/FixedSetSlot<i32>#set:key
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store
     local.get $14
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store offset=4
     local.get $14
     call $~lib/fixedset/FixedSet<i32>#get:_count
     i32.const 1
     i32.add
     call $~lib/fixedset/FixedSet<i32>#set:_count
     local.get $firstDeleted
     i32.const -1
     i32.eq
     if
      local.get $this
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $this
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=4
      local.get $14
      call $~lib/fixedset/FixedSet<i32>#get:_entriesUsed
      i32.const 1
      i32.add
      call $~lib/fixedset/FixedSet<i32>#set:_entriesUsed
     end
     i32.const 0
     drop
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $14
     return
    else
     local.get $firstDeleted
     i32.const -1
     i32.eq
     if
      local.get $i
      local.set $firstDeleted
     end
    end
   end
   local.get $i
   i32.const 1
   i32.add
   local.get $mask
   i32.and
   local.set $i
   local.get $i
   local.get $start
   i32.ne
   br_if $do-loop|0
  end
  local.get $firstDeleted
  i32.const -1
  i32.ne
  if
   local.get $data
   local.get $firstDeleted
   local.get $slotSize
   i32.mul
   i32.add
   local.set $insertSlot|13
   local.get $insertSlot|13
   local.get $hashCode
   call $~lib/fixedset/FixedSetSlot<i32>#set:hash
   local.get $insertSlot|13
   i32.const 1
   call $~lib/fixedset/FixedSetSlot<i32>#set:state
   local.get $insertSlot|13
   local.get $key
   call $~lib/fixedset/FixedSetSlot<i32>#set:key
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<i32>#get:_count
   i32.const 1
   i32.add
   call $~lib/fixedset/FixedSet<i32>#set:_count
   i32.const 0
   drop
  end
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
 (func $~lib/array/Array<i32>#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<i32>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<i32>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<i32>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<i32>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 496
   i32.const 544
   i32.const 72
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/array/Array<i32>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<i32>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<i32>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<i32>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/array/ensureCapacity (param $array i32) (param $newSize i32) (param $alignLog2 i32) (param $canGrow i32)
  (local $oldCapacity i32)
  (local $oldData i32)
  (local $6 i32)
  (local $7 i32)
  (local $newCapacity i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $newData i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $array
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.set $oldCapacity
  local.get $newSize
  local.get $oldCapacity
  local.get $alignLog2
  i32.shr_u
  i32.gt_u
  if
   local.get $newSize
   i32.const 1073741820
   local.get $alignLog2
   i32.shr_u
   i32.gt_u
   if
    i32.const 496
    i32.const 544
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $array
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   call $~lib/arraybuffer/ArrayBufferView#get:buffer
   local.set $oldData
   local.get $newSize
   local.tee $6
   i32.const 8
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_u
   select
   local.get $alignLog2
   i32.shl
   local.set $newCapacity
   local.get $canGrow
   if
    local.get $oldCapacity
    i32.const 1
    i32.shl
    local.tee $9
    i32.const 1073741820
    local.tee $10
    local.get $9
    local.get $10
    i32.lt_u
    select
    local.tee $11
    local.get $newCapacity
    local.tee $12
    local.get $11
    local.get $12
    i32.gt_u
    select
    local.set $newCapacity
   end
   local.get $oldData
   local.get $newCapacity
   call $~lib/rt/itcms/__renew
   local.set $newData
   i32.const 2
   global.get $~lib/shared/runtime/Runtime.Incremental
   i32.ne
   drop
   local.get $newData
   local.get $oldData
   i32.ne
   if
    local.get $array
    local.get $newData
    i32.store
    local.get $array
    local.get $newData
    i32.store offset=4
    i32.const 2
    global.get $~lib/shared/runtime/Runtime.Memory
    i32.ne
    drop
    local.get $array
    local.get $newData
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $array
   local.get $newCapacity
   i32.store offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i32>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 224
    i32.const 544
    i32.const 132
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<i32>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i32>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  i32.const 0
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#set:length (param $this i32) (param $newLength i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.get $newLength
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $newLength
  call $~lib/array/Array<i32>#set:length_
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<i32>#values (param $this i32) (result i32)
  (local $data i32)
  (local $cap i32)
  (local $slotSize i32)
  (local $values i32)
  (local $length i32)
  (local $i i32)
  (local $slot i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/fixedset/FixedSet<i32>#get:dataPtr
  local.set $data
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/fixedset/FixedSet<i32>#get:_capacity
  local.set $cap
  block $~lib/fixedset/FS_SLOT_SIZE<i32>|inlined.6 (result i32)
   i32.const 12
   i32.const 3
   i32.add
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<i32>|inlined.6
  end
  local.set $slotSize
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/fixedset/FixedSet<i32>#get:_count
  call $~lib/array/Array<i32>#constructor
  local.tee $values
  i32.store offset=4
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $cap
   i32.lt_s
   if
    local.get $data
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $slot
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<i32>#get:state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if
     local.get $values
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store
     local.get $9
     local.get $length
     local.tee $8
     i32.const 1
     i32.add
     local.set $length
     local.get $8
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<i32>#get:key
     call $~lib/array/Array<i32>#__set
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  local.get $length
  call $~lib/array/Array<i32>#set:length
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
  return
 )
 (func $~lib/array/Array<i32>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<i32>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/fixedset/FixedSet<i32>#clear (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/fixedset/FixedSet<i32>#get:dataPtr
  i32.const 0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/fixedset/FixedSet<i32>#get:_capacity
  block $~lib/fixedset/FS_SLOT_SIZE<i32>|inlined.7 (result i32)
   i32.const 12
   i32.const 3
   i32.add
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<i32>|inlined.7
  end
  i32.mul
  memory.fill
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/fixedset/FixedSet<i32>#set:_count
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/fixedset/FixedSet<i32>#set:_entriesUsed
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/fixedset/testNumeric<i32>
  (local $set i32)
  (local $k i32)
  (local $k|2 i32)
  (local $vals i32)
  (local $k|4 i32)
  (local $k|5 i32)
  (local $k|6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 16
  call $~lib/fixedset/FixedSet<i32>#constructor
  local.tee $set
  i32.store
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 5
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  call $~lib/fixedset/FixedSet<i32>#has
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  call $~lib/fixedset/FixedSet<i32>#delete
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 7
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k
  loop $for-loop|0
   local.get $k
   i32.const 100
   i32.lt_s
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k
    call $~lib/fixedset/FixedSet<i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 11
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k
    call $~lib/fixedset/FixedSet<i32>#add
    drop
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k
    call $~lib/fixedset/FixedSet<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 13
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k
    i32.const 1
    i32.add
    local.set $k
    br $for-loop|0
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 15
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k|2
  loop $for-loop|1
   local.get $k|2
   i32.const 100
   i32.lt_s
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|2
    call $~lib/fixedset/FixedSet<i32>#add
    drop
    local.get $k|2
    i32.const 1
    i32.add
    local.set $k|2
    br $for-loop|1
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<i32>#values
  local.tee $vals
  i32.store offset=8
  local.get $vals
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/array/Array<i32>#get:length
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 25
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k|4
  loop $for-loop|2
   local.get $k|4
   i32.const 50
   i32.lt_s
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 29
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<i32>#delete
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 30
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<i32>#delete
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k|4
    i32.const 1
    i32.add
    local.set $k|4
    br $for-loop|2
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 34
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 50
  local.set $k|5
  loop $for-loop|3
   local.get $k|5
   i32.const 100
   i32.lt_s
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|5
    call $~lib/fixedset/FixedSet<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 38
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k|5
    i32.const 1
    i32.add
    local.set $k|5
    br $for-loop|3
   end
  end
  i32.const 0
  local.set $k|6
  loop $for-loop|4
   local.get $k|6
   i32.const 50
   i32.lt_s
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|6
    call $~lib/fixedset/FixedSet<i32>#add
    drop
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|6
    call $~lib/fixedset/FixedSet<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k|6
    i32.const 1
    i32.add
    local.set $k|6
    br $for-loop|4
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<i32>#clear
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 50
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  call $~lib/fixedset/FixedSet<i32>#has
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 51
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 1
  call $~lib/fixedset/FixedSet<i32>#add
  drop
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<i32>#get:size
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 55
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 1
  call $~lib/fixedset/FixedSet<i32>#has
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<u32>#constructor (param $this i32) (param $initialCapacity i32) (result i32)
  (local $cap i32)
  (local $bufferSize i32)
  (local $ptr i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<u32>#set:dataPtr
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<u32>#set:_capacity
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<u32>#set:capacityMask
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<u32>#set:_count
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<u32>#set:_entriesUsed
  local.get $initialCapacity
  i32.const 4
  i32.lt_s
  if
   i32.const 4
   local.set $initialCapacity
  end
  i32.const 4
  local.set $cap
  loop $while-continue|0
   local.get $cap
   local.get $initialCapacity
   i32.lt_s
   if
    local.get $cap
    i32.const 1
    i32.shl
    local.set $cap
    br $while-continue|0
   end
  end
  local.get $cap
  block $~lib/fixedset/FS_SLOT_SIZE<u32>|inlined.0 (result i32)
   i32.const 12
   i32.const 3
   i32.add
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<u32>|inlined.0
  end
  i32.mul
  local.set $bufferSize
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.eq
  drop
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $bufferSize
  memory.fill
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $ptr
  call $~lib/fixedset/FixedSet<u32>#set:dataPtr
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $cap
  call $~lib/fixedset/FixedSet<u32>#set:_capacity
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $cap
  i32.const 1
  i32.sub
  call $~lib/fixedset/FixedSet<u32>#set:capacityMask
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  local.get $this
  local.get $ptr
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/fixedset/FixedSet<u32>#get:size (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/fixedset/FixedSet<u32>#get:_count
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/fixedset/FixedSet<u32>#has (param $this i32) (param $key i32) (result i32)
  (local $this|2 i32)
  (local $key|3 i32)
  (local $hashCode i32)
  (local $mask i32)
  (local $start i32)
  (local $i i32)
  (local $data i32)
  (local $slotSize i32)
  (local $slot i32)
  (local $state i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $~lib/fixedset/FixedSet<u32>#findSlot|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|2
   i32.store
   local.get $key
   local.set $key|3
   local.get $key
   call $~lib/util/hash/HASH<u32>
   local.set $hashCode
   local.get $this|2
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=4
   local.get $12
   call $~lib/fixedset/FixedSet<u32>#get:capacityMask
   local.set $mask
   local.get $hashCode
   local.get $mask
   i32.and
   local.set $start
   local.get $start
   local.set $i
   local.get $this|2
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=4
   local.get $12
   call $~lib/fixedset/FixedSet<u32>#get:dataPtr
   local.set $data
   block $~lib/fixedset/FS_SLOT_SIZE<u32>|inlined.1 (result i32)
    i32.const 12
    i32.const 3
    i32.add
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    br $~lib/fixedset/FS_SLOT_SIZE<u32>|inlined.1
   end
   local.set $slotSize
   loop $do-loop|0
    local.get $data
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $slot
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<u32>#get:state
    local.set $state
    local.get $state
    i32.const 255
    i32.and
    i32.const 0
    i32.eq
    if
     i32.const -1
     br $~lib/fixedset/FixedSet<u32>#findSlot|inlined.0
    end
    local.get $state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<u32>#get:hash
     local.get $hashCode
     i32.eq
    else
     i32.const 0
    end
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<u32>#get:key
     local.get $key|3
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $i
     br $~lib/fixedset/FixedSet<u32>#findSlot|inlined.0
    end
    local.get $i
    i32.const 1
    i32.add
    local.get $mask
    i32.and
    local.set $i
    local.get $i
    local.get $start
    i32.ne
    br_if $do-loop|0
   end
   i32.const -1
   br $~lib/fixedset/FixedSet<u32>#findSlot|inlined.0
  end
  i32.const -1
  i32.ne
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
  return
 )
 (func $~lib/fixedset/FixedSet<u32>#delete (param $this i32) (param $key i32) (result i32)
  (local $this|2 i32)
  (local $key|3 i32)
  (local $hashCode i32)
  (local $mask i32)
  (local $start i32)
  (local $i i32)
  (local $data i32)
  (local $slotSize i32)
  (local $slot i32)
  (local $state i32)
  (local $idx i32)
  (local $slot|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $~lib/fixedset/FixedSet<u32>#findSlot|inlined.1 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|2
   i32.store
   local.get $key
   local.set $key|3
   local.get $key
   call $~lib/util/hash/HASH<u32>
   local.set $hashCode
   local.get $this|2
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<u32>#get:capacityMask
   local.set $mask
   local.get $hashCode
   local.get $mask
   i32.and
   local.set $start
   local.get $start
   local.set $i
   local.get $this|2
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<u32>#get:dataPtr
   local.set $data
   block $~lib/fixedset/FS_SLOT_SIZE<u32>|inlined.2 (result i32)
    i32.const 12
    i32.const 3
    i32.add
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    br $~lib/fixedset/FS_SLOT_SIZE<u32>|inlined.2
   end
   local.set $slotSize
   loop $do-loop|0
    local.get $data
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $slot
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<u32>#get:state
    local.set $state
    local.get $state
    i32.const 255
    i32.and
    i32.const 0
    i32.eq
    if
     i32.const -1
     br $~lib/fixedset/FixedSet<u32>#findSlot|inlined.1
    end
    local.get $state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<u32>#get:hash
     local.get $hashCode
     i32.eq
    else
     i32.const 0
    end
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<u32>#get:key
     local.get $key|3
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $i
     br $~lib/fixedset/FixedSet<u32>#findSlot|inlined.1
    end
    local.get $i
    i32.const 1
    i32.add
    local.get $mask
    i32.and
    local.set $i
    local.get $i
    local.get $start
    i32.ne
    br_if $do-loop|0
   end
   i32.const -1
   br $~lib/fixedset/FixedSet<u32>#findSlot|inlined.1
  end
  local.set $idx
  local.get $idx
  i32.const -1
  i32.eq
  if
   i32.const 0
   local.set $14
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $14
   return
  end
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=4
  local.get $14
  call $~lib/fixedset/FixedSet<u32>#get:dataPtr
  local.get $idx
  block $~lib/fixedset/FS_SLOT_SIZE<u32>|inlined.3 (result i32)
   i32.const 12
   i32.const 3
   i32.add
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<u32>|inlined.3
  end
  i32.mul
  i32.add
  local.set $slot|13
  local.get $slot|13
  i32.const 2
  call $~lib/fixedset/FixedSetSlot<u32>#set:state
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=4
  local.get $14
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  call $~lib/fixedset/FixedSet<u32>#get:_count
  i32.const 1
  i32.sub
  call $~lib/fixedset/FixedSet<u32>#set:_count
  i32.const 1
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
 (func $~lib/fixedset/FixedSet<u32>#rehash (param $this i32) (param $newCapacity i32)
  (local $oldData i32)
  (local $oldCapacity i32)
  (local $slotSize i32)
  (local $newMask i32)
  (local $bufferSize i32)
  (local $newData i32)
  (local $i i32)
  (local $oldSlot i32)
  (local $h i32)
  (local $j i32)
  (local $newSlot i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/fixedset/FixedSet<u32>#get:dataPtr
  local.set $oldData
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/fixedset/FixedSet<u32>#get:_capacity
  local.set $oldCapacity
  block $~lib/fixedset/FS_SLOT_SIZE<u32>|inlined.4 (result i32)
   i32.const 12
   i32.const 3
   i32.add
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<u32>|inlined.4
  end
  local.set $slotSize
  local.get $newCapacity
  i32.const 1
  i32.sub
  local.set $newMask
  local.get $newCapacity
  local.get $slotSize
  i32.mul
  local.set $bufferSize
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.eq
  drop
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $newData
  local.get $newData
  i32.const 0
  local.get $bufferSize
  memory.fill
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $oldCapacity
   i32.lt_s
   if
    local.get $oldData
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $oldSlot
    local.get $oldSlot
    call $~lib/fixedset/FixedSetSlot<u32>#get:state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if
     local.get $oldSlot
     call $~lib/fixedset/FixedSetSlot<u32>#get:hash
     local.set $h
     local.get $h
     local.get $newMask
     i32.and
     local.set $j
     loop $while-continue|1
      local.get $newData
      local.get $j
      local.get $slotSize
      i32.mul
      i32.add
      call $~lib/fixedset/FixedSetSlot<u32>#get:state
      i32.const 255
      i32.and
      i32.const 0
      i32.ne
      if
       local.get $j
       i32.const 1
       i32.add
       local.get $newMask
       i32.and
       local.set $j
       br $while-continue|1
      end
     end
     local.get $newData
     local.get $j
     local.get $slotSize
     i32.mul
     i32.add
     local.set $newSlot
     local.get $newSlot
     local.get $h
     call $~lib/fixedset/FixedSetSlot<u32>#set:hash
     local.get $newSlot
     i32.const 1
     call $~lib/fixedset/FixedSetSlot<u32>#set:state
     local.get $newSlot
     local.get $oldSlot
     call $~lib/fixedset/FixedSetSlot<u32>#get:key
     call $~lib/fixedset/FixedSetSlot<u32>#set:key
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $newData
  call $~lib/fixedset/FixedSet<u32>#set:dataPtr
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $newCapacity
  call $~lib/fixedset/FixedSet<u32>#set:_capacity
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $newMask
  call $~lib/fixedset/FixedSet<u32>#set:capacityMask
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=4
  local.get $13
  call $~lib/fixedset/FixedSet<u32>#get:_count
  call $~lib/fixedset/FixedSet<u32>#set:_entriesUsed
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  local.get $this
  local.get $newData
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<u32>#add (param $this i32) (param $key i32) (result i32)
  (local $hashCode i32)
  (local $mask i32)
  (local $start i32)
  (local $i i32)
  (local $data i32)
  (local $slotSize i32)
  (local $firstDeleted i32)
  (local $slot i32)
  (local $state i32)
  (local $insertIdx i32)
  (local $insertSlot i32)
  (local $insertSlot|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<u32>#get:_entriesUsed
  i32.const 4
  i32.mul
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<u32>#get:_capacity
  i32.const 3
  i32.mul
  i32.ge_s
  if
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<u32>#get:_count
   i32.const 2
   i32.mul
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<u32>#get:_capacity
   i32.gt_s
   if (result i32)
    local.get $this
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    call $~lib/fixedset/FixedSet<u32>#get:_capacity
    i32.const 1
    i32.shl
   else
    local.get $this
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    call $~lib/fixedset/FixedSet<u32>#get:_capacity
   end
   call $~lib/fixedset/FixedSet<u32>#rehash
  end
  local.get $key
  call $~lib/util/hash/HASH<u32>
  local.set $hashCode
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<u32>#get:capacityMask
  local.set $mask
  local.get $hashCode
  local.get $mask
  i32.and
  local.set $start
  local.get $start
  local.set $i
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<u32>#get:dataPtr
  local.set $data
  block $~lib/fixedset/FS_SLOT_SIZE<u32>|inlined.5 (result i32)
   i32.const 12
   i32.const 3
   i32.add
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<u32>|inlined.5
  end
  local.set $slotSize
  i32.const -1
  local.set $firstDeleted
  loop $do-loop|0
   local.get $data
   local.get $i
   local.get $slotSize
   i32.mul
   i32.add
   local.set $slot
   local.get $slot
   call $~lib/fixedset/FixedSetSlot<u32>#get:state
   local.set $state
   local.get $state
   i32.const 255
   i32.and
   i32.const 1
   i32.eq
   if
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<u32>#get:hash
    local.get $hashCode
    i32.eq
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<u32>#get:key
     local.get $key
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $14
     return
    end
   else
    local.get $state
    i32.const 255
    i32.and
    i32.const 0
    i32.eq
    if
     local.get $firstDeleted
     i32.const -1
     i32.ne
     if (result i32)
      local.get $firstDeleted
     else
      local.get $i
     end
     local.set $insertIdx
     local.get $data
     local.get $insertIdx
     local.get $slotSize
     i32.mul
     i32.add
     local.set $insertSlot
     local.get $insertSlot
     local.get $hashCode
     call $~lib/fixedset/FixedSetSlot<u32>#set:hash
     local.get $insertSlot
     i32.const 1
     call $~lib/fixedset/FixedSetSlot<u32>#set:state
     local.get $insertSlot
     local.get $key
     call $~lib/fixedset/FixedSetSlot<u32>#set:key
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store
     local.get $14
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store offset=4
     local.get $14
     call $~lib/fixedset/FixedSet<u32>#get:_count
     i32.const 1
     i32.add
     call $~lib/fixedset/FixedSet<u32>#set:_count
     local.get $firstDeleted
     i32.const -1
     i32.eq
     if
      local.get $this
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $this
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=4
      local.get $14
      call $~lib/fixedset/FixedSet<u32>#get:_entriesUsed
      i32.const 1
      i32.add
      call $~lib/fixedset/FixedSet<u32>#set:_entriesUsed
     end
     i32.const 0
     drop
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $14
     return
    else
     local.get $firstDeleted
     i32.const -1
     i32.eq
     if
      local.get $i
      local.set $firstDeleted
     end
    end
   end
   local.get $i
   i32.const 1
   i32.add
   local.get $mask
   i32.and
   local.set $i
   local.get $i
   local.get $start
   i32.ne
   br_if $do-loop|0
  end
  local.get $firstDeleted
  i32.const -1
  i32.ne
  if
   local.get $data
   local.get $firstDeleted
   local.get $slotSize
   i32.mul
   i32.add
   local.set $insertSlot|13
   local.get $insertSlot|13
   local.get $hashCode
   call $~lib/fixedset/FixedSetSlot<u32>#set:hash
   local.get $insertSlot|13
   i32.const 1
   call $~lib/fixedset/FixedSetSlot<u32>#set:state
   local.get $insertSlot|13
   local.get $key
   call $~lib/fixedset/FixedSetSlot<u32>#set:key
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<u32>#get:_count
   i32.const 1
   i32.add
   call $~lib/fixedset/FixedSet<u32>#set:_count
   i32.const 0
   drop
  end
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
 (func $~lib/array/Array<u32>#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<u32>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<u32>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<u32>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<u32>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 496
   i32.const 544
   i32.const 72
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/array/Array<u32>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<u32>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<u32>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<u32>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/array/Array<u32>#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<u32>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 224
    i32.const 544
    i32.const 132
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<u32>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<u32>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  i32.const 0
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u32>#set:length (param $this i32) (param $newLength i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.get $newLength
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $newLength
  call $~lib/array/Array<u32>#set:length_
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<u32>#values (param $this i32) (result i32)
  (local $data i32)
  (local $cap i32)
  (local $slotSize i32)
  (local $values i32)
  (local $length i32)
  (local $i i32)
  (local $slot i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/fixedset/FixedSet<u32>#get:dataPtr
  local.set $data
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/fixedset/FixedSet<u32>#get:_capacity
  local.set $cap
  block $~lib/fixedset/FS_SLOT_SIZE<u32>|inlined.6 (result i32)
   i32.const 12
   i32.const 3
   i32.add
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<u32>|inlined.6
  end
  local.set $slotSize
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/fixedset/FixedSet<u32>#get:_count
  call $~lib/array/Array<u32>#constructor
  local.tee $values
  i32.store offset=4
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $cap
   i32.lt_s
   if
    local.get $data
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $slot
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<u32>#get:state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if
     local.get $values
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store
     local.get $9
     local.get $length
     local.tee $8
     i32.const 1
     i32.add
     local.set $length
     local.get $8
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<u32>#get:key
     call $~lib/array/Array<u32>#__set
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  local.get $length
  call $~lib/array/Array<u32>#set:length
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
  return
 )
 (func $~lib/array/Array<u32>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<u32>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/fixedset/FixedSet<u32>#clear (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/fixedset/FixedSet<u32>#get:dataPtr
  i32.const 0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/fixedset/FixedSet<u32>#get:_capacity
  block $~lib/fixedset/FS_SLOT_SIZE<u32>|inlined.7 (result i32)
   i32.const 12
   i32.const 3
   i32.add
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<u32>|inlined.7
  end
  i32.mul
  memory.fill
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/fixedset/FixedSet<u32>#set:_count
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/fixedset/FixedSet<u32>#set:_entriesUsed
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/fixedset/testNumeric<u32>
  (local $set i32)
  (local $k i32)
  (local $k|2 i32)
  (local $vals i32)
  (local $k|4 i32)
  (local $k|5 i32)
  (local $k|6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 16
  call $~lib/fixedset/FixedSet<u32>#constructor
  local.tee $set
  i32.store
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<u32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 5
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  call $~lib/fixedset/FixedSet<u32>#has
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  call $~lib/fixedset/FixedSet<u32>#delete
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 7
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k
  loop $for-loop|0
   local.get $k
   i32.const 100
   i32.lt_u
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k
    call $~lib/fixedset/FixedSet<u32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 11
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k
    call $~lib/fixedset/FixedSet<u32>#add
    drop
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k
    call $~lib/fixedset/FixedSet<u32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 13
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k
    i32.const 1
    i32.add
    local.set $k
    br $for-loop|0
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<u32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 15
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k|2
  loop $for-loop|1
   local.get $k|2
   i32.const 100
   i32.lt_u
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|2
    call $~lib/fixedset/FixedSet<u32>#add
    drop
    local.get $k|2
    i32.const 1
    i32.add
    local.set $k|2
    br $for-loop|1
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<u32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<u32>#values
  local.tee $vals
  i32.store offset=8
  local.get $vals
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/array/Array<u32>#get:length
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 25
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k|4
  loop $for-loop|2
   local.get $k|4
   i32.const 50
   i32.lt_u
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<u32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 29
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<u32>#delete
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 30
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<u32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<u32>#delete
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k|4
    i32.const 1
    i32.add
    local.set $k|4
    br $for-loop|2
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<u32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 34
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 50
  local.set $k|5
  loop $for-loop|3
   local.get $k|5
   i32.const 100
   i32.lt_u
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|5
    call $~lib/fixedset/FixedSet<u32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 38
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k|5
    i32.const 1
    i32.add
    local.set $k|5
    br $for-loop|3
   end
  end
  i32.const 0
  local.set $k|6
  loop $for-loop|4
   local.get $k|6
   i32.const 50
   i32.lt_u
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|6
    call $~lib/fixedset/FixedSet<u32>#add
    drop
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|6
    call $~lib/fixedset/FixedSet<u32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k|6
    i32.const 1
    i32.add
    local.set $k|6
    br $for-loop|4
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<u32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<u32>#clear
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<u32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 50
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 0
  call $~lib/fixedset/FixedSet<u32>#has
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 51
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 1
  call $~lib/fixedset/FixedSet<u32>#add
  drop
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<u32>#get:size
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 55
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i32.const 1
  call $~lib/fixedset/FixedSet<u32>#has
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<i64>#constructor (param $this i32) (param $initialCapacity i32) (result i32)
  (local $cap i32)
  (local $bufferSize i32)
  (local $ptr i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<i64>#set:dataPtr
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<i64>#set:_capacity
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<i64>#set:capacityMask
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<i64>#set:_count
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<i64>#set:_entriesUsed
  local.get $initialCapacity
  i32.const 4
  i32.lt_s
  if
   i32.const 4
   local.set $initialCapacity
  end
  i32.const 4
  local.set $cap
  loop $while-continue|0
   local.get $cap
   local.get $initialCapacity
   i32.lt_s
   if
    local.get $cap
    i32.const 1
    i32.shl
    local.set $cap
    br $while-continue|0
   end
  end
  local.get $cap
  block $~lib/fixedset/FS_SLOT_SIZE<i64>|inlined.0 (result i32)
   i32.const 16
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<i64>|inlined.0
  end
  i32.mul
  local.set $bufferSize
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.eq
  drop
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $bufferSize
  memory.fill
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $ptr
  call $~lib/fixedset/FixedSet<i64>#set:dataPtr
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $cap
  call $~lib/fixedset/FixedSet<i64>#set:_capacity
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $cap
  i32.const 1
  i32.sub
  call $~lib/fixedset/FixedSet<i64>#set:capacityMask
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  local.get $this
  local.get $ptr
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/fixedset/FixedSet<i64>#get:size (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/fixedset/FixedSet<i64>#get:_count
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/fixedset/FixedSet<i64>#has (param $this i32) (param $key i64) (result i32)
  (local $this|2 i32)
  (local $key|3 i64)
  (local $hashCode i32)
  (local $mask i32)
  (local $start i32)
  (local $i i32)
  (local $data i32)
  (local $slotSize i32)
  (local $slot i32)
  (local $state i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $~lib/fixedset/FixedSet<i64>#findSlot|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|2
   i32.store
   local.get $key
   local.set $key|3
   local.get $key
   call $~lib/util/hash/HASH<i64>
   local.set $hashCode
   local.get $this|2
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=4
   local.get $12
   call $~lib/fixedset/FixedSet<i64>#get:capacityMask
   local.set $mask
   local.get $hashCode
   local.get $mask
   i32.and
   local.set $start
   local.get $start
   local.set $i
   local.get $this|2
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=4
   local.get $12
   call $~lib/fixedset/FixedSet<i64>#get:dataPtr
   local.set $data
   block $~lib/fixedset/FS_SLOT_SIZE<i64>|inlined.1 (result i32)
    i32.const 16
    i32.const 7
    i32.add
    i32.const 7
    i32.const -1
    i32.xor
    i32.and
    br $~lib/fixedset/FS_SLOT_SIZE<i64>|inlined.1
   end
   local.set $slotSize
   loop $do-loop|0
    local.get $data
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $slot
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<i64>#get:state
    local.set $state
    local.get $state
    i32.const 255
    i32.and
    i32.const 0
    i32.eq
    if
     i32.const -1
     br $~lib/fixedset/FixedSet<i64>#findSlot|inlined.0
    end
    local.get $state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<i64>#get:hash
     local.get $hashCode
     i32.eq
    else
     i32.const 0
    end
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<i64>#get:key
     local.get $key|3
     i64.eq
    else
     i32.const 0
    end
    if
     local.get $i
     br $~lib/fixedset/FixedSet<i64>#findSlot|inlined.0
    end
    local.get $i
    i32.const 1
    i32.add
    local.get $mask
    i32.and
    local.set $i
    local.get $i
    local.get $start
    i32.ne
    br_if $do-loop|0
   end
   i32.const -1
   br $~lib/fixedset/FixedSet<i64>#findSlot|inlined.0
  end
  i32.const -1
  i32.ne
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
  return
 )
 (func $~lib/fixedset/FixedSet<i64>#delete (param $this i32) (param $key i64) (result i32)
  (local $this|2 i32)
  (local $key|3 i64)
  (local $hashCode i32)
  (local $mask i32)
  (local $start i32)
  (local $i i32)
  (local $data i32)
  (local $slotSize i32)
  (local $slot i32)
  (local $state i32)
  (local $idx i32)
  (local $slot|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $~lib/fixedset/FixedSet<i64>#findSlot|inlined.1 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|2
   i32.store
   local.get $key
   local.set $key|3
   local.get $key
   call $~lib/util/hash/HASH<i64>
   local.set $hashCode
   local.get $this|2
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<i64>#get:capacityMask
   local.set $mask
   local.get $hashCode
   local.get $mask
   i32.and
   local.set $start
   local.get $start
   local.set $i
   local.get $this|2
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<i64>#get:dataPtr
   local.set $data
   block $~lib/fixedset/FS_SLOT_SIZE<i64>|inlined.2 (result i32)
    i32.const 16
    i32.const 7
    i32.add
    i32.const 7
    i32.const -1
    i32.xor
    i32.and
    br $~lib/fixedset/FS_SLOT_SIZE<i64>|inlined.2
   end
   local.set $slotSize
   loop $do-loop|0
    local.get $data
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $slot
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<i64>#get:state
    local.set $state
    local.get $state
    i32.const 255
    i32.and
    i32.const 0
    i32.eq
    if
     i32.const -1
     br $~lib/fixedset/FixedSet<i64>#findSlot|inlined.1
    end
    local.get $state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<i64>#get:hash
     local.get $hashCode
     i32.eq
    else
     i32.const 0
    end
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<i64>#get:key
     local.get $key|3
     i64.eq
    else
     i32.const 0
    end
    if
     local.get $i
     br $~lib/fixedset/FixedSet<i64>#findSlot|inlined.1
    end
    local.get $i
    i32.const 1
    i32.add
    local.get $mask
    i32.and
    local.set $i
    local.get $i
    local.get $start
    i32.ne
    br_if $do-loop|0
   end
   i32.const -1
   br $~lib/fixedset/FixedSet<i64>#findSlot|inlined.1
  end
  local.set $idx
  local.get $idx
  i32.const -1
  i32.eq
  if
   i32.const 0
   local.set $14
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $14
   return
  end
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=4
  local.get $14
  call $~lib/fixedset/FixedSet<i64>#get:dataPtr
  local.get $idx
  block $~lib/fixedset/FS_SLOT_SIZE<i64>|inlined.3 (result i32)
   i32.const 16
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<i64>|inlined.3
  end
  i32.mul
  i32.add
  local.set $slot|13
  local.get $slot|13
  i32.const 2
  call $~lib/fixedset/FixedSetSlot<i64>#set:state
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=4
  local.get $14
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  call $~lib/fixedset/FixedSet<i64>#get:_count
  i32.const 1
  i32.sub
  call $~lib/fixedset/FixedSet<i64>#set:_count
  i32.const 1
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
 (func $~lib/fixedset/FixedSet<i64>#rehash (param $this i32) (param $newCapacity i32)
  (local $oldData i32)
  (local $oldCapacity i32)
  (local $slotSize i32)
  (local $newMask i32)
  (local $bufferSize i32)
  (local $newData i32)
  (local $i i32)
  (local $oldSlot i32)
  (local $h i32)
  (local $j i32)
  (local $newSlot i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/fixedset/FixedSet<i64>#get:dataPtr
  local.set $oldData
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/fixedset/FixedSet<i64>#get:_capacity
  local.set $oldCapacity
  block $~lib/fixedset/FS_SLOT_SIZE<i64>|inlined.4 (result i32)
   i32.const 16
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<i64>|inlined.4
  end
  local.set $slotSize
  local.get $newCapacity
  i32.const 1
  i32.sub
  local.set $newMask
  local.get $newCapacity
  local.get $slotSize
  i32.mul
  local.set $bufferSize
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.eq
  drop
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $newData
  local.get $newData
  i32.const 0
  local.get $bufferSize
  memory.fill
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $oldCapacity
   i32.lt_s
   if
    local.get $oldData
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $oldSlot
    local.get $oldSlot
    call $~lib/fixedset/FixedSetSlot<i64>#get:state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if
     local.get $oldSlot
     call $~lib/fixedset/FixedSetSlot<i64>#get:hash
     local.set $h
     local.get $h
     local.get $newMask
     i32.and
     local.set $j
     loop $while-continue|1
      local.get $newData
      local.get $j
      local.get $slotSize
      i32.mul
      i32.add
      call $~lib/fixedset/FixedSetSlot<i64>#get:state
      i32.const 255
      i32.and
      i32.const 0
      i32.ne
      if
       local.get $j
       i32.const 1
       i32.add
       local.get $newMask
       i32.and
       local.set $j
       br $while-continue|1
      end
     end
     local.get $newData
     local.get $j
     local.get $slotSize
     i32.mul
     i32.add
     local.set $newSlot
     local.get $newSlot
     local.get $h
     call $~lib/fixedset/FixedSetSlot<i64>#set:hash
     local.get $newSlot
     i32.const 1
     call $~lib/fixedset/FixedSetSlot<i64>#set:state
     local.get $newSlot
     local.get $oldSlot
     call $~lib/fixedset/FixedSetSlot<i64>#get:key
     call $~lib/fixedset/FixedSetSlot<i64>#set:key
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $newData
  call $~lib/fixedset/FixedSet<i64>#set:dataPtr
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $newCapacity
  call $~lib/fixedset/FixedSet<i64>#set:_capacity
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $newMask
  call $~lib/fixedset/FixedSet<i64>#set:capacityMask
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=4
  local.get $13
  call $~lib/fixedset/FixedSet<i64>#get:_count
  call $~lib/fixedset/FixedSet<i64>#set:_entriesUsed
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  local.get $this
  local.get $newData
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<i64>#add (param $this i32) (param $key i64) (result i32)
  (local $hashCode i32)
  (local $mask i32)
  (local $start i32)
  (local $i i32)
  (local $data i32)
  (local $slotSize i32)
  (local $firstDeleted i32)
  (local $slot i32)
  (local $state i32)
  (local $insertIdx i32)
  (local $insertSlot i32)
  (local $insertSlot|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<i64>#get:_entriesUsed
  i32.const 4
  i32.mul
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<i64>#get:_capacity
  i32.const 3
  i32.mul
  i32.ge_s
  if
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<i64>#get:_count
   i32.const 2
   i32.mul
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<i64>#get:_capacity
   i32.gt_s
   if (result i32)
    local.get $this
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    call $~lib/fixedset/FixedSet<i64>#get:_capacity
    i32.const 1
    i32.shl
   else
    local.get $this
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    call $~lib/fixedset/FixedSet<i64>#get:_capacity
   end
   call $~lib/fixedset/FixedSet<i64>#rehash
  end
  local.get $key
  call $~lib/util/hash/HASH<i64>
  local.set $hashCode
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<i64>#get:capacityMask
  local.set $mask
  local.get $hashCode
  local.get $mask
  i32.and
  local.set $start
  local.get $start
  local.set $i
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<i64>#get:dataPtr
  local.set $data
  block $~lib/fixedset/FS_SLOT_SIZE<i64>|inlined.5 (result i32)
   i32.const 16
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<i64>|inlined.5
  end
  local.set $slotSize
  i32.const -1
  local.set $firstDeleted
  loop $do-loop|0
   local.get $data
   local.get $i
   local.get $slotSize
   i32.mul
   i32.add
   local.set $slot
   local.get $slot
   call $~lib/fixedset/FixedSetSlot<i64>#get:state
   local.set $state
   local.get $state
   i32.const 255
   i32.and
   i32.const 1
   i32.eq
   if
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<i64>#get:hash
    local.get $hashCode
    i32.eq
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<i64>#get:key
     local.get $key
     i64.eq
    else
     i32.const 0
    end
    if
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $14
     return
    end
   else
    local.get $state
    i32.const 255
    i32.and
    i32.const 0
    i32.eq
    if
     local.get $firstDeleted
     i32.const -1
     i32.ne
     if (result i32)
      local.get $firstDeleted
     else
      local.get $i
     end
     local.set $insertIdx
     local.get $data
     local.get $insertIdx
     local.get $slotSize
     i32.mul
     i32.add
     local.set $insertSlot
     local.get $insertSlot
     local.get $hashCode
     call $~lib/fixedset/FixedSetSlot<i64>#set:hash
     local.get $insertSlot
     i32.const 1
     call $~lib/fixedset/FixedSetSlot<i64>#set:state
     local.get $insertSlot
     local.get $key
     call $~lib/fixedset/FixedSetSlot<i64>#set:key
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store
     local.get $14
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store offset=4
     local.get $14
     call $~lib/fixedset/FixedSet<i64>#get:_count
     i32.const 1
     i32.add
     call $~lib/fixedset/FixedSet<i64>#set:_count
     local.get $firstDeleted
     i32.const -1
     i32.eq
     if
      local.get $this
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $this
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=4
      local.get $14
      call $~lib/fixedset/FixedSet<i64>#get:_entriesUsed
      i32.const 1
      i32.add
      call $~lib/fixedset/FixedSet<i64>#set:_entriesUsed
     end
     i32.const 0
     drop
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $14
     return
    else
     local.get $firstDeleted
     i32.const -1
     i32.eq
     if
      local.get $i
      local.set $firstDeleted
     end
    end
   end
   local.get $i
   i32.const 1
   i32.add
   local.get $mask
   i32.and
   local.set $i
   local.get $i
   local.get $start
   i32.ne
   br_if $do-loop|0
  end
  local.get $firstDeleted
  i32.const -1
  i32.ne
  if
   local.get $data
   local.get $firstDeleted
   local.get $slotSize
   i32.mul
   i32.add
   local.set $insertSlot|13
   local.get $insertSlot|13
   local.get $hashCode
   call $~lib/fixedset/FixedSetSlot<i64>#set:hash
   local.get $insertSlot|13
   i32.const 1
   call $~lib/fixedset/FixedSetSlot<i64>#set:state
   local.get $insertSlot|13
   local.get $key
   call $~lib/fixedset/FixedSetSlot<i64>#set:key
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<i64>#get:_count
   i32.const 1
   i32.add
   call $~lib/fixedset/FixedSet<i64>#set:_count
   i32.const 0
   drop
  end
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
 (func $~lib/array/Array<i64>#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<i64>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<i64>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<i64>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<i64>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 3
  i32.shr_u
  i32.gt_u
  if
   i32.const 496
   i32.const 544
   i32.const 72
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 3
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/array/Array<i64>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<i64>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<i64>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<i64>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/array/Array<i64>#__set (param $this i32) (param $index i32) (param $value i64)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i64>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 224
    i32.const 544
    i32.const 132
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 3
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<i64>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<i64>#get:dataStart
  local.get $index
  i32.const 3
  i32.shl
  i32.add
  local.get $value
  i64.store
  i32.const 0
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i64>#set:length (param $this i32) (param $newLength i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.get $newLength
  i32.const 3
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $newLength
  call $~lib/array/Array<i64>#set:length_
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<i64>#values (param $this i32) (result i32)
  (local $data i32)
  (local $cap i32)
  (local $slotSize i32)
  (local $values i32)
  (local $length i32)
  (local $i i32)
  (local $slot i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/fixedset/FixedSet<i64>#get:dataPtr
  local.set $data
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/fixedset/FixedSet<i64>#get:_capacity
  local.set $cap
  block $~lib/fixedset/FS_SLOT_SIZE<i64>|inlined.6 (result i32)
   i32.const 16
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<i64>|inlined.6
  end
  local.set $slotSize
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/fixedset/FixedSet<i64>#get:_count
  call $~lib/array/Array<i64>#constructor
  local.tee $values
  i32.store offset=4
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $cap
   i32.lt_s
   if
    local.get $data
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $slot
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<i64>#get:state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if
     local.get $values
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store
     local.get $9
     local.get $length
     local.tee $8
     i32.const 1
     i32.add
     local.set $length
     local.get $8
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<i64>#get:key
     call $~lib/array/Array<i64>#__set
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  local.get $length
  call $~lib/array/Array<i64>#set:length
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
  return
 )
 (func $~lib/array/Array<i64>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<i64>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/fixedset/FixedSet<i64>#clear (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/fixedset/FixedSet<i64>#get:dataPtr
  i32.const 0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/fixedset/FixedSet<i64>#get:_capacity
  block $~lib/fixedset/FS_SLOT_SIZE<i64>|inlined.7 (result i32)
   i32.const 16
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<i64>|inlined.7
  end
  i32.mul
  memory.fill
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/fixedset/FixedSet<i64>#set:_count
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/fixedset/FixedSet<i64>#set:_entriesUsed
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/fixedset/testNumeric<i64>
  (local $set i32)
  (local $k i64)
  (local $k|2 i64)
  (local $vals i32)
  (local $k|4 i64)
  (local $k|5 i64)
  (local $k|6 i64)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 16
  call $~lib/fixedset/FixedSet<i64>#constructor
  local.tee $set
  i32.store
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<i64>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 5
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i64.const 0
  call $~lib/fixedset/FixedSet<i64>#has
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i64.const 0
  call $~lib/fixedset/FixedSet<i64>#delete
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 7
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $k
  loop $for-loop|0
   local.get $k
   i64.const 100
   i64.lt_s
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k
    call $~lib/fixedset/FixedSet<i64>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 11
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k
    call $~lib/fixedset/FixedSet<i64>#add
    drop
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k
    call $~lib/fixedset/FixedSet<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 13
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k
    i64.const 1
    i64.add
    local.set $k
    br $for-loop|0
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<i64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 15
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $k|2
  loop $for-loop|1
   local.get $k|2
   i64.const 100
   i64.lt_s
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|2
    call $~lib/fixedset/FixedSet<i64>#add
    drop
    local.get $k|2
    i64.const 1
    i64.add
    local.set $k|2
    br $for-loop|1
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<i64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<i64>#values
  local.tee $vals
  i32.store offset=8
  local.get $vals
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/array/Array<i64>#get:length
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 25
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $k|4
  loop $for-loop|2
   local.get $k|4
   i64.const 50
   i64.lt_s
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 29
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<i64>#delete
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 30
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<i64>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<i64>#delete
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k|4
    i64.const 1
    i64.add
    local.set $k|4
    br $for-loop|2
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<i64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 34
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 50
  local.set $k|5
  loop $for-loop|3
   local.get $k|5
   i64.const 100
   i64.lt_s
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|5
    call $~lib/fixedset/FixedSet<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 38
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k|5
    i64.const 1
    i64.add
    local.set $k|5
    br $for-loop|3
   end
  end
  i64.const 0
  local.set $k|6
  loop $for-loop|4
   local.get $k|6
   i64.const 50
   i64.lt_s
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|6
    call $~lib/fixedset/FixedSet<i64>#add
    drop
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|6
    call $~lib/fixedset/FixedSet<i64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k|6
    i64.const 1
    i64.add
    local.set $k|6
    br $for-loop|4
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<i64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<i64>#clear
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<i64>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 50
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i64.const 0
  call $~lib/fixedset/FixedSet<i64>#has
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 51
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i64.const 1
  call $~lib/fixedset/FixedSet<i64>#add
  drop
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<i64>#get:size
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 55
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i64.const 1
  call $~lib/fixedset/FixedSet<i64>#has
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<u64>#constructor (param $this i32) (param $initialCapacity i32) (result i32)
  (local $cap i32)
  (local $bufferSize i32)
  (local $ptr i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<u64>#set:dataPtr
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<u64>#set:_capacity
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<u64>#set:capacityMask
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<u64>#set:_count
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<u64>#set:_entriesUsed
  local.get $initialCapacity
  i32.const 4
  i32.lt_s
  if
   i32.const 4
   local.set $initialCapacity
  end
  i32.const 4
  local.set $cap
  loop $while-continue|0
   local.get $cap
   local.get $initialCapacity
   i32.lt_s
   if
    local.get $cap
    i32.const 1
    i32.shl
    local.set $cap
    br $while-continue|0
   end
  end
  local.get $cap
  block $~lib/fixedset/FS_SLOT_SIZE<u64>|inlined.0 (result i32)
   i32.const 16
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<u64>|inlined.0
  end
  i32.mul
  local.set $bufferSize
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.eq
  drop
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $bufferSize
  memory.fill
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $ptr
  call $~lib/fixedset/FixedSet<u64>#set:dataPtr
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $cap
  call $~lib/fixedset/FixedSet<u64>#set:_capacity
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $cap
  i32.const 1
  i32.sub
  call $~lib/fixedset/FixedSet<u64>#set:capacityMask
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  local.get $this
  local.get $ptr
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/fixedset/FixedSet<u64>#get:size (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/fixedset/FixedSet<u64>#get:_count
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/fixedset/FixedSet<u64>#has (param $this i32) (param $key i64) (result i32)
  (local $this|2 i32)
  (local $key|3 i64)
  (local $hashCode i32)
  (local $mask i32)
  (local $start i32)
  (local $i i32)
  (local $data i32)
  (local $slotSize i32)
  (local $slot i32)
  (local $state i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $~lib/fixedset/FixedSet<u64>#findSlot|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|2
   i32.store
   local.get $key
   local.set $key|3
   local.get $key
   call $~lib/util/hash/HASH<u64>
   local.set $hashCode
   local.get $this|2
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=4
   local.get $12
   call $~lib/fixedset/FixedSet<u64>#get:capacityMask
   local.set $mask
   local.get $hashCode
   local.get $mask
   i32.and
   local.set $start
   local.get $start
   local.set $i
   local.get $this|2
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=4
   local.get $12
   call $~lib/fixedset/FixedSet<u64>#get:dataPtr
   local.set $data
   block $~lib/fixedset/FS_SLOT_SIZE<u64>|inlined.1 (result i32)
    i32.const 16
    i32.const 7
    i32.add
    i32.const 7
    i32.const -1
    i32.xor
    i32.and
    br $~lib/fixedset/FS_SLOT_SIZE<u64>|inlined.1
   end
   local.set $slotSize
   loop $do-loop|0
    local.get $data
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $slot
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<u64>#get:state
    local.set $state
    local.get $state
    i32.const 255
    i32.and
    i32.const 0
    i32.eq
    if
     i32.const -1
     br $~lib/fixedset/FixedSet<u64>#findSlot|inlined.0
    end
    local.get $state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<u64>#get:hash
     local.get $hashCode
     i32.eq
    else
     i32.const 0
    end
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<u64>#get:key
     local.get $key|3
     i64.eq
    else
     i32.const 0
    end
    if
     local.get $i
     br $~lib/fixedset/FixedSet<u64>#findSlot|inlined.0
    end
    local.get $i
    i32.const 1
    i32.add
    local.get $mask
    i32.and
    local.set $i
    local.get $i
    local.get $start
    i32.ne
    br_if $do-loop|0
   end
   i32.const -1
   br $~lib/fixedset/FixedSet<u64>#findSlot|inlined.0
  end
  i32.const -1
  i32.ne
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
  return
 )
 (func $~lib/fixedset/FixedSet<u64>#delete (param $this i32) (param $key i64) (result i32)
  (local $this|2 i32)
  (local $key|3 i64)
  (local $hashCode i32)
  (local $mask i32)
  (local $start i32)
  (local $i i32)
  (local $data i32)
  (local $slotSize i32)
  (local $slot i32)
  (local $state i32)
  (local $idx i32)
  (local $slot|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $~lib/fixedset/FixedSet<u64>#findSlot|inlined.1 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|2
   i32.store
   local.get $key
   local.set $key|3
   local.get $key
   call $~lib/util/hash/HASH<u64>
   local.set $hashCode
   local.get $this|2
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<u64>#get:capacityMask
   local.set $mask
   local.get $hashCode
   local.get $mask
   i32.and
   local.set $start
   local.get $start
   local.set $i
   local.get $this|2
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<u64>#get:dataPtr
   local.set $data
   block $~lib/fixedset/FS_SLOT_SIZE<u64>|inlined.2 (result i32)
    i32.const 16
    i32.const 7
    i32.add
    i32.const 7
    i32.const -1
    i32.xor
    i32.and
    br $~lib/fixedset/FS_SLOT_SIZE<u64>|inlined.2
   end
   local.set $slotSize
   loop $do-loop|0
    local.get $data
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $slot
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<u64>#get:state
    local.set $state
    local.get $state
    i32.const 255
    i32.and
    i32.const 0
    i32.eq
    if
     i32.const -1
     br $~lib/fixedset/FixedSet<u64>#findSlot|inlined.1
    end
    local.get $state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<u64>#get:hash
     local.get $hashCode
     i32.eq
    else
     i32.const 0
    end
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<u64>#get:key
     local.get $key|3
     i64.eq
    else
     i32.const 0
    end
    if
     local.get $i
     br $~lib/fixedset/FixedSet<u64>#findSlot|inlined.1
    end
    local.get $i
    i32.const 1
    i32.add
    local.get $mask
    i32.and
    local.set $i
    local.get $i
    local.get $start
    i32.ne
    br_if $do-loop|0
   end
   i32.const -1
   br $~lib/fixedset/FixedSet<u64>#findSlot|inlined.1
  end
  local.set $idx
  local.get $idx
  i32.const -1
  i32.eq
  if
   i32.const 0
   local.set $14
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $14
   return
  end
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=4
  local.get $14
  call $~lib/fixedset/FixedSet<u64>#get:dataPtr
  local.get $idx
  block $~lib/fixedset/FS_SLOT_SIZE<u64>|inlined.3 (result i32)
   i32.const 16
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<u64>|inlined.3
  end
  i32.mul
  i32.add
  local.set $slot|13
  local.get $slot|13
  i32.const 2
  call $~lib/fixedset/FixedSetSlot<u64>#set:state
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=4
  local.get $14
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  call $~lib/fixedset/FixedSet<u64>#get:_count
  i32.const 1
  i32.sub
  call $~lib/fixedset/FixedSet<u64>#set:_count
  i32.const 1
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
 (func $~lib/fixedset/FixedSet<u64>#rehash (param $this i32) (param $newCapacity i32)
  (local $oldData i32)
  (local $oldCapacity i32)
  (local $slotSize i32)
  (local $newMask i32)
  (local $bufferSize i32)
  (local $newData i32)
  (local $i i32)
  (local $oldSlot i32)
  (local $h i32)
  (local $j i32)
  (local $newSlot i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/fixedset/FixedSet<u64>#get:dataPtr
  local.set $oldData
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/fixedset/FixedSet<u64>#get:_capacity
  local.set $oldCapacity
  block $~lib/fixedset/FS_SLOT_SIZE<u64>|inlined.4 (result i32)
   i32.const 16
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<u64>|inlined.4
  end
  local.set $slotSize
  local.get $newCapacity
  i32.const 1
  i32.sub
  local.set $newMask
  local.get $newCapacity
  local.get $slotSize
  i32.mul
  local.set $bufferSize
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.eq
  drop
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $newData
  local.get $newData
  i32.const 0
  local.get $bufferSize
  memory.fill
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $oldCapacity
   i32.lt_s
   if
    local.get $oldData
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $oldSlot
    local.get $oldSlot
    call $~lib/fixedset/FixedSetSlot<u64>#get:state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if
     local.get $oldSlot
     call $~lib/fixedset/FixedSetSlot<u64>#get:hash
     local.set $h
     local.get $h
     local.get $newMask
     i32.and
     local.set $j
     loop $while-continue|1
      local.get $newData
      local.get $j
      local.get $slotSize
      i32.mul
      i32.add
      call $~lib/fixedset/FixedSetSlot<u64>#get:state
      i32.const 255
      i32.and
      i32.const 0
      i32.ne
      if
       local.get $j
       i32.const 1
       i32.add
       local.get $newMask
       i32.and
       local.set $j
       br $while-continue|1
      end
     end
     local.get $newData
     local.get $j
     local.get $slotSize
     i32.mul
     i32.add
     local.set $newSlot
     local.get $newSlot
     local.get $h
     call $~lib/fixedset/FixedSetSlot<u64>#set:hash
     local.get $newSlot
     i32.const 1
     call $~lib/fixedset/FixedSetSlot<u64>#set:state
     local.get $newSlot
     local.get $oldSlot
     call $~lib/fixedset/FixedSetSlot<u64>#get:key
     call $~lib/fixedset/FixedSetSlot<u64>#set:key
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $newData
  call $~lib/fixedset/FixedSet<u64>#set:dataPtr
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $newCapacity
  call $~lib/fixedset/FixedSet<u64>#set:_capacity
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $newMask
  call $~lib/fixedset/FixedSet<u64>#set:capacityMask
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=4
  local.get $13
  call $~lib/fixedset/FixedSet<u64>#get:_count
  call $~lib/fixedset/FixedSet<u64>#set:_entriesUsed
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  local.get $this
  local.get $newData
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<u64>#add (param $this i32) (param $key i64) (result i32)
  (local $hashCode i32)
  (local $mask i32)
  (local $start i32)
  (local $i i32)
  (local $data i32)
  (local $slotSize i32)
  (local $firstDeleted i32)
  (local $slot i32)
  (local $state i32)
  (local $insertIdx i32)
  (local $insertSlot i32)
  (local $insertSlot|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<u64>#get:_entriesUsed
  i32.const 4
  i32.mul
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<u64>#get:_capacity
  i32.const 3
  i32.mul
  i32.ge_s
  if
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<u64>#get:_count
   i32.const 2
   i32.mul
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<u64>#get:_capacity
   i32.gt_s
   if (result i32)
    local.get $this
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    call $~lib/fixedset/FixedSet<u64>#get:_capacity
    i32.const 1
    i32.shl
   else
    local.get $this
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    call $~lib/fixedset/FixedSet<u64>#get:_capacity
   end
   call $~lib/fixedset/FixedSet<u64>#rehash
  end
  local.get $key
  call $~lib/util/hash/HASH<u64>
  local.set $hashCode
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<u64>#get:capacityMask
  local.set $mask
  local.get $hashCode
  local.get $mask
  i32.and
  local.set $start
  local.get $start
  local.set $i
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<u64>#get:dataPtr
  local.set $data
  block $~lib/fixedset/FS_SLOT_SIZE<u64>|inlined.5 (result i32)
   i32.const 16
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<u64>|inlined.5
  end
  local.set $slotSize
  i32.const -1
  local.set $firstDeleted
  loop $do-loop|0
   local.get $data
   local.get $i
   local.get $slotSize
   i32.mul
   i32.add
   local.set $slot
   local.get $slot
   call $~lib/fixedset/FixedSetSlot<u64>#get:state
   local.set $state
   local.get $state
   i32.const 255
   i32.and
   i32.const 1
   i32.eq
   if
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<u64>#get:hash
    local.get $hashCode
    i32.eq
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<u64>#get:key
     local.get $key
     i64.eq
    else
     i32.const 0
    end
    if
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $14
     return
    end
   else
    local.get $state
    i32.const 255
    i32.and
    i32.const 0
    i32.eq
    if
     local.get $firstDeleted
     i32.const -1
     i32.ne
     if (result i32)
      local.get $firstDeleted
     else
      local.get $i
     end
     local.set $insertIdx
     local.get $data
     local.get $insertIdx
     local.get $slotSize
     i32.mul
     i32.add
     local.set $insertSlot
     local.get $insertSlot
     local.get $hashCode
     call $~lib/fixedset/FixedSetSlot<u64>#set:hash
     local.get $insertSlot
     i32.const 1
     call $~lib/fixedset/FixedSetSlot<u64>#set:state
     local.get $insertSlot
     local.get $key
     call $~lib/fixedset/FixedSetSlot<u64>#set:key
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store
     local.get $14
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store offset=4
     local.get $14
     call $~lib/fixedset/FixedSet<u64>#get:_count
     i32.const 1
     i32.add
     call $~lib/fixedset/FixedSet<u64>#set:_count
     local.get $firstDeleted
     i32.const -1
     i32.eq
     if
      local.get $this
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $this
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=4
      local.get $14
      call $~lib/fixedset/FixedSet<u64>#get:_entriesUsed
      i32.const 1
      i32.add
      call $~lib/fixedset/FixedSet<u64>#set:_entriesUsed
     end
     i32.const 0
     drop
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $14
     return
    else
     local.get $firstDeleted
     i32.const -1
     i32.eq
     if
      local.get $i
      local.set $firstDeleted
     end
    end
   end
   local.get $i
   i32.const 1
   i32.add
   local.get $mask
   i32.and
   local.set $i
   local.get $i
   local.get $start
   i32.ne
   br_if $do-loop|0
  end
  local.get $firstDeleted
  i32.const -1
  i32.ne
  if
   local.get $data
   local.get $firstDeleted
   local.get $slotSize
   i32.mul
   i32.add
   local.set $insertSlot|13
   local.get $insertSlot|13
   local.get $hashCode
   call $~lib/fixedset/FixedSetSlot<u64>#set:hash
   local.get $insertSlot|13
   i32.const 1
   call $~lib/fixedset/FixedSetSlot<u64>#set:state
   local.get $insertSlot|13
   local.get $key
   call $~lib/fixedset/FixedSetSlot<u64>#set:key
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<u64>#get:_count
   i32.const 1
   i32.add
   call $~lib/fixedset/FixedSet<u64>#set:_count
   i32.const 0
   drop
  end
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
 (func $~lib/array/Array<u64>#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<u64>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<u64>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<u64>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<u64>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 3
  i32.shr_u
  i32.gt_u
  if
   i32.const 496
   i32.const 544
   i32.const 72
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 3
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/array/Array<u64>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<u64>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<u64>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<u64>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/array/Array<u64>#__set (param $this i32) (param $index i32) (param $value i64)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<u64>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 224
    i32.const 544
    i32.const 132
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 3
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<u64>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<u64>#get:dataStart
  local.get $index
  i32.const 3
  i32.shl
  i32.add
  local.get $value
  i64.store
  i32.const 0
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u64>#set:length (param $this i32) (param $newLength i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.get $newLength
  i32.const 3
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $newLength
  call $~lib/array/Array<u64>#set:length_
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<u64>#values (param $this i32) (result i32)
  (local $data i32)
  (local $cap i32)
  (local $slotSize i32)
  (local $values i32)
  (local $length i32)
  (local $i i32)
  (local $slot i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/fixedset/FixedSet<u64>#get:dataPtr
  local.set $data
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/fixedset/FixedSet<u64>#get:_capacity
  local.set $cap
  block $~lib/fixedset/FS_SLOT_SIZE<u64>|inlined.6 (result i32)
   i32.const 16
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<u64>|inlined.6
  end
  local.set $slotSize
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/fixedset/FixedSet<u64>#get:_count
  call $~lib/array/Array<u64>#constructor
  local.tee $values
  i32.store offset=4
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $cap
   i32.lt_s
   if
    local.get $data
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $slot
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<u64>#get:state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if
     local.get $values
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store
     local.get $9
     local.get $length
     local.tee $8
     i32.const 1
     i32.add
     local.set $length
     local.get $8
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<u64>#get:key
     call $~lib/array/Array<u64>#__set
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  local.get $length
  call $~lib/array/Array<u64>#set:length
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
  return
 )
 (func $~lib/array/Array<u64>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<u64>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/fixedset/FixedSet<u64>#clear (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/fixedset/FixedSet<u64>#get:dataPtr
  i32.const 0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/fixedset/FixedSet<u64>#get:_capacity
  block $~lib/fixedset/FS_SLOT_SIZE<u64>|inlined.7 (result i32)
   i32.const 16
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<u64>|inlined.7
  end
  i32.mul
  memory.fill
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/fixedset/FixedSet<u64>#set:_count
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/fixedset/FixedSet<u64>#set:_entriesUsed
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/fixedset/testNumeric<u64>
  (local $set i32)
  (local $k i64)
  (local $k|2 i64)
  (local $vals i32)
  (local $k|4 i64)
  (local $k|5 i64)
  (local $k|6 i64)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 16
  call $~lib/fixedset/FixedSet<u64>#constructor
  local.tee $set
  i32.store
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<u64>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 5
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i64.const 0
  call $~lib/fixedset/FixedSet<u64>#has
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i64.const 0
  call $~lib/fixedset/FixedSet<u64>#delete
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 7
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $k
  loop $for-loop|0
   local.get $k
   i64.const 100
   i64.lt_u
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k
    call $~lib/fixedset/FixedSet<u64>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 11
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k
    call $~lib/fixedset/FixedSet<u64>#add
    drop
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k
    call $~lib/fixedset/FixedSet<u64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 13
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k
    i64.const 1
    i64.add
    local.set $k
    br $for-loop|0
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<u64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 15
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $k|2
  loop $for-loop|1
   local.get $k|2
   i64.const 100
   i64.lt_u
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|2
    call $~lib/fixedset/FixedSet<u64>#add
    drop
    local.get $k|2
    i64.const 1
    i64.add
    local.set $k|2
    br $for-loop|1
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<u64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<u64>#values
  local.tee $vals
  i32.store offset=8
  local.get $vals
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/array/Array<u64>#get:length
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 25
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $k|4
  loop $for-loop|2
   local.get $k|4
   i64.const 50
   i64.lt_u
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<u64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 29
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<u64>#delete
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 30
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<u64>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<u64>#delete
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k|4
    i64.const 1
    i64.add
    local.set $k|4
    br $for-loop|2
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<u64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 34
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 50
  local.set $k|5
  loop $for-loop|3
   local.get $k|5
   i64.const 100
   i64.lt_u
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|5
    call $~lib/fixedset/FixedSet<u64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 38
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k|5
    i64.const 1
    i64.add
    local.set $k|5
    br $for-loop|3
   end
  end
  i64.const 0
  local.set $k|6
  loop $for-loop|4
   local.get $k|6
   i64.const 50
   i64.lt_u
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|6
    call $~lib/fixedset/FixedSet<u64>#add
    drop
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|6
    call $~lib/fixedset/FixedSet<u64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k|6
    i64.const 1
    i64.add
    local.set $k|6
    br $for-loop|4
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<u64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<u64>#clear
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<u64>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 50
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i64.const 0
  call $~lib/fixedset/FixedSet<u64>#has
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 51
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i64.const 1
  call $~lib/fixedset/FixedSet<u64>#add
  drop
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<u64>#get:size
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 55
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  i64.const 1
  call $~lib/fixedset/FixedSet<u64>#has
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<f32>#constructor (param $this i32) (param $initialCapacity i32) (result i32)
  (local $cap i32)
  (local $bufferSize i32)
  (local $ptr i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<f32>#set:dataPtr
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<f32>#set:_capacity
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<f32>#set:capacityMask
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<f32>#set:_count
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<f32>#set:_entriesUsed
  local.get $initialCapacity
  i32.const 4
  i32.lt_s
  if
   i32.const 4
   local.set $initialCapacity
  end
  i32.const 4
  local.set $cap
  loop $while-continue|0
   local.get $cap
   local.get $initialCapacity
   i32.lt_s
   if
    local.get $cap
    i32.const 1
    i32.shl
    local.set $cap
    br $while-continue|0
   end
  end
  local.get $cap
  block $~lib/fixedset/FS_SLOT_SIZE<f32>|inlined.0 (result i32)
   i32.const 12
   i32.const 3
   i32.add
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<f32>|inlined.0
  end
  i32.mul
  local.set $bufferSize
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.eq
  drop
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $bufferSize
  memory.fill
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $ptr
  call $~lib/fixedset/FixedSet<f32>#set:dataPtr
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $cap
  call $~lib/fixedset/FixedSet<f32>#set:_capacity
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $cap
  i32.const 1
  i32.sub
  call $~lib/fixedset/FixedSet<f32>#set:capacityMask
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  local.get $this
  local.get $ptr
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/fixedset/FixedSet<f32>#get:size (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/fixedset/FixedSet<f32>#get:_count
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/fixedset/FixedSet<f32>#has (param $this i32) (param $key f32) (result i32)
  (local $this|2 i32)
  (local $key|3 f32)
  (local $hashCode i32)
  (local $mask i32)
  (local $start i32)
  (local $i i32)
  (local $data i32)
  (local $slotSize i32)
  (local $slot i32)
  (local $state i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $~lib/fixedset/FixedSet<f32>#findSlot|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|2
   i32.store
   local.get $key
   local.set $key|3
   local.get $key
   call $~lib/util/hash/HASH<f32>
   local.set $hashCode
   local.get $this|2
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=4
   local.get $12
   call $~lib/fixedset/FixedSet<f32>#get:capacityMask
   local.set $mask
   local.get $hashCode
   local.get $mask
   i32.and
   local.set $start
   local.get $start
   local.set $i
   local.get $this|2
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=4
   local.get $12
   call $~lib/fixedset/FixedSet<f32>#get:dataPtr
   local.set $data
   block $~lib/fixedset/FS_SLOT_SIZE<f32>|inlined.1 (result i32)
    i32.const 12
    i32.const 3
    i32.add
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    br $~lib/fixedset/FS_SLOT_SIZE<f32>|inlined.1
   end
   local.set $slotSize
   loop $do-loop|0
    local.get $data
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $slot
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<f32>#get:state
    local.set $state
    local.get $state
    i32.const 255
    i32.and
    i32.const 0
    i32.eq
    if
     i32.const -1
     br $~lib/fixedset/FixedSet<f32>#findSlot|inlined.0
    end
    local.get $state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<f32>#get:hash
     local.get $hashCode
     i32.eq
    else
     i32.const 0
    end
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<f32>#get:key
     local.get $key|3
     f32.eq
    else
     i32.const 0
    end
    if
     local.get $i
     br $~lib/fixedset/FixedSet<f32>#findSlot|inlined.0
    end
    local.get $i
    i32.const 1
    i32.add
    local.get $mask
    i32.and
    local.set $i
    local.get $i
    local.get $start
    i32.ne
    br_if $do-loop|0
   end
   i32.const -1
   br $~lib/fixedset/FixedSet<f32>#findSlot|inlined.0
  end
  i32.const -1
  i32.ne
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
  return
 )
 (func $~lib/fixedset/FixedSet<f32>#delete (param $this i32) (param $key f32) (result i32)
  (local $this|2 i32)
  (local $key|3 f32)
  (local $hashCode i32)
  (local $mask i32)
  (local $start i32)
  (local $i i32)
  (local $data i32)
  (local $slotSize i32)
  (local $slot i32)
  (local $state i32)
  (local $idx i32)
  (local $slot|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $~lib/fixedset/FixedSet<f32>#findSlot|inlined.1 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|2
   i32.store
   local.get $key
   local.set $key|3
   local.get $key
   call $~lib/util/hash/HASH<f32>
   local.set $hashCode
   local.get $this|2
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<f32>#get:capacityMask
   local.set $mask
   local.get $hashCode
   local.get $mask
   i32.and
   local.set $start
   local.get $start
   local.set $i
   local.get $this|2
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<f32>#get:dataPtr
   local.set $data
   block $~lib/fixedset/FS_SLOT_SIZE<f32>|inlined.2 (result i32)
    i32.const 12
    i32.const 3
    i32.add
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    br $~lib/fixedset/FS_SLOT_SIZE<f32>|inlined.2
   end
   local.set $slotSize
   loop $do-loop|0
    local.get $data
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $slot
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<f32>#get:state
    local.set $state
    local.get $state
    i32.const 255
    i32.and
    i32.const 0
    i32.eq
    if
     i32.const -1
     br $~lib/fixedset/FixedSet<f32>#findSlot|inlined.1
    end
    local.get $state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<f32>#get:hash
     local.get $hashCode
     i32.eq
    else
     i32.const 0
    end
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<f32>#get:key
     local.get $key|3
     f32.eq
    else
     i32.const 0
    end
    if
     local.get $i
     br $~lib/fixedset/FixedSet<f32>#findSlot|inlined.1
    end
    local.get $i
    i32.const 1
    i32.add
    local.get $mask
    i32.and
    local.set $i
    local.get $i
    local.get $start
    i32.ne
    br_if $do-loop|0
   end
   i32.const -1
   br $~lib/fixedset/FixedSet<f32>#findSlot|inlined.1
  end
  local.set $idx
  local.get $idx
  i32.const -1
  i32.eq
  if
   i32.const 0
   local.set $14
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $14
   return
  end
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=4
  local.get $14
  call $~lib/fixedset/FixedSet<f32>#get:dataPtr
  local.get $idx
  block $~lib/fixedset/FS_SLOT_SIZE<f32>|inlined.3 (result i32)
   i32.const 12
   i32.const 3
   i32.add
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<f32>|inlined.3
  end
  i32.mul
  i32.add
  local.set $slot|13
  local.get $slot|13
  i32.const 2
  call $~lib/fixedset/FixedSetSlot<f32>#set:state
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=4
  local.get $14
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  call $~lib/fixedset/FixedSet<f32>#get:_count
  i32.const 1
  i32.sub
  call $~lib/fixedset/FixedSet<f32>#set:_count
  i32.const 1
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
 (func $~lib/fixedset/FixedSet<f32>#rehash (param $this i32) (param $newCapacity i32)
  (local $oldData i32)
  (local $oldCapacity i32)
  (local $slotSize i32)
  (local $newMask i32)
  (local $bufferSize i32)
  (local $newData i32)
  (local $i i32)
  (local $oldSlot i32)
  (local $h i32)
  (local $j i32)
  (local $newSlot i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/fixedset/FixedSet<f32>#get:dataPtr
  local.set $oldData
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/fixedset/FixedSet<f32>#get:_capacity
  local.set $oldCapacity
  block $~lib/fixedset/FS_SLOT_SIZE<f32>|inlined.4 (result i32)
   i32.const 12
   i32.const 3
   i32.add
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<f32>|inlined.4
  end
  local.set $slotSize
  local.get $newCapacity
  i32.const 1
  i32.sub
  local.set $newMask
  local.get $newCapacity
  local.get $slotSize
  i32.mul
  local.set $bufferSize
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.eq
  drop
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $newData
  local.get $newData
  i32.const 0
  local.get $bufferSize
  memory.fill
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $oldCapacity
   i32.lt_s
   if
    local.get $oldData
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $oldSlot
    local.get $oldSlot
    call $~lib/fixedset/FixedSetSlot<f32>#get:state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if
     local.get $oldSlot
     call $~lib/fixedset/FixedSetSlot<f32>#get:hash
     local.set $h
     local.get $h
     local.get $newMask
     i32.and
     local.set $j
     loop $while-continue|1
      local.get $newData
      local.get $j
      local.get $slotSize
      i32.mul
      i32.add
      call $~lib/fixedset/FixedSetSlot<f32>#get:state
      i32.const 255
      i32.and
      i32.const 0
      i32.ne
      if
       local.get $j
       i32.const 1
       i32.add
       local.get $newMask
       i32.and
       local.set $j
       br $while-continue|1
      end
     end
     local.get $newData
     local.get $j
     local.get $slotSize
     i32.mul
     i32.add
     local.set $newSlot
     local.get $newSlot
     local.get $h
     call $~lib/fixedset/FixedSetSlot<f32>#set:hash
     local.get $newSlot
     i32.const 1
     call $~lib/fixedset/FixedSetSlot<f32>#set:state
     local.get $newSlot
     local.get $oldSlot
     call $~lib/fixedset/FixedSetSlot<f32>#get:key
     call $~lib/fixedset/FixedSetSlot<f32>#set:key
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $newData
  call $~lib/fixedset/FixedSet<f32>#set:dataPtr
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $newCapacity
  call $~lib/fixedset/FixedSet<f32>#set:_capacity
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $newMask
  call $~lib/fixedset/FixedSet<f32>#set:capacityMask
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=4
  local.get $13
  call $~lib/fixedset/FixedSet<f32>#get:_count
  call $~lib/fixedset/FixedSet<f32>#set:_entriesUsed
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  local.get $this
  local.get $newData
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<f32>#add (param $this i32) (param $key f32) (result i32)
  (local $hashCode i32)
  (local $mask i32)
  (local $start i32)
  (local $i i32)
  (local $data i32)
  (local $slotSize i32)
  (local $firstDeleted i32)
  (local $slot i32)
  (local $state i32)
  (local $insertIdx i32)
  (local $insertSlot i32)
  (local $insertSlot|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<f32>#get:_entriesUsed
  i32.const 4
  i32.mul
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<f32>#get:_capacity
  i32.const 3
  i32.mul
  i32.ge_s
  if
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<f32>#get:_count
   i32.const 2
   i32.mul
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<f32>#get:_capacity
   i32.gt_s
   if (result i32)
    local.get $this
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    call $~lib/fixedset/FixedSet<f32>#get:_capacity
    i32.const 1
    i32.shl
   else
    local.get $this
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    call $~lib/fixedset/FixedSet<f32>#get:_capacity
   end
   call $~lib/fixedset/FixedSet<f32>#rehash
  end
  local.get $key
  call $~lib/util/hash/HASH<f32>
  local.set $hashCode
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<f32>#get:capacityMask
  local.set $mask
  local.get $hashCode
  local.get $mask
  i32.and
  local.set $start
  local.get $start
  local.set $i
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<f32>#get:dataPtr
  local.set $data
  block $~lib/fixedset/FS_SLOT_SIZE<f32>|inlined.5 (result i32)
   i32.const 12
   i32.const 3
   i32.add
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<f32>|inlined.5
  end
  local.set $slotSize
  i32.const -1
  local.set $firstDeleted
  loop $do-loop|0
   local.get $data
   local.get $i
   local.get $slotSize
   i32.mul
   i32.add
   local.set $slot
   local.get $slot
   call $~lib/fixedset/FixedSetSlot<f32>#get:state
   local.set $state
   local.get $state
   i32.const 255
   i32.and
   i32.const 1
   i32.eq
   if
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<f32>#get:hash
    local.get $hashCode
    i32.eq
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<f32>#get:key
     local.get $key
     f32.eq
    else
     i32.const 0
    end
    if
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $14
     return
    end
   else
    local.get $state
    i32.const 255
    i32.and
    i32.const 0
    i32.eq
    if
     local.get $firstDeleted
     i32.const -1
     i32.ne
     if (result i32)
      local.get $firstDeleted
     else
      local.get $i
     end
     local.set $insertIdx
     local.get $data
     local.get $insertIdx
     local.get $slotSize
     i32.mul
     i32.add
     local.set $insertSlot
     local.get $insertSlot
     local.get $hashCode
     call $~lib/fixedset/FixedSetSlot<f32>#set:hash
     local.get $insertSlot
     i32.const 1
     call $~lib/fixedset/FixedSetSlot<f32>#set:state
     local.get $insertSlot
     local.get $key
     call $~lib/fixedset/FixedSetSlot<f32>#set:key
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store
     local.get $14
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store offset=4
     local.get $14
     call $~lib/fixedset/FixedSet<f32>#get:_count
     i32.const 1
     i32.add
     call $~lib/fixedset/FixedSet<f32>#set:_count
     local.get $firstDeleted
     i32.const -1
     i32.eq
     if
      local.get $this
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $this
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=4
      local.get $14
      call $~lib/fixedset/FixedSet<f32>#get:_entriesUsed
      i32.const 1
      i32.add
      call $~lib/fixedset/FixedSet<f32>#set:_entriesUsed
     end
     i32.const 0
     drop
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $14
     return
    else
     local.get $firstDeleted
     i32.const -1
     i32.eq
     if
      local.get $i
      local.set $firstDeleted
     end
    end
   end
   local.get $i
   i32.const 1
   i32.add
   local.get $mask
   i32.and
   local.set $i
   local.get $i
   local.get $start
   i32.ne
   br_if $do-loop|0
  end
  local.get $firstDeleted
  i32.const -1
  i32.ne
  if
   local.get $data
   local.get $firstDeleted
   local.get $slotSize
   i32.mul
   i32.add
   local.set $insertSlot|13
   local.get $insertSlot|13
   local.get $hashCode
   call $~lib/fixedset/FixedSetSlot<f32>#set:hash
   local.get $insertSlot|13
   i32.const 1
   call $~lib/fixedset/FixedSetSlot<f32>#set:state
   local.get $insertSlot|13
   local.get $key
   call $~lib/fixedset/FixedSetSlot<f32>#set:key
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<f32>#get:_count
   i32.const 1
   i32.add
   call $~lib/fixedset/FixedSet<f32>#set:_count
   i32.const 0
   drop
  end
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
 (func $~lib/array/Array<f32>#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<f32>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<f32>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<f32>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<f32>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 496
   i32.const 544
   i32.const 72
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/array/Array<f32>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<f32>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<f32>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<f32>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/array/Array<f32>#__set (param $this i32) (param $index i32) (param $value f32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<f32>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 224
    i32.const 544
    i32.const 132
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<f32>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<f32>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  f32.store
  i32.const 0
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<f32>#set:length (param $this i32) (param $newLength i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.get $newLength
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $newLength
  call $~lib/array/Array<f32>#set:length_
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<f32>#values (param $this i32) (result i32)
  (local $data i32)
  (local $cap i32)
  (local $slotSize i32)
  (local $values i32)
  (local $length i32)
  (local $i i32)
  (local $slot i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/fixedset/FixedSet<f32>#get:dataPtr
  local.set $data
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/fixedset/FixedSet<f32>#get:_capacity
  local.set $cap
  block $~lib/fixedset/FS_SLOT_SIZE<f32>|inlined.6 (result i32)
   i32.const 12
   i32.const 3
   i32.add
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<f32>|inlined.6
  end
  local.set $slotSize
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/fixedset/FixedSet<f32>#get:_count
  call $~lib/array/Array<f32>#constructor
  local.tee $values
  i32.store offset=4
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $cap
   i32.lt_s
   if
    local.get $data
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $slot
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<f32>#get:state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if
     local.get $values
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store
     local.get $9
     local.get $length
     local.tee $8
     i32.const 1
     i32.add
     local.set $length
     local.get $8
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<f32>#get:key
     call $~lib/array/Array<f32>#__set
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  local.get $length
  call $~lib/array/Array<f32>#set:length
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
  return
 )
 (func $~lib/array/Array<f32>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<f32>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/fixedset/FixedSet<f32>#clear (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/fixedset/FixedSet<f32>#get:dataPtr
  i32.const 0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/fixedset/FixedSet<f32>#get:_capacity
  block $~lib/fixedset/FS_SLOT_SIZE<f32>|inlined.7 (result i32)
   i32.const 12
   i32.const 3
   i32.add
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<f32>|inlined.7
  end
  i32.mul
  memory.fill
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/fixedset/FixedSet<f32>#set:_count
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/fixedset/FixedSet<f32>#set:_entriesUsed
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/fixedset/testNumeric<f32>
  (local $set i32)
  (local $k f32)
  (local $k|2 f32)
  (local $vals i32)
  (local $k|4 f32)
  (local $k|5 f32)
  (local $k|6 f32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 16
  call $~lib/fixedset/FixedSet<f32>#constructor
  local.tee $set
  i32.store
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<f32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 5
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  f32.const 0
  call $~lib/fixedset/FixedSet<f32>#has
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  f32.const 0
  call $~lib/fixedset/FixedSet<f32>#delete
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 7
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  local.set $k
  loop $for-loop|0
   local.get $k
   f32.const 100
   f32.lt
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k
    call $~lib/fixedset/FixedSet<f32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 11
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k
    call $~lib/fixedset/FixedSet<f32>#add
    drop
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k
    call $~lib/fixedset/FixedSet<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 13
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k
    f32.const 1
    f32.add
    local.set $k
    br $for-loop|0
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<f32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 15
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  local.set $k|2
  loop $for-loop|1
   local.get $k|2
   f32.const 100
   f32.lt
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|2
    call $~lib/fixedset/FixedSet<f32>#add
    drop
    local.get $k|2
    f32.const 1
    f32.add
    local.set $k|2
    br $for-loop|1
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<f32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<f32>#values
  local.tee $vals
  i32.store offset=8
  local.get $vals
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/array/Array<f32>#get:length
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 25
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  local.set $k|4
  loop $for-loop|2
   local.get $k|4
   f32.const 50
   f32.lt
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 29
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<f32>#delete
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 30
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<f32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<f32>#delete
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k|4
    f32.const 1
    f32.add
    local.set $k|4
    br $for-loop|2
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<f32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 34
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 50
  local.set $k|5
  loop $for-loop|3
   local.get $k|5
   f32.const 100
   f32.lt
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|5
    call $~lib/fixedset/FixedSet<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 38
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k|5
    f32.const 1
    f32.add
    local.set $k|5
    br $for-loop|3
   end
  end
  f32.const 0
  local.set $k|6
  loop $for-loop|4
   local.get $k|6
   f32.const 50
   f32.lt
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|6
    call $~lib/fixedset/FixedSet<f32>#add
    drop
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|6
    call $~lib/fixedset/FixedSet<f32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k|6
    f32.const 1
    f32.add
    local.set $k|6
    br $for-loop|4
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<f32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<f32>#clear
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<f32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 50
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  f32.const 0
  call $~lib/fixedset/FixedSet<f32>#has
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 51
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  f32.const 1
  call $~lib/fixedset/FixedSet<f32>#add
  drop
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<f32>#get:size
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 55
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  f32.const 1
  call $~lib/fixedset/FixedSet<f32>#has
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<f64>#constructor (param $this i32) (param $initialCapacity i32) (result i32)
  (local $cap i32)
  (local $bufferSize i32)
  (local $ptr i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<f64>#set:dataPtr
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<f64>#set:_capacity
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<f64>#set:capacityMask
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<f64>#set:_count
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $~lib/fixedset/FixedSet<f64>#set:_entriesUsed
  local.get $initialCapacity
  i32.const 4
  i32.lt_s
  if
   i32.const 4
   local.set $initialCapacity
  end
  i32.const 4
  local.set $cap
  loop $while-continue|0
   local.get $cap
   local.get $initialCapacity
   i32.lt_s
   if
    local.get $cap
    i32.const 1
    i32.shl
    local.set $cap
    br $while-continue|0
   end
  end
  local.get $cap
  block $~lib/fixedset/FS_SLOT_SIZE<f64>|inlined.0 (result i32)
   i32.const 16
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<f64>|inlined.0
  end
  i32.mul
  local.set $bufferSize
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.eq
  drop
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $bufferSize
  memory.fill
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $ptr
  call $~lib/fixedset/FixedSet<f64>#set:dataPtr
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $cap
  call $~lib/fixedset/FixedSet<f64>#set:_capacity
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $cap
  i32.const 1
  i32.sub
  call $~lib/fixedset/FixedSet<f64>#set:capacityMask
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  local.get $this
  local.get $ptr
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/fixedset/FixedSet<f64>#get:size (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/fixedset/FixedSet<f64>#get:_count
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/fixedset/FixedSet<f64>#has (param $this i32) (param $key f64) (result i32)
  (local $this|2 i32)
  (local $key|3 f64)
  (local $hashCode i32)
  (local $mask i32)
  (local $start i32)
  (local $i i32)
  (local $data i32)
  (local $slotSize i32)
  (local $slot i32)
  (local $state i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $~lib/fixedset/FixedSet<f64>#findSlot|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|2
   i32.store
   local.get $key
   local.set $key|3
   local.get $key
   call $~lib/util/hash/HASH<f64>
   local.set $hashCode
   local.get $this|2
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=4
   local.get $12
   call $~lib/fixedset/FixedSet<f64>#get:capacityMask
   local.set $mask
   local.get $hashCode
   local.get $mask
   i32.and
   local.set $start
   local.get $start
   local.set $i
   local.get $this|2
   local.set $12
   global.get $~lib/memory/__stack_pointer
   local.get $12
   i32.store offset=4
   local.get $12
   call $~lib/fixedset/FixedSet<f64>#get:dataPtr
   local.set $data
   block $~lib/fixedset/FS_SLOT_SIZE<f64>|inlined.1 (result i32)
    i32.const 16
    i32.const 7
    i32.add
    i32.const 7
    i32.const -1
    i32.xor
    i32.and
    br $~lib/fixedset/FS_SLOT_SIZE<f64>|inlined.1
   end
   local.set $slotSize
   loop $do-loop|0
    local.get $data
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $slot
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<f64>#get:state
    local.set $state
    local.get $state
    i32.const 255
    i32.and
    i32.const 0
    i32.eq
    if
     i32.const -1
     br $~lib/fixedset/FixedSet<f64>#findSlot|inlined.0
    end
    local.get $state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<f64>#get:hash
     local.get $hashCode
     i32.eq
    else
     i32.const 0
    end
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<f64>#get:key
     local.get $key|3
     f64.eq
    else
     i32.const 0
    end
    if
     local.get $i
     br $~lib/fixedset/FixedSet<f64>#findSlot|inlined.0
    end
    local.get $i
    i32.const 1
    i32.add
    local.get $mask
    i32.and
    local.set $i
    local.get $i
    local.get $start
    i32.ne
    br_if $do-loop|0
   end
   i32.const -1
   br $~lib/fixedset/FixedSet<f64>#findSlot|inlined.0
  end
  i32.const -1
  i32.ne
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
  return
 )
 (func $~lib/fixedset/FixedSet<f64>#delete (param $this i32) (param $key f64) (result i32)
  (local $this|2 i32)
  (local $key|3 f64)
  (local $hashCode i32)
  (local $mask i32)
  (local $start i32)
  (local $i i32)
  (local $data i32)
  (local $slotSize i32)
  (local $slot i32)
  (local $state i32)
  (local $idx i32)
  (local $slot|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  block $~lib/fixedset/FixedSet<f64>#findSlot|inlined.1 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|2
   i32.store
   local.get $key
   local.set $key|3
   local.get $key
   call $~lib/util/hash/HASH<f64>
   local.set $hashCode
   local.get $this|2
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<f64>#get:capacityMask
   local.set $mask
   local.get $hashCode
   local.get $mask
   i32.and
   local.set $start
   local.get $start
   local.set $i
   local.get $this|2
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<f64>#get:dataPtr
   local.set $data
   block $~lib/fixedset/FS_SLOT_SIZE<f64>|inlined.2 (result i32)
    i32.const 16
    i32.const 7
    i32.add
    i32.const 7
    i32.const -1
    i32.xor
    i32.and
    br $~lib/fixedset/FS_SLOT_SIZE<f64>|inlined.2
   end
   local.set $slotSize
   loop $do-loop|0
    local.get $data
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $slot
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<f64>#get:state
    local.set $state
    local.get $state
    i32.const 255
    i32.and
    i32.const 0
    i32.eq
    if
     i32.const -1
     br $~lib/fixedset/FixedSet<f64>#findSlot|inlined.1
    end
    local.get $state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<f64>#get:hash
     local.get $hashCode
     i32.eq
    else
     i32.const 0
    end
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<f64>#get:key
     local.get $key|3
     f64.eq
    else
     i32.const 0
    end
    if
     local.get $i
     br $~lib/fixedset/FixedSet<f64>#findSlot|inlined.1
    end
    local.get $i
    i32.const 1
    i32.add
    local.get $mask
    i32.and
    local.set $i
    local.get $i
    local.get $start
    i32.ne
    br_if $do-loop|0
   end
   i32.const -1
   br $~lib/fixedset/FixedSet<f64>#findSlot|inlined.1
  end
  local.set $idx
  local.get $idx
  i32.const -1
  i32.eq
  if
   i32.const 0
   local.set $14
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $14
   return
  end
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=4
  local.get $14
  call $~lib/fixedset/FixedSet<f64>#get:dataPtr
  local.get $idx
  block $~lib/fixedset/FS_SLOT_SIZE<f64>|inlined.3 (result i32)
   i32.const 16
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<f64>|inlined.3
  end
  i32.mul
  i32.add
  local.set $slot|13
  local.get $slot|13
  i32.const 2
  call $~lib/fixedset/FixedSetSlot<f64>#set:state
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=4
  local.get $14
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=8
  local.get $14
  call $~lib/fixedset/FixedSet<f64>#get:_count
  i32.const 1
  i32.sub
  call $~lib/fixedset/FixedSet<f64>#set:_count
  i32.const 1
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
 (func $~lib/fixedset/FixedSet<f64>#rehash (param $this i32) (param $newCapacity i32)
  (local $oldData i32)
  (local $oldCapacity i32)
  (local $slotSize i32)
  (local $newMask i32)
  (local $bufferSize i32)
  (local $newData i32)
  (local $i i32)
  (local $oldSlot i32)
  (local $h i32)
  (local $j i32)
  (local $newSlot i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/fixedset/FixedSet<f64>#get:dataPtr
  local.set $oldData
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/fixedset/FixedSet<f64>#get:_capacity
  local.set $oldCapacity
  block $~lib/fixedset/FS_SLOT_SIZE<f64>|inlined.4 (result i32)
   i32.const 16
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<f64>|inlined.4
  end
  local.set $slotSize
  local.get $newCapacity
  i32.const 1
  i32.sub
  local.set $newMask
  local.get $newCapacity
  local.get $slotSize
  i32.mul
  local.set $bufferSize
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.eq
  drop
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $newData
  local.get $newData
  i32.const 0
  local.get $bufferSize
  memory.fill
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $oldCapacity
   i32.lt_s
   if
    local.get $oldData
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $oldSlot
    local.get $oldSlot
    call $~lib/fixedset/FixedSetSlot<f64>#get:state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if
     local.get $oldSlot
     call $~lib/fixedset/FixedSetSlot<f64>#get:hash
     local.set $h
     local.get $h
     local.get $newMask
     i32.and
     local.set $j
     loop $while-continue|1
      local.get $newData
      local.get $j
      local.get $slotSize
      i32.mul
      i32.add
      call $~lib/fixedset/FixedSetSlot<f64>#get:state
      i32.const 255
      i32.and
      i32.const 0
      i32.ne
      if
       local.get $j
       i32.const 1
       i32.add
       local.get $newMask
       i32.and
       local.set $j
       br $while-continue|1
      end
     end
     local.get $newData
     local.get $j
     local.get $slotSize
     i32.mul
     i32.add
     local.set $newSlot
     local.get $newSlot
     local.get $h
     call $~lib/fixedset/FixedSetSlot<f64>#set:hash
     local.get $newSlot
     i32.const 1
     call $~lib/fixedset/FixedSetSlot<f64>#set:state
     local.get $newSlot
     local.get $oldSlot
     call $~lib/fixedset/FixedSetSlot<f64>#get:key
     call $~lib/fixedset/FixedSetSlot<f64>#set:key
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $newData
  call $~lib/fixedset/FixedSet<f64>#set:dataPtr
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $newCapacity
  call $~lib/fixedset/FixedSet<f64>#set:_capacity
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $newMask
  call $~lib/fixedset/FixedSet<f64>#set:capacityMask
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=4
  local.get $13
  call $~lib/fixedset/FixedSet<f64>#get:_count
  call $~lib/fixedset/FixedSet<f64>#set:_entriesUsed
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  local.get $this
  local.get $newData
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<f64>#add (param $this i32) (param $key f64) (result i32)
  (local $hashCode i32)
  (local $mask i32)
  (local $start i32)
  (local $i i32)
  (local $data i32)
  (local $slotSize i32)
  (local $firstDeleted i32)
  (local $slot i32)
  (local $state i32)
  (local $insertIdx i32)
  (local $insertSlot i32)
  (local $insertSlot|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<f64>#get:_entriesUsed
  i32.const 4
  i32.mul
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<f64>#get:_capacity
  i32.const 3
  i32.mul
  i32.ge_s
  if
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<f64>#get:_count
   i32.const 2
   i32.mul
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<f64>#get:_capacity
   i32.gt_s
   if (result i32)
    local.get $this
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    call $~lib/fixedset/FixedSet<f64>#get:_capacity
    i32.const 1
    i32.shl
   else
    local.get $this
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=4
    local.get $14
    call $~lib/fixedset/FixedSet<f64>#get:_capacity
   end
   call $~lib/fixedset/FixedSet<f64>#rehash
  end
  local.get $key
  call $~lib/util/hash/HASH<f64>
  local.set $hashCode
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<f64>#get:capacityMask
  local.set $mask
  local.get $hashCode
  local.get $mask
  i32.and
  local.set $start
  local.get $start
  local.set $i
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/fixedset/FixedSet<f64>#get:dataPtr
  local.set $data
  block $~lib/fixedset/FS_SLOT_SIZE<f64>|inlined.5 (result i32)
   i32.const 16
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<f64>|inlined.5
  end
  local.set $slotSize
  i32.const -1
  local.set $firstDeleted
  loop $do-loop|0
   local.get $data
   local.get $i
   local.get $slotSize
   i32.mul
   i32.add
   local.set $slot
   local.get $slot
   call $~lib/fixedset/FixedSetSlot<f64>#get:state
   local.set $state
   local.get $state
   i32.const 255
   i32.and
   i32.const 1
   i32.eq
   if
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<f64>#get:hash
    local.get $hashCode
    i32.eq
    if (result i32)
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<f64>#get:key
     local.get $key
     f64.eq
    else
     i32.const 0
    end
    if
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $14
     return
    end
   else
    local.get $state
    i32.const 255
    i32.and
    i32.const 0
    i32.eq
    if
     local.get $firstDeleted
     i32.const -1
     i32.ne
     if (result i32)
      local.get $firstDeleted
     else
      local.get $i
     end
     local.set $insertIdx
     local.get $data
     local.get $insertIdx
     local.get $slotSize
     i32.mul
     i32.add
     local.set $insertSlot
     local.get $insertSlot
     local.get $hashCode
     call $~lib/fixedset/FixedSetSlot<f64>#set:hash
     local.get $insertSlot
     i32.const 1
     call $~lib/fixedset/FixedSetSlot<f64>#set:state
     local.get $insertSlot
     local.get $key
     call $~lib/fixedset/FixedSetSlot<f64>#set:key
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store
     local.get $14
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store offset=4
     local.get $14
     call $~lib/fixedset/FixedSet<f64>#get:_count
     i32.const 1
     i32.add
     call $~lib/fixedset/FixedSet<f64>#set:_count
     local.get $firstDeleted
     i32.const -1
     i32.eq
     if
      local.get $this
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      local.get $this
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=4
      local.get $14
      call $~lib/fixedset/FixedSet<f64>#get:_entriesUsed
      i32.const 1
      i32.add
      call $~lib/fixedset/FixedSet<f64>#set:_entriesUsed
     end
     i32.const 0
     drop
     local.get $this
     local.set $14
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $14
     return
    else
     local.get $firstDeleted
     i32.const -1
     i32.eq
     if
      local.get $i
      local.set $firstDeleted
     end
    end
   end
   local.get $i
   i32.const 1
   i32.add
   local.get $mask
   i32.and
   local.set $i
   local.get $i
   local.get $start
   i32.ne
   br_if $do-loop|0
  end
  local.get $firstDeleted
  i32.const -1
  i32.ne
  if
   local.get $data
   local.get $firstDeleted
   local.get $slotSize
   i32.mul
   i32.add
   local.set $insertSlot|13
   local.get $insertSlot|13
   local.get $hashCode
   call $~lib/fixedset/FixedSetSlot<f64>#set:hash
   local.get $insertSlot|13
   i32.const 1
   call $~lib/fixedset/FixedSetSlot<f64>#set:state
   local.get $insertSlot|13
   local.get $key
   call $~lib/fixedset/FixedSetSlot<f64>#set:key
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   local.get $this
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store offset=4
   local.get $14
   call $~lib/fixedset/FixedSet<f64>#get:_count
   i32.const 1
   i32.add
   call $~lib/fixedset/FixedSet<f64>#set:_count
   i32.const 0
   drop
  end
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
 (func $~lib/array/Array<f64>#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<f64>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<f64>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<f64>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  i32.const 0
  call $~lib/array/Array<f64>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 3
  i32.shr_u
  i32.gt_u
  if
   i32.const 496
   i32.const 544
   i32.const 72
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 3
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=12
  local.get $6
  call $~lib/array/Array<f64>#set:buffer
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $buffer
  call $~lib/array/Array<f64>#set:dataStart
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $bufferSize
  call $~lib/array/Array<f64>#set:byteLength
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=4
  local.get $6
  local.get $length
  call $~lib/array/Array<f64>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/array/Array<f64>#__set (param $this i32) (param $index i32) (param $value f64)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<f64>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 224
    i32.const 544
    i32.const 132
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 3
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<f64>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<f64>#get:dataStart
  local.get $index
  i32.const 3
  i32.shl
  i32.add
  local.get $value
  f64.store
  i32.const 0
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<f64>#set:length (param $this i32) (param $newLength i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.get $newLength
  i32.const 3
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $newLength
  call $~lib/array/Array<f64>#set:length_
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<f64>#values (param $this i32) (result i32)
  (local $data i32)
  (local $cap i32)
  (local $slotSize i32)
  (local $values i32)
  (local $length i32)
  (local $i i32)
  (local $slot i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/fixedset/FixedSet<f64>#get:dataPtr
  local.set $data
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/fixedset/FixedSet<f64>#get:_capacity
  local.set $cap
  block $~lib/fixedset/FS_SLOT_SIZE<f64>|inlined.6 (result i32)
   i32.const 16
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<f64>|inlined.6
  end
  local.set $slotSize
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  call $~lib/fixedset/FixedSet<f64>#get:_count
  call $~lib/array/Array<f64>#constructor
  local.tee $values
  i32.store offset=4
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $cap
   i32.lt_s
   if
    local.get $data
    local.get $i
    local.get $slotSize
    i32.mul
    i32.add
    local.set $slot
    local.get $slot
    call $~lib/fixedset/FixedSetSlot<f64>#get:state
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if
     local.get $values
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store
     local.get $9
     local.get $length
     local.tee $8
     i32.const 1
     i32.add
     local.set $length
     local.get $8
     local.get $slot
     call $~lib/fixedset/FixedSetSlot<f64>#get:key
     call $~lib/array/Array<f64>#__set
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  local.get $length
  call $~lib/array/Array<f64>#set:length
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
  return
 )
 (func $~lib/array/Array<f64>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<f64>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/fixedset/FixedSet<f64>#clear (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/fixedset/FixedSet<f64>#get:dataPtr
  i32.const 0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/fixedset/FixedSet<f64>#get:_capacity
  block $~lib/fixedset/FS_SLOT_SIZE<f64>|inlined.7 (result i32)
   i32.const 16
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   br $~lib/fixedset/FS_SLOT_SIZE<f64>|inlined.7
  end
  i32.mul
  memory.fill
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/fixedset/FixedSet<f64>#set:_count
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const 0
  call $~lib/fixedset/FixedSet<f64>#set:_entriesUsed
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/fixedset/testNumeric<f64>
  (local $set i32)
  (local $k f64)
  (local $k|2 f64)
  (local $vals i32)
  (local $k|4 f64)
  (local $k|5 f64)
  (local $k|6 f64)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 16
  call $~lib/fixedset/FixedSet<f64>#constructor
  local.tee $set
  i32.store
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<f64>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 5
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  f64.const 0
  call $~lib/fixedset/FixedSet<f64>#has
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  f64.const 0
  call $~lib/fixedset/FixedSet<f64>#delete
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 7
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  local.set $k
  loop $for-loop|0
   local.get $k
   f64.const 100
   f64.lt
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k
    call $~lib/fixedset/FixedSet<f64>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 11
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k
    call $~lib/fixedset/FixedSet<f64>#add
    drop
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k
    call $~lib/fixedset/FixedSet<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 13
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k
    f64.const 1
    f64.add
    local.set $k
    br $for-loop|0
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<f64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 15
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  local.set $k|2
  loop $for-loop|1
   local.get $k|2
   f64.const 100
   f64.lt
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|2
    call $~lib/fixedset/FixedSet<f64>#add
    drop
    local.get $k|2
    f64.const 1
    f64.add
    local.set $k|2
    br $for-loop|1
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<f64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<f64>#values
  local.tee $vals
  i32.store offset=8
  local.get $vals
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/array/Array<f64>#get:length
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 25
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  local.set $k|4
  loop $for-loop|2
   local.get $k|4
   f64.const 50
   f64.lt
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 29
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<f64>#delete
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 30
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<f64>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|4
    call $~lib/fixedset/FixedSet<f64>#delete
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k|4
    f64.const 1
    f64.add
    local.set $k|4
    br $for-loop|2
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<f64>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 34
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 50
  local.set $k|5
  loop $for-loop|3
   local.get $k|5
   f64.const 100
   f64.lt
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|5
    call $~lib/fixedset/FixedSet<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 38
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k|5
    f64.const 1
    f64.add
    local.set $k|5
    br $for-loop|3
   end
  end
  f64.const 0
  local.set $k|6
  loop $for-loop|4
   local.get $k|6
   f64.const 50
   f64.lt
   if
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|6
    call $~lib/fixedset/FixedSet<f64>#add
    drop
    local.get $set
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    local.get $k|6
    call $~lib/fixedset/FixedSet<f64>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k|6
    f64.const 1
    f64.add
    local.set $k|6
    br $for-loop|4
   end
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<f64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<f64>#clear
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<f64>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 50
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  f64.const 0
  call $~lib/fixedset/FixedSet<f64>#has
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 51
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  f64.const 1
  call $~lib/fixedset/FixedSet<f64>#add
  drop
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $~lib/fixedset/FixedSet<f64>#get:size
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 55
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  f64.const 1
  call $~lib/fixedset/FixedSet<f64>#has
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<i32>#__set (param $this i32) (param $key i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $value
  if
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $key
   call $~lib/fixedset/FixedSet<i32>#add
   drop
  else
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $key
   call $~lib/fixedset/FixedSet<i32>#delete
   drop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/fixedset/testOperators
  (local $set i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 16
  call $~lib/fixedset/FixedSet<i32>#constructor
  local.tee $set
  i32.store
  local.get $set
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 1
  i32.const 1
  call $~lib/fixedset/FixedSet<i32>#__set
  local.get $set
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 2
  i32.const 1
  call $~lib/fixedset/FixedSet<i32>#__set
  local.get $set
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 1
  call $~lib/fixedset/FixedSet<i32>#has
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 64
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 2
  call $~lib/fixedset/FixedSet<i32>#has
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 65
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 3
  call $~lib/fixedset/FixedSet<i32>#has
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 66
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 1
  i32.const 0
  call $~lib/fixedset/FixedSet<i32>#__set
  local.get $set
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 1
  call $~lib/fixedset/FixedSet<i32>#has
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 68
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $set
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $~lib/fixedset/FixedSet<i32>#get:size
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 69
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/fixedset/testCapacity
  (local $set i32)
  (local $i i32)
  (local $i|2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 4
  call $~lib/fixedset/FixedSet<i32>#constructor
  local.tee $set
  i32.store
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   i32.const 200
   i32.lt_s
   if
    local.get $set
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $i
    call $~lib/fixedset/FixedSet<i32>#add
    drop
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $set
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/fixedset/FixedSet<i32>#get:size
  i32.const 200
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 78
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $i|2
  loop $for-loop|1
   local.get $i|2
   i32.const 200
   i32.lt_s
   if
    local.get $set
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $3
    local.get $i|2
    call $~lib/fixedset/FixedSet<i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 432
     i32.const 80
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $i|2
    i32.const 1
    i32.add
    local.set $i|2
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  i32.const 224
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 496
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 32
  local.get $0
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/object/Object~visit (param $0 i32) (param $1 i32)
 )
 (func $~lib/fixedset/FixedSet<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/fixedset/FixedSet<i32>#__visit
 )
 (func $~lib/array/Array<i32>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__visit
 )
 (func $~lib/fixedset/FixedSet<u32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/fixedset/FixedSet<u32>#__visit
 )
 (func $~lib/array/Array<u32>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<u32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#__visit
 )
 (func $~lib/fixedset/FixedSet<i64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/fixedset/FixedSet<i64>#__visit
 )
 (func $~lib/array/Array<i64>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<i64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<i64>#__visit
 )
 (func $~lib/fixedset/FixedSet<u64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/fixedset/FixedSet<u64>#__visit
 )
 (func $~lib/array/Array<u64>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<u64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<u64>#__visit
 )
 (func $~lib/fixedset/FixedSet<f32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/fixedset/FixedSet<f32>#__visit
 )
 (func $~lib/array/Array<f32>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<f32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#__visit
 )
 (func $~lib/fixedset/FixedSet<f64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/fixedset/FixedSet<f64>#__visit
 )
 (func $~lib/array/Array<f64>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<f64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/array/Array<f64>
    block $~lib/fixedset/FixedSet<f64>
     block $~lib/array/Array<f32>
      block $~lib/fixedset/FixedSet<f32>
       block $~lib/array/Array<u64>
        block $~lib/fixedset/FixedSet<u64>
         block $~lib/array/Array<i64>
          block $~lib/fixedset/FixedSet<i64>
           block $~lib/array/Array<u32>
            block $~lib/fixedset/FixedSet<u32>
             block $~lib/array/Array<i32>
              block $~lib/fixedset/FixedSet<i32>
               block $~lib/arraybuffer/ArrayBufferView
                block $~lib/string/String
                 block $~lib/arraybuffer/ArrayBuffer
                  block $~lib/object/Object
                   local.get $0
                   i32.const 8
                   i32.sub
                   i32.load
                   br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/fixedset/FixedSet<i32> $~lib/array/Array<i32> $~lib/fixedset/FixedSet<u32> $~lib/array/Array<u32> $~lib/fixedset/FixedSet<i64> $~lib/array/Array<i64> $~lib/fixedset/FixedSet<u64> $~lib/array/Array<u64> $~lib/fixedset/FixedSet<f32> $~lib/array/Array<f32> $~lib/fixedset/FixedSet<f64> $~lib/array/Array<f64> $invalid
                  end
                  return
                 end
                 return
                end
                return
               end
               local.get $0
               local.get $1
               call $~lib/arraybuffer/ArrayBufferView~visit
               return
              end
              local.get $0
              local.get $1
              call $~lib/fixedset/FixedSet<i32>~visit
              return
             end
             local.get $0
             local.get $1
             call $~lib/array/Array<i32>~visit
             return
            end
            local.get $0
            local.get $1
            call $~lib/fixedset/FixedSet<u32>~visit
            return
           end
           local.get $0
           local.get $1
           call $~lib/array/Array<u32>~visit
           return
          end
          local.get $0
          local.get $1
          call $~lib/fixedset/FixedSet<i64>~visit
          return
         end
         local.get $0
         local.get $1
         call $~lib/array/Array<i64>~visit
         return
        end
        local.get $0
        local.get $1
        call $~lib/fixedset/FixedSet<u64>~visit
        return
       end
       local.get $0
       local.get $1
       call $~lib/array/Array<u64>~visit
       return
      end
      local.get $0
      local.get $1
      call $~lib/fixedset/FixedSet<f32>~visit
      return
     end
     local.get $0
     local.get $1
     call $~lib/array/Array<f32>~visit
     return
    end
    local.get $0
    local.get $1
    call $~lib/fixedset/FixedSet<f64>~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/array/Array<f64>~visit
   return
  end
  unreachable
 )
 (func $~lib/fixedset/FixedSet<i32>#__visit (param $this i32) (param $cookie i32)
  (local $data i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/fixedset/FixedSet<i32>#get:dataPtr
  local.set $data
  local.get $data
  if
   i32.const 0
   drop
   local.get $data
   local.get $cookie
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<i32>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<u32>#__visit (param $this i32) (param $cookie i32)
  (local $data i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/fixedset/FixedSet<u32>#get:dataPtr
  local.set $data
  local.get $data
  if
   i32.const 0
   drop
   local.get $data
   local.get $cookie
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<u32>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<i64>#__visit (param $this i32) (param $cookie i32)
  (local $data i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/fixedset/FixedSet<i64>#get:dataPtr
  local.set $data
  local.get $data
  if
   i32.const 0
   drop
   local.get $data
   local.get $cookie
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i64>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<i64>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<u64>#__visit (param $this i32) (param $cookie i32)
  (local $data i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/fixedset/FixedSet<u64>#get:dataPtr
  local.set $data
  local.get $data
  if
   i32.const 0
   drop
   local.get $data
   local.get $cookie
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u64>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<u64>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<f32>#__visit (param $this i32) (param $cookie i32)
  (local $data i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/fixedset/FixedSet<f32>#get:dataPtr
  local.set $data
  local.get $data
  if
   i32.const 0
   drop
   local.get $data
   local.get $cookie
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<f32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<f32>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/fixedset/FixedSet<f64>#__visit (param $this i32) (param $cookie i32)
  (local $data i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/fixedset/FixedSet<f64>#get:dataPtr
  local.set $data
  local.get $data
  if
   i32.const 0
   drop
   local.get $data
   local.get $cookie
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<f64>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Memory
  i32.ne
  drop
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<f64>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
