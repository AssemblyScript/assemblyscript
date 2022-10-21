(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_f32_i32_=>_i32 (func (param i32 f32 i32) (result i32)))
 (type $i32_f32_=>_i32 (func (param i32 f32) (result i32)))
 (type $i32_f32_=>_none (func (param i32 f32)))
 (type $i32_f64_i32_=>_i32 (func (param i32 f64 i32) (result i32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i32_f64_=>_none (func (param i32 f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $i32_i64_i64_=>_i32 (func (param i32 i64 i64) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $f32_=>_i32 (func (param f32) (result i32)))
 (type $i32_i32_f32_=>_none (func (param i32 i32 f32)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $f64_=>_i32 (func (param f64) (result i32)))
 (type $i32_i32_f64_=>_none (func (param i32 i32 f64)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $i32_f32_f32_=>_i32 (func (param i32 f32 f32) (result i32)))
 (type $i32_f64_f64_=>_i32 (func (param i32 f64 f64) (result i32)))
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
 (global $~lib/native/ASC_RUNTIME i32 (i32.const 2))
 (global $~lib/rt/__rtti_base i32 (i32.const 736))
 (global $~lib/memory/__data_end i32 (i32.const 996))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 17380))
 (global $~lib/memory/__heap_base i32 (i32.const 17380))
 (memory $0 1)
 (data (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 76) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 144) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 176) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 204) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 268) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 320) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 348) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 412) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 460) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 524) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00s\00t\00d\00/\00m\00a\00p\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 572) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00\00\00\00\00\00\00\00\00")
 (data (i32.const 636) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 684) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data (i32.const 736) " \00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\89\10\00\00\00\00\00B\08\00\00\00\00\00\00\02\t\00\00\00\00\00\00P\88\10\00\00\00\00\00\10\t\12\00\00\00\00\00\10\89\00\00\00\00\00\00B\00\00\00\00\00\00\00P\80\00\00\00\00\00\00\10\t\11\00\00\00\00\00\82\08\00\00\00\00\00\00\90\08\11\00\00\00\00\00\10\t\01\00\00\00\00\00\82\00\00\00\00\00\00\00\90\00\01\00\00\00\00\00\10\t\02\00\00\00\00\00\02\01\00\00\00\00\00\00\10\01\02\00\00\00\00\00\10\t\14\00\00\00\00\00\02\n\00\00\00\00\00\00\10\n\14\00\00\00\00\00\10\t\04\00\00\00\00\00\02\02\00\00\00\00\00\00\10\02\04\00\00\00\00\00\10\t2\00\00\00\00\00\02\19\00\00\00\00\00\00\10\192\00\00\00\00\00\10\t4\00\00\00\00\00\02\1a\00\00\00\00\00\00\10\1a4\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
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
 )
 (func $~lib/rt/itcms/Object#get:next (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/rt/itcms/Object#get:color (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
  i32.const 3
  i32.and
 )
 (func $~lib/rt/itcms/visitRoots (param $cookie i32)
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
     i32.const 96
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
 (func $~lib/rt/itcms/Object#set:color (param $this i32) (param $color i32)
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
 (func $~lib/rt/itcms/Object#set:next (param $this i32) (param $obj i32)
  local.get $this
  local.get $obj
  local.get $this
  i32.load $0 offset=4
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
    i32.const 96
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
   i32.const 96
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
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $this i32) (result i32)
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
 (func $~lib/rt/itcms/Object#linkTo (param $this i32) (param $list i32) (param $withColor i32)
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
 (func $~lib/rt/itcms/Object#makeGray (param $this i32)
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
    i32.const 96
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
 (func $~lib/rt/itcms/Object#get:size (param $this i32) (result i32)
  i32.const 4
  local.get $this
  i32.load $0
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (param $root i32) (param $block i32)
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
   i32.const 368
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
 (func $~lib/rt/tlsf/insertBlock (param $root i32) (param $block i32)
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
   i32.const 368
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
   i32.const 368
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
   i32.const 368
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
 (func $~lib/rt/tlsf/addMemory (param $root i32) (param $start i32) (param $end i32) (result i32)
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
 (func $~lib/rt/tlsf/initialize
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
   i32.const 368
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
 )
 (func $~lib/rt/tlsf/freeBlock (param $root i32) (param $block i32)
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
     i32.const 96
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
 )
 (func $~lib/rt/tlsf/searchBlock (param $root i32) (param $size i32) (result i32)
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
   i32.const 368
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
     i32.const 368
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
 (func $~lib/rt/tlsf/growMemory (param $root i32) (param $size i32)
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
 (func $~lib/rt/tlsf/prepareBlock (param $root i32) (param $block i32) (param $size i32)
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
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
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
 (func $~lib/map/Map<i8,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<i8,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<i8,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<i8,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<i8,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<i8,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=20
 )
 (func $~lib/util/hash/HASH<i8> (param $key i32) (result i32)
  (local $len i32)
  (local $key_0 i32)
  (local $h i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1
  i32.const 4
  i32.le_u
  drop
  local.get $key
  i32.extend8_s
  local.set $key_0
  i32.const 1
  local.set $len
  i32.const 0
  i32.const 374761393
  i32.add
  local.get $len
  i32.add
  local.set $h
  local.get $h
  local.get $key_0
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
  return
 )
 (func $~lib/map/Map<i8,i32>#find (param $this i32) (param $key i32) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $var$4 i32)
  (local $taggedNext i32)
  local.get $this
  i32.load $0
  local.get $hashCode
  local.get $this
  i32.load $0 offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load $0
  local.set $entry
  loop $while-continue|0
   local.get $entry
   local.set $var$4
   local.get $var$4
   if
    local.get $entry
    i32.load $0 offset=8
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     i32.load8_s $0
     local.get $key
     i32.extend8_s
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i8,i32>#has (param $this i32) (param $key i32) (result i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<i8>
  call $~lib/map/Map<i8,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/MapEntry<i8,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/MapEntry<i8,i32>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 $0
 )
 (func $~lib/map/MapEntry<i8,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/map/Map<i8,i32>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $var$9 i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey i32)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store $0
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store $0 offset=4
  local.get $this
  i32.load $0 offset=8
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  i32.load $0 offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   local.set $var$9
   local.get $var$9
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     i32.load8_s $0
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/map/MapEntry<i8,i32>#set:key
     local.get $newEntry
     local.get $oldEntry
     i32.load $0 offset=4
     call $~lib/map/MapEntry<i8,i32>#set:value
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<i8>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load $0
     call $~lib/map/MapEntry<i8,i32>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store $0
     local.get $newPtr
     i32.const 12
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    i32.const 12
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.get $newBuckets
  call $~lib/map/Map<i8,i32>#set:buckets
  local.get $this
  local.get $newBucketsMask
  call $~lib/map/Map<i8,i32>#set:bucketsMask
  local.get $this
  local.get $newEntries
  call $~lib/map/Map<i8,i32>#set:entries
  local.get $this
  local.get $newEntriesCapacity
  call $~lib/map/Map<i8,i32>#set:entriesCapacity
  local.get $this
  local.get $this
  i32.load $0 offset=20
  call $~lib/map/Map<i8,i32>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<i8,i32>#get (param $this i32) (param $key i32) (result i32)
  (local $entry i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<i8>
  call $~lib/map/Map<i8,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 592
   i32.const 656
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $entry
  i32.load $0 offset=4
 )
 (func $~lib/map/Map<i8,i32>#get:size (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $~lib/array/Array<i8>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<i8>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/array/Array<i8>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/array/Array<i8>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/array/Array<i8>#__uset (param $this i32) (param $index i32) (param $value i32)
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 0
  i32.shl
  i32.add
  local.get $value
  i32.store8 $0
  i32.const 0
  drop
 )
 (func $~lib/rt/itcms/__renew (param $oldPtr i32) (param $size i32) (result i32)
  (local $oldObj i32)
  (local $newPtr i32)
  (local $var$4 i32)
  (local $var$5 i32)
  local.get $oldPtr
  i32.const 20
  i32.sub
  local.set $oldObj
  local.get $size
  local.get $oldObj
  i32.load $0
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
  i32.load $0 offset=12
  call $~lib/rt/itcms/__new
  local.set $newPtr
  local.get $newPtr
  local.get $oldPtr
  local.get $size
  local.tee $var$4
  local.get $oldObj
  i32.load $0 offset=16
  local.tee $var$5
  local.get $var$4
  local.get $var$5
  i32.lt_u
  select
  memory.copy $0 $0
  local.get $newPtr
 )
 (func $~lib/array/ensureCapacity (param $array i32) (param $newSize i32) (param $alignLog2 i32) (param $canGrow i32)
  (local $oldCapacity i32)
  (local $oldData i32)
  (local $var$6 i32)
  (local $var$7 i32)
  (local $newCapacity i32)
  (local $var$9 i32)
  (local $var$10 i32)
  (local $var$11 i32)
  (local $var$12 i32)
  (local $newData i32)
  local.get $array
  i32.load $0 offset=8
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
    i32.const 432
    i32.const 704
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $array
   i32.load $0
   local.set $oldData
   local.get $newSize
   local.tee $var$6
   i32.const 8
   local.tee $var$7
   local.get $var$6
   local.get $var$7
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
    local.tee $var$9
    i32.const 1073741820
    local.tee $var$10
    local.get $var$9
    local.get $var$10
    i32.lt_u
    select
    local.tee $var$11
    local.get $newCapacity
    local.tee $var$12
    local.get $var$11
    local.get $var$12
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
    i32.store $0
    local.get $array
    local.get $newData
    i32.store $0 offset=4
    local.get $array
    local.get $newData
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $array
   local.get $newCapacity
   i32.store $0 offset=8
  end
 )
 (func $~lib/array/Array<i8>#set:length (param $this i32) (param $newLength i32)
  local.get $this
  local.get $newLength
  i32.const 0
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.get $newLength
  call $~lib/array/Array<i8>#set:length_
 )
 (func $~lib/array/Array<i32>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<i32>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/array/Array<i32>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/array/Array<i32>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/array/Array<i32>#__uset (param $this i32) (param $index i32) (param $value i32)
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store $0
  i32.const 0
  drop
 )
 (func $~lib/array/Array<i32>#set:length (param $this i32) (param $newLength i32)
  local.get $this
  local.get $newLength
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.get $newLength
  call $~lib/array/Array<i32>#set:length_
 )
 (func $~lib/map/Map<i8,i8>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<i8,i8>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<i8,i8>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<i8,i8>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<i8,i8>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<i8,i8>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=20
 )
 (func $~lib/map/Map<i32,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<i32,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<i32,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<i32,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<i32,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<i32,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=20
 )
 (func $~lib/array/Array<i8>#get:length (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/array/Array<i8>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  local.get $index
  local.get $this
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 224
   i32.const 704
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 0
  i32.shl
  i32.add
  i32.load8_s $0
  local.set $value
  i32.const 0
  drop
  local.get $value
 )
 (func $~lib/array/Array<i32>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  local.get $index
  local.get $this
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 224
   i32.const 704
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.set $value
  i32.const 0
  drop
  local.get $value
 )
 (func $~lib/map/Map<i8,i8>#find (param $this i32) (param $key i32) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $var$4 i32)
  (local $taggedNext i32)
  local.get $this
  i32.load $0
  local.get $hashCode
  local.get $this
  i32.load $0 offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load $0
  local.set $entry
  loop $while-continue|0
   local.get $entry
   local.set $var$4
   local.get $var$4
   if
    local.get $entry
    i32.load $0 offset=4
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     i32.load8_s $0
     local.get $key
     i32.extend8_s
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<i8,i8>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 $0 offset=1
 )
 (func $~lib/map/MapEntry<i8,i8>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 $0
 )
 (func $~lib/map/MapEntry<i8,i8>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<i8,i8>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $var$9 i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey i32)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store $0
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store $0 offset=4
  local.get $this
  i32.load $0 offset=8
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  i32.load $0 offset=16
  i32.const 8
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   local.set $var$9
   local.get $var$9
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    i32.load $0 offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     i32.load8_s $0
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/map/MapEntry<i8,i8>#set:key
     local.get $newEntry
     local.get $oldEntry
     i32.load8_s $0 offset=1
     call $~lib/map/MapEntry<i8,i8>#set:value
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<i8>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load $0
     call $~lib/map/MapEntry<i8,i8>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store $0
     local.get $newPtr
     i32.const 8
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    i32.const 8
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.get $newBuckets
  call $~lib/map/Map<i8,i8>#set:buckets
  local.get $this
  local.get $newBucketsMask
  call $~lib/map/Map<i8,i8>#set:bucketsMask
  local.get $this
  local.get $newEntries
  call $~lib/map/Map<i8,i8>#set:entries
  local.get $this
  local.get $newEntriesCapacity
  call $~lib/map/Map<i8,i8>#set:entriesCapacity
  local.get $this
  local.get $this
  i32.load $0 offset=20
  call $~lib/map/Map<i8,i8>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/hash/HASH<i32> (param $key i32) (result i32)
  (local $len i32)
  (local $key_0 i32)
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
  local.get $key
  local.set $key_0
  i32.const 4
  local.set $len
  i32.const 0
  i32.const 374761393
  i32.add
  local.get $len
  i32.add
  local.set $h
  local.get $h
  local.get $key_0
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
  return
 )
 (func $~lib/map/Map<i32,i32>#find (param $this i32) (param $key i32) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $var$4 i32)
  (local $taggedNext i32)
  local.get $this
  i32.load $0
  local.get $hashCode
  local.get $this
  i32.load $0 offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load $0
  local.set $entry
  loop $while-continue|0
   local.get $entry
   local.set $var$4
   local.get $var$4
   if
    local.get $entry
    i32.load $0 offset=8
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     i32.load $0
     local.get $key
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<i32,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/MapEntry<i32,i32>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
 )
 (func $~lib/map/MapEntry<i32,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/map/Map<i32,i32>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $var$9 i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey i32)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store $0
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store $0 offset=4
  local.get $this
  i32.load $0 offset=8
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  i32.load $0 offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   local.set $var$9
   local.get $var$9
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     i32.load $0
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/map/MapEntry<i32,i32>#set:key
     local.get $newEntry
     local.get $oldEntry
     i32.load $0 offset=4
     call $~lib/map/MapEntry<i32,i32>#set:value
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<i32>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load $0
     call $~lib/map/MapEntry<i32,i32>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store $0
     local.get $newPtr
     i32.const 12
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    i32.const 12
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.get $newBuckets
  call $~lib/map/Map<i32,i32>#set:buckets
  local.get $this
  local.get $newBucketsMask
  call $~lib/map/Map<i32,i32>#set:bucketsMask
  local.get $this
  local.get $newEntries
  call $~lib/map/Map<i32,i32>#set:entries
  local.get $this
  local.get $newEntriesCapacity
  call $~lib/map/Map<i32,i32>#set:entriesCapacity
  local.get $this
  local.get $this
  i32.load $0 offset=20
  call $~lib/map/Map<i32,i32>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<i8,i8>#get:size (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $~lib/map/Map<i32,i32>#get:size (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $~lib/map/Map<i8,i32>#delete (param $this i32) (param $key i32) (result i32)
  (local $entry i32)
  (local $halfBucketsMask i32)
  (local $var$4 i32)
  (local $var$5 i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<i8>
  call $~lib/map/Map<i8,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $entry
  local.get $entry
  i32.load $0 offset=8
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<i8,i32>#set:taggedNext
  local.get $this
  local.get $this
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<i8,i32>#set:entriesCount
  local.get $this
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $halfBucketsMask
  local.get $halfBucketsMask
  i32.const 1
  i32.add
  i32.const 4
  local.tee $var$4
  local.get $this
  i32.load $0 offset=20
  local.tee $var$5
  local.get $var$4
  local.get $var$5
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $this
   i32.load $0 offset=20
   local.get $this
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $this
   local.get $halfBucketsMask
   call $~lib/map/Map<i8,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<i8,i32>#clear (param $this i32)
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i8,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i8,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i8,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<i8,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<i8,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<i8,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<i8,i32>
  (local $map i32)
  (local $k i32)
  (local $var$2 i32)
  (local $k_0 i32)
  (local $var$4 i32)
  (local $keys i32)
  (local $vals i32)
  (local $keyMap i32)
  (local $valMap i32)
  (local $index i32)
  (local $var$10 i32)
  (local $key i32)
  (local $value i32)
  (local $k_1 i32)
  (local $var$14 i32)
  (local $k_2 i32)
  (local $var$16 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i8,i32>#constructor
  local.tee $map
  i32.store $0
  i32.const 0
  local.set $k
  loop $for-loop|0
   local.get $k
   i32.const 100
   i32.lt_s
   local.set $var$2
   local.get $var$2
   if
    local.get $map
    local.get $k
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    i32.const 10
    local.get $k
    i32.add
    call $~lib/map/Map<i8,i32>#set
    drop
    local.get $map
    local.get $k
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    call $~lib/map/Map<i8,i32>#get
    i32.const 10
    local.get $k
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 9
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
  local.get $map
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k_0
  loop $for-loop|1
   local.get $k_0
   i32.const 100
   i32.lt_s
   local.set $var$4
   local.get $var$4
   if
    local.get $map
    local.get $k_0
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<i8,i32>#get
    i32.const 10
    local.get $k_0
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    i32.const 20
    local.get $k_0
    i32.add
    call $~lib/map/Map<i8,i32>#set
    drop
    local.get $map
    local.get $k_0
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<i8,i32>#get
    i32.const 20
    local.get $k_0
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 19
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_0
    i32.const 1
    i32.add
    local.set $k_0
    br $for-loop|1
   end
  end
  local.get $map
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<i8,i32>#keys
  local.tee $keys
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<i8,i32>#values
  local.tee $vals
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i8,i8>#constructor
  local.tee $keyMap
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.tee $valMap
  i32.store $0 offset=16
  i32.const 0
  local.set $index
  loop $for-loop|2
   local.get $index
   local.get $keys
   call $~lib/array/Array<i8>#get:length
   i32.lt_s
   local.set $var$10
   local.get $var$10
   if
    local.get $keys
    local.get $index
    call $~lib/array/Array<i8>#__get
    local.set $key
    local.get $vals
    local.get $index
    call $~lib/array/Array<i32>#__get
    local.set $value
    local.get $map
    local.get $key
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $value
    i32.const 20
    i32.sub
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $keyMap
    local.get $key
    local.get $key
    call $~lib/map/Map<i8,i8>#set
    drop
    local.get $valMap
    local.get $value
    i32.const 20
    i32.sub
    local.get $value
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $index
    i32.const 1
    i32.add
    local.set $index
    br $for-loop|2
   end
  end
  local.get $keyMap
  call $~lib/map/Map<i8,i8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $valMap
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k_1
  loop $for-loop|3
   local.get $k_1
   i32.const 50
   i32.lt_s
   local.set $var$14
   local.get $var$14
   if
    local.get $map
    local.get $k_1
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<i8,i32>#get
    i32.const 20
    local.get $k_1
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<i8,i32>#delete
    drop
    local.get $map
    local.get $k_1
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_1
    i32.const 1
    i32.add
    local.set $k_1
    br $for-loop|3
   end
  end
  local.get $map
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k_2
  loop $for-loop|4
   local.get $k_2
   i32.const 50
   i32.lt_s
   local.set $var$16
   local.get $var$16
   if
    local.get $map
    local.get $k_2
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    i32.const 10
    local.get $k_2
    i32.add
    call $~lib/map/Map<i8,i32>#set
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    call $~lib/map/Map<i8,i32>#delete
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<i8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 54
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_2
    i32.const 1
    i32.add
    local.set $k_2
    br $for-loop|4
   end
  end
  local.get $map
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $map
  call $~lib/map/Map<i8,i32>#clear
  local.get $map
  call $~lib/map/Map<i8,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<u8,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<u8,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<u8,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<u8,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<u8,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<u8,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=20
 )
 (func $~lib/util/hash/HASH<u8> (param $key i32) (result i32)
  (local $len i32)
  (local $key_0 i32)
  (local $h i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1
  i32.const 4
  i32.le_u
  drop
  local.get $key
  i32.const 255
  i32.and
  local.set $key_0
  i32.const 1
  local.set $len
  i32.const 0
  i32.const 374761393
  i32.add
  local.get $len
  i32.add
  local.set $h
  local.get $h
  local.get $key_0
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
  return
 )
 (func $~lib/map/Map<u8,i32>#find (param $this i32) (param $key i32) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $var$4 i32)
  (local $taggedNext i32)
  local.get $this
  i32.load $0
  local.get $hashCode
  local.get $this
  i32.load $0 offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load $0
  local.set $entry
  loop $while-continue|0
   local.get $entry
   local.set $var$4
   local.get $var$4
   if
    local.get $entry
    i32.load $0 offset=8
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     i32.load8_u $0
     local.get $key
     i32.const 255
     i32.and
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<u8,i32>#has (param $this i32) (param $key i32) (result i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<u8>
  call $~lib/map/Map<u8,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/MapEntry<u8,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/MapEntry<u8,i32>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 $0
 )
 (func $~lib/map/MapEntry<u8,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/map/Map<u8,i32>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $var$9 i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey i32)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store $0
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store $0 offset=4
  local.get $this
  i32.load $0 offset=8
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  i32.load $0 offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   local.set $var$9
   local.get $var$9
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     i32.load8_u $0
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/map/MapEntry<u8,i32>#set:key
     local.get $newEntry
     local.get $oldEntry
     i32.load $0 offset=4
     call $~lib/map/MapEntry<u8,i32>#set:value
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<u8>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load $0
     call $~lib/map/MapEntry<u8,i32>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store $0
     local.get $newPtr
     i32.const 12
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    i32.const 12
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.get $newBuckets
  call $~lib/map/Map<u8,i32>#set:buckets
  local.get $this
  local.get $newBucketsMask
  call $~lib/map/Map<u8,i32>#set:bucketsMask
  local.get $this
  local.get $newEntries
  call $~lib/map/Map<u8,i32>#set:entries
  local.get $this
  local.get $newEntriesCapacity
  call $~lib/map/Map<u8,i32>#set:entriesCapacity
  local.get $this
  local.get $this
  i32.load $0 offset=20
  call $~lib/map/Map<u8,i32>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<u8,i32>#get (param $this i32) (param $key i32) (result i32)
  (local $entry i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<u8>
  call $~lib/map/Map<u8,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 592
   i32.const 656
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $entry
  i32.load $0 offset=4
 )
 (func $~lib/map/Map<u8,i32>#get:size (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $~lib/array/Array<u8>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<u8>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/array/Array<u8>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/array/Array<u8>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/array/Array<u8>#__uset (param $this i32) (param $index i32) (param $value i32)
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 0
  i32.shl
  i32.add
  local.get $value
  i32.store8 $0
  i32.const 0
  drop
 )
 (func $~lib/array/Array<u8>#set:length (param $this i32) (param $newLength i32)
  local.get $this
  local.get $newLength
  i32.const 0
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.get $newLength
  call $~lib/array/Array<u8>#set:length_
 )
 (func $~lib/map/Map<u8,u8>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<u8,u8>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<u8,u8>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<u8,u8>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<u8,u8>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<u8,u8>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=20
 )
 (func $~lib/array/Array<u8>#get:length (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/array/Array<u8>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  local.get $index
  local.get $this
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 224
   i32.const 704
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 0
  i32.shl
  i32.add
  i32.load8_u $0
  local.set $value
  i32.const 0
  drop
  local.get $value
 )
 (func $~lib/map/Map<u8,u8>#find (param $this i32) (param $key i32) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $var$4 i32)
  (local $taggedNext i32)
  local.get $this
  i32.load $0
  local.get $hashCode
  local.get $this
  i32.load $0 offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load $0
  local.set $entry
  loop $while-continue|0
   local.get $entry
   local.set $var$4
   local.get $var$4
   if
    local.get $entry
    i32.load $0 offset=4
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     i32.load8_u $0
     local.get $key
     i32.const 255
     i32.and
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<u8,u8>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 $0 offset=1
 )
 (func $~lib/map/MapEntry<u8,u8>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 $0
 )
 (func $~lib/map/MapEntry<u8,u8>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<u8,u8>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $var$9 i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey i32)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store $0
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store $0 offset=4
  local.get $this
  i32.load $0 offset=8
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  i32.load $0 offset=16
  i32.const 8
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   local.set $var$9
   local.get $var$9
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    i32.load $0 offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     i32.load8_u $0
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/map/MapEntry<u8,u8>#set:key
     local.get $newEntry
     local.get $oldEntry
     i32.load8_u $0 offset=1
     call $~lib/map/MapEntry<u8,u8>#set:value
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<u8>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load $0
     call $~lib/map/MapEntry<u8,u8>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store $0
     local.get $newPtr
     i32.const 8
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    i32.const 8
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.get $newBuckets
  call $~lib/map/Map<u8,u8>#set:buckets
  local.get $this
  local.get $newBucketsMask
  call $~lib/map/Map<u8,u8>#set:bucketsMask
  local.get $this
  local.get $newEntries
  call $~lib/map/Map<u8,u8>#set:entries
  local.get $this
  local.get $newEntriesCapacity
  call $~lib/map/Map<u8,u8>#set:entriesCapacity
  local.get $this
  local.get $this
  i32.load $0 offset=20
  call $~lib/map/Map<u8,u8>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<u8,u8>#get:size (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $~lib/map/Map<u8,i32>#delete (param $this i32) (param $key i32) (result i32)
  (local $entry i32)
  (local $halfBucketsMask i32)
  (local $var$4 i32)
  (local $var$5 i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<u8>
  call $~lib/map/Map<u8,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $entry
  local.get $entry
  i32.load $0 offset=8
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<u8,i32>#set:taggedNext
  local.get $this
  local.get $this
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<u8,i32>#set:entriesCount
  local.get $this
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $halfBucketsMask
  local.get $halfBucketsMask
  i32.const 1
  i32.add
  i32.const 4
  local.tee $var$4
  local.get $this
  i32.load $0 offset=20
  local.tee $var$5
  local.get $var$4
  local.get $var$5
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $this
   i32.load $0 offset=20
   local.get $this
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $this
   local.get $halfBucketsMask
   call $~lib/map/Map<u8,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<u8,i32>#clear (param $this i32)
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u8,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u8,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u8,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<u8,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<u8,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<u8,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<u8,i32>
  (local $map i32)
  (local $k i32)
  (local $var$2 i32)
  (local $k_0 i32)
  (local $var$4 i32)
  (local $keys i32)
  (local $vals i32)
  (local $keyMap i32)
  (local $valMap i32)
  (local $index i32)
  (local $var$10 i32)
  (local $key i32)
  (local $value i32)
  (local $k_1 i32)
  (local $var$14 i32)
  (local $k_2 i32)
  (local $var$16 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<u8,i32>#constructor
  local.tee $map
  i32.store $0
  i32.const 0
  local.set $k
  loop $for-loop|0
   local.get $k
   i32.const 100
   i32.lt_u
   local.set $var$2
   local.get $var$2
   if
    local.get $map
    local.get $k
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    i32.const 10
    local.get $k
    i32.add
    call $~lib/map/Map<u8,i32>#set
    drop
    local.get $map
    local.get $k
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    call $~lib/map/Map<u8,i32>#get
    i32.const 10
    local.get $k
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 9
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
  local.get $map
  call $~lib/map/Map<u8,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k_0
  loop $for-loop|1
   local.get $k_0
   i32.const 100
   i32.lt_u
   local.set $var$4
   local.get $var$4
   if
    local.get $map
    local.get $k_0
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<u8,i32>#get
    i32.const 10
    local.get $k_0
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    i32.const 20
    local.get $k_0
    i32.add
    call $~lib/map/Map<u8,i32>#set
    drop
    local.get $map
    local.get $k_0
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<u8,i32>#get
    i32.const 20
    local.get $k_0
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 19
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_0
    i32.const 1
    i32.add
    local.set $k_0
    br $for-loop|1
   end
  end
  local.get $map
  call $~lib/map/Map<u8,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<u8,i32>#keys
  local.tee $keys
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<u8,i32>#values
  local.tee $vals
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<u8,u8>#constructor
  local.tee $keyMap
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.tee $valMap
  i32.store $0 offset=16
  i32.const 0
  local.set $index
  loop $for-loop|2
   local.get $index
   local.get $keys
   call $~lib/array/Array<u8>#get:length
   i32.lt_s
   local.set $var$10
   local.get $var$10
   if
    local.get $keys
    local.get $index
    call $~lib/array/Array<u8>#__get
    local.set $key
    local.get $vals
    local.get $index
    call $~lib/array/Array<i32>#__get
    local.set $value
    local.get $map
    local.get $key
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $value
    i32.const 20
    i32.sub
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $keyMap
    local.get $key
    local.get $key
    call $~lib/map/Map<u8,u8>#set
    drop
    local.get $valMap
    local.get $value
    i32.const 20
    i32.sub
    local.get $value
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $index
    i32.const 1
    i32.add
    local.set $index
    br $for-loop|2
   end
  end
  local.get $keyMap
  call $~lib/map/Map<u8,u8>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $valMap
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k_1
  loop $for-loop|3
   local.get $k_1
   i32.const 50
   i32.lt_u
   local.set $var$14
   local.get $var$14
   if
    local.get $map
    local.get $k_1
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<u8,i32>#get
    i32.const 20
    local.get $k_1
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<u8,i32>#delete
    drop
    local.get $map
    local.get $k_1
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_1
    i32.const 1
    i32.add
    local.set $k_1
    br $for-loop|3
   end
  end
  local.get $map
  call $~lib/map/Map<u8,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k_2
  loop $for-loop|4
   local.get $k_2
   i32.const 50
   i32.lt_u
   local.set $var$16
   local.get $var$16
   if
    local.get $map
    local.get $k_2
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    i32.const 10
    local.get $k_2
    i32.add
    call $~lib/map/Map<u8,i32>#set
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    call $~lib/map/Map<u8,i32>#delete
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<u8,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 54
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_2
    i32.const 1
    i32.add
    local.set $k_2
    br $for-loop|4
   end
  end
  local.get $map
  call $~lib/map/Map<u8,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $map
  call $~lib/map/Map<u8,i32>#clear
  local.get $map
  call $~lib/map/Map<u8,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<i16,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<i16,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<i16,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<i16,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<i16,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<i16,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=20
 )
 (func $~lib/util/hash/HASH<i16> (param $key i32) (result i32)
  (local $len i32)
  (local $key_0 i32)
  (local $h i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 2
  i32.const 4
  i32.le_u
  drop
  local.get $key
  i32.extend16_s
  local.set $key_0
  i32.const 2
  local.set $len
  i32.const 0
  i32.const 374761393
  i32.add
  local.get $len
  i32.add
  local.set $h
  local.get $h
  local.get $key_0
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
  return
 )
 (func $~lib/map/Map<i16,i32>#find (param $this i32) (param $key i32) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $var$4 i32)
  (local $taggedNext i32)
  local.get $this
  i32.load $0
  local.get $hashCode
  local.get $this
  i32.load $0 offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load $0
  local.set $entry
  loop $while-continue|0
   local.get $entry
   local.set $var$4
   local.get $var$4
   if
    local.get $entry
    i32.load $0 offset=8
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     i32.load16_s $0
     local.get $key
     i32.extend16_s
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i16,i32>#has (param $this i32) (param $key i32) (result i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<i16>
  call $~lib/map/Map<i16,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/MapEntry<i16,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/MapEntry<i16,i32>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 $0
 )
 (func $~lib/map/MapEntry<i16,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/map/Map<i16,i32>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $var$9 i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey i32)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store $0
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store $0 offset=4
  local.get $this
  i32.load $0 offset=8
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  i32.load $0 offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   local.set $var$9
   local.get $var$9
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     i32.load16_s $0
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/map/MapEntry<i16,i32>#set:key
     local.get $newEntry
     local.get $oldEntry
     i32.load $0 offset=4
     call $~lib/map/MapEntry<i16,i32>#set:value
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<i16>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load $0
     call $~lib/map/MapEntry<i16,i32>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store $0
     local.get $newPtr
     i32.const 12
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    i32.const 12
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.get $newBuckets
  call $~lib/map/Map<i16,i32>#set:buckets
  local.get $this
  local.get $newBucketsMask
  call $~lib/map/Map<i16,i32>#set:bucketsMask
  local.get $this
  local.get $newEntries
  call $~lib/map/Map<i16,i32>#set:entries
  local.get $this
  local.get $newEntriesCapacity
  call $~lib/map/Map<i16,i32>#set:entriesCapacity
  local.get $this
  local.get $this
  i32.load $0 offset=20
  call $~lib/map/Map<i16,i32>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<i16,i32>#get (param $this i32) (param $key i32) (result i32)
  (local $entry i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<i16>
  call $~lib/map/Map<i16,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 592
   i32.const 656
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $entry
  i32.load $0 offset=4
 )
 (func $~lib/map/Map<i16,i32>#get:size (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $~lib/array/Array<i16>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<i16>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/array/Array<i16>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/array/Array<i16>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/array/Array<i16>#__uset (param $this i32) (param $index i32) (param $value i32)
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 1
  i32.shl
  i32.add
  local.get $value
  i32.store16 $0
  i32.const 0
  drop
 )
 (func $~lib/array/Array<i16>#set:length (param $this i32) (param $newLength i32)
  local.get $this
  local.get $newLength
  i32.const 1
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.get $newLength
  call $~lib/array/Array<i16>#set:length_
 )
 (func $~lib/map/Map<i16,i16>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<i16,i16>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<i16,i16>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<i16,i16>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<i16,i16>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<i16,i16>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=20
 )
 (func $~lib/array/Array<i16>#get:length (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/array/Array<i16>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  local.get $index
  local.get $this
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 224
   i32.const 704
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s $0
  local.set $value
  i32.const 0
  drop
  local.get $value
 )
 (func $~lib/map/Map<i16,i16>#find (param $this i32) (param $key i32) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $var$4 i32)
  (local $taggedNext i32)
  local.get $this
  i32.load $0
  local.get $hashCode
  local.get $this
  i32.load $0 offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load $0
  local.set $entry
  loop $while-continue|0
   local.get $entry
   local.set $var$4
   local.get $var$4
   if
    local.get $entry
    i32.load $0 offset=4
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     i32.load16_s $0
     local.get $key
     i32.extend16_s
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<i16,i16>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 $0 offset=2
 )
 (func $~lib/map/MapEntry<i16,i16>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 $0
 )
 (func $~lib/map/MapEntry<i16,i16>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<i16,i16>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $var$9 i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey i32)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store $0
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store $0 offset=4
  local.get $this
  i32.load $0 offset=8
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  i32.load $0 offset=16
  i32.const 8
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   local.set $var$9
   local.get $var$9
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    i32.load $0 offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     i32.load16_s $0
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/map/MapEntry<i16,i16>#set:key
     local.get $newEntry
     local.get $oldEntry
     i32.load16_s $0 offset=2
     call $~lib/map/MapEntry<i16,i16>#set:value
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<i16>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load $0
     call $~lib/map/MapEntry<i16,i16>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store $0
     local.get $newPtr
     i32.const 8
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    i32.const 8
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.get $newBuckets
  call $~lib/map/Map<i16,i16>#set:buckets
  local.get $this
  local.get $newBucketsMask
  call $~lib/map/Map<i16,i16>#set:bucketsMask
  local.get $this
  local.get $newEntries
  call $~lib/map/Map<i16,i16>#set:entries
  local.get $this
  local.get $newEntriesCapacity
  call $~lib/map/Map<i16,i16>#set:entriesCapacity
  local.get $this
  local.get $this
  i32.load $0 offset=20
  call $~lib/map/Map<i16,i16>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<i16,i16>#get:size (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $~lib/map/Map<i16,i32>#delete (param $this i32) (param $key i32) (result i32)
  (local $entry i32)
  (local $halfBucketsMask i32)
  (local $var$4 i32)
  (local $var$5 i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<i16>
  call $~lib/map/Map<i16,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $entry
  local.get $entry
  i32.load $0 offset=8
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<i16,i32>#set:taggedNext
  local.get $this
  local.get $this
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<i16,i32>#set:entriesCount
  local.get $this
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $halfBucketsMask
  local.get $halfBucketsMask
  i32.const 1
  i32.add
  i32.const 4
  local.tee $var$4
  local.get $this
  i32.load $0 offset=20
  local.tee $var$5
  local.get $var$4
  local.get $var$5
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $this
   i32.load $0 offset=20
   local.get $this
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $this
   local.get $halfBucketsMask
   call $~lib/map/Map<i16,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<i16,i32>#clear (param $this i32)
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i16,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i16,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i16,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<i16,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<i16,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<i16,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<i16,i32>
  (local $map i32)
  (local $k i32)
  (local $var$2 i32)
  (local $k_0 i32)
  (local $var$4 i32)
  (local $keys i32)
  (local $vals i32)
  (local $keyMap i32)
  (local $valMap i32)
  (local $index i32)
  (local $var$10 i32)
  (local $key i32)
  (local $value i32)
  (local $k_1 i32)
  (local $var$14 i32)
  (local $k_2 i32)
  (local $var$16 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i16,i32>#constructor
  local.tee $map
  i32.store $0
  i32.const 0
  local.set $k
  loop $for-loop|0
   local.get $k
   i32.const 100
   i32.lt_s
   local.set $var$2
   local.get $var$2
   if
    local.get $map
    local.get $k
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    i32.const 10
    local.get $k
    i32.add
    call $~lib/map/Map<i16,i32>#set
    drop
    local.get $map
    local.get $k
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    call $~lib/map/Map<i16,i32>#get
    i32.const 10
    local.get $k
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 9
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
  local.get $map
  call $~lib/map/Map<i16,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k_0
  loop $for-loop|1
   local.get $k_0
   i32.const 100
   i32.lt_s
   local.set $var$4
   local.get $var$4
   if
    local.get $map
    local.get $k_0
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<i16,i32>#get
    i32.const 10
    local.get $k_0
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    i32.const 20
    local.get $k_0
    i32.add
    call $~lib/map/Map<i16,i32>#set
    drop
    local.get $map
    local.get $k_0
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<i16,i32>#get
    i32.const 20
    local.get $k_0
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 19
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_0
    i32.const 1
    i32.add
    local.set $k_0
    br $for-loop|1
   end
  end
  local.get $map
  call $~lib/map/Map<i16,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<i16,i32>#keys
  local.tee $keys
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<i16,i32>#values
  local.tee $vals
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i16,i16>#constructor
  local.tee $keyMap
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.tee $valMap
  i32.store $0 offset=16
  i32.const 0
  local.set $index
  loop $for-loop|2
   local.get $index
   local.get $keys
   call $~lib/array/Array<i16>#get:length
   i32.lt_s
   local.set $var$10
   local.get $var$10
   if
    local.get $keys
    local.get $index
    call $~lib/array/Array<i16>#__get
    local.set $key
    local.get $vals
    local.get $index
    call $~lib/array/Array<i32>#__get
    local.set $value
    local.get $map
    local.get $key
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $value
    i32.const 20
    i32.sub
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $keyMap
    local.get $key
    local.get $key
    call $~lib/map/Map<i16,i16>#set
    drop
    local.get $valMap
    local.get $value
    i32.const 20
    i32.sub
    local.get $value
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $index
    i32.const 1
    i32.add
    local.set $index
    br $for-loop|2
   end
  end
  local.get $keyMap
  call $~lib/map/Map<i16,i16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $valMap
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k_1
  loop $for-loop|3
   local.get $k_1
   i32.const 50
   i32.lt_s
   local.set $var$14
   local.get $var$14
   if
    local.get $map
    local.get $k_1
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<i16,i32>#get
    i32.const 20
    local.get $k_1
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<i16,i32>#delete
    drop
    local.get $map
    local.get $k_1
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_1
    i32.const 1
    i32.add
    local.set $k_1
    br $for-loop|3
   end
  end
  local.get $map
  call $~lib/map/Map<i16,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k_2
  loop $for-loop|4
   local.get $k_2
   i32.const 50
   i32.lt_s
   local.set $var$16
   local.get $var$16
   if
    local.get $map
    local.get $k_2
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    i32.const 10
    local.get $k_2
    i32.add
    call $~lib/map/Map<i16,i32>#set
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    call $~lib/map/Map<i16,i32>#delete
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<i16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 54
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_2
    i32.const 1
    i32.add
    local.set $k_2
    br $for-loop|4
   end
  end
  local.get $map
  call $~lib/map/Map<i16,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $map
  call $~lib/map/Map<i16,i32>#clear
  local.get $map
  call $~lib/map/Map<i16,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<u16,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<u16,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<u16,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<u16,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<u16,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<u16,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=20
 )
 (func $~lib/util/hash/HASH<u16> (param $key i32) (result i32)
  (local $len i32)
  (local $key_0 i32)
  (local $h i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 2
  i32.const 4
  i32.le_u
  drop
  local.get $key
  i32.const 65535
  i32.and
  local.set $key_0
  i32.const 2
  local.set $len
  i32.const 0
  i32.const 374761393
  i32.add
  local.get $len
  i32.add
  local.set $h
  local.get $h
  local.get $key_0
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
  return
 )
 (func $~lib/map/Map<u16,i32>#find (param $this i32) (param $key i32) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $var$4 i32)
  (local $taggedNext i32)
  local.get $this
  i32.load $0
  local.get $hashCode
  local.get $this
  i32.load $0 offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load $0
  local.set $entry
  loop $while-continue|0
   local.get $entry
   local.set $var$4
   local.get $var$4
   if
    local.get $entry
    i32.load $0 offset=8
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     i32.load16_u $0
     local.get $key
     i32.const 65535
     i32.and
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<u16,i32>#has (param $this i32) (param $key i32) (result i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<u16>
  call $~lib/map/Map<u16,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/MapEntry<u16,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/MapEntry<u16,i32>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 $0
 )
 (func $~lib/map/MapEntry<u16,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/map/Map<u16,i32>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $var$9 i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey i32)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store $0
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store $0 offset=4
  local.get $this
  i32.load $0 offset=8
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  i32.load $0 offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   local.set $var$9
   local.get $var$9
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     i32.load16_u $0
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/map/MapEntry<u16,i32>#set:key
     local.get $newEntry
     local.get $oldEntry
     i32.load $0 offset=4
     call $~lib/map/MapEntry<u16,i32>#set:value
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<u16>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load $0
     call $~lib/map/MapEntry<u16,i32>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store $0
     local.get $newPtr
     i32.const 12
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    i32.const 12
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.get $newBuckets
  call $~lib/map/Map<u16,i32>#set:buckets
  local.get $this
  local.get $newBucketsMask
  call $~lib/map/Map<u16,i32>#set:bucketsMask
  local.get $this
  local.get $newEntries
  call $~lib/map/Map<u16,i32>#set:entries
  local.get $this
  local.get $newEntriesCapacity
  call $~lib/map/Map<u16,i32>#set:entriesCapacity
  local.get $this
  local.get $this
  i32.load $0 offset=20
  call $~lib/map/Map<u16,i32>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<u16,i32>#get (param $this i32) (param $key i32) (result i32)
  (local $entry i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<u16>
  call $~lib/map/Map<u16,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 592
   i32.const 656
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $entry
  i32.load $0 offset=4
 )
 (func $~lib/map/Map<u16,i32>#get:size (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $~lib/array/Array<u16>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<u16>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/array/Array<u16>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/array/Array<u16>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/array/Array<u16>#__uset (param $this i32) (param $index i32) (param $value i32)
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 1
  i32.shl
  i32.add
  local.get $value
  i32.store16 $0
  i32.const 0
  drop
 )
 (func $~lib/array/Array<u16>#set:length (param $this i32) (param $newLength i32)
  local.get $this
  local.get $newLength
  i32.const 1
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.get $newLength
  call $~lib/array/Array<u16>#set:length_
 )
 (func $~lib/map/Map<u16,u16>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<u16,u16>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<u16,u16>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<u16,u16>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<u16,u16>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<u16,u16>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=20
 )
 (func $~lib/array/Array<u16>#get:length (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/array/Array<u16>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  local.get $index
  local.get $this
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 224
   i32.const 704
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u $0
  local.set $value
  i32.const 0
  drop
  local.get $value
 )
 (func $~lib/map/Map<u16,u16>#find (param $this i32) (param $key i32) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $var$4 i32)
  (local $taggedNext i32)
  local.get $this
  i32.load $0
  local.get $hashCode
  local.get $this
  i32.load $0 offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load $0
  local.set $entry
  loop $while-continue|0
   local.get $entry
   local.set $var$4
   local.get $var$4
   if
    local.get $entry
    i32.load $0 offset=4
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     i32.load16_u $0
     local.get $key
     i32.const 65535
     i32.and
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<u16,u16>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 $0 offset=2
 )
 (func $~lib/map/MapEntry<u16,u16>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store16 $0
 )
 (func $~lib/map/MapEntry<u16,u16>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<u16,u16>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $var$9 i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey i32)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store $0
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store $0 offset=4
  local.get $this
  i32.load $0 offset=8
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  i32.load $0 offset=16
  i32.const 8
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   local.set $var$9
   local.get $var$9
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    i32.load $0 offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     i32.load16_u $0
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/map/MapEntry<u16,u16>#set:key
     local.get $newEntry
     local.get $oldEntry
     i32.load16_u $0 offset=2
     call $~lib/map/MapEntry<u16,u16>#set:value
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<u16>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load $0
     call $~lib/map/MapEntry<u16,u16>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store $0
     local.get $newPtr
     i32.const 8
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    i32.const 8
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.get $newBuckets
  call $~lib/map/Map<u16,u16>#set:buckets
  local.get $this
  local.get $newBucketsMask
  call $~lib/map/Map<u16,u16>#set:bucketsMask
  local.get $this
  local.get $newEntries
  call $~lib/map/Map<u16,u16>#set:entries
  local.get $this
  local.get $newEntriesCapacity
  call $~lib/map/Map<u16,u16>#set:entriesCapacity
  local.get $this
  local.get $this
  i32.load $0 offset=20
  call $~lib/map/Map<u16,u16>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<u16,u16>#get:size (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $~lib/map/Map<u16,i32>#delete (param $this i32) (param $key i32) (result i32)
  (local $entry i32)
  (local $halfBucketsMask i32)
  (local $var$4 i32)
  (local $var$5 i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<u16>
  call $~lib/map/Map<u16,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $entry
  local.get $entry
  i32.load $0 offset=8
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<u16,i32>#set:taggedNext
  local.get $this
  local.get $this
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<u16,i32>#set:entriesCount
  local.get $this
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $halfBucketsMask
  local.get $halfBucketsMask
  i32.const 1
  i32.add
  i32.const 4
  local.tee $var$4
  local.get $this
  i32.load $0 offset=20
  local.tee $var$5
  local.get $var$4
  local.get $var$5
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $this
   i32.load $0 offset=20
   local.get $this
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $this
   local.get $halfBucketsMask
   call $~lib/map/Map<u16,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<u16,i32>#clear (param $this i32)
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u16,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u16,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u16,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<u16,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<u16,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<u16,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<u16,i32>
  (local $map i32)
  (local $k i32)
  (local $var$2 i32)
  (local $k_0 i32)
  (local $var$4 i32)
  (local $keys i32)
  (local $vals i32)
  (local $keyMap i32)
  (local $valMap i32)
  (local $index i32)
  (local $var$10 i32)
  (local $key i32)
  (local $value i32)
  (local $k_1 i32)
  (local $var$14 i32)
  (local $k_2 i32)
  (local $var$16 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<u16,i32>#constructor
  local.tee $map
  i32.store $0
  i32.const 0
  local.set $k
  loop $for-loop|0
   local.get $k
   i32.const 100
   i32.lt_u
   local.set $var$2
   local.get $var$2
   if
    local.get $map
    local.get $k
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    i32.const 10
    local.get $k
    i32.add
    call $~lib/map/Map<u16,i32>#set
    drop
    local.get $map
    local.get $k
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    call $~lib/map/Map<u16,i32>#get
    i32.const 10
    local.get $k
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 9
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
  local.get $map
  call $~lib/map/Map<u16,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k_0
  loop $for-loop|1
   local.get $k_0
   i32.const 100
   i32.lt_u
   local.set $var$4
   local.get $var$4
   if
    local.get $map
    local.get $k_0
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<u16,i32>#get
    i32.const 10
    local.get $k_0
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    i32.const 20
    local.get $k_0
    i32.add
    call $~lib/map/Map<u16,i32>#set
    drop
    local.get $map
    local.get $k_0
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<u16,i32>#get
    i32.const 20
    local.get $k_0
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 19
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_0
    i32.const 1
    i32.add
    local.set $k_0
    br $for-loop|1
   end
  end
  local.get $map
  call $~lib/map/Map<u16,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<u16,i32>#keys
  local.tee $keys
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<u16,i32>#values
  local.tee $vals
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<u16,u16>#constructor
  local.tee $keyMap
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.tee $valMap
  i32.store $0 offset=16
  i32.const 0
  local.set $index
  loop $for-loop|2
   local.get $index
   local.get $keys
   call $~lib/array/Array<u16>#get:length
   i32.lt_s
   local.set $var$10
   local.get $var$10
   if
    local.get $keys
    local.get $index
    call $~lib/array/Array<u16>#__get
    local.set $key
    local.get $vals
    local.get $index
    call $~lib/array/Array<i32>#__get
    local.set $value
    local.get $map
    local.get $key
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $value
    i32.const 20
    i32.sub
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $keyMap
    local.get $key
    local.get $key
    call $~lib/map/Map<u16,u16>#set
    drop
    local.get $valMap
    local.get $value
    i32.const 20
    i32.sub
    local.get $value
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $index
    i32.const 1
    i32.add
    local.set $index
    br $for-loop|2
   end
  end
  local.get $keyMap
  call $~lib/map/Map<u16,u16>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $valMap
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k_1
  loop $for-loop|3
   local.get $k_1
   i32.const 50
   i32.lt_u
   local.set $var$14
   local.get $var$14
   if
    local.get $map
    local.get $k_1
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<u16,i32>#get
    i32.const 20
    local.get $k_1
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<u16,i32>#delete
    drop
    local.get $map
    local.get $k_1
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_1
    i32.const 1
    i32.add
    local.set $k_1
    br $for-loop|3
   end
  end
  local.get $map
  call $~lib/map/Map<u16,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k_2
  loop $for-loop|4
   local.get $k_2
   i32.const 50
   i32.lt_u
   local.set $var$16
   local.get $var$16
   if
    local.get $map
    local.get $k_2
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    i32.const 10
    local.get $k_2
    i32.add
    call $~lib/map/Map<u16,i32>#set
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    call $~lib/map/Map<u16,i32>#delete
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<u16,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 54
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_2
    i32.const 1
    i32.add
    local.set $k_2
    br $for-loop|4
   end
  end
  local.get $map
  call $~lib/map/Map<u16,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $map
  call $~lib/map/Map<u16,i32>#clear
  local.get $map
  call $~lib/map/Map<u16,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<i32,i32>#has (param $this i32) (param $key i32) (result i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<i32>
  call $~lib/map/Map<i32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<i32,i32>#get (param $this i32) (param $key i32) (result i32)
  (local $entry i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<i32>
  call $~lib/map/Map<i32,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 592
   i32.const 656
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $entry
  i32.load $0 offset=4
 )
 (func $~lib/array/Array<i32>#get:length (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/map/Map<i32,i32>#delete (param $this i32) (param $key i32) (result i32)
  (local $entry i32)
  (local $halfBucketsMask i32)
  (local $var$4 i32)
  (local $var$5 i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<i32>
  call $~lib/map/Map<i32,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $entry
  local.get $entry
  i32.load $0 offset=8
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<i32,i32>#set:taggedNext
  local.get $this
  local.get $this
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<i32,i32>#set:entriesCount
  local.get $this
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $halfBucketsMask
  local.get $halfBucketsMask
  i32.const 1
  i32.add
  i32.const 4
  local.tee $var$4
  local.get $this
  i32.load $0 offset=20
  local.tee $var$5
  local.get $var$4
  local.get $var$5
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $this
   i32.load $0 offset=20
   local.get $this
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $this
   local.get $halfBucketsMask
   call $~lib/map/Map<i32,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<i32,i32>#clear (param $this i32)
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i32,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i32,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i32,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<i32,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<i32,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<i32,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<i32,i32>
  (local $map i32)
  (local $k i32)
  (local $var$2 i32)
  (local $k_0 i32)
  (local $var$4 i32)
  (local $keys i32)
  (local $vals i32)
  (local $keyMap i32)
  (local $valMap i32)
  (local $index i32)
  (local $var$10 i32)
  (local $key i32)
  (local $value i32)
  (local $k_1 i32)
  (local $var$14 i32)
  (local $k_2 i32)
  (local $var$16 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.tee $map
  i32.store $0
  i32.const 0
  local.set $k
  loop $for-loop|0
   local.get $k
   i32.const 100
   i32.lt_s
   local.set $var$2
   local.get $var$2
   if
    local.get $map
    local.get $k
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    i32.const 10
    local.get $k
    i32.add
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $map
    local.get $k
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    call $~lib/map/Map<i32,i32>#get
    i32.const 10
    local.get $k
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 9
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
  local.get $map
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k_0
  loop $for-loop|1
   local.get $k_0
   i32.const 100
   i32.lt_s
   local.set $var$4
   local.get $var$4
   if
    local.get $map
    local.get $k_0
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<i32,i32>#get
    i32.const 10
    local.get $k_0
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    i32.const 20
    local.get $k_0
    i32.add
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $map
    local.get $k_0
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<i32,i32>#get
    i32.const 20
    local.get $k_0
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 19
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_0
    i32.const 1
    i32.add
    local.set $k_0
    br $for-loop|1
   end
  end
  local.get $map
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<i32,i32>#keys
  local.tee $keys
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<i32,i32>#values
  local.tee $vals
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.tee $keyMap
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.tee $valMap
  i32.store $0 offset=16
  i32.const 0
  local.set $index
  loop $for-loop|2
   local.get $index
   local.get $keys
   call $~lib/array/Array<i32>#get:length
   i32.lt_s
   local.set $var$10
   local.get $var$10
   if
    local.get $keys
    local.get $index
    call $~lib/array/Array<i32>#__get
    local.set $key
    local.get $vals
    local.get $index
    call $~lib/array/Array<i32>#__get
    local.set $value
    local.get $map
    local.get $key
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $value
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $keyMap
    local.get $key
    local.get $key
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $valMap
    local.get $value
    i32.const 20
    i32.sub
    local.get $value
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $index
    i32.const 1
    i32.add
    local.set $index
    br $for-loop|2
   end
  end
  local.get $keyMap
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $valMap
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k_1
  loop $for-loop|3
   local.get $k_1
   i32.const 50
   i32.lt_s
   local.set $var$14
   local.get $var$14
   if
    local.get $map
    local.get $k_1
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<i32,i32>#get
    i32.const 20
    local.get $k_1
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<i32,i32>#delete
    drop
    local.get $map
    local.get $k_1
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_1
    i32.const 1
    i32.add
    local.set $k_1
    br $for-loop|3
   end
  end
  local.get $map
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k_2
  loop $for-loop|4
   local.get $k_2
   i32.const 50
   i32.lt_s
   local.set $var$16
   local.get $var$16
   if
    local.get $map
    local.get $k_2
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    i32.const 10
    local.get $k_2
    i32.add
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    call $~lib/map/Map<i32,i32>#delete
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<i32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 54
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_2
    i32.const 1
    i32.add
    local.set $k_2
    br $for-loop|4
   end
  end
  local.get $map
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $map
  call $~lib/map/Map<i32,i32>#clear
  local.get $map
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<u32,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<u32,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<u32,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<u32,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<u32,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<u32,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=20
 )
 (func $~lib/util/hash/HASH<u32> (param $key i32) (result i32)
  (local $len i32)
  (local $key_0 i32)
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
  local.get $key
  local.set $key_0
  i32.const 4
  local.set $len
  i32.const 0
  i32.const 374761393
  i32.add
  local.get $len
  i32.add
  local.set $h
  local.get $h
  local.get $key_0
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
  return
 )
 (func $~lib/map/Map<u32,i32>#find (param $this i32) (param $key i32) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $var$4 i32)
  (local $taggedNext i32)
  local.get $this
  i32.load $0
  local.get $hashCode
  local.get $this
  i32.load $0 offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load $0
  local.set $entry
  loop $while-continue|0
   local.get $entry
   local.set $var$4
   local.get $var$4
   if
    local.get $entry
    i32.load $0 offset=8
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     i32.load $0
     local.get $key
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<u32,i32>#has (param $this i32) (param $key i32) (result i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<u32>
  call $~lib/map/Map<u32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/MapEntry<u32,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/MapEntry<u32,i32>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
 )
 (func $~lib/map/MapEntry<u32,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/map/Map<u32,i32>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $var$9 i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey i32)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store $0
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store $0 offset=4
  local.get $this
  i32.load $0 offset=8
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  i32.load $0 offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   local.set $var$9
   local.get $var$9
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     i32.load $0
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/map/MapEntry<u32,i32>#set:key
     local.get $newEntry
     local.get $oldEntry
     i32.load $0 offset=4
     call $~lib/map/MapEntry<u32,i32>#set:value
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<u32>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load $0
     call $~lib/map/MapEntry<u32,i32>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store $0
     local.get $newPtr
     i32.const 12
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    i32.const 12
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.get $newBuckets
  call $~lib/map/Map<u32,i32>#set:buckets
  local.get $this
  local.get $newBucketsMask
  call $~lib/map/Map<u32,i32>#set:bucketsMask
  local.get $this
  local.get $newEntries
  call $~lib/map/Map<u32,i32>#set:entries
  local.get $this
  local.get $newEntriesCapacity
  call $~lib/map/Map<u32,i32>#set:entriesCapacity
  local.get $this
  local.get $this
  i32.load $0 offset=20
  call $~lib/map/Map<u32,i32>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<u32,i32>#get (param $this i32) (param $key i32) (result i32)
  (local $entry i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<u32>
  call $~lib/map/Map<u32,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 592
   i32.const 656
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $entry
  i32.load $0 offset=4
 )
 (func $~lib/map/Map<u32,i32>#get:size (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $~lib/array/Array<u32>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<u32>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/array/Array<u32>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/array/Array<u32>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/array/Array<u32>#__uset (param $this i32) (param $index i32) (param $value i32)
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store $0
  i32.const 0
  drop
 )
 (func $~lib/array/Array<u32>#set:length (param $this i32) (param $newLength i32)
  local.get $this
  local.get $newLength
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.get $newLength
  call $~lib/array/Array<u32>#set:length_
 )
 (func $~lib/map/Map<u32,u32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<u32,u32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<u32,u32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<u32,u32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<u32,u32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<u32,u32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=20
 )
 (func $~lib/array/Array<u32>#get:length (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/array/Array<u32>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  local.get $index
  local.get $this
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 224
   i32.const 704
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.set $value
  i32.const 0
  drop
  local.get $value
 )
 (func $~lib/map/Map<u32,u32>#find (param $this i32) (param $key i32) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $var$4 i32)
  (local $taggedNext i32)
  local.get $this
  i32.load $0
  local.get $hashCode
  local.get $this
  i32.load $0 offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load $0
  local.set $entry
  loop $while-continue|0
   local.get $entry
   local.set $var$4
   local.get $var$4
   if
    local.get $entry
    i32.load $0 offset=8
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     i32.load $0
     local.get $key
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<u32,u32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/MapEntry<u32,u32>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
 )
 (func $~lib/map/MapEntry<u32,u32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/map/Map<u32,u32>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $var$9 i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey i32)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store $0
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store $0 offset=4
  local.get $this
  i32.load $0 offset=8
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  i32.load $0 offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   local.set $var$9
   local.get $var$9
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     i32.load $0
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/map/MapEntry<u32,u32>#set:key
     local.get $newEntry
     local.get $oldEntry
     i32.load $0 offset=4
     call $~lib/map/MapEntry<u32,u32>#set:value
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<u32>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load $0
     call $~lib/map/MapEntry<u32,u32>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store $0
     local.get $newPtr
     i32.const 12
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    i32.const 12
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.get $newBuckets
  call $~lib/map/Map<u32,u32>#set:buckets
  local.get $this
  local.get $newBucketsMask
  call $~lib/map/Map<u32,u32>#set:bucketsMask
  local.get $this
  local.get $newEntries
  call $~lib/map/Map<u32,u32>#set:entries
  local.get $this
  local.get $newEntriesCapacity
  call $~lib/map/Map<u32,u32>#set:entriesCapacity
  local.get $this
  local.get $this
  i32.load $0 offset=20
  call $~lib/map/Map<u32,u32>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<u32,u32>#get:size (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $~lib/map/Map<u32,i32>#delete (param $this i32) (param $key i32) (result i32)
  (local $entry i32)
  (local $halfBucketsMask i32)
  (local $var$4 i32)
  (local $var$5 i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<u32>
  call $~lib/map/Map<u32,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $entry
  local.get $entry
  i32.load $0 offset=8
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<u32,i32>#set:taggedNext
  local.get $this
  local.get $this
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<u32,i32>#set:entriesCount
  local.get $this
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $halfBucketsMask
  local.get $halfBucketsMask
  i32.const 1
  i32.add
  i32.const 4
  local.tee $var$4
  local.get $this
  i32.load $0 offset=20
  local.tee $var$5
  local.get $var$4
  local.get $var$5
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $this
   i32.load $0 offset=20
   local.get $this
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $this
   local.get $halfBucketsMask
   call $~lib/map/Map<u32,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<u32,i32>#clear (param $this i32)
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u32,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u32,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u32,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<u32,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<u32,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<u32,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<u32,i32>
  (local $map i32)
  (local $k i32)
  (local $var$2 i32)
  (local $k_0 i32)
  (local $var$4 i32)
  (local $keys i32)
  (local $vals i32)
  (local $keyMap i32)
  (local $valMap i32)
  (local $index i32)
  (local $var$10 i32)
  (local $key i32)
  (local $value i32)
  (local $k_1 i32)
  (local $var$14 i32)
  (local $k_2 i32)
  (local $var$16 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<u32,i32>#constructor
  local.tee $map
  i32.store $0
  i32.const 0
  local.set $k
  loop $for-loop|0
   local.get $k
   i32.const 100
   i32.lt_u
   local.set $var$2
   local.get $var$2
   if
    local.get $map
    local.get $k
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    i32.const 10
    local.get $k
    i32.add
    call $~lib/map/Map<u32,i32>#set
    drop
    local.get $map
    local.get $k
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    call $~lib/map/Map<u32,i32>#get
    i32.const 10
    local.get $k
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 9
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
  local.get $map
  call $~lib/map/Map<u32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k_0
  loop $for-loop|1
   local.get $k_0
   i32.const 100
   i32.lt_u
   local.set $var$4
   local.get $var$4
   if
    local.get $map
    local.get $k_0
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<u32,i32>#get
    i32.const 10
    local.get $k_0
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    i32.const 20
    local.get $k_0
    i32.add
    call $~lib/map/Map<u32,i32>#set
    drop
    local.get $map
    local.get $k_0
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<u32,i32>#get
    i32.const 20
    local.get $k_0
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 19
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_0
    i32.const 1
    i32.add
    local.set $k_0
    br $for-loop|1
   end
  end
  local.get $map
  call $~lib/map/Map<u32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<u32,i32>#keys
  local.tee $keys
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<u32,i32>#values
  local.tee $vals
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<u32,u32>#constructor
  local.tee $keyMap
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.tee $valMap
  i32.store $0 offset=16
  i32.const 0
  local.set $index
  loop $for-loop|2
   local.get $index
   local.get $keys
   call $~lib/array/Array<u32>#get:length
   i32.lt_s
   local.set $var$10
   local.get $var$10
   if
    local.get $keys
    local.get $index
    call $~lib/array/Array<u32>#__get
    local.set $key
    local.get $vals
    local.get $index
    call $~lib/array/Array<i32>#__get
    local.set $value
    local.get $map
    local.get $key
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $value
    i32.const 20
    i32.sub
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $keyMap
    local.get $key
    local.get $key
    call $~lib/map/Map<u32,u32>#set
    drop
    local.get $valMap
    local.get $value
    i32.const 20
    i32.sub
    local.get $value
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $index
    i32.const 1
    i32.add
    local.set $index
    br $for-loop|2
   end
  end
  local.get $keyMap
  call $~lib/map/Map<u32,u32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $valMap
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k_1
  loop $for-loop|3
   local.get $k_1
   i32.const 50
   i32.lt_u
   local.set $var$14
   local.get $var$14
   if
    local.get $map
    local.get $k_1
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<u32,i32>#get
    i32.const 20
    local.get $k_1
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<u32,i32>#delete
    drop
    local.get $map
    local.get $k_1
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_1
    i32.const 1
    i32.add
    local.set $k_1
    br $for-loop|3
   end
  end
  local.get $map
  call $~lib/map/Map<u32,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $k_2
  loop $for-loop|4
   local.get $k_2
   i32.const 50
   i32.lt_u
   local.set $var$16
   local.get $var$16
   if
    local.get $map
    local.get $k_2
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    i32.const 10
    local.get $k_2
    i32.add
    call $~lib/map/Map<u32,i32>#set
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    call $~lib/map/Map<u32,i32>#delete
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<u32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 54
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_2
    i32.const 1
    i32.add
    local.set $k_2
    br $for-loop|4
   end
  end
  local.get $map
  call $~lib/map/Map<u32,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $map
  call $~lib/map/Map<u32,i32>#clear
  local.get $map
  call $~lib/map/Map<u32,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<i64,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<i64,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<i64,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<i64,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<i64,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<i64,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=20
 )
 (func $~lib/util/hash/HASH<i64> (param $key i64) (result i32)
  (local $key_0 i64)
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
  local.get $key
  local.set $key_0
  i32.const 0
  i32.const 374761393
  i32.add
  i32.const 8
  i32.add
  local.set $h
  local.get $h
  local.get $key_0
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
  local.get $key_0
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
  return
 )
 (func $~lib/map/Map<i64,i32>#find (param $this i32) (param $key i64) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $var$4 i32)
  (local $taggedNext i32)
  local.get $this
  i32.load $0
  local.get $hashCode
  local.get $this
  i32.load $0 offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load $0
  local.set $entry
  loop $while-continue|0
   local.get $entry
   local.set $var$4
   local.get $var$4
   if
    local.get $entry
    i32.load $0 offset=12
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     i64.load $0
     local.get $key
     i64.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<i64,i32>#has (param $this i32) (param $key i64) (result i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<i64>
  call $~lib/map/Map<i64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/MapEntry<i64,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/map/MapEntry<i64,i32>#set:key (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store $0
 )
 (func $~lib/map/MapEntry<i64,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<i64,i32>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $var$9 i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey i64)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store $0
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  i32.const 16
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store $0 offset=4
  local.get $this
  i32.load $0 offset=8
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  i32.load $0 offset=16
  i32.const 16
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   local.set $var$9
   local.get $var$9
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    i32.load $0 offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     i64.load $0
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/map/MapEntry<i64,i32>#set:key
     local.get $newEntry
     local.get $oldEntry
     i32.load $0 offset=8
     call $~lib/map/MapEntry<i64,i32>#set:value
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<i64>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load $0
     call $~lib/map/MapEntry<i64,i32>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store $0
     local.get $newPtr
     i32.const 16
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    i32.const 16
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.get $newBuckets
  call $~lib/map/Map<i64,i32>#set:buckets
  local.get $this
  local.get $newBucketsMask
  call $~lib/map/Map<i64,i32>#set:bucketsMask
  local.get $this
  local.get $newEntries
  call $~lib/map/Map<i64,i32>#set:entries
  local.get $this
  local.get $newEntriesCapacity
  call $~lib/map/Map<i64,i32>#set:entriesCapacity
  local.get $this
  local.get $this
  i32.load $0 offset=20
  call $~lib/map/Map<i64,i32>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<i64,i32>#get (param $this i32) (param $key i64) (result i32)
  (local $entry i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<i64>
  call $~lib/map/Map<i64,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 592
   i32.const 656
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $entry
  i32.load $0 offset=8
 )
 (func $~lib/map/Map<i64,i32>#get:size (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $~lib/array/Array<i64>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<i64>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/array/Array<i64>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/array/Array<i64>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/array/Array<i64>#__uset (param $this i32) (param $index i32) (param $value i64)
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 3
  i32.shl
  i32.add
  local.get $value
  i64.store $0
  i32.const 0
  drop
 )
 (func $~lib/array/Array<i64>#set:length (param $this i32) (param $newLength i32)
  local.get $this
  local.get $newLength
  i32.const 3
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.get $newLength
  call $~lib/array/Array<i64>#set:length_
 )
 (func $~lib/map/Map<i64,i64>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<i64,i64>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<i64,i64>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<i64,i64>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<i64,i64>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<i64,i64>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=20
 )
 (func $~lib/array/Array<i64>#get:length (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/array/Array<i64>#__get (param $this i32) (param $index i32) (result i64)
  (local $value i64)
  local.get $index
  local.get $this
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 224
   i32.const 704
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 3
  i32.shl
  i32.add
  i64.load $0
  local.set $value
  i32.const 0
  drop
  local.get $value
 )
 (func $~lib/map/Map<i64,i64>#find (param $this i32) (param $key i64) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $var$4 i32)
  (local $taggedNext i32)
  local.get $this
  i32.load $0
  local.get $hashCode
  local.get $this
  i32.load $0 offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load $0
  local.set $entry
  loop $while-continue|0
   local.get $entry
   local.set $var$4
   local.get $var$4
   if
    local.get $entry
    i32.load $0 offset=16
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     i64.load $0
     local.get $key
     i64.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<i64,i64>#set:value (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store $0 offset=8
 )
 (func $~lib/map/MapEntry<i64,i64>#set:key (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store $0
 )
 (func $~lib/map/MapEntry<i64,i64>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<i64,i64>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $var$9 i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey i64)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store $0
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  i32.const 24
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store $0 offset=4
  local.get $this
  i32.load $0 offset=8
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  i32.load $0 offset=16
  i32.const 24
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   local.set $var$9
   local.get $var$9
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    i32.load $0 offset=16
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     i64.load $0
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/map/MapEntry<i64,i64>#set:key
     local.get $newEntry
     local.get $oldEntry
     i64.load $0 offset=8
     call $~lib/map/MapEntry<i64,i64>#set:value
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<i64>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load $0
     call $~lib/map/MapEntry<i64,i64>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store $0
     local.get $newPtr
     i32.const 24
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    i32.const 24
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.get $newBuckets
  call $~lib/map/Map<i64,i64>#set:buckets
  local.get $this
  local.get $newBucketsMask
  call $~lib/map/Map<i64,i64>#set:bucketsMask
  local.get $this
  local.get $newEntries
  call $~lib/map/Map<i64,i64>#set:entries
  local.get $this
  local.get $newEntriesCapacity
  call $~lib/map/Map<i64,i64>#set:entriesCapacity
  local.get $this
  local.get $this
  i32.load $0 offset=20
  call $~lib/map/Map<i64,i64>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<i64,i64>#get:size (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $~lib/map/Map<i64,i32>#delete (param $this i32) (param $key i64) (result i32)
  (local $entry i32)
  (local $halfBucketsMask i32)
  (local $var$4 i32)
  (local $var$5 i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<i64>
  call $~lib/map/Map<i64,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $entry
  local.get $entry
  i32.load $0 offset=12
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<i64,i32>#set:taggedNext
  local.get $this
  local.get $this
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<i64,i32>#set:entriesCount
  local.get $this
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $halfBucketsMask
  local.get $halfBucketsMask
  i32.const 1
  i32.add
  i32.const 4
  local.tee $var$4
  local.get $this
  i32.load $0 offset=20
  local.tee $var$5
  local.get $var$4
  local.get $var$5
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $this
   i32.load $0 offset=20
   local.get $this
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $this
   local.get $halfBucketsMask
   call $~lib/map/Map<i64,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<i64,i32>#clear (param $this i32)
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i64,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i64,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 16
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i64,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<i64,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<i64,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<i64,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<i64,i32>
  (local $map i32)
  (local $k i64)
  (local $var$2 i32)
  (local $k_0 i64)
  (local $var$4 i32)
  (local $keys i32)
  (local $vals i32)
  (local $keyMap i32)
  (local $valMap i32)
  (local $index i32)
  (local $var$10 i32)
  (local $key i64)
  (local $value i32)
  (local $k_1 i64)
  (local $var$14 i32)
  (local $k_2 i64)
  (local $var$16 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i64,i32>#constructor
  local.tee $map
  i32.store $0
  i64.const 0
  local.set $k
  loop $for-loop|0
   local.get $k
   i64.const 100
   i64.lt_s
   local.set $var$2
   local.get $var$2
   if
    local.get $map
    local.get $k
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    i32.const 10
    local.get $k
    i32.wrap_i64
    i32.add
    call $~lib/map/Map<i64,i32>#set
    drop
    local.get $map
    local.get $k
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    call $~lib/map/Map<i64,i32>#get
    i32.const 10
    local.get $k
    i32.wrap_i64
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 9
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
  local.get $map
  call $~lib/map/Map<i64,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $k_0
  loop $for-loop|1
   local.get $k_0
   i64.const 100
   i64.lt_s
   local.set $var$4
   local.get $var$4
   if
    local.get $map
    local.get $k_0
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<i64,i32>#get
    i32.const 10
    local.get $k_0
    i32.wrap_i64
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    i32.const 20
    local.get $k_0
    i32.wrap_i64
    i32.add
    call $~lib/map/Map<i64,i32>#set
    drop
    local.get $map
    local.get $k_0
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<i64,i32>#get
    i32.const 20
    local.get $k_0
    i32.wrap_i64
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 19
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_0
    i64.const 1
    i64.add
    local.set $k_0
    br $for-loop|1
   end
  end
  local.get $map
  call $~lib/map/Map<i64,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<i64,i32>#keys
  local.tee $keys
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<i64,i32>#values
  local.tee $vals
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i64,i64>#constructor
  local.tee $keyMap
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.tee $valMap
  i32.store $0 offset=16
  i32.const 0
  local.set $index
  loop $for-loop|2
   local.get $index
   local.get $keys
   call $~lib/array/Array<i64>#get:length
   i32.lt_s
   local.set $var$10
   local.get $var$10
   if
    local.get $keys
    local.get $index
    call $~lib/array/Array<i64>#__get
    local.set $key
    local.get $vals
    local.get $index
    call $~lib/array/Array<i32>#__get
    local.set $value
    local.get $map
    local.get $key
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $value
    i32.const 20
    i32.sub
    i64.extend_i32_s
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $keyMap
    local.get $key
    local.get $key
    call $~lib/map/Map<i64,i64>#set
    drop
    local.get $valMap
    local.get $value
    i32.const 20
    i32.sub
    local.get $value
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $index
    i32.const 1
    i32.add
    local.set $index
    br $for-loop|2
   end
  end
  local.get $keyMap
  call $~lib/map/Map<i64,i64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $valMap
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $k_1
  loop $for-loop|3
   local.get $k_1
   i64.const 50
   i64.lt_s
   local.set $var$14
   local.get $var$14
   if
    local.get $map
    local.get $k_1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<i64,i32>#get
    i32.const 20
    local.get $k_1
    i32.wrap_i64
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<i64,i32>#delete
    drop
    local.get $map
    local.get $k_1
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_1
    i64.const 1
    i64.add
    local.set $k_1
    br $for-loop|3
   end
  end
  local.get $map
  call $~lib/map/Map<i64,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $k_2
  loop $for-loop|4
   local.get $k_2
   i64.const 50
   i64.lt_s
   local.set $var$16
   local.get $var$16
   if
    local.get $map
    local.get $k_2
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    i32.const 10
    local.get $k_2
    i32.wrap_i64
    i32.add
    call $~lib/map/Map<i64,i32>#set
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    call $~lib/map/Map<i64,i32>#delete
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<i64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 54
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_2
    i64.const 1
    i64.add
    local.set $k_2
    br $for-loop|4
   end
  end
  local.get $map
  call $~lib/map/Map<i64,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $map
  call $~lib/map/Map<i64,i32>#clear
  local.get $map
  call $~lib/map/Map<i64,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<u64,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<u64,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<u64,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<u64,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<u64,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<u64,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=20
 )
 (func $~lib/util/hash/HASH<u64> (param $key i64) (result i32)
  (local $key_0 i64)
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
  local.get $key
  local.set $key_0
  i32.const 0
  i32.const 374761393
  i32.add
  i32.const 8
  i32.add
  local.set $h
  local.get $h
  local.get $key_0
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
  local.get $key_0
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
  return
 )
 (func $~lib/map/Map<u64,i32>#find (param $this i32) (param $key i64) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $var$4 i32)
  (local $taggedNext i32)
  local.get $this
  i32.load $0
  local.get $hashCode
  local.get $this
  i32.load $0 offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load $0
  local.set $entry
  loop $while-continue|0
   local.get $entry
   local.set $var$4
   local.get $var$4
   if
    local.get $entry
    i32.load $0 offset=12
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     i64.load $0
     local.get $key
     i64.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<u64,i32>#has (param $this i32) (param $key i64) (result i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<u64>
  call $~lib/map/Map<u64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/MapEntry<u64,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/map/MapEntry<u64,i32>#set:key (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store $0
 )
 (func $~lib/map/MapEntry<u64,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<u64,i32>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $var$9 i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey i64)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store $0
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  i32.const 16
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store $0 offset=4
  local.get $this
  i32.load $0 offset=8
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  i32.load $0 offset=16
  i32.const 16
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   local.set $var$9
   local.get $var$9
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    i32.load $0 offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     i64.load $0
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/map/MapEntry<u64,i32>#set:key
     local.get $newEntry
     local.get $oldEntry
     i32.load $0 offset=8
     call $~lib/map/MapEntry<u64,i32>#set:value
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<u64>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load $0
     call $~lib/map/MapEntry<u64,i32>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store $0
     local.get $newPtr
     i32.const 16
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    i32.const 16
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.get $newBuckets
  call $~lib/map/Map<u64,i32>#set:buckets
  local.get $this
  local.get $newBucketsMask
  call $~lib/map/Map<u64,i32>#set:bucketsMask
  local.get $this
  local.get $newEntries
  call $~lib/map/Map<u64,i32>#set:entries
  local.get $this
  local.get $newEntriesCapacity
  call $~lib/map/Map<u64,i32>#set:entriesCapacity
  local.get $this
  local.get $this
  i32.load $0 offset=20
  call $~lib/map/Map<u64,i32>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<u64,i32>#get (param $this i32) (param $key i64) (result i32)
  (local $entry i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<u64>
  call $~lib/map/Map<u64,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 592
   i32.const 656
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $entry
  i32.load $0 offset=8
 )
 (func $~lib/map/Map<u64,i32>#get:size (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $~lib/array/Array<u64>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<u64>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/array/Array<u64>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/array/Array<u64>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/array/Array<u64>#__uset (param $this i32) (param $index i32) (param $value i64)
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 3
  i32.shl
  i32.add
  local.get $value
  i64.store $0
  i32.const 0
  drop
 )
 (func $~lib/array/Array<u64>#set:length (param $this i32) (param $newLength i32)
  local.get $this
  local.get $newLength
  i32.const 3
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.get $newLength
  call $~lib/array/Array<u64>#set:length_
 )
 (func $~lib/map/Map<u64,u64>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<u64,u64>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<u64,u64>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<u64,u64>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<u64,u64>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<u64,u64>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=20
 )
 (func $~lib/array/Array<u64>#get:length (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/array/Array<u64>#__get (param $this i32) (param $index i32) (result i64)
  (local $value i64)
  local.get $index
  local.get $this
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 224
   i32.const 704
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 3
  i32.shl
  i32.add
  i64.load $0
  local.set $value
  i32.const 0
  drop
  local.get $value
 )
 (func $~lib/map/Map<u64,u64>#find (param $this i32) (param $key i64) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $var$4 i32)
  (local $taggedNext i32)
  local.get $this
  i32.load $0
  local.get $hashCode
  local.get $this
  i32.load $0 offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load $0
  local.set $entry
  loop $while-continue|0
   local.get $entry
   local.set $var$4
   local.get $var$4
   if
    local.get $entry
    i32.load $0 offset=16
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     i64.load $0
     local.get $key
     i64.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<u64,u64>#set:value (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store $0 offset=8
 )
 (func $~lib/map/MapEntry<u64,u64>#set:key (param $0 i32) (param $1 i64)
  local.get $0
  local.get $1
  i64.store $0
 )
 (func $~lib/map/MapEntry<u64,u64>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<u64,u64>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $var$9 i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey i64)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store $0
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  i32.const 24
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store $0 offset=4
  local.get $this
  i32.load $0 offset=8
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  i32.load $0 offset=16
  i32.const 24
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   local.set $var$9
   local.get $var$9
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    i32.load $0 offset=16
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     i64.load $0
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/map/MapEntry<u64,u64>#set:key
     local.get $newEntry
     local.get $oldEntry
     i64.load $0 offset=8
     call $~lib/map/MapEntry<u64,u64>#set:value
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<u64>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load $0
     call $~lib/map/MapEntry<u64,u64>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store $0
     local.get $newPtr
     i32.const 24
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    i32.const 24
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.get $newBuckets
  call $~lib/map/Map<u64,u64>#set:buckets
  local.get $this
  local.get $newBucketsMask
  call $~lib/map/Map<u64,u64>#set:bucketsMask
  local.get $this
  local.get $newEntries
  call $~lib/map/Map<u64,u64>#set:entries
  local.get $this
  local.get $newEntriesCapacity
  call $~lib/map/Map<u64,u64>#set:entriesCapacity
  local.get $this
  local.get $this
  i32.load $0 offset=20
  call $~lib/map/Map<u64,u64>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<u64,u64>#get:size (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $~lib/map/Map<u64,i32>#delete (param $this i32) (param $key i64) (result i32)
  (local $entry i32)
  (local $halfBucketsMask i32)
  (local $var$4 i32)
  (local $var$5 i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<u64>
  call $~lib/map/Map<u64,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $entry
  local.get $entry
  i32.load $0 offset=12
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<u64,i32>#set:taggedNext
  local.get $this
  local.get $this
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<u64,i32>#set:entriesCount
  local.get $this
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $halfBucketsMask
  local.get $halfBucketsMask
  i32.const 1
  i32.add
  i32.const 4
  local.tee $var$4
  local.get $this
  i32.load $0 offset=20
  local.tee $var$5
  local.get $var$4
  local.get $var$5
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $this
   i32.load $0 offset=20
   local.get $this
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $this
   local.get $halfBucketsMask
   call $~lib/map/Map<u64,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<u64,i32>#clear (param $this i32)
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u64,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u64,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 16
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u64,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<u64,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<u64,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<u64,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<u64,i32>
  (local $map i32)
  (local $k i64)
  (local $var$2 i32)
  (local $k_0 i64)
  (local $var$4 i32)
  (local $keys i32)
  (local $vals i32)
  (local $keyMap i32)
  (local $valMap i32)
  (local $index i32)
  (local $var$10 i32)
  (local $key i64)
  (local $value i32)
  (local $k_1 i64)
  (local $var$14 i32)
  (local $k_2 i64)
  (local $var$16 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<u64,i32>#constructor
  local.tee $map
  i32.store $0
  i64.const 0
  local.set $k
  loop $for-loop|0
   local.get $k
   i64.const 100
   i64.lt_u
   local.set $var$2
   local.get $var$2
   if
    local.get $map
    local.get $k
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    i32.const 10
    local.get $k
    i32.wrap_i64
    i32.add
    call $~lib/map/Map<u64,i32>#set
    drop
    local.get $map
    local.get $k
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    call $~lib/map/Map<u64,i32>#get
    i32.const 10
    local.get $k
    i32.wrap_i64
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 9
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
  local.get $map
  call $~lib/map/Map<u64,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $k_0
  loop $for-loop|1
   local.get $k_0
   i64.const 100
   i64.lt_u
   local.set $var$4
   local.get $var$4
   if
    local.get $map
    local.get $k_0
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<u64,i32>#get
    i32.const 10
    local.get $k_0
    i32.wrap_i64
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    i32.const 20
    local.get $k_0
    i32.wrap_i64
    i32.add
    call $~lib/map/Map<u64,i32>#set
    drop
    local.get $map
    local.get $k_0
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<u64,i32>#get
    i32.const 20
    local.get $k_0
    i32.wrap_i64
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 19
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_0
    i64.const 1
    i64.add
    local.set $k_0
    br $for-loop|1
   end
  end
  local.get $map
  call $~lib/map/Map<u64,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<u64,i32>#keys
  local.tee $keys
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<u64,i32>#values
  local.tee $vals
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<u64,u64>#constructor
  local.tee $keyMap
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.tee $valMap
  i32.store $0 offset=16
  i32.const 0
  local.set $index
  loop $for-loop|2
   local.get $index
   local.get $keys
   call $~lib/array/Array<u64>#get:length
   i32.lt_s
   local.set $var$10
   local.get $var$10
   if
    local.get $keys
    local.get $index
    call $~lib/array/Array<u64>#__get
    local.set $key
    local.get $vals
    local.get $index
    call $~lib/array/Array<i32>#__get
    local.set $value
    local.get $map
    local.get $key
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $value
    i32.const 20
    i32.sub
    i64.extend_i32_s
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $keyMap
    local.get $key
    local.get $key
    call $~lib/map/Map<u64,u64>#set
    drop
    local.get $valMap
    local.get $value
    i32.const 20
    i32.sub
    local.get $value
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $index
    i32.const 1
    i32.add
    local.set $index
    br $for-loop|2
   end
  end
  local.get $keyMap
  call $~lib/map/Map<u64,u64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $valMap
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $k_1
  loop $for-loop|3
   local.get $k_1
   i64.const 50
   i64.lt_u
   local.set $var$14
   local.get $var$14
   if
    local.get $map
    local.get $k_1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<u64,i32>#get
    i32.const 20
    local.get $k_1
    i32.wrap_i64
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<u64,i32>#delete
    drop
    local.get $map
    local.get $k_1
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_1
    i64.const 1
    i64.add
    local.set $k_1
    br $for-loop|3
   end
  end
  local.get $map
  call $~lib/map/Map<u64,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 0
  local.set $k_2
  loop $for-loop|4
   local.get $k_2
   i64.const 50
   i64.lt_u
   local.set $var$16
   local.get $var$16
   if
    local.get $map
    local.get $k_2
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    i32.const 10
    local.get $k_2
    i32.wrap_i64
    i32.add
    call $~lib/map/Map<u64,i32>#set
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    call $~lib/map/Map<u64,i32>#delete
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<u64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 54
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_2
    i64.const 1
    i64.add
    local.set $k_2
    br $for-loop|4
   end
  end
  local.get $map
  call $~lib/map/Map<u64,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $map
  call $~lib/map/Map<u64,i32>#clear
  local.get $map
  call $~lib/map/Map<u64,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<f32,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<f32,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<f32,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<f32,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<f32,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<f32,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=20
 )
 (func $~lib/util/hash/HASH<f32> (param $key f32) (result i32)
  (local $key_0 i32)
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
  local.get $key
  i32.reinterpret_f32
  local.set $key_0
  i32.const 4
  local.set $len
  i32.const 0
  i32.const 374761393
  i32.add
  local.get $len
  i32.add
  local.set $h
  local.get $h
  local.get $key_0
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
  return
 )
 (func $~lib/map/Map<f32,i32>#find (param $this i32) (param $key f32) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $var$4 i32)
  (local $taggedNext i32)
  local.get $this
  i32.load $0
  local.get $hashCode
  local.get $this
  i32.load $0 offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load $0
  local.set $entry
  loop $while-continue|0
   local.get $entry
   local.set $var$4
   local.get $var$4
   if
    local.get $entry
    i32.load $0 offset=8
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     f32.load $0
     local.get $key
     f32.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<f32,i32>#has (param $this i32) (param $key f32) (result i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<f32>
  call $~lib/map/Map<f32,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/MapEntry<f32,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/MapEntry<f32,i32>#set:key (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store $0
 )
 (func $~lib/map/MapEntry<f32,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/map/Map<f32,i32>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $var$9 i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey f32)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store $0
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store $0 offset=4
  local.get $this
  i32.load $0 offset=8
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  i32.load $0 offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   local.set $var$9
   local.get $var$9
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     f32.load $0
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/map/MapEntry<f32,i32>#set:key
     local.get $newEntry
     local.get $oldEntry
     i32.load $0 offset=4
     call $~lib/map/MapEntry<f32,i32>#set:value
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<f32>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load $0
     call $~lib/map/MapEntry<f32,i32>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store $0
     local.get $newPtr
     i32.const 12
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    i32.const 12
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.get $newBuckets
  call $~lib/map/Map<f32,i32>#set:buckets
  local.get $this
  local.get $newBucketsMask
  call $~lib/map/Map<f32,i32>#set:bucketsMask
  local.get $this
  local.get $newEntries
  call $~lib/map/Map<f32,i32>#set:entries
  local.get $this
  local.get $newEntriesCapacity
  call $~lib/map/Map<f32,i32>#set:entriesCapacity
  local.get $this
  local.get $this
  i32.load $0 offset=20
  call $~lib/map/Map<f32,i32>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<f32,i32>#get (param $this i32) (param $key f32) (result i32)
  (local $entry i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<f32>
  call $~lib/map/Map<f32,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 592
   i32.const 656
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $entry
  i32.load $0 offset=4
 )
 (func $~lib/map/Map<f32,i32>#get:size (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $~lib/array/Array<f32>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<f32>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/array/Array<f32>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/array/Array<f32>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/array/Array<f32>#__uset (param $this i32) (param $index i32) (param $value f32)
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  f32.store $0
  i32.const 0
  drop
 )
 (func $~lib/array/Array<f32>#set:length (param $this i32) (param $newLength i32)
  local.get $this
  local.get $newLength
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.get $newLength
  call $~lib/array/Array<f32>#set:length_
 )
 (func $~lib/map/Map<f32,f32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<f32,f32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<f32,f32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<f32,f32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<f32,f32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<f32,f32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=20
 )
 (func $~lib/array/Array<f32>#get:length (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/array/Array<f32>#__get (param $this i32) (param $index i32) (result f32)
  (local $value f32)
  local.get $index
  local.get $this
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 224
   i32.const 704
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  f32.load $0
  local.set $value
  i32.const 0
  drop
  local.get $value
 )
 (func $~lib/map/Map<f32,f32>#find (param $this i32) (param $key f32) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $var$4 i32)
  (local $taggedNext i32)
  local.get $this
  i32.load $0
  local.get $hashCode
  local.get $this
  i32.load $0 offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load $0
  local.set $entry
  loop $while-continue|0
   local.get $entry
   local.set $var$4
   local.get $var$4
   if
    local.get $entry
    i32.load $0 offset=8
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     f32.load $0
     local.get $key
     f32.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<f32,f32>#set:value (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store $0 offset=4
 )
 (func $~lib/map/MapEntry<f32,f32>#set:key (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store $0
 )
 (func $~lib/map/MapEntry<f32,f32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/map/Map<f32,f32>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $var$9 i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey f32)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store $0
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store $0 offset=4
  local.get $this
  i32.load $0 offset=8
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  i32.load $0 offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   local.set $var$9
   local.get $var$9
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     f32.load $0
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/map/MapEntry<f32,f32>#set:key
     local.get $newEntry
     local.get $oldEntry
     f32.load $0 offset=4
     call $~lib/map/MapEntry<f32,f32>#set:value
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<f32>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load $0
     call $~lib/map/MapEntry<f32,f32>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store $0
     local.get $newPtr
     i32.const 12
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    i32.const 12
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.get $newBuckets
  call $~lib/map/Map<f32,f32>#set:buckets
  local.get $this
  local.get $newBucketsMask
  call $~lib/map/Map<f32,f32>#set:bucketsMask
  local.get $this
  local.get $newEntries
  call $~lib/map/Map<f32,f32>#set:entries
  local.get $this
  local.get $newEntriesCapacity
  call $~lib/map/Map<f32,f32>#set:entriesCapacity
  local.get $this
  local.get $this
  i32.load $0 offset=20
  call $~lib/map/Map<f32,f32>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<f32,f32>#get:size (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $~lib/map/Map<f32,i32>#delete (param $this i32) (param $key f32) (result i32)
  (local $entry i32)
  (local $halfBucketsMask i32)
  (local $var$4 i32)
  (local $var$5 i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<f32>
  call $~lib/map/Map<f32,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $entry
  local.get $entry
  i32.load $0 offset=8
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<f32,i32>#set:taggedNext
  local.get $this
  local.get $this
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<f32,i32>#set:entriesCount
  local.get $this
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $halfBucketsMask
  local.get $halfBucketsMask
  i32.const 1
  i32.add
  i32.const 4
  local.tee $var$4
  local.get $this
  i32.load $0 offset=20
  local.tee $var$5
  local.get $var$4
  local.get $var$5
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $this
   i32.load $0 offset=20
   local.get $this
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $this
   local.get $halfBucketsMask
   call $~lib/map/Map<f32,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<f32,i32>#clear (param $this i32)
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f32,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<f32,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f32,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<f32,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<f32,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<f32,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<f32,i32>
  (local $map i32)
  (local $k f32)
  (local $var$2 i32)
  (local $k_0 f32)
  (local $var$4 i32)
  (local $keys i32)
  (local $vals i32)
  (local $keyMap i32)
  (local $valMap i32)
  (local $index i32)
  (local $var$10 i32)
  (local $key f32)
  (local $value i32)
  (local $k_1 f32)
  (local $var$14 i32)
  (local $k_2 f32)
  (local $var$16 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<f32,i32>#constructor
  local.tee $map
  i32.store $0
  f32.const 0
  local.set $k
  loop $for-loop|0
   local.get $k
   f32.const 100
   f32.lt
   local.set $var$2
   local.get $var$2
   if
    local.get $map
    local.get $k
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    i32.const 10
    local.get $k
    i32.trunc_sat_f32_s
    i32.add
    call $~lib/map/Map<f32,i32>#set
    drop
    local.get $map
    local.get $k
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    call $~lib/map/Map<f32,i32>#get
    i32.const 10
    local.get $k
    i32.trunc_sat_f32_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 9
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
  local.get $map
  call $~lib/map/Map<f32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  local.set $k_0
  loop $for-loop|1
   local.get $k_0
   f32.const 100
   f32.lt
   local.set $var$4
   local.get $var$4
   if
    local.get $map
    local.get $k_0
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<f32,i32>#get
    i32.const 10
    local.get $k_0
    i32.trunc_sat_f32_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    i32.const 20
    local.get $k_0
    i32.trunc_sat_f32_s
    i32.add
    call $~lib/map/Map<f32,i32>#set
    drop
    local.get $map
    local.get $k_0
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<f32,i32>#get
    i32.const 20
    local.get $k_0
    i32.trunc_sat_f32_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 19
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_0
    f32.const 1
    f32.add
    local.set $k_0
    br $for-loop|1
   end
  end
  local.get $map
  call $~lib/map/Map<f32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<f32,i32>#keys
  local.tee $keys
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<f32,i32>#values
  local.tee $vals
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<f32,f32>#constructor
  local.tee $keyMap
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.tee $valMap
  i32.store $0 offset=16
  i32.const 0
  local.set $index
  loop $for-loop|2
   local.get $index
   local.get $keys
   call $~lib/array/Array<f32>#get:length
   i32.lt_s
   local.set $var$10
   local.get $var$10
   if
    local.get $keys
    local.get $index
    call $~lib/array/Array<f32>#__get
    local.set $key
    local.get $vals
    local.get $index
    call $~lib/array/Array<i32>#__get
    local.set $value
    local.get $map
    local.get $key
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $value
    i32.const 20
    i32.sub
    f32.convert_i32_s
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $keyMap
    local.get $key
    local.get $key
    call $~lib/map/Map<f32,f32>#set
    drop
    local.get $valMap
    local.get $value
    i32.const 20
    i32.sub
    local.get $value
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $index
    i32.const 1
    i32.add
    local.set $index
    br $for-loop|2
   end
  end
  local.get $keyMap
  call $~lib/map/Map<f32,f32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $valMap
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  local.set $k_1
  loop $for-loop|3
   local.get $k_1
   f32.const 50
   f32.lt
   local.set $var$14
   local.get $var$14
   if
    local.get $map
    local.get $k_1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<f32,i32>#get
    i32.const 20
    local.get $k_1
    i32.trunc_sat_f32_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<f32,i32>#delete
    drop
    local.get $map
    local.get $k_1
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_1
    f32.const 1
    f32.add
    local.set $k_1
    br $for-loop|3
   end
  end
  local.get $map
  call $~lib/map/Map<f32,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  local.set $k_2
  loop $for-loop|4
   local.get $k_2
   f32.const 50
   f32.lt
   local.set $var$16
   local.get $var$16
   if
    local.get $map
    local.get $k_2
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    i32.const 10
    local.get $k_2
    i32.trunc_sat_f32_s
    i32.add
    call $~lib/map/Map<f32,i32>#set
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    call $~lib/map/Map<f32,i32>#delete
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<f32,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 54
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_2
    f32.const 1
    f32.add
    local.set $k_2
    br $for-loop|4
   end
  end
  local.get $map
  call $~lib/map/Map<f32,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $map
  call $~lib/map/Map<f32,i32>#clear
  local.get $map
  call $~lib/map/Map<f32,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<f64,i32>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<f64,i32>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<f64,i32>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<f64,i32>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<f64,i32>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<f64,i32>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=20
 )
 (func $~lib/util/hash/HASH<f64> (param $key f64) (result i32)
  (local $key_0 i64)
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
  local.get $key
  i64.reinterpret_f64
  local.set $key_0
  i32.const 0
  i32.const 374761393
  i32.add
  i32.const 8
  i32.add
  local.set $h
  local.get $h
  local.get $key_0
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
  local.get $key_0
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
  return
 )
 (func $~lib/map/Map<f64,i32>#find (param $this i32) (param $key f64) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $var$4 i32)
  (local $taggedNext i32)
  local.get $this
  i32.load $0
  local.get $hashCode
  local.get $this
  i32.load $0 offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load $0
  local.set $entry
  loop $while-continue|0
   local.get $entry
   local.set $var$4
   local.get $var$4
   if
    local.get $entry
    i32.load $0 offset=12
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     f64.load $0
     local.get $key
     f64.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<f64,i32>#has (param $this i32) (param $key f64) (result i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<f64>
  call $~lib/map/Map<f64,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/MapEntry<f64,i32>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/map/MapEntry<f64,i32>#set:key (param $0 i32) (param $1 f64)
  local.get $0
  local.get $1
  f64.store $0
 )
 (func $~lib/map/MapEntry<f64,i32>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<f64,i32>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $var$9 i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey f64)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store $0
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  i32.const 16
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store $0 offset=4
  local.get $this
  i32.load $0 offset=8
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  i32.load $0 offset=16
  i32.const 16
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   local.set $var$9
   local.get $var$9
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    i32.load $0 offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     f64.load $0
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/map/MapEntry<f64,i32>#set:key
     local.get $newEntry
     local.get $oldEntry
     i32.load $0 offset=8
     call $~lib/map/MapEntry<f64,i32>#set:value
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<f64>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load $0
     call $~lib/map/MapEntry<f64,i32>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store $0
     local.get $newPtr
     i32.const 16
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    i32.const 16
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.get $newBuckets
  call $~lib/map/Map<f64,i32>#set:buckets
  local.get $this
  local.get $newBucketsMask
  call $~lib/map/Map<f64,i32>#set:bucketsMask
  local.get $this
  local.get $newEntries
  call $~lib/map/Map<f64,i32>#set:entries
  local.get $this
  local.get $newEntriesCapacity
  call $~lib/map/Map<f64,i32>#set:entriesCapacity
  local.get $this
  local.get $this
  i32.load $0 offset=20
  call $~lib/map/Map<f64,i32>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<f64,i32>#get (param $this i32) (param $key f64) (result i32)
  (local $entry i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<f64>
  call $~lib/map/Map<f64,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 592
   i32.const 656
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $entry
  i32.load $0 offset=8
 )
 (func $~lib/map/Map<f64,i32>#get:size (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $~lib/array/Array<f64>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<f64>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/array/Array<f64>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/array/Array<f64>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/array/Array<f64>#__uset (param $this i32) (param $index i32) (param $value f64)
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 3
  i32.shl
  i32.add
  local.get $value
  f64.store $0
  i32.const 0
  drop
 )
 (func $~lib/array/Array<f64>#set:length (param $this i32) (param $newLength i32)
  local.get $this
  local.get $newLength
  i32.const 3
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.get $newLength
  call $~lib/array/Array<f64>#set:length_
 )
 (func $~lib/map/Map<f64,f64>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<f64,f64>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/map/Map<f64,f64>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<f64,f64>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/map/Map<f64,f64>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<f64,f64>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=20
 )
 (func $~lib/array/Array<f64>#get:length (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/array/Array<f64>#__get (param $this i32) (param $index i32) (result f64)
  (local $value f64)
  local.get $index
  local.get $this
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 224
   i32.const 704
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  i32.load $0 offset=4
  local.get $index
  i32.const 3
  i32.shl
  i32.add
  f64.load $0
  local.set $value
  i32.const 0
  drop
  local.get $value
 )
 (func $~lib/map/Map<f64,f64>#find (param $this i32) (param $key f64) (param $hashCode i32) (result i32)
  (local $entry i32)
  (local $var$4 i32)
  (local $taggedNext i32)
  local.get $this
  i32.load $0
  local.get $hashCode
  local.get $this
  i32.load $0 offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load $0
  local.set $entry
  loop $while-continue|0
   local.get $entry
   local.set $var$4
   local.get $var$4
   if
    local.get $entry
    i32.load $0 offset=16
    local.set $taggedNext
    local.get $taggedNext
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $entry
     f64.load $0
     local.get $key
     f64.eq
    else
     i32.const 0
    end
    if
     local.get $entry
     return
    end
    local.get $taggedNext
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $entry
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/MapEntry<f64,f64>#set:value (param $0 i32) (param $1 f64)
  local.get $0
  local.get $1
  f64.store $0 offset=8
 )
 (func $~lib/map/MapEntry<f64,f64>#set:key (param $0 i32) (param $1 f64)
  local.get $0
  local.get $1
  f64.store $0
 )
 (func $~lib/map/MapEntry<f64,f64>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/map/Map<f64,f64>#rehash (param $this i32) (param $newBucketsMask i32)
  (local $newBucketsCapacity i32)
  (local $newBuckets i32)
  (local $newEntriesCapacity i32)
  (local $newEntries i32)
  (local $oldPtr i32)
  (local $oldEnd i32)
  (local $newPtr i32)
  (local $var$9 i32)
  (local $oldEntry i32)
  (local $newEntry i32)
  (local $oldEntryKey f64)
  (local $newBucketIndex i32)
  (local $newBucketPtrBase i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $newBucketsMask
  i32.const 1
  i32.add
  local.set $newBucketsCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newBucketsCapacity
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newBuckets
  i32.store $0
  local.get $newBucketsCapacity
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $newEntriesCapacity
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $newEntriesCapacity
  i32.const 24
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $newEntries
  i32.store $0 offset=4
  local.get $this
  i32.load $0 offset=8
  local.set $oldPtr
  local.get $oldPtr
  local.get $this
  i32.load $0 offset=16
  i32.const 24
  i32.mul
  i32.add
  local.set $oldEnd
  local.get $newEntries
  local.set $newPtr
  loop $while-continue|0
   local.get $oldPtr
   local.get $oldEnd
   i32.ne
   local.set $var$9
   local.get $var$9
   if
    local.get $oldPtr
    local.set $oldEntry
    local.get $oldEntry
    i32.load $0 offset=16
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $newPtr
     local.set $newEntry
     local.get $oldEntry
     f64.load $0
     local.set $oldEntryKey
     local.get $newEntry
     local.get $oldEntryKey
     call $~lib/map/MapEntry<f64,f64>#set:key
     local.get $newEntry
     local.get $oldEntry
     f64.load $0 offset=8
     call $~lib/map/MapEntry<f64,f64>#set:value
     local.get $oldEntryKey
     call $~lib/util/hash/HASH<f64>
     local.get $newBucketsMask
     i32.and
     local.set $newBucketIndex
     local.get $newBuckets
     local.get $newBucketIndex
     i32.const 4
     i32.mul
     i32.add
     local.set $newBucketPtrBase
     local.get $newEntry
     local.get $newBucketPtrBase
     i32.load $0
     call $~lib/map/MapEntry<f64,f64>#set:taggedNext
     local.get $newBucketPtrBase
     local.get $newPtr
     i32.store $0
     local.get $newPtr
     i32.const 24
     i32.add
     local.set $newPtr
    end
    local.get $oldPtr
    i32.const 24
    i32.add
    local.set $oldPtr
    br $while-continue|0
   end
  end
  local.get $this
  local.get $newBuckets
  call $~lib/map/Map<f64,f64>#set:buckets
  local.get $this
  local.get $newBucketsMask
  call $~lib/map/Map<f64,f64>#set:bucketsMask
  local.get $this
  local.get $newEntries
  call $~lib/map/Map<f64,f64>#set:entries
  local.get $this
  local.get $newEntriesCapacity
  call $~lib/map/Map<f64,f64>#set:entriesCapacity
  local.get $this
  local.get $this
  i32.load $0 offset=20
  call $~lib/map/Map<f64,f64>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<f64,f64>#get:size (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=20
 )
 (func $~lib/map/Map<f64,i32>#delete (param $this i32) (param $key f64) (result i32)
  (local $entry i32)
  (local $halfBucketsMask i32)
  (local $var$4 i32)
  (local $var$5 i32)
  local.get $this
  local.get $key
  local.get $key
  call $~lib/util/hash/HASH<f64>
  call $~lib/map/Map<f64,i32>#find
  local.set $entry
  local.get $entry
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $entry
  local.get $entry
  i32.load $0 offset=12
  i32.const 1
  i32.or
  call $~lib/map/MapEntry<f64,i32>#set:taggedNext
  local.get $this
  local.get $this
  i32.load $0 offset=20
  i32.const 1
  i32.sub
  call $~lib/map/Map<f64,i32>#set:entriesCount
  local.get $this
  i32.load $0 offset=4
  i32.const 1
  i32.shr_u
  local.set $halfBucketsMask
  local.get $halfBucketsMask
  i32.const 1
  i32.add
  i32.const 4
  local.tee $var$4
  local.get $this
  i32.load $0 offset=20
  local.tee $var$5
  local.get $var$4
  local.get $var$5
  i32.gt_u
  select
  i32.ge_u
  if (result i32)
   local.get $this
   i32.load $0 offset=20
   local.get $this
   i32.load $0 offset=12
   i32.const 3
   i32.mul
   i32.const 4
   i32.div_s
   i32.lt_s
  else
   i32.const 0
  end
  if
   local.get $this
   local.get $halfBucketsMask
   call $~lib/map/Map<f64,i32>#rehash
  end
  i32.const 1
 )
 (func $~lib/map/Map<f64,i32>#clear (param $this i32)
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f64,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<f64,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 16
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f64,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<f64,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<f64,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<f64,i32>#set:entriesCount
 )
 (func $std/map/testNumeric<f64,i32>
  (local $map i32)
  (local $k f64)
  (local $var$2 i32)
  (local $k_0 f64)
  (local $var$4 i32)
  (local $keys i32)
  (local $vals i32)
  (local $keyMap i32)
  (local $valMap i32)
  (local $index i32)
  (local $var$10 i32)
  (local $key f64)
  (local $value i32)
  (local $k_1 f64)
  (local $var$14 i32)
  (local $k_2 f64)
  (local $var$16 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<f64,i32>#constructor
  local.tee $map
  i32.store $0
  f64.const 0
  local.set $k
  loop $for-loop|0
   local.get $k
   f64.const 100
   f64.lt
   local.set $var$2
   local.get $var$2
   if
    local.get $map
    local.get $k
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 6
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    i32.const 10
    local.get $k
    i32.trunc_sat_f64_s
    i32.add
    call $~lib/map/Map<f64,i32>#set
    drop
    local.get $map
    local.get $k
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 8
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k
    call $~lib/map/Map<f64,i32>#get
    i32.const 10
    local.get $k
    i32.trunc_sat_f64_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 9
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
  local.get $map
  call $~lib/map/Map<f64,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 11
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  local.set $k_0
  loop $for-loop|1
   local.get $k_0
   f64.const 100
   f64.lt
   local.set $var$4
   local.get $var$4
   if
    local.get $map
    local.get $k_0
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 15
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<f64,i32>#get
    i32.const 10
    local.get $k_0
    i32.trunc_sat_f64_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 16
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    i32.const 20
    local.get $k_0
    i32.trunc_sat_f64_s
    i32.add
    call $~lib/map/Map<f64,i32>#set
    drop
    local.get $map
    local.get $k_0
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 18
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_0
    call $~lib/map/Map<f64,i32>#get
    i32.const 20
    local.get $k_0
    i32.trunc_sat_f64_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 19
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_0
    f64.const 1
    f64.add
    local.set $k_0
    br $for-loop|1
   end
  end
  local.get $map
  call $~lib/map/Map<f64,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<f64,i32>#keys
  local.tee $keys
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $map
  call $~lib/map/Map<f64,i32>#values
  local.tee $vals
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<f64,f64>#constructor
  local.tee $keyMap
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $~lib/map/Map<i32,i32>#constructor
  local.tee $valMap
  i32.store $0 offset=16
  i32.const 0
  local.set $index
  loop $for-loop|2
   local.get $index
   local.get $keys
   call $~lib/array/Array<f64>#get:length
   i32.lt_s
   local.set $var$10
   local.get $var$10
   if
    local.get $keys
    local.get $index
    call $~lib/array/Array<f64>#__get
    local.set $key
    local.get $vals
    local.get $index
    call $~lib/array/Array<i32>#__get
    local.set $value
    local.get $map
    local.get $key
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 31
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $value
    i32.const 20
    i32.sub
    f64.convert_i32_s
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 32
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $keyMap
    local.get $key
    local.get $key
    call $~lib/map/Map<f64,f64>#set
    drop
    local.get $valMap
    local.get $value
    i32.const 20
    i32.sub
    local.get $value
    i32.const 20
    i32.sub
    call $~lib/map/Map<i32,i32>#set
    drop
    local.get $index
    i32.const 1
    i32.add
    local.set $index
    br $for-loop|2
   end
  end
  local.get $keyMap
  call $~lib/map/Map<f64,f64>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $valMap
  call $~lib/map/Map<i32,i32>#get:size
  i32.const 100
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  local.set $k_1
  loop $for-loop|3
   local.get $k_1
   f64.const 50
   f64.lt
   local.set $var$14
   local.get $var$14
   if
    local.get $map
    local.get $k_1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 41
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<f64,i32>#get
    i32.const 20
    local.get $k_1
    i32.trunc_sat_f64_s
    i32.add
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 42
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_1
    call $~lib/map/Map<f64,i32>#delete
    drop
    local.get $map
    local.get $k_1
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 44
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_1
    f64.const 1
    f64.add
    local.set $k_1
    br $for-loop|3
   end
  end
  local.get $map
  call $~lib/map/Map<f64,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  local.set $k_2
  loop $for-loop|4
   local.get $k_2
   f64.const 50
   f64.lt
   local.set $var$16
   local.get $var$16
   if
    local.get $map
    local.get $k_2
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 50
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    i32.const 10
    local.get $k_2
    i32.trunc_sat_f64_s
    i32.add
    call $~lib/map/Map<f64,i32>#set
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 52
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $map
    local.get $k_2
    call $~lib/map/Map<f64,i32>#delete
    drop
    local.get $map
    local.get $k_2
    call $~lib/map/Map<f64,i32>#has
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 544
     i32.const 54
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $k_2
    f64.const 1
    f64.add
    local.set $k_2
    br $for-loop|4
   end
  end
  local.get $map
  call $~lib/map/Map<f64,i32>#get:size
  i32.const 50
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 56
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $map
  call $~lib/map/Map<f64,i32>#clear
  local.get $map
  call $~lib/map/Map<f64,i32>#get:size
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/rt/itcms/__collect
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
 (func $start:std/map
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
  call $std/map/testNumeric<i8,i32>
  call $std/map/testNumeric<u8,i32>
  call $std/map/testNumeric<i16,i32>
  call $std/map/testNumeric<u16,i32>
  call $std/map/testNumeric<i32,i32>
  call $std/map/testNumeric<u32,i32>
  call $std/map/testNumeric<i64,i32>
  call $std/map/testNumeric<u64,i32>
  call $std/map/testNumeric<f32,i32>
  call $std/map/testNumeric<f64,i32>
  call $~lib/rt/itcms/__collect
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  i32.const 224
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 432
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 592
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 32
  local.get $0
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
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
 (func $~lib/map/Map<i8,i32>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  i32.load $0 offset=8
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<i8,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<i8,i32>#__visit
 )
 (func $~lib/array/Array<i8>#__visit (param $this i32) (param $cookie i32)
  i32.const 0
  drop
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<i8>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i8>#__visit
 )
 (func $~lib/array/Array<i32>#__visit (param $this i32) (param $cookie i32)
  i32.const 0
  drop
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__visit
 )
 (func $~lib/map/Map<i8,i8>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  i32.load $0 offset=8
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<i8,i8>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<i8,i8>#__visit
 )
 (func $~lib/map/Map<i32,i32>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  i32.load $0 offset=8
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<i32,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<i32,i32>#__visit
 )
 (func $~lib/map/Map<u8,i32>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  i32.load $0 offset=8
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<u8,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<u8,i32>#__visit
 )
 (func $~lib/array/Array<u8>#__visit (param $this i32) (param $cookie i32)
  i32.const 0
  drop
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<u8>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#__visit
 )
 (func $~lib/map/Map<u8,u8>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  i32.load $0 offset=8
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<u8,u8>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<u8,u8>#__visit
 )
 (func $~lib/map/Map<i16,i32>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  i32.load $0 offset=8
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<i16,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<i16,i32>#__visit
 )
 (func $~lib/array/Array<i16>#__visit (param $this i32) (param $cookie i32)
  i32.const 0
  drop
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<i16>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i16>#__visit
 )
 (func $~lib/map/Map<i16,i16>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  i32.load $0 offset=8
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<i16,i16>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<i16,i16>#__visit
 )
 (func $~lib/map/Map<u16,i32>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  i32.load $0 offset=8
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<u16,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<u16,i32>#__visit
 )
 (func $~lib/array/Array<u16>#__visit (param $this i32) (param $cookie i32)
  i32.const 0
  drop
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<u16>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u16>#__visit
 )
 (func $~lib/map/Map<u16,u16>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  i32.load $0 offset=8
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<u16,u16>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<u16,u16>#__visit
 )
 (func $~lib/map/Map<u32,i32>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  i32.load $0 offset=8
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<u32,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<u32,i32>#__visit
 )
 (func $~lib/array/Array<u32>#__visit (param $this i32) (param $cookie i32)
  i32.const 0
  drop
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<u32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#__visit
 )
 (func $~lib/map/Map<u32,u32>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  i32.load $0 offset=8
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<u32,u32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<u32,u32>#__visit
 )
 (func $~lib/map/Map<i64,i32>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  i32.load $0 offset=8
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<i64,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<i64,i32>#__visit
 )
 (func $~lib/array/Array<i64>#__visit (param $this i32) (param $cookie i32)
  i32.const 0
  drop
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<i64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i64>#__visit
 )
 (func $~lib/map/Map<i64,i64>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  i32.load $0 offset=8
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<i64,i64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<i64,i64>#__visit
 )
 (func $~lib/map/Map<u64,i32>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  i32.load $0 offset=8
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<u64,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<u64,i32>#__visit
 )
 (func $~lib/array/Array<u64>#__visit (param $this i32) (param $cookie i32)
  i32.const 0
  drop
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<u64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u64>#__visit
 )
 (func $~lib/map/Map<u64,u64>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  i32.load $0 offset=8
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<u64,u64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<u64,u64>#__visit
 )
 (func $~lib/map/Map<f32,i32>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  i32.load $0 offset=8
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<f32,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<f32,i32>#__visit
 )
 (func $~lib/array/Array<f32>#__visit (param $this i32) (param $cookie i32)
  i32.const 0
  drop
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<f32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#__visit
 )
 (func $~lib/map/Map<f32,f32>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  i32.load $0 offset=8
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<f32,f32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<f32,f32>#__visit
 )
 (func $~lib/map/Map<f64,i32>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  i32.load $0 offset=8
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<f64,i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<f64,i32>#__visit
 )
 (func $~lib/array/Array<f64>#__visit (param $this i32) (param $cookie i32)
  i32.const 0
  drop
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<f64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#__visit
 )
 (func $~lib/map/Map<f64,f64>#__visit (param $this i32) (param $cookie i32)
  (local $entries i32)
  local.get $this
  i32.load $0
  local.get $cookie
  call $~lib/rt/itcms/__visit
  local.get $this
  i32.load $0 offset=8
  local.set $entries
  i32.const 0
  drop
  local.get $entries
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<f64,f64>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<f64,f64>#__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/map/Map<f64,f64>
    block $~lib/array/Array<f64>
     block $~lib/map/Map<f64,i32>
      block $~lib/map/Map<f32,f32>
       block $~lib/array/Array<f32>
        block $~lib/map/Map<f32,i32>
         block $~lib/map/Map<u64,u64>
          block $~lib/array/Array<u64>
           block $~lib/map/Map<u64,i32>
            block $~lib/map/Map<i64,i64>
             block $~lib/array/Array<i64>
              block $~lib/map/Map<i64,i32>
               block $~lib/map/Map<u32,u32>
                block $~lib/array/Array<u32>
                 block $~lib/map/Map<u32,i32>
                  block $~lib/map/Map<u16,u16>
                   block $~lib/array/Array<u16>
                    block $~lib/map/Map<u16,i32>
                     block $~lib/map/Map<i16,i16>
                      block $~lib/array/Array<i16>
                       block $~lib/map/Map<i16,i32>
                        block $~lib/map/Map<u8,u8>
                         block $~lib/array/Array<u8>
                          block $~lib/map/Map<u8,i32>
                           block $~lib/map/Map<i32,i32>
                            block $~lib/map/Map<i8,i8>
                             block $~lib/array/Array<i32>
                              block $~lib/array/Array<i8>
                               block $~lib/map/Map<i8,i32>
                                block $~lib/arraybuffer/ArrayBufferView
                                 block $~lib/string/String
                                  block $~lib/arraybuffer/ArrayBuffer
                                   local.get $0
                                   i32.const 8
                                   i32.sub
                                   i32.load $0
                                   br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/map/Map<i8,i32> $~lib/array/Array<i8> $~lib/array/Array<i32> $~lib/map/Map<i8,i8> $~lib/map/Map<i32,i32> $~lib/map/Map<u8,i32> $~lib/array/Array<u8> $~lib/map/Map<u8,u8> $~lib/map/Map<i16,i32> $~lib/array/Array<i16> $~lib/map/Map<i16,i16> $~lib/map/Map<u16,i32> $~lib/array/Array<u16> $~lib/map/Map<u16,u16> $~lib/map/Map<u32,i32> $~lib/array/Array<u32> $~lib/map/Map<u32,u32> $~lib/map/Map<i64,i32> $~lib/array/Array<i64> $~lib/map/Map<i64,i64> $~lib/map/Map<u64,i32> $~lib/array/Array<u64> $~lib/map/Map<u64,u64> $~lib/map/Map<f32,i32> $~lib/array/Array<f32> $~lib/map/Map<f32,f32> $~lib/map/Map<f64,i32> $~lib/array/Array<f64> $~lib/map/Map<f64,f64> $invalid
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
                               call $~lib/map/Map<i8,i32>~visit
                               return
                              end
                              local.get $0
                              local.get $1
                              call $~lib/array/Array<i8>~visit
                              return
                             end
                             local.get $0
                             local.get $1
                             call $~lib/array/Array<i32>~visit
                             return
                            end
                            local.get $0
                            local.get $1
                            call $~lib/map/Map<i8,i8>~visit
                            return
                           end
                           local.get $0
                           local.get $1
                           call $~lib/map/Map<i32,i32>~visit
                           return
                          end
                          local.get $0
                          local.get $1
                          call $~lib/map/Map<u8,i32>~visit
                          return
                         end
                         local.get $0
                         local.get $1
                         call $~lib/array/Array<u8>~visit
                         return
                        end
                        local.get $0
                        local.get $1
                        call $~lib/map/Map<u8,u8>~visit
                        return
                       end
                       local.get $0
                       local.get $1
                       call $~lib/map/Map<i16,i32>~visit
                       return
                      end
                      local.get $0
                      local.get $1
                      call $~lib/array/Array<i16>~visit
                      return
                     end
                     local.get $0
                     local.get $1
                     call $~lib/map/Map<i16,i16>~visit
                     return
                    end
                    local.get $0
                    local.get $1
                    call $~lib/map/Map<u16,i32>~visit
                    return
                   end
                   local.get $0
                   local.get $1
                   call $~lib/array/Array<u16>~visit
                   return
                  end
                  local.get $0
                  local.get $1
                  call $~lib/map/Map<u16,u16>~visit
                  return
                 end
                 local.get $0
                 local.get $1
                 call $~lib/map/Map<u32,i32>~visit
                 return
                end
                local.get $0
                local.get $1
                call $~lib/array/Array<u32>~visit
                return
               end
               local.get $0
               local.get $1
               call $~lib/map/Map<u32,u32>~visit
               return
              end
              local.get $0
              local.get $1
              call $~lib/map/Map<i64,i32>~visit
              return
             end
             local.get $0
             local.get $1
             call $~lib/array/Array<i64>~visit
             return
            end
            local.get $0
            local.get $1
            call $~lib/map/Map<i64,i64>~visit
            return
           end
           local.get $0
           local.get $1
           call $~lib/map/Map<u64,i32>~visit
           return
          end
          local.get $0
          local.get $1
          call $~lib/array/Array<u64>~visit
          return
         end
         local.get $0
         local.get $1
         call $~lib/map/Map<u64,u64>~visit
         return
        end
        local.get $0
        local.get $1
        call $~lib/map/Map<f32,i32>~visit
        return
       end
       local.get $0
       local.get $1
       call $~lib/array/Array<f32>~visit
       return
      end
      local.get $0
      local.get $1
      call $~lib/map/Map<f32,f32>~visit
      return
     end
     local.get $0
     local.get $1
     call $~lib/map/Map<f64,i32>~visit
     return
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<f64>~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/map/Map<f64,f64>~visit
   return
  end
  unreachable
 )
 (func $~start
  call $start:std/map
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 17408
   i32.const 17456
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $this i32) (param $length i32) (result i32)
  (local $buffer i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $length
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 432
   i32.const 480
   i32.const 52
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $length
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store $0
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $buffer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/map/Map<i8,i32>#constructor (param $this i32) (result i32)
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
   i32.const 24
   i32.const 3
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i8,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i8,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i8,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<i8,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<i8,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<i8,i32>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<i8,i32>#set (param $this i32) (param $key i32) (param $value i32) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $var$6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  call $~lib/util/hash/HASH<i8>
  local.set $hashCode
  local.get $this
  local.get $key
  local.get $hashCode
  call $~lib/map/Map<i8,i32>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<i8,i32>#set:value
   i32.const 0
   drop
  else
   local.get $this
   i32.load $0 offset=16
   local.get $this
   i32.load $0 offset=12
   i32.eq
   if
    local.get $this
    local.get $this
    i32.load $0 offset=20
    local.get $this
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     i32.load $0 offset=4
    else
     local.get $this
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i8,i32>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   i32.load $0 offset=8
   local.tee $entries
   i32.store $0
   local.get $entries
   local.get $this
   local.get $this
   i32.load $0 offset=16
   local.tee $var$6
   i32.const 1
   i32.add
   call $~lib/map/Map<i8,i32>#set:entriesOffset
   local.get $var$6
   i32.const 12
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/map/MapEntry<i8,i32>#set:key
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<i8,i32>#set:value
   i32.const 0
   drop
   local.get $this
   local.get $this
   i32.load $0 offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<i8,i32>#set:entriesCount
   local.get $this
   i32.load $0
   local.get $hashCode
   local.get $this
   i32.load $0 offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load $0
   call $~lib/map/MapEntry<i8,i32>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/array/Array<i8>#constructor (param $this i32) (param $length i32) (result i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
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
   i32.const 16
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  call $~lib/array/Array<i8>#set:buffer
  local.get $this
  i32.const 0
  call $~lib/array/Array<i8>#set:dataStart
  local.get $this
  i32.const 0
  call $~lib/array/Array<i8>#set:byteLength
  local.get $this
  i32.const 0
  call $~lib/array/Array<i8>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 0
  i32.shr_u
  i32.gt_u
  if
   i32.const 432
   i32.const 704
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $var$2
  i32.const 8
  local.tee $var$3
  local.get $var$2
  local.get $var$3
  i32.gt_u
  select
  i32.const 0
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
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
  call $~lib/array/Array<i8>#set:buffer
  local.get $this
  local.get $buffer
  call $~lib/array/Array<i8>#set:dataStart
  local.get $this
  local.get $bufferSize
  call $~lib/array/Array<i8>#set:byteLength
  local.get $this
  local.get $length
  call $~lib/array/Array<i8>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/map/Map<i8,i32>#keys (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $keys i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<i8>#constructor
  local.tee $keys
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 12
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $keys
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     i32.load8_s $0
     call $~lib/array/Array<i8>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $keys
  local.get $length
  call $~lib/array/Array<i8>#set:length
  local.get $keys
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/array/Array<i32>#constructor (param $this i32) (param $length i32) (result i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
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
   i32.const 16
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  call $~lib/array/Array<i32>#set:buffer
  local.get $this
  i32.const 0
  call $~lib/array/Array<i32>#set:dataStart
  local.get $this
  i32.const 0
  call $~lib/array/Array<i32>#set:byteLength
  local.get $this
  i32.const 0
  call $~lib/array/Array<i32>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 432
   i32.const 704
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $var$2
  i32.const 8
  local.tee $var$3
  local.get $var$2
  local.get $var$3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
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
  call $~lib/array/Array<i32>#set:buffer
  local.get $this
  local.get $buffer
  call $~lib/array/Array<i32>#set:dataStart
  local.get $this
  local.get $bufferSize
  call $~lib/array/Array<i32>#set:byteLength
  local.get $this
  local.get $length
  call $~lib/array/Array<i32>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/map/Map<i8,i32>#values (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $values i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<i32>#constructor
  local.tee $values
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 12
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $values
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     i32.load $0 offset=4
     call $~lib/array/Array<i32>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $values
  local.get $length
  call $~lib/array/Array<i32>#set:length
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<i8,i8>#constructor (param $this i32) (result i32)
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
   i32.const 24
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i8,i8>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i8,i8>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i8,i8>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<i8,i8>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<i8,i8>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<i8,i8>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<i32,i32>#constructor (param $this i32) (result i32)
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
   i32.const 24
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i32,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i32,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i32,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<i32,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<i32,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<i32,i32>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<i8,i8>#set (param $this i32) (param $key i32) (param $value i32) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $var$6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  call $~lib/util/hash/HASH<i8>
  local.set $hashCode
  local.get $this
  local.get $key
  local.get $hashCode
  call $~lib/map/Map<i8,i8>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<i8,i8>#set:value
   i32.const 0
   drop
  else
   local.get $this
   i32.load $0 offset=16
   local.get $this
   i32.load $0 offset=12
   i32.eq
   if
    local.get $this
    local.get $this
    i32.load $0 offset=20
    local.get $this
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     i32.load $0 offset=4
    else
     local.get $this
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i8,i8>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   i32.load $0 offset=8
   local.tee $entries
   i32.store $0
   local.get $entries
   local.get $this
   local.get $this
   i32.load $0 offset=16
   local.tee $var$6
   i32.const 1
   i32.add
   call $~lib/map/Map<i8,i8>#set:entriesOffset
   local.get $var$6
   i32.const 8
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/map/MapEntry<i8,i8>#set:key
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<i8,i8>#set:value
   i32.const 0
   drop
   local.get $this
   local.get $this
   i32.load $0 offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<i8,i8>#set:entriesCount
   local.get $this
   i32.load $0
   local.get $hashCode
   local.get $this
   i32.load $0 offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load $0
   call $~lib/map/MapEntry<i8,i8>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/map/Map<i32,i32>#set (param $this i32) (param $key i32) (param $value i32) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $var$6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  call $~lib/util/hash/HASH<i32>
  local.set $hashCode
  local.get $this
  local.get $key
  local.get $hashCode
  call $~lib/map/Map<i32,i32>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<i32,i32>#set:value
   i32.const 0
   drop
  else
   local.get $this
   i32.load $0 offset=16
   local.get $this
   i32.load $0 offset=12
   i32.eq
   if
    local.get $this
    local.get $this
    i32.load $0 offset=20
    local.get $this
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     i32.load $0 offset=4
    else
     local.get $this
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i32,i32>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   i32.load $0 offset=8
   local.tee $entries
   i32.store $0
   local.get $entries
   local.get $this
   local.get $this
   i32.load $0 offset=16
   local.tee $var$6
   i32.const 1
   i32.add
   call $~lib/map/Map<i32,i32>#set:entriesOffset
   local.get $var$6
   i32.const 12
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/map/MapEntry<i32,i32>#set:key
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<i32,i32>#set:value
   i32.const 0
   drop
   local.get $this
   local.get $this
   i32.load $0 offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<i32,i32>#set:entriesCount
   local.get $this
   i32.load $0
   local.get $hashCode
   local.get $this
   i32.load $0 offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load $0
   call $~lib/map/MapEntry<i32,i32>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/map/Map<u8,i32>#constructor (param $this i32) (result i32)
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
   i32.const 24
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u8,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u8,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u8,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<u8,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<u8,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<u8,i32>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<u8,i32>#set (param $this i32) (param $key i32) (param $value i32) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $var$6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  call $~lib/util/hash/HASH<u8>
  local.set $hashCode
  local.get $this
  local.get $key
  local.get $hashCode
  call $~lib/map/Map<u8,i32>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<u8,i32>#set:value
   i32.const 0
   drop
  else
   local.get $this
   i32.load $0 offset=16
   local.get $this
   i32.load $0 offset=12
   i32.eq
   if
    local.get $this
    local.get $this
    i32.load $0 offset=20
    local.get $this
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     i32.load $0 offset=4
    else
     local.get $this
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u8,i32>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   i32.load $0 offset=8
   local.tee $entries
   i32.store $0
   local.get $entries
   local.get $this
   local.get $this
   i32.load $0 offset=16
   local.tee $var$6
   i32.const 1
   i32.add
   call $~lib/map/Map<u8,i32>#set:entriesOffset
   local.get $var$6
   i32.const 12
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/map/MapEntry<u8,i32>#set:key
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<u8,i32>#set:value
   i32.const 0
   drop
   local.get $this
   local.get $this
   i32.load $0 offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<u8,i32>#set:entriesCount
   local.get $this
   i32.load $0
   local.get $hashCode
   local.get $this
   i32.load $0 offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load $0
   call $~lib/map/MapEntry<u8,i32>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/array/Array<u8>#constructor (param $this i32) (param $length i32) (result i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
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
   i32.const 16
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  call $~lib/array/Array<u8>#set:buffer
  local.get $this
  i32.const 0
  call $~lib/array/Array<u8>#set:dataStart
  local.get $this
  i32.const 0
  call $~lib/array/Array<u8>#set:byteLength
  local.get $this
  i32.const 0
  call $~lib/array/Array<u8>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 0
  i32.shr_u
  i32.gt_u
  if
   i32.const 432
   i32.const 704
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $var$2
  i32.const 8
  local.tee $var$3
  local.get $var$2
  local.get $var$3
  i32.gt_u
  select
  i32.const 0
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
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
  call $~lib/array/Array<u8>#set:buffer
  local.get $this
  local.get $buffer
  call $~lib/array/Array<u8>#set:dataStart
  local.get $this
  local.get $bufferSize
  call $~lib/array/Array<u8>#set:byteLength
  local.get $this
  local.get $length
  call $~lib/array/Array<u8>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/map/Map<u8,i32>#keys (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $keys i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<u8>#constructor
  local.tee $keys
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 12
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $keys
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     i32.load8_u $0
     call $~lib/array/Array<u8>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $keys
  local.get $length
  call $~lib/array/Array<u8>#set:length
  local.get $keys
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<u8,i32>#values (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $values i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<i32>#constructor
  local.tee $values
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 12
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $values
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     i32.load $0 offset=4
     call $~lib/array/Array<i32>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $values
  local.get $length
  call $~lib/array/Array<i32>#set:length
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<u8,u8>#constructor (param $this i32) (result i32)
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
   i32.const 24
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u8,u8>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u8,u8>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u8,u8>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<u8,u8>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<u8,u8>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<u8,u8>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<u8,u8>#set (param $this i32) (param $key i32) (param $value i32) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $var$6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  call $~lib/util/hash/HASH<u8>
  local.set $hashCode
  local.get $this
  local.get $key
  local.get $hashCode
  call $~lib/map/Map<u8,u8>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<u8,u8>#set:value
   i32.const 0
   drop
  else
   local.get $this
   i32.load $0 offset=16
   local.get $this
   i32.load $0 offset=12
   i32.eq
   if
    local.get $this
    local.get $this
    i32.load $0 offset=20
    local.get $this
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     i32.load $0 offset=4
    else
     local.get $this
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u8,u8>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   i32.load $0 offset=8
   local.tee $entries
   i32.store $0
   local.get $entries
   local.get $this
   local.get $this
   i32.load $0 offset=16
   local.tee $var$6
   i32.const 1
   i32.add
   call $~lib/map/Map<u8,u8>#set:entriesOffset
   local.get $var$6
   i32.const 8
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/map/MapEntry<u8,u8>#set:key
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<u8,u8>#set:value
   i32.const 0
   drop
   local.get $this
   local.get $this
   i32.load $0 offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<u8,u8>#set:entriesCount
   local.get $this
   i32.load $0
   local.get $hashCode
   local.get $this
   i32.load $0 offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load $0
   call $~lib/map/MapEntry<u8,u8>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/map/Map<i16,i32>#constructor (param $this i32) (result i32)
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
   i32.const 24
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i16,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i16,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i16,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<i16,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<i16,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<i16,i32>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<i16,i32>#set (param $this i32) (param $key i32) (param $value i32) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $var$6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  call $~lib/util/hash/HASH<i16>
  local.set $hashCode
  local.get $this
  local.get $key
  local.get $hashCode
  call $~lib/map/Map<i16,i32>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<i16,i32>#set:value
   i32.const 0
   drop
  else
   local.get $this
   i32.load $0 offset=16
   local.get $this
   i32.load $0 offset=12
   i32.eq
   if
    local.get $this
    local.get $this
    i32.load $0 offset=20
    local.get $this
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     i32.load $0 offset=4
    else
     local.get $this
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i16,i32>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   i32.load $0 offset=8
   local.tee $entries
   i32.store $0
   local.get $entries
   local.get $this
   local.get $this
   i32.load $0 offset=16
   local.tee $var$6
   i32.const 1
   i32.add
   call $~lib/map/Map<i16,i32>#set:entriesOffset
   local.get $var$6
   i32.const 12
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/map/MapEntry<i16,i32>#set:key
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<i16,i32>#set:value
   i32.const 0
   drop
   local.get $this
   local.get $this
   i32.load $0 offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<i16,i32>#set:entriesCount
   local.get $this
   i32.load $0
   local.get $hashCode
   local.get $this
   i32.load $0 offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load $0
   call $~lib/map/MapEntry<i16,i32>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/array/Array<i16>#constructor (param $this i32) (param $length i32) (result i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
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
   i32.const 16
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  call $~lib/array/Array<i16>#set:buffer
  local.get $this
  i32.const 0
  call $~lib/array/Array<i16>#set:dataStart
  local.get $this
  i32.const 0
  call $~lib/array/Array<i16>#set:byteLength
  local.get $this
  i32.const 0
  call $~lib/array/Array<i16>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 1
  i32.shr_u
  i32.gt_u
  if
   i32.const 432
   i32.const 704
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $var$2
  i32.const 8
  local.tee $var$3
  local.get $var$2
  local.get $var$3
  i32.gt_u
  select
  i32.const 1
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
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
  call $~lib/array/Array<i16>#set:buffer
  local.get $this
  local.get $buffer
  call $~lib/array/Array<i16>#set:dataStart
  local.get $this
  local.get $bufferSize
  call $~lib/array/Array<i16>#set:byteLength
  local.get $this
  local.get $length
  call $~lib/array/Array<i16>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/map/Map<i16,i32>#keys (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $keys i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<i16>#constructor
  local.tee $keys
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 12
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $keys
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     i32.load16_s $0
     call $~lib/array/Array<i16>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $keys
  local.get $length
  call $~lib/array/Array<i16>#set:length
  local.get $keys
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<i16,i32>#values (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $values i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<i32>#constructor
  local.tee $values
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 12
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $values
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     i32.load $0 offset=4
     call $~lib/array/Array<i32>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $values
  local.get $length
  call $~lib/array/Array<i32>#set:length
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<i16,i16>#constructor (param $this i32) (result i32)
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
   i32.const 24
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i16,i16>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i16,i16>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i16,i16>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<i16,i16>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<i16,i16>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<i16,i16>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<i16,i16>#set (param $this i32) (param $key i32) (param $value i32) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $var$6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  call $~lib/util/hash/HASH<i16>
  local.set $hashCode
  local.get $this
  local.get $key
  local.get $hashCode
  call $~lib/map/Map<i16,i16>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<i16,i16>#set:value
   i32.const 0
   drop
  else
   local.get $this
   i32.load $0 offset=16
   local.get $this
   i32.load $0 offset=12
   i32.eq
   if
    local.get $this
    local.get $this
    i32.load $0 offset=20
    local.get $this
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     i32.load $0 offset=4
    else
     local.get $this
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i16,i16>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   i32.load $0 offset=8
   local.tee $entries
   i32.store $0
   local.get $entries
   local.get $this
   local.get $this
   i32.load $0 offset=16
   local.tee $var$6
   i32.const 1
   i32.add
   call $~lib/map/Map<i16,i16>#set:entriesOffset
   local.get $var$6
   i32.const 8
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/map/MapEntry<i16,i16>#set:key
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<i16,i16>#set:value
   i32.const 0
   drop
   local.get $this
   local.get $this
   i32.load $0 offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<i16,i16>#set:entriesCount
   local.get $this
   i32.load $0
   local.get $hashCode
   local.get $this
   i32.load $0 offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load $0
   call $~lib/map/MapEntry<i16,i16>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/map/Map<u16,i32>#constructor (param $this i32) (result i32)
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
   i32.const 24
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u16,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u16,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u16,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<u16,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<u16,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<u16,i32>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<u16,i32>#set (param $this i32) (param $key i32) (param $value i32) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $var$6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  call $~lib/util/hash/HASH<u16>
  local.set $hashCode
  local.get $this
  local.get $key
  local.get $hashCode
  call $~lib/map/Map<u16,i32>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<u16,i32>#set:value
   i32.const 0
   drop
  else
   local.get $this
   i32.load $0 offset=16
   local.get $this
   i32.load $0 offset=12
   i32.eq
   if
    local.get $this
    local.get $this
    i32.load $0 offset=20
    local.get $this
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     i32.load $0 offset=4
    else
     local.get $this
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u16,i32>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   i32.load $0 offset=8
   local.tee $entries
   i32.store $0
   local.get $entries
   local.get $this
   local.get $this
   i32.load $0 offset=16
   local.tee $var$6
   i32.const 1
   i32.add
   call $~lib/map/Map<u16,i32>#set:entriesOffset
   local.get $var$6
   i32.const 12
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/map/MapEntry<u16,i32>#set:key
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<u16,i32>#set:value
   i32.const 0
   drop
   local.get $this
   local.get $this
   i32.load $0 offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<u16,i32>#set:entriesCount
   local.get $this
   i32.load $0
   local.get $hashCode
   local.get $this
   i32.load $0 offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load $0
   call $~lib/map/MapEntry<u16,i32>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/array/Array<u16>#constructor (param $this i32) (param $length i32) (result i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
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
   i32.const 16
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  call $~lib/array/Array<u16>#set:buffer
  local.get $this
  i32.const 0
  call $~lib/array/Array<u16>#set:dataStart
  local.get $this
  i32.const 0
  call $~lib/array/Array<u16>#set:byteLength
  local.get $this
  i32.const 0
  call $~lib/array/Array<u16>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 1
  i32.shr_u
  i32.gt_u
  if
   i32.const 432
   i32.const 704
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $var$2
  i32.const 8
  local.tee $var$3
  local.get $var$2
  local.get $var$3
  i32.gt_u
  select
  i32.const 1
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
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
  call $~lib/array/Array<u16>#set:buffer
  local.get $this
  local.get $buffer
  call $~lib/array/Array<u16>#set:dataStart
  local.get $this
  local.get $bufferSize
  call $~lib/array/Array<u16>#set:byteLength
  local.get $this
  local.get $length
  call $~lib/array/Array<u16>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/map/Map<u16,i32>#keys (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $keys i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<u16>#constructor
  local.tee $keys
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 12
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $keys
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     i32.load16_u $0
     call $~lib/array/Array<u16>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $keys
  local.get $length
  call $~lib/array/Array<u16>#set:length
  local.get $keys
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<u16,i32>#values (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $values i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<i32>#constructor
  local.tee $values
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 12
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $values
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     i32.load $0 offset=4
     call $~lib/array/Array<i32>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $values
  local.get $length
  call $~lib/array/Array<i32>#set:length
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<u16,u16>#constructor (param $this i32) (result i32)
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
   i32.const 24
   i32.const 16
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u16,u16>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u16,u16>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 8
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u16,u16>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<u16,u16>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<u16,u16>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<u16,u16>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<u16,u16>#set (param $this i32) (param $key i32) (param $value i32) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $var$6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  call $~lib/util/hash/HASH<u16>
  local.set $hashCode
  local.get $this
  local.get $key
  local.get $hashCode
  call $~lib/map/Map<u16,u16>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<u16,u16>#set:value
   i32.const 0
   drop
  else
   local.get $this
   i32.load $0 offset=16
   local.get $this
   i32.load $0 offset=12
   i32.eq
   if
    local.get $this
    local.get $this
    i32.load $0 offset=20
    local.get $this
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     i32.load $0 offset=4
    else
     local.get $this
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u16,u16>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   i32.load $0 offset=8
   local.tee $entries
   i32.store $0
   local.get $entries
   local.get $this
   local.get $this
   i32.load $0 offset=16
   local.tee $var$6
   i32.const 1
   i32.add
   call $~lib/map/Map<u16,u16>#set:entriesOffset
   local.get $var$6
   i32.const 8
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/map/MapEntry<u16,u16>#set:key
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<u16,u16>#set:value
   i32.const 0
   drop
   local.get $this
   local.get $this
   i32.load $0 offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<u16,u16>#set:entriesCount
   local.get $this
   i32.load $0
   local.get $hashCode
   local.get $this
   i32.load $0 offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load $0
   call $~lib/map/MapEntry<u16,u16>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/map/Map<i32,i32>#keys (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $keys i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<i32>#constructor
  local.tee $keys
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 12
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $keys
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     i32.load $0
     call $~lib/array/Array<i32>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $keys
  local.get $length
  call $~lib/array/Array<i32>#set:length
  local.get $keys
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<i32,i32>#values (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $values i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<i32>#constructor
  local.tee $values
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 12
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $values
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     i32.load $0 offset=4
     call $~lib/array/Array<i32>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $values
  local.get $length
  call $~lib/array/Array<i32>#set:length
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<u32,i32>#constructor (param $this i32) (result i32)
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
   i32.const 24
   i32.const 17
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u32,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u32,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u32,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<u32,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<u32,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<u32,i32>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<u32,i32>#set (param $this i32) (param $key i32) (param $value i32) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $var$6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  call $~lib/util/hash/HASH<u32>
  local.set $hashCode
  local.get $this
  local.get $key
  local.get $hashCode
  call $~lib/map/Map<u32,i32>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<u32,i32>#set:value
   i32.const 0
   drop
  else
   local.get $this
   i32.load $0 offset=16
   local.get $this
   i32.load $0 offset=12
   i32.eq
   if
    local.get $this
    local.get $this
    i32.load $0 offset=20
    local.get $this
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     i32.load $0 offset=4
    else
     local.get $this
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u32,i32>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   i32.load $0 offset=8
   local.tee $entries
   i32.store $0
   local.get $entries
   local.get $this
   local.get $this
   i32.load $0 offset=16
   local.tee $var$6
   i32.const 1
   i32.add
   call $~lib/map/Map<u32,i32>#set:entriesOffset
   local.get $var$6
   i32.const 12
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/map/MapEntry<u32,i32>#set:key
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<u32,i32>#set:value
   i32.const 0
   drop
   local.get $this
   local.get $this
   i32.load $0 offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<u32,i32>#set:entriesCount
   local.get $this
   i32.load $0
   local.get $hashCode
   local.get $this
   i32.load $0 offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load $0
   call $~lib/map/MapEntry<u32,i32>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/array/Array<u32>#constructor (param $this i32) (param $length i32) (result i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
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
   i32.const 16
   i32.const 18
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  call $~lib/array/Array<u32>#set:buffer
  local.get $this
  i32.const 0
  call $~lib/array/Array<u32>#set:dataStart
  local.get $this
  i32.const 0
  call $~lib/array/Array<u32>#set:byteLength
  local.get $this
  i32.const 0
  call $~lib/array/Array<u32>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 432
   i32.const 704
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $var$2
  i32.const 8
  local.tee $var$3
  local.get $var$2
  local.get $var$3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
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
  call $~lib/array/Array<u32>#set:buffer
  local.get $this
  local.get $buffer
  call $~lib/array/Array<u32>#set:dataStart
  local.get $this
  local.get $bufferSize
  call $~lib/array/Array<u32>#set:byteLength
  local.get $this
  local.get $length
  call $~lib/array/Array<u32>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/map/Map<u32,i32>#keys (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $keys i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<u32>#constructor
  local.tee $keys
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 12
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $keys
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     i32.load $0
     call $~lib/array/Array<u32>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $keys
  local.get $length
  call $~lib/array/Array<u32>#set:length
  local.get $keys
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<u32,i32>#values (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $values i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<i32>#constructor
  local.tee $values
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 12
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $values
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     i32.load $0 offset=4
     call $~lib/array/Array<i32>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $values
  local.get $length
  call $~lib/array/Array<i32>#set:length
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<u32,u32>#constructor (param $this i32) (result i32)
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
   i32.const 24
   i32.const 19
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u32,u32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u32,u32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u32,u32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<u32,u32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<u32,u32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<u32,u32>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<u32,u32>#set (param $this i32) (param $key i32) (param $value i32) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $var$6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  call $~lib/util/hash/HASH<u32>
  local.set $hashCode
  local.get $this
  local.get $key
  local.get $hashCode
  call $~lib/map/Map<u32,u32>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<u32,u32>#set:value
   i32.const 0
   drop
  else
   local.get $this
   i32.load $0 offset=16
   local.get $this
   i32.load $0 offset=12
   i32.eq
   if
    local.get $this
    local.get $this
    i32.load $0 offset=20
    local.get $this
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     i32.load $0 offset=4
    else
     local.get $this
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u32,u32>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   i32.load $0 offset=8
   local.tee $entries
   i32.store $0
   local.get $entries
   local.get $this
   local.get $this
   i32.load $0 offset=16
   local.tee $var$6
   i32.const 1
   i32.add
   call $~lib/map/Map<u32,u32>#set:entriesOffset
   local.get $var$6
   i32.const 12
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/map/MapEntry<u32,u32>#set:key
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<u32,u32>#set:value
   i32.const 0
   drop
   local.get $this
   local.get $this
   i32.load $0 offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<u32,u32>#set:entriesCount
   local.get $this
   i32.load $0
   local.get $hashCode
   local.get $this
   i32.load $0 offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load $0
   call $~lib/map/MapEntry<u32,u32>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/map/Map<i64,i32>#constructor (param $this i32) (result i32)
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
   i32.const 24
   i32.const 20
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i64,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i64,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 16
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i64,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<i64,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<i64,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<i64,i32>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<i64,i32>#set (param $this i32) (param $key i64) (param $value i32) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $var$6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  call $~lib/util/hash/HASH<i64>
  local.set $hashCode
  local.get $this
  local.get $key
  local.get $hashCode
  call $~lib/map/Map<i64,i32>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<i64,i32>#set:value
   i32.const 0
   drop
  else
   local.get $this
   i32.load $0 offset=16
   local.get $this
   i32.load $0 offset=12
   i32.eq
   if
    local.get $this
    local.get $this
    i32.load $0 offset=20
    local.get $this
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     i32.load $0 offset=4
    else
     local.get $this
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i64,i32>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   i32.load $0 offset=8
   local.tee $entries
   i32.store $0
   local.get $entries
   local.get $this
   local.get $this
   i32.load $0 offset=16
   local.tee $var$6
   i32.const 1
   i32.add
   call $~lib/map/Map<i64,i32>#set:entriesOffset
   local.get $var$6
   i32.const 16
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/map/MapEntry<i64,i32>#set:key
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<i64,i32>#set:value
   i32.const 0
   drop
   local.get $this
   local.get $this
   i32.load $0 offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<i64,i32>#set:entriesCount
   local.get $this
   i32.load $0
   local.get $hashCode
   local.get $this
   i32.load $0 offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load $0
   call $~lib/map/MapEntry<i64,i32>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/array/Array<i64>#constructor (param $this i32) (param $length i32) (result i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
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
   i32.const 16
   i32.const 21
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  call $~lib/array/Array<i64>#set:buffer
  local.get $this
  i32.const 0
  call $~lib/array/Array<i64>#set:dataStart
  local.get $this
  i32.const 0
  call $~lib/array/Array<i64>#set:byteLength
  local.get $this
  i32.const 0
  call $~lib/array/Array<i64>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 3
  i32.shr_u
  i32.gt_u
  if
   i32.const 432
   i32.const 704
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $var$2
  i32.const 8
  local.tee $var$3
  local.get $var$2
  local.get $var$3
  i32.gt_u
  select
  i32.const 3
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
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
  call $~lib/array/Array<i64>#set:buffer
  local.get $this
  local.get $buffer
  call $~lib/array/Array<i64>#set:dataStart
  local.get $this
  local.get $bufferSize
  call $~lib/array/Array<i64>#set:byteLength
  local.get $this
  local.get $length
  call $~lib/array/Array<i64>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/map/Map<i64,i32>#keys (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $keys i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<i64>#constructor
  local.tee $keys
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 16
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $keys
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     i64.load $0
     call $~lib/array/Array<i64>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $keys
  local.get $length
  call $~lib/array/Array<i64>#set:length
  local.get $keys
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<i64,i32>#values (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $values i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<i32>#constructor
  local.tee $values
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 16
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $values
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     i32.load $0 offset=8
     call $~lib/array/Array<i32>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $values
  local.get $length
  call $~lib/array/Array<i32>#set:length
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<i64,i64>#constructor (param $this i32) (result i32)
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
   i32.const 24
   i32.const 22
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i64,i64>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<i64,i64>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 24
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<i64,i64>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<i64,i64>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<i64,i64>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<i64,i64>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<i64,i64>#set (param $this i32) (param $key i64) (param $value i64) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $var$6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  call $~lib/util/hash/HASH<i64>
  local.set $hashCode
  local.get $this
  local.get $key
  local.get $hashCode
  call $~lib/map/Map<i64,i64>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<i64,i64>#set:value
   i32.const 0
   drop
  else
   local.get $this
   i32.load $0 offset=16
   local.get $this
   i32.load $0 offset=12
   i32.eq
   if
    local.get $this
    local.get $this
    i32.load $0 offset=20
    local.get $this
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     i32.load $0 offset=4
    else
     local.get $this
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<i64,i64>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   i32.load $0 offset=8
   local.tee $entries
   i32.store $0
   local.get $entries
   local.get $this
   local.get $this
   i32.load $0 offset=16
   local.tee $var$6
   i32.const 1
   i32.add
   call $~lib/map/Map<i64,i64>#set:entriesOffset
   local.get $var$6
   i32.const 24
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/map/MapEntry<i64,i64>#set:key
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<i64,i64>#set:value
   i32.const 0
   drop
   local.get $this
   local.get $this
   i32.load $0 offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<i64,i64>#set:entriesCount
   local.get $this
   i32.load $0
   local.get $hashCode
   local.get $this
   i32.load $0 offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load $0
   call $~lib/map/MapEntry<i64,i64>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/map/Map<u64,i32>#constructor (param $this i32) (result i32)
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
   i32.const 24
   i32.const 23
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u64,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u64,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 16
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u64,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<u64,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<u64,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<u64,i32>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<u64,i32>#set (param $this i32) (param $key i64) (param $value i32) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $var$6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  call $~lib/util/hash/HASH<u64>
  local.set $hashCode
  local.get $this
  local.get $key
  local.get $hashCode
  call $~lib/map/Map<u64,i32>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<u64,i32>#set:value
   i32.const 0
   drop
  else
   local.get $this
   i32.load $0 offset=16
   local.get $this
   i32.load $0 offset=12
   i32.eq
   if
    local.get $this
    local.get $this
    i32.load $0 offset=20
    local.get $this
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     i32.load $0 offset=4
    else
     local.get $this
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u64,i32>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   i32.load $0 offset=8
   local.tee $entries
   i32.store $0
   local.get $entries
   local.get $this
   local.get $this
   i32.load $0 offset=16
   local.tee $var$6
   i32.const 1
   i32.add
   call $~lib/map/Map<u64,i32>#set:entriesOffset
   local.get $var$6
   i32.const 16
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/map/MapEntry<u64,i32>#set:key
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<u64,i32>#set:value
   i32.const 0
   drop
   local.get $this
   local.get $this
   i32.load $0 offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<u64,i32>#set:entriesCount
   local.get $this
   i32.load $0
   local.get $hashCode
   local.get $this
   i32.load $0 offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load $0
   call $~lib/map/MapEntry<u64,i32>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/array/Array<u64>#constructor (param $this i32) (param $length i32) (result i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
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
   i32.const 16
   i32.const 24
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  call $~lib/array/Array<u64>#set:buffer
  local.get $this
  i32.const 0
  call $~lib/array/Array<u64>#set:dataStart
  local.get $this
  i32.const 0
  call $~lib/array/Array<u64>#set:byteLength
  local.get $this
  i32.const 0
  call $~lib/array/Array<u64>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 3
  i32.shr_u
  i32.gt_u
  if
   i32.const 432
   i32.const 704
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $var$2
  i32.const 8
  local.tee $var$3
  local.get $var$2
  local.get $var$3
  i32.gt_u
  select
  i32.const 3
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
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
  call $~lib/array/Array<u64>#set:buffer
  local.get $this
  local.get $buffer
  call $~lib/array/Array<u64>#set:dataStart
  local.get $this
  local.get $bufferSize
  call $~lib/array/Array<u64>#set:byteLength
  local.get $this
  local.get $length
  call $~lib/array/Array<u64>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/map/Map<u64,i32>#keys (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $keys i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<u64>#constructor
  local.tee $keys
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 16
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $keys
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     i64.load $0
     call $~lib/array/Array<u64>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $keys
  local.get $length
  call $~lib/array/Array<u64>#set:length
  local.get $keys
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<u64,i32>#values (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $values i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<i32>#constructor
  local.tee $values
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 16
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $values
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     i32.load $0 offset=8
     call $~lib/array/Array<i32>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $values
  local.get $length
  call $~lib/array/Array<i32>#set:length
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<u64,u64>#constructor (param $this i32) (result i32)
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
   i32.const 24
   i32.const 25
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u64,u64>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<u64,u64>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 24
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<u64,u64>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<u64,u64>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<u64,u64>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<u64,u64>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<u64,u64>#set (param $this i32) (param $key i64) (param $value i64) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $var$6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  call $~lib/util/hash/HASH<u64>
  local.set $hashCode
  local.get $this
  local.get $key
  local.get $hashCode
  call $~lib/map/Map<u64,u64>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<u64,u64>#set:value
   i32.const 0
   drop
  else
   local.get $this
   i32.load $0 offset=16
   local.get $this
   i32.load $0 offset=12
   i32.eq
   if
    local.get $this
    local.get $this
    i32.load $0 offset=20
    local.get $this
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     i32.load $0 offset=4
    else
     local.get $this
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<u64,u64>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   i32.load $0 offset=8
   local.tee $entries
   i32.store $0
   local.get $entries
   local.get $this
   local.get $this
   i32.load $0 offset=16
   local.tee $var$6
   i32.const 1
   i32.add
   call $~lib/map/Map<u64,u64>#set:entriesOffset
   local.get $var$6
   i32.const 24
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/map/MapEntry<u64,u64>#set:key
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<u64,u64>#set:value
   i32.const 0
   drop
   local.get $this
   local.get $this
   i32.load $0 offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<u64,u64>#set:entriesCount
   local.get $this
   i32.load $0
   local.get $hashCode
   local.get $this
   i32.load $0 offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load $0
   call $~lib/map/MapEntry<u64,u64>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/map/Map<f32,i32>#constructor (param $this i32) (result i32)
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
   i32.const 24
   i32.const 26
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f32,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<f32,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f32,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<f32,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<f32,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<f32,i32>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<f32,i32>#set (param $this i32) (param $key f32) (param $value i32) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $var$6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  call $~lib/util/hash/HASH<f32>
  local.set $hashCode
  local.get $this
  local.get $key
  local.get $hashCode
  call $~lib/map/Map<f32,i32>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<f32,i32>#set:value
   i32.const 0
   drop
  else
   local.get $this
   i32.load $0 offset=16
   local.get $this
   i32.load $0 offset=12
   i32.eq
   if
    local.get $this
    local.get $this
    i32.load $0 offset=20
    local.get $this
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     i32.load $0 offset=4
    else
     local.get $this
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<f32,i32>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   i32.load $0 offset=8
   local.tee $entries
   i32.store $0
   local.get $entries
   local.get $this
   local.get $this
   i32.load $0 offset=16
   local.tee $var$6
   i32.const 1
   i32.add
   call $~lib/map/Map<f32,i32>#set:entriesOffset
   local.get $var$6
   i32.const 12
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/map/MapEntry<f32,i32>#set:key
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<f32,i32>#set:value
   i32.const 0
   drop
   local.get $this
   local.get $this
   i32.load $0 offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<f32,i32>#set:entriesCount
   local.get $this
   i32.load $0
   local.get $hashCode
   local.get $this
   i32.load $0 offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load $0
   call $~lib/map/MapEntry<f32,i32>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/array/Array<f32>#constructor (param $this i32) (param $length i32) (result i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
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
   i32.const 16
   i32.const 27
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  call $~lib/array/Array<f32>#set:buffer
  local.get $this
  i32.const 0
  call $~lib/array/Array<f32>#set:dataStart
  local.get $this
  i32.const 0
  call $~lib/array/Array<f32>#set:byteLength
  local.get $this
  i32.const 0
  call $~lib/array/Array<f32>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 432
   i32.const 704
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $var$2
  i32.const 8
  local.tee $var$3
  local.get $var$2
  local.get $var$3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
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
  call $~lib/array/Array<f32>#set:buffer
  local.get $this
  local.get $buffer
  call $~lib/array/Array<f32>#set:dataStart
  local.get $this
  local.get $bufferSize
  call $~lib/array/Array<f32>#set:byteLength
  local.get $this
  local.get $length
  call $~lib/array/Array<f32>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/map/Map<f32,i32>#keys (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $keys i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<f32>#constructor
  local.tee $keys
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 12
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $keys
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     f32.load $0
     call $~lib/array/Array<f32>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $keys
  local.get $length
  call $~lib/array/Array<f32>#set:length
  local.get $keys
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<f32,i32>#values (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $values i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<i32>#constructor
  local.tee $values
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 12
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $values
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     i32.load $0 offset=4
     call $~lib/array/Array<i32>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $values
  local.get $length
  call $~lib/array/Array<i32>#set:length
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<f32,f32>#constructor (param $this i32) (result i32)
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
   i32.const 24
   i32.const 28
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f32,f32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<f32,f32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f32,f32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<f32,f32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<f32,f32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<f32,f32>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<f32,f32>#set (param $this i32) (param $key f32) (param $value f32) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $var$6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  call $~lib/util/hash/HASH<f32>
  local.set $hashCode
  local.get $this
  local.get $key
  local.get $hashCode
  call $~lib/map/Map<f32,f32>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<f32,f32>#set:value
   i32.const 0
   drop
  else
   local.get $this
   i32.load $0 offset=16
   local.get $this
   i32.load $0 offset=12
   i32.eq
   if
    local.get $this
    local.get $this
    i32.load $0 offset=20
    local.get $this
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     i32.load $0 offset=4
    else
     local.get $this
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<f32,f32>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   i32.load $0 offset=8
   local.tee $entries
   i32.store $0
   local.get $entries
   local.get $this
   local.get $this
   i32.load $0 offset=16
   local.tee $var$6
   i32.const 1
   i32.add
   call $~lib/map/Map<f32,f32>#set:entriesOffset
   local.get $var$6
   i32.const 12
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/map/MapEntry<f32,f32>#set:key
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<f32,f32>#set:value
   i32.const 0
   drop
   local.get $this
   local.get $this
   i32.load $0 offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<f32,f32>#set:entriesCount
   local.get $this
   i32.load $0
   local.get $hashCode
   local.get $this
   i32.load $0 offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load $0
   call $~lib/map/MapEntry<f32,f32>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/map/Map<f64,i32>#constructor (param $this i32) (result i32)
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
   i32.const 24
   i32.const 29
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f64,i32>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<f64,i32>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 16
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f64,i32>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<f64,i32>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<f64,i32>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<f64,i32>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<f64,i32>#set (param $this i32) (param $key f64) (param $value i32) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $var$6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  call $~lib/util/hash/HASH<f64>
  local.set $hashCode
  local.get $this
  local.get $key
  local.get $hashCode
  call $~lib/map/Map<f64,i32>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<f64,i32>#set:value
   i32.const 0
   drop
  else
   local.get $this
   i32.load $0 offset=16
   local.get $this
   i32.load $0 offset=12
   i32.eq
   if
    local.get $this
    local.get $this
    i32.load $0 offset=20
    local.get $this
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     i32.load $0 offset=4
    else
     local.get $this
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<f64,i32>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   i32.load $0 offset=8
   local.tee $entries
   i32.store $0
   local.get $entries
   local.get $this
   local.get $this
   i32.load $0 offset=16
   local.tee $var$6
   i32.const 1
   i32.add
   call $~lib/map/Map<f64,i32>#set:entriesOffset
   local.get $var$6
   i32.const 16
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/map/MapEntry<f64,i32>#set:key
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<f64,i32>#set:value
   i32.const 0
   drop
   local.get $this
   local.get $this
   i32.load $0 offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<f64,i32>#set:entriesCount
   local.get $this
   i32.load $0
   local.get $hashCode
   local.get $this
   i32.load $0 offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load $0
   call $~lib/map/MapEntry<f64,i32>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/array/Array<f64>#constructor (param $this i32) (param $length i32) (result i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $6 i32)
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
   i32.const 16
   i32.const 30
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  call $~lib/array/Array<f64>#set:buffer
  local.get $this
  i32.const 0
  call $~lib/array/Array<f64>#set:dataStart
  local.get $this
  i32.const 0
  call $~lib/array/Array<f64>#set:byteLength
  local.get $this
  i32.const 0
  call $~lib/array/Array<f64>#set:length_
  local.get $length
  i32.const 1073741820
  i32.const 3
  i32.shr_u
  i32.gt_u
  if
   i32.const 432
   i32.const 704
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $length
  local.tee $var$2
  i32.const 8
  local.tee $var$3
  local.get $var$2
  local.get $var$3
  i32.gt_u
  select
  i32.const 3
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
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
  call $~lib/array/Array<f64>#set:buffer
  local.get $this
  local.get $buffer
  call $~lib/array/Array<f64>#set:dataStart
  local.get $this
  local.get $bufferSize
  call $~lib/array/Array<f64>#set:byteLength
  local.get $this
  local.get $length
  call $~lib/array/Array<f64>#set:length_
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/map/Map<f64,i32>#keys (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $keys i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<f64>#constructor
  local.tee $keys
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 16
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $keys
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     f64.load $0
     call $~lib/array/Array<f64>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $keys
  local.get $length
  call $~lib/array/Array<f64>#set:length
  local.get $keys
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<f64,i32>#values (param $this i32) (result i32)
  (local $start i32)
  (local $size i32)
  (local $values i32)
  (local $length i32)
  (local $i i32)
  (local $var$6 i32)
  (local $entry i32)
  (local $var$8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.load $0 offset=8
  local.set $start
  local.get $this
  i32.load $0 offset=16
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  call $~lib/array/Array<i32>#constructor
  local.tee $values
  i32.store $0
  i32.const 0
  local.set $length
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $size
   i32.lt_s
   local.set $var$6
   local.get $var$6
   if
    local.get $start
    local.get $i
    i32.const 16
    i32.mul
    i32.add
    local.set $entry
    local.get $entry
    i32.load $0 offset=12
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $values
     local.get $length
     local.tee $var$8
     i32.const 1
     i32.add
     local.set $length
     local.get $var$8
     local.get $entry
     i32.load $0 offset=8
     call $~lib/array/Array<i32>#__uset
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $values
  local.get $length
  call $~lib/array/Array<i32>#set:length
  local.get $values
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/map/Map<f64,f64>#constructor (param $this i32) (result i32)
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
   i32.const 24
   i32.const 31
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f64,f64>#set:buckets
  local.get $this
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<f64,f64>#set:bucketsMask
  local.get $this
  i32.const 0
  i32.const 4
  i32.const 24
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<f64,f64>#set:entries
  local.get $this
  i32.const 4
  call $~lib/map/Map<f64,f64>#set:entriesCapacity
  local.get $this
  i32.const 0
  call $~lib/map/Map<f64,f64>#set:entriesOffset
  local.get $this
  i32.const 0
  call $~lib/map/Map<f64,f64>#set:entriesCount
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/map/Map<f64,f64>#set (param $this i32) (param $key f64) (param $value f64) (result i32)
  (local $hashCode i32)
  (local $entry i32)
  (local $entries i32)
  (local $var$6 i32)
  (local $bucketPtrBase i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  call $~lib/util/hash/HASH<f64>
  local.set $hashCode
  local.get $this
  local.get $key
  local.get $hashCode
  call $~lib/map/Map<f64,f64>#find
  local.set $entry
  local.get $entry
  if
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<f64,f64>#set:value
   i32.const 0
   drop
  else
   local.get $this
   i32.load $0 offset=16
   local.get $this
   i32.load $0 offset=12
   i32.eq
   if
    local.get $this
    local.get $this
    i32.load $0 offset=20
    local.get $this
    i32.load $0 offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $this
     i32.load $0 offset=4
    else
     local.get $this
     i32.load $0 offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<f64,f64>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $this
   i32.load $0 offset=8
   local.tee $entries
   i32.store $0
   local.get $entries
   local.get $this
   local.get $this
   i32.load $0 offset=16
   local.tee $var$6
   i32.const 1
   i32.add
   call $~lib/map/Map<f64,f64>#set:entriesOffset
   local.get $var$6
   i32.const 24
   i32.mul
   i32.add
   local.set $entry
   local.get $entry
   local.get $key
   call $~lib/map/MapEntry<f64,f64>#set:key
   i32.const 0
   drop
   local.get $entry
   local.get $value
   call $~lib/map/MapEntry<f64,f64>#set:value
   i32.const 0
   drop
   local.get $this
   local.get $this
   i32.load $0 offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<f64,f64>#set:entriesCount
   local.get $this
   i32.load $0
   local.get $hashCode
   local.get $this
   i32.load $0 offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $bucketPtrBase
   local.get $entry
   local.get $bucketPtrBase
   i32.load $0
   call $~lib/map/MapEntry<f64,f64>#set:taggedNext
   local.get $bucketPtrBase
   local.get $entry
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
)
