(module
 (type $i32_i32_=>_none (func_subtype (param i32 i32) func))
 (type $i32_=>_i32 (func_subtype (param i32) (result i32) func))
 (type $i32_=>_none (func_subtype (param i32) func))
 (type $i32_i32_i32_=>_none (func_subtype (param i32 i32 i32) func))
 (type $i32_i32_i32_=>_i32 (func_subtype (param i32 i32 i32) (result i32) func))
 (type $none_=>_none (func_subtype func))
 (type $i32_i32_=>_i32 (func_subtype (param i32 i32) (result i32) func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (type $i32_i32_i32_=>_i64 (func_subtype (param i32 i32 i32) (result i64) func))
 (type $i32_i32_i64_i32_=>_none (func_subtype (param i32 i32 i64 i32) func))
 (type $i32_i32_i32_i32_=>_i32 (func_subtype (param i32 i32 i32 i32) (result i32) func))
 (type $none_=>_i32 (func_subtype (result i32) func))
 (type $i32_i32_i32_=>_f32 (func_subtype (param i32 i32 i32) (result f32) func))
 (type $i32_i32_i32_=>_f64 (func_subtype (param i32 i32 i32) (result f64) func))
 (type $i32_i32_f32_i32_=>_none (func_subtype (param i32 i32 f32 i32) func))
 (type $i32_i32_f64_i32_=>_none (func_subtype (param i32 i32 f64 i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
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
 (global $~lib/native/ASC_RUNTIME i32 (i32.const 2))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 720))
 (global $~lib/memory/__data_end i32 (i32.const 764))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 17148))
 (global $~lib/memory/__heap_base i32 (i32.const 17148))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 60) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 124) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 188) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 256) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 288) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 316) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 380) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 432) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 460) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 524) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 588) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00d\00a\00t\00a\00v\00i\00e\00w\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 652) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00s\00t\00d\00/\00d\00a\00t\00a\00v\00i\00e\00w\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 720) "\05\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00A\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/Object#set:nextWithColor (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
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
 (func $~lib/rt/itcms/Object#get:next (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/rt/itcms/Object#get:color (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
  i32.const 3
  i32.and
 )
 (func $~lib/rt/itcms/visitRoots (type $i32_=>_none) (param $cookie i32)
  (local $pn i32)
  (local $iter i32)
  (local $var$3 i32)
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
   local.set $var$3
   local.get $var$3
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
     i32.const 159
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
  i32.load $0 offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $color
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#set:next (type $i32_i32_=>_none) (param $this i32) (param $obj i32)
  local.get $this
  local.get $obj
  local.get $this
  i32.load $0 offset=4
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
   i32.load $0 offset=8
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
    i32.const 127
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $this
  i32.load $0 offset=8
  local.set $prev
  i32.const 1
  drop
  local.get $prev
  i32.eqz
  if
   i32.const 0
   i32.const 208
   i32.const 131
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
 (func $~lib/rt/__typeinfo (type $i32_=>_i32) (param $id i32) (result i32)
  (local $ptr i32)
  global.get $~lib/rt/__rtti_base
  local.set $ptr
  local.get $id
  local.get $ptr
  i32.load $0
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
  i32.const 8
  i32.mul
  i32.add
  i32.load $0
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (type $i32_=>_i32) (param $this i32) (result i32)
  (local $rtId i32)
  local.get $this
  i32.load $0 offset=12
  local.set $rtId
  local.get $rtId
  i32.const 1
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
  i32.load $0 offset=8
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
  (local $var$1 i32)
  local.get $this
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $this
   i32.load $0 offset=8
   local.tee $var$1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 208
    i32.const 147
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $var$1
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
  (local $var$2 i32)
  global.get $~lib/memory/__stack_pointer
  local.set $ptr
  loop $while-continue|0
   local.get $ptr
   global.get $~lib/memory/__heap_base
   i32.lt_u
   local.set $var$2
   local.get $var$2
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
 (func $~lib/rt/itcms/Object#get:size (type $i32_=>_i32) (param $this i32) (result i32)
  i32.const 4
  local.get $this
  i32.load $0
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
 )
 (func $~lib/rt/tlsf/Root#set:flMap (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
 )
 (func $~lib/rt/tlsf/Block#set:prev (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (type $i32_i32_=>_none) (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $var$6 i32)
  (local $var$7 i32)
  (local $boundedSize i32)
  (local $prev i32)
  (local $next i32)
  (local $sl_0 i32)
  (local $fl_0 i32)
  (local $root_0 i32)
  (local $head i32)
  (local $sl_1 i32)
  (local $fl_1 i32)
  (local $root_1 i32)
  (local $fl_2 i32)
  (local $root_2 i32)
  (local $slMap i32)
  (local $slMap_0 i32)
  (local $fl_3 i32)
  (local $root_3 i32)
  local.get $block
  i32.load $0
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
   local.tee $var$6
   i32.const 1073741820
   local.tee $var$7
   local.get $var$6
   local.get $var$7
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
  i32.load $0 offset=4
  local.set $prev
  local.get $block
  i32.load $0 offset=8
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
  local.set $root_0
  local.get $fl
  local.set $fl_0
  local.get $sl
  local.set $sl_0
  local.get $root_0
  local.get $fl_0
  i32.const 4
  i32.shl
  local.get $sl_0
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=96
  i32.eq
  if
   local.get $root
   local.set $root_1
   local.get $fl
   local.set $fl_1
   local.get $sl
   local.set $sl_1
   local.get $next
   local.set $head
   local.get $root_1
   local.get $fl_1
   i32.const 4
   i32.shl
   local.get $sl_1
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
    local.set $root_2
    local.get $fl
    local.set $fl_2
    local.get $root_2
    local.get $fl_2
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=4
    local.set $slMap
    local.get $root
    local.set $root_3
    local.get $fl
    local.set $fl_3
    local.get $slMap
    i32.const 1
    local.get $sl
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $slMap
    local.set $slMap_0
    local.get $root_3
    local.get $fl_3
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap_0
    i32.store $0 offset=4
    local.get $slMap
    i32.eqz
    if
     local.get $root
     local.get $root
     i32.load $0
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
  (local $block_0 i32)
  (local $right i32)
  (local $rightInfo i32)
  (local $block_1 i32)
  (local $block_2 i32)
  (local $left i32)
  (local $leftInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $var$13 i32)
  (local $var$14 i32)
  (local $boundedSize i32)
  (local $sl_0 i32)
  (local $fl_0 i32)
  (local $root_0 i32)
  (local $head i32)
  (local $head_0 i32)
  (local $sl_1 i32)
  (local $fl_1 i32)
  (local $root_1 i32)
  (local $fl_2 i32)
  (local $root_2 i32)
  (local $slMap i32)
  (local $fl_3 i32)
  (local $root_3 i32)
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
  i32.load $0
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
  local.get $block
  local.set $block_0
  local.get $block_0
  i32.const 4
  i32.add
  local.get $block_0
  i32.load $0
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $right
  local.get $right
  i32.load $0
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
   local.set $block_1
   local.get $block_1
   i32.const 4
   i32.add
   local.get $block_1
   i32.load $0
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $right
   local.get $right
   i32.load $0
   local.set $rightInfo
  end
  local.get $blockInfo
  i32.const 2
  i32.and
  if
   local.get $block
   local.set $block_2
   local.get $block_2
   i32.const 4
   i32.sub
   i32.load $0
   local.set $left
   local.get $left
   i32.load $0
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
   local.tee $var$13
   i32.const 1073741820
   local.tee $var$14
   local.get $var$13
   local.get $var$14
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
  local.get $root
  local.set $root_0
  local.get $fl
  local.set $fl_0
  local.get $sl
  local.set $sl_0
  local.get $root_0
  local.get $fl_0
  i32.const 4
  i32.shl
  local.get $sl_0
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
  local.set $root_1
  local.get $fl
  local.set $fl_1
  local.get $sl
  local.set $sl_1
  local.get $block
  local.set $head_0
  local.get $root_1
  local.get $fl_1
  i32.const 4
  i32.shl
  local.get $sl_1
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $head_0
  i32.store $0 offset=96
  local.get $root
  local.get $root
  i32.load $0
  i32.const 1
  local.get $fl
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root_3
  local.get $fl
  local.set $fl_3
  local.get $root
  local.set $root_2
  local.get $fl
  local.set $fl_2
  local.get $root_2
  local.get $fl_2
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=4
  i32.const 1
  local.get $sl
  i32.shl
  i32.or
  local.set $slMap
  local.get $root_3
  local.get $fl_3
  i32.const 2
  i32.shl
  i32.add
  local.get $slMap
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/addMemory (type $i32_i32_i32_=>_i32) (param $root i32) (param $start i32) (param $end i32) (result i32)
  (local $root_0 i32)
  (local $tail i32)
  (local $tailInfo i32)
  (local $size i32)
  (local $leftSize i32)
  (local $left i32)
  (local $tail_0 i32)
  (local $root_1 i32)
  i32.const 1
  drop
  local.get $start
  local.get $end
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 480
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
  local.set $root_0
  local.get $root_0
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
    i32.const 480
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
    i32.load $0
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
    i32.const 480
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
  local.set $root_1
  local.get $tail
  local.set $tail_0
  local.get $root_1
  local.get $tail_0
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
  (local $tail i32)
  (local $root_0 i32)
  (local $fl i32)
  (local $var$7 i32)
  (local $slMap i32)
  (local $fl_0 i32)
  (local $root_1 i32)
  (local $sl i32)
  (local $var$12 i32)
  (local $head i32)
  (local $sl_0 i32)
  (local $fl_1 i32)
  (local $root_2 i32)
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
  local.set $root_0
  i32.const 0
  local.set $tail
  local.get $root_0
  local.get $tail
  i32.store $0 offset=1568
  i32.const 0
  local.set $fl
  loop $for-loop|0
   local.get $fl
   i32.const 23
   i32.lt_u
   local.set $var$7
   local.get $var$7
   if
    local.get $root
    local.set $root_1
    local.get $fl
    local.set $fl_0
    i32.const 0
    local.set $slMap
    local.get $root_1
    local.get $fl_0
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
     local.set $var$12
     local.get $var$12
     if
      local.get $root
      local.set $root_2
      local.get $fl
      local.set $fl_1
      local.get $sl
      local.set $sl_0
      i32.const 0
      local.set $head
      local.get $root_2
      local.get $fl_1
      i32.const 4
      i32.shl
      local.get $sl_0
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
   i32.load $0
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
  i32.load $0
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
  (local $var$1 i32)
  (local $black i32)
  (local $var$3 i32)
  (local $var$4 i32)
  (local $from i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $var$1
      local.get $var$1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $var$1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $var$1
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
     local.set $var$3
     local.get $var$3
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
      local.set $var$4
      local.get $var$4
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
     i32.const 228
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
   i32.const 144
   i32.const 480
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
  (local $fl_0 i32)
  (local $root_0 i32)
  (local $slMap i32)
  (local $head i32)
  (local $flMap i32)
  (local $fl_1 i32)
  (local $root_1 i32)
  (local $sl_0 i32)
  (local $fl_2 i32)
  (local $root_2 i32)
  (local $sl_1 i32)
  (local $fl_3 i32)
  (local $root_3 i32)
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
   i32.const 480
   i32.const 330
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $root
  local.set $root_0
  local.get $fl
  local.set $fl_0
  local.get $root_0
  local.get $fl_0
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
   i32.load $0
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
    local.set $root_1
    local.get $fl
    local.set $fl_1
    local.get $root_1
    local.get $fl_1
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
     i32.const 480
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $root
    local.set $root_2
    local.get $fl
    local.set $fl_2
    local.get $slMap
    i32.ctz
    local.set $sl_0
    local.get $root_2
    local.get $fl_2
    i32.const 4
    i32.shl
    local.get $sl_0
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=96
    local.set $head
   end
  else
   local.get $root
   local.set $root_3
   local.get $fl
   local.set $fl_3
   local.get $slMap
   i32.ctz
   local.set $sl_1
   local.get $root_3
   local.get $fl_3
   i32.const 4
   i32.shl
   local.get $sl_1
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
  (local $root_0 i32)
  (local $pagesNeeded i32)
  (local $var$5 i32)
  (local $var$6 i32)
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
  local.set $root_0
  local.get $root_0
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
  local.tee $var$5
  local.get $pagesNeeded
  local.tee $var$6
  local.get $var$5
  local.get $var$6
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
  (local $block_0 i32)
  (local $block_1 i32)
  local.get $block
  i32.load $0
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
   local.set $block_1
   local.get $block_1
   i32.const 4
   i32.add
   local.get $block_1
   i32.load $0
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $block
   local.set $block_0
   local.get $block_0
   i32.const 4
   i32.add
   local.get $block_0
   i32.load $0
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.load $0
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
    i32.const 480
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $block
  i32.load $0
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
 (func $~lib/rt/itcms/Object#set:rtId (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/rt/itcms/__new (type $i32_i32_=>_i32) (param $size i32) (param $id i32) (result i32)
  (local $obj i32)
  (local $ptr i32)
  local.get $size
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 144
   i32.const 208
   i32.const 260
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
   i32.const 208
   i32.const 294
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
 (func $~lib/arraybuffer/ArrayBufferView#set:buffer (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:dataStart (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:byteLength (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/typedarray/Uint8Array#__set (type $i32_i32_i32_=>_none) (param $this i32) (param $index i32) (param $value i32)
  local.get $index
  local.get $this
  i32.load $0 offset=8
  i32.ge_u
  if
   i32.const 336
   i32.const 544
   i32.const 178
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.add
  local.get $value
  i32.store8 $0
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  i32.load $0 offset=16
 )
 (func $~lib/dataview/DataView#set:buffer (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/dataview/DataView#set:dataStart (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/dataview/DataView#set:byteLength (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteOffset (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
  local.get $this
  i32.load $0
  i32.sub
 )
 (func $~lib/dataview/DataView#getFloat32 (type $i32_i32_i32_=>_f32) (param $this i32) (param $byteOffset i32) (param $littleEndian i32) (result f32)
  (local $var$3 i32)
  local.get $byteOffset
  i32.const 31
  i32.shr_u
  local.get $byteOffset
  i32.const 4
  i32.add
  local.get $this
  i32.load $0 offset=8
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 608
   i32.const 35
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $littleEndian
  if (result f32)
   local.get $this
   i32.load $0 offset=4
   local.get $byteOffset
   i32.add
   f32.load $0
  else
   local.get $this
   i32.load $0 offset=4
   local.get $byteOffset
   i32.add
   i32.load $0
   local.tee $var$3
   i32.const -16711936
   i32.and
   i32.const 8
   i32.rotl
   local.get $var$3
   i32.const 16711935
   i32.and
   i32.const 8
   i32.rotr
   i32.or
   f32.reinterpret_i32
  end
 )
 (func $~lib/dataview/DataView#getFloat64 (type $i32_i32_i32_=>_f64) (param $this i32) (param $byteOffset i32) (param $littleEndian i32) (result f64)
  (local $var$3 i64)
  (local $var$4 i64)
  local.get $byteOffset
  i32.const 31
  i32.shr_u
  local.get $byteOffset
  i32.const 8
  i32.add
  local.get $this
  i32.load $0 offset=8
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 608
   i32.const 44
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $littleEndian
  if (result f64)
   local.get $this
   i32.load $0 offset=4
   local.get $byteOffset
   i32.add
   f64.load $0
  else
   local.get $this
   i32.load $0 offset=4
   local.get $byteOffset
   i32.add
   i64.load $0
   local.tee $var$3
   i64.const 8
   i64.shr_u
   i64.const 71777214294589695
   i64.and
   local.get $var$3
   i64.const 71777214294589695
   i64.and
   i64.const 8
   i64.shl
   i64.or
   local.tee $var$4
   i64.const 16
   i64.shr_u
   i64.const 281470681808895
   i64.and
   local.get $var$4
   i64.const 281470681808895
   i64.and
   i64.const 16
   i64.shl
   i64.or
   i64.const 32
   i64.rotr
   f64.reinterpret_i64
  end
 )
 (func $~lib/dataview/DataView#getInt8 (type $i32_i32_=>_i32) (param $this i32) (param $byteOffset i32) (result i32)
  local.get $byteOffset
  local.get $this
  i32.load $0 offset=8
  i32.ge_u
  if
   i32.const 336
   i32.const 608
   i32.const 51
   i32.const 50
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $byteOffset
  i32.add
  i32.load8_s $0
 )
 (func $~lib/dataview/DataView#getInt16 (type $i32_i32_i32_=>_i32) (param $this i32) (param $byteOffset i32) (param $littleEndian i32) (result i32)
  (local $result i32)
  (local $var$4 i32)
  local.get $byteOffset
  i32.const 31
  i32.shr_u
  local.get $byteOffset
  i32.const 2
  i32.add
  local.get $this
  i32.load $0 offset=8
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 608
   i32.const 58
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $byteOffset
  i32.add
  i32.load16_s $0
  local.set $result
  local.get $littleEndian
  if (result i32)
   local.get $result
  else
   local.get $result
   i32.const 65535
   i32.and
   local.tee $var$4
   i32.const 8
   i32.shl
   local.get $var$4
   i32.const 8
   i32.shr_u
   i32.or
  end
 )
 (func $~lib/dataview/DataView#getInt32 (type $i32_i32_i32_=>_i32) (param $this i32) (param $byteOffset i32) (param $littleEndian i32) (result i32)
  (local $result i32)
  (local $var$4 i32)
  local.get $byteOffset
  i32.const 31
  i32.shr_u
  local.get $byteOffset
  i32.const 4
  i32.add
  local.get $this
  i32.load $0 offset=8
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 608
   i32.const 66
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $byteOffset
  i32.add
  i32.load $0
  local.set $result
  local.get $littleEndian
  if (result i32)
   local.get $result
  else
   local.get $result
   local.tee $var$4
   i32.const -16711936
   i32.and
   i32.const 8
   i32.rotl
   local.get $var$4
   i32.const 16711935
   i32.and
   i32.const 8
   i32.rotr
   i32.or
  end
 )
 (func $~lib/dataview/DataView#getInt64 (type $i32_i32_i32_=>_i64) (param $this i32) (param $byteOffset i32) (param $littleEndian i32) (result i64)
  (local $result i64)
  (local $var$4 i64)
  (local $var$5 i64)
  local.get $byteOffset
  i32.const 31
  i32.shr_u
  local.get $byteOffset
  i32.const 8
  i32.add
  local.get $this
  i32.load $0 offset=8
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 608
   i32.const 151
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $byteOffset
  i32.add
  i64.load $0
  local.set $result
  local.get $littleEndian
  if (result i64)
   local.get $result
  else
   local.get $result
   local.tee $var$4
   i64.const 8
   i64.shr_u
   i64.const 71777214294589695
   i64.and
   local.get $var$4
   i64.const 71777214294589695
   i64.and
   i64.const 8
   i64.shl
   i64.or
   local.tee $var$5
   i64.const 16
   i64.shr_u
   i64.const 281470681808895
   i64.and
   local.get $var$5
   i64.const 281470681808895
   i64.and
   i64.const 16
   i64.shl
   i64.or
   i64.const 32
   i64.rotr
  end
 )
 (func $~lib/dataview/DataView#getUint8 (type $i32_i32_=>_i32) (param $this i32) (param $byteOffset i32) (result i32)
  local.get $byteOffset
  local.get $this
  i32.load $0 offset=8
  i32.ge_u
  if
   i32.const 336
   i32.const 608
   i32.const 72
   i32.const 50
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $byteOffset
  i32.add
  i32.load8_u $0
 )
 (func $~lib/dataview/DataView#getUint16 (type $i32_i32_i32_=>_i32) (param $this i32) (param $byteOffset i32) (param $littleEndian i32) (result i32)
  (local $result i32)
  (local $var$4 i32)
  local.get $byteOffset
  i32.const 31
  i32.shr_u
  local.get $byteOffset
  i32.const 2
  i32.add
  local.get $this
  i32.load $0 offset=8
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 608
   i32.const 79
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $byteOffset
  i32.add
  i32.load16_u $0
  local.set $result
  local.get $littleEndian
  if (result i32)
   local.get $result
  else
   local.get $result
   local.tee $var$4
   i32.const 8
   i32.shl
   local.get $var$4
   i32.const 8
   i32.shr_u
   i32.or
  end
 )
 (func $~lib/dataview/DataView#getUint32 (type $i32_i32_i32_=>_i32) (param $this i32) (param $byteOffset i32) (param $littleEndian i32) (result i32)
  (local $result i32)
  (local $var$4 i32)
  local.get $byteOffset
  i32.const 31
  i32.shr_u
  local.get $byteOffset
  i32.const 4
  i32.add
  local.get $this
  i32.load $0 offset=8
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 608
   i32.const 87
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $byteOffset
  i32.add
  i32.load $0
  local.set $result
  local.get $littleEndian
  if (result i32)
   local.get $result
  else
   local.get $result
   local.tee $var$4
   i32.const -16711936
   i32.and
   i32.const 8
   i32.rotl
   local.get $var$4
   i32.const 16711935
   i32.and
   i32.const 8
   i32.rotr
   i32.or
  end
 )
 (func $~lib/dataview/DataView#getUint64 (type $i32_i32_i32_=>_i64) (param $this i32) (param $byteOffset i32) (param $littleEndian i32) (result i64)
  (local $result i64)
  (local $var$4 i64)
  (local $var$5 i64)
  local.get $byteOffset
  i32.const 31
  i32.shr_u
  local.get $byteOffset
  i32.const 8
  i32.add
  local.get $this
  i32.load $0 offset=8
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 608
   i32.const 159
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $byteOffset
  i32.add
  i64.load $0
  local.set $result
  local.get $littleEndian
  if (result i64)
   local.get $result
  else
   local.get $result
   local.tee $var$4
   i64.const 8
   i64.shr_u
   i64.const 71777214294589695
   i64.and
   local.get $var$4
   i64.const 71777214294589695
   i64.and
   i64.const 8
   i64.shl
   i64.or
   local.tee $var$5
   i64.const 16
   i64.shr_u
   i64.const 281470681808895
   i64.and
   local.get $var$5
   i64.const 281470681808895
   i64.and
   i64.const 16
   i64.shl
   i64.or
   i64.const 32
   i64.rotr
  end
 )
 (func $~lib/dataview/DataView#setFloat32 (type $i32_i32_f32_i32_=>_none) (param $this i32) (param $byteOffset i32) (param $value f32) (param $littleEndian i32)
  (local $var$4 i32)
  local.get $byteOffset
  i32.const 31
  i32.shr_u
  local.get $byteOffset
  i32.const 4
  i32.add
  local.get $this
  i32.load $0 offset=8
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 608
   i32.const 95
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $littleEndian
  if
   local.get $this
   i32.load $0 offset=4
   local.get $byteOffset
   i32.add
   local.get $value
   f32.store $0
  else
   local.get $this
   i32.load $0 offset=4
   local.get $byteOffset
   i32.add
   local.get $value
   i32.reinterpret_f32
   local.tee $var$4
   i32.const -16711936
   i32.and
   i32.const 8
   i32.rotl
   local.get $var$4
   i32.const 16711935
   i32.and
   i32.const 8
   i32.rotr
   i32.or
   i32.store $0
  end
 )
 (func $~lib/dataview/DataView#setFloat64 (type $i32_i32_f64_i32_=>_none) (param $this i32) (param $byteOffset i32) (param $value f64) (param $littleEndian i32)
  (local $var$4 i64)
  (local $var$5 i64)
  local.get $byteOffset
  i32.const 31
  i32.shr_u
  local.get $byteOffset
  i32.const 8
  i32.add
  local.get $this
  i32.load $0 offset=8
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 608
   i32.const 103
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $littleEndian
  if
   local.get $this
   i32.load $0 offset=4
   local.get $byteOffset
   i32.add
   local.get $value
   f64.store $0
  else
   local.get $this
   i32.load $0 offset=4
   local.get $byteOffset
   i32.add
   local.get $value
   i64.reinterpret_f64
   local.tee $var$4
   i64.const 8
   i64.shr_u
   i64.const 71777214294589695
   i64.and
   local.get $var$4
   i64.const 71777214294589695
   i64.and
   i64.const 8
   i64.shl
   i64.or
   local.tee $var$5
   i64.const 16
   i64.shr_u
   i64.const 281470681808895
   i64.and
   local.get $var$5
   i64.const 281470681808895
   i64.and
   i64.const 16
   i64.shl
   i64.or
   i64.const 32
   i64.rotr
   i64.store $0
  end
 )
 (func $~lib/dataview/DataView#setInt8 (type $i32_i32_i32_=>_none) (param $this i32) (param $byteOffset i32) (param $value i32)
  local.get $byteOffset
  local.get $this
  i32.load $0 offset=8
  i32.ge_u
  if
   i32.const 336
   i32.const 608
   i32.const 109
   i32.const 50
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $byteOffset
  i32.add
  local.get $value
  i32.store8 $0
 )
 (func $~lib/dataview/DataView#setInt16 (type $i32_i32_i32_i32_=>_none) (param $this i32) (param $byteOffset i32) (param $value i32) (param $littleEndian i32)
  (local $var$4 i32)
  local.get $byteOffset
  i32.const 31
  i32.shr_u
  local.get $byteOffset
  i32.const 2
  i32.add
  local.get $this
  i32.load $0 offset=8
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 608
   i32.const 116
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $byteOffset
  i32.add
  local.get $littleEndian
  if (result i32)
   local.get $value
  else
   local.get $value
   i32.const 65535
   i32.and
   local.tee $var$4
   i32.const 8
   i32.shl
   local.get $var$4
   i32.const 8
   i32.shr_u
   i32.or
  end
  i32.store16 $0
 )
 (func $~lib/dataview/DataView#setInt32 (type $i32_i32_i32_i32_=>_none) (param $this i32) (param $byteOffset i32) (param $value i32) (param $littleEndian i32)
  (local $var$4 i32)
  local.get $byteOffset
  i32.const 31
  i32.shr_u
  local.get $byteOffset
  i32.const 4
  i32.add
  local.get $this
  i32.load $0 offset=8
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 608
   i32.const 123
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $byteOffset
  i32.add
  local.get $littleEndian
  if (result i32)
   local.get $value
  else
   local.get $value
   local.tee $var$4
   i32.const -16711936
   i32.and
   i32.const 8
   i32.rotl
   local.get $var$4
   i32.const 16711935
   i32.and
   i32.const 8
   i32.rotr
   i32.or
  end
  i32.store $0
 )
 (func $~lib/dataview/DataView#setInt64 (type $i32_i32_i64_i32_=>_none) (param $this i32) (param $byteOffset i32) (param $value i64) (param $littleEndian i32)
  (local $var$4 i64)
  (local $var$5 i64)
  local.get $byteOffset
  i32.const 31
  i32.shr_u
  local.get $byteOffset
  i32.const 8
  i32.add
  local.get $this
  i32.load $0 offset=8
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 608
   i32.const 167
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $byteOffset
  i32.add
  local.get $littleEndian
  if (result i64)
   local.get $value
  else
   local.get $value
   local.tee $var$4
   i64.const 8
   i64.shr_u
   i64.const 71777214294589695
   i64.and
   local.get $var$4
   i64.const 71777214294589695
   i64.and
   i64.const 8
   i64.shl
   i64.or
   local.tee $var$5
   i64.const 16
   i64.shr_u
   i64.const 281470681808895
   i64.and
   local.get $var$5
   i64.const 281470681808895
   i64.and
   i64.const 16
   i64.shl
   i64.or
   i64.const 32
   i64.rotr
  end
  i64.store $0
 )
 (func $~lib/dataview/DataView#setUint8 (type $i32_i32_i32_=>_none) (param $this i32) (param $byteOffset i32) (param $value i32)
  local.get $byteOffset
  local.get $this
  i32.load $0 offset=8
  i32.ge_u
  if
   i32.const 336
   i32.const 608
   i32.const 128
   i32.const 50
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $byteOffset
  i32.add
  local.get $value
  i32.store8 $0
 )
 (func $~lib/dataview/DataView#setUint16 (type $i32_i32_i32_i32_=>_none) (param $this i32) (param $byteOffset i32) (param $value i32) (param $littleEndian i32)
  (local $var$4 i32)
  local.get $byteOffset
  i32.const 31
  i32.shr_u
  local.get $byteOffset
  i32.const 2
  i32.add
  local.get $this
  i32.load $0 offset=8
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 608
   i32.const 135
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $byteOffset
  i32.add
  local.get $littleEndian
  if (result i32)
   local.get $value
  else
   local.get $value
   i32.const 65535
   i32.and
   local.tee $var$4
   i32.const 8
   i32.shl
   local.get $var$4
   i32.const 8
   i32.shr_u
   i32.or
  end
  i32.store16 $0
 )
 (func $~lib/dataview/DataView#setUint32 (type $i32_i32_i32_i32_=>_none) (param $this i32) (param $byteOffset i32) (param $value i32) (param $littleEndian i32)
  (local $var$4 i32)
  local.get $byteOffset
  i32.const 31
  i32.shr_u
  local.get $byteOffset
  i32.const 4
  i32.add
  local.get $this
  i32.load $0 offset=8
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 608
   i32.const 142
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $byteOffset
  i32.add
  local.get $littleEndian
  if (result i32)
   local.get $value
  else
   local.get $value
   local.tee $var$4
   i32.const -16711936
   i32.and
   i32.const 8
   i32.rotl
   local.get $var$4
   i32.const 16711935
   i32.and
   i32.const 8
   i32.rotr
   i32.or
  end
  i32.store $0
 )
 (func $~lib/dataview/DataView#setUint64 (type $i32_i32_i64_i32_=>_none) (param $this i32) (param $byteOffset i32) (param $value i64) (param $littleEndian i32)
  (local $var$4 i64)
  (local $var$5 i64)
  local.get $byteOffset
  i32.const 31
  i32.shr_u
  local.get $byteOffset
  i32.const 8
  i32.add
  local.get $this
  i32.load $0 offset=8
  i32.gt_s
  i32.or
  if
   i32.const 336
   i32.const 608
   i32.const 174
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $byteOffset
  i32.add
  local.get $littleEndian
  if (result i64)
   local.get $value
  else
   local.get $value
   local.tee $var$4
   i64.const 8
   i64.shr_u
   i64.const 71777214294589695
   i64.and
   local.get $var$4
   i64.const 71777214294589695
   i64.and
   i64.const 8
   i64.shl
   i64.or
   local.tee $var$5
   i64.const 16
   i64.shr_u
   i64.const 281470681808895
   i64.and
   local.get $var$5
   i64.const 281470681808895
   i64.and
   i64.const 16
   i64.shl
   i64.or
   i64.const 32
   i64.rotr
  end
  i64.store $0
 )
 (func $~lib/dataview/DataView#constructor@varargs (type $i32_i32_i32_i32_=>_i32) (param $this i32) (param $buffer i32) (param $byteOffset i32) (param $byteLength i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $byteOffset
   end
   local.get $buffer
   call $~lib/arraybuffer/ArrayBuffer#get:byteLength
   local.set $byteLength
  end
  local.get $this
  local.get $buffer
  local.get $byteOffset
  local.get $byteLength
  call $~lib/dataview/DataView#constructor
 )
 (func $~lib/dataview/DataView#get:byteOffset (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
  local.get $this
  i32.load $0
  i32.sub
 )
 (func $~lib/rt/itcms/__collect (type $none_=>_none)
  (local $var$0 i32)
  (local $var$1 i32)
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
    local.set $var$0
    local.get $var$0
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
   local.set $var$1
   local.get $var$1
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
 (func $~lib/arraybuffer/ArrayBufferView~visit (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/typedarray/Uint8Array~visit (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $~lib/dataview/DataView~visit (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/rt/__visit_members (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/dataview/DataView
    block $~lib/typedarray/Uint8Array
     block $~lib/arraybuffer/ArrayBufferView
      block $~lib/string/String
       block $~lib/arraybuffer/ArrayBuffer
        local.get $0
        i32.const 8
        i32.sub
        i32.load $0
        br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/typedarray/Uint8Array $~lib/dataview/DataView $invalid
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
    call $~lib/typedarray/Uint8Array~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/dataview/DataView~visit
   return
  end
  unreachable
 )
 (func $~start (type $none_=>_none)
  call $start:std/dataview
 )
 (func $~stack_check (type $none_=>_none)
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 17168
   i32.const 17216
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:std/dataview (type $none_=>_none)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  memory.size $0
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
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 8
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  i32.store $0
  local.get $0
  i32.const 0
  i32.const 246
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 224
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 88
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 3
  i32.const 159
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 4
  i32.const 130
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 5
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 6
  i32.const 67
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 7
  i32.const 95
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $0
  i32.load $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $0
  i32.load $0 offset=8
  call $~lib/dataview/DataView#constructor
  local.tee $1
  i32.store $0 offset=8
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const -4.592586247781397e-20
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 15
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const -2.3413961970849473e-37
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 16
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const 77105877018631129268224
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 17
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const 229.51023864746094
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 18
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const 14079802746555334656
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 19
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const -2275140518817895515269171e9
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const -62437351080004157440
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 22
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const 1403059112509440
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 23
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const -5.522466503261712e-20
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 24
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const -1.6843597451835358e-37
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 25
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getFloat64
  f64.const 7936550095674706383278551e126
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 27
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getFloat64
  f64.const -411777475818852546741639e241
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 28
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/dataview/DataView#getInt8
  i32.const -10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 30
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/dataview/DataView#getInt8
  i32.const -32
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 31
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  call $~lib/dataview/DataView#getInt8
  i32.const 88
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 32
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  call $~lib/dataview/DataView#getInt8
  i32.const -97
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 33
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  call $~lib/dataview/DataView#getInt8
  i32.const -126
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 34
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  call $~lib/dataview/DataView#getInt8
  i32.const 101
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 35
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 6
  call $~lib/dataview/DataView#getInt8
  i32.const 67
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 7
  call $~lib/dataview/DataView#getInt8
  i32.const 95
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.extend16_s
  i32.const -7946
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 39
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.extend16_s
  i32.const 22752
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 40
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.extend16_s
  i32.const -24744
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 41
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.extend16_s
  i32.const -32097
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 42
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.extend16_s
  i32.const 25986
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 43
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.extend16_s
  i32.const 17253
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 44
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 6
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.extend16_s
  i32.const 24387
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 45
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.extend16_s
  i32.const -2336
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 47
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.extend16_s
  i32.const -8104
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 48
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.extend16_s
  i32.const 22687
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 49
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.extend16_s
  i32.const -24702
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 50
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.extend16_s
  i32.const -32155
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 51
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.extend16_s
  i32.const 25923
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 52
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 6
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.extend16_s
  i32.const 17247
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 53
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const -1621565194
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 55
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const -2103486240
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const 1703059288
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 57
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const 1130726047
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 58
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const 1598252418
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 59
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const -153069409
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 61
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const -531062910
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 62
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const 1486848613
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 63
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const -1618844349
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 64
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const -2107292833
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 65
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt64
  i64.const 6864441868736323830
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 67
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt64
  i64.const -657428103485373601
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 68
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/dataview/DataView#getUint8
  i32.const 246
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 70
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/dataview/DataView#getUint8
  i32.const 224
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 71
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  call $~lib/dataview/DataView#getUint8
  i32.const 88
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 72
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  call $~lib/dataview/DataView#getUint8
  i32.const 159
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 73
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  call $~lib/dataview/DataView#getUint8
  i32.const 130
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 74
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  call $~lib/dataview/DataView#getUint8
  i32.const 101
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 75
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 6
  call $~lib/dataview/DataView#getUint8
  i32.const 67
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 76
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 7
  call $~lib/dataview/DataView#getUint8
  i32.const 95
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 77
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 57590
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 79
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 22752
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 80
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 40792
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 81
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 33439
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 82
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 25986
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 83
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 17253
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 84
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 6
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 24387
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 85
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 63200
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 87
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 57432
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 88
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 22687
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 89
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 40834
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 90
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 33381
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 91
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 25923
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 92
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 6
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 17247
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 93
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const -1621565194
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 95
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const -2103486240
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 96
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const 1703059288
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 97
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const 1130726047
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 98
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const 1598252418
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 99
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -153069409
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 101
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -531062910
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 102
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const 1486848613
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 103
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -1618844349
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 104
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -2107292833
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 105
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint64
  i64.const 6864441868736323830
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 107
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint64
  i64.const -657428103485373601
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 108
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  f32.const 1.5976661625240943e-18
  i32.const 1
  call $~lib/dataview/DataView#setFloat32
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const 1.5976661625240943e-18
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 111
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  f32.const 1976281973381696323584
  i32.const 0
  call $~lib/dataview/DataView#setFloat32
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const 1976281973381696323584
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 114
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  f64.const -1094252199637739024055454e124
  i32.const 1
  call $~lib/dataview/DataView#setFloat64
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getFloat64
  f64.const -1094252199637739024055454e124
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 117
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  f64.const 6.022586634778589e-103
  i32.const 0
  call $~lib/dataview/DataView#setFloat64
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getFloat64
  f64.const 6.022586634778589e-103
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 120
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 108
  call $~lib/dataview/DataView#setInt8
  local.get $1
  i32.const 0
  call $~lib/dataview/DataView#getInt8
  i32.const 108
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 123
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const -13360
  i32.const 1
  call $~lib/dataview/DataView#setInt16
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.extend16_s
  i32.const -13360
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 126
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 14689
  i32.const 0
  call $~lib/dataview/DataView#setInt16
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.extend16_s
  i32.const 14689
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 129
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 1204680201
  i32.const 1
  call $~lib/dataview/DataView#setInt32
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const 1204680201
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 132
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 660673230
  i32.const 0
  call $~lib/dataview/DataView#setInt32
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const 660673230
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 135
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i64.const -3290739641816099749
  i32.const 1
  call $~lib/dataview/DataView#setInt64
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt64
  i64.const -3290739641816099749
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 138
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i64.const 8178932412950708047
  i32.const 0
  call $~lib/dataview/DataView#setInt64
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt64
  i64.const 8178932412950708047
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 141
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 238
  call $~lib/dataview/DataView#setUint8
  local.get $1
  i32.const 0
  call $~lib/dataview/DataView#getUint8
  i32.const 238
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 144
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 58856
  i32.const 1
  call $~lib/dataview/DataView#setUint16
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 58856
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 147
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const 60400
  i32.const 0
  call $~lib/dataview/DataView#setUint16
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 60400
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 150
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const -846805744
  i32.const 1
  call $~lib/dataview/DataView#setUint32
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const -846805744
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 153
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.const -1510791631
  i32.const 0
  call $~lib/dataview/DataView#setUint32
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -1510791631
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 156
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i64.const 2334704782995986958
  i32.const 1
  call $~lib/dataview/DataView#setUint64
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint64
  i64.const 2334704782995986958
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 159
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i64.const -7123186897289856329
  i32.const 0
  call $~lib/dataview/DataView#setUint64
  local.get $1
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint64
  i64.const -7123186897289856329
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 162
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $0
  i32.load $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/dataview/DataView#constructor@varargs
  local.tee $1
  i32.store $0 offset=8
  local.get $1
  call $~lib/dataview/DataView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 165
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load $0 offset=8
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 166
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__heap_base
  global.set $~lib/memory/__stack_pointer
  call $~lib/rt/itcms/__collect
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (type $i32_i32_i32_=>_i32) (param $this i32) (param $length i32) (param $alignLog2 i32) (result i32)
  (local $buffer i32)
  (local $4 i32)
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
   i32.const 12
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:buffer
  local.get $this
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:dataStart
  local.get $this
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:byteLength
  local.get $length
  i32.const 1073741820
  local.get $alignLog2
  i32.shr_u
  i32.gt_u
  if
   i32.const 32
   i32.const 80
   i32.const 19
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $length
  local.get $alignLog2
  i32.shl
  local.tee $length
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store $0 offset=4
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.get $buffer
  call $~lib/arraybuffer/ArrayBufferView#set:buffer
  local.get $this
  local.get $buffer
  call $~lib/arraybuffer/ArrayBufferView#set:dataStart
  local.get $this
  local.get $length
  call $~lib/arraybuffer/ArrayBufferView#set:byteLength
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/typedarray/Uint8Array#constructor (type $i32_i32_=>_i32) (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
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
   i32.const 12
   i32.const 3
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.get $length
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/dataview/DataView#constructor (type $i32_i32_i32_i32_=>_i32) (param $this i32) (param $buffer i32) (param $byteOffset i32) (param $byteLength i32) (result i32)
  (local $dataStart i32)
  (local $5 i32)
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
   i32.const 12
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  call $~lib/dataview/DataView#set:buffer
  local.get $this
  i32.const 0
  call $~lib/dataview/DataView#set:dataStart
  local.get $this
  i32.const 0
  call $~lib/dataview/DataView#set:byteLength
  local.get $byteLength
  i32.const 1073741820
  i32.gt_u
  local.get $byteOffset
  local.get $byteLength
  i32.add
  local.get $buffer
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_u
  i32.or
  if
   i32.const 32
   i32.const 608
   i32.const 25
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.get $buffer
  call $~lib/dataview/DataView#set:buffer
  local.get $buffer
  local.get $byteOffset
  i32.add
  local.set $dataStart
  local.get $this
  local.get $dataStart
  call $~lib/dataview/DataView#set:dataStart
  local.get $this
  local.get $byteLength
  call $~lib/dataview/DataView#set:byteLength
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
)
