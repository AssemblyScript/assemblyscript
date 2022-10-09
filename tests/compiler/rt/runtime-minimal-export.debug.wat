(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/lm/freeListPtr i32 (i32.const 16))
 (global $~lib/rt/lm/freelist (mut i32) (i32.const 0))
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/rt/tcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 432))
 (global $~lib/memory/__heap_base i32 (i32.const 460))
 (memory $0 1)
 (data (i32.const 16) "\00\00\00\00")
 (data (i32.const 28) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 92) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 156) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00l\00m\00.\00t\00s\00\00\00")
 (data (i32.const 208) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 236) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d\00\00\00")
 (data (i32.const 304) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 332) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d\00\00\00\00\00")
 (data (i32.const 400) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 432) "\03\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "__new" (func $~lib/rt/tcms/__new))
 (export "__pin" (func $~lib/rt/tcms/__pin))
 (export "__unpin" (func $~lib/rt/tcms/__unpin))
 (export "__collect" (func $~lib/rt/tcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/lm/LinkedList#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/rt/lm/LinkedList#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0
 )
 (func $~lib/rt/lm/Block#set:size (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/rt/lm/initialize
  (local $startPoint i32)
  (local $pagesBefore i32)
  (local $pagesNeeded i32)
  (local $item i32)
  (local $var$4 i32)
  (local $var$5 i32)
  (local $block i32)
  global.get $~lib/rt/lm/freeListPtr
  global.set $~lib/rt/lm/freelist
  global.get $~lib/rt/lm/freelist
  global.get $~lib/rt/lm/freelist
  call $~lib/rt/lm/LinkedList#set:next
  global.get $~lib/rt/lm/freelist
  global.get $~lib/rt/lm/freelist
  call $~lib/rt/lm/LinkedList#set:prev
  global.get $~lib/memory/__heap_base
  i32.const 12
  i32.add
  i32.const 16
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 12
  i32.sub
  local.set $startPoint
  memory.size $0
  local.set $pagesBefore
  local.get $startPoint
  i32.const 1
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
  local.get $startPoint
  local.set $item
  local.get $item
  local.set $block
  global.get $~lib/rt/lm/freelist
  local.set $var$5
  global.get $~lib/rt/lm/freelist
  local.set $var$4
  local.get $var$4
  local.get $block
  call $~lib/rt/lm/LinkedList#set:prev
  local.get $block
  local.get $var$4
  call $~lib/rt/lm/LinkedList#set:next
  local.get $block
  local.get $var$5
  call $~lib/rt/lm/LinkedList#set:prev
  local.get $var$5
  local.get $block
  call $~lib/rt/lm/LinkedList#set:next
  local.get $startPoint
  local.set $block
  local.get $block
  memory.size $0
  i32.const 16
  i32.shl
  i32.const 12
  i32.sub
  local.get $startPoint
  i32.sub
  call $~lib/rt/lm/Block#set:size
 )
 (func $~lib/rt/lm/growMemory (param $size i32)
  (local $pagesBefore i32)
  (local $pageBeforePtr i32)
  (local $startPoint i32)
  (local $v128Alignment i32)
  (local $pagesNeeded i32)
  (local $pagesWanted i32)
  (local $block i32)
  (local $pagesAfter i32)
  (local $var$9 i32)
  (local $var$10 i32)
  (local $var$11 i32)
  i32.const 0
  drop
  memory.size $0
  local.set $pagesBefore
  local.get $pagesBefore
  i32.const 16
  i32.shl
  local.set $pageBeforePtr
  local.get $pageBeforePtr
  i32.const 12
  i32.add
  local.set $startPoint
  i32.const 16
  local.get $startPoint
  i32.const 15
  i32.and
  i32.sub
  local.set $v128Alignment
  local.get $size
  local.get $startPoint
  local.get $v128Alignment
  i32.add
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
  local.get $pagesNeeded
  local.get $pagesBefore
  i32.sub
  local.set $pagesWanted
  local.get $pagesWanted
  memory.grow $0
  i32.const 0
  i32.lt_s
  if
   unreachable
  end
  local.get $pageBeforePtr
  local.get $v128Alignment
  i32.add
  local.set $block
  memory.size $0
  local.set $pagesAfter
  local.get $block
  local.get $pagesAfter
  local.get $pagesBefore
  i32.sub
  i32.const 16
  i32.shl
  i32.const 12
  i32.sub
  local.get $v128Alignment
  i32.sub
  call $~lib/rt/lm/Block#set:size
  local.get $pageBeforePtr
  local.get $v128Alignment
  i32.add
  local.set $var$11
  global.get $~lib/rt/lm/freelist
  i32.load $0
  local.set $var$10
  global.get $~lib/rt/lm/freelist
  local.set $var$9
  local.get $var$9
  local.get $var$11
  call $~lib/rt/lm/LinkedList#set:prev
  local.get $var$11
  local.get $var$9
  call $~lib/rt/lm/LinkedList#set:next
  local.get $var$11
  local.get $var$10
  call $~lib/rt/lm/LinkedList#set:prev
  local.get $var$10
  local.get $var$11
  call $~lib/rt/lm/LinkedList#set:next
 )
 (func $~lib/rt/lm/__alloc (param $size i32) (result i32)
  (local $var$1 i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (local $var$4 i32)
  (local $var$5 i32)
  (local $var$6 i32)
  (local $var$7 i32)
  (local $var$8 i32)
  local.get $size
  local.set $var$1
  local.get $var$1
  i32.const 1
  i32.const 2
  i32.shl
  i32.const 1
  i32.sub
  i32.add
  i32.const 1
  i32.const 2
  i32.shl
  i32.const 1
  i32.sub
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  local.get $size
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 48
   i32.const 176
   i32.const 122
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/lm/freelist
  i32.eqz
  if
   call $~lib/rt/lm/initialize
  end
  local.get $size
  local.set $var$1
  i32.const 0
  local.set $var$2
  global.get $~lib/rt/lm/freelist
  i32.load $0 offset=4
  local.set $var$3
  loop $for-loop|0
   local.get $var$3
   global.get $~lib/rt/lm/freeListPtr
   i32.ne
   if (result i32)
    local.get $var$3
    i32.load $0 offset=4
    i32.const 0
    i32.ne
   else
    i32.const 0
   end
   local.set $var$4
   local.get $var$4
   if
    local.get $var$3
    i32.load $0 offset=8
    local.get $var$1
    i32.gt_u
    if
     local.get $var$3
     local.set $var$2
    end
    local.get $var$3
    i32.load $0 offset=4
    local.set $var$3
    br $for-loop|0
   end
  end
  local.get $var$2
  local.set $var$2
  local.get $var$2
  i32.eqz
  if
   local.get $size
   call $~lib/rt/lm/growMemory
   local.get $size
   local.set $var$4
   i32.const 0
   local.set $var$1
   global.get $~lib/rt/lm/freelist
   i32.load $0 offset=4
   local.set $var$3
   loop $for-loop|1
    local.get $var$3
    global.get $~lib/rt/lm/freeListPtr
    i32.ne
    if (result i32)
     local.get $var$3
     i32.load $0 offset=4
     i32.const 0
     i32.ne
    else
     i32.const 0
    end
    local.set $var$5
    local.get $var$5
    if
     local.get $var$3
     i32.load $0 offset=8
     local.get $var$4
     i32.gt_u
     if
      local.get $var$3
      local.set $var$1
     end
     local.get $var$3
     i32.load $0 offset=4
     local.set $var$3
     br $for-loop|1
    end
   end
   local.get $var$1
   local.set $var$2
   local.get $var$2
   i32.eqz
   if
    unreachable
   end
  end
  local.get $var$2
  local.set $var$1
  local.get $var$1
  i32.load $0 offset=8
  local.get $size
  i32.sub
  i32.const 12
  i32.gt_u
  if
   local.get $var$2
   local.get $size
   i32.add
   i32.const 12
   i32.add
   local.set $var$4
   i32.const 16
   local.get $var$4
   i32.const 12
   i32.add
   i32.const 15
   i32.and
   i32.sub
   local.set $var$3
   local.get $size
   local.get $var$3
   i32.add
   local.set $size
   local.get $var$4
   local.get $var$3
   i32.add
   local.set $var$4
   local.get $var$4
   i32.const 12
   i32.add
   local.get $var$2
   local.get $var$1
   i32.load $0 offset=8
   i32.add
   i32.gt_u
   i32.eqz
   if
    local.get $var$4
    local.set $var$5
    local.get $var$5
    local.get $var$1
    i32.load $0 offset=8
    local.get $size
    i32.sub
    i32.const 12
    i32.sub
    call $~lib/rt/lm/Block#set:size
    local.get $var$1
    local.get $size
    call $~lib/rt/lm/Block#set:size
    local.get $var$5
    local.set $var$8
    local.get $var$1
    local.set $var$7
    local.get $var$1
    i32.load $0 offset=4
    local.set $var$6
    local.get $var$6
    local.get $var$8
    call $~lib/rt/lm/LinkedList#set:prev
    local.get $var$8
    local.get $var$6
    call $~lib/rt/lm/LinkedList#set:next
    local.get $var$8
    local.get $var$7
    call $~lib/rt/lm/LinkedList#set:prev
    local.get $var$7
    local.get $var$8
    call $~lib/rt/lm/LinkedList#set:next
   end
  end
  local.get $var$1
  local.set $var$6
  local.get $var$6
  i32.load $0
  local.set $var$3
  local.get $var$6
  i32.load $0 offset=4
  local.set $var$4
  local.get $var$3
  if (result i32)
   local.get $var$4
  else
   i32.const 0
  end
  if
   local.get $var$3
   local.get $var$4
   call $~lib/rt/lm/LinkedList#set:next
   local.get $var$4
   local.get $var$3
   call $~lib/rt/lm/LinkedList#set:prev
   local.get $var$6
   i32.const 0
   call $~lib/rt/lm/LinkedList#set:prev
   local.get $var$6
   i32.const 0
   call $~lib/rt/lm/LinkedList#set:next
  else
   unreachable
  end
  local.get $var$2
  i32.const 12
  i32.add
 )
 (func $~lib/rt/tcms/Object#set:rtId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=12
 )
 (func $~lib/rt/tcms/Object#set:rtSize (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=16
 )
 (func $~lib/rt/tcms/Object#set:nextWithColor (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=4
 )
 (func $~lib/rt/tcms/Object#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store $0 offset=8
 )
 (func $~lib/rt/tcms/initLazy (param $space i32) (result i32)
  local.get $space
  local.get $space
  call $~lib/rt/tcms/Object#set:nextWithColor
  local.get $space
  local.get $space
  call $~lib/rt/tcms/Object#set:prev
  local.get $space
 )
 (func $~lib/rt/tcms/Object#set:next (param $this i32) (param $obj i32)
  local.get $this
  local.get $obj
  local.get $this
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/tcms/Object#set:nextWithColor
 )
 (func $~lib/rt/tcms/Object#linkTo (param $this i32) (param $list i32) (param $withColor i32)
  (local $prev i32)
  local.get $list
  i32.load $0 offset=8
  local.set $prev
  local.get $this
  local.get $list
  local.get $withColor
  i32.or
  call $~lib/rt/tcms/Object#set:nextWithColor
  local.get $this
  local.get $prev
  call $~lib/rt/tcms/Object#set:prev
  local.get $prev
  local.get $this
  call $~lib/rt/tcms/Object#set:next
  local.get $list
  local.get $this
  call $~lib/rt/tcms/Object#set:prev
 )
 (func $~lib/rt/tcms/Object#get:size (param $this i32) (result i32)
  i32.const 4
  local.get $this
  i32.load $0
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
 )
 (func $~lib/rt/tcms/__new (param $size i32) (param $id i32) (result i32)
  (local $obj i32)
  local.get $size
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 48
   i32.const 112
   i32.const 125
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  local.get $size
  i32.add
  call $~lib/rt/lm/__alloc
  i32.const 4
  i32.sub
  local.set $obj
  local.get $obj
  local.get $id
  call $~lib/rt/tcms/Object#set:rtId
  local.get $obj
  local.get $size
  call $~lib/rt/tcms/Object#set:rtSize
  local.get $obj
  global.get $~lib/rt/tcms/fromSpace
  global.get $~lib/rt/tcms/white
  call $~lib/rt/tcms/Object#linkTo
  global.get $~lib/rt/tcms/total
  local.get $obj
  call $~lib/rt/tcms/Object#get:size
  i32.add
  global.set $~lib/rt/tcms/total
  local.get $obj
  i32.const 20
  i32.add
 )
 (func $~lib/rt/tcms/Object#get:color (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
  i32.const 3
  i32.and
 )
 (func $~lib/rt/tcms/Object#get:next (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/rt/tcms/Object#unlink (param $this i32)
  (local $next i32)
  (local $prev i32)
  local.get $this
  call $~lib/rt/tcms/Object#get:next
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
    i32.const 112
    i32.const 101
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
   i32.const 112
   i32.const 105
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $next
  local.get $prev
  call $~lib/rt/tcms/Object#set:prev
  local.get $prev
  local.get $next
  call $~lib/rt/tcms/Object#set:next
 )
 (func $~lib/rt/tcms/__pin (param $ptr i32) (result i32)
  (local $var$1 i32)
  local.get $ptr
  if
   local.get $ptr
   i32.const 20
   i32.sub
   local.set $var$1
   local.get $var$1
   call $~lib/rt/tcms/Object#get:color
   i32.const 3
   i32.eq
   if
    i32.const 256
    i32.const 112
    i32.const 181
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $var$1
   call $~lib/rt/tcms/Object#unlink
   local.get $var$1
   global.get $~lib/rt/tcms/pinSpace
   i32.const 3
   call $~lib/rt/tcms/Object#linkTo
  end
  local.get $ptr
 )
 (func $~lib/rt/tcms/__unpin (param $ptr i32)
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
  local.get $obj
  call $~lib/rt/tcms/Object#get:color
  i32.const 3
  i32.ne
  if
   i32.const 352
   i32.const 112
   i32.const 195
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $obj
  call $~lib/rt/tcms/Object#unlink
  local.get $obj
  global.get $~lib/rt/tcms/fromSpace
  global.get $~lib/rt/tcms/white
  call $~lib/rt/tcms/Object#linkTo
 )
 (func $~lib/rt/lm/mergeBlock (param $prevPtr i32) (param $blockPtr i32) (result i32)
  (local $var$2 i32)
  (local $var$3 i32)
  (local $var$4 i32)
  (local $var$5 i32)
  (local $var$6 i32)
  (local $var$7 i32)
  (local $var$8 i32)
  local.get $blockPtr
  local.set $var$2
  local.get $prevPtr
  global.get $~lib/rt/lm/freeListPtr
  i32.ne
  if (result i32)
   local.get $blockPtr
   global.get $~lib/rt/lm/freeListPtr
   i32.ne
  else
   i32.const 0
  end
  if (result i32)
   local.get $prevPtr
  else
   i32.const 0
  end
  if (result i32)
   local.get $blockPtr
  else
   i32.const 0
  end
  if
   local.get $prevPtr
   local.set $var$3
   local.get $prevPtr
   local.get $var$3
   i32.load $0 offset=8
   i32.add
   i32.const 12
   i32.add
   local.set $var$4
   local.get $blockPtr
   local.get $var$4
   i32.sub
   i32.const 12
   i32.lt_u
   if
    local.get $var$2
    local.get $var$2
    i32.load $0 offset=8
    i32.add
    i32.const 12
    i32.add
    local.set $var$5
    local.get $var$3
    local.get $var$3
    i32.load $0 offset=8
    local.get $var$5
    local.get $var$4
    i32.sub
    i32.add
    call $~lib/rt/lm/Block#set:size
    local.get $blockPtr
    local.set $var$6
    local.get $var$6
    i32.load $0
    local.set $var$7
    local.get $var$6
    i32.load $0 offset=4
    local.set $var$8
    local.get $var$7
    if (result i32)
     local.get $var$8
    else
     i32.const 0
    end
    if
     local.get $var$7
     local.get $var$8
     call $~lib/rt/lm/LinkedList#set:next
     local.get $var$8
     local.get $var$7
     call $~lib/rt/lm/LinkedList#set:prev
     local.get $var$6
     i32.const 0
     call $~lib/rt/lm/LinkedList#set:prev
     local.get $var$6
     i32.const 0
     call $~lib/rt/lm/LinkedList#set:next
    else
     unreachable
    end
    i32.const 1
    return
   end
  end
  i32.const 0
 )
 (func $~lib/rt/lm/__free (param $ptr i32)
  (local $freeBlockPtr i32)
  (local $foundPos i32)
  (local $var$3 i32)
  (local $var$4 i32)
  (local $var$5 i32)
  (local $endBlock i32)
  (local $endPtr i32)
  local.get $ptr
  i32.eqz
  if
   unreachable
  end
  local.get $ptr
  i32.const 12
  i32.sub
  local.set $freeBlockPtr
  i32.const 0
  local.set $foundPos
  global.get $~lib/rt/lm/freelist
  i32.load $0 offset=4
  local.set $var$3
  block $for-break0
   loop $for-loop|0
    local.get $var$3
    global.get $~lib/rt/lm/freeListPtr
    i32.ne
    if (result i32)
     local.get $var$3
     i32.load $0 offset=4
     i32.const 0
     i32.ne
    else
     i32.const 0
    end
    local.set $var$4
    local.get $var$4
    if
     local.get $var$3
     local.get $freeBlockPtr
     i32.gt_u
     if
      local.get $freeBlockPtr
      local.set $endPtr
      local.get $var$3
      i32.load $0
      local.set $endBlock
      local.get $var$3
      local.set $var$5
      local.get $var$5
      local.get $endPtr
      call $~lib/rt/lm/LinkedList#set:prev
      local.get $endPtr
      local.get $var$5
      call $~lib/rt/lm/LinkedList#set:next
      local.get $endPtr
      local.get $endBlock
      call $~lib/rt/lm/LinkedList#set:prev
      local.get $endBlock
      local.get $endPtr
      call $~lib/rt/lm/LinkedList#set:next
      i32.const 1
      local.set $foundPos
      br $for-break0
     end
     local.get $var$3
     i32.load $0 offset=4
     local.set $var$3
     br $for-loop|0
    end
   end
  end
  local.get $foundPos
  i32.eqz
  if
   local.get $freeBlockPtr
   local.set $endPtr
   global.get $~lib/rt/lm/freelist
   i32.load $0
   local.set $endBlock
   global.get $~lib/rt/lm/freelist
   local.set $var$5
   local.get $var$5
   local.get $endPtr
   call $~lib/rt/lm/LinkedList#set:prev
   local.get $endPtr
   local.get $var$5
   call $~lib/rt/lm/LinkedList#set:next
   local.get $endPtr
   local.get $endBlock
   call $~lib/rt/lm/LinkedList#set:prev
   local.get $endBlock
   local.get $endPtr
   call $~lib/rt/lm/LinkedList#set:next
  end
  global.get $~lib/rt/lm/freeListPtr
  local.set $endPtr
  global.get $~lib/rt/lm/freelist
  i32.load $0 offset=4
  local.set $endBlock
  loop $for-loop|1
   local.get $endBlock
   global.get $~lib/rt/lm/freeListPtr
   i32.ne
   if (result i32)
    local.get $endBlock
    i32.load $0 offset=4
    i32.const 0
    i32.ne
   else
    i32.const 0
   end
   local.set $var$5
   local.get $var$5
   if
    block $for-continue|1
     local.get $endBlock
     local.set $var$3
     local.get $endBlock
     i32.load $0
     local.set $var$4
     local.get $var$4
     local.get $var$3
     call $~lib/rt/lm/mergeBlock
     if
      br $for-continue|1
     end
     local.get $var$3
     local.set $endPtr
    end
    local.get $endBlock
    i32.load $0 offset=4
    local.set $endBlock
    br $for-loop|1
   end
  end
  local.get $endPtr
  local.set $endBlock
  local.get $endPtr
  local.get $endBlock
  i32.load $0 offset=4
  call $~lib/rt/lm/mergeBlock
  drop
 )
 (func $~lib/rt/tcms/__collect
  (local $pn i32)
  (local $iter i32)
  (local $var$2 i32)
  (local $black i32)
  (local $to i32)
  (local $from i32)
  (local $newNext i32)
  i32.const 0
  drop
  i32.const 0
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/tcms/pinSpace
  local.set $pn
  local.get $pn
  call $~lib/rt/tcms/Object#get:next
  local.set $iter
  loop $while-continue|0
   local.get $iter
   local.get $pn
   i32.ne
   local.set $var$2
   local.get $var$2
   if
    i32.const 1
    drop
    local.get $iter
    call $~lib/rt/tcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 112
     i32.const 213
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $iter
    i32.const 20
    i32.add
    i32.const 0
    call $~lib/rt/__visit_members
    local.get $iter
    call $~lib/rt/tcms/Object#get:next
    local.set $iter
    br $while-continue|0
   end
  end
  global.get $~lib/rt/tcms/white
  i32.eqz
  local.set $black
  global.get $~lib/rt/tcms/toSpace
  local.set $to
  local.get $to
  call $~lib/rt/tcms/Object#get:next
  local.set $iter
  loop $while-continue|1
   local.get $iter
   local.get $to
   i32.ne
   local.set $var$2
   local.get $var$2
   if
    i32.const 1
    drop
    local.get $iter
    call $~lib/rt/tcms/Object#get:color
    local.get $black
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 112
     i32.const 223
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $iter
    i32.const 20
    i32.add
    i32.const 0
    call $~lib/rt/__visit_members
    local.get $iter
    call $~lib/rt/tcms/Object#get:next
    local.set $iter
    br $while-continue|1
   end
  end
  global.get $~lib/rt/tcms/fromSpace
  local.set $from
  local.get $from
  call $~lib/rt/tcms/Object#get:next
  local.set $iter
  loop $while-continue|2
   local.get $iter
   local.get $from
   i32.ne
   local.set $var$2
   local.get $var$2
   if
    i32.const 1
    drop
    local.get $iter
    call $~lib/rt/tcms/Object#get:color
    global.get $~lib/rt/tcms/white
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 112
     i32.const 232
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $iter
    call $~lib/rt/tcms/Object#get:next
    local.set $newNext
    local.get $iter
    global.get $~lib/memory/__heap_base
    i32.lt_u
    if
     local.get $iter
     i32.const 0
     call $~lib/rt/tcms/Object#set:nextWithColor
     local.get $iter
     i32.const 0
     call $~lib/rt/tcms/Object#set:prev
    else
     global.get $~lib/rt/tcms/total
     local.get $iter
     call $~lib/rt/tcms/Object#get:size
     i32.sub
     global.set $~lib/rt/tcms/total
     i32.const 0
     drop
     local.get $iter
     i32.const 4
     i32.add
     call $~lib/rt/lm/__free
    end
    local.get $newNext
    local.set $iter
    br $while-continue|2
   end
  end
  local.get $from
  local.get $from
  call $~lib/rt/tcms/Object#set:nextWithColor
  local.get $from
  local.get $from
  call $~lib/rt/tcms/Object#set:prev
  local.get $to
  global.set $~lib/rt/tcms/fromSpace
  local.get $from
  global.set $~lib/rt/tcms/toSpace
  local.get $black
  global.set $~lib/rt/tcms/white
  i32.const 0
  drop
  i32.const 0
  drop
 )
 (func $~lib/rt/tcms/__visit (param $ptr i32) (param $cookie i32)
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
  call $~lib/rt/tcms/Object#get:color
  global.get $~lib/rt/tcms/white
  i32.eq
  if
   local.get $obj
   call $~lib/rt/tcms/Object#unlink
   local.get $obj
   global.get $~lib/rt/tcms/toSpace
   global.get $~lib/rt/tcms/white
   i32.eqz
   call $~lib/rt/tcms/Object#linkTo
  end
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  i32.const 48
  local.get $0
  call $~lib/rt/tcms/__visit
  i32.const 256
  local.get $0
  call $~lib/rt/tcms/__visit
  i32.const 352
  local.get $0
  call $~lib/rt/tcms/__visit
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/tcms/__visit
  end
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/arraybuffer/ArrayBufferView
    block $~lib/string/String
     block $~lib/arraybuffer/ArrayBuffer
      local.get $0
      i32.const 8
      i32.sub
      i32.load $0
      br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $invalid
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
  unreachable
 )
 (func $~start
  i32.const 208
  call $~lib/rt/tcms/initLazy
  global.set $~lib/rt/tcms/fromSpace
  i32.const 304
  call $~lib/rt/tcms/initLazy
  global.set $~lib/rt/tcms/pinSpace
  i32.const 400
  call $~lib/rt/tcms/initLazy
  global.set $~lib/rt/tcms/toSpace
 )
)
