(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00n\00u\00m\00b\00e\00r")
 (data (i32.const 1068) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00o\00b\00j\00e\00c\00t")
 (data (i32.const 1100) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\12\00\00\00t\00y\00p\00e\00o\00f\00.\00t\00s")
 (data (i32.const 1148) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00f\00u\00n\00c\00t\00i\00o\00n")
 (data (i32.const 1196) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00b\00o\00o\00l\00e\00a\00n")
 (data (i32.const 1244) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\001")
 (data (i32.const 1276) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\00s\00t\00r\00i\00n\00g")
 (data (i32.const 1308) "\1c\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\08\00\00\00\01")
 (data (i32.const 1340) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\12\00\00\00u\00n\00d\00e\00f\00i\00n\00e\00d")
 (global $~started (mut i32) (i32.const 0))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.tee $2
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.ne
   br_if $folding-inner0
   block $__inlined_func$~lib/util/string/compareImpl (result i32)
    local.get $0
    local.tee $3
    i32.const 7
    i32.and
    local.get $1
    i32.const 7
    i32.and
    i32.or
    i32.eqz
    i32.const 0
    local.get $2
    local.tee $0
    i32.const 4
    i32.ge_u
    select
    if
     loop $do-continue|0
      local.get $3
      i64.load
      local.get $1
      i64.load
      i64.eq
      if
       local.get $3
       i32.const 8
       i32.add
       local.set $3
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       local.get $0
       i32.const 4
       i32.sub
       local.tee $0
       i32.const 4
       i32.ge_u
       br_if $do-continue|0
      end
     end
    end
    loop $while-continue|1
     local.get $0
     local.tee $2
     i32.const 1
     i32.sub
     local.set $0
     local.get $2
     if
      local.get $3
      i32.load16_u
      local.tee $2
      local.get $1
      i32.load16_u
      local.tee $4
      i32.ne
      if
       local.get $2
       local.get $4
       i32.sub
       br $__inlined_func$~lib/util/string/compareImpl
      end
      local.get $3
      i32.const 2
      i32.add
      local.set $3
      local.get $1
      i32.const 2
      i32.add
      local.set $1
      br $while-continue|1
     end
    end
    i32.const 0
   end
   i32.eqz
   return
  end
  i32.const 0
 )
 (func $start:typeof
  (local $0 i32)
  (local $1 i32)
  i32.const 1088
  i32.const 1088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 13
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1088
  i32.const 1088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 14
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1088
  i32.const 1088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 15
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1168
  i32.const 1168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 16
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1168
  i32.const 1168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 17
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1216
  i32.const 1216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 19
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1088
  i32.const 1088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 20
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 23
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1296
  i32.const 1296
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 24
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1216
  i32.const 1216
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 27
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 29
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 31
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 33
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1056
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 35
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1296
  i32.const 1296
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 37
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1168
  i32.const 1168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 39
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  memory.size
  local.tee $1
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  i32.const 1420
  i32.lt_u
  if
   local.get $1
   i32.const 66955
   local.get $0
   i32.sub
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $0
   local.get $0
   local.get $1
   i32.lt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $0
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  i32.const 1388
  i32.const 28
  i32.store
  i32.const 1392
  i32.const 0
  i32.store
  i32.const 1396
  i32.const 0
  i32.store
  i32.const 1400
  i32.const 4
  i32.store
  i32.const 1404
  i32.const 0
  i32.store
  i32.const 1088
  i32.const 1088
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1168
  i32.const 1168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 42
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1360
  i32.const 1360
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 46
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1360
  i32.const 1360
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 47
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1360
  i32.const 1360
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 48
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:typeof
 )
)
