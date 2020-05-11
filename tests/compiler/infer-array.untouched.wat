(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 48) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 112) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 160) "\18\00\00\00\01\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\08@")
 (data (i32.const 208) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\ff\ff\ff\ff")
 (data (i32.const 240) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00i\00n\00f\00e\00r\00-\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 288) "\18\00\00\00\01\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\08@")
 (data (i32.const 336) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\00\00\80?\00\00\00@\00\00@@")
 (data (i32.const 368) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a\00")
 (data (i32.const 400) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\80\01\00\00")
 (data (i32.const 432) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00")
 (data (i32.const 464) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 496) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 528) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\01\00\00\00")
 (data (i32.const 560) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 592) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\02\00\00\00")
 (data (i32.const 624) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (table $0 1 funcref)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 736))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  memory.size
  local.set $1
  local.get $1
  i32.const 16
  i32.shl
  local.set $2
  local.get $0
  local.get $2
  i32.gt_u
  if
   local.get $0
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $6
   local.get $6
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.set $2
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $3
  i32.const 16
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  local.set $5
  local.get $2
  local.get $5
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $2
  i32.const 16
  i32.sub
  local.set $6
  local.get $6
  local.get $5
  i32.store
  i32.const 1
  drop
  local.get $6
  i32.const 1
  i32.store offset=4
  local.get $6
  local.get $1
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  (local $58 i32)
  (local $59 i32)
  (local $60 i32)
  (local $61 i32)
  (local $62 i32)
  (local $63 i32)
  (local $64 i32)
  (local $65 i32)
  (local $66 i32)
  (local $67 i32)
  (local $68 i32)
  (local $69 i32)
  (local $70 i32)
  (local $71 i32)
  (local $72 i32)
  (local $73 i32)
  (local $74 i32)
  (local $75 i32)
  (local $76 i32)
  (local $77 i32)
  (local $78 i32)
  (local $79 i32)
  (local $80 i32)
  (local $81 i32)
  (local $82 i32)
  (local $83 i32)
  (local $84 i32)
  (local $85 i32)
  (local $86 i32)
  (local $87 i32)
  (local $88 i32)
  loop $while-continue|0
   local.get $2
   if (result i32)
    local.get $1
    i32.const 3
    i32.and
   else
    i32.const 0
   end
   local.set $5
   local.get $5
   if
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
    local.get $1
    local.tee $7
    i32.const 1
    i32.add
    local.set $1
    local.get $7
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    local.set $8
    local.get $8
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
     br $while-continue|1
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
    local.get $0
    local.tee $9
    i32.const 1
    i32.add
    local.set $0
    local.get $9
    local.get $1
    local.tee $10
    i32.const 1
    i32.add
    local.set $1
    local.get $10
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
       local.set $11
       local.get $11
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $11
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $11
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $12
      i32.const 1
      i32.add
      local.set $0
      local.get $12
      local.get $1
      local.tee $13
      i32.const 1
      i32.add
      local.set $1
      local.get $13
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $14
      i32.const 1
      i32.add
      local.set $0
      local.get $14
      local.get $1
      local.tee $15
      i32.const 1
      i32.add
      local.set $1
      local.get $15
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $16
      i32.const 1
      i32.add
      local.set $0
      local.get $16
      local.get $1
      local.tee $17
      i32.const 1
      i32.add
      local.set $1
      local.get $17
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       local.set $18
       local.get $18
       if
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
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $3
     local.get $0
     local.tee $19
     i32.const 1
     i32.add
     local.set $0
     local.get $19
     local.get $1
     local.tee $20
     i32.const 1
     i32.add
     local.set $1
     local.get $20
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $21
     i32.const 1
     i32.add
     local.set $0
     local.get $21
     local.get $1
     local.tee $22
     i32.const 1
     i32.add
     local.set $1
     local.get $22
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      local.set $23
      local.get $23
      if
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
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $3
    local.get $0
    local.tee $24
    i32.const 1
    i32.add
    local.set $0
    local.get $24
    local.get $1
    local.tee $25
    i32.const 1
    i32.add
    local.set $1
    local.get $25
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     local.set $26
     local.get $26
     if
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
      br $while-continue|5
     end
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $27
   i32.const 1
   i32.add
   local.set $0
   local.get $27
   local.get $1
   local.tee $28
   i32.const 1
   i32.add
   local.set $1
   local.get $28
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $29
   i32.const 1
   i32.add
   local.set $0
   local.get $29
   local.get $1
   local.tee $30
   i32.const 1
   i32.add
   local.set $1
   local.get $30
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $31
   i32.const 1
   i32.add
   local.set $0
   local.get $31
   local.get $1
   local.tee $32
   i32.const 1
   i32.add
   local.set $1
   local.get $32
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $33
   i32.const 1
   i32.add
   local.set $0
   local.get $33
   local.get $1
   local.tee $34
   i32.const 1
   i32.add
   local.set $1
   local.get $34
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $35
   i32.const 1
   i32.add
   local.set $0
   local.get $35
   local.get $1
   local.tee $36
   i32.const 1
   i32.add
   local.set $1
   local.get $36
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $37
   i32.const 1
   i32.add
   local.set $0
   local.get $37
   local.get $1
   local.tee $38
   i32.const 1
   i32.add
   local.set $1
   local.get $38
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $39
   i32.const 1
   i32.add
   local.set $0
   local.get $39
   local.get $1
   local.tee $40
   i32.const 1
   i32.add
   local.set $1
   local.get $40
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $41
   i32.const 1
   i32.add
   local.set $0
   local.get $41
   local.get $1
   local.tee $42
   i32.const 1
   i32.add
   local.set $1
   local.get $42
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $43
   i32.const 1
   i32.add
   local.set $0
   local.get $43
   local.get $1
   local.tee $44
   i32.const 1
   i32.add
   local.set $1
   local.get $44
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $45
   i32.const 1
   i32.add
   local.set $0
   local.get $45
   local.get $1
   local.tee $46
   i32.const 1
   i32.add
   local.set $1
   local.get $46
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $47
   i32.const 1
   i32.add
   local.set $0
   local.get $47
   local.get $1
   local.tee $48
   i32.const 1
   i32.add
   local.set $1
   local.get $48
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $49
   i32.const 1
   i32.add
   local.set $0
   local.get $49
   local.get $1
   local.tee $50
   i32.const 1
   i32.add
   local.set $1
   local.get $50
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $51
   i32.const 1
   i32.add
   local.set $0
   local.get $51
   local.get $1
   local.tee $52
   i32.const 1
   i32.add
   local.set $1
   local.get $52
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $53
   i32.const 1
   i32.add
   local.set $0
   local.get $53
   local.get $1
   local.tee $54
   i32.const 1
   i32.add
   local.set $1
   local.get $54
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $55
   i32.const 1
   i32.add
   local.set $0
   local.get $55
   local.get $1
   local.tee $56
   i32.const 1
   i32.add
   local.set $1
   local.get $56
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $57
   i32.const 1
   i32.add
   local.set $0
   local.get $57
   local.get $1
   local.tee $58
   i32.const 1
   i32.add
   local.set $1
   local.get $58
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $59
   i32.const 1
   i32.add
   local.set $0
   local.get $59
   local.get $1
   local.tee $60
   i32.const 1
   i32.add
   local.set $1
   local.get $60
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $61
   i32.const 1
   i32.add
   local.set $0
   local.get $61
   local.get $1
   local.tee $62
   i32.const 1
   i32.add
   local.set $1
   local.get $62
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $63
   i32.const 1
   i32.add
   local.set $0
   local.get $63
   local.get $1
   local.tee $64
   i32.const 1
   i32.add
   local.set $1
   local.get $64
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $65
   i32.const 1
   i32.add
   local.set $0
   local.get $65
   local.get $1
   local.tee $66
   i32.const 1
   i32.add
   local.set $1
   local.get $66
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $67
   i32.const 1
   i32.add
   local.set $0
   local.get $67
   local.get $1
   local.tee $68
   i32.const 1
   i32.add
   local.set $1
   local.get $68
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $69
   i32.const 1
   i32.add
   local.set $0
   local.get $69
   local.get $1
   local.tee $70
   i32.const 1
   i32.add
   local.set $1
   local.get $70
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $71
   i32.const 1
   i32.add
   local.set $0
   local.get $71
   local.get $1
   local.tee $72
   i32.const 1
   i32.add
   local.set $1
   local.get $72
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $73
   i32.const 1
   i32.add
   local.set $0
   local.get $73
   local.get $1
   local.tee $74
   i32.const 1
   i32.add
   local.set $1
   local.get $74
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $75
   i32.const 1
   i32.add
   local.set $0
   local.get $75
   local.get $1
   local.tee $76
   i32.const 1
   i32.add
   local.set $1
   local.get $76
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $77
   i32.const 1
   i32.add
   local.set $0
   local.get $77
   local.get $1
   local.tee $78
   i32.const 1
   i32.add
   local.set $1
   local.get $78
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $79
   i32.const 1
   i32.add
   local.set $0
   local.get $79
   local.get $1
   local.tee $80
   i32.const 1
   i32.add
   local.set $1
   local.get $80
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $81
   i32.const 1
   i32.add
   local.set $0
   local.get $81
   local.get $1
   local.tee $82
   i32.const 1
   i32.add
   local.set $1
   local.get $82
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $83
   i32.const 1
   i32.add
   local.set $0
   local.get $83
   local.get $1
   local.tee $84
   i32.const 1
   i32.add
   local.set $1
   local.get $84
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $85
   i32.const 1
   i32.add
   local.set $0
   local.get $85
   local.get $1
   local.tee $86
   i32.const 1
   i32.add
   local.set $1
   local.get $86
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $87
   i32.const 1
   i32.add
   local.set $0
   local.get $87
   local.get $1
   local.tee $88
   i32.const 1
   i32.add
   local.set $1
   local.get $88
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   i32.const 0
   i32.const 1
   i32.lt_s
   drop
   local.get $4
   local.get $3
   i32.add
   local.get $5
   i32.le_u
   if (result i32)
    i32.const 1
   else
    local.get $5
    local.get $3
    i32.add
    local.get $4
    i32.le_u
   end
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $5
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $7
       i32.const 1
       i32.add
       local.set $5
       local.get $7
       local.get $4
       local.tee $8
       i32.const 1
       i32.add
       local.set $4
       local.get $8
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $9
      local.get $9
      if
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $3
     local.set $10
     local.get $10
     if
      local.get $5
      local.tee $11
      i32.const 1
      i32.add
      local.set $5
      local.get $11
      local.get $4
      local.tee $12
      i32.const 1
      i32.add
      local.set $4
      local.get $12
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $while-continue|2
     end
    end
   else
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $5
      local.get $3
      i32.add
      i32.const 7
      i32.and
      local.set $13
      local.get $13
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $14
      local.get $14
      if
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $3
     local.set $15
     local.get $15
     if
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/__allocBuffer (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  local.get $1
  call $~lib/rt/stub/__alloc
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $0
   call $~lib/memory/memory.copy
  end
  local.get $3
 )
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/__allocArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/stub/__alloc
  local.set $4
  local.get $0
  local.get $1
  i32.shl
  local.set $5
  local.get $5
  i32.const 0
  local.get $3
  call $~lib/rt/__allocBuffer
  local.set $6
  local.get $4
  local.get $6
  call $~lib/rt/stub/__retain
  i32.store
  local.get $4
  local.get $6
  i32.store offset=4
  local.get $4
  local.get $5
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store offset=12
  local.get $4
 )
 (func $~lib/array/Array<i32>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 64
   i32.const 128
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__uget
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $~lib/array/Array<f64>#__uget (param $0 i32) (param $1 i32) (result f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $~lib/array/Array<f64>#__get (param $0 i32) (param $1 i32) (result f64)
  (local $2 f64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 64
   i32.const 128
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#__uget
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $~lib/array/Array<u32>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<u32>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 64
   i32.const 128
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#__uget
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $~lib/array/Array<f32>#__uget (param $0 i32) (param $1 i32) (result f32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $~lib/array/Array<f32>#__get (param $0 i32) (param $1 i32) (result f32)
  (local $2 f32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 64
   i32.const 128
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#__uget
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $infer-array/Ref#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 7
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $~lib/array/Array<infer-array/Ref | null>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<infer-array/Ref | null>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 64
   i32.const 128
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<infer-array/Ref | null>#__uget
  local.set $2
  i32.const 1
  drop
  i32.const 1
  i32.eqz
  drop
  local.get $2
 )
 (func $~lib/array/Array<~lib/string/String | null>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/string/String | null>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 64
   i32.const 128
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String | null>#__uget
  local.set $2
  i32.const 1
  drop
  i32.const 1
  i32.eqz
  drop
  local.get $2
 )
 (func $~lib/array/Array<usize>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<usize>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 64
   i32.const 128
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<usize>#__uget
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/stub/__retain
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 64
   i32.const 128
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#__uget
  local.set $2
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   local.get $2
   call $~lib/rt/stub/__release
   i32.const 640
   i32.const 128
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $start:infer-array
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 f32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 i32)
  (local $55 i32)
  (local $56 i32)
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 3
  i32.const 2
  i32.const 3
  i32.const 32
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.set $2
  i32.const 1
  drop
  i32.const 1
  drop
  local.get $2
  call $~lib/rt/stub/__release
  i32.const 3
  i32.const 3
  i32.const 4
  i32.const 176
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.set $5
  i32.const 1
  drop
  local.get $5
  call $~lib/rt/stub/__release
  i32.const 2
  i32.const 2
  i32.const 5
  i32.const 224
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.set $8
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $8
  i32.const 1
  call $~lib/array/Array<u32>#__get
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 256
   i32.const 14
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/rt/stub/__release
  i32.const 3
  i32.const 3
  i32.const 4
  i32.const 304
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.set $11
  i32.const 1
  drop
  local.get $11
  call $~lib/rt/stub/__release
  i32.const 3
  i32.const 2
  i32.const 6
  i32.const 352
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.set $14
  i32.const 1
  drop
  local.get $14
  i32.const 1
  call $~lib/array/Array<f32>#__get
  local.set $15
  local.get $14
  call $~lib/rt/stub/__release
  i32.const 0
  call $infer-array/Ref#constructor
  local.set $16
  i32.const 0
  call $infer-array/Ref#constructor
  local.set $17
  i32.const 2
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.set $18
  local.get $18
  i32.load offset=4
  local.set $19
  local.get $19
  local.get $16
  call $~lib/rt/stub/__retain
  i32.store
  local.get $19
  local.get $17
  call $~lib/rt/stub/__retain
  i32.store offset=4
  local.get $18
  local.set $20
  i32.const 1
  drop
  local.get $16
  call $~lib/rt/stub/__release
  local.get $17
  call $~lib/rt/stub/__release
  local.get $20
  call $~lib/rt/stub/__release
  local.get $21
  call $~lib/rt/stub/__release
  i32.const 0
  call $infer-array/Ref#constructor
  local.set $22
  i32.const 0
  call $infer-array/Ref#constructor
  local.set $23
  i32.const 2
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.set $24
  local.get $24
  i32.load offset=4
  local.set $25
  local.get $25
  local.get $22
  call $~lib/rt/stub/__retain
  i32.store
  local.get $25
  local.get $23
  call $~lib/rt/stub/__retain
  i32.store offset=4
  local.get $24
  local.set $26
  i32.const 1
  drop
  local.get $22
  call $~lib/rt/stub/__release
  local.get $23
  call $~lib/rt/stub/__release
  local.get $26
  call $~lib/rt/stub/__release
  local.get $27
  call $~lib/rt/stub/__release
  i32.const 0
  call $infer-array/Ref#constructor
  local.set $28
  i32.const 2
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.set $29
  local.get $29
  i32.load offset=4
  local.set $30
  local.get $30
  local.get $28
  call $~lib/rt/stub/__retain
  i32.store
  local.get $30
  i32.const 0
  call $~lib/rt/stub/__retain
  i32.store offset=4
  local.get $29
  local.set $31
  i32.const 1
  drop
  local.get $28
  call $~lib/rt/stub/__release
  local.get $31
  call $~lib/rt/stub/__release
  local.get $32
  call $~lib/rt/stub/__release
  i32.const 2
  i32.const 2
  i32.const 9
  i32.const 416
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.set $35
  i32.const 1
  drop
  local.get $35
  call $~lib/rt/stub/__release
  local.get $36
  call $~lib/rt/stub/__release
  i32.const 1
  i32.const 2
  i32.const 10
  i32.const 448
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.set $39
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 2
  i32.const 2
  i32.const 10
  i32.const 480
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.set $42
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $39
  call $~lib/rt/stub/__release
  local.get $42
  call $~lib/rt/stub/__release
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 512
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.set $45
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 2
  i32.const 2
  i32.const 3
  i32.const 544
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.set $48
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $45
  call $~lib/rt/stub/__release
  local.get $48
  call $~lib/rt/stub/__release
  i32.const 2
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  local.set $49
  local.get $49
  i32.load offset=4
  local.set $50
  local.get $50
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 576
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  i32.store
  local.get $50
  i32.const 1
  i32.const 2
  i32.const 3
  i32.const 608
  call $~lib/rt/__allocArray
  call $~lib/rt/stub/__retain
  i32.store offset=4
  local.get $49
  local.set $55
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $55
  call $~lib/rt/stub/__release
  local.get $56
  call $~lib/rt/stub/__release
 )
 (func $~start
  call $start:infer-array
 )
)
