(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\02\00\00\00 ")
 (data (i32.const 24) "r\00u\00n\00t\00i\00m\00e\00/\00f\00l\00a\00g\00s\00.\00t\00s")
 (data (i32.const 56) "\02\00\00\00,")
 (data (i32.const 72) "~\00l\00i\00b\00/\00a\00l\00l\00o\00c\00a\00t\00o\00r\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 120) "\02\00\00\00(")
 (data (i32.const 136) "~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/fromSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/toSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/white (mut i32) (i32.const 0))
 (global $~lib/runtime/ROOT (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/capabilities i32 (i32.const 2))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "$.instanceof" (func $~lib/runtime/runtime.instanceof))
 (export "$.flags" (func $~lib/runtime/runtime.flags))
 (export "$.newObject" (func $~lib/runtime/runtime.newObject))
 (export "$.newString" (func $~lib/runtime/runtime.newString))
 (export "$.newArrayBuffer" (func $~lib/runtime/runtime.newArrayBuffer))
 (export "$.setArgc" (func $~lib/setargc))
 (export "$.newArray" (func $~lib/runtime/runtime.newArray|trampoline))
 (export "$.retain" (func $~lib/runtime/runtime.retain))
 (export "$.release" (func $~lib/runtime/runtime.release))
 (export "$.collect" (func $~lib/runtime/runtime.collect))
 (export "$.capabilities" (global $~lib/capabilities))
 (start $start)
 (func $start:runtime/flags (; 1 ;) (type $FUNCSIG$v)
  block $folding-inner0
   i32.const 1
   call $~lib/runtime/__runtime_flags
   i32.const 9
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 3
   call $~lib/runtime/__runtime_flags
   i32.const 17
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 4
   call $~lib/runtime/__runtime_flags
   i32.const 33
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 5
   call $~lib/runtime/__runtime_flags
   i32.const 65
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 6
   call $~lib/runtime/__runtime_flags
   i32.const 129
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 7
   call $~lib/runtime/__runtime_flags
   i32.const 545
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 8
   call $~lib/runtime/__runtime_flags
   i32.const 801
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 9
   call $~lib/runtime/__runtime_flags
   i32.const 10
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 10
   call $~lib/runtime/__runtime_flags
   i32.const 18
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 11
   call $~lib/runtime/__runtime_flags
   i32.const 34
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 12
   call $~lib/runtime/__runtime_flags
   i32.const 66
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 13
   call $~lib/runtime/__runtime_flags
   i32.const 130
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 14
   call $~lib/runtime/__runtime_flags
   i32.const 546
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 15
   call $~lib/runtime/__runtime_flags
   i32.const 802
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 16
   call $~lib/runtime/__runtime_flags
   i32.const 16396
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 17
   call $~lib/runtime/__runtime_flags
   i32.const 8212
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 18
   call $~lib/runtime/__runtime_flags
   i32.const 4132
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 19
   call $~lib/runtime/__runtime_flags
   i32.const 2116
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 20
   call $~lib/runtime/__runtime_flags
   i32.const 1156
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 21
   call $~lib/runtime/__runtime_flags
   i32.const 69644
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 22
   call $~lib/runtime/__runtime_flags
   i32.const 102412
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 23
   call $~lib/runtime/__runtime_flags
   i32.const 1572
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 24
   call $~lib/runtime/__runtime_flags
   i32.const 1828
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 25
   call $~lib/runtime/__runtime_flags
   i32.const 103204
   i32.ne
   if
    br $folding-inner0
   end
   return
  end
  i32.const 0
  i32.const 24
  i32.const 42
  i32.const 2
  call $~lib/env/abort
  unreachable
 )
 (func $~lib/runtime/runtime.instanceof (; 2 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
   i32.const 16
   i32.sub
   i32.load
   local.get $1
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
 )
 (func $~lib/runtime/runtime.flags (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/runtime/__runtime_flags
 )
 (func $~lib/allocator/tlsf/Root#setSLMap (; 4 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  i32.const 22
  i32.ge_u
  if
   i32.const 0
   i32.const 72
   i32.const 159
   i32.const 4
   call $~lib/env/abort
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
 (func $~lib/allocator/tlsf/Root#setHead (; 5 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $1
  i32.const 22
  i32.ge_u
  if
   i32.const 0
   i32.const 72
   i32.const 184
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   i32.const 0
   i32.const 72
   i32.const 185
   i32.const 4
   call $~lib/env/abort
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
 (func $~lib/allocator/tlsf/Block#get:right (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  i32.const -4
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 104
   i32.const 4
   call $~lib/env/abort
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
   i32.const 72
   i32.const 105
   i32.const 11
   call $~lib/env/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/allocator/tlsf/fls<usize> (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 447
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 31
  local.get $0
  i32.clz
  i32.sub
 )
 (func $~lib/allocator/tlsf/Root#getHead (; 8 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 22
  i32.ge_u
  if
   i32.const 0
   i32.const 72
   i32.const 175
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   i32.const 0
   i32.const 72
   i32.const 176
   i32.const 4
   call $~lib/env/abort
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
 (func $~lib/allocator/tlsf/Root#getSLMap (; 9 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 22
  i32.ge_u
  if
   i32.const 0
   i32.const 72
   i32.const 153
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
 )
 (func $~lib/allocator/tlsf/Root#remove (; 10 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   i32.const 72
   i32.const 277
   i32.const 4
   call $~lib/env/abort
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
   i32.const 72
   i32.const 279
   i32.const 4
   call $~lib/env/abort
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
 (func $~lib/allocator/tlsf/Block#get:left (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  i32.const 2
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 96
   i32.const 4
   call $~lib/env/abort
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
   i32.const 72
   i32.const 97
   i32.const 11
   call $~lib/env/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/allocator/tlsf/Root#setJump (; 12 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 353
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/allocator/tlsf/Block#get:right
  local.get $1
  i32.ne
  if
   i32.const 0
   i32.const 72
   i32.const 354
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const 2
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 355
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.sub
  local.get $0
  i32.store
 )
 (func $~lib/allocator/tlsf/Root#insert (; 13 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 208
   i32.const 4
   call $~lib/env/abort
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
   i32.const 72
   i32.const 210
   i32.const 4
   call $~lib/env/abort
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
   i32.const 72
   i32.const 212
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  call $~lib/allocator/tlsf/Block#get:right
  local.tee $2
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 216
   i32.const 23
   call $~lib/env/abort
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
    i32.const 72
    i32.const 230
    i32.const 24
    call $~lib/env/abort
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
    i32.const 72
    i32.const 232
    i32.const 6
    call $~lib/env/abort
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
   i32.const 72
   i32.const 245
   i32.const 4
   call $~lib/env/abort
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
 (func $~lib/allocator/tlsf/Root#addMemory (; 14 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $2
  i32.gt_u
  if
   i32.const 0
   i32.const 72
   i32.const 396
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 7
  i32.and
  if
   i32.const 0
   i32.const 72
   i32.const 397
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.const 7
  i32.and
  if
   i32.const 0
   i32.const 72
   i32.const 398
   i32.const 4
   call $~lib/env/abort
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
    i32.const 72
    i32.const 403
    i32.const 6
    call $~lib/env/abort
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
    i32.const 72
    i32.const 412
    i32.const 6
    call $~lib/env/abort
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
 (func $~lib/allocator/tlsf/ffs<usize> (; 15 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 441
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.ctz
 )
 (func $~lib/allocator/tlsf/Root#search (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 72
   i32.const 315
   i32.const 4
   call $~lib/env/abort
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
     i32.const 72
     i32.const 342
     i32.const 16
     call $~lib/env/abort
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
 (func $~lib/allocator/tlsf/Root#use (; 17 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 72
   i32.const 367
   i32.const 4
   call $~lib/env/abort
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
   i32.const 72
   i32.const 368
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.const 7
  i32.and
  if
   i32.const 0
   i32.const 72
   i32.const 369
   i32.const 4
   call $~lib/env/abort
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
    i32.const 72
    i32.const 387
    i32.const 25
    call $~lib/env/abort
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
 (func $~lib/allocator/tlsf/__mem_allocate (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 176
   local.set $2
   i32.const 176
   global.set $~lib/allocator/tlsf/ROOT
   i32.const 2912
   i32.const 0
   i32.store
   i32.const 176
   i32.const 0
   i32.store
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    i32.const 22
    i32.lt_u
    if
     i32.const 176
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
       i32.const 176
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
   i32.const 176
   i32.const 3096
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
    i32.const 72
    i32.const 502
    i32.const 12
    call $~lib/env/abort
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
   i32.const 72
   i32.const 505
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $0
  local.get $1
  call $~lib/allocator/tlsf/Root#use
 )
 (func $~lib/util/runtime/allocate (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/collector/itcm/maybeInit (; 20 ;) (type $FUNCSIG$v)
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
 (func $~lib/collector/itcm/ManagedObjectList#push (; 21 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/collector/itcm/__ref_register (; 22 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/util/runtime/register (; 23 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 176
  i32.le_u
  if
   i32.const 0
   i32.const 136
   i32.const 128
   i32.const 4
   call $~lib/env/abort
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
   i32.const 136
   i32.const 130
   i32.const 4
   call $~lib/env/abort
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
 (func $~lib/runtime/runtime.newObject (; 24 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/util/runtime/allocate
  local.get $1
  call $~lib/util/runtime/register
 )
 (func $~lib/runtime/runtime.newString (; 25 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/runtime/runtime.newArrayBuffer (; 26 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 26
  call $~lib/runtime/runtime.newObject
 )
 (func $~lib/collector/itcm/ManagedObject#makeGray (; 27 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/collector/itcm/__ref_link (; 28 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
 (func $~lib/memory/memory.copy (; 29 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $2
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
       local.get $0
       local.tee $3
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $4
       i32.const 1
       i32.add
       local.set $1
       local.get $3
       local.get $4
       i32.load8_u
       i32.store8
       br $continue|0
      end
     end
     loop $continue|1
      local.get $2
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $2
       i32.const 8
       i32.sub
       local.set $2
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $continue|1
      end
     end
    end
    loop $continue|2
     local.get $2
     if
      local.get $0
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      br $continue|2
     end
    end
   else    
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $continue|3
      local.get $0
      local.get $2
      i32.add
      i32.const 7
      i32.and
      if
       local.get $2
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $2
       i32.const 1
       i32.sub
       local.tee $2
       local.get $0
       i32.add
       local.get $1
       local.get $2
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
     end
     loop $continue|4
      local.get $2
      i32.const 8
      i32.ge_u
      if
       local.get $2
       i32.const 8
       i32.sub
       local.tee $2
       local.get $0
       i32.add
       local.get $1
       local.get $2
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
     end
    end
    loop $continue|5
     local.get $2
     if
      local.get $2
      i32.const 1
      i32.sub
      local.tee $2
      local.get $0
      i32.add
      local.get $1
      local.get $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/runtime/runtime.newArray (; 30 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 16
  call $~lib/util/runtime/allocate
  local.get $2
  call $~lib/util/runtime/register
  local.tee $2
  local.set $6
  local.get $0
  local.get $1
  i32.shl
  local.tee $4
  call $~lib/util/runtime/allocate
  i32.const 26
  call $~lib/util/runtime/register
  local.tee $5
  local.tee $1
  local.get $2
  i32.load
  i32.ne
  if
   local.get $1
   local.get $6
   call $~lib/collector/itcm/__ref_link
  end
  local.get $2
  local.get $1
  i32.store
  local.get $2
  local.get $5
  i32.store offset=4
  local.get $2
  local.get $4
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $5
   local.get $3
   local.get $4
   call $~lib/memory/memory.copy
  end
  local.get $2
 )
 (func $~lib/runtime/runtime.retain (; 31 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/runtime/ROOT
  call $~lib/collector/itcm/__ref_link
 )
 (func $~lib/runtime/runtime.release (; 32 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/allocator/tlsf/__mem_free (; 33 ;) (type $FUNCSIG$vi) (param $0 i32)
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
     i32.const 72
     i32.const 518
     i32.const 6
     call $~lib/env/abort
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
 (func $~lib/collector/itcm/step (; 34 ;) (type $FUNCSIG$v)
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
    i32.const 176
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
 (func $~lib/collector/itcm/__ref_collect (; 35 ;) (type $FUNCSIG$v)
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
 (func $~lib/runtime/runtime.collect (; 36 ;) (type $FUNCSIG$v)
  call $~lib/collector/itcm/__ref_collect
 )
 (func $start (; 37 ;) (type $FUNCSIG$v)
  call $start:runtime/flags
  i32.const 0
  call $~lib/util/runtime/allocate
  i32.const 27
  call $~lib/util/runtime/register
  global.set $~lib/runtime/ROOT
 )
 (func $~lib/collector/itcm/__ref_mark (; 38 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/runtime/__gc_mark_roots (; 39 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $~lib/runtime/ROOT
  local.tee $0
  if
   local.get $0
   call $~lib/collector/itcm/__ref_mark
  end
 )
 (func $~lib/array/Array<runtime/flags/Ref>#__traverse (; 40 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  i32.load offset=8
  i32.add
  local.set $0
  loop $continue|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $1
    i32.load
    local.tee $2
    call $~lib/collector/itcm/__ref_mark
    i32.const 28
    local.get $2
    call $~lib/runtime/__gc_mark_members
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/array/Array<runtime/flags/Ref | null>#__traverse (; 41 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  i32.load offset=8
  i32.add
  local.set $2
  loop $continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load
    local.tee $0
    if
     local.get $0
     call $~lib/collector/itcm/__ref_mark
     i32.const 28
     local.get $0
     call $~lib/runtime/__gc_mark_members
    end
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/set/Set<runtime/flags/Ref>#__traverse (; 42 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.tee $1
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=16
  i32.const 3
  i32.shl
  local.get $1
  i32.add
  local.set $0
  loop $continue|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $1
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $1
     i32.load
     local.tee $2
     call $~lib/collector/itcm/__ref_mark
     i32.const 28
     local.get $2
     call $~lib/runtime/__gc_mark_members
    end
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/set/Set<runtime/flags/Ref | null>#__traverse (; 43 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.tee $1
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=16
  i32.const 3
  i32.shl
  local.get $1
  i32.add
  local.set $2
  loop $continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load offset=4
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $1
     i32.load
     local.tee $0
     if
      local.get $0
      call $~lib/collector/itcm/__ref_mark
      i32.const 28
      local.get $0
      call $~lib/runtime/__gc_mark_members
     end
    end
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/map/Map<runtime/flags/Ref,i8>#__traverse (; 44 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.tee $1
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  local.get $1
  i32.add
  local.set $0
  loop $continue|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $1
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $1
     i32.load
     local.tee $2
     call $~lib/collector/itcm/__ref_mark
     i32.const 28
     local.get $2
     call $~lib/runtime/__gc_mark_members
    end
    local.get $1
    i32.const 12
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/map/Map<runtime/flags/Ref | null,i8>#__traverse (; 45 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.tee $1
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  local.get $1
  i32.add
  local.set $2
  loop $continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $1
     i32.load
     local.tee $0
     if
      local.get $0
      call $~lib/collector/itcm/__ref_mark
      i32.const 28
      local.get $0
      call $~lib/runtime/__gc_mark_members
     end
    end
    local.get $1
    i32.const 12
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/map/Map<i8,runtime/flags/Ref>#__traverse (; 46 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.tee $1
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  local.get $1
  i32.add
  local.set $0
  loop $continue|0
   local.get $1
   local.get $0
   i32.lt_u
   if
    local.get $1
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $1
     i32.load offset=4
     local.tee $2
     call $~lib/collector/itcm/__ref_mark
     i32.const 28
     local.get $2
     call $~lib/runtime/__gc_mark_members
    end
    local.get $1
    i32.const 12
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/map/Map<i8,runtime/flags/Ref | null>#__traverse (; 47 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.tee $1
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  local.get $1
  i32.add
  local.set $2
  loop $continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $1
     i32.load offset=4
     local.tee $0
     if
      local.get $0
      call $~lib/collector/itcm/__ref_mark
      i32.const 28
      local.get $0
      call $~lib/runtime/__gc_mark_members
     end
    end
    local.get $1
    i32.const 12
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>#__traverse (; 48 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=8
  local.tee $1
  call $~lib/collector/itcm/__ref_mark
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  local.get $1
  i32.add
  local.set $2
  loop $continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $1
     i32.load
     local.tee $0
     if
      local.get $0
      call $~lib/collector/itcm/__ref_mark
      i32.const 28
      local.get $0
      call $~lib/runtime/__gc_mark_members
     end
     local.get $1
     i32.load offset=4
     local.tee $0
     if
      local.get $0
      call $~lib/collector/itcm/__ref_mark
      i32.const 28
      local.get $0
      call $~lib/runtime/__gc_mark_members
     end
    end
    local.get $1
    i32.const 12
    i32.add
    local.set $1
    br $continue|0
   end
  end
 )
 (func $~lib/runtime/__gc_mark_members (; 49 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  block $folding-inner1
   block $folding-inner0
    block $invalid
     block $runtime/flags/Ref
      block $~lib/runtime/Root
       block $~lib/arraybuffer/ArrayBuffer
        block $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>
         block $~lib/map/Map<i8,runtime/flags/Ref | null>
          block $~lib/map/Map<i8,runtime/flags/Ref>
           block $~lib/map/Map<runtime/flags/Ref | null,i8>
            block $~lib/map/Map<runtime/flags/Ref,i8>
             block $~lib/set/Set<runtime/flags/Ref | null>
              block $~lib/set/Set<runtime/flags/Ref>
               block $~lib/array/Array<runtime/flags/Ref | null>
                block $~lib/array/Array<runtime/flags/Ref>
                 block $~lib/string/String
                  local.get $0
                  i32.const 1
                  i32.sub
                  br_table $folding-inner0 $~lib/string/String $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $~lib/array/Array<runtime/flags/Ref> $~lib/array/Array<runtime/flags/Ref | null> $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $~lib/set/Set<runtime/flags/Ref> $~lib/set/Set<runtime/flags/Ref | null> $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $folding-inner1 $~lib/map/Map<runtime/flags/Ref,i8> $~lib/map/Map<runtime/flags/Ref | null,i8> $~lib/map/Map<i8,runtime/flags/Ref> $~lib/map/Map<i8,runtime/flags/Ref | null> $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null> $~lib/arraybuffer/ArrayBuffer $~lib/runtime/Root $runtime/flags/Ref $invalid
                 end
                 return
                end
                local.get $1
                call $~lib/array/Array<runtime/flags/Ref>#__traverse
                return
               end
               local.get $1
               call $~lib/array/Array<runtime/flags/Ref | null>#__traverse
               return
              end
              local.get $1
              call $~lib/set/Set<runtime/flags/Ref>#__traverse
              return
             end
             local.get $1
             call $~lib/set/Set<runtime/flags/Ref | null>#__traverse
             return
            end
            local.get $1
            call $~lib/map/Map<runtime/flags/Ref,i8>#__traverse
            return
           end
           local.get $1
           call $~lib/map/Map<runtime/flags/Ref | null,i8>#__traverse
           return
          end
          local.get $1
          call $~lib/map/Map<i8,runtime/flags/Ref>#__traverse
          return
         end
         local.get $1
         call $~lib/map/Map<i8,runtime/flags/Ref | null>#__traverse
         return
        end
        local.get $1
        call $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>#__traverse
        return
       end
       return
      end
      return
     end
     return
    end
    unreachable
   end
   local.get $1
   i32.load
   call $~lib/collector/itcm/__ref_mark
   return
  end
  local.get $1
  i32.load
  call $~lib/collector/itcm/__ref_mark
  local.get $1
  i32.load offset=8
  call $~lib/collector/itcm/__ref_mark
 )
 (func $~lib/runtime/__runtime_instanceof (; 50 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $nope
   block $~lib/arraybuffer/ArrayBufferView
    block $runtime/flags/Ref
     block $~lib/runtime/Root
      block $~lib/arraybuffer/ArrayBuffer
       block $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>
        block $~lib/map/Map<i8,runtime/flags/Ref | null>
         block $~lib/map/Map<i8,runtime/flags/Ref>
          block $~lib/map/Map<runtime/flags/Ref | null,i8>
           block $~lib/map/Map<runtime/flags/Ref,i8>
            block $~lib/map/Map<i8,v128>
             block $~lib/map/Map<i16,i64>
              block $~lib/map/Map<i32,i32>
               block $~lib/map/Map<i64,i16>
                block $~lib/map/Map<v128,i8>
                 block $~lib/set/Set<runtime/flags/Ref | null>
                  block $~lib/set/Set<runtime/flags/Ref>
                   block $~lib/set/Set<v128>
                    block $~lib/set/Set<i64>
                     block $~lib/set/Set<i32>
                      block $~lib/set/Set<i16>
                       block $~lib/set/Set<i8>
                        block $~lib/array/Array<runtime/flags/Ref | null>
                         block $~lib/array/Array<runtime/flags/Ref>
                          block $~lib/array/Array<v128>
                           block $~lib/array/Array<i64>
                            block $~lib/array/Array<i32>
                             block $~lib/array/Array<i16>
                              block $~lib/string/String
                               block $~lib/array/Array<i8>
                                local.get $0
                                i32.const 1
                                i32.sub
                                br_table $~lib/array/Array<i8> $~lib/string/String $~lib/array/Array<i16> $~lib/array/Array<i32> $~lib/array/Array<i64> $~lib/array/Array<v128> $~lib/array/Array<runtime/flags/Ref> $~lib/array/Array<runtime/flags/Ref | null> $~lib/set/Set<i8> $~lib/set/Set<i16> $~lib/set/Set<i32> $~lib/set/Set<i64> $~lib/set/Set<v128> $~lib/set/Set<runtime/flags/Ref> $~lib/set/Set<runtime/flags/Ref | null> $~lib/map/Map<v128,i8> $~lib/map/Map<i64,i16> $~lib/map/Map<i32,i32> $~lib/map/Map<i16,i64> $~lib/map/Map<i8,v128> $~lib/map/Map<runtime/flags/Ref,i8> $~lib/map/Map<runtime/flags/Ref | null,i8> $~lib/map/Map<i8,runtime/flags/Ref> $~lib/map/Map<i8,runtime/flags/Ref | null> $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null> $~lib/arraybuffer/ArrayBuffer $~lib/runtime/Root $runtime/flags/Ref $~lib/arraybuffer/ArrayBufferView $nope
                               end
                               local.get $1
                               i32.const 1
                               i32.eq
                               local.get $1
                               i32.const 29
                               i32.eq
                               i32.or
                               return
                              end
                              local.get $1
                              i32.const 2
                              i32.eq
                              return
                             end
                             local.get $1
                             i32.const 3
                             i32.eq
                             local.get $1
                             i32.const 29
                             i32.eq
                             i32.or
                             return
                            end
                            local.get $1
                            i32.const 4
                            i32.eq
                            local.get $1
                            i32.const 29
                            i32.eq
                            i32.or
                            return
                           end
                           local.get $1
                           i32.const 5
                           i32.eq
                           local.get $1
                           i32.const 29
                           i32.eq
                           i32.or
                           return
                          end
                          local.get $1
                          i32.const 6
                          i32.eq
                          local.get $1
                          i32.const 29
                          i32.eq
                          i32.or
                          return
                         end
                         local.get $1
                         i32.const 7
                         i32.eq
                         local.get $1
                         i32.const 29
                         i32.eq
                         i32.or
                         return
                        end
                        local.get $1
                        i32.const 8
                        i32.eq
                        local.get $1
                        i32.const 29
                        i32.eq
                        i32.or
                        return
                       end
                       local.get $1
                       i32.const 9
                       i32.eq
                       return
                      end
                      local.get $1
                      i32.const 10
                      i32.eq
                      return
                     end
                     local.get $1
                     i32.const 11
                     i32.eq
                     return
                    end
                    local.get $1
                    i32.const 12
                    i32.eq
                    return
                   end
                   local.get $1
                   i32.const 13
                   i32.eq
                   return
                  end
                  local.get $1
                  i32.const 14
                  i32.eq
                  return
                 end
                 local.get $1
                 i32.const 15
                 i32.eq
                 return
                end
                local.get $1
                i32.const 16
                i32.eq
                return
               end
               local.get $1
               i32.const 17
               i32.eq
               return
              end
              local.get $1
              i32.const 18
              i32.eq
              return
             end
             local.get $1
             i32.const 19
             i32.eq
             return
            end
            local.get $1
            i32.const 20
            i32.eq
            return
           end
           local.get $1
           i32.const 21
           i32.eq
           return
          end
          local.get $1
          i32.const 22
          i32.eq
          return
         end
         local.get $1
         i32.const 23
         i32.eq
         return
        end
        local.get $1
        i32.const 24
        i32.eq
        return
       end
       local.get $1
       i32.const 25
       i32.eq
       return
      end
      local.get $1
      i32.const 26
      i32.eq
      return
     end
     local.get $1
     i32.const 27
     i32.eq
     return
    end
    local.get $1
    i32.const 28
    i32.eq
    return
   end
   local.get $1
   i32.const 29
   i32.eq
   return
  end
  i32.const 0
 )
 (func $~lib/runtime/__runtime_flags (; 51 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  block $invalid
   block $~lib/arraybuffer/ArrayBufferView
    block $runtime/flags/Ref
     block $~lib/runtime/Root
      block $~lib/arraybuffer/ArrayBuffer
       block $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null>
        block $~lib/map/Map<i8,runtime/flags/Ref | null>
         block $~lib/map/Map<i8,runtime/flags/Ref>
          block $~lib/map/Map<runtime/flags/Ref | null,i8>
           block $~lib/map/Map<runtime/flags/Ref,i8>
            block $~lib/map/Map<i8,v128>
             block $~lib/map/Map<i16,i64>
              block $~lib/map/Map<i32,i32>
               block $~lib/map/Map<i64,i16>
                block $~lib/map/Map<v128,i8>
                 block $~lib/set/Set<runtime/flags/Ref | null>
                  block $~lib/set/Set<runtime/flags/Ref>
                   block $~lib/set/Set<v128>
                    block $~lib/set/Set<i64>
                     block $~lib/set/Set<i32>
                      block $~lib/set/Set<i16>
                       block $~lib/set/Set<i8>
                        block $~lib/array/Array<runtime/flags/Ref | null>
                         block $~lib/array/Array<runtime/flags/Ref>
                          block $~lib/array/Array<v128>
                           block $~lib/array/Array<i64>
                            block $~lib/array/Array<i32>
                             block $~lib/array/Array<i16>
                              block $~lib/string/String
                               block $~lib/array/Array<i8>
                                local.get $0
                                i32.const 1
                                i32.sub
                                br_table $~lib/array/Array<i8> $~lib/string/String $~lib/array/Array<i16> $~lib/array/Array<i32> $~lib/array/Array<i64> $~lib/array/Array<v128> $~lib/array/Array<runtime/flags/Ref> $~lib/array/Array<runtime/flags/Ref | null> $~lib/set/Set<i8> $~lib/set/Set<i16> $~lib/set/Set<i32> $~lib/set/Set<i64> $~lib/set/Set<v128> $~lib/set/Set<runtime/flags/Ref> $~lib/set/Set<runtime/flags/Ref | null> $~lib/map/Map<v128,i8> $~lib/map/Map<i64,i16> $~lib/map/Map<i32,i32> $~lib/map/Map<i16,i64> $~lib/map/Map<i8,v128> $~lib/map/Map<runtime/flags/Ref,i8> $~lib/map/Map<runtime/flags/Ref | null,i8> $~lib/map/Map<i8,runtime/flags/Ref> $~lib/map/Map<i8,runtime/flags/Ref | null> $~lib/map/Map<runtime/flags/Ref | null,runtime/flags/Ref | null> $~lib/arraybuffer/ArrayBuffer $~lib/runtime/Root $runtime/flags/Ref $~lib/arraybuffer/ArrayBufferView $invalid
                               end
                               i32.const 9
                               return
                              end
                              i32.const 0
                              return
                             end
                             i32.const 17
                             return
                            end
                            i32.const 33
                            return
                           end
                           i32.const 65
                           return
                          end
                          i32.const 129
                          return
                         end
                         i32.const 545
                         return
                        end
                        i32.const 801
                        return
                       end
                       i32.const 10
                       return
                      end
                      i32.const 18
                      return
                     end
                     i32.const 34
                     return
                    end
                    i32.const 66
                    return
                   end
                   i32.const 130
                   return
                  end
                  i32.const 546
                  return
                 end
                 i32.const 802
                 return
                end
                i32.const 16396
                return
               end
               i32.const 8212
               return
              end
              i32.const 4132
              return
             end
             i32.const 2116
             return
            end
            i32.const 1156
            return
           end
           i32.const 69644
           return
          end
          i32.const 102412
          return
         end
         i32.const 1572
         return
        end
        i32.const 1828
        return
       end
       i32.const 103204
       return
      end
      i32.const 0
      return
     end
     i32.const 0
     return
    end
    i32.const 0
    return
   end
   i32.const 0
   return
  end
  unreachable
 )
 (func $null (; 52 ;) (type $FUNCSIG$v)
  nop
 )
 (func $~lib/runtime/runtime.newArray|trampoline (; 53 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 3
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $3
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/runtime/runtime.newArray
 )
 (func $~lib/setargc (; 54 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.set $~lib/argc
 )
)
