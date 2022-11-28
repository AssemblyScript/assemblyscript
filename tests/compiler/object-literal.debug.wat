(module
 (type $i32_=>_i32 (func_subtype (param i32) (result i32) func))
 (type $i32_i32_=>_none (func_subtype (param i32 i32) func))
 (type $i32_=>_none (func_subtype (param i32) func))
 (type $none_=>_none (func_subtype func))
 (type $i32_i32_=>_i32 (func_subtype (param i32 i32) (result i32) func))
 (type $i32_i32_i32_=>_none (func_subtype (param i32 i32 i32) func))
 (type $i32_f64_=>_none (func_subtype (param i32 f64) func))
 (type $i32_=>_f64 (func_subtype (param i32) (result f64) func))
 (type $i32_i32_i32_=>_i32 (func_subtype (param i32 i32 i32) (result i32) func))
 (type $i32_i64_=>_none (func_subtype (param i32 i64) func))
 (type $i32_=>_i64 (func_subtype (param i32) (result i64) func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (type $none_=>_i32 (func_subtype (result i32) func))
 (type $i32_i32_i32_i32_i32_=>_i32 (func_subtype (param i32 i32 i32 i32 i32) (result i32) func))
 (type $i32_f32_=>_none (func_subtype (param i32 f32) func))
 (type $i32_=>_f32 (func_subtype (param i32) (result f32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 688))
 (global $~lib/memory/__data_end i32 (i32.const 724))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33492))
 (global $~lib/memory/__heap_base i32 (i32.const 33492))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d\00\00\00\00\00\00\00")
 (data (i32.const 60) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 128) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 156) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 220) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 268) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 336) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 368) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 396) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 460) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00o\00b\00j\00e\00c\00t\00-\00l\00i\00t\00e\00r\00a\00l\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 524) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 556) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00h\00e\00l\00l\00o\00\00\00")
 (data (i32.const 588) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00t\00e\00s\00t\00\00\00\00\00")
 (data (i32.const 620) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00b\00a\00r\00\00\00\00\00\00\00")
 (data (i32.const 652) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00b\00a\00z\00\00\00\00\00\00\00")
 (data (i32.const 688) "\08\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $object-literal/Managed#set:bar (type $i32_i32_=>_none) (param $this i32) (param $bar i32)
  local.get $this
  local.get $bar
  i32.store $0
 )
 (func $~lib/rt/itcms/Object#get:nextWithColor (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/rt/itcms/Object#get:color (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
 )
 (func $~lib/rt/itcms/Object#get:prev (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $~lib/rt/itcms/Object#get:next (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/rt/itcms/Object#set:prev (type $i32_i32_=>_none) (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store $0 offset=8
 )
 (func $~lib/rt/itcms/Object#set:nextWithColor (type $i32_i32_=>_none) (param $this i32) (param $nextWithColor i32)
  local.get $this
  local.get $nextWithColor
  i32.store $0 offset=4
 )
 (func $~lib/rt/itcms/Object#set:next (type $i32_i32_=>_none) (param $this i32) (param $obj i32)
  local.get $this
  local.get $obj
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (type $i32_=>_none) (param $this i32)
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
    i32.const 80
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
   i32.const 80
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
 (func $~lib/rt/itcms/initLazy (type $i32_=>_i32) (param $space i32) (result i32)
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:prev
  local.get $space
 )
 (func $~lib/rt/itcms/Object#get:rtId (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/shared/typeinfo/Typeinfo#get:flags (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/rt/__typeinfo (type $i32_=>_i32) (param $id i32) (result i32)
  (local $ptr i32)
  global.get $~lib/rt/__rtti_base
  local.set $ptr
  local.get $id
  local.get $ptr
  i32.load $0
  i32.gt_u
  if
   i32.const 176
   i32.const 240
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
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (type $i32_=>_i32) (param $this i32) (result i32)
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
 )
 (func $~lib/rt/itcms/Object#linkTo (type $i32_i32_i32_=>_none) (param $this i32) (param $list i32) (param $withColor i32)
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
 (func $~lib/rt/itcms/Object#makeGray (type $i32_=>_none) (param $this i32)
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
    i32.const 80
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
 (func $~lib/rt/itcms/__link (type $i32_i32_i32_=>_none) (param $parentPtr i32) (param $childPtr i32) (param $expectMultiple i32)
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
   i32.const 80
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
 (func $object-literal/Managed#set:baz (type $i32_i32_=>_none) (param $this i32) (param $baz i32)
  local.get $this
  local.get $baz
  i32.store $0 offset=4
  local.get $this
  local.get $baz
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/rt/itcms/visitRoots (type $i32_=>_none) (param $cookie i32)
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
     i32.const 80
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
 (func $~lib/rt/itcms/Object#set:color (type $i32_i32_=>_none) (param $this i32) (param $color i32)
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
 (func $~lib/rt/itcms/__visit (type $i32_i32_=>_none) (param $ptr i32) (param $cookie i32)
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
 (func $~lib/rt/itcms/visitStack (type $i32_=>_none) (param $cookie i32)
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
 (func $~lib/rt/common/BLOCK#get:mmInfo (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/rt/itcms/Object#get:size (type $i32_=>_i32) (param $this i32) (result i32)
  i32.const 4
  local.get $this
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
 )
 (func $~lib/rt/tlsf/Root#set:flMap (type $i32_i32_=>_none) (param $this i32) (param $flMap i32)
  local.get $this
  local.get $flMap
  i32.store $0
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (type $i32_i32_=>_none) (param $this i32) (param $mmInfo i32)
  local.get $this
  local.get $mmInfo
  i32.store $0
 )
 (func $~lib/rt/tlsf/Block#set:prev (type $i32_i32_=>_none) (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (type $i32_i32_=>_none) (param $this i32) (param $next i32)
  local.get $this
  local.get $next
  i32.store $0 offset=8
 )
 (func $~lib/rt/tlsf/Block#get:prev (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/rt/tlsf/Block#get:next (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $~lib/rt/tlsf/Root#get:flMap (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/rt/tlsf/removeBlock (type $i32_i32_=>_none) (param $root i32) (param $block i32)
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
   i32.const 416
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
   i32.const 416
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
   i32.const 416
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
 (func $~lib/rt/tlsf/insertBlock (type $i32_i32_=>_none) (param $root i32) (param $block i32)
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
   i32.const 416
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
   i32.const 416
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
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
   local.set $right
   local.get $right
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $rightInfo
  end
  local.get $blockInfo
  i32.const 2
  i32.and
  if
   local.get $block
   local.set $block|7
   local.get $block|7
   i32.const 4
   i32.sub
   i32.load $0
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
    i32.const 416
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
   i32.const 416
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
   i32.const 416
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
   i32.const 416
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
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
 (func $~lib/rt/tlsf/addMemory (type $i32_i32_i32_=>_i32) (param $root i32) (param $start i32) (param $end i32) (result i32)
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
   i32.const 416
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
  local.get $root
  local.set $root|3
  local.get $root|3
  i32.load $0 offset=1568
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
    i32.const 416
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
    i32.const 416
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
 )
 (func $~lib/rt/tlsf/initialize (type $none_=>_none)
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
 (func $~lib/rt/tlsf/checkUsedBlock (type $i32_=>_i32) (param $ptr i32) (result i32)
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
   i32.const 416
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
 )
 (func $~lib/rt/tlsf/freeBlock (type $i32_i32_=>_none) (param $root i32) (param $block i32)
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
 (func $~lib/rt/tlsf/__free (type $i32_=>_none) (param $ptr i32)
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
 (func $~lib/rt/itcms/free (type $i32_=>_none) (param $obj i32)
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
 (func $~lib/rt/itcms/step (type $none_=>_i32) (result i32)
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
     i32.const 80
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
 )
 (func $~lib/rt/itcms/interrupt (type $none_=>_none)
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
 (func $~lib/rt/tlsf/computeSize (type $i32_=>_i32) (param $size i32) (result i32)
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
 )
 (func $~lib/rt/tlsf/prepareSize (type $i32_=>_i32) (param $size i32) (result i32)
  local.get $size
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 288
   i32.const 416
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  call $~lib/rt/tlsf/computeSize
 )
 (func $~lib/rt/tlsf/searchBlock (type $i32_i32_=>_i32) (param $root i32) (param $size i32) (result i32)
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
   i32.const 416
   i32.const 330
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
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
    local.set $slMap
    i32.const 1
    drop
    local.get $slMap
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
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
    local.set $head
   end
  else
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
   local.set $head
  end
  local.get $head
 )
 (func $~lib/rt/tlsf/growMemory (type $i32_i32_=>_none) (param $root i32) (param $size i32)
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
  local.get $root
  local.set $root|3
  local.get $root|3
  i32.load $0 offset=1568
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
 (func $~lib/rt/tlsf/prepareBlock (type $i32_i32_i32_=>_none) (param $root i32) (param $block i32) (param $size i32)
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
   i32.const 416
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
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (type $i32_i32_=>_i32) (param $root i32) (param $size i32) (result i32)
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
    i32.const 416
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
   i32.const 416
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
 )
 (func $~lib/rt/tlsf/__alloc (type $i32_=>_i32) (param $size i32) (result i32)
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
 )
 (func $~lib/rt/itcms/Object#set:rtId (type $i32_i32_=>_none) (param $this i32) (param $rtId i32)
  local.get $this
  local.get $rtId
  i32.store $0 offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (type $i32_i32_=>_none) (param $this i32) (param $rtSize i32)
  local.get $this
  local.get $rtSize
  i32.store $0 offset=16
 )
 (func $~lib/rt/itcms/__new (type $i32_i32_=>_i32) (param $size i32) (param $id i32) (result i32)
  (local $obj i32)
  (local $ptr i32)
  local.get $size
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 288
   i32.const 80
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
 )
 (func $object-literal/Managed#get:bar (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $object-literal/Managed#get:baz (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/rt/common/OBJECT#get:rtSize (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=16
 )
 (func $~lib/string/String#get:length (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (type $i32_i32_i32_i32_i32_=>_i32) (param $str1 i32) (param $index1 i32) (param $str2 i32) (param $index2 i32) (param $len i32) (result i32)
  (local $ptr1 i32)
  (local $ptr2 i32)
  (local $7 i32)
  (local $a i32)
  (local $b i32)
  local.get $str1
  local.get $index1
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr1
  local.get $str2
  local.get $index2
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr2
  i32.const 0
  i32.const 2
  i32.lt_s
  drop
  local.get $len
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $ptr1
   i32.const 7
   i32.and
   local.get $ptr2
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-loop|0
     local.get $ptr1
     i64.load $0
     local.get $ptr2
     i64.load $0
     i64.ne
     if
      br $do-break|0
     end
     local.get $ptr1
     i32.const 8
     i32.add
     local.set $ptr1
     local.get $ptr2
     i32.const 8
     i32.add
     local.set $ptr2
     local.get $len
     i32.const 4
     i32.sub
     local.set $len
     local.get $len
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  loop $while-continue|1
   local.get $len
   local.tee $7
   i32.const 1
   i32.sub
   local.set $len
   local.get $7
   if
    local.get $ptr1
    i32.load16_u $0
    local.set $a
    local.get $ptr2
    i32.load16_u $0
    local.set $b
    local.get $a
    local.get $b
    i32.ne
    if
     local.get $a
     local.get $b
     i32.sub
     return
    end
    local.get $ptr1
    i32.const 2
    i32.add
    local.set $ptr1
    local.get $ptr2
    i32.const 2
    i32.add
    local.set $ptr2
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (type $i32_i32_=>_i32) (param $left i32) (param $right i32) (result i32)
  (local $leftLength i32)
  local.get $left
  local.get $right
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $left
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $right
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   return
  end
  local.get $left
  call $~lib/string/String#get:length
  local.set $leftLength
  local.get $leftLength
  local.get $right
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $left
  i32.const 0
  local.get $right
  i32.const 0
  local.get $leftLength
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $object-literal/Unmanaged#set:bar (type $i32_i32_=>_none) (param $this i32) (param $bar i32)
  local.get $this
  local.get $bar
  i32.store $0
 )
 (func $object-literal/Unmanaged#set:baz (type $i32_i32_=>_none) (param $this i32) (param $baz i32)
  local.get $this
  local.get $baz
  i32.store $0 offset=4
 )
 (func $object-literal/Unmanaged#constructor (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.eqz
  if
   i32.const 8
   call $~lib/rt/tlsf/__alloc
   local.set $this
  end
  local.get $this
  i32.const 0
  call $object-literal/Unmanaged#set:bar
  local.get $this
  i32.const 0
  call $object-literal/Unmanaged#set:baz
  local.get $this
 )
 (func $object-literal/Unmanaged#get:bar (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $object-literal/Unmanaged#get:baz (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $object-literal/OmittedTypes#set:int32 (type $i32_i32_=>_none) (param $this i32) (param $int32 i32)
  local.get $this
  local.get $int32
  i32.store $0
 )
 (func $object-literal/OmittedTypes#set:uint32 (type $i32_i32_=>_none) (param $this i32) (param $uint32 i32)
  local.get $this
  local.get $uint32
  i32.store $0 offset=4
 )
 (func $object-literal/OmittedTypes#set:int64 (type $i32_i64_=>_none) (param $this i32) (param $int64 i64)
  local.get $this
  local.get $int64
  i64.store $0 offset=8
 )
 (func $object-literal/OmittedTypes#set:uint64 (type $i32_i64_=>_none) (param $this i32) (param $uint64 i64)
  local.get $this
  local.get $uint64
  i64.store $0 offset=16
 )
 (func $object-literal/OmittedTypes#set:float32 (type $i32_f32_=>_none) (param $this i32) (param $float32 f32)
  local.get $this
  local.get $float32
  f32.store $0 offset=24
 )
 (func $object-literal/OmittedTypes#set:float64 (type $i32_f64_=>_none) (param $this i32) (param $float64 f64)
  local.get $this
  local.get $float64
  f64.store $0 offset=32
 )
 (func $object-literal/OmittedTypes#set:int8 (type $i32_i32_=>_none) (param $this i32) (param $int8 i32)
  local.get $this
  local.get $int8
  i32.store8 $0 offset=40
 )
 (func $object-literal/OmittedTypes#set:uint8 (type $i32_i32_=>_none) (param $this i32) (param $uint8 i32)
  local.get $this
  local.get $uint8
  i32.store8 $0 offset=41
 )
 (func $object-literal/OmittedTypes#set:int16 (type $i32_i32_=>_none) (param $this i32) (param $int16 i32)
  local.get $this
  local.get $int16
  i32.store16 $0 offset=42
 )
 (func $object-literal/OmittedTypes#set:uint16 (type $i32_i32_=>_none) (param $this i32) (param $uint16 i32)
  local.get $this
  local.get $uint16
  i32.store16 $0 offset=44
 )
 (func $object-literal/OmittedTypes#set:intsize (type $i32_i32_=>_none) (param $this i32) (param $intsize i32)
  local.get $this
  local.get $intsize
  i32.store $0 offset=48
 )
 (func $object-literal/OmittedTypes#set:uintsize (type $i32_i32_=>_none) (param $this i32) (param $uintsize i32)
  local.get $this
  local.get $uintsize
  i32.store $0 offset=52
 )
 (func $object-literal/OmittedTypes#set:alias (type $i32_f64_=>_none) (param $this i32) (param $alias f64)
  local.get $this
  local.get $alias
  f64.store $0 offset=56
 )
 (func $object-literal/OmittedTypes#set:isTrue (type $i32_i32_=>_none) (param $this i32) (param $isTrue i32)
  local.get $this
  local.get $isTrue
  i32.store8 $0 offset=64
 )
 (func $object-literal/OmittedTypes#get:int32 (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $object-literal/OmittedTypes#get:uint32 (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $object-literal/OmittedTypes#get:int64 (type $i32_=>_i64) (param $this i32) (result i64)
  local.get $this
  i64.load $0 offset=8
 )
 (func $object-literal/OmittedTypes#get:uint64 (type $i32_=>_i64) (param $this i32) (result i64)
  local.get $this
  i64.load $0 offset=16
 )
 (func $object-literal/OmittedTypes#get:float32 (type $i32_=>_f32) (param $this i32) (result f32)
  local.get $this
  f32.load $0 offset=24
 )
 (func $object-literal/OmittedTypes#get:float64 (type $i32_=>_f64) (param $this i32) (result f64)
  local.get $this
  f64.load $0 offset=32
 )
 (func $object-literal/OmittedTypes#get:int8 (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load8_s $0 offset=40
 )
 (func $object-literal/OmittedTypes#get:uint8 (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load8_u $0 offset=41
 )
 (func $object-literal/OmittedTypes#get:int16 (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load16_s $0 offset=42
 )
 (func $object-literal/OmittedTypes#get:uint16 (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load16_u $0 offset=44
 )
 (func $object-literal/OmittedTypes#get:intsize (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=48
 )
 (func $object-literal/OmittedTypes#get:uintsize (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=52
 )
 (func $object-literal/OmittedTypes#get:alias (type $i32_=>_f64) (param $this i32) (result f64)
  local.get $this
  f64.load $0 offset=56
 )
 (func $object-literal/OmittedTypes#get:isTrue (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load8_u $0 offset=64
 )
 (func $object-literal/testOmittedTypes (type $i32_=>_none) (param $omitted i32)
  local.get $omitted
  call $object-literal/OmittedTypes#get:int32
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 57
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $omitted
  call $object-literal/OmittedTypes#get:uint32
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 58
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $omitted
  call $object-literal/OmittedTypes#get:int64
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 59
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $omitted
  call $object-literal/OmittedTypes#get:uint64
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $omitted
  call $object-literal/OmittedTypes#get:float32
  f32.const 0
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 61
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $omitted
  call $object-literal/OmittedTypes#get:float64
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 62
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $omitted
  call $object-literal/OmittedTypes#get:int8
  i32.extend8_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 63
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $omitted
  call $object-literal/OmittedTypes#get:uint8
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 64
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $omitted
  call $object-literal/OmittedTypes#get:int16
  i32.extend16_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 65
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $omitted
  call $object-literal/OmittedTypes#get:uint16
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 66
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $omitted
  call $object-literal/OmittedTypes#get:intsize
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 67
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $omitted
  call $object-literal/OmittedTypes#get:uintsize
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 68
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $omitted
  call $object-literal/OmittedTypes#get:alias
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 69
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $omitted
  call $object-literal/OmittedTypes#get:isTrue
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 70
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $object-literal/MixedOmitted#set:simpleType (type $i32_i32_=>_none) (param $this i32) (param $simpleType i32)
  local.get $this
  local.get $simpleType
  i32.store $0
 )
 (func $object-literal/MixedOmitted#set:complexType (type $i32_i32_=>_none) (param $this i32) (param $complexType i32)
  local.get $this
  local.get $complexType
  i32.store $0 offset=4
  local.get $this
  local.get $complexType
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $object-literal/MixedOmitted#set:anotherSimpleType (type $i32_f64_=>_none) (param $this i32) (param $anotherSimpleType f64)
  local.get $this
  local.get $anotherSimpleType
  f64.store $0 offset=8
 )
 (func $object-literal/MixedOmitted#get:simpleType (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $object-literal/MixedOmitted#get:complexType (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $object-literal/MixedOmitted#get:anotherSimpleType (type $i32_=>_f64) (param $this i32) (result f64)
  local.get $this
  f64.load $0 offset=8
 )
 (func $object-literal/OmittedFoo#set:bar (type $i32_i32_=>_none) (param $this i32) (param $bar i32)
  local.get $this
  local.get $bar
  i32.store $0
  local.get $this
  local.get $bar
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $object-literal/OmittedFoo#set:baz (type $i32_i32_=>_none) (param $this i32) (param $baz i32)
  local.get $this
  local.get $baz
  i32.store $0 offset=4
  local.get $this
  local.get $baz
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $object-literal/OmittedFoo#set:quux (type $i32_i32_=>_none) (param $this i32) (param $quux i32)
  local.get $this
  local.get $quux
  i32.store $0 offset=8
  local.get $this
  local.get $quux
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $object-literal/OmittedFoo#set:quuz (type $i32_i32_=>_none) (param $this i32) (param $quuz i32)
  local.get $this
  local.get $quuz
  i32.store $0 offset=12
  local.get $this
  local.get $quuz
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $object-literal/OmittedFoo#set:corge (type $i32_i32_=>_none) (param $this i32) (param $corge i32)
  local.get $this
  local.get $corge
  i32.store $0 offset=16
  local.get $this
  local.get $corge
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $object-literal/OmittedFoo#set:grault (type $i32_i32_=>_none) (param $this i32) (param $grault i32)
  local.get $this
  local.get $grault
  i32.store $0 offset=20
  local.get $this
  local.get $grault
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $object-literal/OmittedFoo#set:garply (type $i32_i32_=>_none) (param $this i32) (param $garply i32)
  local.get $this
  local.get $garply
  i32.store $0 offset=24
  local.get $this
  local.get $garply
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $object-literal/OmittedFoo#set:waldo (type $i32_i32_=>_none) (param $this i32) (param $waldo i32)
  local.get $this
  local.get $waldo
  i32.store $0 offset=28
  local.get $this
  local.get $waldo
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $object-literal/OmittedFoo#set:fred (type $i32_i32_=>_none) (param $this i32) (param $fred i32)
  local.get $this
  local.get $fred
  i32.store $0 offset=32
 )
 (func $object-literal/OmittedFoo#set:qux (type $i32_i32_=>_none) (param $this i32) (param $qux i32)
  local.get $this
  local.get $qux
  i32.store $0 offset=36
 )
 (func $object-literal/OmittedFoo#get:bar (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $object-literal/OmittedFoo#get:baz (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $object-literal/OmittedFoo#get:quux (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $object-literal/OmittedFoo#get:quuz (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $object-literal/OmittedFoo#get:corge (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=16
 )
 (func $object-literal/OmittedFoo#get:grault (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $object-literal/OmittedFoo#get:garply (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=24
 )
 (func $object-literal/OmittedFoo#get:waldo (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=28
 )
 (func $object-literal/OmittedFoo#get:fred (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=32
 )
 (func $object-literal/OmittedFoo#get:qux (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=36
 )
 (func $~lib/rt/itcms/__collect (type $none_=>_none)
  i32.const 0
  drop
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    i32.const 0
    i32.ne
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.ne
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
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
  i32.const 0
  drop
 )
 (func $~lib/rt/__visit_globals (type $i32_=>_none) (param $0 i32)
  (local $1 i32)
  i32.const 176
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 288
  local.get $0
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
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
 (func $~lib/object/Object~visit (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  nop
 )
 (func $object-literal/Managed~visit (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0 offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $object-literal/MixedOmitted~visit (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0 offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $object-literal/OmittedFoo~visit (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
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
  local.get $0
  i32.load $0 offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=16
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=20
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=24
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=28
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/rt/__visit_members (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  block $invalid
   block $object-literal/OmittedFoo
    block $object-literal/MixedOmitted
     block $object-literal/OmittedTypes
      block $object-literal/Managed
       block $~lib/arraybuffer/ArrayBufferView
        block $~lib/string/String
         block $~lib/arraybuffer/ArrayBuffer
          block $~lib/object/Object
           local.get $0
           i32.const 8
           i32.sub
           i32.load $0
           br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $object-literal/Managed $object-literal/OmittedTypes $object-literal/MixedOmitted $object-literal/OmittedFoo $invalid
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
      call $object-literal/Managed~visit
      return
     end
     return
    end
    local.get $0
    local.get $1
    call $object-literal/MixedOmitted~visit
    return
   end
   local.get $0
   local.get $1
   call $object-literal/OmittedFoo~visit
   return
  end
  unreachable
 )
 (func $~start (type $none_=>_none)
  call $start:object-literal
 )
 (func $~stack_check (type $none_=>_none)
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 33520
   i32.const 33568
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $object-literal/testManaged (type $i32_=>_none) (param $managed i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $managed
  call $object-literal/Managed#get:bar
  i32.const 123
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 9
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $managed
  call $object-literal/Managed#get:baz
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 32
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 10
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $object-literal/testUnmanaged (type $i32_=>_none) (param $unmanaged i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $unmanaged
  call $object-literal/Unmanaged#get:bar
  i32.const 123
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 27
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $unmanaged
  call $object-literal/Unmanaged#get:baz
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 576
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 28
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $unmanaged
  call $~lib/rt/tlsf/__free
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $object-literal/testMixedOmitted (type $i32_=>_none) (param $omitted i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $omitted
  call $object-literal/MixedOmitted#get:simpleType
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 82
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $omitted
  call $object-literal/MixedOmitted#get:complexType
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 608
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 83
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $omitted
  call $object-literal/MixedOmitted#get:anotherSimpleType
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 84
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $object-literal/OmittedFoo#constructor (type $i32_=>_i32) (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store $0
  local.get $this
  i32.const 640
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $object-literal/OmittedFoo#set:bar
  local.get $this
  i32.const 672
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $object-literal/OmittedFoo#set:baz
  local.get $this
  i32.const 0
  call $object-literal/OmittedFoo#set:quux
  local.get $this
  i32.const 0
  call $object-literal/OmittedFoo#set:quuz
  local.get $this
  i32.const 0
  call $object-literal/OmittedFoo#set:corge
  local.get $this
  i32.const 0
  call $object-literal/OmittedFoo#set:grault
  local.get $this
  i32.const 0
  call $object-literal/OmittedFoo#set:garply
  local.get $this
  i32.const 0
  call $object-literal/OmittedFoo#set:waldo
  local.get $this
  i32.const 0
  call $object-literal/OmittedFoo#set:fred
  local.get $this
  i32.const -1
  call $object-literal/OmittedFoo#set:qux
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $object-literal/testOmittedFoo (type $i32_=>_none) (param $foo i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $foo
  call $object-literal/OmittedFoo#get:bar
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 640
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 107
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $foo
  call $object-literal/OmittedFoo#get:baz
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 672
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 108
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $foo
  call $object-literal/OmittedFoo#get:quux
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 109
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $foo
  call $object-literal/OmittedFoo#get:quuz
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 110
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $foo
  call $object-literal/OmittedFoo#get:corge
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 111
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $foo
  call $object-literal/OmittedFoo#get:grault
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 112
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $foo
  call $object-literal/OmittedFoo#get:garply
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 113
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $foo
  call $object-literal/OmittedFoo#get:waldo
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 0
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 114
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $foo
  call $object-literal/OmittedFoo#get:fred
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 115
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $foo
  call $object-literal/OmittedFoo#get:qux
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 116
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $start:object-literal (type $none_=>_none)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill $0
  i32.const 128
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  memory.size $0
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 336
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 368
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $object-literal/Managed#constructor
  local.tee $0
  i32.store $0 offset=4
  local.get $0
  i32.const 123
  call $object-literal/Managed#set:bar
  local.get $0
  i32.const 32
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $object-literal/Managed#set:baz
  local.get $0
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $object-literal/testManaged
  i32.const 0
  call $object-literal/Unmanaged#constructor
  local.set $1
  local.get $1
  i32.const 123
  call $object-literal/Unmanaged#set:bar
  local.get $1
  i32.const 32
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=12
  local.get $5
  i32.const 0
  i32.const 5
  call $~lib/string/String#substring
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=12
  local.get $5
  call $object-literal/Unmanaged#set:baz
  local.get $1
  call $object-literal/testUnmanaged
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $object-literal/OmittedTypes#constructor
  local.tee $2
  i32.store $0 offset=16
  local.get $2
  i32.const 0
  i32.store $0
  local.get $2
  i32.const 0
  i32.store $0 offset=4
  local.get $2
  i64.const 0
  i64.store $0 offset=8
  local.get $2
  i64.const 0
  i64.store $0 offset=16
  local.get $2
  f32.const 0
  f32.store $0 offset=24
  local.get $2
  f64.const 0
  f64.store $0 offset=32
  local.get $2
  i32.const 0
  i32.store8 $0 offset=40
  local.get $2
  i32.const 0
  i32.store8 $0 offset=41
  local.get $2
  i32.const 0
  i32.store16 $0 offset=42
  local.get $2
  i32.const 0
  i32.store16 $0 offset=44
  local.get $2
  i32.const 0
  i32.store $0 offset=48
  local.get $2
  i32.const 0
  i32.store $0 offset=52
  local.get $2
  f64.const 0
  f64.store $0 offset=56
  local.get $2
  i32.const 0
  i32.store8 $0 offset=64
  local.get $2
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $object-literal/testOmittedTypes
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $object-literal/MixedOmitted#constructor
  local.tee $3
  i32.store $0 offset=20
  local.get $3
  i32.const 0
  call $object-literal/MixedOmitted#set:simpleType
  local.get $3
  i32.const 608
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $object-literal/MixedOmitted#set:complexType
  local.get $3
  f64.const 0
  f64.store $0 offset=8
  local.get $3
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $object-literal/testMixedOmitted
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $object-literal/OmittedFoo#constructor
  local.tee $4
  i32.store $0 offset=24
  local.get $4
  i32.const 0
  i32.store $0 offset=8
  local.get $4
  i32.const 0
  i32.store $0 offset=12
  local.get $4
  i32.const 0
  i32.store $0 offset=16
  local.get $4
  i32.const 0
  i32.store $0 offset=20
  local.get $4
  i32.const 0
  i32.store $0 offset=24
  local.get $4
  i32.const 0
  i32.store $0 offset=28
  local.get $4
  i32.const 0
  i32.store $0 offset=32
  local.get $4
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $object-literal/testOmittedFoo
  global.get $~lib/memory/__heap_base
  global.set $~lib/memory/__stack_pointer
  call $~lib/rt/itcms/__collect
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/object/Object#constructor (type $i32_=>_i32) (param $this i32) (result i32)
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
 (func $object-literal/Managed#constructor (type $i32_=>_i32) (param $this i32) (result i32)
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
   i32.const 8
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store $0
  local.get $this
  i32.const 0
  call $object-literal/Managed#set:bar
  local.get $this
  i32.const 0
  call $object-literal/Managed#set:baz
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/string/String#substring (type $i32_i32_i32_=>_i32) (param $this i32) (param $start i32) (param $end i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $finalStart i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $finalEnd i32)
  (local $14 i32)
  (local $15 i32)
  (local $fromPos i32)
  (local $17 i32)
  (local $18 i32)
  (local $toPos i32)
  (local $size i32)
  (local $out i32)
  (local $22 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  call $~lib/string/String#get:length
  local.set $len
  local.get $start
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.tee $6
  local.get $len
  local.tee $7
  local.get $6
  local.get $7
  i32.lt_s
  select
  local.set $finalStart
  local.get $end
  local.tee $9
  i32.const 0
  local.tee $10
  local.get $9
  local.get $10
  i32.gt_s
  select
  local.tee $11
  local.get $len
  local.tee $12
  local.get $11
  local.get $12
  i32.lt_s
  select
  local.set $finalEnd
  local.get $finalStart
  local.tee $14
  local.get $finalEnd
  local.tee $15
  local.get $14
  local.get $15
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.set $fromPos
  local.get $finalStart
  local.tee $17
  local.get $finalEnd
  local.tee $18
  local.get $17
  local.get $18
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.set $toPos
  local.get $toPos
  local.get $fromPos
  i32.sub
  local.set $size
  local.get $size
  i32.eqz
  if
   i32.const 544
   local.set $22
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $22
   return
  end
  local.get $fromPos
  i32.eqz
  if (result i32)
   local.get $toPos
   local.get $len
   i32.const 1
   i32.shl
   i32.eq
  else
   i32.const 0
  end
  if
   local.get $this
   local.set $22
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $22
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $size
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store $0
  local.get $out
  local.get $this
  local.get $fromPos
  i32.add
  local.get $size
  memory.copy $0 $0
  local.get $out
  local.set $22
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $22
 )
 (func $object-literal/OmittedTypes#constructor (type $i32_=>_i32) (param $this i32) (result i32)
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
   i32.const 65
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store $0
  local.get $this
  i32.const 0
  call $object-literal/OmittedTypes#set:int32
  local.get $this
  i32.const 0
  call $object-literal/OmittedTypes#set:uint32
  local.get $this
  i64.const 0
  call $object-literal/OmittedTypes#set:int64
  local.get $this
  i64.const 0
  call $object-literal/OmittedTypes#set:uint64
  local.get $this
  f32.const 0
  call $object-literal/OmittedTypes#set:float32
  local.get $this
  f64.const 0
  call $object-literal/OmittedTypes#set:float64
  local.get $this
  i32.const 0
  call $object-literal/OmittedTypes#set:int8
  local.get $this
  i32.const 0
  call $object-literal/OmittedTypes#set:uint8
  local.get $this
  i32.const 0
  call $object-literal/OmittedTypes#set:int16
  local.get $this
  i32.const 0
  call $object-literal/OmittedTypes#set:uint16
  local.get $this
  i32.const 0
  call $object-literal/OmittedTypes#set:intsize
  local.get $this
  i32.const 0
  call $object-literal/OmittedTypes#set:uintsize
  local.get $this
  f64.const 0
  call $object-literal/OmittedTypes#set:alias
  local.get $this
  i32.const 0
  call $object-literal/OmittedTypes#set:isTrue
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $object-literal/MixedOmitted#constructor (type $i32_=>_i32) (param $this i32) (result i32)
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
   i32.const 16
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store $0
  local.get $this
  i32.const 0
  call $object-literal/MixedOmitted#set:simpleType
  local.get $this
  i32.const 0
  call $object-literal/MixedOmitted#set:complexType
  local.get $this
  f64.const 0
  call $object-literal/MixedOmitted#set:anotherSimpleType
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
)
