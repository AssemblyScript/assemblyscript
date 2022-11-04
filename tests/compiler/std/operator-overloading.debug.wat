(module
 (type $i32_=>_i32 (func_subtype (param i32) (result i32) func))
 (type $i32_i32_=>_none (func_subtype (param i32 i32) func))
 (type $i32_i32_=>_i32 (func_subtype (param i32 i32) (result i32) func))
 (type $i32_=>_none (func_subtype (param i32) func))
 (type $i32_i32_i32_=>_i32 (func_subtype (param i32 i32 i32) (result i32) func))
 (type $none_=>_none (func_subtype func))
 (type $i32_i32_i32_=>_none (func_subtype (param i32 i32 i32) func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (type $none_=>_i32 (func_subtype (result i32) func))
 (type $i32_i32_i32_i32_i32_=>_i32 (func_subtype (param i32 i32 i32 i32 i32) (result i32) func))
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
 (global $std/operator-overloading/a1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/a2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/a (mut i32) (i32.const 0))
 (global $std/operator-overloading/s1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/s2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/s (mut i32) (i32.const 0))
 (global $std/operator-overloading/m1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/m2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/m (mut i32) (i32.const 0))
 (global $std/operator-overloading/d1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/d2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/d (mut i32) (i32.const 0))
 (global $std/operator-overloading/f1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/f2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/f (mut i32) (i32.const 0))
 (global $std/operator-overloading/p1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/p2 (mut i32) (i32.const 0))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $std/operator-overloading/p (mut i32) (i32.const 0))
 (global $std/operator-overloading/n1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/n2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/n (mut i32) (i32.const 0))
 (global $std/operator-overloading/o1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/o2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/o (mut i32) (i32.const 0))
 (global $std/operator-overloading/x1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/x2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/x (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq3 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq4 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eqf (mut i32) (i32.const 0))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $std/operator-overloading/gt1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gt2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gt (mut i32) (i32.const 0))
 (global $std/operator-overloading/gte1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gte2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gte (mut i32) (i32.const 0))
 (global $std/operator-overloading/le1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/le2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/le (mut i32) (i32.const 0))
 (global $std/operator-overloading/leq1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/leq2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/leq (mut i32) (i32.const 0))
 (global $std/operator-overloading/shr (mut i32) (i32.const 0))
 (global $std/operator-overloading/sres (mut i32) (i32.const 0))
 (global $std/operator-overloading/shu (mut i32) (i32.const 0))
 (global $std/operator-overloading/ures (mut i32) (i32.const 0))
 (global $std/operator-overloading/shl (mut i32) (i32.const 0))
 (global $std/operator-overloading/pos (mut i32) (i32.const 0))
 (global $std/operator-overloading/pres (mut i32) (i32.const 0))
 (global $std/operator-overloading/neg (mut i32) (i32.const 0))
 (global $std/operator-overloading/nres (mut i32) (i32.const 0))
 (global $std/operator-overloading/not (mut i32) (i32.const 0))
 (global $std/operator-overloading/res (mut i32) (i32.const 0))
 (global $std/operator-overloading/excl (mut i32) (i32.const 0))
 (global $std/operator-overloading/bres (mut i32) (i32.const 0))
 (global $std/operator-overloading/incdec (mut i32) (i32.const 0))
 (global $std/operator-overloading/tmp (mut i32) (i32.const 0))
 (global $std/operator-overloading/ais1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/ais2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/ais (mut i32) (i32.const 0))
 (global $std/operator-overloading/aii1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/aii2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/aii (mut i32) (i32.const 0))
 (global $std/operator-overloading/tea (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 560))
 (global $~lib/memory/__data_end i32 (i32.const 620))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33388))
 (global $~lib/memory/__heap_base i32 (i32.const 33388))
 (memory $0 1)
 (data (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 76) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 144) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 176) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 204) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 268) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 320) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 348) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 412) "L\00\00\00\00\00\00\00\00\00\00\00\01\00\00\006\00\00\00s\00t\00d\00/\00o\00p\00e\00r\00a\00t\00o\00r\00-\00o\00v\00e\00r\00l\00o\00a\00d\00i\00n\00g\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 492) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00x\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 524) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00y\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 560) "\07\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/Object#set:nextWithColor (type $i32_i32_=>_none) (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store $0 offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (type $i32_i32_=>_none) (param $this i32) (param $value i32)
  local.get $this
  local.get $value
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
 (func $~lib/rt/itcms/Object#get:nextWithColor (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/rt/itcms/Object#get:next (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/rt/itcms/Object#get:color (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
 )
 (func $~lib/rt/itcms/visitRoots (type $i32_=>_none) (param $cookie i32)
  (local $pn i32)
  (local $iter i32)
  (local $3 i32)
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
   local.set $3
   local.get $3
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
 (func $~lib/rt/itcms/Object#get:prev (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
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
    i32.const 96
    i32.const 127
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
  call $~lib/shared/typeinfo/Typeinfo#get:flags
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (type $i32_=>_i32) (param $this i32) (result i32)
  (local $rtId i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:rtId
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
    i32.const 96
    i32.const 147
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
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  local.set $ptr
  loop $while-continue|0
   local.get $ptr
   global.get $~lib/memory/__heap_base
   i32.lt_u
   local.set $2
   local.get $2
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
 (func $~lib/rt/tlsf/Root#set:flMap (type $i32_i32_=>_none) (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store $0
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (type $i32_i32_=>_none) (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store $0
 )
 (func $~lib/rt/tlsf/Block#set:prev (type $i32_i32_=>_none) (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (type $i32_i32_=>_none) (param $this i32) (param $value i32)
  local.get $this
  local.get $value
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
 )
 (func $~lib/rt/tlsf/initialize (type $none_=>_none)
  (local $rootOffset i32)
  (local $pagesBefore i32)
  (local $pagesNeeded i32)
  (local $root i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $fl i32)
  (local $7 i32)
  (local $root|8 i32)
  (local $fl|9 i32)
  (local $slMap i32)
  (local $sl i32)
  (local $12 i32)
  (local $root|13 i32)
  (local $fl|14 i32)
  (local $sl|15 i32)
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
   local.set $7
   local.get $7
   if
    local.get $root
    local.set $root|8
    local.get $fl
    local.set $fl|9
    i32.const 0
    local.set $slMap
    local.get $root|8
    local.get $fl|9
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
     local.set $12
     local.get $12
     if
      local.get $root
      local.set $root|13
      local.get $fl
      local.set $fl|14
      local.get $sl
      local.set $sl|15
      i32.const 0
      local.set $head
      local.get $root|13
      local.get $fl|14
      i32.const 4
      i32.shl
      local.get $sl|15
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
   i32.const 368
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
  (local $3 i32)
  (local $4 i32)
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
     local.set $3
     local.get $3
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
      local.set $4
      local.get $4
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
   i32.const 368
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
     i32.const 368
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
 (func $~lib/rt/itcms/Object#set:rtId (type $i32_i32_=>_none) (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store $0 offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (type $i32_i32_=>_none) (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store $0 offset=16
 )
 (func $~lib/rt/itcms/__new (type $i32_i32_=>_i32) (param $size i32) (param $id i32) (result i32)
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
 (func $std/operator-overloading/Tester#set:x (type $i32_i32_=>_none) (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store $0
 )
 (func $std/operator-overloading/Tester#set:y (type $i32_i32_=>_none) (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store $0 offset=4
 )
 (func $std/operator-overloading/Tester#get:x (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $std/operator-overloading/Tester#get:y (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $std/operator-overloading/Tester.add (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  i32.const 0
  local.get $a
  call $std/operator-overloading/Tester#get:x
  local.get $b
  call $std/operator-overloading/Tester#get:x
  i32.add
  local.get $a
  call $std/operator-overloading/Tester#get:y
  local.get $b
  call $std/operator-overloading/Tester#get:y
  i32.add
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.sub (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  i32.const 0
  local.get $a
  call $std/operator-overloading/Tester#get:x
  local.get $b
  call $std/operator-overloading/Tester#get:x
  i32.sub
  local.get $a
  call $std/operator-overloading/Tester#get:y
  local.get $b
  call $std/operator-overloading/Tester#get:y
  i32.sub
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.mul (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  i32.const 0
  local.get $a
  call $std/operator-overloading/Tester#get:x
  local.get $b
  call $std/operator-overloading/Tester#get:x
  i32.mul
  local.get $a
  call $std/operator-overloading/Tester#get:y
  local.get $b
  call $std/operator-overloading/Tester#get:y
  i32.mul
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.div (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  i32.const 0
  local.get $a
  call $std/operator-overloading/Tester#get:x
  local.get $b
  call $std/operator-overloading/Tester#get:x
  i32.div_s
  local.get $a
  call $std/operator-overloading/Tester#get:y
  local.get $b
  call $std/operator-overloading/Tester#get:y
  i32.div_s
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.mod (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  i32.const 0
  local.get $a
  call $std/operator-overloading/Tester#get:x
  local.get $b
  call $std/operator-overloading/Tester#get:x
  i32.rem_s
  local.get $a
  call $std/operator-overloading/Tester#get:y
  local.get $b
  call $std/operator-overloading/Tester#get:y
  i32.rem_s
  call $std/operator-overloading/Tester#constructor
 )
 (func $~lib/math/ipow32 (type $i32_i32_=>_i32) (param $x i32) (param $e i32) (result i32)
  (local $out i32)
  (local $log i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  local.set $out
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  local.get $x
  i32.const 2
  i32.eq
  if
   i32.const 1
   local.get $e
   i32.shl
   i32.const 0
   local.get $e
   i32.const 32
   i32.lt_u
   select
   return
  end
  local.get $e
  i32.const 0
  i32.le_s
  if
   local.get $x
   i32.const -1
   i32.eq
   if
    i32.const -1
    i32.const 1
    local.get $e
    i32.const 1
    i32.and
    select
    return
   end
   local.get $e
   i32.const 0
   i32.eq
   local.get $x
   i32.const 1
   i32.eq
   i32.or
   return
  else
   local.get $e
   i32.const 1
   i32.eq
   if
    local.get $x
    return
   else
    local.get $e
    i32.const 2
    i32.eq
    if
     local.get $x
     local.get $x
     i32.mul
     return
    else
     local.get $e
     i32.const 32
     i32.lt_s
     if
      i32.const 32
      local.get $e
      i32.clz
      i32.sub
      local.set $log
      block $break|0
       block $case4|0
        block $case3|0
         block $case2|0
          block $case1|0
           block $case0|0
            local.get $log
            local.set $4
            local.get $4
            i32.const 5
            i32.eq
            br_if $case0|0
            local.get $4
            i32.const 4
            i32.eq
            br_if $case1|0
            local.get $4
            i32.const 3
            i32.eq
            br_if $case2|0
            local.get $4
            i32.const 2
            i32.eq
            br_if $case3|0
            local.get $4
            i32.const 1
            i32.eq
            br_if $case4|0
            br $break|0
           end
           local.get $e
           i32.const 1
           i32.and
           if
            local.get $out
            local.get $x
            i32.mul
            local.set $out
           end
           local.get $e
           i32.const 1
           i32.shr_u
           local.set $e
           local.get $x
           local.get $x
           i32.mul
           local.set $x
          end
          local.get $e
          i32.const 1
          i32.and
          if
           local.get $out
           local.get $x
           i32.mul
           local.set $out
          end
          local.get $e
          i32.const 1
          i32.shr_u
          local.set $e
          local.get $x
          local.get $x
          i32.mul
          local.set $x
         end
         local.get $e
         i32.const 1
         i32.and
         if
          local.get $out
          local.get $x
          i32.mul
          local.set $out
         end
         local.get $e
         i32.const 1
         i32.shr_u
         local.set $e
         local.get $x
         local.get $x
         i32.mul
         local.set $x
        end
        local.get $e
        i32.const 1
        i32.and
        if
         local.get $out
         local.get $x
         i32.mul
         local.set $out
        end
        local.get $e
        i32.const 1
        i32.shr_u
        local.set $e
        local.get $x
        local.get $x
        i32.mul
        local.set $x
       end
       local.get $e
       i32.const 1
       i32.and
       if
        local.get $out
        local.get $x
        i32.mul
        local.set $out
       end
      end
      local.get $out
      return
     end
    end
   end
  end
  loop $while-continue|1
   local.get $e
   local.set $5
   local.get $5
   if
    local.get $e
    i32.const 1
    i32.and
    if
     local.get $out
     local.get $x
     i32.mul
     local.set $out
    end
    local.get $e
    i32.const 1
    i32.shr_u
    local.set $e
    local.get $x
    local.get $x
    i32.mul
    local.set $x
    br $while-continue|1
   end
  end
  local.get $out
 )
 (func $std/operator-overloading/Tester.pow (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  i32.const 0
  local.get $a
  call $std/operator-overloading/Tester#get:x
  local.get $b
  call $std/operator-overloading/Tester#get:x
  call $~lib/math/ipow32
  local.get $a
  call $std/operator-overloading/Tester#get:y
  local.get $b
  call $std/operator-overloading/Tester#get:y
  call $~lib/math/ipow32
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.and (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  i32.const 0
  local.get $a
  call $std/operator-overloading/Tester#get:x
  local.get $b
  call $std/operator-overloading/Tester#get:x
  i32.and
  local.get $a
  call $std/operator-overloading/Tester#get:y
  local.get $b
  call $std/operator-overloading/Tester#get:y
  i32.and
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.or (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  i32.const 0
  local.get $a
  call $std/operator-overloading/Tester#get:x
  local.get $b
  call $std/operator-overloading/Tester#get:x
  i32.or
  local.get $a
  call $std/operator-overloading/Tester#get:y
  local.get $b
  call $std/operator-overloading/Tester#get:y
  i32.or
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.xor (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  i32.const 0
  local.get $a
  call $std/operator-overloading/Tester#get:x
  local.get $b
  call $std/operator-overloading/Tester#get:x
  i32.xor
  local.get $a
  call $std/operator-overloading/Tester#get:y
  local.get $b
  call $std/operator-overloading/Tester#get:y
  i32.xor
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.equals (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  local.get $a
  call $std/operator-overloading/Tester#get:x
  local.get $b
  call $std/operator-overloading/Tester#get:x
  i32.eq
  if (result i32)
   local.get $a
   call $std/operator-overloading/Tester#get:y
   local.get $b
   call $std/operator-overloading/Tester#get:y
   i32.eq
  else
   i32.const 0
  end
 )
 (func $std/operator-overloading/Tester.notEquals (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  local.get $a
  call $std/operator-overloading/Tester#get:x
  local.get $b
  call $std/operator-overloading/Tester#get:x
  i32.ne
  if (result i32)
   local.get $a
   call $std/operator-overloading/Tester#get:y
   local.get $b
   call $std/operator-overloading/Tester#get:y
   i32.ne
  else
   i32.const 0
  end
 )
 (func $std/operator-overloading/Tester.greater (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  local.get $a
  call $std/operator-overloading/Tester#get:x
  local.get $b
  call $std/operator-overloading/Tester#get:x
  i32.gt_s
  if (result i32)
   local.get $a
   call $std/operator-overloading/Tester#get:y
   local.get $b
   call $std/operator-overloading/Tester#get:y
   i32.gt_s
  else
   i32.const 0
  end
 )
 (func $std/operator-overloading/Tester.greaterEquals (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  local.get $a
  call $std/operator-overloading/Tester#get:x
  local.get $b
  call $std/operator-overloading/Tester#get:x
  i32.ge_s
  if (result i32)
   local.get $a
   call $std/operator-overloading/Tester#get:y
   local.get $b
   call $std/operator-overloading/Tester#get:y
   i32.ge_s
  else
   i32.const 0
  end
 )
 (func $std/operator-overloading/Tester.less (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  local.get $a
  call $std/operator-overloading/Tester#get:x
  local.get $b
  call $std/operator-overloading/Tester#get:x
  i32.lt_s
  if (result i32)
   local.get $a
   call $std/operator-overloading/Tester#get:y
   local.get $b
   call $std/operator-overloading/Tester#get:y
   i32.lt_s
  else
   i32.const 0
  end
 )
 (func $std/operator-overloading/Tester.lessEquals (type $i32_i32_=>_i32) (param $a i32) (param $b i32) (result i32)
  local.get $a
  call $std/operator-overloading/Tester#get:x
  local.get $b
  call $std/operator-overloading/Tester#get:x
  i32.le_s
  if (result i32)
   local.get $a
   call $std/operator-overloading/Tester#get:y
   local.get $b
   call $std/operator-overloading/Tester#get:y
   i32.le_s
  else
   i32.const 0
  end
 )
 (func $std/operator-overloading/Tester.shr (type $i32_i32_=>_i32) (param $value i32) (param $shift i32) (result i32)
  i32.const 0
  local.get $value
  call $std/operator-overloading/Tester#get:x
  local.get $shift
  i32.shr_s
  local.get $value
  call $std/operator-overloading/Tester#get:y
  local.get $shift
  i32.shr_s
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.shu (type $i32_i32_=>_i32) (param $value i32) (param $shift i32) (result i32)
  i32.const 0
  local.get $value
  call $std/operator-overloading/Tester#get:x
  local.get $shift
  i32.shr_u
  local.get $value
  call $std/operator-overloading/Tester#get:y
  local.get $shift
  i32.shr_u
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.shl (type $i32_i32_=>_i32) (param $value i32) (param $shift i32) (result i32)
  i32.const 0
  local.get $value
  call $std/operator-overloading/Tester#get:x
  local.get $shift
  i32.shl
  local.get $value
  call $std/operator-overloading/Tester#get:y
  local.get $shift
  i32.shl
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.pos (type $i32_=>_i32) (param $value i32) (result i32)
  i32.const 0
  local.get $value
  call $std/operator-overloading/Tester#get:x
  local.get $value
  call $std/operator-overloading/Tester#get:y
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.neg (type $i32_=>_i32) (param $value i32) (result i32)
  i32.const 0
  i32.const 0
  local.get $value
  call $std/operator-overloading/Tester#get:x
  i32.sub
  i32.const 0
  local.get $value
  call $std/operator-overloading/Tester#get:y
  i32.sub
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.not (type $i32_=>_i32) (param $value i32) (result i32)
  i32.const 0
  local.get $value
  call $std/operator-overloading/Tester#get:x
  i32.const -1
  i32.xor
  local.get $value
  call $std/operator-overloading/Tester#get:y
  i32.const -1
  i32.xor
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.excl (type $i32_=>_i32) (param $value i32) (result i32)
  local.get $value
  call $std/operator-overloading/Tester#get:x
  i32.eqz
  if (result i32)
   local.get $value
   call $std/operator-overloading/Tester#get:y
   i32.eqz
  else
   i32.const 0
  end
 )
 (func $std/operator-overloading/Tester#inc (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  local.get $this
  call $std/operator-overloading/Tester#get:x
  i32.const 1
  i32.add
  call $std/operator-overloading/Tester#set:x
  local.get $this
  local.get $this
  call $std/operator-overloading/Tester#get:y
  i32.const 1
  i32.add
  call $std/operator-overloading/Tester#set:y
  local.get $this
 )
 (func $std/operator-overloading/Tester#dec (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  local.get $this
  call $std/operator-overloading/Tester#get:x
  i32.const 1
  i32.sub
  call $std/operator-overloading/Tester#set:x
  local.get $this
  local.get $this
  call $std/operator-overloading/Tester#get:y
  i32.const 1
  i32.sub
  call $std/operator-overloading/Tester#set:y
  local.get $this
 )
 (func $std/operator-overloading/Tester#postInc (type $i32_=>_i32) (param $this i32) (result i32)
  i32.const 0
  local.get $this
  call $std/operator-overloading/Tester#get:x
  i32.const 1
  i32.add
  local.get $this
  call $std/operator-overloading/Tester#get:y
  i32.const 1
  i32.add
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester#postDec (type $i32_=>_i32) (param $this i32) (result i32)
  i32.const 0
  local.get $this
  call $std/operator-overloading/Tester#get:x
  i32.const 1
  i32.sub
  local.get $this
  call $std/operator-overloading/Tester#get:y
  i32.const 1
  i32.sub
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/TesterInlineStatic#set:x (type $i32_i32_=>_none) (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store $0
 )
 (func $std/operator-overloading/TesterInlineStatic#set:y (type $i32_i32_=>_none) (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store $0 offset=4
 )
 (func $std/operator-overloading/TesterInlineStatic#get:x (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $std/operator-overloading/TesterInlineStatic#get:y (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $std/operator-overloading/TesterInlineInstance#set:x (type $i32_i32_=>_none) (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store $0
 )
 (func $std/operator-overloading/TesterInlineInstance#set:y (type $i32_i32_=>_none) (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store $0 offset=4
 )
 (func $std/operator-overloading/TesterInlineInstance#get:x (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $std/operator-overloading/TesterInlineInstance#get:y (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $std/operator-overloading/TesterElementAccess#set:x (type $i32_i32_=>_none) (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store $0
 )
 (func $std/operator-overloading/TesterElementAccess#set:y (type $i32_i32_=>_none) (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store $0 offset=4
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
  (local $8 i32)
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
   local.set $8
   local.get $8
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
 (func $std/operator-overloading/TesterElementAccess#get:x (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $std/operator-overloading/TesterElementAccess#get:y (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/rt/__visit_globals (type $i32_=>_none) (param $0 i32)
  (local $1 i32)
  global.get $std/operator-overloading/a1
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/a2
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/a
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/s1
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/s2
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/s
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/m1
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/m2
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/m
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/d1
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/d2
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/d
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/f1
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/f2
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/f
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/p1
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/p2
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/p
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/n1
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/n2
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/n
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/o1
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/o2
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/o
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/x1
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/x2
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/x
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/eq1
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/eq2
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/eq3
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/eq4
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/gt1
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/gt2
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/gte1
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/gte2
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/le1
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/le2
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/leq1
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/leq2
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/shr
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/sres
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/shu
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/ures
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/shl
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/pos
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/pres
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/neg
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/nres
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/not
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/res
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/excl
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/incdec
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/tmp
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/ais1
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/ais2
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/ais
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/aii1
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/aii2
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/aii
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $std/operator-overloading/tea
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
 (func $~lib/rt/__visit_members (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  block $invalid
   block $std/operator-overloading/TesterElementAccess
    block $std/operator-overloading/TesterInlineInstance
     block $std/operator-overloading/TesterInlineStatic
      block $std/operator-overloading/Tester
       block $~lib/arraybuffer/ArrayBufferView
        block $~lib/string/String
         block $~lib/arraybuffer/ArrayBuffer
          local.get $0
          i32.const 8
          i32.sub
          i32.load $0
          br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $std/operator-overloading/Tester $std/operator-overloading/TesterInlineStatic $std/operator-overloading/TesterInlineInstance $std/operator-overloading/TesterElementAccess $invalid
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
  unreachable
 )
 (func $~start (type $none_=>_none)
  call $start:std/operator-overloading
 )
 (func $~stack_check (type $none_=>_none)
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
 (func $std/operator-overloading/TesterElementAccess#__set (type $i32_i32_i32_=>_none) (param $this i32) (param $key i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  i32.const 512
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/string/String.__eq
  if
   local.get $this
   local.get $value
   call $std/operator-overloading/TesterElementAccess#set:x
  else
   local.get $this
   local.get $value
   call $std/operator-overloading/TesterElementAccess#set:y
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/operator-overloading/TesterElementAccess#__get (type $i32_i32_=>_i32) (param $this i32) (param $key i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  i32.const 512
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/string/String.__eq
  if (result i32)
   local.get $this
   call $std/operator-overloading/TesterElementAccess#get:x
  else
   local.get $this
   call $std/operator-overloading/TesterElementAccess#get:y
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $start:std/operator-overloading (type $none_=>_none)
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
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
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
  i32.const 1
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/a1
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/a2
  global.get $std/operator-overloading/a1
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  global.get $std/operator-overloading/a2
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/Tester.add
  global.set $std/operator-overloading/a
  global.get $std/operator-overloading/a
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const 3
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/a
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const 5
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 145
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/s1
  i32.const 0
  i32.const 2
  i32.const -3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/s2
  global.get $std/operator-overloading/s1
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  global.get $std/operator-overloading/s2
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/Tester.sub
  global.set $std/operator-overloading/s
  global.get $std/operator-overloading/s
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const 0
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/s
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const 6
   i32.eq
  else
   i32.const 0
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
  i32.const 0
  i32.const 2
  i32.const 5
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/m1
  i32.const 0
  i32.const 3
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/m2
  global.get $std/operator-overloading/m1
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  global.get $std/operator-overloading/m2
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/Tester.mul
  global.set $std/operator-overloading/m
  global.get $std/operator-overloading/m
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const 6
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/m
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const 10
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 157
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 6
  i32.const 50
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/d1
  i32.const 0
  i32.const 3
  i32.const 10
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/d2
  global.get $std/operator-overloading/d1
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  global.get $std/operator-overloading/d2
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/Tester.div
  global.set $std/operator-overloading/d
  global.get $std/operator-overloading/d
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const 2
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/d
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const 5
   i32.eq
  else
   i32.const 0
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
  i32.const 0
  i32.const 10
  i32.const 10
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/f1
  i32.const 0
  i32.const 6
  i32.const 10
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/f2
  global.get $std/operator-overloading/f1
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  global.get $std/operator-overloading/f2
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/Tester.mod
  global.set $std/operator-overloading/f
  global.get $std/operator-overloading/f
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const 4
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/f
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const 0
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 169
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/p1
  i32.const 0
  i32.const 4
  i32.const 5
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/p2
  global.get $std/operator-overloading/p1
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  global.get $std/operator-overloading/p2
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/Tester.pow
  global.set $std/operator-overloading/p
  global.get $std/operator-overloading/p
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const 16
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/p
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const 243
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 175
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 255
  i32.const 15
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/n1
  i32.const 0
  i32.const 15
  i32.const 255
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/n2
  global.get $std/operator-overloading/n1
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  global.get $std/operator-overloading/n2
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/Tester.and
  global.set $std/operator-overloading/n
  global.get $std/operator-overloading/n
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const 15
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/n
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const 15
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 181
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 3855
  i32.const 255
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/o1
  i32.const 0
  i32.const 61680
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/o2
  global.get $std/operator-overloading/o1
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  global.get $std/operator-overloading/o2
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/Tester.or
  global.set $std/operator-overloading/o
  global.get $std/operator-overloading/o
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const 65535
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/o
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const 255
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 187
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 255
  i32.const 255
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/x1
  i32.const 0
  i32.const 65280
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/x2
  global.get $std/operator-overloading/x1
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  global.get $std/operator-overloading/x2
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/Tester.xor
  global.set $std/operator-overloading/x
  global.get $std/operator-overloading/x
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const 65535
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/x
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const 255
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 193
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/eq1
  i32.const 0
  i32.const 1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/eq2
  global.get $std/operator-overloading/eq1
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  global.get $std/operator-overloading/eq2
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/Tester.equals
  global.set $std/operator-overloading/eq
  global.get $std/operator-overloading/eq
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 199
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/eq3
  i32.const 0
  i32.const 0
  i32.const 1
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/eq4
  global.get $std/operator-overloading/eq3
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  global.get $std/operator-overloading/eq4
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/Tester.equals
  global.set $std/operator-overloading/eqf
  global.get $std/operator-overloading/eqf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 205
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/eq1
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  global.get $std/operator-overloading/eq2
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/Tester.notEquals
  global.set $std/operator-overloading/eq
  global.get $std/operator-overloading/eq
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 209
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/eq3
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  global.get $std/operator-overloading/eq4
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/Tester.notEquals
  global.set $std/operator-overloading/eqf
  global.get $std/operator-overloading/eqf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 213
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/gt1
  i32.const 0
  i32.const 1
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/gt2
  global.get $std/operator-overloading/gt1
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  global.get $std/operator-overloading/gt2
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/Tester.greater
  global.set $std/operator-overloading/gt
  global.get $std/operator-overloading/gt
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 219
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/gte1
  i32.const 0
  i32.const 2
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/gte2
  global.get $std/operator-overloading/gte1
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  global.get $std/operator-overloading/gte2
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/Tester.greaterEquals
  global.set $std/operator-overloading/gte
  global.get $std/operator-overloading/gte
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 225
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 5
  i32.const -1
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/le1
  i32.const 0
  i32.const 6
  i32.const 6
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/le2
  global.get $std/operator-overloading/le1
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  global.get $std/operator-overloading/le2
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/Tester.less
  global.set $std/operator-overloading/le
  global.get $std/operator-overloading/le
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 231
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 4
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/leq1
  i32.const 0
  i32.const 4
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/leq2
  global.get $std/operator-overloading/leq1
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  global.get $std/operator-overloading/leq2
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/Tester.lessEquals
  global.set $std/operator-overloading/leq
  global.get $std/operator-overloading/leq
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 237
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 8
  i32.const 16
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/shr
  global.get $std/operator-overloading/shr
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  i32.const 3
  call $std/operator-overloading/Tester.shr
  global.set $std/operator-overloading/sres
  global.get $std/operator-overloading/sres
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const 1
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/sres
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const 2
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 242
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const -8
  i32.const -16
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/shu
  global.get $std/operator-overloading/shu
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  i32.const 3
  call $std/operator-overloading/Tester.shu
  global.set $std/operator-overloading/ures
  global.get $std/operator-overloading/ures
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const 536870911
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/ures
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const 536870910
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 247
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/shl
  global.get $std/operator-overloading/shl
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  i32.const 3
  call $std/operator-overloading/Tester.shl
  global.set $std/operator-overloading/sres
  global.get $std/operator-overloading/sres
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const 8
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/sres
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const 16
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 252
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/pos
  global.get $std/operator-overloading/pos
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester.pos
  global.set $std/operator-overloading/pres
  global.get $std/operator-overloading/pres
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  global.get $std/operator-overloading/pos
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/pres
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   global.get $std/operator-overloading/pos
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 257
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const -1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/neg
  global.get $std/operator-overloading/neg
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester.neg
  global.set $std/operator-overloading/nres
  global.get $std/operator-overloading/nres
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const 0
  global.get $std/operator-overloading/neg
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.sub
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/nres
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const 0
   global.get $std/operator-overloading/neg
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.sub
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 262
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 255
  i32.const 16
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/not
  global.get $std/operator-overloading/not
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester.not
  global.set $std/operator-overloading/res
  global.get $std/operator-overloading/res
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  global.get $std/operator-overloading/not
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const -1
  i32.xor
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/res
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   global.get $std/operator-overloading/not
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const -1
   i32.xor
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 267
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/excl
  global.get $std/operator-overloading/excl
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester.excl
  global.set $std/operator-overloading/bres
  global.get $std/operator-overloading/bres
  global.get $std/operator-overloading/excl
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.eqz
  if (result i32)
   global.get $std/operator-overloading/excl
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.eqz
  else
   i32.const 0
  end
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 272
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/bres
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 273
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.const 1
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/incdec
  global.get $std/operator-overloading/incdec
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#inc
  global.set $std/operator-overloading/incdec
  global.get $std/operator-overloading/incdec
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const 1
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/incdec
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const 2
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 279
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/incdec
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#dec
  global.set $std/operator-overloading/incdec
  global.get $std/operator-overloading/incdec
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const 0
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/incdec
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const 1
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 282
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.const 1
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/incdec
  global.get $~lib/memory/__stack_pointer
  global.get $std/operator-overloading/incdec
  local.tee $0
  i32.store $0 offset=8
  local.get $0
  call $std/operator-overloading/Tester#postInc
  global.set $std/operator-overloading/incdec
  local.get $0
  global.set $std/operator-overloading/tmp
  global.get $std/operator-overloading/tmp
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const 0
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/tmp
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const 1
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 287
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/incdec
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const 1
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/incdec
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const 2
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 288
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  global.get $std/operator-overloading/incdec
  local.tee $1
  i32.store $0 offset=12
  local.get $1
  call $std/operator-overloading/Tester#postDec
  global.set $std/operator-overloading/incdec
  local.get $1
  global.set $std/operator-overloading/tmp
  global.get $std/operator-overloading/tmp
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const 1
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/tmp
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const 2
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 291
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/incdec
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/Tester#get:x
  i32.const 0
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/incdec
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/Tester#get:y
   i32.const 1
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 292
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const 2
  call $std/operator-overloading/TesterInlineStatic#constructor
  global.set $std/operator-overloading/ais1
  global.get $~lib/memory/__stack_pointer
  global.get $std/operator-overloading/ais1
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  local.tee $3
  i32.store $0 offset=16
  i32.const 0
  local.get $3
  call $std/operator-overloading/TesterInlineStatic#get:x
  i32.const 1
  i32.add
  local.get $3
  call $std/operator-overloading/TesterInlineStatic#get:y
  i32.const 1
  i32.add
  call $std/operator-overloading/TesterInlineStatic#constructor
  global.set $std/operator-overloading/ais1
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/TesterInlineStatic#constructor
  global.set $std/operator-overloading/ais2
  global.get $~lib/memory/__stack_pointer
  global.get $std/operator-overloading/ais1
  local.tee $4
  i32.store $0 offset=20
  global.get $~lib/memory/__stack_pointer
  global.get $std/operator-overloading/ais2
  local.tee $5
  i32.store $0 offset=24
  i32.const 0
  local.get $4
  call $std/operator-overloading/TesterInlineStatic#get:x
  local.get $5
  call $std/operator-overloading/TesterInlineStatic#get:x
  i32.add
  local.get $4
  call $std/operator-overloading/TesterInlineStatic#get:y
  local.get $5
  call $std/operator-overloading/TesterInlineStatic#get:y
  i32.add
  call $std/operator-overloading/TesterInlineStatic#constructor
  global.set $std/operator-overloading/ais
  global.get $std/operator-overloading/ais
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/TesterInlineStatic#get:x
  i32.const 4
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/ais
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/TesterInlineStatic#get:y
   i32.const 6
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 312
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const 2
  call $std/operator-overloading/TesterInlineInstance#constructor
  global.set $std/operator-overloading/aii1
  global.get $~lib/memory/__stack_pointer
  global.get $std/operator-overloading/aii1
  local.tee $6
  i32.store $0 offset=28
  i32.const 0
  local.get $6
  call $std/operator-overloading/TesterInlineInstance#get:x
  i32.const 1
  i32.add
  local.get $6
  call $std/operator-overloading/TesterInlineInstance#get:y
  i32.const 1
  i32.add
  call $std/operator-overloading/TesterInlineInstance#constructor
  global.set $std/operator-overloading/aii1
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/TesterInlineInstance#constructor
  global.set $std/operator-overloading/aii2
  global.get $~lib/memory/__stack_pointer
  global.get $std/operator-overloading/aii1
  local.tee $7
  i32.store $0 offset=32
  global.get $~lib/memory/__stack_pointer
  global.get $std/operator-overloading/aii2
  local.tee $8
  i32.store $0 offset=36
  i32.const 0
  local.get $7
  call $std/operator-overloading/TesterInlineInstance#get:x
  local.get $8
  call $std/operator-overloading/TesterInlineInstance#get:x
  i32.add
  local.get $7
  call $std/operator-overloading/TesterInlineInstance#get:y
  local.get $8
  call $std/operator-overloading/TesterInlineInstance#get:y
  i32.add
  call $std/operator-overloading/TesterInlineInstance#constructor
  global.set $std/operator-overloading/aii
  global.get $std/operator-overloading/aii
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/TesterInlineInstance#get:x
  i32.const 4
  i32.eq
  if (result i32)
   global.get $std/operator-overloading/aii
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $std/operator-overloading/TesterInlineInstance#get:y
   i32.const 6
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 332
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const 2
  call $std/operator-overloading/TesterElementAccess#constructor
  global.set $std/operator-overloading/tea
  global.get $std/operator-overloading/tea
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  i32.const 512
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  i32.const -1
  call $std/operator-overloading/TesterElementAccess#__set
  global.get $std/operator-overloading/tea
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  i32.const 544
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  i32.const -2
  call $std/operator-overloading/TesterElementAccess#__set
  global.get $std/operator-overloading/tea
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/TesterElementAccess#get:x
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 360
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/tea
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  i32.const 512
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/TesterElementAccess#__get
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 361
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/tea
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $std/operator-overloading/TesterElementAccess#get:y
  i32.const -2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 363
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/tea
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  i32.const 544
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/TesterElementAccess#__get
  i32.const -2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 364
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/tea
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  i32.const 512
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  global.get $std/operator-overloading/tea
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=40
  local.get $9
  i32.const 512
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=44
  local.get $9
  call $std/operator-overloading/TesterElementAccess#__get
  i32.const 1
  i32.add
  call $std/operator-overloading/TesterElementAccess#__set
  global.get $std/operator-overloading/tea
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  i32.const 544
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  global.get $std/operator-overloading/tea
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=40
  local.get $9
  i32.const 544
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=44
  local.get $9
  call $std/operator-overloading/TesterElementAccess#__get
  i32.const 1
  i32.sub
  call $std/operator-overloading/TesterElementAccess#__set
  global.get $std/operator-overloading/tea
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  i32.const 512
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/TesterElementAccess#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 369
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/operator-overloading/tea
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  i32.const 544
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $std/operator-overloading/TesterElementAccess#__get
  i32.const -3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 432
   i32.const 370
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $std/operator-overloading/Tester#constructor (type $i32_i32_i32_=>_i32) (param $this i32) (param $x i32) (param $y i32) (result i32)
  (local $3 i32)
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
   i32.const 3
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.get $x
  call $std/operator-overloading/Tester#set:x
  local.get $this
  local.get $y
  call $std/operator-overloading/Tester#set:y
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $std/operator-overloading/TesterInlineStatic#constructor (type $i32_i32_i32_=>_i32) (param $this i32) (param $x i32) (param $y i32) (result i32)
  (local $3 i32)
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
  local.get $this
  local.get $x
  call $std/operator-overloading/TesterInlineStatic#set:x
  local.get $this
  local.get $y
  call $std/operator-overloading/TesterInlineStatic#set:y
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $std/operator-overloading/TesterInlineInstance#constructor (type $i32_i32_i32_=>_i32) (param $this i32) (param $x i32) (param $y i32) (result i32)
  (local $3 i32)
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
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.get $x
  call $std/operator-overloading/TesterInlineInstance#set:x
  local.get $this
  local.get $y
  call $std/operator-overloading/TesterInlineInstance#set:y
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $std/operator-overloading/TesterElementAccess#constructor (type $i32_i32_i32_=>_i32) (param $this i32) (param $x i32) (param $y i32) (result i32)
  (local $3 i32)
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
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.get $x
  call $std/operator-overloading/TesterElementAccess#set:x
  local.get $this
  local.get $y
  call $std/operator-overloading/TesterElementAccess#set:y
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
)
