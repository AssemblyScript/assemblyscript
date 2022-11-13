(module
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (type $i32_i32_=>_i32 (func_subtype (param i32 i32) (result i32) func))
 (type $none_=>_none (func_subtype func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\02\00\00\00\1a\00\00\00s\00t\00d\00/\00o\00b\00j\00e\00c\00t\00.\00t\00s")
 (data (i32.const 1084) "\1c")
 (data (i32.const 1096) "\02\00\00\00\02\00\00\00a")
 (data (i32.const 1116) "\1c")
 (data (i32.const 1128) "\02\00\00\00\02\00\00\00b")
 (data (i32.const 1148) "\1c")
 (data (i32.const 1160) "\02\00\00\00\04\00\00\00a\00b")
 (data (i32.const 1180) "\1c")
 (data (i32.const 1192) "\02")
 (data (i32.const 1212) "<")
 (data (i32.const 1224) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1276) "<")
 (data (i32.const 1288) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/string/String.__eq (type $i32_i32_=>_i32) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  i32.eqz
  local.get $0
  i32.eqz
  i32.or
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  local.tee $3
  local.get $1
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  local.tee $2
  i32.const 7
  i32.and
  local.get $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  local.get $3
  local.tee $0
  i32.const 4
  i32.ge_u
  i32.and
  if
   loop $do-loop|0
    local.get $2
    i64.load $0
    local.get $1
    i64.load $0
    i64.eq
    if
     local.get $2
     i32.const 8
     i32.add
     local.set $2
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
     br_if $do-loop|0
    end
   end
  end
  block $__inlined_func$~lib/util/string/compareImpl
   loop $while-continue|1
    local.get $0
    local.tee $3
    i32.const 1
    i32.sub
    local.set $0
    local.get $3
    if
     local.get $2
     i32.load16_u $0
     local.tee $5
     local.get $1
     i32.load16_u $0
     local.tee $4
     i32.sub
     local.set $3
     local.get $4
     local.get $5
     i32.ne
     br_if $__inlined_func$~lib/util/string/compareImpl
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   i32.const 0
   local.set $3
  end
  local.get $3
  i32.eqz
 )
 (func $~start (type $none_=>_none)
  (local $0 i32)
  (local $1 i32)
  i32.const 1104
  i32.const 1104
  call $~lib/string/String.__eq
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 44
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1104
  i32.const 1136
  call $~lib/string/String.__eq
  if
   i32.const 0
   i32.const 1056
   i32.const 45
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1104
  i32.const 1168
  call $~lib/string/String.__eq
  if
   i32.const 0
   i32.const 1056
   i32.const 46
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/string/String.__eq
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 48
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1200
  i32.const 0
  call $~lib/string/String.__eq
  if
   i32.const 0
   i32.const 1056
   i32.const 49
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1200
  call $~lib/string/String.__eq
  if
   i32.const 0
   i32.const 1056
   i32.const 50
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  memory.size $0
  local.tee $1
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  i32.const 1372
  i32.lt_u
  if
   local.get $1
   i32.const 66907
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
   memory.grow $0
   i32.const 0
   i32.lt_s
   if
    local.get $0
    memory.grow $0
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  i32.const 1340
  i32.const 28
  i32.store $0
  i32.const 1344
  i32.const 0
  i32.store $0
  i32.const 1348
  i32.const 0
  i32.store $0
  i32.const 1352
  i32.const 4
  i32.store $0
  i32.const 1356
  i32.const 0
  i32.store $0
  memory.size $0
  local.tee $1
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  i32.const 1404
  i32.lt_u
  if
   local.get $1
   i32.const 66939
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
   memory.grow $0
   i32.const 0
   i32.lt_s
   if
    local.get $0
    memory.grow $0
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  i32.const 1372
  i32.const 28
  i32.store $0
  i32.const 1376
  i32.const 0
  i32.store $0
  i32.const 1380
  i32.const 0
  i32.store $0
  i32.const 1384
  i32.const 5
  i32.store $0
  i32.const 1388
  i32.const 0
  i32.store $0
  i32.const 1384
  i32.load $0
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 74
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
)
