(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32 i32)))
 (type $2 (func (param i32)))
 (type $3 (func))
 (type $4 (func (param i32 i32) (result i32)))
 (type $5 (func (param i32 i32 i32 i32)))
 (type $6 (func (param i32 i32 i32)))
 (type $7 (func (param i32 i32 i32) (result i32)))
 (type $8 (func (param i32 i32 i32 i32 i32)))
 (type $9 (func (param i32 i32 i64) (result i32)))
 (type $10 (func (result i32)))
 (type $11 (func (param i64) (result i64)))
 (import "env" "abort" (func $~lib/builtins/__abort_impl (param i32 i32 i32 i32)))
 (global $std/byteslice/BASE i32 (i32.const 8192))
 (global $~lib/native/ASC_FEATURE_EXCEPTION_HANDLING i32 (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/shared/runtime/Runtime.Memory i32 (i32.const 3))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $std/byteslice/s (mut i32) (i32.const 0))
 (global $std/byteslice/WBASE i32 (i32.const 8448))
 (global $std/byteslice/w (mut i32) (i32.const 0))
 (global $std/byteslice/sub (mut i32) (i32.const 0))
 (global $std/byteslice/FBASE i32 (i32.const 8704))
 (global $std/byteslice/f (mut i32) (i32.const 0))
 (global $std/byteslice/a (mut i32) (i32.const 0))
 (global $std/byteslice/b (mut i32) (i32.const 0))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $std/byteslice/CBASE i32 (i32.const 8960))
 (global $std/byteslice/c (mut i32) (i32.const 0))
 (global $std/byteslice/d (mut i32) (i32.const 0))
 (global $std/byteslice/DBASE i32 (i32.const 9216))
 (global $std/byteslice/src (mut i32) (i32.const 0))
 (global $std/byteslice/dst (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $std/byteslice/p (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 592))
 (global $~lib/memory/__data_end i32 (i32.const 616))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33384))
 (global $~lib/memory/__heap_base i32 (i32.const 33384))
 (memory $0 1)
 (data $0 (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data $1 (i32.const 60) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00~\00l\00i\00b\00/\00b\00y\00t\00e\00s\00l\00i\00c\00e\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data $2 (i32.const 124) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data $3 (i32.const 188) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $4 (i32.const 256) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $5 (i32.const 288) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 316) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $7 (i32.const 380) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $8 (i32.const 432) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $9 (i32.const 460) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $10 (i32.const 524) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00s\00t\00d\00/\00b\00y\00t\00e\00s\00l\00i\00c\00e\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $11 (i32.const 592) "\05\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/byteslice/ByteSlice#set:ptr (param $this i32) (param $ptr i32)
  local.get $this
  local.get $ptr
  i32.store
 )
 (func $~lib/byteslice/ByteSlice#set:length (param $this i32) (param $length i32)
  local.get $this
  local.get $length
  i32.store offset=4
 )
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
     i32.const 208
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
    i32.const 208
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
   i32.const 208
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
   i32.const 336
   i32.const 400
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
    i32.const 208
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
   i32.const 480
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
   i32.const 480
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
   i32.const 480
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
   i32.const 480
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
   i32.const 480
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
    i32.const 480
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
   i32.const 480
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
   i32.const 480
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
   i32.const 480
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
   i32.const 480
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
    i32.const 480
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
    i32.const 480
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
   i32.const 480
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
     i32.const 208
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
   i32.const 144
   i32.const 480
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
   i32.const 480
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
     i32.const 480
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
   i32.const 480
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
    i32.const 480
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
   i32.const 480
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
   i32.const 144
   i32.const 208
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
 (func $~lib/byteslice/ByteSlice#get:length (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/byteslice/ByteSlice#get:ptr (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/polyfills/bswap<u16> (param $value i32) (result i32)
  i32.const 1
  drop
  i32.const 2
  i32.const 1
  i32.eq
  drop
  i32.const 2
  i32.const 2
  i32.eq
  drop
  local.get $value
  i32.const 8
  i32.const 15
  i32.and
  i32.shl
  local.get $value
  i32.const 65535
  i32.and
  i32.const 8
  i32.const 15
  i32.and
  i32.shr_u
  i32.or
  return
 )
 (func $~lib/polyfills/bswap<u32> (param $value i32) (result i32)
  i32.const 1
  drop
  i32.const 4
  i32.const 1
  i32.eq
  drop
  i32.const 4
  i32.const 2
  i32.eq
  drop
  i32.const 4
  i32.const 4
  i32.eq
  drop
  local.get $value
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $value
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  return
 )
 (func $~lib/polyfills/bswap<u64> (param $value i64) (result i64)
  (local $a i64)
  (local $b i64)
  (local $v i64)
  i32.const 1
  drop
  i32.const 8
  i32.const 1
  i32.eq
  drop
  i32.const 8
  i32.const 2
  i32.eq
  drop
  i32.const 8
  i32.const 4
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  local.get $value
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.set $a
  local.get $value
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  local.set $b
  local.get $a
  local.get $b
  i64.or
  local.set $v
  local.get $v
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.set $a
  local.get $v
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  local.set $b
  local.get $a
  local.get $b
  i64.or
  i64.const 32
  i64.rotr
  return
 )
 (func $~start
  call $start:std/byteslice
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 33408
   i32.const 33456
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
 (func $~lib/byteslice/ByteSlice#constructor (param $this i32) (param $ptr i32) (param $length i32) (result i32)
  (local $3 i32)
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
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/byteslice/ByteSlice#set:ptr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/byteslice/ByteSlice#set:length
  local.get $length
  i32.const 0
  i32.lt_s
  if
   i32.const 32
   i32.const 80
   i32.const 15
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $ptr
  call $~lib/byteslice/ByteSlice#set:ptr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $length
  call $~lib/byteslice/ByteSlice#set:length
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/byteslice/ByteSlice#__get (param $this i32) (param $index i32) (result i32)
  (local $2 i32)
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
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/byteslice/ByteSlice#get:length
  i32.ge_u
  if
   i32.const 336
   i32.const 80
   i32.const 117
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/byteslice/ByteSlice#get:ptr
  local.get $index
  i32.add
  i32.load8_u
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/byteslice/ByteSlice#__set (param $this i32) (param $index i32) (param $value i32)
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
  call $~lib/byteslice/ByteSlice#get:length
  i32.ge_u
  if
   i32.const 336
   i32.const 80
   i32.const 122
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/byteslice/ByteSlice#get:ptr
  local.get $index
  i32.add
  local.get $value
  i32.store8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/byteslice/ByteSlice#slice (param $this i32) (param $start i32) (param $end i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $newLen i32)
  (local $15 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store
  local.get $15
  call $~lib/byteslice/ByteSlice#get:length
  local.set $len
  local.get $start
  i32.const 0
  i32.lt_s
  if
   local.get $len
   local.get $start
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $start
  end
  local.get $end
  i32.const 0
  i32.lt_s
  if
   local.get $len
   local.get $end
   i32.add
   local.tee $6
   i32.const 0
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
   local.set $end
  end
  local.get $start
  local.tee $8
  local.get $len
  local.tee $9
  local.get $8
  local.get $9
  i32.lt_s
  select
  local.set $start
  local.get $end
  local.tee $10
  local.get $len
  local.tee $11
  local.get $10
  local.get $11
  i32.lt_s
  select
  local.set $end
  local.get $end
  local.get $start
  i32.sub
  local.tee $12
  i32.const 0
  local.tee $13
  local.get $12
  local.get $13
  i32.gt_s
  select
  local.set $newLen
  i32.const 0
  local.get $this
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store
  local.get $15
  call $~lib/byteslice/ByteSlice#get:ptr
  local.get $start
  i32.add
  local.get $newLen
  call $~lib/byteslice/ByteSlice#constructor
  local.set $15
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $15
  return
 )
 (func $~lib/byteslice/ByteSlice#fill (param $this i32) (param $value i32) (param $start i32) (param $end i32)
  (local $len i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/byteslice/ByteSlice#get:length
  local.set $len
  local.get $start
  i32.const 0
  i32.lt_s
  if
   local.get $len
   local.get $start
   i32.add
   local.tee $5
   i32.const 0
   local.tee $6
   local.get $5
   local.get $6
   i32.gt_s
   select
   local.set $start
  end
  local.get $end
  i32.const 0
  i32.lt_s
  if
   local.get $len
   local.get $end
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
   local.set $end
  end
  local.get $start
  local.tee $9
  local.get $len
  local.tee $10
  local.get $9
  local.get $10
  i32.lt_s
  select
  local.set $start
  local.get $end
  local.tee $11
  local.get $len
  local.tee $12
  local.get $11
  local.get $12
  i32.lt_s
  select
  local.set $end
  local.get $start
  local.get $end
  i32.lt_s
  if
   local.get $this
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store
   local.get $13
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $start
   i32.add
   local.get $value
   local.get $end
   local.get $start
   i32.sub
   memory.fill
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/byteslice/ByteSlice#equals (param $this i32) (param $other i32) (result i32)
  (local $vl i32)
  (local $vr i32)
  (local $n i32)
  (local $vl|5 i32)
  (local $vr|6 i32)
  (local $n|7 i32)
  (local $a i32)
  (local $b i32)
  (local $10 i32)
  (local $a|11 i32)
  (local $b|12 i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/byteslice/ByteSlice#get:length
  local.get $other
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/byteslice/ByteSlice#get:length
  i32.ne
  if
   i32.const 0
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/byteslice/ByteSlice#get:length
  i32.const 0
  i32.eq
  if
   i32.const 1
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  block $~lib/memory/memory.compare|inlined.0 (result i32)
   local.get $this
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store
   local.get $13
   call $~lib/byteslice/ByteSlice#get:ptr
   local.set $vl
   local.get $other
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store
   local.get $13
   call $~lib/byteslice/ByteSlice#get:ptr
   local.set $vr
   local.get $this
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store
   local.get $13
   call $~lib/byteslice/ByteSlice#get:length
   local.set $n
   block $~lib/util/memory/memcmp|inlined.0 (result i32)
    local.get $vl
    local.set $vl|5
    local.get $vr
    local.set $vr|6
    local.get $n
    local.set $n|7
    local.get $vl|5
    local.get $vr|6
    i32.eq
    if
     i32.const 0
     br $~lib/util/memory/memcmp|inlined.0
    end
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $vl|5
    i32.const 7
    i32.and
    local.get $vr|6
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $vl|5
      i32.const 7
      i32.and
      if
       local.get $n|7
       i32.eqz
       if
        i32.const 0
        br $~lib/util/memory/memcmp|inlined.0
       end
       local.get $vl|5
       i32.load8_u
       local.set $a
       local.get $vr|6
       i32.load8_u
       local.set $b
       local.get $a
       local.get $b
       i32.ne
       if
        local.get $a
        local.get $b
        i32.sub
        br $~lib/util/memory/memcmp|inlined.0
       end
       local.get $n|7
       i32.const 1
       i32.sub
       local.set $n|7
       local.get $vl|5
       i32.const 1
       i32.add
       local.set $vl|5
       local.get $vr|6
       i32.const 1
       i32.add
       local.set $vr|6
       br $while-continue|0
      end
     end
     block $while-break|1
      loop $while-continue|1
       local.get $n|7
       i32.const 8
       i32.ge_u
       if
        local.get $vl|5
        i64.load
        local.get $vr|6
        i64.load
        i64.ne
        if
         br $while-break|1
        end
        local.get $vl|5
        i32.const 8
        i32.add
        local.set $vl|5
        local.get $vr|6
        i32.const 8
        i32.add
        local.set $vr|6
        local.get $n|7
        i32.const 8
        i32.sub
        local.set $n|7
        br $while-continue|1
       end
      end
     end
    end
    loop $while-continue|2
     local.get $n|7
     local.tee $10
     i32.const 1
     i32.sub
     local.set $n|7
     local.get $10
     if
      local.get $vl|5
      i32.load8_u
      local.set $a|11
      local.get $vr|6
      i32.load8_u
      local.set $b|12
      local.get $a|11
      local.get $b|12
      i32.ne
      if
       local.get $a|11
       local.get $b|12
       i32.sub
       br $~lib/util/memory/memcmp|inlined.0
      end
      local.get $vl|5
      i32.const 1
      i32.add
      local.set $vl|5
      local.get $vr|6
      i32.const 1
      i32.add
      local.set $vr|6
      br $while-continue|2
     end
    end
    i32.const 0
    br $~lib/util/memory/memcmp|inlined.0
   end
   br $~lib/memory/memory.compare|inlined.0
  end
  i32.const 0
  i32.eq
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
  return
 )
 (func $~lib/byteslice/ByteSlice#copyTo (param $this i32) (param $dst i32) (param $dstOff i32) (param $srcOff i32) (param $count i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $count
  i32.const 31
  i32.shr_u
  local.get $srcOff
  i32.const 31
  i32.shr_u
  i32.or
  local.get $srcOff
  local.get $count
  i32.add
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/byteslice/ByteSlice#get:length
  i32.gt_s
  i32.or
  local.get $dstOff
  i32.const 31
  i32.shr_u
  i32.or
  local.get $dstOff
  local.get $count
  i32.add
  local.get $dst
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/byteslice/ByteSlice#get:length
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 80
   i32.const 143
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $dst
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/byteslice/ByteSlice#get:ptr
  local.get $dstOff
  i32.add
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/byteslice/ByteSlice#get:ptr
  local.get $srcOff
  i32.add
  local.get $count
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/byteslice/ByteSlice#copyTo@varargs (param $this i32) (param $dst i32) (param $dstOff i32) (param $srcOff i32) (param $count i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $3of3
   block $2of3
    block $1of3
     block $0of3
      block $outOfRange
       global.get $~argumentsLength
       i32.const 1
       i32.sub
       br_table $0of3 $1of3 $2of3 $3of3 $outOfRange
      end
      unreachable
     end
     i32.const 0
     local.set $dstOff
    end
    i32.const 0
    local.set $srcOff
   end
   local.get $this
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   call $~lib/byteslice/ByteSlice#get:length
   local.get $srcOff
   i32.sub
   local.set $count
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $dst
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $dstOff
  local.get $srcOff
  local.get $count
  call $~lib/byteslice/ByteSlice#copyTo
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/byteslice/ByteSlice#toPointer<u8> (param $this i32) (result i32)
  (local $this|1 i32)
  (local $offset i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $~lib/pointer/Pointer<u8>#constructor|inlined.0 (result i32)
   i32.const 0
   local.set $this|1
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   call $~lib/byteslice/ByteSlice#get:ptr
   local.set $offset
   local.get $offset
   br $~lib/pointer/Pointer<u8>#constructor|inlined.0
  end
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $start:std/byteslice
  (local $0 i32)
  (local $1 i32)
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i64)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i64)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i64)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i64)
  (local $59 i32)
  (local $60 i32)
  (local $61 i32)
  (local $62 i32)
  (local $63 i32)
  (local $64 i32)
  (local $65 i32)
  (local $66 i32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 i32)
  (local $71 i32)
  (local $72 i32)
  (local $73 i32)
  (local $74 i32)
  (local $75 i32)
  (local $76 i32)
  (local $77 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 104
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 104
  memory.fill
  global.get $std/byteslice/BASE
  i32.const 1
  i32.store8
  global.get $std/byteslice/BASE
  i32.const 1
  i32.add
  i32.const 2
  i32.store8
  global.get $std/byteslice/BASE
  i32.const 2
  i32.add
  i32.const 3
  i32.store8
  global.get $std/byteslice/BASE
  i32.const 3
  i32.add
  i32.const 4
  i32.store8
  global.get $std/byteslice/BASE
  i32.const 4
  i32.add
  i32.const 5
  i32.store8
  global.get $std/byteslice/BASE
  i32.const 5
  i32.add
  i32.const 6
  i32.store8
  global.get $std/byteslice/BASE
  i32.const 6
  i32.add
  i32.const 7
  i32.store8
  global.get $std/byteslice/BASE
  i32.const 7
  i32.add
  i32.const 8
  i32.store8
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 256
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 288
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 432
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  i32.const 0
  global.get $std/byteslice/BASE
  i32.const 16
  call $~lib/byteslice/ByteSlice#constructor
  global.set $std/byteslice/s
  block $~lib/byteslice/ByteSlice#getU8|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   global.get $std/byteslice/s
   local.tee $0
   i32.store
   i32.const 0
   local.set $1
   local.get $1
   local.get $0
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:length
   i32.ge_u
   if
    i32.const 336
    i32.const 80
    i32.const 23
    i32.const 42
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $1
   i32.add
   i32.load8_u
   br $~lib/byteslice/ByteSlice#getU8|inlined.0
  end
  i32.const 255
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/byteslice/ByteSlice#getU8|inlined.1 (result i32)
   global.get $~lib/memory/__stack_pointer
   global.get $std/byteslice/s
   local.tee $2
   i32.store offset=8
   i32.const 1
   local.set $3
   local.get $3
   local.get $2
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:length
   i32.ge_u
   if
    i32.const 336
    i32.const 80
    i32.const 23
    i32.const 42
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $3
   i32.add
   i32.load8_u
   br $~lib/byteslice/ByteSlice#getU8|inlined.1
  end
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/byteslice/s
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  i32.const 0
  call $~lib/byteslice/ByteSlice#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 25
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/byteslice/s
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  i32.const 1
  call $~lib/byteslice/ByteSlice#__get
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 26
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/byteslice/ByteSlice#getU16|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   global.get $std/byteslice/s
   local.tee $4
   i32.store offset=12
   i32.const 0
   local.set $5
   i32.const 1
   local.set $6
   local.get $5
   i32.const 31
   i32.shr_u
   local.get $5
   i32.const 2
   i32.add
   local.get $4
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:length
   i32.gt_s
   i32.or
   if
    i32.const 336
    i32.const 80
    i32.const 28
    i32.const 58
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $5
   i32.add
   i32.load16_u
   local.set $7
   local.get $6
   if (result i32)
    local.get $7
    call $~lib/polyfills/bswap<u16>
   else
    local.get $7
   end
   br $~lib/byteslice/ByteSlice#getU16|inlined.0
  end
  i32.const 65535
  i32.and
  i32.const 258
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 29
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/byteslice/ByteSlice#getU16|inlined.1 (result i32)
   global.get $~lib/memory/__stack_pointer
   global.get $std/byteslice/s
   local.tee $8
   i32.store offset=16
   i32.const 0
   local.set $9
   i32.const 0
   local.set $10
   local.get $9
   i32.const 31
   i32.shr_u
   local.get $9
   i32.const 2
   i32.add
   local.get $8
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:length
   i32.gt_s
   i32.or
   if
    i32.const 336
    i32.const 80
    i32.const 28
    i32.const 58
    call $~lib/builtins/abort
    unreachable
   end
   local.get $8
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $9
   i32.add
   i32.load16_u
   local.set $11
   local.get $10
   if (result i32)
    local.get $11
    call $~lib/polyfills/bswap<u16>
   else
    local.get $11
   end
   br $~lib/byteslice/ByteSlice#getU16|inlined.1
  end
  i32.const 65535
  i32.and
  i32.const 513
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 31
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/byteslice/ByteSlice#getU32|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   global.get $std/byteslice/s
   local.tee $12
   i32.store offset=20
   i32.const 0
   local.set $13
   i32.const 1
   local.set $14
   local.get $13
   i32.const 31
   i32.shr_u
   local.get $13
   i32.const 4
   i32.add
   local.get $12
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:length
   i32.gt_s
   i32.or
   if
    i32.const 336
    i32.const 80
    i32.const 34
    i32.const 58
    call $~lib/builtins/abort
    unreachable
   end
   local.get $12
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $13
   i32.add
   i32.load
   local.set $15
   local.get $14
   if (result i32)
    local.get $15
    call $~lib/polyfills/bswap<u32>
   else
    local.get $15
   end
   br $~lib/byteslice/ByteSlice#getU32|inlined.0
  end
  i32.const 16909060
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 34
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/byteslice/ByteSlice#getU32|inlined.1 (result i32)
   global.get $~lib/memory/__stack_pointer
   global.get $std/byteslice/s
   local.tee $16
   i32.store offset=24
   i32.const 0
   local.set $17
   i32.const 0
   local.set $18
   local.get $17
   i32.const 31
   i32.shr_u
   local.get $17
   i32.const 4
   i32.add
   local.get $16
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:length
   i32.gt_s
   i32.or
   if
    i32.const 336
    i32.const 80
    i32.const 34
    i32.const 58
    call $~lib/builtins/abort
    unreachable
   end
   local.get $16
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $17
   i32.add
   i32.load
   local.set $19
   local.get $18
   if (result i32)
    local.get $19
    call $~lib/polyfills/bswap<u32>
   else
    local.get $19
   end
   br $~lib/byteslice/ByteSlice#getU32|inlined.1
  end
  i32.const 67305985
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 36
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/byteslice/ByteSlice#getU64|inlined.0 (result i64)
   global.get $~lib/memory/__stack_pointer
   global.get $std/byteslice/s
   local.tee $20
   i32.store offset=28
   i32.const 0
   local.set $21
   i32.const 1
   local.set $22
   local.get $21
   i32.const 31
   i32.shr_u
   local.get $21
   i32.const 8
   i32.add
   local.get $20
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:length
   i32.gt_s
   i32.or
   if
    i32.const 336
    i32.const 80
    i32.const 40
    i32.const 58
    call $~lib/builtins/abort
    unreachable
   end
   local.get $20
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $21
   i32.add
   i64.load
   local.set $23
   local.get $22
   if (result i64)
    local.get $23
    call $~lib/polyfills/bswap<u64>
   else
    local.get $23
   end
   br $~lib/byteslice/ByteSlice#getU64|inlined.0
  end
  i64.const 72623859790382856
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 39
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/byteslice/ByteSlice#getU64|inlined.1 (result i64)
   global.get $~lib/memory/__stack_pointer
   global.get $std/byteslice/s
   local.tee $24
   i32.store offset=32
   i32.const 0
   local.set $25
   i32.const 0
   local.set $26
   local.get $25
   i32.const 31
   i32.shr_u
   local.get $25
   i32.const 8
   i32.add
   local.get $24
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:length
   i32.gt_s
   i32.or
   if
    i32.const 336
    i32.const 80
    i32.const 40
    i32.const 58
    call $~lib/builtins/abort
    unreachable
   end
   local.get $24
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $25
   i32.add
   i64.load
   local.set $27
   local.get $26
   if (result i64)
    local.get $27
    call $~lib/polyfills/bswap<u64>
   else
    local.get $27
   end
   br $~lib/byteslice/ByteSlice#getU64|inlined.1
  end
  i64.const 578437695752307201
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/byteslice/ByteSlice#getI8|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   global.get $std/byteslice/s
   local.tee $28
   i32.store offset=36
   i32.const 0
   local.set $29
   local.get $29
   local.get $28
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:length
   i32.ge_u
   if
    i32.const 336
    i32.const 80
    i32.const 48
    i32.const 42
    call $~lib/builtins/abort
    unreachable
   end
   local.get $28
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $29
   i32.add
   i32.load8_s
   br $~lib/byteslice/ByteSlice#getI8|inlined.0
  end
  i32.extend8_s
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 44
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.get $std/byteslice/WBASE
  i32.const 32
  call $~lib/byteslice/ByteSlice#constructor
  global.set $std/byteslice/w
  global.get $~lib/memory/__stack_pointer
  global.get $std/byteslice/w
  local.tee $30
  i32.store offset=40
  i32.const 0
  local.set $31
  i32.const 170
  local.set $32
  local.get $31
  local.get $30
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  call $~lib/byteslice/ByteSlice#get:length
  i32.ge_u
  if
   i32.const 336
   i32.const 80
   i32.const 73
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $30
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  call $~lib/byteslice/ByteSlice#get:ptr
  local.get $31
  i32.add
  local.get $32
  i32.store8
  block $~lib/byteslice/ByteSlice#getU8|inlined.2 (result i32)
   global.get $~lib/memory/__stack_pointer
   global.get $std/byteslice/w
   local.tee $33
   i32.store offset=44
   i32.const 0
   local.set $34
   local.get $34
   local.get $33
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:length
   i32.ge_u
   if
    i32.const 336
    i32.const 80
    i32.const 23
    i32.const 42
    call $~lib/builtins/abort
    unreachable
   end
   local.get $33
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $34
   i32.add
   i32.load8_u
   br $~lib/byteslice/ByteSlice#getU8|inlined.2
  end
  i32.const 255
  i32.and
  i32.const 170
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 51
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/byteslice/w
  local.tee $35
  i32.store offset=48
  i32.const 2
  local.set $36
  i32.const 258
  local.set $37
  i32.const 1
  local.set $38
  local.get $36
  i32.const 31
  i32.shr_u
  local.get $36
  i32.const 2
  i32.add
  local.get $35
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  call $~lib/byteslice/ByteSlice#get:length
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 80
   i32.const 78
   i32.const 58
   call $~lib/builtins/abort
   unreachable
  end
  local.get $35
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  call $~lib/byteslice/ByteSlice#get:ptr
  local.get $36
  i32.add
  local.get $38
  if (result i32)
   local.get $37
   call $~lib/polyfills/bswap<u16>
  else
   local.get $37
  end
  i32.store16
  block $~lib/byteslice/ByteSlice#getU16|inlined.2 (result i32)
   global.get $~lib/memory/__stack_pointer
   global.get $std/byteslice/w
   local.tee $39
   i32.store offset=52
   i32.const 2
   local.set $40
   i32.const 1
   local.set $41
   local.get $40
   i32.const 31
   i32.shr_u
   local.get $40
   i32.const 2
   i32.add
   local.get $39
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:length
   i32.gt_s
   i32.or
   if
    i32.const 336
    i32.const 80
    i32.const 28
    i32.const 58
    call $~lib/builtins/abort
    unreachable
   end
   local.get $39
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $40
   i32.add
   i32.load16_u
   local.set $42
   local.get $41
   if (result i32)
    local.get $42
    call $~lib/polyfills/bswap<u16>
   else
    local.get $42
   end
   br $~lib/byteslice/ByteSlice#getU16|inlined.2
  end
  i32.const 65535
  i32.and
  i32.const 258
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 54
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/byteslice/WBASE
  i32.const 2
  i32.add
  i32.load16_u
  i32.const 513
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 55
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/byteslice/w
  local.tee $43
  i32.store offset=56
  i32.const 4
  local.set $44
  i32.const 16909060
  local.set $45
  i32.const 1
  local.set $46
  local.get $44
  i32.const 31
  i32.shr_u
  local.get $44
  i32.const 4
  i32.add
  local.get $43
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  call $~lib/byteslice/ByteSlice#get:length
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 80
   i32.const 83
   i32.const 58
   call $~lib/builtins/abort
   unreachable
  end
  local.get $43
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  call $~lib/byteslice/ByteSlice#get:ptr
  local.get $44
  i32.add
  local.get $46
  if (result i32)
   local.get $45
   call $~lib/polyfills/bswap<u32>
  else
   local.get $45
  end
  i32.store
  block $~lib/byteslice/ByteSlice#getU32|inlined.2 (result i32)
   global.get $~lib/memory/__stack_pointer
   global.get $std/byteslice/w
   local.tee $47
   i32.store offset=60
   i32.const 4
   local.set $48
   i32.const 1
   local.set $49
   local.get $48
   i32.const 31
   i32.shr_u
   local.get $48
   i32.const 4
   i32.add
   local.get $47
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:length
   i32.gt_s
   i32.or
   if
    i32.const 336
    i32.const 80
    i32.const 34
    i32.const 58
    call $~lib/builtins/abort
    unreachable
   end
   local.get $47
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $48
   i32.add
   i32.load
   local.set $50
   local.get $49
   if (result i32)
    local.get $50
    call $~lib/polyfills/bswap<u32>
   else
    local.get $50
   end
   br $~lib/byteslice/ByteSlice#getU32|inlined.2
  end
  i32.const 16909060
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 58
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/byteslice/w
  local.tee $51
  i32.store offset=64
  i32.const 8
  local.set $52
  i64.const 72623859790382856
  local.set $53
  i32.const 1
  local.set $54
  local.get $52
  i32.const 31
  i32.shr_u
  local.get $52
  i32.const 8
  i32.add
  local.get $51
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  call $~lib/byteslice/ByteSlice#get:length
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 80
   i32.const 88
   i32.const 58
   call $~lib/builtins/abort
   unreachable
  end
  local.get $51
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  call $~lib/byteslice/ByteSlice#get:ptr
  local.get $52
  i32.add
  local.get $54
  if (result i64)
   local.get $53
   call $~lib/polyfills/bswap<u64>
  else
   local.get $53
  end
  i64.store
  block $~lib/byteslice/ByteSlice#getU64|inlined.2 (result i64)
   global.get $~lib/memory/__stack_pointer
   global.get $std/byteslice/w
   local.tee $55
   i32.store offset=68
   i32.const 8
   local.set $56
   i32.const 1
   local.set $57
   local.get $56
   i32.const 31
   i32.shr_u
   local.get $56
   i32.const 8
   i32.add
   local.get $55
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:length
   i32.gt_s
   i32.or
   if
    i32.const 336
    i32.const 80
    i32.const 40
    i32.const 58
    call $~lib/builtins/abort
    unreachable
   end
   local.get $55
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $56
   i32.add
   i64.load
   local.set $58
   local.get $57
   if (result i64)
    local.get $58
    call $~lib/polyfills/bswap<u64>
   else
    local.get $58
   end
   br $~lib/byteslice/ByteSlice#getU64|inlined.2
  end
  i64.const 72623859790382856
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 61
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/byteslice/w
  local.tee $59
  i32.store offset=72
  i32.const 16
  local.set $60
  i32.const -1430532899
  local.set $61
  i32.const 0
  local.set $62
  local.get $60
  i32.const 31
  i32.shr_u
  local.get $60
  i32.const 4
  i32.add
  local.get $59
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  call $~lib/byteslice/ByteSlice#get:length
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 80
   i32.const 83
   i32.const 58
   call $~lib/builtins/abort
   unreachable
  end
  local.get $59
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  call $~lib/byteslice/ByteSlice#get:ptr
  local.get $60
  i32.add
  local.get $62
  if (result i32)
   local.get $61
   call $~lib/polyfills/bswap<u32>
  else
   local.get $61
  end
  i32.store
  global.get $std/byteslice/WBASE
  i32.const 16
  i32.add
  i32.load
  i32.const -1430532899
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 65
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/byteslice/w
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  i32.const 0
  i32.const 187
  call $~lib/byteslice/ByteSlice#__set
  global.get $std/byteslice/w
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  i32.const 0
  call $~lib/byteslice/ByteSlice#__get
  i32.const 187
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 69
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/byteslice/s
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  i32.const 2
  i32.const 6
  call $~lib/byteslice/ByteSlice#slice
  global.set $std/byteslice/sub
  global.get $std/byteslice/sub
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  call $~lib/byteslice/ByteSlice#get:length
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 73
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/byteslice/ByteSlice#getU8|inlined.3 (result i32)
   global.get $~lib/memory/__stack_pointer
   global.get $std/byteslice/sub
   local.tee $63
   i32.store offset=76
   i32.const 0
   local.set $64
   local.get $64
   local.get $63
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:length
   i32.ge_u
   if
    i32.const 336
    i32.const 80
    i32.const 23
    i32.const 42
    call $~lib/builtins/abort
    unreachable
   end
   local.get $63
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $64
   i32.add
   i32.load8_u
   br $~lib/byteslice/ByteSlice#getU8|inlined.3
  end
  i32.const 255
  i32.and
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 74
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/byteslice/ByteSlice#getU8|inlined.4 (result i32)
   global.get $~lib/memory/__stack_pointer
   global.get $std/byteslice/sub
   local.tee $65
   i32.store offset=80
   i32.const 3
   local.set $66
   local.get $66
   local.get $65
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:length
   i32.ge_u
   if
    i32.const 336
    i32.const 80
    i32.const 23
    i32.const 42
    call $~lib/builtins/abort
    unreachable
   end
   local.get $65
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $66
   i32.add
   i32.load8_u
   br $~lib/byteslice/ByteSlice#getU8|inlined.4
  end
  i32.const 255
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 75
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.get $std/byteslice/FBASE
  i32.const 16
  call $~lib/byteslice/ByteSlice#constructor
  global.set $std/byteslice/f
  global.get $std/byteslice/f
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  i32.const 255
  i32.const 0
  i32.const 8
  call $~lib/byteslice/ByteSlice#fill
  block $~lib/byteslice/ByteSlice#getU8|inlined.5 (result i32)
   global.get $~lib/memory/__stack_pointer
   global.get $std/byteslice/f
   local.tee $67
   i32.store offset=84
   i32.const 0
   local.set $68
   local.get $68
   local.get $67
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:length
   i32.ge_u
   if
    i32.const 336
    i32.const 80
    i32.const 23
    i32.const 42
    call $~lib/builtins/abort
    unreachable
   end
   local.get $67
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $68
   i32.add
   i32.load8_u
   br $~lib/byteslice/ByteSlice#getU8|inlined.5
  end
  i32.const 255
  i32.and
  i32.const 255
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 81
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/byteslice/ByteSlice#getU8|inlined.6 (result i32)
   global.get $~lib/memory/__stack_pointer
   global.get $std/byteslice/f
   local.tee $69
   i32.store offset=88
   i32.const 7
   local.set $70
   local.get $70
   local.get $69
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:length
   i32.ge_u
   if
    i32.const 336
    i32.const 80
    i32.const 23
    i32.const 42
    call $~lib/builtins/abort
    unreachable
   end
   local.get $69
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $70
   i32.add
   i32.load8_u
   br $~lib/byteslice/ByteSlice#getU8|inlined.6
  end
  i32.const 255
  i32.and
  i32.const 255
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 82
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.get $std/byteslice/BASE
  i32.const 4
  call $~lib/byteslice/ByteSlice#constructor
  global.set $std/byteslice/a
  i32.const 0
  global.get $std/byteslice/BASE
  i32.const 4
  call $~lib/byteslice/ByteSlice#constructor
  global.set $std/byteslice/b
  global.get $std/byteslice/a
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  global.get $std/byteslice/b
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=92
  local.get $77
  call $~lib/byteslice/ByteSlice#equals
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 87
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/byteslice/CBASE
  global.get $std/byteslice/BASE
  i32.const 4
  memory.copy
  i32.const 0
  global.get $std/byteslice/CBASE
  i32.const 4
  call $~lib/byteslice/ByteSlice#constructor
  global.set $std/byteslice/c
  global.get $std/byteslice/a
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  global.get $std/byteslice/c
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=92
  local.get $77
  call $~lib/byteslice/ByteSlice#equals
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 93
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/byteslice/CBASE
  i32.const 255
  i32.store8
  i32.const 0
  global.get $std/byteslice/CBASE
  i32.const 4
  call $~lib/byteslice/ByteSlice#constructor
  global.set $std/byteslice/d
  global.get $std/byteslice/a
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  global.get $std/byteslice/d
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=92
  local.get $77
  call $~lib/byteslice/ByteSlice#equals
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 98
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.get $std/byteslice/BASE
  i32.const 8
  call $~lib/byteslice/ByteSlice#constructor
  global.set $std/byteslice/src
  i32.const 0
  global.get $std/byteslice/DBASE
  i32.const 16
  call $~lib/byteslice/ByteSlice#constructor
  global.set $std/byteslice/dst
  global.get $std/byteslice/dst
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  i32.const 0
  i32.const 0
  i32.const 16
  call $~lib/byteslice/ByteSlice#fill
  global.get $std/byteslice/src
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  global.get $std/byteslice/dst
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=92
  local.get $77
  i32.const 0
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/byteslice/ByteSlice#copyTo@varargs
  block $~lib/byteslice/ByteSlice#getU8|inlined.7 (result i32)
   global.get $~lib/memory/__stack_pointer
   global.get $std/byteslice/dst
   local.tee $71
   i32.store offset=96
   i32.const 0
   local.set $72
   local.get $72
   local.get $71
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:length
   i32.ge_u
   if
    i32.const 336
    i32.const 80
    i32.const 23
    i32.const 42
    call $~lib/builtins/abort
    unreachable
   end
   local.get $71
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $72
   i32.add
   i32.load8_u
   br $~lib/byteslice/ByteSlice#getU8|inlined.7
  end
  i32.const 255
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 106
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/byteslice/ByteSlice#getU8|inlined.8 (result i32)
   global.get $~lib/memory/__stack_pointer
   global.get $std/byteslice/dst
   local.tee $73
   i32.store offset=100
   i32.const 7
   local.set $74
   local.get $74
   local.get $73
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:length
   i32.ge_u
   if
    i32.const 336
    i32.const 80
    i32.const 23
    i32.const 42
    call $~lib/builtins/abort
    unreachable
   end
   local.get $73
   local.set $77
   global.get $~lib/memory/__stack_pointer
   local.get $77
   i32.store offset=4
   local.get $77
   call $~lib/byteslice/ByteSlice#get:ptr
   local.get $74
   i32.add
   i32.load8_u
   br $~lib/byteslice/ByteSlice#getU8|inlined.8
  end
  i32.const 255
  i32.and
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 107
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/byteslice/s
  local.set $77
  global.get $~lib/memory/__stack_pointer
  local.get $77
  i32.store offset=4
  local.get $77
  call $~lib/byteslice/ByteSlice#toPointer<u8>
  global.set $std/byteslice/p
  block $~lib/pointer/Pointer<u8>#get:offset|inlined.0 (result i32)
   global.get $std/byteslice/p
   local.set $75
   local.get $75
   br $~lib/pointer/Pointer<u8>#get:offset|inlined.0
  end
  global.get $std/byteslice/BASE
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 111
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/pointer/Pointer<u8>#get:value|inlined.0 (result i32)
   global.get $std/byteslice/p
   local.set $76
   i32.const 0
   drop
   local.get $76
   i32.load8_u
   br $~lib/pointer/Pointer<u8>#get:value|inlined.0
  end
  i32.const 255
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 112
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 104
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  global.get $std/byteslice/s
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/byteslice/w
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/byteslice/sub
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/byteslice/f
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/byteslice/a
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/byteslice/b
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/byteslice/c
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/byteslice/d
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/byteslice/src
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/byteslice/dst
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 336
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 32
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 144
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
 (func $~lib/byteslice/ByteSlice#__visit (param $this i32) (param $_cookie i32)
 )
 (func $~lib/byteslice/ByteSlice~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/byteslice/ByteSlice#__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/byteslice/ByteSlice
    block $~lib/arraybuffer/ArrayBufferView
     block $~lib/string/String
      block $~lib/arraybuffer/ArrayBuffer
       block $~lib/object/Object
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/byteslice/ByteSlice $invalid
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
   call $~lib/byteslice/ByteSlice~visit
   return
  end
  unreachable
 )
)
