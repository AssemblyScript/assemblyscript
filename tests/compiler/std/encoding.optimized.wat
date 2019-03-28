(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00\0c\00\00\00\01\d87\dch\00i\00R\d8b\df")
 (data (i32.const 32) "\01\00\00\00\1e\00\00\00s\00t\00d\00/\00e\00n\00c\00o\00d\00i\00n\00g\00.\00t\00s")
 (data (i32.const 72) "\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00e\00n\00c\00o\00d\00i\00n\00g\00.\00t\00s")
 (data (i32.const 112) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 152) "\01")
 (data (i32.const 160) "\01\00\00\00\04\00\00\00\01\d87\dc")
 (data (i32.const 176) "\01\00\00\00\04\00\00\00h\00i")
 (data (i32.const 192) "\01\00\00\00\04\00\00\00R\d8b\df")
 (data (i32.const 208) "\01\00\00\00\08\00\00\00h\00i\00R\d8b\df")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $std/encoding/str (mut i32) (i32.const 16))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/encoding/UTF8.length (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.set $3
  i32.const 1
  i32.const 0
  local.get $1
  select
  local.set $1
  loop $continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $2
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 1
     i32.add
    else     
     local.get $2
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      i32.const 2
      i32.add
     else      
      local.get $2
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      local.tee $2
      if (result i32)
       local.get $0
       i32.const 2
       i32.add
       local.get $3
       i32.lt_u
      else       
       local.get $2
      end
      if
       local.get $0
       i32.load16_u offset=2
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        br $continue|0
       end
      end
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $continue|0
   end
  end
  local.get $1
 )
 (func $std/encoding/testUTF8Length (; 2 ;) (type $FUNCSIG$v)
  global.get $std/encoding/str
  i32.const 0
  call $~lib/encoding/UTF8.length
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 6
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  global.get $std/encoding/str
  i32.const 1
  call $~lib/encoding/UTF8.length
  i32.const 11
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 7
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/allocator/arena/__mem_allocate (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.tee $1
  local.get $0
  i32.const 1
  local.get $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  local.tee $0
  current_memory
  local.tee $2
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
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
  end
  local.get $0
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/runtime/allocate (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 7
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/allocator/arena/__mem_allocate
  local.tee $1
  i32.const -1520547049
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.const 8
  i32.add
 )
 (func $~lib/runtime/register (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 224
  i32.le_u
  if
   i32.const 0
   i32.const 120
   i32.const 149
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  i32.sub
  local.tee $2
  i32.load
  i32.const -1520547049
  i32.ne
  if
   i32.const 0
   i32.const 120
   i32.const 151
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/encoding/UTF8.encode (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.set $4
  local.get $0
  local.get $1
  call $~lib/encoding/UTF8.length
  call $~lib/runtime/allocate
  local.tee $6
  local.set $2
  loop $continue|0
   local.get $0
   local.get $4
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $3
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $2
     local.get $3
     i32.store8
     local.get $2
     i32.const 1
     i32.add
    else     
     local.get $3
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $2
      local.get $3
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      i32.store8
      local.get $2
      local.get $3
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get $2
      i32.const 2
      i32.add
     else      
      local.get $3
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      local.tee $5
      if (result i32)
       local.get $0
       i32.const 2
       i32.add
       local.get $4
       i32.lt_u
      else       
       local.get $5
      end
      if
       local.get $0
       i32.load16_u offset=2
       local.tee $5
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $2
        local.get $3
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $5
        i32.const 1023
        i32.and
        i32.add
        local.tee $3
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8
        local.get $2
        local.get $3
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        local.get $2
        local.get $3
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=2
        local.get $2
        local.get $3
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=3
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        br $continue|0
       end
      end
      local.get $2
      local.get $3
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      i32.store8
      local.get $2
      local.get $3
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get $2
      local.get $3
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $2
      i32.const 3
      i32.add
     end
    end
    local.set $2
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $continue|0
   end
  end
  local.get $0
  local.get $4
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 97
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  if
   local.get $2
   i32.const 0
   i32.store8
  end
  local.get $6
  i32.const 2
  call $~lib/runtime/register
 )
 (func $std/encoding/testUTF8Encode (; 7 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $std/encoding/str
  i32.const 0
  call $~lib/encoding/UTF8.encode
  local.tee $0
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 14
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u
  i32.const 240
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 15
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=1
  i32.const 144
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 16
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=2
  i32.const 144
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 17
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=3
  i32.const 183
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 18
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=4
  i32.const 104
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 19
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=5
  i32.const 105
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=6
  i32.const 240
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 21
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=7
  i32.const 164
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 22
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=8
  i32.const 173
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=9
  i32.const 162
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 24
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/encoding/testUTF8EncodeDelimited (; 8 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $std/encoding/str
  i32.const 1
  call $~lib/encoding/UTF8.encode
  local.tee $0
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 11
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 31
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u
  i32.const 240
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=1
  i32.const 144
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 33
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=2
  i32.const 144
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 34
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=3
  i32.const 183
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 35
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=4
  i32.const 104
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 36
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=5
  i32.const 105
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 37
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=6
  i32.const 240
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=7
  i32.const 164
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 39
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=8
  i32.const 173
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 40
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=9
  i32.const 162
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 41
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=10
  if
   i32.const 0
   i32.const 40
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/util/memory/memcpy (; 9 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $continue|0
   local.get $1
   i32.const 3
   i32.and
   local.get $2
   local.get $2
   select
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
    br $continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      local.get $0
      i32.const 3
      i32.and
      local.tee $3
      i32.const 1
      i32.ne
      if
       local.get $3
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $3
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $5
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.tee $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $1
      i32.load8_u
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       if
        local.get $0
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        i32.const 4
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $0
        i32.const 12
        i32.add
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     i32.const 1
     i32.add
     local.tee $3
     i32.const 1
     i32.add
     local.set $0
     local.get $1
     i32.const 1
     i32.add
     local.tee $4
     i32.const 1
     i32.add
     local.set $1
     local.get $3
     local.get $4
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       i32.const 4
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $0
       i32.const 12
       i32.add
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $5
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
    loop $continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     if
      local.get $0
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      i32.const 4
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $0
      i32.const 12
      i32.add
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $continue|5
     end
    end
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (; 10 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $1
   local.get $2
   i32.add
   local.get $0
   i32.le_u
   local.tee $3
   i32.eqz
   if
    local.get $0
    local.get $2
    i32.add
    local.get $1
    i32.le_u
    local.set $3
   end
   local.get $3
   if
    local.get $0
    local.get $1
    local.get $2
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
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
 (func $~lib/memory/memory.fill (; 11 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 1
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   i32.const 2
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $2
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 3
   i32.add
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $1
   i32.sub
   local.set $2
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $2
   i32.const -4
   i32.and
   local.tee $1
   local.get $0
   i32.add
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 4
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 8
   i32.add
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 12
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 16
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 20
   i32.add
   i32.const 0
   i32.store
   local.get $0
   i32.const 24
   i32.add
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   i32.add
   local.tee $2
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $2
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $2
   local.get $0
   i32.add
   local.set $0
   local.get $1
   local.get $2
   i32.sub
   local.set $1
   loop $continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i32.const 8
     i32.add
     i64.const 0
     i64.store
     local.get $0
     i32.const 16
     i32.add
     i64.const 0
     i64.store
     local.get $0
     i32.const 24
     i32.add
     i64.const 0
     i64.store
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $continue|0
    end
   end
  end
 )
 (func $~lib/runtime/reallocate (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 8
  i32.sub
  local.tee $3
  i32.load offset=4
  local.tee $2
  local.get $1
  i32.lt_u
  if
   i32.const 1
   i32.const 32
   local.get $1
   i32.const 7
   i32.add
   i32.clz
   i32.sub
   i32.shl
   local.tee $4
   local.set $5
   i32.const 1
   i32.const 32
   local.get $2
   i32.const 7
   i32.add
   i32.clz
   i32.sub
   i32.shl
   i32.const 0
   local.get $0
   i32.const 224
   i32.gt_u
   select
   local.get $4
   i32.lt_u
   if
    local.get $5
    call $~lib/allocator/arena/__mem_allocate
    local.tee $4
    local.get $3
    i32.load
    i32.store
    local.get $4
    i32.const 8
    i32.add
    local.tee $5
    local.get $0
    local.get $2
    call $~lib/memory/memory.copy
    local.get $2
    local.get $5
    i32.add
    local.get $1
    local.get $2
    i32.sub
    call $~lib/memory/memory.fill
    local.get $3
    i32.load
    i32.const -1520547049
    i32.eq
    if
     local.get $0
     i32.const 224
     i32.le_u
     if
      i32.const 0
      i32.const 120
      i32.const 113
      i32.const 8
      call $~lib/env/abort
      unreachable
     end
    end
    local.get $4
    local.set $3
    local.get $5
    local.set $0
   else    
    local.get $0
    local.get $2
    i32.add
    local.get $1
    local.get $2
    i32.sub
    call $~lib/memory/memory.fill
   end
  end
  local.get $3
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $~lib/encoding/UTF8.decodeRawDelimited (; 13 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  i32.add
  local.tee $5
  local.get $0
  i32.le_u
  if
   i32.const 0
   i32.const 80
   i32.const 152
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  i32.const 16
  call $~lib/runtime/allocate
  local.set $4
  loop $continue|0
   local.get $0
   local.get $5
   i32.lt_u
   if
    block $break|0
     local.get $0
     local.tee $1
     i32.const 1
     i32.add
     local.set $0
     local.get $1
     i32.load8_u
     local.tee $3
     i32.const 128
     i32.lt_u
     if
      local.get $3
      i32.eqz
      br_if $break|0
      local.get $2
      local.get $4
      local.get $2
      i32.const 2
      i32.add
      call $~lib/runtime/reallocate
      local.tee $4
      i32.add
      local.get $3
      i32.store16
      local.get $2
      i32.const 2
      i32.add
      local.set $2
     else      
      local.get $3
      i32.const 191
      i32.gt_u
      local.tee $1
      if
       local.get $3
       i32.const 224
       i32.lt_u
       local.set $1
      end
      local.get $1
      if
       local.get $0
       local.get $5
       i32.ge_u
       br_if $break|0
       local.get $0
       local.tee $1
       i32.const 1
       i32.add
       local.set $0
       local.get $2
       local.get $4
       local.get $2
       i32.const 2
       i32.add
       call $~lib/runtime/reallocate
       local.tee $4
       i32.add
       local.get $1
       i32.load8_u
       i32.const 63
       i32.and
       local.get $3
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       i32.or
       i32.store16
       local.get $2
       i32.const 2
       i32.add
       local.set $2
      else       
       local.get $3
       i32.const 239
       i32.gt_u
       local.tee $1
       if
        local.get $3
        i32.const 365
        i32.lt_u
        local.set $1
       end
       local.get $1
       if (result i32)
        local.get $0
        i32.const 3
        i32.add
        local.get $5
        i32.gt_u
        br_if $break|0
        local.get $0
        i32.load8_u offset=2
        i32.const 63
        i32.and
        local.get $3
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $0
        i32.load8_u
        i32.const 63
        i32.and
        i32.const 12
        i32.shl
        i32.or
        local.get $0
        i32.load8_u offset=1
        i32.const 63
        i32.and
        i32.const 6
        i32.shl
        i32.or
        i32.or
        i32.const 65536
        i32.sub
        local.set $1
        local.get $2
        local.get $4
        local.get $2
        i32.const 4
        i32.add
        call $~lib/runtime/reallocate
        local.tee $4
        i32.add
        local.tee $3
        local.get $1
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.add
        i32.store16
        local.get $3
        local.get $1
        i32.const 1023
        i32.and
        i32.const 56320
        i32.add
        i32.store16 offset=2
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        local.get $0
        i32.const 3
        i32.add
       else        
        local.get $0
        i32.const 2
        i32.add
        local.get $5
        i32.gt_u
        br_if $break|0
        local.get $2
        local.get $4
        local.get $2
        i32.const 2
        i32.add
        call $~lib/runtime/reallocate
        local.tee $4
        i32.add
        local.get $0
        i32.load8_u offset=1
        i32.const 63
        i32.and
        local.get $3
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $0
        i32.load8_u
        i32.const 63
        i32.and
        i32.const 6
        i32.shl
        i32.or
        i32.or
        i32.store16
        local.get $2
        i32.const 2
        i32.add
        local.set $2
        local.get $0
        i32.const 2
        i32.add
       end
       local.set $0
      end
     end
     br $continue|0
    end
   end
  end
  local.get $4
  local.get $2
  call $~lib/runtime/reallocate
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/encoding/UTF8.decodeRaw (; 14 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  i32.add
  local.set $5
  local.get $1
  i32.const 1
  i32.shl
  call $~lib/runtime/allocate
  local.tee $4
  local.set $2
  loop $continue|0
   local.get $0
   local.get $5
   i32.lt_u
   if
    local.get $0
    local.tee $1
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.load8_u
    local.tee $3
    i32.const 128
    i32.lt_u
    if
     local.get $2
     local.get $3
     i32.store16
     local.get $2
     i32.const 2
     i32.add
     local.set $2
    else     
     local.get $3
     i32.const 191
     i32.gt_u
     local.tee $1
     if
      local.get $3
      i32.const 224
      i32.lt_u
      local.set $1
     end
     local.get $1
     if
      local.get $0
      local.tee $1
      i32.const 1
      i32.add
      local.set $0
      local.get $2
      local.get $1
      i32.load8_u
      i32.const 63
      i32.and
      local.get $3
      i32.const 31
      i32.and
      i32.const 6
      i32.shl
      i32.or
      i32.store16
      local.get $2
      i32.const 2
      i32.add
      local.set $2
     else      
      local.get $3
      i32.const 239
      i32.gt_u
      local.tee $1
      if
       local.get $3
       i32.const 365
       i32.lt_u
       local.set $1
      end
      local.get $1
      if (result i32)
       local.get $2
       local.get $0
       i32.load8_u offset=2
       i32.const 63
       i32.and
       local.get $3
       i32.const 7
       i32.and
       i32.const 18
       i32.shl
       local.get $0
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 12
       i32.shl
       i32.or
       local.get $0
       i32.load8_u offset=1
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       i32.or
       i32.const 65536
       i32.sub
       local.tee $1
       i32.const 10
       i32.shr_u
       i32.const 55296
       i32.add
       i32.store16
       local.get $2
       local.get $1
       i32.const 1023
       i32.and
       i32.const 56320
       i32.add
       i32.store16 offset=2
       local.get $2
       i32.const 4
       i32.add
       local.set $2
       local.get $0
       i32.const 3
       i32.add
      else       
       local.get $2
       local.get $0
       i32.load8_u offset=1
       i32.const 63
       i32.and
       local.get $3
       i32.const 15
       i32.and
       i32.const 12
       i32.shl
       local.get $0
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       i32.or
       i32.store16
       local.get $2
       i32.const 2
       i32.add
       local.set $2
       local.get $0
       i32.const 2
       i32.add
      end
      local.set $0
     end
    end
    br $continue|0
   end
  end
  local.get $4
  local.get $2
  local.get $4
  i32.sub
  call $~lib/runtime/reallocate
  i32.const 1
  call $~lib/runtime/register
 )
 (func $~lib/encoding/UTF8.decode (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  if (result i32)
   local.get $0
   local.get $0
   i32.const 8
   i32.sub
   i32.load offset=4
   call $~lib/encoding/UTF8.decodeRawDelimited
  else   
   local.get $0
   local.get $0
   i32.const 8
   i32.sub
   i32.load offset=4
   call $~lib/encoding/UTF8.decodeRaw
  end
 )
 (func $~lib/util/string/compareImpl (; 16 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  loop $continue|0
   local.get $2
   if (result i32)
    local.get $0
    i32.load16_u
    local.get $1
    i32.load16_u
    i32.sub
    local.tee $3
    i32.eqz
   else    
    local.get $2
   end
   if
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $continue|0
   end
  end
  local.get $3
 )
 (func $~lib/string/String.__eq (; 17 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $0
  i32.eqz
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $1
   i32.eqz
  end
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  local.tee $2
  local.get $1
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $std/encoding/testUTF8Decode (; 18 ;) (type $FUNCSIG$v)
  global.get $std/encoding/str
  i32.const 0
  call $~lib/encoding/UTF8.encode
  i32.const 0
  call $~lib/encoding/UTF8.decode
  global.get $std/encoding/str
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 48
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/encoding/testUTF8DecodeDelimited (; 19 ;) (type $FUNCSIG$v)
  global.get $std/encoding/str
  i32.const 1
  call $~lib/encoding/UTF8.encode
  i32.const 1
  call $~lib/encoding/UTF8.decode
  global.get $std/encoding/str
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 54
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/encoding/testUTF8Raw (; 20 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $std/encoding/str
  i32.const 0
  call $~lib/encoding/UTF8.encode
  local.tee $0
  i32.const 0
  call $~lib/encoding/UTF8.decodeRaw
  i32.const 160
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 61
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $std/encoding/str
  i32.const 0
  call $~lib/encoding/UTF8.length
  call $~lib/encoding/UTF8.decodeRaw
  global.get $std/encoding/str
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 62
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/encoding/UTF8.decodeRaw
  i32.const 168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 63
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.add
  i32.const 2
  call $~lib/encoding/UTF8.decodeRaw
  i32.const 184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 64
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  i32.add
  i32.const 4
  call $~lib/encoding/UTF8.decodeRaw
  i32.const 200
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 65
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 10
  i32.add
  i32.const 0
  call $~lib/encoding/UTF8.decodeRaw
  i32.const 160
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 66
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.store8 offset=10
  local.get $0
  i32.const 4
  i32.add
  i32.const 1073741816
  call $~lib/encoding/UTF8.decodeRawDelimited
  i32.const 216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 69
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  i32.add
  i32.const 1073741816
  call $~lib/encoding/UTF8.decodeRawDelimited
  i32.const 200
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 70
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 10
  i32.add
  i32.const 1073741816
  call $~lib/encoding/UTF8.decodeRawDelimited
  i32.const 160
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 71
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 21 ;) (type $FUNCSIG$v)
  call $std/encoding/testUTF8Length
  i32.const 224
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  call $std/encoding/testUTF8Encode
  call $std/encoding/testUTF8EncodeDelimited
  call $std/encoding/testUTF8Decode
  call $std/encoding/testUTF8DecodeDelimited
  call $std/encoding/testUTF8Raw
 )
 (func $null (; 22 ;) (type $FUNCSIG$v)
  nop
 )
)
