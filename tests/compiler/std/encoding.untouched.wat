(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00\0c\00\00\00\01\d87\dch\00i\00R\d8b\df")
 (data (i32.const 32) "\01\00\00\00\1e\00\00\00s\00t\00d\00/\00e\00n\00c\00o\00d\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 72) "\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00e\00n\00c\00o\00d\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 112) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (data (i32.const 152) "\01\00\00\00\00\00\00\00")
 (data (i32.const 160) "\01\00\00\00\04\00\00\00\01\d87\dc")
 (data (i32.const 176) "\01\00\00\00\04\00\00\00h\00i\00")
 (data (i32.const 192) "\01\00\00\00\04\00\00\00R\d8b\df")
 (data (i32.const 208) "\01\00\00\00\08\00\00\00h\00i\00R\d8b\df")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $std/encoding/str (mut i32) (i32.const 16))
 (global $~lib/runtime/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
 (global $~lib/runtime/MAX_BYTELENGTH i32 (i32.const 1073741816))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 224))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/string/String#get:length (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
 )
 (func $~lib/encoding/UTF8.length (; 2 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.set $2
  local.get $0
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  i32.add
  local.set $3
  local.get $1
  i32.const 0
  i32.ne
  if (result i32)
   i32.const 1
  else   
   i32.const 0
  end
  local.set $4
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $2
      i32.load16_u
      local.set $5
      local.get $5
      i32.const 128
      i32.lt_u
      if
       local.get $4
       i32.const 1
       i32.add
       local.set $4
       local.get $2
       i32.const 2
       i32.add
       local.set $2
      else       
       local.get $5
       i32.const 2048
       i32.lt_u
       if
        local.get $4
        i32.const 2
        i32.add
        local.set $4
        local.get $2
        i32.const 2
        i32.add
        local.set $2
       else        
        local.get $5
        i32.const 64512
        i32.and
        i32.const 55296
        i32.eq
        local.tee $6
        if (result i32)
         local.get $2
         i32.const 2
         i32.add
         local.get $3
         i32.lt_u
        else         
         local.get $6
        end
        if
         local.get $2
         i32.load16_u offset=2
         i32.const 64512
         i32.and
         i32.const 56320
         i32.eq
         if
          local.get $2
          i32.const 4
          i32.add
          local.set $2
          local.get $4
          i32.const 4
          i32.add
          local.set $4
          br $continue|0
         end
        end
        local.get $2
        i32.const 2
        i32.add
        local.set $2
        local.get $4
        i32.const 3
        i32.add
        local.set $4
       end
      end
     end
     br $continue|0
    end
   end
  end
  local.get $4
 )
 (func $std/encoding/testUTF8Length (; 3 ;) (type $FUNCSIG$v)
  global.get $std/encoding/str
  i32.const 0
  call $~lib/encoding/UTF8.length
  i32.const 10
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 7
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/runtime/ADJUSTOBLOCK (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/allocator/arena/__mem_allocate (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.set $1
  local.get $1
  local.get $0
  local.tee $2
  i32.const 1
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  local.set $4
  current_memory
  local.set $5
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $5
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.gt_s
   select
   local.set $3
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/memory/memory.allocate (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__mem_allocate
  return
 )
 (func $~lib/runtime/allocate (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/runtime/ADJUSTOBLOCK
  call $~lib/memory/memory.allocate
  local.set $1
  local.get $1
  global.get $~lib/runtime/HEADER_MAGIC
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  global.get $~lib/runtime/HEADER_SIZE
  i32.add
 )
 (func $~lib/runtime/register (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 120
   i32.const 149
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  local.set $2
  local.get $2
  i32.load
  global.get $~lib/runtime/HEADER_MAGIC
  i32.eq
  i32.eqz
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
 (func $~lib/encoding/UTF8.encode (; 9 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  local.set $2
  local.get $0
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  i32.add
  local.set $3
  block $~lib/runtime/ALLOCATE|inlined.0 (result i32)
   local.get $0
   local.get $1
   call $~lib/encoding/UTF8.length
   local.set $4
   local.get $4
   call $~lib/runtime/allocate
  end
  local.set $5
  local.get $5
  local.set $6
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $2
      i32.load16_u
      local.set $4
      local.get $4
      i32.const 128
      i32.lt_u
      if
       local.get $6
       local.get $4
       i32.store8
       local.get $6
       i32.const 1
       i32.add
       local.set $6
       local.get $2
       i32.const 2
       i32.add
       local.set $2
      else       
       local.get $4
       i32.const 2048
       i32.lt_u
       if
        local.get $6
        local.get $4
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8
        local.get $6
        local.get $4
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        local.get $6
        i32.const 2
        i32.add
        local.set $6
        local.get $2
        i32.const 2
        i32.add
        local.set $2
       else        
        local.get $4
        i32.const 64512
        i32.and
        i32.const 55296
        i32.eq
        local.tee $7
        if (result i32)
         local.get $2
         i32.const 2
         i32.add
         local.get $3
         i32.lt_u
        else         
         local.get $7
        end
        if
         local.get $2
         i32.load16_u offset=2
         local.set $7
         local.get $7
         i32.const 64512
         i32.and
         i32.const 56320
         i32.eq
         if
          i32.const 65536
          local.get $4
          i32.const 1023
          i32.and
          i32.const 10
          i32.shl
          i32.add
          local.get $7
          i32.const 1023
          i32.and
          i32.add
          local.set $4
          local.get $6
          local.get $4
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8
          local.get $6
          local.get $4
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          local.get $6
          local.get $4
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=2
          local.get $6
          local.get $4
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=3
          local.get $2
          i32.const 4
          i32.add
          local.set $2
          local.get $6
          i32.const 4
          i32.add
          local.set $6
          br $continue|0
         end
        end
        local.get $6
        local.get $4
        i32.const 12
        i32.shr_u
        i32.const 224
        i32.or
        i32.store8
        local.get $6
        local.get $4
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        local.get $6
        local.get $4
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=2
        local.get $2
        i32.const 2
        i32.add
        local.set $2
        local.get $6
        i32.const 3
        i32.add
        local.set $6
       end
      end
     end
     br $continue|0
    end
   end
  end
  local.get $2
  local.get $3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 97
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.ne
  if
   local.get $6
   i32.const 0
   i32.store8
  end
  block $~lib/runtime/REGISTER<~lib/arraybuffer/ArrayBuffer>|inlined.0 (result i32)
   local.get $5
   local.set $4
   local.get $4
   i32.const 2
   call $~lib/runtime/register
  end
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  i32.load offset=4
 )
 (func $std/encoding/testUTF8Encode (; 11 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  global.get $std/encoding/str
  i32.const 0
  call $~lib/encoding/UTF8.encode
  local.set $0
  local.get $0
  local.set $1
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 14
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u
  i32.const 240
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 15
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u offset=1
  i32.const 144
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 16
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u offset=2
  i32.const 144
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 17
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u offset=3
  i32.const 183
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 18
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u offset=4
  i32.const 104
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 19
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u offset=5
  i32.const 105
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 20
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u offset=6
  i32.const 240
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 21
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u offset=7
  i32.const 164
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 22
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u offset=8
  i32.const 173
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u offset=9
  i32.const 162
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 24
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/encoding/testUTF8EncodeDelimited (; 12 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  global.get $std/encoding/str
  i32.const 1
  call $~lib/encoding/UTF8.encode
  local.set $0
  local.get $0
  local.set $1
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 11
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 31
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u
  i32.const 240
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u offset=1
  i32.const 144
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 33
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u offset=2
  i32.const 144
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 34
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u offset=3
  i32.const 183
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 35
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u offset=4
  i32.const 104
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 36
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u offset=5
  i32.const 105
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 37
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u offset=6
  i32.const 240
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 38
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u offset=7
  i32.const 164
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 39
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u offset=8
  i32.const 173
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 40
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u offset=9
  i32.const 162
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 41
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load8_u offset=10
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/util/memory/memcpy (; 13 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $1
     i32.const 3
     i32.and
    else     
     local.get $2
    end
    if
     block
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
     end
     br $continue|0
    end
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     local.get $2
     i32.const 16
     i32.ge_u
     if
      block
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
      end
      br $continue|1
     end
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
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    block (result i32)
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
    end
    block (result i32)
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
    end
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
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      block
       local.get $1
       i32.load
       local.set $3
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       local.get $2
       i32.const 3
       i32.sub
       local.set $2
       block $break|3
        loop $continue|3
         local.get $2
         i32.const 17
         i32.ge_u
         if
          block
           local.get $1
           i32.const 1
           i32.add
           i32.load
           local.set $4
           local.get $0
           local.get $3
           i32.const 24
           i32.shr_u
           local.get $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 5
           i32.add
           i32.load
           local.set $3
           local.get $0
           i32.const 4
           i32.add
           local.get $4
           i32.const 24
           i32.shr_u
           local.get $3
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 9
           i32.add
           i32.load
           local.set $4
           local.get $0
           i32.const 8
           i32.add
           local.get $3
           i32.const 24
           i32.shr_u
           local.get $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 13
           i32.add
           i32.load
           local.set $3
           local.get $0
           i32.const 12
           i32.add
           local.get $4
           i32.const 24
           i32.shr_u
           local.get $3
           i32.const 8
           i32.shl
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
          end
          br $continue|3
         end
        end
       end
       br $break|2
       unreachable
      end
      unreachable
     end
     block
      local.get $1
      i32.load
      local.set $3
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 2
      i32.sub
      local.set $2
      block $break|4
       loop $continue|4
        local.get $2
        i32.const 18
        i32.ge_u
        if
         block
          local.get $1
          i32.const 2
          i32.add
          i32.load
          local.set $4
          local.get $0
          local.get $3
          i32.const 16
          i32.shr_u
          local.get $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 6
          i32.add
          i32.load
          local.set $3
          local.get $0
          i32.const 4
          i32.add
          local.get $4
          i32.const 16
          i32.shr_u
          local.get $3
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 10
          i32.add
          i32.load
          local.set $4
          local.get $0
          i32.const 8
          i32.add
          local.get $3
          i32.const 16
          i32.shr_u
          local.get $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 14
          i32.add
          i32.load
          local.set $3
          local.get $0
          i32.const 12
          i32.add
          local.get $4
          i32.const 16
          i32.shr_u
          local.get $3
          i32.const 16
          i32.shl
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
         end
         br $continue|4
        end
       end
      end
      br $break|2
      unreachable
     end
     unreachable
    end
    block
     local.get $1
     i32.load
     local.set $3
     block (result i32)
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
     end
     block (result i32)
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
     end
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     block $break|5
      loop $continue|5
       local.get $2
       i32.const 19
       i32.ge_u
       if
        block
         local.get $1
         i32.const 3
         i32.add
         i32.load
         local.set $4
         local.get $0
         local.get $3
         i32.const 8
         i32.shr_u
         local.get $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 7
         i32.add
         i32.load
         local.set $3
         local.get $0
         i32.const 4
         i32.add
         local.get $4
         i32.const 8
         i32.shr_u
         local.get $3
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 11
         i32.add
         i32.load
         local.set $4
         local.get $0
         i32.const 8
         i32.add
         local.get $3
         i32.const 8
         i32.shr_u
         local.get $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 15
         i32.add
         i32.load
         local.set $3
         local.get $0
         i32.const 12
         i32.add
         local.get $4
         i32.const 8
         i32.shr_u
         local.get $3
         i32.const 24
         i32.shl
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
        end
        br $continue|5
       end
      end
     end
     br $break|2
     unreachable
    end
    unreachable
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (; 14 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $1
   local.get $2
   i32.add
   local.get $0
   i32.le_u
   local.tee $5
   if (result i32)
    local.get $5
   else    
    local.get $0
    local.get $2
    i32.add
    local.get $1
    i32.le_u
   end
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
     block $break|0
      loop $continue|0
       local.get $0
       i32.const 7
       i32.and
       if
        block
         local.get $2
         i32.eqz
         if
          br $~lib/util/memory/memmove|inlined.0
         end
         local.get $2
         i32.const 1
         i32.sub
         local.set $2
         block (result i32)
          local.get $0
          local.tee $5
          i32.const 1
          i32.add
          local.set $0
          local.get $5
         end
         block (result i32)
          local.get $1
          local.tee $5
          i32.const 1
          i32.add
          local.set $1
          local.get $5
         end
         i32.load8_u
         i32.store8
        end
        br $continue|0
       end
      end
     end
     block $break|1
      loop $continue|1
       local.get $2
       i32.const 8
       i32.ge_u
       if
        block
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
        end
        br $continue|1
       end
      end
     end
    end
    block $break|2
     loop $continue|2
      local.get $2
      if
       block
        block (result i32)
         local.get $0
         local.tee $5
         i32.const 1
         i32.add
         local.set $0
         local.get $5
        end
        block (result i32)
         local.get $1
         local.tee $5
         i32.const 1
         i32.add
         local.set $1
         local.get $5
        end
        i32.load8_u
        i32.store8
        local.get $2
        i32.const 1
        i32.sub
        local.set $2
       end
       br $continue|2
      end
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
     block $break|3
      loop $continue|3
       local.get $0
       local.get $2
       i32.add
       i32.const 7
       i32.and
       if
        block
         local.get $2
         i32.eqz
         if
          br $~lib/util/memory/memmove|inlined.0
         end
         local.get $0
         local.get $2
         i32.const 1
         i32.sub
         local.tee $2
         i32.add
         local.get $1
         local.get $2
         i32.add
         i32.load8_u
         i32.store8
        end
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       local.get $2
       i32.const 8
       i32.ge_u
       if
        block
         local.get $2
         i32.const 8
         i32.sub
         local.set $2
         local.get $0
         local.get $2
         i32.add
         local.get $1
         local.get $2
         i32.add
         i64.load
         i64.store
        end
        br $continue|4
       end
      end
     end
    end
    block $break|5
     loop $continue|5
      local.get $2
      if
       local.get $0
       local.get $2
       i32.const 1
       i32.sub
       local.tee $2
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
  end
 )
 (func $~lib/memory/memory.fill (; 15 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   local.get $1
   i32.store8
   local.get $0
   local.get $2
   i32.add
   i32.const 1
   i32.sub
   local.get $1
   i32.store8
   local.get $2
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   i32.const 1
   i32.add
   local.get $1
   i32.store8
   local.get $0
   i32.const 2
   i32.add
   local.get $1
   i32.store8
   local.get $0
   local.get $2
   i32.add
   i32.const 2
   i32.sub
   local.get $1
   i32.store8
   local.get $0
   local.get $2
   i32.add
   i32.const 3
   i32.sub
   local.get $1
   i32.store8
   local.get $2
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   i32.const 3
   i32.add
   local.get $1
   i32.store8
   local.get $0
   local.get $2
   i32.add
   i32.const 4
   i32.sub
   local.get $1
   i32.store8
   local.get $2
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.set $5
   local.get $0
   local.get $5
   i32.add
   local.set $0
   local.get $2
   local.get $5
   i32.sub
   local.set $2
   local.get $2
   i32.const -4
   i32.and
   local.set $2
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $1
   i32.const 255
   i32.and
   i32.mul
   local.set $4
   local.get $0
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 4
   i32.sub
   local.get $4
   i32.store
   local.get $2
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   i32.const 4
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 8
   i32.add
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 12
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 8
   i32.sub
   local.get $4
   i32.store
   local.get $2
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $0
   i32.const 12
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 16
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 20
   i32.add
   local.get $4
   i32.store
   local.get $0
   i32.const 24
   i32.add
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 28
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 24
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 20
   i32.sub
   local.get $4
   i32.store
   local.get $0
   local.get $2
   i32.add
   i32.const 16
   i32.sub
   local.get $4
   i32.store
   i32.const 24
   local.get $0
   i32.const 4
   i32.and
   i32.add
   local.set $5
   local.get $0
   local.get $5
   i32.add
   local.set $0
   local.get $2
   local.get $5
   i32.sub
   local.set $2
   local.get $4
   i64.extend_i32_u
   local.get $4
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $6
   block $break|0
    loop $continue|0
     local.get $2
     i32.const 32
     i32.ge_u
     if
      block
       local.get $0
       local.get $6
       i64.store
       local.get $0
       i32.const 8
       i32.add
       local.get $6
       i64.store
       local.get $0
       i32.const 16
       i32.add
       local.get $6
       i64.store
       local.get $0
       i32.const 24
       i32.add
       local.get $6
       i64.store
       local.get $2
       i32.const 32
       i32.sub
       local.set $2
       local.get $0
       i32.const 32
       i32.add
       local.set $0
      end
      br $continue|0
     end
    end
   end
  end
 )
 (func $~lib/allocator/arena/__mem_free (; 16 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/memory/memory.free (; 17 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/allocator/arena/__mem_free
 )
 (func $~lib/runtime/reallocate (; 18 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  local.set $2
  local.get $2
  i32.load offset=4
  local.set $3
  local.get $3
  local.get $1
  i32.lt_u
  if
   local.get $1
   call $~lib/runtime/ADJUSTOBLOCK
   local.set $4
   local.get $3
   call $~lib/runtime/ADJUSTOBLOCK
   i32.const 0
   local.get $0
   global.get $~lib/memory/HEAP_BASE
   i32.gt_u
   select
   local.get $4
   i32.lt_u
   if
    local.get $4
    call $~lib/memory/memory.allocate
    local.set $5
    local.get $5
    local.get $2
    i32.load
    i32.store
    local.get $5
    global.get $~lib/runtime/HEADER_SIZE
    i32.add
    local.set $6
    local.get $6
    local.get $0
    local.get $3
    call $~lib/memory/memory.copy
    local.get $6
    local.get $3
    i32.add
    i32.const 0
    local.get $1
    local.get $3
    i32.sub
    call $~lib/memory/memory.fill
    local.get $2
    i32.load
    global.get $~lib/runtime/HEADER_MAGIC
    i32.eq
    if
     local.get $0
     global.get $~lib/memory/HEAP_BASE
     i32.gt_u
     i32.eqz
     if
      i32.const 0
      i32.const 120
      i32.const 113
      i32.const 8
      call $~lib/env/abort
      unreachable
     end
     local.get $2
     call $~lib/memory/memory.free
    else     
     nop
    end
    local.get $5
    local.set $2
    local.get $6
    local.set $0
   else    
    local.get $0
    local.get $3
    i32.add
    i32.const 0
    local.get $1
    local.get $3
    i32.sub
    call $~lib/memory/memory.fill
   end
  else   
   nop
  end
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $~lib/encoding/UTF8.decodeRawDelimited (; 19 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  local.set $2
  local.get $0
  local.get $1
  i32.add
  local.set $3
  local.get $3
  local.get $2
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 152
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  block $~lib/runtime/ALLOCATE|inlined.1 (result i32)
   i32.const 16
   local.set $4
   local.get $4
   call $~lib/runtime/allocate
  end
  local.set $5
  i32.const 0
  local.set $6
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      block (result i32)
       local.get $2
       local.tee $4
       i32.const 1
       i32.add
       local.set $2
       local.get $4
      end
      i32.load8_u
      local.set $4
      local.get $4
      i32.const 128
      i32.lt_u
      if
       local.get $4
       i32.eqz
       if
        br $break|0
       end
       block $~lib/runtime/REALLOCATE|inlined.0 (result i32)
        local.get $5
        local.set $8
        local.get $6
        i32.const 2
        i32.add
        local.set $7
        local.get $8
        local.get $7
        call $~lib/runtime/reallocate
       end
       local.set $5
       local.get $5
       local.get $6
       i32.add
       local.get $4
       i32.store16
       local.get $6
       i32.const 2
       i32.add
       local.set $6
      else       
       local.get $4
       i32.const 191
       i32.gt_u
       local.tee $7
       if (result i32)
        local.get $4
        i32.const 224
        i32.lt_u
       else        
        local.get $7
       end
       if
        local.get $2
        local.get $3
        i32.ge_u
        if
         br $break|0
        end
        block $~lib/runtime/REALLOCATE|inlined.1 (result i32)
         local.get $5
         local.set $8
         local.get $6
         i32.const 2
         i32.add
         local.set $7
         local.get $8
         local.get $7
         call $~lib/runtime/reallocate
        end
        local.set $5
        local.get $5
        local.get $6
        i32.add
        local.get $4
        i32.const 31
        i32.and
        i32.const 6
        i32.shl
        block (result i32)
         local.get $2
         local.tee $7
         i32.const 1
         i32.add
         local.set $2
         local.get $7
        end
        i32.load8_u
        i32.const 63
        i32.and
        i32.or
        i32.store16
        local.get $6
        i32.const 2
        i32.add
        local.set $6
       else        
        local.get $4
        i32.const 239
        i32.gt_u
        local.tee $7
        if (result i32)
         local.get $4
         i32.const 365
         i32.lt_u
        else         
         local.get $7
        end
        if
         local.get $2
         i32.const 3
         i32.add
         local.get $3
         i32.gt_u
         if
          br $break|0
         end
         local.get $4
         i32.const 7
         i32.and
         i32.const 18
         i32.shl
         local.get $2
         i32.load8_u
         i32.const 63
         i32.and
         i32.const 12
         i32.shl
         i32.or
         local.get $2
         i32.load8_u offset=1
         i32.const 63
         i32.and
         i32.const 6
         i32.shl
         i32.or
         local.get $2
         i32.load8_u offset=2
         i32.const 63
         i32.and
         i32.or
         i32.const 65536
         i32.sub
         local.set $4
         local.get $2
         i32.const 3
         i32.add
         local.set $2
         block $~lib/runtime/REALLOCATE|inlined.2 (result i32)
          local.get $5
          local.set $8
          local.get $6
          i32.const 4
          i32.add
          local.set $7
          local.get $8
          local.get $7
          call $~lib/runtime/reallocate
         end
         local.set $5
         local.get $5
         local.get $6
         i32.add
         local.set $7
         local.get $7
         i32.const 55296
         local.get $4
         i32.const 10
         i32.shr_u
         i32.add
         i32.store16
         local.get $7
         i32.const 56320
         local.get $4
         i32.const 1023
         i32.and
         i32.add
         i32.store16 offset=2
         local.get $6
         i32.const 4
         i32.add
         local.set $6
        else         
         local.get $2
         i32.const 2
         i32.add
         local.get $3
         i32.gt_u
         if
          br $break|0
         end
         block $~lib/runtime/REALLOCATE|inlined.3 (result i32)
          local.get $5
          local.set $8
          local.get $6
          i32.const 2
          i32.add
          local.set $7
          local.get $8
          local.get $7
          call $~lib/runtime/reallocate
         end
         local.set $5
         local.get $5
         local.get $6
         i32.add
         local.get $4
         i32.const 15
         i32.and
         i32.const 12
         i32.shl
         local.get $2
         i32.load8_u
         i32.const 63
         i32.and
         i32.const 6
         i32.shl
         i32.or
         local.get $2
         i32.load8_u offset=1
         i32.const 63
         i32.and
         i32.or
         i32.store16
         local.get $2
         i32.const 2
         i32.add
         local.set $2
         local.get $6
         i32.const 2
         i32.add
         local.set $6
        end
       end
      end
     end
     br $continue|0
    end
   end
  end
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.0 (result i32)
   block $~lib/runtime/REALLOCATE|inlined.4 (result i32)
    local.get $5
    local.set $8
    local.get $6
    local.set $7
    local.get $8
    local.get $7
    call $~lib/runtime/reallocate
   end
   local.set $4
   local.get $4
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/encoding/UTF8.decodeRaw (; 20 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  local.set $2
  local.get $0
  local.get $1
  i32.add
  local.set $3
  block $~lib/runtime/ALLOCATE|inlined.2 (result i32)
   local.get $1
   i32.const 1
   i32.shl
   local.set $4
   local.get $4
   call $~lib/runtime/allocate
  end
  local.set $5
  local.get $5
  local.set $6
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      block (result i32)
       local.get $2
       local.tee $4
       i32.const 1
       i32.add
       local.set $2
       local.get $4
      end
      i32.load8_u
      local.set $4
      local.get $4
      i32.const 128
      i32.lt_u
      if
       local.get $6
       local.get $4
       i32.store16
       local.get $6
       i32.const 2
       i32.add
       local.set $6
      else       
       local.get $4
       i32.const 191
       i32.gt_u
       local.tee $7
       if (result i32)
        local.get $4
        i32.const 224
        i32.lt_u
       else        
        local.get $7
       end
       if
        local.get $6
        local.get $4
        i32.const 31
        i32.and
        i32.const 6
        i32.shl
        block (result i32)
         local.get $2
         local.tee $7
         i32.const 1
         i32.add
         local.set $2
         local.get $7
        end
        i32.load8_u
        i32.const 63
        i32.and
        i32.or
        i32.store16
        local.get $6
        i32.const 2
        i32.add
        local.set $6
       else        
        local.get $4
        i32.const 239
        i32.gt_u
        local.tee $7
        if (result i32)
         local.get $4
         i32.const 365
         i32.lt_u
        else         
         local.get $7
        end
        if
         local.get $4
         i32.const 7
         i32.and
         i32.const 18
         i32.shl
         local.get $2
         i32.load8_u
         i32.const 63
         i32.and
         i32.const 12
         i32.shl
         i32.or
         local.get $2
         i32.load8_u offset=1
         i32.const 63
         i32.and
         i32.const 6
         i32.shl
         i32.or
         local.get $2
         i32.load8_u offset=2
         i32.const 63
         i32.and
         i32.or
         i32.const 65536
         i32.sub
         local.set $4
         local.get $2
         i32.const 3
         i32.add
         local.set $2
         local.get $6
         i32.const 55296
         local.get $4
         i32.const 10
         i32.shr_u
         i32.add
         i32.store16
         local.get $6
         i32.const 56320
         local.get $4
         i32.const 1023
         i32.and
         i32.add
         i32.store16 offset=2
         local.get $6
         i32.const 4
         i32.add
         local.set $6
        else         
         local.get $6
         local.get $4
         i32.const 15
         i32.and
         i32.const 12
         i32.shl
         local.get $2
         i32.load8_u
         i32.const 63
         i32.and
         i32.const 6
         i32.shl
         i32.or
         local.get $2
         i32.load8_u offset=1
         i32.const 63
         i32.and
         i32.or
         i32.store16
         local.get $2
         i32.const 2
         i32.add
         local.set $2
         local.get $6
         i32.const 2
         i32.add
         local.set $6
        end
       end
      end
     end
     br $continue|0
    end
   end
  end
  block $~lib/runtime/REGISTER<~lib/string/String>|inlined.1 (result i32)
   block $~lib/runtime/REALLOCATE|inlined.5 (result i32)
    local.get $5
    local.set $8
    local.get $6
    local.get $5
    i32.sub
    local.set $7
    local.get $8
    local.get $7
    call $~lib/runtime/reallocate
   end
   local.set $4
   local.get $4
   i32.const 1
   call $~lib/runtime/register
  end
 )
 (func $~lib/encoding/UTF8.decode (; 21 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   local.get $0
   call $~lib/arraybuffer/ArrayBuffer#get:byteLength
   call $~lib/encoding/UTF8.decodeRawDelimited
  else   
   local.get $0
   local.get $0
   call $~lib/arraybuffer/ArrayBuffer#get:byteLength
   call $~lib/encoding/UTF8.decodeRaw
  end
 )
 (func $~lib/util/string/compareImpl (; 22 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  local.set $5
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $7
  block $break|0
   loop $continue|0
    local.get $4
    if (result i32)
     local.get $6
     i32.load16_u
     local.get $7
     i32.load16_u
     i32.sub
     local.tee $5
     i32.eqz
    else     
     local.get $4
    end
    if
     block
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      local.get $6
      i32.const 2
      i32.add
      local.set $6
      local.get $7
      i32.const 2
      i32.add
      local.set $7
     end
     br $continue|0
    end
   end
  end
  local.get $5
 )
 (func $~lib/string/String.__eq (; 23 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $std/encoding/testUTF8Decode (; 24 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $std/encoding/str
  i32.const 0
  call $~lib/encoding/UTF8.encode
  local.set $0
  local.get $0
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
 (func $std/encoding/testUTF8DecodeDelimited (; 25 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $std/encoding/str
  i32.const 1
  call $~lib/encoding/UTF8.encode
  local.set $0
  local.get $0
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
 (func $std/encoding/testUTF8Raw (; 26 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $std/encoding/str
  i32.const 0
  call $~lib/encoding/UTF8.encode
  local.set $0
  local.get $0
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
  global.get $~lib/runtime/MAX_BYTELENGTH
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
  global.get $~lib/runtime/MAX_BYTELENGTH
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
  global.get $~lib/runtime/MAX_BYTELENGTH
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
 (func $start:std/encoding (; 27 ;) (type $FUNCSIG$v)
  call $std/encoding/testUTF8Length
  global.get $~lib/memory/HEAP_BASE
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  call $std/encoding/testUTF8Encode
  call $std/encoding/testUTF8EncodeDelimited
  call $std/encoding/testUTF8Decode
  call $std/encoding/testUTF8DecodeDelimited
  call $std/encoding/testUTF8Raw
 )
 (func $start (; 28 ;) (type $FUNCSIG$v)
  call $start:std/encoding
 )
 (func $null (; 29 ;) (type $FUNCSIG$v)
 )
)
