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
 (data (i32.const 8) "\10\00\00\00,")
 (data (i32.const 24) "~\00l\00i\00b\00/\00a\00l\00l\00o\00c\00a\00t\00o\00r\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 72) "\10\00\00\00(")
 (data (i32.const 88) "~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 128) "\12\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00I\00\00\00\0e\00\00\00\08")
 (global $~lib/allocator/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/fromSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/toSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/white (mut i32) (i32.const 0))
 (global $~lib/runtime/ROOT (mut i32) (i32.const 0))
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
 (start $start)
 (func $~lib/runtime/runtime.instanceof (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 128
   i32.load
   i32.le_u
  else   
   local.get $0
  end
  if
   loop $continue|0
    local.get $0
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $0
    i32.const 3
    i32.shl
    i32.const 128
    i32.add
    i32.load offset=4
    local.tee $0
    br_if $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/runtime/runtime.flags (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.const 128
   i32.load
   i32.gt_u
   local.set $1
  end
  local.get $1
  if (result i32)
   unreachable
  else   
   local.get $0
   i32.const 3
   i32.shl
   i32.const 128
   i32.add
   i32.load
  end
 )
 (func $~lib/allocator/tlsf/Root#setSLMap (; 3 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  i32.const 22
  i32.ge_u
  if
   i32.const 0
   i32.const 24
   i32.const 159
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $2
  i32.store offset=4
 )
 (func $~lib/allocator/tlsf/Root#setHead (; 4 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $1
  i32.const 22
  i32.ge_u
  if
   i32.const 0
   i32.const 24
   i32.const 184
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   i32.const 0
   i32.const 24
   i32.const 185
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $3
  i32.store offset=96
 )
 (func $~lib/allocator/tlsf/Block#get:right (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  i32.const -4
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
  i32.const 8
  i32.add
  local.get $0
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 105
   i32.const 11
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/allocator/tlsf/fls<usize> (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
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
 (func $~lib/allocator/tlsf/Root#getHead (; 7 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 22
  i32.ge_u
  if
   i32.const 0
   i32.const 24
   i32.const 175
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   i32.const 0
   i32.const 24
   i32.const 176
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 5
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
 )
 (func $~lib/allocator/tlsf/Root#getSLMap (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 22
  i32.ge_u
  if
   i32.const 0
   i32.const 24
   i32.const 153
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
 )
 (func $~lib/allocator/tlsf/Root#remove (; 9 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
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
  i32.const -4
  i32.and
  local.tee $3
  i32.const 16
  i32.ge_u
  local.tee $2
  if
   local.get $3
   i32.const 1073741824
   i32.lt_u
   local.set $2
  end
  local.get $2
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
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 8
   i32.div_u
   local.set $4
   i32.const 0
  else   
   local.get $3
   local.get $3
   call $~lib/allocator/tlsf/fls<usize>
   local.tee $2
   i32.const 5
   i32.sub
   i32.shr_u
   i32.const 32
   i32.xor
   local.set $4
   local.get $2
   i32.const 7
   i32.sub
  end
  local.set $2
  local.get $1
  i32.load offset=8
  local.set $3
  local.get $1
  i32.load offset=4
  local.tee $5
  if
   local.get $5
   local.get $3
   i32.store offset=8
  end
  local.get $3
  if
   local.get $3
   local.get $5
   i32.store offset=4
  end
  local.get $0
  local.get $2
  local.get $4
  call $~lib/allocator/tlsf/Root#getHead
  local.get $1
  i32.eq
  if
   local.get $0
   local.get $2
   local.get $4
   local.get $3
   call $~lib/allocator/tlsf/Root#setHead
   local.get $3
   i32.eqz
   if
    local.get $0
    local.get $2
    local.get $0
    local.get $2
    call $~lib/allocator/tlsf/Root#getSLMap
    i32.const 1
    local.get $4
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $1
    call $~lib/allocator/tlsf/Root#setSLMap
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $2
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/allocator/tlsf/Block#get:left (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  i32.const 2
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
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 97
   i32.const 11
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/allocator/tlsf/Root#setJump (; 11 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load
  i32.const 1
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
  local.get $0
  call $~lib/allocator/tlsf/Block#get:right
  local.get $1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 354
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const 2
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
  local.get $1
  i32.const 4
  i32.sub
  local.get $0
  i32.store
 )
 (func $~lib/allocator/tlsf/Root#insert (; 12 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  local.tee $3
  i32.const 1
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
  i32.const -4
  i32.and
  local.tee $4
  i32.const 16
  i32.ge_u
  local.tee $2
  if
   local.get $4
   i32.const 1073741824
   i32.lt_u
   local.set $2
  end
  local.get $2
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
  local.tee $2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 216
   i32.const 23
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $2
   call $~lib/allocator/tlsf/Root#remove
   local.get $1
   local.get $4
   i32.const -4
   i32.and
   i32.const 8
   i32.add
   local.get $3
   i32.add
   local.tee $3
   i32.store
   local.get $1
   call $~lib/allocator/tlsf/Block#get:right
   local.tee $2
   i32.load
   local.set $4
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   call $~lib/allocator/tlsf/Block#get:left
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 230
    i32.const 24
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.load
   local.tee $5
   i32.const 1
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
   local.get $1
   call $~lib/allocator/tlsf/Root#remove
   local.get $1
   local.get $3
   i32.const -4
   i32.and
   i32.const 8
   i32.add
   local.get $5
   i32.add
   local.tee $3
   i32.store
  end
  local.get $2
  local.get $4
  i32.const 2
  i32.or
  i32.store
  local.get $1
  local.get $2
  call $~lib/allocator/tlsf/Root#setJump
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 16
  i32.ge_u
  local.tee $2
  if
   local.get $3
   i32.const 1073741824
   i32.lt_u
   local.set $2
  end
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 245
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 8
   i32.div_u
   local.set $3
   i32.const 0
  else   
   local.get $3
   local.get $3
   call $~lib/allocator/tlsf/fls<usize>
   local.tee $2
   i32.const 5
   i32.sub
   i32.shr_u
   i32.const 32
   i32.xor
   local.set $3
   local.get $2
   i32.const 7
   i32.sub
  end
  local.tee $2
  local.get $3
  call $~lib/allocator/tlsf/Root#getHead
  local.set $4
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $4
  if
   local.get $4
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $2
  local.get $3
  local.get $1
  call $~lib/allocator/tlsf/Root#setHead
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
  call $~lib/allocator/tlsf/Root#getSLMap
  i32.const 1
  local.get $3
  i32.shl
  i32.or
  call $~lib/allocator/tlsf/Root#setSLMap
 )
 (func $~lib/allocator/tlsf/Root#addMemory (; 13 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $2
  i32.gt_u
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
  if
   i32.const 0
   i32.const 24
   i32.const 398
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2912
  i32.load
  local.tee $3
  if
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 24
    i32.const 403
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 8
   i32.sub
   local.get $3
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $1
    i32.const 8
    i32.sub
    local.set $1
   end
  else   
   local.get $1
   local.get $0
   i32.const 2916
   i32.add
   i32.lt_u
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
  local.tee $2
  i32.const 32
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 16
  i32.sub
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $2
  i32.add
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 2
  i32.store
  i32.const 2912
  local.get $2
  i32.store
  local.get $0
  local.get $1
  call $~lib/allocator/tlsf/Root#insert
 )
 (func $~lib/allocator/tlsf/ffs<usize> (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
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
 (func $~lib/allocator/tlsf/Root#search (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 16
  i32.ge_u
  local.tee $2
  if
   local.get $1
   i32.const 1073741824
   i32.lt_u
   local.set $2
  end
  local.get $2
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
  i32.const 256
  i32.lt_u
  if (result i32)
   i32.const 0
   local.set $2
   local.get $1
   i32.const 8
   i32.div_u
  else   
   local.get $1
   call $~lib/allocator/tlsf/fls<usize>
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 5
   i32.sub
   i32.shr_u
   i32.const 32
   i32.xor
   local.tee $1
   i32.const 31
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    i32.add
   else    
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    i32.const 0
   end
  end
  local.set $1
  local.get $0
  local.get $2
  call $~lib/allocator/tlsf/Root#getSLMap
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $2
   local.get $1
   call $~lib/allocator/tlsf/ffs<usize>
   call $~lib/allocator/tlsf/Root#getHead
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
    call $~lib/allocator/tlsf/ffs<usize>
    local.tee $2
    call $~lib/allocator/tlsf/Root#getSLMap
    local.tee $1
    i32.eqz
    if
     i32.const 0
     i32.const 24
     i32.const 342
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    local.get $1
    call $~lib/allocator/tlsf/ffs<usize>
    call $~lib/allocator/tlsf/Root#getHead
   else    
    i32.const 0
   end
  end
 )
 (func $~lib/allocator/tlsf/Root#use (; 16 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.tee $4
  i32.const 1
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
  i32.const 16
  i32.ge_u
  local.tee $3
  if
   local.get $2
   i32.const 1073741824
   i32.lt_u
   local.set $3
  end
  local.get $3
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
  local.get $4
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $3
  i32.const 24
  i32.ge_u
  if
   local.get $1
   local.get $4
   i32.const 2
   i32.and
   local.get $2
   i32.or
   i32.store
   local.get $1
   i32.const 8
   i32.add
   local.get $2
   i32.add
   local.tee $2
   local.get $3
   i32.const 8
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $2
   call $~lib/allocator/tlsf/Root#insert
  else   
   local.get $1
   local.get $4
   i32.const -2
   i32.and
   i32.store
   local.get $1
   call $~lib/allocator/tlsf/Block#get:right
   local.tee $0
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 387
    i32.const 25
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $0
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $1
  i32.const 8
  i32.add
 )
 (func $~lib/allocator/tlsf/__mem_allocate (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/allocator/tlsf/ROOT
  local.tee $2
  i32.eqz
  if
   i32.const 1
   current_memory
   local.tee $1
   i32.gt_s
   local.tee $2
   if (result i32)
    i32.const 1
    local.get $1
    i32.sub
    grow_memory
    i32.const 0
    i32.lt_s
   else    
    local.get $2
   end
   if
    unreachable
   end
   i32.const 280
   local.set $2
   i32.const 280
   global.set $~lib/allocator/tlsf/ROOT
   i32.const 2912
   i32.const 0
   i32.store
   i32.const 280
   i32.const 0
   i32.store
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    i32.const 22
    i32.lt_u
    if
     i32.const 280
     local.get $1
     i32.const 0
     call $~lib/allocator/tlsf/Root#setSLMap
     i32.const 0
     local.set $3
     loop $repeat|1
      local.get $3
      i32.const 32
      i32.lt_u
      if
       i32.const 280
       local.get $1
       local.get $3
       i32.const 0
       call $~lib/allocator/tlsf/Root#setHead
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $repeat|1
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $repeat|0
    end
   end
   i32.const 280
   i32.const 3200
   current_memory
   i32.const 16
   i32.shl
   call $~lib/allocator/tlsf/Root#addMemory
  end
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  local.get $2
  local.get $0
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  local.tee $0
  i32.const 16
  local.get $0
  i32.const 16
  i32.gt_u
  select
  local.tee $1
  call $~lib/allocator/tlsf/Root#search
  local.tee $0
  i32.eqz
  if
   current_memory
   local.tee $0
   local.get $1
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $0
   local.get $3
   i32.gt_s
   select
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
   local.get $2
   local.get $0
   i32.const 16
   i32.shl
   current_memory
   i32.const 16
   i32.shl
   call $~lib/allocator/tlsf/Root#addMemory
   local.get $2
   local.get $1
   call $~lib/allocator/tlsf/Root#search
   local.tee $0
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 502
    i32.const 12
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
  i32.load
  i32.const -4
  i32.and
  local.get $1
  i32.lt_u
  if
   i32.const 0
   i32.const 24
   i32.const 505
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $0
  local.get $1
  call $~lib/allocator/tlsf/Root#use
 )
 (func $~lib/util/runtime/allocate (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 15
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/allocator/tlsf/__mem_allocate
  local.tee $1
  i32.const -1520547049
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
  i32.const 16
  i32.add
 )
 (func $~lib/collector/itcm/maybeInit (; 19 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $~lib/collector/itcm/state
  i32.eqz
  if
   i32.const 16
   call $~lib/allocator/tlsf/__mem_allocate
   global.set $~lib/collector/itcm/fromSpace
   global.get $~lib/collector/itcm/fromSpace
   local.tee $0
   i32.const -1
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.store offset=8
   local.get $0
   local.get $0
   i32.store offset=12
   i32.const 16
   call $~lib/allocator/tlsf/__mem_allocate
   global.set $~lib/collector/itcm/toSpace
   global.get $~lib/collector/itcm/toSpace
   local.tee $0
   i32.const -1
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.store offset=8
   local.get $0
   local.get $0
   i32.store offset=12
   global.get $~lib/collector/itcm/toSpace
   global.set $~lib/collector/itcm/iter
   i32.const 1
   global.set $~lib/collector/itcm/state
  end
 )
 (func $~lib/collector/itcm/ManagedObjectList#push (; 20 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $1
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.and
  local.get $0
  i32.or
  i32.store offset=8
  local.get $1
  local.get $2
  i32.store offset=12
  local.get $2
  local.get $2
  i32.load offset=8
  i32.const 3
  i32.and
  local.get $1
  i32.or
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/collector/itcm/__ref_register (; 21 ;) (type $FUNCSIG$vi) (param $0 i32)
  call $~lib/collector/itcm/maybeInit
  local.get $0
  i32.const 16
  i32.sub
  local.tee $0
  global.get $~lib/collector/itcm/white
  local.get $0
  i32.load offset=8
  i32.const -4
  i32.and
  i32.or
  i32.store offset=8
  global.get $~lib/collector/itcm/fromSpace
  local.get $0
  call $~lib/collector/itcm/ManagedObjectList#push
 )
 (func $~lib/util/runtime/register (; 22 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 280
  i32.le_u
  if
   i32.const 0
   i32.const 88
   i32.const 129
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.tee $2
  i32.load
  i32.const -1520547049
  i32.ne
  if
   i32.const 0
   i32.const 88
   i32.const 131
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  block
   local.get $0
   call $~lib/collector/itcm/__ref_register
  end
  local.get $0
 )
 (func $~lib/runtime/runtime.newObject (; 23 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/util/runtime/allocate
  local.get $1
  call $~lib/util/runtime/register
 )
 (func $~lib/runtime/runtime.newString (; 24 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.shl
  i32.const 16
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArrayBuffer (; 25 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 15
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/collector/itcm/ManagedObject#makeGray (; 26 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/collector/itcm/iter
  local.get $0
  i32.eq
  if
   local.get $0
   i32.load offset=12
   global.set $~lib/collector/itcm/iter
  end
  local.get $0
  i32.load offset=8
  i32.const -4
  i32.and
  local.tee $2
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.store offset=12
  local.get $1
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.and
  local.get $2
  i32.or
  i32.store offset=8
  global.get $~lib/collector/itcm/toSpace
  local.get $0
  call $~lib/collector/itcm/ManagedObjectList#push
  local.get $0
  local.get $0
  i32.load offset=8
  i32.const -4
  i32.and
  i32.const 2
  i32.or
  i32.store offset=8
 )
 (func $~lib/collector/itcm/__ref_link (; 27 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  call $~lib/collector/itcm/maybeInit
  global.get $~lib/collector/itcm/white
  i32.eqz
  local.get $1
  i32.const 16
  i32.sub
  local.tee $2
  i32.load offset=8
  i32.const 3
  i32.and
  i32.eq
  local.tee $1
  if (result i32)
   global.get $~lib/collector/itcm/white
   local.get $0
   i32.const 16
   i32.sub
   i32.load offset=8
   i32.const 3
   i32.and
   i32.eq
  else   
   local.get $1
  end
  if
   local.get $2
   call $~lib/collector/itcm/ManagedObject#makeGray
  end
 )
 (func $~lib/runtime/runtime.newArray (; 28 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.tee $3
  i32.eqz
  local.tee $0
  if (result i32)
   local.get $0
  else   
   local.get $3
   i32.const 128
   i32.load
   i32.gt_u
  end
  if (result i32)
   unreachable
  else   
   local.get $3
   i32.const 3
   i32.shl
   i32.const 128
   i32.add
   i32.load
  end
  local.tee $0
  i32.const 16
  i32.div_u
  i32.const 31
  i32.and
  local.set $5
  local.get $1
  if (result i32)
   local.get $1
   i32.const 16
   i32.sub
   i32.load offset=4
  else   
   i32.const 0
   call $~lib/runtime/runtime.newArrayBuffer
   local.set $1
   i32.const 0
  end
  local.set $4
  local.get $3
  i32.const 16
  call $~lib/runtime/runtime.newObject
  local.tee $2
  local.set $3
  local.get $2
  i32.load
  local.get $1
  i32.ne
  if
   local.get $1
   local.get $3
   call $~lib/collector/itcm/__ref_link
  end
  local.get $2
  local.get $1
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $4
  i32.store offset=8
  local.get $2
  local.get $4
  local.get $5
  i32.shr_u
  i32.store offset=12
  local.get $0
  i32.const 1024
  i32.and
  if
   local.get $1
   local.get $4
   i32.add
   local.set $4
   loop $continue|0
    local.get $1
    local.get $4
    i32.lt_u
    if
     local.get $1
     i32.load
     local.tee $0
     if
      local.get $0
      local.get $2
      call $~lib/collector/itcm/__ref_link
     end
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     br $continue|0
    end
   end
  end
  local.get $2
 )
 (func $~lib/runtime/runtime.retain (; 29 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/runtime/ROOT
  call $~lib/collector/itcm/__ref_link
 )
 (func $~lib/runtime/runtime.release (; 30 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/allocator/tlsf/__mem_free (; 31 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   global.get $~lib/allocator/tlsf/ROOT
   local.tee $1
   if
    local.get $0
    i32.const 8
    i32.sub
    local.tee $2
    i32.load
    local.tee $3
    i32.const 1
    i32.and
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
    i32.const 1
    i32.or
    i32.store
    local.get $1
    local.get $0
    i32.const 8
    i32.sub
    call $~lib/allocator/tlsf/Root#insert
   end
  end
 )
 (func $~lib/collector/itcm/step (; 32 ;) (type $FUNCSIG$v)
  (local $0 i32)
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      global.get $~lib/collector/itcm/state
      local.tee $0
      if
       local.get $0
       i32.const 1
       i32.sub
       br_table $case1|0 $case2|0 $case3|0 $break|0
      end
      unreachable
     end
     call $~lib/runtime/__gc_mark_roots
     i32.const 2
     global.set $~lib/collector/itcm/state
     br $break|0
    end
    global.get $~lib/collector/itcm/iter
    i32.load offset=8
    i32.const -4
    i32.and
    local.tee $0
    global.get $~lib/collector/itcm/toSpace
    i32.ne
    if
     local.get $0
     global.set $~lib/collector/itcm/iter
     local.get $0
     global.get $~lib/collector/itcm/white
     i32.eqz
     local.get $0
     i32.load offset=8
     i32.const -4
     i32.and
     i32.or
     i32.store offset=8
     local.get $0
     i32.load
     local.get $0
     i32.const 16
     i32.add
     call $~lib/runtime/__gc_mark_members
    else     
     call $~lib/runtime/__gc_mark_roots
     global.get $~lib/collector/itcm/toSpace
     global.get $~lib/collector/itcm/iter
     i32.load offset=8
     i32.const -4
     i32.and
     i32.eq
     if
      global.get $~lib/collector/itcm/fromSpace
      local.set $0
      global.get $~lib/collector/itcm/toSpace
      global.set $~lib/collector/itcm/fromSpace
      local.get $0
      global.set $~lib/collector/itcm/toSpace
      global.get $~lib/collector/itcm/white
      i32.eqz
      global.set $~lib/collector/itcm/white
      local.get $0
      i32.load offset=8
      i32.const -4
      i32.and
      global.set $~lib/collector/itcm/iter
      i32.const 3
      global.set $~lib/collector/itcm/state
     end
    end
    br $break|0
   end
   global.get $~lib/collector/itcm/iter
   local.tee $0
   global.get $~lib/collector/itcm/toSpace
   i32.ne
   if
    local.get $0
    i32.load offset=8
    i32.const -4
    i32.and
    global.set $~lib/collector/itcm/iter
    local.get $0
    i32.const 280
    i32.ge_u
    if
     local.get $0
     call $~lib/allocator/tlsf/__mem_free
    end
   else    
    global.get $~lib/collector/itcm/toSpace
    local.tee $0
    local.get $0
    i32.store offset=8
    local.get $0
    local.get $0
    i32.store offset=12
    i32.const 1
    global.set $~lib/collector/itcm/state
   end
  end
 )
 (func $~lib/collector/itcm/__ref_collect (; 33 ;) (type $FUNCSIG$v)
  call $~lib/collector/itcm/maybeInit
  loop $continue|0
   global.get $~lib/collector/itcm/state
   i32.const 1
   i32.ne
   if
    call $~lib/collector/itcm/step
    br $continue|0
   end
  end
  loop $continue|1
   call $~lib/collector/itcm/step
   global.get $~lib/collector/itcm/state
   i32.const 1
   i32.ne
   br_if $continue|1
  end
 )
 (func $~lib/runtime/runtime.collect (; 34 ;) (type $FUNCSIG$v)
  call $~lib/collector/itcm/__ref_collect
 )
 (func $start (; 35 ;) (type $FUNCSIG$v)
  i32.const 0
  call $~lib/util/runtime/allocate
  i32.const 18
  call $~lib/util/runtime/register
  global.set $~lib/runtime/ROOT
 )
 (func $~lib/collector/itcm/__ref_mark (; 36 ;) (type $FUNCSIG$vi) (param $0 i32)
  call $~lib/collector/itcm/maybeInit
  global.get $~lib/collector/itcm/white
  local.get $0
  i32.const 16
  i32.sub
  local.tee $0
  i32.load offset=8
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/collector/itcm/ManagedObject#makeGray
  end
 )
 (func $~lib/runtime/__gc_mark_roots (; 37 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $~lib/runtime/ROOT
  local.tee $0
  if
   local.get $0
   call $~lib/collector/itcm/__ref_mark
  end
 )
 (func $~lib/runtime/__gc_mark_members (; 38 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
                     i32.const 1
                     i32.sub
                     br_table $~lib/number/I8 $~lib/number/I16 $~lib/number/I32 $~lib/number/I64 $~lib/number/Isize $~lib/number/U8 $~lib/number/U16 $~lib/number/U32 $~lib/number/U64 $~lib/number/Usize $~lib/number/Bool $~lib/number/F32 $~lib/number/F64 $~lib/arraybuffer/ArrayBufferView $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/array/Array<i32> $~lib/runtime/Root $invalid
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
       local.tee $0
       if
        local.get $0
        call $~lib/collector/itcm/__ref_mark
        i32.const 15
        local.get $0
        call $~lib/runtime/__gc_mark_members
       end
       return
      end
      return
     end
     return
    end
    local.get $1
    i32.load
    call $~lib/collector/itcm/__ref_mark
    return
   end
   return
  end
  unreachable
 )
 (func $null (; 39 ;) (type $FUNCSIG$v)
  nop
 )
)
