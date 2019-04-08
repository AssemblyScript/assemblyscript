(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00,\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00a\00l\00l\00o\00c\00a\00t\00o\00r\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 72) "\10\00\00\00(\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (data (i32.const 128) "\12\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00I\00\00\00\0e\00\00\00\08\00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/util/runtime/HEADER_SIZE i32 (i32.const 16))
 (global $~lib/allocator/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/allocator/tlsf/Root.SL_START i32 (i32.const 4))
 (global $~lib/allocator/tlsf/SL_BITS i32 (i32.const 5))
 (global $~lib/allocator/tlsf/SB_BITS i32 (i32.const 8))
 (global $~lib/allocator/tlsf/FL_BITS i32 (i32.const 22))
 (global $~lib/allocator/tlsf/Root.SL_END i32 (i32.const 92))
 (global $~lib/allocator/tlsf/Root.HL_START i32 (i32.const 96))
 (global $~lib/allocator/tlsf/SL_SIZE i32 (i32.const 32))
 (global $~lib/allocator/tlsf/Root.HL_END i32 (i32.const 2912))
 (global $~lib/allocator/tlsf/Root.SIZE i32 (i32.const 2916))
 (global $~lib/allocator/tlsf/Block.INFO i32 (i32.const 8))
 (global $~lib/allocator/tlsf/Block.MIN_SIZE i32 (i32.const 16))
 (global $~lib/allocator/tlsf/FREE i32 (i32.const 1))
 (global $~lib/allocator/tlsf/LEFT_FREE i32 (i32.const 2))
 (global $~lib/allocator/tlsf/TAGS i32 (i32.const 3))
 (global $~lib/allocator/tlsf/Block.MAX_SIZE i32 (i32.const 1073741824))
 (global $~lib/allocator/tlsf/SB_SIZE i32 (i32.const 256))
 (global $~lib/util/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/fromSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/toSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/white (mut i32) (i32.const 0))
 (global $~lib/runtime/ROOT (mut i32) (i32.const 0))
 (global $~lib/runtime/RTTI_BASE i32 (i32.const 128))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 280))
 (global $~lib/capabilities i32 (i32.const 2))
 (export "memory" (memory $0))
 (export "$.instanceof" (func $~lib/runtime/runtime.instanceof))
 (export "$.flags" (func $~lib/runtime/runtime.flags))
 (export "$.newObject" (func $~lib/runtime/runtime.newObject))
 (export "$.newString" (func $~lib/runtime/runtime.newString))
 (export "$.newArrayBuffer" (func $~lib/runtime/runtime.newArrayBuffer))
 (export "$.newArray" (func $~lib/runtime/runtime.newArray))
 (export "$.retain" (func $~lib/runtime/runtime.retain))
 (export "$.release" (func $~lib/runtime/runtime.release))
 (export "$.collect" (func $~lib/runtime/runtime.collect))
 (export "$.capabilities" (global $~lib/capabilities))
 (start $start)
 (func $~lib/runtime/runtime.instanceof (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  i32.load
  local.set $2
  global.get $~lib/runtime/RTTI_BASE
  local.set $3
  local.get $2
  if (result i32)
   local.get $2
   local.get $3
   i32.load
   i32.le_u
  else   
   local.get $2
  end
  if
   loop $continue|0
    local.get $2
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $3
    local.get $2
    i32.const 8
    i32.mul
    i32.add
    i32.load offset=4
    local.tee $2
    br_if $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/runtime/runtime.flags (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/runtime/RTTI_BASE
  local.set $1
  local.get $0
  i32.eqz
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $0
   local.get $1
   i32.load
   i32.gt_u
  end
  if (result i32)
   unreachable
  else   
   local.get $1
   local.get $0
   i32.const 8
   i32.mul
   i32.add
   i32.load
  end
 )
 (func $~lib/util/runtime/adjust (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/allocator/tlsf/Root#set:tailRef (; 4 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 0
  local.get $1
  i32.store offset=2912
 )
 (func $~lib/allocator/tlsf/Root#setSLMap (; 5 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  global.get $~lib/allocator/tlsf/FL_BITS
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 4
  i32.mul
  i32.add
  local.get $2
  i32.store offset=4
 )
 (func $~lib/allocator/tlsf/Root#setHead (; 6 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $1
  global.get $~lib/allocator/tlsf/FL_BITS
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 184
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $~lib/allocator/tlsf/SL_SIZE
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 185
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  global.get $~lib/allocator/tlsf/SL_SIZE
  i32.mul
  local.get $2
  i32.add
  i32.const 4
  i32.mul
  i32.add
  local.get $3
  i32.store offset=96
 )
 (func $~lib/allocator/tlsf/Root#get:tailRef (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  i32.load offset=2912
 )
 (func $~lib/allocator/tlsf/Block#get:right (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 104
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  global.get $~lib/allocator/tlsf/Block.INFO
  i32.add
  local.get $0
  i32.load
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.tee $1
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 24
   i32.const 105
   i32.const 11
   call $~lib/builtins/abort
   unreachable
  else   
   local.get $1
  end
 )
 (func $~lib/allocator/tlsf/fls<usize> (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 447
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 31
  local.get $0
  i32.clz
  i32.sub
 )
 (func $~lib/allocator/tlsf/Root#getHead (; 10 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  global.get $~lib/allocator/tlsf/FL_BITS
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 175
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $~lib/allocator/tlsf/SL_SIZE
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 176
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  global.get $~lib/allocator/tlsf/SL_SIZE
  i32.mul
  local.get $2
  i32.add
  i32.const 4
  i32.mul
  i32.add
  i32.load offset=96
 )
 (func $~lib/allocator/tlsf/Root#getSLMap (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  global.get $~lib/allocator/tlsf/FL_BITS
  i32.lt_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 153
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 4
  i32.mul
  i32.add
  i32.load offset=4
 )
 (func $~lib/allocator/tlsf/Root#remove (; 12 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $2
  global.get $~lib/allocator/tlsf/FREE
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 277
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  local.get $3
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.ge_u
  local.tee $4
  if (result i32)
   local.get $3
   global.get $~lib/allocator/tlsf/Block.MAX_SIZE
   i32.lt_u
  else   
   local.get $4
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 279
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  global.get $~lib/allocator/tlsf/SB_SIZE
  i32.lt_u
  if
   i32.const 0
   local.set $5
   local.get $3
   i32.const 8
   i32.div_u
   local.set $6
  else   
   local.get $3
   call $~lib/allocator/tlsf/fls<usize>
   local.set $5
   local.get $3
   local.get $5
   global.get $~lib/allocator/tlsf/SL_BITS
   i32.sub
   i32.shr_u
   i32.const 1
   global.get $~lib/allocator/tlsf/SL_BITS
   i32.shl
   i32.xor
   local.set $6
   local.get $5
   global.get $~lib/allocator/tlsf/SB_BITS
   i32.const 1
   i32.sub
   i32.sub
   local.set $5
  end
  local.get $1
  i32.load offset=4
  local.set $7
  local.get $1
  i32.load offset=8
  local.set $8
  local.get $7
  if
   local.get $7
   local.get $8
   i32.store offset=8
  end
  local.get $8
  if
   local.get $8
   local.get $7
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $5
  local.get $6
  call $~lib/allocator/tlsf/Root#getHead
  i32.eq
  if
   local.get $0
   local.get $5
   local.get $6
   local.get $8
   call $~lib/allocator/tlsf/Root#setHead
   local.get $8
   i32.eqz
   if
    local.get $0
    local.get $5
    call $~lib/allocator/tlsf/Root#getSLMap
    local.set $4
    local.get $0
    local.get $5
    local.get $4
    i32.const 1
    local.get $6
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $4
    call $~lib/allocator/tlsf/Root#setSLMap
    local.get $4
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $5
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/allocator/tlsf/Block#get:left (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  global.get $~lib/allocator/tlsf/LEFT_FREE
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 96
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.sub
  i32.load
  local.tee $1
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 24
   i32.const 97
   i32.const 11
   call $~lib/builtins/abort
   unreachable
  else   
   local.get $1
  end
 )
 (func $~lib/allocator/tlsf/Root#setJump (; 14 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  i32.load
  global.get $~lib/allocator/tlsf/FREE
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 353
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/allocator/tlsf/Block#get:right
  local.get $2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 354
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  global.get $~lib/allocator/tlsf/LEFT_FREE
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 355
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 4
  i32.sub
  local.get $1
  i32.store
 )
 (func $~lib/allocator/tlsf/Root#insert (; 15 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 208
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  local.get $2
  global.get $~lib/allocator/tlsf/FREE
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 210
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  local.tee $3
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.ge_u
  local.tee $4
  if (result i32)
   local.get $3
   global.get $~lib/allocator/tlsf/Block.MAX_SIZE
   i32.lt_u
  else   
   local.get $4
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 212
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/allocator/tlsf/Block#get:right
  local.tee $4
  i32.eqz
  if (result i32)
   i32.const 0
   i32.const 24
   i32.const 216
   i32.const 23
   call $~lib/builtins/abort
   unreachable
  else   
   local.get $4
  end
  local.set $5
  local.get $5
  i32.load
  local.set $6
  local.get $6
  global.get $~lib/allocator/tlsf/FREE
  i32.and
  if
   local.get $0
   local.get $5
   call $~lib/allocator/tlsf/Root#remove
   local.get $1
   local.get $2
   global.get $~lib/allocator/tlsf/Block.INFO
   local.get $6
   global.get $~lib/allocator/tlsf/TAGS
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.add
   local.tee $2
   i32.store
   local.get $1
   call $~lib/allocator/tlsf/Block#get:right
   local.set $5
   local.get $5
   i32.load
   local.set $6
  end
  local.get $2
  global.get $~lib/allocator/tlsf/LEFT_FREE
  i32.and
  if
   local.get $1
   call $~lib/allocator/tlsf/Block#get:left
   local.tee $4
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 24
    i32.const 230
    i32.const 24
    call $~lib/builtins/abort
    unreachable
   else    
    local.get $4
   end
   local.set $4
   local.get $4
   i32.load
   local.set $7
   local.get $7
   global.get $~lib/allocator/tlsf/FREE
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 232
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $4
   call $~lib/allocator/tlsf/Root#remove
   local.get $4
   local.get $7
   global.get $~lib/allocator/tlsf/Block.INFO
   local.get $2
   global.get $~lib/allocator/tlsf/TAGS
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.add
   local.tee $7
   i32.store
   local.get $4
   local.set $1
   local.get $7
   local.set $2
  end
  local.get $5
  local.get $6
  global.get $~lib/allocator/tlsf/LEFT_FREE
  i32.or
  i32.store
  local.get $0
  local.get $1
  local.get $5
  call $~lib/allocator/tlsf/Root#setJump
  local.get $2
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  local.get $3
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.ge_u
  local.tee $7
  if (result i32)
   local.get $3
   global.get $~lib/allocator/tlsf/Block.MAX_SIZE
   i32.lt_u
  else   
   local.get $7
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 245
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  global.get $~lib/allocator/tlsf/SB_SIZE
  i32.lt_u
  if
   i32.const 0
   local.set $8
   local.get $3
   i32.const 8
   i32.div_u
   local.set $9
  else   
   local.get $3
   call $~lib/allocator/tlsf/fls<usize>
   local.set $8
   local.get $3
   local.get $8
   global.get $~lib/allocator/tlsf/SL_BITS
   i32.sub
   i32.shr_u
   i32.const 1
   global.get $~lib/allocator/tlsf/SL_BITS
   i32.shl
   i32.xor
   local.set $9
   local.get $8
   global.get $~lib/allocator/tlsf/SB_BITS
   i32.const 1
   i32.sub
   i32.sub
   local.set $8
  end
  local.get $0
  local.get $8
  local.get $9
  call $~lib/allocator/tlsf/Root#getHead
  local.set $10
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $10
  i32.store offset=8
  local.get $10
  if
   local.get $10
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $8
  local.get $9
  local.get $1
  call $~lib/allocator/tlsf/Root#setHead
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $8
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $8
  local.get $0
  local.get $8
  call $~lib/allocator/tlsf/Root#getSLMap
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  call $~lib/allocator/tlsf/Root#setSLMap
 )
 (func $~lib/allocator/tlsf/Root#addMemory (; 16 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  local.get $2
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 396
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 7
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 397
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 7
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 398
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/allocator/tlsf/Root#get:tailRef
  local.set $3
  i32.const 0
  local.set $4
  local.get $3
  if
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 403
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.get $~lib/allocator/tlsf/Block.INFO
   i32.sub
   local.get $3
   i32.eq
   if
    local.get $1
    global.get $~lib/allocator/tlsf/Block.INFO
    i32.sub
    local.set $1
    local.get $3
    i32.load
    local.set $4
   end
  else   
   local.get $1
   local.get $0
   global.get $~lib/allocator/tlsf/Root.SIZE
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 412
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $5
  local.get $5
  global.get $~lib/allocator/tlsf/Block.INFO
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.add
  global.get $~lib/allocator/tlsf/Block.INFO
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $5
  i32.const 2
  global.get $~lib/allocator/tlsf/Block.INFO
  i32.mul
  i32.sub
  local.set $6
  local.get $1
  local.set $7
  local.get $7
  local.get $6
  global.get $~lib/allocator/tlsf/FREE
  i32.or
  local.get $4
  global.get $~lib/allocator/tlsf/LEFT_FREE
  i32.and
  i32.or
  i32.store
  local.get $7
  i32.const 0
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $5
  i32.add
  global.get $~lib/allocator/tlsf/Block.INFO
  i32.sub
  local.set $8
  local.get $8
  i32.const 0
  global.get $~lib/allocator/tlsf/LEFT_FREE
  i32.or
  i32.store
  local.get $0
  local.get $8
  call $~lib/allocator/tlsf/Root#set:tailRef
  local.get $0
  local.get $7
  call $~lib/allocator/tlsf/Root#insert
  i32.const 1
 )
 (func $~lib/allocator/tlsf/ffs<usize> (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.ctz
 )
 (func $~lib/allocator/tlsf/ffs<u32> (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.ctz
 )
 (func $~lib/allocator/tlsf/Root#search (; 19 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.ge_u
  local.tee $2
  if (result i32)
   local.get $1
   global.get $~lib/allocator/tlsf/Block.MAX_SIZE
   i32.lt_u
  else   
   local.get $2
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 315
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $~lib/allocator/tlsf/SB_SIZE
  i32.lt_u
  if
   i32.const 0
   local.set $3
   local.get $1
   i32.const 8
   i32.div_u
   local.set $4
  else   
   local.get $1
   call $~lib/allocator/tlsf/fls<usize>
   local.set $3
   local.get $1
   local.get $3
   global.get $~lib/allocator/tlsf/SL_BITS
   i32.sub
   i32.shr_u
   i32.const 1
   global.get $~lib/allocator/tlsf/SL_BITS
   i32.shl
   i32.xor
   local.set $4
   local.get $3
   global.get $~lib/allocator/tlsf/SB_BITS
   i32.const 1
   i32.sub
   i32.sub
   local.set $3
   local.get $4
   global.get $~lib/allocator/tlsf/SL_SIZE
   i32.const 1
   i32.sub
   i32.lt_u
   if
    local.get $4
    i32.const 1
    i32.add
    local.set $4
   else    
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    i32.const 0
    local.set $4
   end
  end
  local.get $0
  local.get $3
  call $~lib/allocator/tlsf/Root#getSLMap
  i32.const 0
  i32.const -1
  i32.xor
  local.get $4
  i32.shl
  i32.and
  local.set $5
  local.get $5
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $3
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $2
   local.get $2
   i32.eqz
   if
    i32.const 0
    local.set $6
   else    
    local.get $2
    call $~lib/allocator/tlsf/ffs<usize>
    local.set $3
    local.get $0
    local.get $3
    call $~lib/allocator/tlsf/Root#getSLMap
    local.tee $7
    if (result i32)
     local.get $7
    else     
     i32.const 0
     i32.const 24
     i32.const 342
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.set $5
    local.get $0
    local.get $3
    local.get $5
    call $~lib/allocator/tlsf/ffs<u32>
    call $~lib/allocator/tlsf/Root#getHead
    local.set $6
   end
  else   
   local.get $0
   local.get $3
   local.get $5
   call $~lib/allocator/tlsf/ffs<u32>
   call $~lib/allocator/tlsf/Root#getHead
   local.set $6
  end
  local.get $6
 )
 (func $~lib/allocator/tlsf/Root#use (; 20 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $3
  global.get $~lib/allocator/tlsf/FREE
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 367
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.ge_u
  local.tee $4
  if (result i32)
   local.get $2
   global.get $~lib/allocator/tlsf/Block.MAX_SIZE
   i32.lt_u
  else   
   local.get $4
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 368
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 7
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 369
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/allocator/tlsf/Root#remove
  local.get $3
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $5
  local.get $5
  global.get $~lib/allocator/tlsf/Block.INFO
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  i32.add
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   global.get $~lib/allocator/tlsf/LEFT_FREE
   i32.and
   i32.or
   i32.store
   local.get $1
   global.get $~lib/allocator/tlsf/Block.INFO
   i32.add
   local.get $2
   i32.add
   local.set $4
   local.get $4
   local.get $5
   global.get $~lib/allocator/tlsf/Block.INFO
   i32.sub
   global.get $~lib/allocator/tlsf/FREE
   i32.or
   i32.store
   local.get $0
   local.get $4
   call $~lib/allocator/tlsf/Root#insert
  else   
   local.get $1
   local.get $3
   global.get $~lib/allocator/tlsf/FREE
   i32.const -1
   i32.xor
   i32.and
   i32.store
   local.get $1
   call $~lib/allocator/tlsf/Block#get:right
   local.tee $4
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 24
    i32.const 387
    i32.const 25
    call $~lib/builtins/abort
    unreachable
   else    
    local.get $4
   end
   local.set $4
   local.get $4
   local.get $4
   i32.load
   global.get $~lib/allocator/tlsf/LEFT_FREE
   i32.const -1
   i32.xor
   i32.and
   i32.store
  end
  local.get $1
  global.get $~lib/allocator/tlsf/Block.INFO
  i32.add
 )
 (func $~lib/allocator/tlsf/__mem_allocate (; 21 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/allocator/tlsf/ROOT
  local.set $1
  local.get $1
  i32.eqz
  if
   global.get $~lib/memory/HEAP_BASE
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   local.set $2
   current_memory
   local.set $3
   local.get $2
   global.get $~lib/allocator/tlsf/Root.SIZE
   i32.add
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $4
   local.get $4
   local.get $3
   i32.gt_s
   local.tee $5
   if (result i32)
    local.get $4
    local.get $3
    i32.sub
    grow_memory
    i32.const 0
    i32.lt_s
   else    
    local.get $5
   end
   if
    unreachable
   end
   local.get $2
   local.tee $1
   global.set $~lib/allocator/tlsf/ROOT
   local.get $1
   i32.const 0
   call $~lib/allocator/tlsf/Root#set:tailRef
   local.get $1
   i32.const 0
   i32.store
   block $break|0
    i32.const 0
    local.set $5
    loop $repeat|0
     local.get $5
     global.get $~lib/allocator/tlsf/FL_BITS
     i32.lt_u
     i32.eqz
     br_if $break|0
     block
      local.get $1
      local.get $5
      i32.const 0
      call $~lib/allocator/tlsf/Root#setSLMap
      block $break|1
       i32.const 0
       local.set $6
       loop $repeat|1
        local.get $6
        global.get $~lib/allocator/tlsf/SL_SIZE
        i32.lt_u
        i32.eqz
        br_if $break|1
        local.get $1
        local.get $5
        local.get $6
        i32.const 0
        call $~lib/allocator/tlsf/Root#setHead
        local.get $6
        i32.const 1
        i32.add
        local.set $6
        br $repeat|1
        unreachable
       end
       unreachable
      end
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   local.get $1
   local.get $2
   global.get $~lib/allocator/tlsf/Root.SIZE
   i32.add
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   current_memory
   i32.const 16
   i32.shl
   call $~lib/allocator/tlsf/Root#addMemory
   drop
  end
  local.get $0
  global.get $~lib/allocator/tlsf/Block.MAX_SIZE
  i32.gt_u
  if
   unreachable
  end
  local.get $0
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  local.tee $4
  global.get $~lib/allocator/tlsf/Block.MIN_SIZE
  local.tee $3
  local.get $4
  local.get $3
  i32.gt_u
  select
  local.set $0
  local.get $1
  local.get $0
  call $~lib/allocator/tlsf/Root#search
  local.set $7
  local.get $7
  i32.eqz
  if
   current_memory
   local.set $4
   local.get $0
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $4
   local.tee $2
   local.get $3
   local.tee $5
   local.get $2
   local.get $5
   i32.gt_s
   select
   local.set $2
   local.get $2
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $3
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   current_memory
   local.set $5
   local.get $1
   local.get $4
   i32.const 16
   i32.shl
   local.get $5
   i32.const 16
   i32.shl
   call $~lib/allocator/tlsf/Root#addMemory
   drop
   local.get $1
   local.get $0
   call $~lib/allocator/tlsf/Root#search
   local.tee $6
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 24
    i32.const 502
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   else    
    local.get $6
   end
   local.set $7
  end
  local.get $7
  i32.load
  global.get $~lib/allocator/tlsf/TAGS
  i32.const -1
  i32.xor
  i32.and
  local.get $0
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 505
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $7
  local.get $0
  call $~lib/allocator/tlsf/Root#use
 )
 (func $~lib/memory/memory.allocate (; 22 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/tlsf/__mem_allocate
  return
 )
 (func $~lib/util/runtime/allocate (; 23 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/util/runtime/adjust
  call $~lib/memory/memory.allocate
  local.set $1
  local.get $1
  global.get $~lib/util/runtime/HEADER_MAGIC
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $1
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.add
 )
 (func $~lib/collector/itcm/ManagedObjectList#clear (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $0
  i32.store offset=12
 )
 (func $~lib/collector/itcm/maybeInit (; 25 ;) (type $FUNCSIG$v)
  global.get $~lib/collector/itcm/state
  i32.const 0
  i32.eq
  if
   global.get $~lib/util/runtime/HEADER_SIZE
   call $~lib/memory/memory.allocate
   global.set $~lib/collector/itcm/fromSpace
   global.get $~lib/collector/itcm/fromSpace
   i32.const -1
   i32.store
   global.get $~lib/collector/itcm/fromSpace
   i32.const 0
   i32.store offset=4
   global.get $~lib/collector/itcm/fromSpace
   call $~lib/collector/itcm/ManagedObjectList#clear
   global.get $~lib/util/runtime/HEADER_SIZE
   call $~lib/memory/memory.allocate
   global.set $~lib/collector/itcm/toSpace
   global.get $~lib/collector/itcm/toSpace
   i32.const -1
   i32.store
   global.get $~lib/collector/itcm/toSpace
   i32.const 0
   i32.store offset=4
   global.get $~lib/collector/itcm/toSpace
   call $~lib/collector/itcm/ManagedObjectList#clear
   global.get $~lib/collector/itcm/toSpace
   global.set $~lib/collector/itcm/iter
   i32.const 1
   global.set $~lib/collector/itcm/state
  end
 )
 (func $~lib/collector/itcm/ManagedObject#set:color (; 26 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.or
  i32.store offset=8
 )
 (func $~lib/collector/itcm/ManagedObject#set:next (; 27 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.and
  i32.or
  i32.store offset=8
 )
 (func $~lib/collector/itcm/ManagedObjectList#push (; 28 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $1
  local.get $0
  call $~lib/collector/itcm/ManagedObject#set:next
  local.get $1
  local.get $2
  i32.store offset=12
  local.get $2
  local.get $1
  call $~lib/collector/itcm/ManagedObject#set:next
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/collector/itcm/__ref_register (; 29 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  call $~lib/collector/itcm/maybeInit
  block $~lib/collector/itcm/refToObj|inlined.0 (result i32)
   local.get $0
   local.set $1
   local.get $1
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.sub
  end
  local.set $2
  local.get $2
  global.get $~lib/collector/itcm/white
  call $~lib/collector/itcm/ManagedObject#set:color
  global.get $~lib/collector/itcm/fromSpace
  local.get $2
  call $~lib/collector/itcm/ManagedObjectList#push
 )
 (func $~lib/util/runtime/register (; 30 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 131
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  local.set $2
  local.get $2
  i32.load
  global.get $~lib/util/runtime/HEADER_MAGIC
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 133
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
  call $~lib/collector/itcm/__ref_register
  local.get $0
 )
 (func $~lib/runtime/runtime.newObject (; 31 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/util/runtime/allocate
  local.get $1
  call $~lib/util/runtime/register
 )
 (func $~lib/runtime/runtime.newString (; 32 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.shl
  i32.const 16
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArrayBuffer (; 33 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 15
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 34 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/util/runtime/HEADER_SIZE
  i32.sub
  i32.load offset=4
 )
 (func $~lib/collector/itcm/ManagedObject#get:color (; 35 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.and
 )
 (func $~lib/collector/itcm/ManagedObject#get:next (; 36 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/collector/itcm/ManagedObject#unlink (; 37 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/collector/itcm/ManagedObject#get:next
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $1
  local.get $2
  i32.store offset=12
  local.get $2
  local.get $1
  call $~lib/collector/itcm/ManagedObject#set:next
 )
 (func $~lib/collector/itcm/ManagedObject#makeGray (; 38 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/collector/itcm/iter
  i32.eq
  if
   local.get $0
   i32.load offset=12
   global.set $~lib/collector/itcm/iter
  end
  local.get $0
  call $~lib/collector/itcm/ManagedObject#unlink
  global.get $~lib/collector/itcm/toSpace
  local.get $0
  call $~lib/collector/itcm/ManagedObjectList#push
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 2
  i32.or
  i32.store offset=8
 )
 (func $~lib/collector/itcm/__ref_link (; 39 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $~lib/collector/itcm/maybeInit
  block $~lib/collector/itcm/refToObj|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.sub
  end
  local.set $3
  local.get $3
  call $~lib/collector/itcm/ManagedObject#get:color
  global.get $~lib/collector/itcm/white
  i32.eqz
  i32.eq
  local.tee $2
  if (result i32)
   block $~lib/collector/itcm/refToObj|inlined.3 (result i32)
    local.get $0
    local.set $2
    local.get $2
    global.get $~lib/util/runtime/HEADER_SIZE
    i32.sub
   end
   call $~lib/collector/itcm/ManagedObject#get:color
   global.get $~lib/collector/itcm/white
   i32.eq
  else   
   local.get $2
  end
  if
   local.get $3
   call $~lib/collector/itcm/ManagedObject#makeGray
  end
 )
 (func $~lib/runtime/runtime.newArray (; 40 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/runtime/runtime.flags
  local.set $2
  local.get $2
  i32.const 16
  i32.div_u
  i32.const 31
  i32.and
  local.set $3
  local.get $1
  i32.eqz
  if
   i32.const 0
   local.tee $4
   call $~lib/runtime/runtime.newArrayBuffer
   local.set $1
  else   
   local.get $1
   call $~lib/arraybuffer/ArrayBuffer#get:byteLength
   local.set $4
  end
  local.get $0
  i32.const 16
  call $~lib/runtime/runtime.newObject
  local.set $5
  local.get $5
  local.tee $6
  local.get $1
  local.tee $7
  local.get $6
  i32.load
  local.tee $8
  i32.ne
  if (result i32)
   nop
   local.get $7
   local.get $6
   call $~lib/collector/itcm/__ref_link
   local.get $7
  else   
   local.get $7
  end
  i32.store
  local.get $5
  local.get $1
  i32.store offset=4
  local.get $5
  local.get $4
  i32.store offset=8
  local.get $5
  local.get $4
  local.get $3
  i32.shr_u
  i32.store offset=12
  local.get $2
  i32.const 1024
  i32.and
  if
   local.get $1
   local.set $6
   local.get $6
   local.get $4
   i32.add
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     local.get $8
     i32.lt_u
     if
      block
       local.get $6
       i32.load
       local.set $7
       local.get $7
       if
        local.get $7
        local.get $5
        call $~lib/collector/itcm/__ref_link
       end
       local.get $6
       i32.const 4
       i32.add
       local.set $6
      end
      br $continue|0
     end
    end
   end
  end
  local.get $5
 )
 (func $~lib/runtime/Root#constructor (; 41 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   call $~lib/util/runtime/allocate
   i32.const 18
   call $~lib/util/runtime/register
   local.set $0
  end
  local.get $0
 )
 (func $~lib/runtime/runtime.retain (; 42 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/runtime/ROOT
  call $~lib/collector/itcm/__ref_link
 )
 (func $~lib/runtime/runtime.release (; 43 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/allocator/tlsf/__mem_free (; 44 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   global.get $~lib/allocator/tlsf/ROOT
   local.set $1
   local.get $1
   if
    local.get $0
    global.get $~lib/allocator/tlsf/Block.INFO
    i32.sub
    local.set $2
    local.get $2
    i32.load
    local.set $3
    local.get $3
    global.get $~lib/allocator/tlsf/FREE
    i32.and
    i32.eqz
    i32.eqz
    if
     i32.const 0
     i32.const 24
     i32.const 518
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    local.get $3
    global.get $~lib/allocator/tlsf/FREE
    i32.or
    i32.store
    local.get $1
    local.get $0
    global.get $~lib/allocator/tlsf/Block.INFO
    i32.sub
    call $~lib/allocator/tlsf/Root#insert
   end
  end
 )
 (func $~lib/memory/memory.free (; 45 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/allocator/tlsf/__mem_free
 )
 (func $~lib/collector/itcm/step (; 46 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      block $case0|0
       global.get $~lib/collector/itcm/state
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
       local.get $1
       i32.const 3
       i32.eq
       br_if $case3|0
       br $break|0
      end
      unreachable
     end
     block
      call $~lib/runtime/__gc_mark_roots
      i32.const 2
      global.set $~lib/collector/itcm/state
      br $break|0
      unreachable
     end
     unreachable
    end
    block
     global.get $~lib/collector/itcm/iter
     call $~lib/collector/itcm/ManagedObject#get:next
     local.set $0
     local.get $0
     global.get $~lib/collector/itcm/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/collector/itcm/iter
      local.get $0
      global.get $~lib/collector/itcm/white
      i32.eqz
      call $~lib/collector/itcm/ManagedObject#set:color
      local.get $0
      i32.load
      block $~lib/collector/itcm/objToRef|inlined.0 (result i32)
       local.get $0
       local.set $1
       local.get $1
       global.get $~lib/util/runtime/HEADER_SIZE
       i32.add
      end
      call $~lib/runtime/__gc_mark_members
     else      
      call $~lib/runtime/__gc_mark_roots
      global.get $~lib/collector/itcm/iter
      call $~lib/collector/itcm/ManagedObject#get:next
      local.set $0
      local.get $0
      global.get $~lib/collector/itcm/toSpace
      i32.eq
      if
       global.get $~lib/collector/itcm/fromSpace
       local.set $1
       global.get $~lib/collector/itcm/toSpace
       global.set $~lib/collector/itcm/fromSpace
       local.get $1
       global.set $~lib/collector/itcm/toSpace
       global.get $~lib/collector/itcm/white
       i32.eqz
       global.set $~lib/collector/itcm/white
       local.get $1
       call $~lib/collector/itcm/ManagedObject#get:next
       global.set $~lib/collector/itcm/iter
       i32.const 3
       global.set $~lib/collector/itcm/state
      end
     end
     br $break|0
     unreachable
    end
    unreachable
   end
   block
    global.get $~lib/collector/itcm/iter
    local.set $0
    local.get $0
    global.get $~lib/collector/itcm/toSpace
    i32.ne
    if
     local.get $0
     call $~lib/collector/itcm/ManagedObject#get:next
     global.set $~lib/collector/itcm/iter
     local.get $0
     global.get $~lib/memory/HEAP_BASE
     i32.ge_u
     if
      local.get $0
      call $~lib/memory/memory.free
     end
    else     
     global.get $~lib/collector/itcm/toSpace
     call $~lib/collector/itcm/ManagedObjectList#clear
     i32.const 1
     global.set $~lib/collector/itcm/state
    end
    br $break|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/collector/itcm/__ref_collect (; 47 ;) (type $FUNCSIG$v)
  call $~lib/collector/itcm/maybeInit
  block $break|0
   loop $continue|0
    global.get $~lib/collector/itcm/state
    i32.const 1
    i32.ne
    if
     call $~lib/collector/itcm/step
     br $continue|0
    end
   end
  end
  block $break|1
   loop $continue|1
    call $~lib/collector/itcm/step
    global.get $~lib/collector/itcm/state
    i32.const 1
    i32.ne
    br_if $continue|1
   end
  end
 )
 (func $~lib/runtime/runtime.collect (; 48 ;) (type $FUNCSIG$v)
  call $~lib/collector/itcm/__ref_collect
 )
 (func $~lib/runtime/runtime#constructor (; 49 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  unreachable
 )
 (func $start (; 50 ;) (type $FUNCSIG$v)
  i32.const 0
  call $~lib/runtime/Root#constructor
  global.set $~lib/runtime/ROOT
 )
 (func $~lib/collector/itcm/__ref_mark (; 51 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  call $~lib/collector/itcm/maybeInit
  block $~lib/collector/itcm/refToObj|inlined.4 (result i32)
   local.get $0
   local.set $1
   local.get $1
   global.get $~lib/util/runtime/HEADER_SIZE
   i32.sub
  end
  local.set $2
  local.get $2
  call $~lib/collector/itcm/ManagedObject#get:color
  global.get $~lib/collector/itcm/white
  i32.eq
  if
   local.get $2
   call $~lib/collector/itcm/ManagedObject#makeGray
  end
 )
 (func $~lib/runtime/__gc_mark_roots (; 52 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $~lib/runtime/ROOT
  local.tee $0
  if
   local.get $0
   call $~lib/collector/itcm/__ref_mark
  end
 )
 (func $~lib/array/Array<i32>#__traverse (; 53 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/runtime/__gc_mark_members (; 54 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $invalid
   block $~lib/runtime/Root
    block $~lib/array/Array<i32>
     block $~lib/string/String
      block $~lib/arraybuffer/ArrayBuffer
       block $~lib/arraybuffer/ArrayBufferView
        block $~lib/number/F64
         block $~lib/number/F32
          block $~lib/number/Bool
           block $~lib/number/Usize
            block $~lib/number/U64
             block $~lib/number/U32
              block $~lib/number/U16
               block $~lib/number/U8
                block $~lib/number/Isize
                 block $~lib/number/I64
                  block $~lib/number/I32
                   block $~lib/number/I16
                    block $~lib/number/I8
                     local.get $0
                     br_table $invalid $~lib/number/I8 $~lib/number/I16 $~lib/number/I32 $~lib/number/I64 $~lib/number/Isize $~lib/number/U8 $~lib/number/U16 $~lib/number/U32 $~lib/number/U64 $~lib/number/Usize $~lib/number/Bool $~lib/number/F32 $~lib/number/F64 $~lib/arraybuffer/ArrayBufferView $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/array/Array<i32> $~lib/runtime/Root $invalid
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
       local.get $1
       i32.load
       local.tee $2
       if
        local.get $2
        call $~lib/collector/itcm/__ref_mark
        i32.const 15
        local.get $2
        call $~lib/runtime/__gc_mark_members
       end
       return
      end
      return
     end
     return
    end
    local.get $1
    call $~lib/array/Array<i32>#__traverse
    return
   end
   return
  end
  unreachable
 )
 (func $null (; 55 ;) (type $FUNCSIG$v)
 )
)
