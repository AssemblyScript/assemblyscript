(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00\01\d87\dch\00i\00R\d8b\df")
 (data (i32.const 40) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00s\00t\00d\00/\00s\00t\00r\00i\00n\00g\00-\00u\00t\00f\008\00.\00t\00s")
 (data (i32.const 100) "\01\00\00\00\01")
 (data (i32.const 112) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 160) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\01\d87\dc")
 (data (i32.const 184) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00h\00i")
 (data (i32.const 208) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00R\d8b\df")
 (data (i32.const 232) "\02\00\00\00\01\00\00\00\01\00\00\00\02")
 (global $std/string-utf8/str i32 (i32.const 24))
 (global $std/string-utf8/len (mut i32) (i32.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $std/string-utf8/ptr (mut i32) (i32.const 0))
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
 (func $~lib/string/String#get:lengthUTF8 (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  local.set $1
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  loop $continue|0
   local.get $2
   local.get $3
   i32.ge_u
   i32.eqz
   if
    local.get $2
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    i32.load16_u
    local.tee $4
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $2
     i32.const 1
     i32.add
    else     
     local.get $4
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      i32.const 2
      i32.add
      local.set $1
      local.get $2
      i32.const 1
      i32.add
     else      
      local.get $2
      i32.const 1
      i32.add
      local.get $3
      i32.lt_u
      i32.const 0
      local.get $4
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      select
      if (result i32)
       local.get $2
       i32.const 1
       i32.add
       i32.const 1
       i32.shl
       local.get $0
       i32.add
       i32.load16_u
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
      else       
       i32.const 0
      end
      if (result i32)
       local.get $1
       i32.const 4
       i32.add
       local.set $1
       local.get $2
       i32.const 2
       i32.add
      else       
       local.get $1
       i32.const 3
       i32.add
       local.set $1
       local.get $2
       i32.const 1
       i32.add
      end
     end
    end
    local.set $2
    br $continue|0
   end
  end
  local.get $1
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
 (func $~lib/string/String#toUTF8 (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/string/String#get:lengthUTF8
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $5
  local.get $0
  call $~lib/string/String#get:length
  local.set $6
  loop $continue|0
   local.get $3
   local.get $6
   i32.lt_u
   if
    local.get $3
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    i32.load16_u
    local.tee $1
    i32.const 128
    i32.lt_u
    if
     local.get $2
     local.get $5
     i32.add
     local.get $1
     i32.store8
     local.get $2
     i32.const 1
     i32.add
     local.set $2
    else     
     local.get $1
     i32.const 2048
     i32.lt_u
     if
      local.get $2
      local.get $5
      i32.add
      local.tee $4
      local.get $1
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      i32.store8
      local.get $4
      local.get $1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get $2
      i32.const 2
      i32.add
      local.set $2
     else      
      local.get $2
      local.get $5
      i32.add
      local.set $4
      local.get $3
      i32.const 1
      i32.add
      local.get $6
      i32.lt_u
      i32.const 0
      local.get $1
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      select
      if
       local.get $3
       i32.const 1
       i32.add
       i32.const 1
       i32.shl
       local.get $0
       i32.add
       i32.load16_u
       local.tee $7
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $4
        local.get $1
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $7
        i32.const 1023
        i32.and
        i32.add
        local.tee $1
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8
        local.get $4
        local.get $1
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        local.get $4
        local.get $1
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=2
        local.get $4
        local.get $1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=3
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        local.get $3
        i32.const 2
        i32.add
        local.set $3
        br $continue|0
       end
      end
      local.get $4
      local.get $1
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      i32.store8
      local.get $4
      local.get $1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get $4
      local.get $1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $2
      i32.const 3
      i32.add
      local.set $2
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $continue|0
   end
  end
  local.get $2
  local.get $5
  i32.add
  i32.const 0
  i32.store8
  local.get $5
 )
 (func $~lib/memory/memory.copy (; 5 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/string/String.fromUTF8 (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1
  i32.lt_u
  if
   i32.const 112
   return
  end
  local.get $1
  i32.const 1
  i32.shl
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $6
  loop $continue|0
   local.get $2
   local.get $1
   i32.lt_u
   if
    local.get $2
    local.tee $4
    i32.const 1
    i32.add
    local.set $2
    local.get $0
    local.get $4
    i32.add
    i32.load8_u
    local.tee $3
    i32.const 128
    i32.lt_u
    if
     local.get $5
     local.get $6
     i32.add
     local.get $3
     i32.store16
    else     
     local.get $3
     i32.const 224
     i32.lt_u
     i32.const 0
     local.get $3
     i32.const 191
     i32.gt_u
     select
     if
      local.get $2
      i32.const 1
      i32.add
      local.get $1
      i32.gt_u
      if
       i32.const 0
       i32.const 128
       i32.const 551
       i32.const 8
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.tee $4
      i32.const 1
      i32.add
      local.set $2
      local.get $5
      local.get $6
      i32.add
      local.get $0
      local.get $4
      i32.add
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
     else      
      local.get $3
      i32.const 365
      i32.lt_u
      i32.const 0
      local.get $3
      i32.const 239
      i32.gt_u
      select
      if
       local.get $2
       i32.const 3
       i32.add
       local.get $1
       i32.gt_u
       if
        i32.const 0
        i32.const 128
        i32.const 555
        i32.const 8
        call $~lib/builtins/abort
        unreachable
       end
       local.get $3
       i32.const 7
       i32.and
       i32.const 18
       i32.shl
       local.get $0
       local.get $2
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 12
       i32.shl
       i32.or
       local.get $2
       i32.const 1
       i32.add
       local.tee $2
       local.get $0
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       local.set $4
       local.get $2
       i32.const 1
       i32.add
       local.tee $3
       i32.const 1
       i32.add
       local.set $2
       local.get $5
       local.get $6
       i32.add
       local.get $0
       local.get $3
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       local.get $4
       i32.or
       i32.const 65536
       i32.sub
       local.tee $4
       i32.const 10
       i32.shr_u
       i32.const 55296
       i32.add
       i32.store16
       local.get $6
       local.get $5
       i32.const 2
       i32.add
       local.tee $5
       i32.add
       local.get $4
       i32.const 1023
       i32.and
       i32.const 56320
       i32.add
       i32.store16
      else       
       local.get $2
       i32.const 2
       i32.add
       local.get $1
       i32.gt_u
       if
        i32.const 0
        i32.const 128
        i32.const 567
        i32.const 8
        call $~lib/builtins/abort
        unreachable
       end
       local.get $3
       i32.const 15
       i32.and
       i32.const 12
       i32.shl
       local.get $0
       local.get $2
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       local.set $4
       local.get $2
       i32.const 1
       i32.add
       local.tee $3
       i32.const 1
       i32.add
       local.set $2
       local.get $5
       local.get $6
       i32.add
       local.get $0
       local.get $3
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       local.get $4
       i32.or
       i32.store16
      end
     end
    end
    local.get $5
    i32.const 2
    i32.add
    local.set $5
    br $continue|0
   end
  end
  local.get $1
  local.get $2
  i32.ne
  if
   i32.const 0
   i32.const 128
   i32.const 576
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $0
  local.get $6
  local.get $5
  call $~lib/memory/memory.copy
  local.get $0
 )
 (func $~lib/util/string/compareImpl (; 7 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/string/String.__eq (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $start:std/string-utf8 (; 9 ;) (type $FUNCSIG$v)
  global.get $std/string-utf8/str
  call $~lib/string/String#get:lengthUTF8
  global.set $std/string-utf8/len
  global.get $std/string-utf8/len
  i32.const 11
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 7
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 256
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  global.get $std/string-utf8/str
  call $~lib/string/String#toUTF8
  global.set $std/string-utf8/ptr
  global.get $std/string-utf8/ptr
  i32.load8_u
  i32.const 240
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 11
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=1
  i32.const 144
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=2
  i32.const 144
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 13
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=3
  i32.const 183
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 14
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=4
  i32.const 104
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 15
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=5
  i32.const 105
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 16
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=6
  i32.const 240
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 17
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=7
  i32.const 164
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 18
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=8
  i32.const 173
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 19
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=9
  i32.const 162
  i32.ne
  if
   i32.const 0
   i32.const 56
   i32.const 20
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.load8_u offset=10
  if
   i32.const 0
   i32.const 56
   i32.const 21
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.const 0
  call $~lib/string/String.fromUTF8
  i32.const 112
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 23
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  global.get $std/string-utf8/len
  i32.const 1
  i32.sub
  call $~lib/string/String.fromUTF8
  global.get $std/string-utf8/str
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 24
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.const 4
  call $~lib/string/String.fromUTF8
  i32.const 176
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 25
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.const 4
  i32.add
  i32.const 2
  call $~lib/string/String.fromUTF8
  i32.const 200
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 26
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.const 6
  i32.add
  i32.const 4
  call $~lib/string/String.fromUTF8
  i32.const 224
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 27
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/string-utf8/ptr
  i32.const 10
  i32.add
  i32.const 1
  call $~lib/string/String.fromUTF8
  i32.const 248
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 28
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 10 ;) (type $FUNCSIG$v)
  call $start:std/string-utf8
 )
 (func $null (; 11 ;) (type $FUNCSIG$v)
  nop
 )
)
