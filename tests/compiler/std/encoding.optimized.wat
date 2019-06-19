(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00\01\d87\dch\00i\00R\d8b\df")
 (data (i32.const 40) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00s\00t\00d\00/\00e\00n\00c\00o\00d\00i\00n\00g\00.\00t\00s")
 (data (i32.const 92) "\01\00\00\00\01")
 (data (i32.const 104) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\01\d87\dc")
 (data (i32.const 128) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00h")
 (data (i32.const 152) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00h\00i")
 (data (i32.const 176) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00R\d8b\df")
 (data (i32.const 200) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00e\00n\00c\00o\00d\00i\00n\00g\00.\00t\00s")
 (data (i32.const 248) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\001\002\003\00\00\004\005\006")
 (data (i32.const 280) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\001\002\003")
 (data (i32.const 304) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00h\00i\00R\d8b\df")
 (global $std/encoding/str i32 (i32.const 24))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/string/String#get:length (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/encoding/Encoding.UTF16.byteLength (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
 )
 (func $~lib/rt/stub/__alloc (; 3 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $3
  local.get $0
  i32.const 1
  local.get $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  memory.size
  local.tee $4
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $2
   local.get $3
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $5
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $2
  global.set $~lib/rt/stub/offset
  local.get $3
  i32.const 16
  i32.sub
  local.tee $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
 )
 (func $~lib/memory/memory.copy (; 4 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $3
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
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $4
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $4
       i32.load8_u
       i32.store8
       br $continue|0
      end
     end
     loop $continue|1
      local.get $3
      i32.const 8
      i32.lt_u
      i32.eqz
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
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
     local.get $3
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $4
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
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
      local.get $3
      i32.add
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $0
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
     end
     loop $continue|4
      local.get $3
      i32.const 8
      i32.lt_u
      i32.eqz
      if
       local.get $0
       local.get $3
       i32.const 8
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
     end
    end
    loop $continue|5
     local.get $3
     if
      local.get $0
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $1
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/encoding/Encoding.UTF16.encode (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  local.tee $1
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $2
  local.get $0
  local.get $1
  call $~lib/memory/memory.copy
  local.get $2
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
 )
 (func $std/encoding/testUTF16Encode (; 7 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $std/encoding/str
  call $~lib/encoding/Encoding.UTF16.encode
  local.tee $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 12
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 15
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 16
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=1
  i32.const 216
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 17
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=2
  i32.const 55
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 18
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=3
  i32.const 220
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 19
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=4
  i32.const 104
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 20
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=5
  if
   i32.const 0
   i32.const 56
   i32.const 21
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=6
  i32.const 105
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 22
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=7
  if
   i32.const 0
   i32.const 56
   i32.const 23
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=8
  i32.const 82
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 24
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=9
  i32.const 216
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 25
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=10
  i32.const 98
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 26
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=11
  i32.const 223
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 27
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/encoding/Encoding.UTF16.decodeUnsafe (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const -2
  i32.and
  local.tee $1
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $2
  local.get $0
  local.get $1
  call $~lib/memory/memory.copy
  local.get $2
 )
 (func $~lib/util/string/compareImpl (; 9 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    i32.const 0
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
 (func $~lib/string/String.__eq (; 10 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   i32.const 1
   local.get $0
   select
   br_if $folding-inner0
   local.get $0
   call $~lib/string/String#get:length
   local.tee $2
   local.get $1
   call $~lib/string/String#get:length
   i32.ne
   br_if $folding-inner0
   local.get $0
   local.get $1
   local.get $2
   call $~lib/util/string/compareImpl
   i32.eqz
   return
  end
  i32.const 0
 )
 (func $std/encoding/testUTF16Decode (; 11 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $std/encoding/str
  call $~lib/encoding/Encoding.UTF16.encode
  local.tee $0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  call $~lib/encoding/Encoding.UTF16.decodeUnsafe
  global.get $std/encoding/str
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 33
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $std/encoding/testUTF16DecodeUnsafe (; 12 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  global.get $std/encoding/str
  call $~lib/encoding/Encoding.UTF16.encode
  local.set $0
  global.get $std/encoding/str
  call $~lib/encoding/Encoding.UTF16.byteLength
  local.set $1
  local.get $0
  i32.const 0
  call $~lib/encoding/Encoding.UTF16.decodeUnsafe
  i32.const 104
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 42
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/encoding/Encoding.UTF16.decodeUnsafe
  global.get $std/encoding/str
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 43
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/encoding/Encoding.UTF16.decodeUnsafe
  i32.const 120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 44
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.add
  i32.const 2
  call $~lib/encoding/Encoding.UTF16.decodeUnsafe
  i32.const 144
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 45
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.add
  i32.const 4
  call $~lib/encoding/Encoding.UTF16.decodeUnsafe
  i32.const 168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 46
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 8
  i32.add
  i32.const 4
  call $~lib/encoding/Encoding.UTF16.decodeUnsafe
  i32.const 192
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 47
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 12
  i32.add
  i32.const 0
  call $~lib/encoding/Encoding.UTF16.decodeUnsafe
  i32.const 104
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 48
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/encoding/Encoding.UTF8.byteLength (; 13 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  local.get $0
  i32.add
  local.set $4
  i32.const 1
  i32.const 0
  local.get $1
  select
  local.set $2
  loop $continue|0
   block $break|0
    local.get $0
    local.get $4
    i32.ge_u
    br_if $break|0
    local.get $0
    i32.load16_u
    local.tee $3
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $3
     i32.eqz
     i32.const 0
     local.get $1
     select
     br_if $break|0
     local.get $2
     i32.const 1
     i32.add
    else     
     local.get $3
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $2
      i32.const 2
      i32.add
     else      
      local.get $0
      i32.const 2
      i32.add
      local.get $4
      i32.lt_u
      i32.const 0
      local.get $3
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      select
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
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        br $continue|0
       end
      end
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
  local.get $2
 )
 (func $std/encoding/testUTF8Length (; 14 ;) (type $FUNCSIG$v)
  global.get $std/encoding/str
  i32.const 0
  call $~lib/encoding/Encoding.UTF8.byteLength
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 55
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/str
  i32.const 1
  call $~lib/encoding/Encoding.UTF8.byteLength
  i32.const 11
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 56
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/stub/__realloc (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.const 16
  i32.sub
  local.tee $2
  i32.load offset=12
  local.tee $3
  i32.gt_u
  if
   local.get $1
   local.get $2
   i32.load offset=8
   call $~lib/rt/stub/__alloc
   local.tee $1
   local.get $0
   local.get $3
   call $~lib/memory/memory.copy
   local.get $1
   local.set $0
  else   
   local.get $2
   local.get $1
   i32.store offset=12
  end
  local.get $0
 )
 (func $~lib/encoding/Encoding.UTF8.encode (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  local.get $0
  i32.add
  local.set $4
  local.get $0
  local.get $1
  call $~lib/encoding/Encoding.UTF8.byteLength
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $5
  local.set $2
  loop $continue|0
   block $break|0
    local.get $0
    local.get $4
    i32.ge_u
    br_if $break|0
    local.get $0
    i32.load16_u
    local.tee $3
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $3
     i32.eqz
     i32.const 0
     local.get $1
     select
     br_if $break|0
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
      local.get $0
      i32.const 2
      i32.add
      local.get $4
      i32.lt_u
      i32.const 0
      local.get $3
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      select
      if
       local.get $0
       i32.load16_u offset=2
       local.tee $6
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
        local.get $6
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
  local.get $1
  if
   local.get $0
   local.get $4
   i32.gt_u
   if
    i32.const 0
    i32.const 216
    i32.const 66
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
   local.get $5
   local.get $2
   local.get $5
   i32.sub
   i32.const 1
   i32.add
   call $~lib/rt/stub/__realloc
   local.set $5
   local.get $2
   i32.const 0
   i32.store8
  else   
   local.get $0
   local.get $4
   i32.ne
   if
    i32.const 0
    i32.const 216
    i32.const 70
    i32.const 8
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $5
 )
 (func $std/encoding/testUTF8Encode (; 17 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $std/encoding/str
  i32.const 0
  call $~lib/encoding/Encoding.UTF8.encode
  local.tee $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 63
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u
  i32.const 240
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 64
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=1
  i32.const 144
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 65
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=2
  i32.const 144
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 66
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=3
  i32.const 183
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 67
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=4
  i32.const 104
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 68
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=5
  i32.const 105
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 69
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=6
  i32.const 240
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 70
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=7
  i32.const 164
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 71
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=8
  i32.const 173
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 72
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=9
  i32.const 162
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 73
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $std/encoding/testUTF8EncodeNullTerminated (; 18 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $std/encoding/str
  i32.const 1
  call $~lib/encoding/Encoding.UTF8.encode
  local.tee $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 11
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 80
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u
  i32.const 240
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 81
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=1
  i32.const 144
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 82
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=2
  i32.const 144
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 83
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=3
  i32.const 183
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 84
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=4
  i32.const 104
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 85
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=5
  i32.const 105
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 86
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=6
  i32.const 240
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 87
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=7
  i32.const 164
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 88
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=8
  i32.const 173
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 89
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=9
  i32.const 162
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 90
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load8_u offset=10
  if
   i32.const 0
   i32.const 56
   i32.const 91
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/encoding/Encoding.UTF8.decodeUnsafe (; 19 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  i32.add
  local.tee $6
  local.get $0
  i32.lt_u
  if
   i32.const 0
   i32.const 216
   i32.const 84
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $5
  local.set $3
  loop $continue|0
   block $break|0
    local.get $0
    local.get $6
    i32.ge_u
    br_if $break|0
    local.get $0
    local.tee $1
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.load8_u
    local.tee $4
    i32.const 128
    i32.lt_u
    if
     local.get $4
     i32.eqz
     i32.const 0
     local.get $2
     select
     br_if $break|0
     local.get $3
     local.get $4
     i32.store16
     local.get $3
     i32.const 2
     i32.add
     local.set $3
    else     
     local.get $4
     i32.const 224
     i32.lt_u
     i32.const 0
     local.get $4
     i32.const 191
     i32.gt_u
     select
     if
      local.get $0
      local.tee $1
      i32.const 1
      i32.add
      local.set $0
      local.get $3
      local.get $1
      i32.load8_u
      i32.const 63
      i32.and
      local.get $4
      i32.const 31
      i32.and
      i32.const 6
      i32.shl
      i32.or
      i32.store16
      local.get $3
      i32.const 2
      i32.add
      local.set $3
     else      
      local.get $4
      i32.const 365
      i32.lt_u
      i32.const 0
      local.get $4
      i32.const 239
      i32.gt_u
      select
      if (result i32)
       local.get $3
       local.get $0
       i32.load8_u offset=2
       i32.const 63
       i32.and
       local.get $4
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
       local.get $3
       local.get $1
       i32.const 1023
       i32.and
       i32.const 56320
       i32.add
       i32.store16 offset=2
       local.get $3
       i32.const 4
       i32.add
       local.set $3
       local.get $0
       i32.const 3
       i32.add
      else       
       local.get $3
       local.get $0
       i32.load8_u offset=1
       i32.const 63
       i32.and
       local.get $4
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
       local.get $3
       i32.const 2
       i32.add
       local.set $3
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
  local.get $5
  local.get $3
  local.get $5
  i32.sub
  call $~lib/rt/stub/__realloc
 )
 (func $~lib/encoding/Encoding.UTF8.decode (; 20 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.get $1
  call $~lib/encoding/Encoding.UTF8.decodeUnsafe
 )
 (func $std/encoding/testUTF8Decode (; 21 ;) (type $FUNCSIG$v)
  global.get $std/encoding/str
  i32.const 0
  call $~lib/encoding/Encoding.UTF8.encode
  i32.const 0
  call $~lib/encoding/Encoding.UTF8.decode
  global.get $std/encoding/str
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 97
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $std/encoding/testUTF8DecodeNullTerminated (; 22 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $std/encoding/str
  i32.const 1
  call $~lib/encoding/Encoding.UTF8.encode
  i32.const 1
  call $~lib/encoding/Encoding.UTF8.decode
  global.get $std/encoding/str
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 103
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 264
  i32.const 1
  call $~lib/encoding/Encoding.UTF8.byteLength
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 105
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 264
  i32.const 1
  call $~lib/encoding/Encoding.UTF8.encode
  local.tee $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 107
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 296
  i32.const 1
  call $~lib/encoding/Encoding.UTF8.byteLength
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 109
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/encoding/Encoding.UTF8.decode
  i32.const 296
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 110
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 264
  i32.const 0
  call $~lib/encoding/Encoding.UTF8.encode
  i32.const 1
  call $~lib/encoding/Encoding.UTF8.decode
  i32.const 296
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 112
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $std/encoding/testUTF8DecodeUnsafe (; 23 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  global.get $std/encoding/str
  i32.const 1
  call $~lib/encoding/Encoding.UTF8.encode
  local.set $0
  global.get $std/encoding/str
  i32.const 0
  call $~lib/encoding/Encoding.UTF8.byteLength
  local.set $1
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/encoding/Encoding.UTF8.decodeUnsafe
  i32.const 104
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 121
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/encoding/Encoding.UTF8.decodeUnsafe
  global.get $std/encoding/str
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 122
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 0
  call $~lib/encoding/Encoding.UTF8.decodeUnsafe
  i32.const 120
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 123
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.add
  i32.const 2
  i32.const 0
  call $~lib/encoding/Encoding.UTF8.decodeUnsafe
  i32.const 168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 124
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 6
  i32.add
  i32.const 4
  i32.const 0
  call $~lib/encoding/Encoding.UTF8.decodeUnsafe
  i32.const 192
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 125
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 10
  i32.add
  i32.const 0
  i32.const 0
  call $~lib/encoding/Encoding.UTF8.decodeUnsafe
  i32.const 104
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 126
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.add
  i32.const 100
  i32.const 1
  call $~lib/encoding/Encoding.UTF8.decodeUnsafe
  i32.const 320
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 128
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 6
  i32.add
  i32.const 100
  i32.const 1
  call $~lib/encoding/Encoding.UTF8.decodeUnsafe
  i32.const 192
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 129
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 10
  i32.add
  i32.const 100
  i32.const 1
  call $~lib/encoding/Encoding.UTF8.decodeUnsafe
  i32.const 104
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 130
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:std/encoding (; 24 ;) (type $FUNCSIG$v)
  global.get $std/encoding/str
  call $~lib/encoding/Encoding.UTF16.byteLength
  i32.const 12
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 8
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 336
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  call $std/encoding/testUTF16Encode
  call $std/encoding/testUTF16Decode
  call $std/encoding/testUTF16DecodeUnsafe
  call $std/encoding/testUTF8Length
  call $std/encoding/testUTF8Encode
  call $std/encoding/testUTF8EncodeNullTerminated
  call $std/encoding/testUTF8Decode
  call $std/encoding/testUTF8DecodeNullTerminated
  call $std/encoding/testUTF8DecodeUnsafe
 )
 (func $start (; 25 ;) (type $FUNCSIG$v)
  call $start:std/encoding
 )
 (func $null (; 26 ;) (type $FUNCSIG$v)
  nop
 )
)
