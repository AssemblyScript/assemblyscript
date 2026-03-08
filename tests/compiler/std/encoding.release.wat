(module
 (type $0 (func))
 (type $1 (func (param i32 i32 i32 i32)))
 (type $2 (func (param i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/__abort_impl (param i32 i32 i32 i32)))
 (global $std/encoding/decLen (mut i32) (i32.const 0))
 (global $std/encoding/bytesRead (mut i32) (i32.const 0))
 (global $std/encoding/written (mut i32) (i32.const 0))
 (global $std/encoding/decoded (mut i32) (i32.const 0))
 (global $std/encoding/decoded2 (mut i32) (i32.const 0))
 (global $std/encoding/decoded3 (mut i32) (i32.const 0))
 (global $std/encoding/decoded64 (mut i64) (i64.const 0))
 (global $std/encoding/compactDecoded (mut i64) (i64.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33868))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00\1e\00\00\00s\00t\00d\00/\00e\00n\00c\00o\00d\00i\00n\00g\00.\00t\00s")
 (export "memory" (memory $0))
 (start $~start)
 (func $start:std/encoding
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  i32.const 8192
  i32.const 48
  i32.store8
  i32.const 8193
  i32.const 48
  i32.store8
  i32.const 8192
  i32.load8_u
  i32.const 48
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 11
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8193
  i32.load8_u
  i32.const 48
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 12
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8196
  i32.const 102
  i32.store8
  i32.const 8197
  i32.const 102
  i32.store8
  i32.const 8196
  i32.load8_u
  i32.const 102
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 15
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8197
  i32.load8_u
  i32.const 102
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8200
  i32.const 97
  i32.store8
  i32.const 8201
  i32.const 98
  i32.store8
  i32.const 8200
  i32.load8_u
  i32.const 97
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 19
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8201
  i32.load8_u
  i32.const 98
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 20
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8204
  i32.const 49
  i32.store8
  i32.const 8205
  i32.const 102
  i32.store8
  i32.const 8204
  i32.load8_u
  i32.const 49
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 23
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8205
  i32.load8_u
  i32.const 102
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8448
  i32.const 48
  i32.store8
  i32.const 8449
  i32.const 48
  i32.store8
  i32.const 8448
  i32.load8_u
  local.tee $1
  i32.const 48
  i32.sub
  i32.const 255
  i32.and
  local.set $0
  block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.0
   local.get $1
   i32.const 57
   i32.le_u
   local.get $1
   i32.const 48
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.0
   local.get $1
   i32.const 87
   i32.sub
   i32.const 255
   i32.and
   local.set $0
   local.get $1
   i32.const 102
   i32.le_u
   local.get $1
   i32.const 97
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.0
   local.get $1
   i32.const 55
   i32.sub
   i32.const 255
   i32.and
   local.set $0
   local.get $1
   i32.const 70
   i32.le_u
   local.get $1
   i32.const 65
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.0
   i32.const -1
   local.set $0
  end
  local.get $0
  local.set $1
  i32.const 8449
  i32.load8_u
  local.tee $2
  i32.const 48
  i32.sub
  i32.const 255
  i32.and
  local.set $0
  block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.1
   local.get $2
   i32.const 57
   i32.le_u
   local.get $2
   i32.const 48
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.1
   local.get $2
   i32.const 87
   i32.sub
   i32.const 255
   i32.and
   local.set $0
   local.get $2
   i32.const 102
   i32.le_u
   local.get $2
   i32.const 97
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.1
   local.get $2
   i32.const 55
   i32.sub
   i32.const 255
   i32.and
   local.set $0
   local.get $2
   i32.const 70
   i32.le_u
   local.get $2
   i32.const 65
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.1
   i32.const -1
   local.set $0
  end
  i32.const -1
  local.get $0
  local.get $1
  i32.const 4
  i32.shl
  i32.or
  local.get $0
  local.get $1
  i32.or
  i32.const 0
  i32.lt_s
  select
  if
   i32.const 0
   i32.const 1056
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8450
  i32.const 102
  i32.store8
  i32.const 8451
  i32.const 102
  i32.store8
  i32.const 8450
  i32.load8_u
  local.tee $1
  i32.const 48
  i32.sub
  i32.const 255
  i32.and
  local.set $0
  block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.2
   local.get $1
   i32.const 57
   i32.le_u
   local.get $1
   i32.const 48
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.2
   local.get $1
   i32.const 87
   i32.sub
   i32.const 255
   i32.and
   local.set $0
   local.get $1
   i32.const 102
   i32.le_u
   local.get $1
   i32.const 97
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.2
   local.get $1
   i32.const 55
   i32.sub
   i32.const 255
   i32.and
   local.set $0
   local.get $1
   i32.const 70
   i32.le_u
   local.get $1
   i32.const 65
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.2
   i32.const -1
   local.set $0
  end
  local.get $0
  local.set $1
  i32.const 8451
  i32.load8_u
  local.tee $2
  i32.const 48
  i32.sub
  i32.const 255
  i32.and
  local.set $0
  block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.3
   local.get $2
   i32.const 57
   i32.le_u
   local.get $2
   i32.const 48
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.3
   local.get $2
   i32.const 87
   i32.sub
   i32.const 255
   i32.and
   local.set $0
   local.get $2
   i32.const 102
   i32.le_u
   local.get $2
   i32.const 97
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.3
   local.get $2
   i32.const 55
   i32.sub
   i32.const 255
   i32.and
   local.set $0
   local.get $2
   i32.const 70
   i32.le_u
   local.get $2
   i32.const 65
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.3
   i32.const -1
   local.set $0
  end
  i32.const -1
  local.get $0
  local.get $1
  i32.const 4
  i32.shl
  i32.or
  local.get $0
  local.get $1
  i32.or
  i32.const 0
  i32.lt_s
  select
  i32.const 255
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 32
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8452
  i32.const 65
  i32.store8
  i32.const 8453
  i32.const 66
  i32.store8
  i32.const 8452
  i32.load8_u
  local.tee $1
  i32.const 48
  i32.sub
  i32.const 255
  i32.and
  local.set $0
  block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.4
   local.get $1
   i32.const 57
   i32.le_u
   local.get $1
   i32.const 48
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.4
   local.get $1
   i32.const 87
   i32.sub
   i32.const 255
   i32.and
   local.set $0
   local.get $1
   i32.const 102
   i32.le_u
   local.get $1
   i32.const 97
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.4
   local.get $1
   i32.const 55
   i32.sub
   i32.const 255
   i32.and
   local.set $0
   local.get $1
   i32.const 70
   i32.le_u
   local.get $1
   i32.const 65
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.4
   i32.const -1
   local.set $0
  end
  local.get $0
  local.set $1
  i32.const 8453
  i32.load8_u
  local.tee $2
  i32.const 48
  i32.sub
  i32.const 255
  i32.and
  local.set $0
  block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.5
   local.get $2
   i32.const 57
   i32.le_u
   local.get $2
   i32.const 48
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.5
   local.get $2
   i32.const 87
   i32.sub
   i32.const 255
   i32.and
   local.set $0
   local.get $2
   i32.const 102
   i32.le_u
   local.get $2
   i32.const 97
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.5
   local.get $2
   i32.const 55
   i32.sub
   i32.const 255
   i32.and
   local.set $0
   local.get $2
   i32.const 70
   i32.le_u
   local.get $2
   i32.const 65
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.5
   i32.const -1
   local.set $0
  end
  i32.const -1
  local.get $0
  local.get $1
  i32.const 4
  i32.shl
  i32.or
  local.get $0
  local.get $1
  i32.or
  i32.const 0
  i32.lt_s
  select
  i32.const 171
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 35
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8456
  i32.const 103
  i32.store8
  i32.const 8457
  i32.const 48
  i32.store8
  i32.const 8456
  i32.load8_u
  local.tee $1
  i32.const 48
  i32.sub
  i32.const 255
  i32.and
  local.set $0
  block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.6
   local.get $1
   i32.const 57
   i32.le_u
   local.get $1
   i32.const 48
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.6
   local.get $1
   i32.const 87
   i32.sub
   i32.const 255
   i32.and
   local.set $0
   local.get $1
   i32.const 102
   i32.le_u
   local.get $1
   i32.const 97
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.6
   local.get $1
   i32.const 55
   i32.sub
   i32.const 255
   i32.and
   local.set $0
   local.get $1
   i32.const 70
   i32.le_u
   local.get $1
   i32.const 65
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.6
   i32.const -1
   local.set $0
  end
  local.get $0
  local.set $1
  i32.const 8457
  i32.load8_u
  local.tee $2
  i32.const 48
  i32.sub
  i32.const 255
  i32.and
  local.set $0
  block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.7
   local.get $2
   i32.const 57
   i32.le_u
   local.get $2
   i32.const 48
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.7
   local.get $2
   i32.const 87
   i32.sub
   i32.const 255
   i32.and
   local.set $0
   local.get $2
   i32.const 102
   i32.le_u
   local.get $2
   i32.const 97
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.7
   local.get $2
   i32.const 55
   i32.sub
   i32.const 255
   i32.and
   local.set $0
   local.get $2
   i32.const 70
   i32.le_u
   local.get $2
   i32.const 65
   i32.ge_u
   i32.and
   br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.7
   i32.const -1
   local.set $0
  end
  i32.const -1
  local.get $0
  local.get $1
  i32.const 4
  i32.shl
  i32.or
  local.get $0
  local.get $1
  i32.or
  i32.const 0
  i32.lt_s
  select
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 39
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8536
  i32.const 222
  i32.store8
  i32.const 8537
  i32.const 173
  i32.store8
  i32.const 8538
  i32.const 190
  i32.store8
  i32.const 8539
  i32.const 239
  i32.store8
  loop $for-loop|0
   local.get $3
   i32.const 4
   i32.lt_s
   if
    local.get $3
    i32.const 1
    i32.shl
    i32.const 8636
    i32.add
    local.tee $2
    local.get $3
    i32.const 8536
    i32.add
    i32.load8_u
    local.tee $1
    i32.const 4
    i32.shr_u
    local.tee $0
    i32.const 48
    i32.add
    local.get $0
    i32.const 87
    i32.add
    local.get $0
    i32.const 10
    i32.lt_u
    select
    i32.store8
    local.get $2
    local.get $1
    i32.const 15
    i32.and
    local.tee $0
    i32.const 48
    i32.add
    local.get $0
    i32.const 87
    i32.add
    local.get $0
    i32.const 10
    i32.lt_u
    select
    i32.store8 offset=1
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  block $~lib/encoding/Encoding.Hex.decode|inlined.0 (result i32)
   i32.const 0
   local.set $0
   loop $for-loop|1
    local.get $0
    i32.const 4
    i32.lt_s
    if
     local.get $0
     i32.const 1
     i32.shl
     i32.const 8636
     i32.add
     local.tee $3
     i32.load8_u
     local.tee $1
     i32.const 48
     i32.sub
     i32.const 255
     i32.and
     local.set $2
     block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.8
      local.get $1
      i32.const 57
      i32.le_u
      local.get $1
      i32.const 48
      i32.ge_u
      i32.and
      br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.8
      local.get $1
      i32.const 87
      i32.sub
      i32.const 255
      i32.and
      local.set $2
      local.get $1
      i32.const 102
      i32.le_u
      local.get $1
      i32.const 97
      i32.ge_u
      i32.and
      br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.8
      local.get $1
      i32.const 55
      i32.sub
      i32.const 255
      i32.and
      local.set $2
      local.get $1
      i32.const 70
      i32.le_u
      local.get $1
      i32.const 65
      i32.ge_u
      i32.and
      br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.8
      i32.const -1
      local.set $2
     end
     local.get $2
     local.set $1
     local.get $3
     i32.load8_u offset=1
     local.tee $3
     i32.const 48
     i32.sub
     i32.const 255
     i32.and
     local.set $2
     block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.9
      local.get $3
      i32.const 57
      i32.le_u
      local.get $3
      i32.const 48
      i32.ge_u
      i32.and
      br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.9
      local.get $3
      i32.const 87
      i32.sub
      i32.const 255
      i32.and
      local.set $2
      local.get $3
      i32.const 102
      i32.le_u
      local.get $3
      i32.const 97
      i32.ge_u
      i32.and
      br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.9
      local.get $3
      i32.const 55
      i32.sub
      i32.const 255
      i32.and
      local.set $2
      local.get $3
      i32.const 70
      i32.le_u
      local.get $3
      i32.const 65
      i32.ge_u
      i32.and
      br_if $~lib/encoding/Encoding.Hex.decodeNibble|inlined.9
      i32.const -1
      local.set $2
     end
     i32.const -1
     i32.const -1
     local.get $2
     local.get $1
     i32.const 4
     i32.shl
     i32.or
     local.get $1
     local.get $2
     i32.or
     i32.const 0
     i32.lt_s
     select
     local.tee $1
     i32.const 0
     i32.lt_s
     br_if $~lib/encoding/Encoding.Hex.decode|inlined.0
     drop
     local.get $0
     i32.const 8736
     i32.add
     local.get $1
     i32.store8
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|1
    end
   end
   i32.const 4
  end
  global.set $std/encoding/decLen
  global.get $std/encoding/decLen
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 53
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8736
  i32.load8_u
  i32.const 222
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 54
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8737
  i32.load8_u
  i32.const 173
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 55
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8738
  i32.load8_u
  i32.const 190
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 56
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8739
  i32.load8_u
  i32.const 239
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8960
  global.set $std/encoding/bytesRead
  i32.const 0
  local.set $3
  i32.const 0
  local.set $0
  loop $while-continue|3
   local.get $3
   i32.const 128
   i32.ge_u
   if
    local.get $0
    i32.const 9036
    i32.add
    local.get $3
    i32.const 127
    i32.and
    i32.const 128
    i32.or
    i32.store8
    local.get $3
    i32.const 7
    i32.shr_u
    local.set $3
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $while-continue|3
   end
  end
  local.get $0
  i32.const 9036
  i32.add
  local.get $3
  i32.store8
  local.get $0
  i32.const 1
  i32.add
  global.set $std/encoding/written
  global.get $std/encoding/written
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 73
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 9036
  i32.load8_u
  if
   i32.const 0
   i32.const 1056
   i32.const 74
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 127
  local.set $3
  i32.const 0
  local.set $0
  loop $while-continue|4
   local.get $3
   i32.const 128
   i32.ge_u
   if
    local.get $0
    i32.const 9036
    i32.add
    local.get $3
    i32.const 127
    i32.and
    i32.const 128
    i32.or
    i32.store8
    local.get $3
    i32.const 7
    i32.shr_u
    local.set $3
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $while-continue|4
   end
  end
  local.get $0
  i32.const 9036
  i32.add
  local.get $3
  i32.store8
  local.get $0
  i32.const 1
  i32.add
  global.set $std/encoding/written
  global.get $std/encoding/written
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 77
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 9036
  i32.load8_u
  i32.const 127
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 78
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 128
  local.set $3
  i32.const 0
  local.set $0
  loop $while-continue|5
   local.get $3
   i32.const 128
   i32.ge_u
   if
    local.get $0
    i32.const 9036
    i32.add
    local.get $3
    i32.const 127
    i32.and
    i32.const 128
    i32.or
    i32.store8
    local.get $3
    i32.const 7
    i32.shr_u
    local.set $3
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $while-continue|5
   end
  end
  local.get $0
  i32.const 9036
  i32.add
  local.get $3
  i32.store8
  local.get $0
  i32.const 1
  i32.add
  global.set $std/encoding/written
  global.get $std/encoding/written
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 82
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/bytesRead
  i32.const 0
  local.set $0
  i32.const 0
  local.set $3
  loop $do-loop|6
   block $do-break|6
    local.get $0
    local.get $3
    i32.const 9036
    i32.add
    i32.load8_u
    local.tee $1
    i32.const 127
    i32.and
    local.get $6
    i32.shl
    i32.or
    local.set $0
    local.get $6
    i32.const 7
    i32.add
    local.set $6
    local.get $3
    i32.const 1
    i32.add
    local.tee $3
    i32.const 5
    i32.ge_s
    br_if $do-break|6
    local.get $1
    i32.const 128
    i32.and
    br_if $do-loop|6
   end
  end
  local.get $3
  i32.store
  local.get $0
  global.set $std/encoding/decoded
  global.get $std/encoding/decoded
  i32.const 128
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 84
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/bytesRead
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 85
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 300
  local.set $3
  i32.const 0
  local.set $0
  loop $while-continue|7
   local.get $3
   i32.const 128
   i32.ge_u
   if
    local.get $0
    i32.const 9036
    i32.add
    local.get $3
    i32.const 127
    i32.and
    i32.const 128
    i32.or
    i32.store8
    local.get $3
    i32.const 7
    i32.shr_u
    local.set $3
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $while-continue|7
   end
  end
  local.get $0
  i32.const 9036
  i32.add
  local.get $3
  i32.store8
  local.get $0
  i32.const 1
  i32.add
  global.set $std/encoding/written
  global.get $std/encoding/bytesRead
  i32.const 0
  local.set $0
  i32.const 0
  local.set $6
  i32.const 0
  local.set $3
  loop $do-loop|8
   block $do-break|8
    local.get $0
    local.get $3
    i32.const 9036
    i32.add
    i32.load8_u
    local.tee $1
    i32.const 127
    i32.and
    local.get $6
    i32.shl
    i32.or
    local.set $0
    local.get $6
    i32.const 7
    i32.add
    local.set $6
    local.get $3
    i32.const 1
    i32.add
    local.tee $3
    i32.const 5
    i32.ge_s
    br_if $do-break|8
    local.get $1
    i32.const 128
    i32.and
    br_if $do-loop|8
   end
  end
  local.get $3
  i32.store
  local.get $0
  global.set $std/encoding/decoded2
  global.get $std/encoding/decoded2
  i32.const 300
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 89
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -1
  local.set $3
  i32.const 0
  local.set $0
  loop $while-continue|9
   local.get $3
   i32.const 128
   i32.ge_u
   if
    local.get $0
    i32.const 9036
    i32.add
    local.get $3
    i32.const 127
    i32.and
    i32.const 128
    i32.or
    i32.store8
    local.get $3
    i32.const 7
    i32.shr_u
    local.set $3
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $while-continue|9
   end
  end
  local.get $0
  i32.const 9036
  i32.add
  local.get $3
  i32.store8
  local.get $0
  i32.const 1
  i32.add
  global.set $std/encoding/written
  global.get $std/encoding/written
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 93
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/bytesRead
  i32.const 0
  local.set $0
  i32.const 0
  local.set $6
  i32.const 0
  local.set $3
  loop $do-loop|10
   block $do-break|10
    local.get $0
    local.get $3
    i32.const 9036
    i32.add
    i32.load8_u
    local.tee $1
    i32.const 127
    i32.and
    local.get $6
    i32.shl
    i32.or
    local.set $0
    local.get $6
    i32.const 7
    i32.add
    local.set $6
    local.get $3
    i32.const 1
    i32.add
    local.tee $3
    i32.const 5
    i32.ge_s
    br_if $do-break|10
    local.get $1
    i32.const 128
    i32.and
    br_if $do-loop|10
   end
  end
  local.get $3
  i32.store
  local.get $0
  global.set $std/encoding/decoded3
  global.get $std/encoding/decoded3
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 95
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/bytesRead
  i32.load
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 96
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 72623859790382856
  local.set $5
  i32.const 0
  local.set $3
  loop $while-continue|11
   local.get $5
   i64.const 128
   i64.ge_u
   if
    local.get $3
    i32.const 9136
    i32.add
    local.get $5
    i64.const 127
    i64.and
    i32.wrap_i64
    i32.const 128
    i32.or
    i32.store8
    local.get $5
    i64.const 7
    i64.shr_u
    local.set $5
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $while-continue|11
   end
  end
  local.get $3
  i32.const 9136
  i32.add
  local.get $5
  i64.store8
  local.get $3
  i32.const 1
  i32.add
  global.set $std/encoding/written
  global.get $std/encoding/bytesRead
  i64.const 0
  local.set $5
  i32.const 0
  local.set $3
  loop $do-loop|12
   block $do-break|12
    local.get $5
    local.get $3
    i32.const 9136
    i32.add
    i32.load8_u
    local.tee $0
    i32.const 127
    i32.and
    i64.extend_i32_u
    local.get $4
    i64.shl
    i64.or
    local.set $5
    local.get $4
    i64.const 7
    i64.add
    local.set $4
    local.get $3
    i32.const 1
    i32.add
    local.tee $3
    i32.const 10
    i32.ge_s
    br_if $do-break|12
    local.get $0
    i32.const 128
    i32.and
    br_if $do-loop|12
   end
  end
  local.get $3
  i32.store
  local.get $5
  global.set $std/encoding/decoded64
  global.get $std/encoding/decoded64
  i64.const 72623859790382856
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 102
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 9236
  i64.const 252
  i64.store8
  i32.const 1
  global.set $std/encoding/written
  global.get $std/encoding/bytesRead
  local.set $1
  i32.const 9236
  i32.load8_u
  local.tee $0
  i32.const 253
  i32.lt_u
  if (result i64)
   local.get $1
   i32.const 1
   i32.store
   local.get $0
   i64.extend_i32_u
  else
   local.get $0
   i32.const 253
   i32.eq
   if (result i64)
    local.get $1
    i32.const 3
    i32.store
    i32.const 9237
    i64.load16_u
   else
    local.get $0
    i32.const 254
    i32.eq
    if (result i64)
     local.get $1
     i32.const 5
     i32.store
     i32.const 9237
     i64.load32_u
    else
     local.get $1
     i32.const 9
     i32.store
     i32.const 9237
     i64.load
    end
   end
  end
  global.set $std/encoding/compactDecoded
  global.get $std/encoding/compactDecoded
  i64.const 252
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 112
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/bytesRead
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 113
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 9236
  i32.const 253
  i32.store8
  i32.const 9237
  i64.const 253
  i64.store16
  i32.const 3
  global.set $std/encoding/written
  global.get $std/encoding/bytesRead
  local.set $1
  i32.const 9236
  i32.load8_u
  local.tee $0
  i32.const 253
  i32.lt_u
  if (result i64)
   local.get $1
   i32.const 1
   i32.store
   local.get $0
   i64.extend_i32_u
  else
   local.get $0
   i32.const 253
   i32.eq
   if (result i64)
    local.get $1
    i32.const 3
    i32.store
    i32.const 9237
    i64.load16_u
   else
    local.get $0
    i32.const 254
    i32.eq
    if (result i64)
     local.get $1
     i32.const 5
     i32.store
     i32.const 9237
     i64.load32_u
    else
     local.get $1
     i32.const 9
     i32.store
     i32.const 9237
     i64.load
    end
   end
  end
  global.set $std/encoding/compactDecoded
  global.get $std/encoding/compactDecoded
  i64.const 253
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 119
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/bytesRead
  i32.load
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 120
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 9236
  i32.const 253
  i32.store8
  i32.const 9237
  i64.const 65535
  i64.store16
  i32.const 3
  global.set $std/encoding/written
  global.get $std/encoding/bytesRead
  local.set $1
  i32.const 9236
  i32.load8_u
  local.tee $0
  i32.const 253
  i32.lt_u
  if (result i64)
   local.get $1
   i32.const 1
   i32.store
   local.get $0
   i64.extend_i32_u
  else
   local.get $0
   i32.const 253
   i32.eq
   if (result i64)
    local.get $1
    i32.const 3
    i32.store
    i32.const 9237
    i64.load16_u
   else
    local.get $0
    i32.const 254
    i32.eq
    if (result i64)
     local.get $1
     i32.const 5
     i32.store
     i32.const 9237
     i64.load32_u
    else
     local.get $1
     i32.const 9
     i32.store
     i32.const 9237
     i64.load
    end
   end
  end
  global.set $std/encoding/compactDecoded
  global.get $std/encoding/compactDecoded
  i64.const 65535
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 125
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/bytesRead
  i32.load
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 126
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 9236
  i32.const 254
  i32.store8
  i32.const 9237
  i64.const 65536
  i64.store32
  i32.const 5
  global.set $std/encoding/written
  global.get $std/encoding/bytesRead
  local.set $1
  i32.const 9236
  i32.load8_u
  local.tee $0
  i32.const 253
  i32.lt_u
  if (result i64)
   local.get $1
   i32.const 1
   i32.store
   local.get $0
   i64.extend_i32_u
  else
   local.get $0
   i32.const 253
   i32.eq
   if (result i64)
    local.get $1
    i32.const 3
    i32.store
    i32.const 9237
    i64.load16_u
   else
    local.get $0
    i32.const 254
    i32.eq
    if (result i64)
     local.get $1
     i32.const 5
     i32.store
     i32.const 9237
     i64.load32_u
    else
     local.get $1
     i32.const 9
     i32.store
     i32.const 9237
     i64.load
    end
   end
  end
  global.set $std/encoding/compactDecoded
  global.get $std/encoding/compactDecoded
  i64.const 65536
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 132
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/bytesRead
  i32.load
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 133
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 9236
  i32.const 255
  i32.store8
  i32.const 9237
  i64.const 4294967296
  i64.store
  i32.const 9
  global.set $std/encoding/written
  global.get $std/encoding/bytesRead
  local.set $1
  i32.const 9236
  i32.load8_u
  local.tee $0
  i32.const 253
  i32.lt_u
  if (result i64)
   local.get $1
   i32.const 1
   i32.store
   local.get $0
   i64.extend_i32_u
  else
   local.get $0
   i32.const 253
   i32.eq
   if (result i64)
    local.get $1
    i32.const 3
    i32.store
    i32.const 9237
    i64.load16_u
   else
    local.get $0
    i32.const 254
    i32.eq
    if (result i64)
     local.get $1
     i32.const 5
     i32.store
     i32.const 9237
     i64.load32_u
    else
     local.get $1
     i32.const 9
     i32.store
     i32.const 9237
     i64.load
    end
   end
  end
  global.set $std/encoding/compactDecoded
  global.get $std/encoding/compactDecoded
  i64.const 4294967296
  i64.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 139
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/bytesRead
  i32.load
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 140
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:std/encoding
 )
 (func $~lib/builtins/abort (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1100
  i32.lt_s
  if
   i32.const 33888
   i32.const 33936
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $2
  i32.const 1
  call $~lib/builtins/__abort_impl
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
