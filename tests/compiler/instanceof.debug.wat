(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $f64_=>_i32 (func (param f64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
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
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $instanceof/a (mut i32) (i32.const 0))
 (global $instanceof/b (mut i32) (i32.const 0))
 (global $instanceof/i (mut i32) (i32.const 0))
 (global $instanceof/I (mut i64) (i64.const 0))
 (global $instanceof/f (mut f32) (f32.const 0))
 (global $instanceof/F (mut f64) (f64.const 0))
 (global $instanceof/an (mut i32) (i32.const 0))
 (global $instanceof/child (mut i32) (i32.const 0))
 (global $instanceof/childAsParent (mut i32) (i32.const 0))
 (global $instanceof/animal (mut i32) (i32.const 0))
 (global $instanceof/cat (mut i32) (i32.const 0))
 (global $instanceof/blackcat (mut i32) (i32.const 0))
 (global $instanceof/nullableAnimal (mut i32) (i32.const 0))
 (global $instanceof/nullableCat (mut i32) (i32.const 0))
 (global $instanceof/nullableBlackcat (mut i32) (i32.const 0))
 (global $instanceof/nullAnimal (mut i32) (i32.const 0))
 (global $instanceof/nullCat (mut i32) (i32.const 0))
 (global $instanceof/nullBlackcat (mut i32) (i32.const 0))
 (global $instanceof/w (mut i32) (i32.const 0))
 (global $instanceof/x (mut i32) (i32.const 0))
 (global $instanceof/y (mut i32) (i32.const 0))
 (global $instanceof/z (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 464))
 (global $~lib/memory/__data_end i32 (i32.const 564))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33332))
 (global $~lib/memory/__heap_base i32 (i32.const 33332))
 (memory $0 1)
 (data (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 76) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 144) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 176) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 204) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 268) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 320) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 348) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 412) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00i\00n\00s\00t\00a\00n\00c\00e\00o\00f\00.\00t\00s\00\00\00")
 (data (i32.const 464) "\18\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $this i32) (param $nextWithColor i32)
  local.get $this
  local.get $nextWithColor
  i32.store $0 offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store $0 offset=8
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
  i32.load $0 offset=4
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
  i32.load $0 offset=8
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
  i32.load $0 offset=12
 )
 (func $~lib/shared/typeinfo/Typeinfo#get:flags (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/rt/__typeinfo (param $id i32) (result i32)
  (local $ptr i32)
  global.get $~lib/rt/__rtti_base
  local.set $ptr
  local.get $id
  local.get $ptr
  i32.load $0
  i32.gt_u
  if
   i32.const 224
   i32.const 288
   i32.const 21
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
    i32.load $0
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
  i32.load $0
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
  i32.store $0
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $this i32) (param $mmInfo i32)
  local.get $this
  local.get $mmInfo
  i32.store $0
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $this i32) (param $next i32)
  local.get $this
  local.get $next
  i32.store $0 offset=8
 )
 (func $~lib/rt/tlsf/Block#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/rt/tlsf/Block#get:next (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $~lib/rt/tlsf/Root#get:flMap (param $this i32) (result i32)
  local.get $this
  i32.load $0
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
   i32.load $0 offset=96
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
   i32.store $0 offset=96
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
     i32.load $0 offset=4
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
    i32.store $0 offset=4
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
    i32.load $0
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
  i32.store $0
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
   i32.load $0 offset=96
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
  i32.store $0 offset=96
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
   i32.load $0 offset=4
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
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $root i32) (param $start i32) (param $end i32) (result i32)
  (local $root|3 i32)
  (local $tail i32)
  (local $tailInfo i32)
  (local $size i32)
  (local $leftSize i32)
  (local $left i32)
  (local $root|9 i32)
  (local $tail|10 i32)
  i32.const 1
  drop
  local.get $start
  local.get $end
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 377
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
   local.set $root|3
   local.get $root|3
   i32.load $0 offset=1568
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
    i32.const 384
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
    nop
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
    i32.const 397
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
  local.set $root|9
  local.get $tail
  local.set $tail|10
  local.get $root|9
  local.get $tail|10
  i32.store $0 offset=1568
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
  memory.size $0
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
   memory.grow $0
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
  i32.store $0 offset=1568
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
    i32.store $0 offset=4
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
      i32.store $0 offset=96
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
  memory.size $0
  i32.const 16
  i32.shl
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
   i32.const 559
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
    global.get $~lib/rt/itcms/total
    i64.extend_i32_u
    i32.const 200
    i64.extend_i32_u
    i64.mul
    i64.const 100
    i64.div_u
    i32.wrap_i64
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
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  call $~lib/rt/tlsf/computeSize
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
   local.set $requestSize
   i32.const 31
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
   i32.const 330
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
   i32.load $0 offset=4
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
     i32.load $0 offset=4
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
     i32.const 343
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
     i32.load $0 offset=96
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
    i32.load $0 offset=96
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
  i32.const 536870910
  i32.lt_u
  if
   local.get $size
   i32.const 1
   i32.const 27
   local.get $size
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.set $size
  end
  memory.size $0
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
   i32.load $0 offset=1568
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
  memory.grow $0
  i32.const 0
  i32.lt_s
  if
   local.get $pagesNeeded
   memory.grow $0
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size $0
  local.set $pagesAfter
  local.get $root
  local.get $pagesBefore
  i32.const 16
  i32.shl
  local.get $pagesAfter
  i32.const 16
  i32.shl
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
   i32.const 357
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
    i32.const 496
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
   i32.const 498
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
  i32.store $0 offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $this i32) (param $rtSize i32)
  local.get $this
  local.get $rtSize
  i32.store $0 offset=16
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
  memory.fill $0
  local.get $ptr
  return
 )
 (func $instanceof/A#checkInstanceof (param $this i32)
  nop
 )
 (func $instanceof/isI32<i32> (param $v i32) (result i32)
  i32.const 1
  drop
  i32.const 1
  return
 )
 (func $instanceof/isI32<f64> (param $v f64) (result i32)
  i32.const 0
  drop
  i32.const 0
  return
 )
 (func $instanceof/isI32<u32> (param $v i32) (result i32)
  i32.const 0
  drop
  i32.const 0
  return
 )
 (func $instanceof/isI32<u16> (param $v i32) (result i32)
  i32.const 0
  drop
  i32.const 0
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/W,~lib/object/Object> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/X,~lib/object/Object> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/Y,~lib/object/Object> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/Z,~lib/object/Object> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/IA,~lib/object/Object> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/IB,~lib/object/Object> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/IC,~lib/object/Object> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/ID,~lib/object/Object> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/W> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/W
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/X
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/Y
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Z> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/Z
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/IA> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/IA
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/IB> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/IB
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/IC> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/IC
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/ID> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/ID
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertStaticTrue<instanceof/W,instanceof/W> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticFalse<instanceof/W,instanceof/X> (param $value i32)
  i32.const 0
  i32.eqz
  drop
  return
 )
 (func $instanceof/assertStaticFalse<instanceof/W,instanceof/Y> (param $value i32)
  i32.const 0
  i32.eqz
  drop
  return
 )
 (func $instanceof/assertStaticFalse<instanceof/W,instanceof/Z> (param $value i32)
  i32.const 0
  i32.eqz
  drop
  return
 )
 (func $instanceof/assertStaticFalse<instanceof/X,instanceof/W> (param $value i32)
  i32.const 0
  i32.eqz
  drop
  return
 )
 (func $instanceof/assertStaticFalse<instanceof/Y,instanceof/W> (param $value i32)
  i32.const 0
  i32.eqz
  drop
  return
 )
 (func $instanceof/assertStaticFalse<instanceof/Z,instanceof/W> (param $value i32)
  i32.const 0
  i32.eqz
  drop
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/X,instanceof/X> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertDynamicFalse<instanceof/X,instanceof/Y> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/Y
  end
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 19
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicFalse<instanceof/X,instanceof/Z> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/Z
  end
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 19
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<instanceof/X,instanceof/Y> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/Y
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<instanceof/X,instanceof/Z> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/Z
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertStaticTrue<instanceof/Y,instanceof/X> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/Y,instanceof/Y> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertDynamicFalse<instanceof/Y,instanceof/Z> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/Z
  end
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 19
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<instanceof/Y,instanceof/Z> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/Z
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertStaticTrue<instanceof/Z,instanceof/X> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/Z,instanceof/Y> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/Z,instanceof/Z> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertDynamicFalse<instanceof/IA,instanceof/IC> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/IC
  end
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 19
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicFalse<instanceof/IB,instanceof/IC> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/IC
  end
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 19
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicFalse<instanceof/IA,instanceof/ID> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/ID
  end
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 19
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicFalse<instanceof/IB,instanceof/ID> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/ID
  end
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 19
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertStaticFalse<instanceof/IA,instanceof/IE> (param $value i32)
  i32.const 0
  i32.eqz
  drop
  return
 )
 (func $instanceof/assertStaticFalse<instanceof/IB,instanceof/IE> (param $value i32)
  i32.const 0
  i32.eqz
  drop
  return
 )
 (func $instanceof/assertDynamicTrue<instanceof/IA,instanceof/IC> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/IC
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<instanceof/IB,instanceof/IC> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/IC
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<instanceof/IA,instanceof/ID> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/ID
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<instanceof/IB,instanceof/ID> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/ID
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertStaticTrue<instanceof/X,instanceof/IA> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/X,instanceof/IB> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertDynamicFalse<instanceof/X,instanceof/ID> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/ID
  end
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 19
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicFalse<instanceof/X,instanceof/IC> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/IC
  end
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 19
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertStaticFalse<instanceof/X,instanceof/IE> (param $value i32)
  i32.const 0
  i32.eqz
  drop
  return
 )
 (func $instanceof/assertDynamicTrue<instanceof/X,instanceof/ID> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/ID
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<instanceof/X,instanceof/IC> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/IC
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertStaticTrue<instanceof/Y,instanceof/IA> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/Y,instanceof/IB> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/Y,instanceof/ID> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/Y,instanceof/IC> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticFalse<instanceof/Y,instanceof/IE> (param $value i32)
  i32.const 0
  i32.eqz
  drop
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/Z,instanceof/IA> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/Z,instanceof/IB> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/Z,instanceof/ID> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticTrue<instanceof/Z,instanceof/IC> (param $value i32)
  i32.const 1
  drop
  return
 )
 (func $instanceof/assertStaticFalse<instanceof/Z,instanceof/IE> (param $value i32)
  i32.const 0
  i32.eqz
  drop
  return
 )
 (func $instanceof/assertStaticFalse<instanceof/IA,instanceof/W> (param $value i32)
  i32.const 0
  i32.eqz
  drop
  return
 )
 (func $instanceof/assertStaticFalse<instanceof/IB,instanceof/W> (param $value i32)
  i32.const 0
  i32.eqz
  drop
  return
 )
 (func $instanceof/assertStaticFalse<instanceof/IC,instanceof/W> (param $value i32)
  i32.const 0
  i32.eqz
  drop
  return
 )
 (func $instanceof/assertStaticFalse<instanceof/ID,instanceof/W> (param $value i32)
  i32.const 0
  i32.eqz
  drop
  return
 )
 (func $instanceof/assertDynamicTrue<instanceof/IA,instanceof/X> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/X
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<instanceof/IB,instanceof/X> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/X
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<instanceof/IA,instanceof/Y> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/Y
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<instanceof/IB,instanceof/Y> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/Y
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<instanceof/IC,instanceof/Y> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/Y
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<instanceof/ID,instanceof/Y> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/Y
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<instanceof/IA,instanceof/Z> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/Z
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<instanceof/IB,instanceof/Z> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/Z
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<instanceof/IC,instanceof/Z> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/Z
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/assertDynamicTrue<instanceof/ID,instanceof/Z> (param $value i32)
  (local $1 i32)
  (local $check i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $value
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/Z
  end
  i32.eqz
  if
   i32.const 0
   local.set $check
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 432
    i32.const 12
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/C#checkInstanceof (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/a
  local.tee $1
  i32.store $0
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/C
  end
  if
   nop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $instanceof/A#checkInstanceof@override (param $0 i32)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $1
    local.get $1
    i32.const 6
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $instanceof/C#checkInstanceof
   return
  end
  local.get $0
  call $instanceof/A#checkInstanceof
 )
 (func $~instanceof|instanceof/B (param $0 i32) (result i32)
  (local $1 i32)
  block $is_instance
   local.get $0
   i32.const 8
   i32.sub
   i32.load $0
   local.set $1
   local.get $1
   i32.const 5
   i32.eq
   br_if $is_instance
   i32.const 0
   return
  end
  i32.const 1
 )
 (func $~instanceof|instanceof/Child<f32> (param $0 i32) (result i32)
  (local $1 i32)
  block $is_instance
   local.get $0
   i32.const 8
   i32.sub
   i32.load $0
   local.set $1
   local.get $1
   i32.const 9
   i32.eq
   br_if $is_instance
   i32.const 0
   return
  end
  i32.const 1
 )
 (func $~anyinstanceof|instanceof/Child (param $0 i32) (result i32)
  (local $1 i32)
  block $is_instance
   local.get $0
   i32.const 8
   i32.sub
   i32.load $0
   local.set $1
   local.get $1
   i32.const 7
   i32.eq
   br_if $is_instance
   local.get $1
   i32.const 9
   i32.eq
   br_if $is_instance
   i32.const 0
   return
  end
  i32.const 1
 )
 (func $~instanceof|instanceof/Cat (param $0 i32) (result i32)
  (local $1 i32)
  block $is_instance
   local.get $0
   i32.const 8
   i32.sub
   i32.load $0
   local.set $1
   local.get $1
   i32.const 13
   i32.eq
   br_if $is_instance
   local.get $1
   i32.const 14
   i32.eq
   br_if $is_instance
   i32.const 0
   return
  end
  i32.const 1
 )
 (func $~instanceof|instanceof/BlackCat (param $0 i32) (result i32)
  (local $1 i32)
  block $is_instance
   local.get $0
   i32.const 8
   i32.sub
   i32.load $0
   local.set $1
   local.get $1
   i32.const 14
   i32.eq
   br_if $is_instance
   i32.const 0
   return
  end
  i32.const 1
 )
 (func $~instanceof|instanceof/W (param $0 i32) (result i32)
  (local $1 i32)
  block $is_instance
   local.get $0
   i32.const 8
   i32.sub
   i32.load $0
   local.set $1
   local.get $1
   i32.const 15
   i32.eq
   br_if $is_instance
   i32.const 0
   return
  end
  i32.const 1
 )
 (func $~instanceof|instanceof/X (param $0 i32) (result i32)
  (local $1 i32)
  block $is_instance
   local.get $0
   i32.const 8
   i32.sub
   i32.load $0
   local.set $1
   local.get $1
   i32.const 16
   i32.eq
   br_if $is_instance
   local.get $1
   i32.const 19
   i32.eq
   br_if $is_instance
   local.get $1
   i32.const 22
   i32.eq
   br_if $is_instance
   i32.const 0
   return
  end
  i32.const 1
 )
 (func $~instanceof|instanceof/Y (param $0 i32) (result i32)
  (local $1 i32)
  block $is_instance
   local.get $0
   i32.const 8
   i32.sub
   i32.load $0
   local.set $1
   local.get $1
   i32.const 19
   i32.eq
   br_if $is_instance
   local.get $1
   i32.const 22
   i32.eq
   br_if $is_instance
   i32.const 0
   return
  end
  i32.const 1
 )
 (func $~instanceof|instanceof/Z (param $0 i32) (result i32)
  (local $1 i32)
  block $is_instance
   local.get $0
   i32.const 8
   i32.sub
   i32.load $0
   local.set $1
   local.get $1
   i32.const 22
   i32.eq
   br_if $is_instance
   i32.const 0
   return
  end
  i32.const 1
 )
 (func $~instanceof|instanceof/IA (param $0 i32) (result i32)
  (local $1 i32)
  block $is_instance
   local.get $0
   i32.const 8
   i32.sub
   i32.load $0
   local.set $1
   local.get $1
   i32.const 16
   i32.eq
   br_if $is_instance
   local.get $1
   i32.const 19
   i32.eq
   br_if $is_instance
   local.get $1
   i32.const 22
   i32.eq
   br_if $is_instance
   i32.const 0
   return
  end
  i32.const 1
 )
 (func $~instanceof|instanceof/IB (param $0 i32) (result i32)
  (local $1 i32)
  block $is_instance
   local.get $0
   i32.const 8
   i32.sub
   i32.load $0
   local.set $1
   local.get $1
   i32.const 16
   i32.eq
   br_if $is_instance
   local.get $1
   i32.const 19
   i32.eq
   br_if $is_instance
   local.get $1
   i32.const 22
   i32.eq
   br_if $is_instance
   i32.const 0
   return
  end
  i32.const 1
 )
 (func $~instanceof|instanceof/IC (param $0 i32) (result i32)
  (local $1 i32)
  block $is_instance
   local.get $0
   i32.const 8
   i32.sub
   i32.load $0
   local.set $1
   local.get $1
   i32.const 19
   i32.eq
   br_if $is_instance
   local.get $1
   i32.const 22
   i32.eq
   br_if $is_instance
   i32.const 0
   return
  end
  i32.const 1
 )
 (func $~instanceof|instanceof/ID (param $0 i32) (result i32)
  (local $1 i32)
  block $is_instance
   local.get $0
   i32.const 8
   i32.sub
   i32.load $0
   local.set $1
   local.get $1
   i32.const 19
   i32.eq
   br_if $is_instance
   local.get $1
   i32.const 22
   i32.eq
   br_if $is_instance
   i32.const 0
   return
  end
  i32.const 1
 )
 (func $~instanceof|instanceof/C (param $0 i32) (result i32)
  (local $1 i32)
  block $is_instance
   local.get $0
   i32.const 8
   i32.sub
   i32.load $0
   local.set $1
   local.get $1
   i32.const 6
   i32.eq
   br_if $is_instance
   i32.const 0
   return
  end
  i32.const 1
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  global.get $instanceof/a
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $instanceof/b
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $instanceof/an
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $instanceof/child
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $instanceof/childAsParent
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $instanceof/animal
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $instanceof/cat
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $instanceof/blackcat
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $instanceof/nullableAnimal
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $instanceof/nullableCat
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $instanceof/nullableBlackcat
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $instanceof/nullAnimal
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $instanceof/nullCat
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $instanceof/nullBlackcat
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $instanceof/w
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $instanceof/x
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $instanceof/y
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $instanceof/z
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 224
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
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/object/Object~visit (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $instanceof/IE
    block $instanceof/Z
     block $instanceof/IC
      block $instanceof/ID
       block $instanceof/Y
        block $instanceof/IA
         block $instanceof/IB
          block $instanceof/X
           block $instanceof/W
            block $instanceof/BlackCat
             block $instanceof/Cat
              block $instanceof/Animal
               block $instanceof/SomethingElse<i32>
                block $instanceof/Parent<f32>
                 block $instanceof/Child<f32>
                  block $instanceof/Parent<i32>
                   block $instanceof/Child<i32>
                    block $instanceof/C
                     block $instanceof/B
                      block $instanceof/A
                       block $~lib/arraybuffer/ArrayBufferView
                        block $~lib/string/String
                         block $~lib/arraybuffer/ArrayBuffer
                          block $~lib/object/Object
                           local.get $0
                           i32.const 8
                           i32.sub
                           i32.load $0
                           br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $instanceof/A $instanceof/B $instanceof/C $instanceof/Child<i32> $instanceof/Parent<i32> $instanceof/Child<f32> $instanceof/Parent<f32> $instanceof/SomethingElse<i32> $instanceof/Animal $instanceof/Cat $instanceof/BlackCat $instanceof/W $instanceof/X $instanceof/IB $instanceof/IA $instanceof/Y $instanceof/ID $instanceof/IC $instanceof/Z $instanceof/IE $invalid
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
                      return
                     end
                     return
                    end
                    return
                   end
                   return
                  end
                  return
                 end
                 return
                end
                return
               end
               return
              end
              return
             end
             return
            end
            return
           end
           return
          end
          return
         end
         return
        end
        return
       end
       return
      end
      return
     end
     return
    end
    return
   end
   return
  end
  unreachable
 )
 (func $~start
  call $start:instanceof
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 33360
   i32.const 33408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $instanceof/A#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 align=4
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $instanceof/B#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 align=4
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $instanceof/A#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $instanceof/C#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 align=4
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $instanceof/A#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $instanceof/Parent<i32>#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 align=4
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $instanceof/Child<i32>#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 align=4
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $instanceof/Parent<i32>#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $instanceof/Parent<f32>#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 align=4
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $instanceof/Child<f32>#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 align=4
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $instanceof/Parent<f32>#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $instanceof/Animal#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 align=4
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $instanceof/Cat#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 align=4
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $instanceof/Animal#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $instanceof/BlackCat#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 align=4
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $instanceof/Cat#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $instanceof/W#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 align=4
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $instanceof/X#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 align=4
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 16
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $instanceof/Y#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 align=4
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 19
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $instanceof/X#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $instanceof/Z#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 align=4
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 22
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $instanceof/Y#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $start:instanceof
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
  global.get $~lib/memory/__stack_pointer
  i32.const 88
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 88
  memory.fill $0
  memory.size $0
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
  i32.const 0
  call $instanceof/A#constructor
  global.set $instanceof/a
  i32.const 0
  call $instanceof/B#constructor
  global.set $instanceof/b
  i32.const 0
  call $instanceof/C#constructor
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/A#checkInstanceof@override
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/a
  local.tee $0
  i32.store $0 offset=4
  local.get $0
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $0
   call $~instanceof|instanceof/B
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 50
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  call $instanceof/isI32<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 94
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  call $instanceof/isI32<f64>
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 95
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $instanceof/isI32<u32>
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 96
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $instanceof/isI32<u16>
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 97
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $instanceof/an
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 100
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  i32.const 1
  global.set $instanceof/an
  global.get $instanceof/an
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 103
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  i32.const 0
  call $instanceof/Child<i32>#constructor
  global.set $instanceof/child
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  call $instanceof/Child<f32>#constructor
  global.set $instanceof/childAsParent
  i32.const 1
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/childAsParent
  local.tee $1
  i32.store $0 offset=8
  local.get $1
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $1
   call $~instanceof|instanceof/Child<f32>
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 126
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  drop
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/childAsParent
  local.tee $2
  i32.store $0 offset=12
  local.get $2
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $2
   call $~anyinstanceof|instanceof/Child
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 128
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 0
  call $instanceof/Animal#constructor
  global.set $instanceof/animal
  i32.const 0
  call $instanceof/Cat#constructor
  global.set $instanceof/cat
  i32.const 0
  call $instanceof/BlackCat#constructor
  global.set $instanceof/blackcat
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/animal
  local.tee $3
  i32.store $0 offset=16
  local.get $3
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $3
   call $~instanceof|instanceof/Cat
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 143
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/animal
  local.tee $4
  i32.store $0 offset=20
  local.get $4
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $4
   call $~instanceof|instanceof/BlackCat
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 144
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/cat
  local.tee $5
  i32.store $0 offset=24
  local.get $5
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $5
   call $~instanceof|instanceof/Cat
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 147
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/cat
  local.tee $6
  i32.store $0 offset=28
  local.get $6
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $6
   call $~instanceof|instanceof/BlackCat
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 148
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/blackcat
  local.tee $7
  i32.store $0 offset=32
  local.get $7
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $7
   call $~instanceof|instanceof/Cat
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 151
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/blackcat
  local.tee $8
  i32.store $0 offset=36
  local.get $8
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $8
   call $~instanceof|instanceof/BlackCat
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 152
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $instanceof/Animal#constructor
  global.set $instanceof/nullableAnimal
  i32.const 0
  call $instanceof/Cat#constructor
  global.set $instanceof/nullableCat
  i32.const 0
  call $instanceof/BlackCat#constructor
  global.set $instanceof/nullableBlackcat
  global.get $instanceof/nullableAnimal
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 158
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/nullableAnimal
  local.tee $9
  i32.store $0 offset=40
  local.get $9
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $9
   call $~instanceof|instanceof/Cat
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 159
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/nullableAnimal
  local.tee $10
  i32.store $0 offset=44
  local.get $10
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $10
   call $~instanceof|instanceof/BlackCat
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 160
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $instanceof/nullableCat
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 162
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/nullableCat
  local.tee $11
  i32.store $0 offset=48
  local.get $11
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $11
   call $~instanceof|instanceof/Cat
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 163
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/nullableCat
  local.tee $12
  i32.store $0 offset=52
  local.get $12
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $12
   call $~instanceof|instanceof/BlackCat
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 164
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $instanceof/nullableBlackcat
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 166
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/nullableBlackcat
  local.tee $13
  i32.store $0 offset=56
  local.get $13
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $13
   call $~instanceof|instanceof/Cat
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 167
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/nullableBlackcat
  local.tee $14
  i32.store $0 offset=60
  local.get $14
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $14
   call $~instanceof|instanceof/BlackCat
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 168
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $instanceof/nullAnimal
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 174
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/nullAnimal
  local.tee $15
  i32.store $0 offset=64
  local.get $15
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $15
   call $~instanceof|instanceof/Cat
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 175
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/nullAnimal
  local.tee $16
  i32.store $0 offset=68
  local.get $16
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $16
   call $~instanceof|instanceof/BlackCat
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 176
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $instanceof/nullCat
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 178
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/nullCat
  local.tee $17
  i32.store $0 offset=72
  local.get $17
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $17
   call $~instanceof|instanceof/Cat
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 179
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/nullCat
  local.tee $18
  i32.store $0 offset=76
  local.get $18
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $18
   call $~instanceof|instanceof/BlackCat
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 180
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $instanceof/nullBlackcat
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 182
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/nullBlackcat
  local.tee $19
  i32.store $0 offset=80
  local.get $19
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $19
   call $~instanceof|instanceof/Cat
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 183
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $instanceof/nullBlackcat
  local.tee $20
  i32.store $0 offset=84
  local.get $20
  i32.eqz
  if (result i32)
   i32.const 0
  else
   local.get $20
   call $~instanceof|instanceof/BlackCat
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 184
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $instanceof/W#constructor
  global.set $instanceof/w
  i32.const 0
  call $instanceof/X#constructor
  global.set $instanceof/x
  i32.const 0
  call $instanceof/Y#constructor
  global.set $instanceof/y
  i32.const 0
  call $instanceof/Z#constructor
  global.set $instanceof/z
  global.get $instanceof/w
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/W,~lib/object/Object>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/X,~lib/object/Object>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Y,~lib/object/Object>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Z,~lib/object/Object>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/IA,~lib/object/Object>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/IB,~lib/object/Object>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/IA,~lib/object/Object>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/IB,~lib/object/Object>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/IC,~lib/object/Object>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/ID,~lib/object/Object>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/IA,~lib/object/Object>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/IB,~lib/object/Object>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/IC,~lib/object/Object>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/ID,~lib/object/Object>
  global.get $instanceof/w
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/W>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/X>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Y>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/Z>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/IA>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/IB>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/IA>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/IB>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/IC>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/ID>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/IA>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/IB>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/IC>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<~lib/object/Object,instanceof/ID>
  global.get $instanceof/w
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/W,instanceof/W>
  global.get $instanceof/w
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/W,instanceof/X>
  global.get $instanceof/w
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/W,instanceof/Y>
  global.get $instanceof/w
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/W,instanceof/Z>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/X,instanceof/W>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/Y,instanceof/W>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/Z,instanceof/W>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/X,instanceof/X>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicFalse<instanceof/X,instanceof/Y>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicFalse<instanceof/X,instanceof/Z>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/X,instanceof/X>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/X,instanceof/Y>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicFalse<instanceof/X,instanceof/Z>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/X,instanceof/X>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/X,instanceof/Y>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/X,instanceof/Z>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Y,instanceof/X>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Y,instanceof/Y>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicFalse<instanceof/Y,instanceof/Z>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Y,instanceof/X>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Y,instanceof/Y>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/Y,instanceof/Z>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Z,instanceof/X>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Z,instanceof/Y>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Z,instanceof/Z>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicFalse<instanceof/IA,instanceof/IC>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicFalse<instanceof/IB,instanceof/IC>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicFalse<instanceof/IA,instanceof/ID>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicFalse<instanceof/IB,instanceof/ID>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/IA,instanceof/IE>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/IB,instanceof/IE>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IA,instanceof/IC>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IB,instanceof/IC>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IA,instanceof/ID>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IB,instanceof/ID>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/IA,instanceof/IE>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/IB,instanceof/IE>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IA,instanceof/IC>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IB,instanceof/IC>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IA,instanceof/ID>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IB,instanceof/ID>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/IA,instanceof/IE>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/IB,instanceof/IE>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/X,instanceof/IA>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/X,instanceof/IB>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicFalse<instanceof/X,instanceof/ID>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicFalse<instanceof/X,instanceof/IC>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/X,instanceof/IE>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/X,instanceof/IA>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/X,instanceof/IB>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/X,instanceof/ID>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/X,instanceof/IC>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/X,instanceof/IE>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/X,instanceof/IA>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/X,instanceof/IB>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/X,instanceof/ID>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/X,instanceof/IC>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/X,instanceof/IE>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Y,instanceof/IA>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Y,instanceof/IB>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Y,instanceof/ID>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Y,instanceof/IC>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/Y,instanceof/IE>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Y,instanceof/IA>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Y,instanceof/IB>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Y,instanceof/ID>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Y,instanceof/IC>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/Y,instanceof/IE>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Z,instanceof/IA>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Z,instanceof/IB>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Z,instanceof/ID>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticTrue<instanceof/Z,instanceof/IC>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/Z,instanceof/IE>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/IA,instanceof/W>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/IB,instanceof/W>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/IA,instanceof/W>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/IB,instanceof/W>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/IC,instanceof/W>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/ID,instanceof/W>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/IA,instanceof/W>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/IB,instanceof/W>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/IC,instanceof/W>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertStaticFalse<instanceof/ID,instanceof/W>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IA,instanceof/X>
  global.get $instanceof/x
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IB,instanceof/X>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IA,instanceof/X>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IB,instanceof/X>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IA,instanceof/X>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IB,instanceof/X>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IA,instanceof/Y>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IB,instanceof/Y>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IC,instanceof/Y>
  global.get $instanceof/y
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/ID,instanceof/Y>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IA,instanceof/Y>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IB,instanceof/Y>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IC,instanceof/Y>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/ID,instanceof/Y>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IA,instanceof/Z>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IB,instanceof/Z>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/IC,instanceof/Z>
  global.get $instanceof/z
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $instanceof/assertDynamicTrue<instanceof/ID,instanceof/Z>
  global.get $~lib/memory/__stack_pointer
  i32.const 88
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/object/Object#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
)
