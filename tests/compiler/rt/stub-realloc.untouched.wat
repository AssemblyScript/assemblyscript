(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s\00")
 (data (i32.const 64) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00r\00t\00/\00s\00t\00u\00b\00-\00r\00e\00a\00l\00l\00o\00c\00.\00t\00s\00")
 (data (i32.const 128) "\03\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00")
 (table $0 1 funcref)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $rt/stub-realloc/ptr (mut i32) (i32.const 0))
 (global $rt/stub-realloc/originalPtr (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $rt/stub-realloc/newLastPtr (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 128))
 (global $~lib/heap/__heap_base i32 (i32.const 156))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/stub/__alloc))
 (export "__retain" (func $~lib/rt/stub/__retain))
 (export "__release" (func $~lib/rt/stub/__release))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__reset" (func $~lib/rt/stub/__reset))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
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
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $~lib/rt/stub/__collect
  nop
 )
 (func $~lib/rt/stub/__reset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
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
 (func $~lib/rt/stub/__realloc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 43
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $2
  local.get $2
  i32.load
  local.set $3
  i32.const 1
  drop
  local.get $2
  i32.load offset=4
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 46
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  i32.add
  global.get $~lib/rt/stub/offset
  i32.eq
  local.set $4
  local.get $1
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $5
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $4
   if
    local.get $1
    i32.const 1073741808
    i32.gt_u
    if
     unreachable
    end
    local.get $0
    local.get $5
    i32.add
    call $~lib/rt/stub/maybeGrowMemory
    local.get $2
    local.get $5
    i32.store
   else
    local.get $5
    local.tee $6
    local.get $3
    i32.const 1
    i32.shl
    local.tee $7
    local.get $6
    local.get $7
    i32.gt_u
    select
    local.get $2
    i32.load offset=8
    call $~lib/rt/stub/__alloc
    local.set $8
    local.get $8
    local.get $0
    local.get $2
    i32.load offset=12
    call $~lib/memory/memory.copy
    local.get $8
    local.tee $0
    i32.const 16
    i32.sub
    local.set $2
   end
  else
   local.get $4
   if
    local.get $0
    local.get $5
    i32.add
    global.set $~lib/rt/stub/offset
    local.get $2
    local.get $5
    i32.store
   end
  end
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/rt/stub/__free (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 70
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $1
  i32.const 1
  drop
  local.get $1
  i32.load offset=4
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 72
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.load
  i32.add
  global.get $~lib/rt/stub/offset
  i32.eq
  if
   local.get $1
   global.set $~lib/rt/stub/offset
  end
 )
 (func $start:rt/stub-realloc
  i32.const 10
  i32.const 0
  call $~lib/rt/stub/__alloc
  global.set $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/ptr
  global.set $rt/stub-realloc/originalPtr
  global.get $rt/stub-realloc/ptr
  i32.const 12
  call $~lib/rt/stub/__realloc
  global.set $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/originalPtr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 7
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/stub-realloc/ptr
  i32.const 16
  call $~lib/rt/stub/__realloc
  global.set $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/originalPtr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 10
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/stub-realloc/ptr
  i32.const 33
  call $~lib/rt/stub/__realloc
  global.set $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/originalPtr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 13
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/stub-realloc/ptr
  i32.const 20
  call $~lib/rt/stub/__realloc
  global.set $rt/stub-realloc/ptr
  i32.const 1
  i32.const 0
  call $~lib/rt/stub/__alloc
  global.set $rt/stub-realloc/newLastPtr
  global.get $rt/stub-realloc/newLastPtr
  global.get $rt/stub-realloc/originalPtr
  i32.const 32
  i32.add
  i32.const 16
  i32.add
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 18
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/stub-realloc/ptr
  i32.const 24
  call $~lib/rt/stub/__realloc
  global.set $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/originalPtr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/stub-realloc/ptr
  i32.const 32
  call $~lib/rt/stub/__realloc
  global.set $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/originalPtr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 24
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/stub-realloc/ptr
  i32.const 33
  call $~lib/rt/stub/__realloc
  global.set $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/ptr
  global.get $rt/stub-realloc/originalPtr
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 27
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/stub-realloc/ptr
  call $~lib/rt/stub/__free
  i32.const 1
  i32.const 0
  call $~lib/rt/stub/__alloc
  global.get $rt/stub-realloc/ptr
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 30
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
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
  call $start:rt/stub-realloc
 )
)
