(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $none_=>_i32 (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "mark" (func $~lib/rt/tcms/__visit_externals (param i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 1036) "\06\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\001\002\003")
 (data (i32.const 1068) "\06\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\002\003\004")
 (data (i32.const 1100) "\12\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\12\00\00\00d\00o\00T\00h\00r\00o\00w\00I\00f")
 (data (i32.const 1148) "\10\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00t\00h\00r\00o\00w\00.\00t\00s")
 (data (i32.const 1196) "\06\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\003\004\005")
 (data (i32.const 1228) "\1a\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00d\00o\00T\00h\00r\00o\00w\00I\00f\00L\00o\00o\00p")
 (data (i32.const 1276) "\06\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\004\005\006")
 (data (i32.const 1308) "\06\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\005\006\007")
 (data (i32.const 1340) "\1e\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1452) "\18\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00i\00n\00 \00f\00r\00o\00m\00S\00p\00a\00c\00e")
 (data (i32.const 1500) "\14\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00i\00n\00 \00t\00o\00S\00p\00a\00c\00e")
 (data (i32.const 1548) "\1e\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1612) "\0e\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00d\00o\00T\00h\00r\00o\00w")
 (global $~lib/rt/tcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/threshold (mut i32) (i32.const 100))
 (global $~lib/rt/tcms/debt (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/fromSpace (mut i32) (i32.const 1392))
 (global $~lib/rt/tcms/toSpace (mut i32) (i32.const 1424))
 (global $~lib/rt/tcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/totalMem (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "doThrow" (func $throw/doThrow))
 (start $~start)
 (func $~lib/rt/tcms/Object#set:color (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
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
   i32.const 1568
   i32.const 272
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 1073741820
  i32.lt_u
  i32.const 0
  local.get $2
  i32.const 12
  i32.ge_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1568
   i32.const 274
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
   local.set $3
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $3
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1568
   i32.const 287
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $4
  local.get $1
  i32.load offset=4
  local.tee $5
  if
   local.get $5
   local.get $4
   i32.store offset=8
  end
  local.get $4
  if
   local.get $4
   local.get $5
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $2
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.get $2
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $4
   i32.store offset=96
   local.get $4
   i32.eqz
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.tee $4
    i32.load offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $1
    local.get $4
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1568
   i32.const 200
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1568
   i32.const 202
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $5
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const -4
   i32.and
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.const 1073741820
   i32.lt_u
   if
    local.get $0
    local.get $5
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $3
    local.get $4
    i32.const 3
    i32.and
    i32.or
    local.tee $4
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $5
    i32.load
    local.set $2
   end
  end
  local.get $4
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $3
   i32.load
   local.tee $7
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1568
    i32.const 223
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const -4
   i32.and
   i32.const 4
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $8
   i32.const 1073741820
   i32.lt_u
   if (result i32)
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/removeBlock
    local.get $3
    local.get $8
    local.get $7
    i32.const 3
    i32.and
    i32.or
    local.tee $4
    i32.store
    local.get $3
   else
    local.get $1
   end
   local.set $1
  end
  local.get $5
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $4
  i32.const -4
  i32.and
  local.tee $3
  i32.const 1073741820
  i32.lt_u
  i32.const 0
  local.get $3
  i32.const 12
  i32.ge_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1568
   i32.const 238
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $3
  local.get $1
  i32.const 4
  i32.add
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1568
   i32.const 239
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 256
  i32.lt_u
  if
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $3
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $3
   local.get $4
   i32.const 7
   i32.sub
   local.set $6
  end
  local.get $3
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $6
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1568
   i32.const 255
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
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
  local.get $3
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $6
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $3
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 3220
  i32.lt_u
  if
   i32.const 0
   i32.const 1568
   i32.const 380
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -16
  i32.and
  i32.const 3216
  i32.load
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.const 3228
   i32.gt_u
   if
    i32.const 0
    i32.const 1568
    i32.const 387
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 3212
   i32.eq
   if (result i32)
    local.get $0
    i32.load
    local.set $2
    i32.const 3212
   else
    i32.const 3228
   end
  else
   i32.const 3228
  end
  local.tee $1
  i32.sub
  local.tee $0
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $2
  i32.const 2
  i32.and
  local.get $0
  i32.const 8
  i32.sub
  local.tee $0
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
  local.get $0
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.tee $0
  i32.const 2
  i32.store
  i32.const 3216
  local.get $0
  i32.store
  i32.const 1648
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1648
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   memory.size
   local.tee $2
   i32.const 1
   i32.lt_s
   if (result i32)
    i32.const 1
    local.get $2
    i32.sub
    memory.grow
    i32.const 0
    i32.lt_s
   else
    i32.const 0
   end
   if
    unreachable
   end
   i32.const 1648
   i32.const 0
   i32.store
   i32.const 3216
   i32.const 0
   i32.store
   loop $for-loop|0
    local.get $1
    i32.const 23
    i32.lt_u
    if
     local.get $1
     i32.const 2
     i32.shl
     i32.const 1648
     i32.add
     i32.const 0
     i32.store offset=4
     i32.const 0
     local.set $2
     loop $for-loop|1
      local.get $2
      i32.const 16
      i32.lt_u
      if
       local.get $2
       local.get $1
       i32.const 4
       i32.shl
       i32.add
       i32.const 2
       i32.shl
       i32.const 1648
       i32.add
       i32.const 0
       i32.store offset=96
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|1
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 1648
   global.set $~lib/rt/tlsf/ROOT
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
  if (result i32)
   local.get $1
   i32.load
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1568
   i32.const 564
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  i32.store
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $folding-inner1
   block $break|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        global.get $~lib/rt/tcms/state
        br_table $case0|0 $case1|0 $case2|0 $case3|0 $break|0
       end
       global.get $~lib/rt/tcms/fromSpace
       local.tee $1
       local.get $1
       i32.store offset=4
       local.get $1
       i32.eqz
       br_if $folding-inner1
       local.get $1
       local.get $1
       i32.store offset=8
       global.get $~lib/rt/tcms/toSpace
       local.tee $1
       local.get $1
       i32.store offset=4
       local.get $1
       i32.eqz
       br_if $folding-inner1
       local.get $1
       local.get $1
       i32.store offset=8
       global.get $~lib/rt/tcms/toSpace
       global.set $~lib/rt/tcms/iter
       i32.const 1
       global.set $~lib/rt/tcms/state
      end
      i32.const 0
      call $~lib/rt/tcms/__visit_externals
      i32.const 2
      global.set $~lib/rt/tcms/state
     end
     global.get $~lib/rt/tcms/white
     i32.eqz
     local.set $0
     global.get $~lib/rt/tcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.tee $1
     global.get $~lib/rt/tcms/toSpace
     i32.ne
     if
      local.get $1
      global.set $~lib/rt/tcms/iter
      local.get $1
      local.get $0
      call $~lib/rt/tcms/Object#set:color
      block $__inlined_func$~lib/rt/__visit_members
       block $invalid
        block $~lib/arraybuffer/ArrayBufferView
         local.get $1
         i32.const 12
         i32.add
         i32.load
         br_table $__inlined_func$~lib/rt/__visit_members $__inlined_func$~lib/rt/__visit_members $~lib/arraybuffer/ArrayBufferView $invalid
        end
        local.get $1
        i32.load offset=20
        local.tee $1
        if
         local.get $1
         if
          global.get $~lib/rt/tcms/white
          local.get $1
          i32.const 20
          i32.sub
          local.tee $0
          i32.load offset=4
          i32.const 3
          i32.and
          i32.eq
          if
           local.get $0
           global.get $~lib/rt/tcms/iter
           i32.eq
           if
            local.get $0
            i32.load offset=8
            local.tee $1
            i32.eqz
            if
             i32.const 0
             i32.const 1360
             i32.const 130
             i32.const 30
             call $~lib/builtins/abort
             unreachable
            end
            local.get $1
            global.set $~lib/rt/tcms/iter
           end
           local.get $0
           i32.load offset=8
           local.set $1
           block $__inlined_func$~lib/rt/tcms/Object#unlink
            local.get $0
            i32.load offset=4
            i32.const -4
            i32.and
            local.tee $2
            i32.eqz
            if
             local.get $1
             if
              i32.const 0
              i32.const 1360
              i32.const 120
              i32.const 7
              call $~lib/builtins/abort
              unreachable
             end
             br $__inlined_func$~lib/rt/tcms/Object#unlink
            end
            local.get $1
            i32.eqz
            if
             i32.const 0
             i32.const 1360
             i32.const 123
             i32.const 17
             call $~lib/builtins/abort
             unreachable
            end
            local.get $2
            local.get $1
            i32.store offset=8
            local.get $1
            local.get $2
            call $~lib/rt/tcms/Object#set:next
           end
           global.get $~lib/rt/tcms/toSpace
           local.set $2
           local.get $0
           local.tee $1
           global.get $~lib/rt/tcms/fromSpace
           i32.ne
           i32.const 0
           local.get $1
           global.get $~lib/rt/tcms/toSpace
           i32.ne
           select
           i32.eqz
           if
            i32.const 0
            i32.const 1360
            i32.const 142
            i32.const 5
            call $~lib/builtins/abort
            unreachable
           end
           local.get $2
           i32.load offset=8
           local.set $0
           local.get $2
           i32.eqz
           if
            i32.const 0
            i32.const 1360
            i32.const 144
            i32.const 16
            call $~lib/builtins/abort
            unreachable
           end
           local.get $1
           local.get $2
           call $~lib/rt/tcms/Object#set:next
           local.get $0
           i32.eqz
           if
            i32.const 0
            i32.const 1360
            i32.const 145
            i32.const 16
            call $~lib/builtins/abort
            unreachable
           end
           local.get $1
           local.get $0
           i32.store offset=8
           local.get $1
           i32.eqz
           if
            i32.const 0
            i32.const 1360
            i32.const 146
            i32.const 17
            call $~lib/builtins/abort
            unreachable
           end
           local.get $0
           local.get $1
           call $~lib/rt/tcms/Object#set:next
           local.get $1
           i32.eqz
           if
            i32.const 0
            i32.const 1360
            i32.const 147
            i32.const 17
            call $~lib/builtins/abort
            unreachable
           end
           local.get $2
           local.get $1
           i32.store offset=8
           local.get $1
           i32.const 2
           call $~lib/rt/tcms/Object#set:color
          end
         end
        end
        br $__inlined_func$~lib/rt/__visit_members
       end
       unreachable
      end
     else
      i32.const 0
      call $~lib/rt/tcms/__visit_externals
      global.get $~lib/rt/tcms/toSpace
      global.get $~lib/rt/tcms/iter
      i32.load offset=4
      i32.const -4
      i32.and
      i32.eq
      if
       global.get $~lib/rt/tcms/fromSpace
       local.set $1
       global.get $~lib/rt/tcms/toSpace
       global.set $~lib/rt/tcms/fromSpace
       local.get $1
       global.set $~lib/rt/tcms/toSpace
       local.get $0
       global.set $~lib/rt/tcms/white
       local.get $1
       i32.load offset=4
       i32.const -4
       i32.and
       global.set $~lib/rt/tcms/iter
       i32.const 3
       global.set $~lib/rt/tcms/state
      end
     end
     br $break|0
    end
    global.get $~lib/rt/tcms/iter
    local.tee $0
    global.get $~lib/rt/tcms/toSpace
    i32.ne
    if
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/tcms/iter
     global.get $~lib/rt/tcms/white
     i32.eqz
     local.get $0
     i32.load offset=4
     i32.const 3
     i32.and
     i32.ne
     if
      global.get $~lib/rt/tcms/fromSpace
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $1
      loop $while-continue|1
       local.get $1
       global.get $~lib/rt/tcms/fromSpace
       i32.ne
       if
        local.get $1
        i32.eqz
        if
         i32.const 0
         i32.const 1360
         i32.const 206
         i32.const 13
         call $~lib/builtins/abort
         unreachable
        end
        local.get $0
        local.get $1
        i32.eq
        if
         i32.const 1472
         i32.const 0
         f64.const 0
         f64.const 0
         f64.const 0
         f64.const 0
         f64.const 0
         call $~lib/builtins/trace
        end
        local.get $1
        i32.load offset=4
        i32.const -4
        i32.and
        local.set $1
        br $while-continue|1
       end
      end
      global.get $~lib/rt/tcms/toSpace
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $1
      loop $while-continue|2
       local.get $1
       global.get $~lib/rt/tcms/toSpace
       i32.ne
       if
        local.get $1
        i32.eqz
        if
         i32.const 0
         i32.const 1360
         i32.const 212
         i32.const 13
         call $~lib/builtins/abort
         unreachable
        end
        local.get $0
        local.get $1
        i32.eq
        if
         i32.const 1520
         i32.const 0
         f64.const 0
         f64.const 0
         f64.const 0
         f64.const 0
         f64.const 0
         call $~lib/builtins/trace
        end
        local.get $1
        i32.load offset=4
        i32.const -4
        i32.and
        local.set $1
        br $while-continue|2
       end
      end
      i32.const 0
      i32.const 1360
      i32.const 216
      i32.const 11
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     i32.const 1648
     i32.ge_u
     if
      global.get $~lib/rt/tcms/total
      i32.const 1
      i32.sub
      global.set $~lib/rt/tcms/total
      global.get $~lib/rt/tcms/totalMem
      local.get $0
      i32.load
      i32.const -4
      i32.and
      i32.const 4
      i32.add
      i32.sub
      global.set $~lib/rt/tcms/totalMem
      local.get $0
      i32.const 4
      i32.add
      call $~lib/rt/tlsf/__free
     end
     i32.const 1
     return
    end
    global.get $~lib/rt/tcms/toSpace
    local.tee $1
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    br_if $folding-inner1
    local.get $1
    local.get $1
    i32.store offset=8
    i32.const 1
    global.set $~lib/rt/tcms/state
    i32.const 0
    global.set $~lib/rt/tcms/debt
   end
   i32.const 0
   return
  end
  i32.const 0
  i32.const 1360
  i32.const 153
  i32.const 17
  call $~lib/builtins/abort
  unreachable
 )
 (func $throw/doThrow
  i32.const 1632
  i32.const 1168
  i32.const 3
  i32.const 3
  call $~lib/builtins/abort
  unreachable
 )
 (func $~start
  (local $0 i32)
  loop $while-continue|0
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   i32.const 10
   i32.lt_s
   if
    local.get $0
    i32.const 10
    i32.gt_s
    if
     i32.const 1248
     i32.const 1168
     i32.const 23
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    br $while-continue|0
   end
  end
  global.get $~lib/rt/tcms/state
  i32.const 1
  i32.gt_s
  if
   loop $while-continue|00
    global.get $~lib/rt/tcms/state
    i32.const 1
    i32.ne
    if
     call $~lib/rt/tcms/step
     drop
     br $while-continue|00
    end
   end
  end
  call $~lib/rt/tcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/tcms/state
   i32.const 1
   i32.ne
   if
    call $~lib/rt/tcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/tcms/total
  i32.const 1
  i32.shl
  global.set $~lib/rt/tcms/threshold
 )
 (func $~lib/rt/tcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
 )
)
