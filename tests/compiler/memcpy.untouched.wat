(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00m\00e\00m\00c\00p\00y\00.\00t\00s\00")
 (table $0 1 funcref)
 (global $memcpy/base i32 (i32.const 8))
 (global $memcpy/dest (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "memcpy" (func $memcpy/memcpy))
 (start $~start)
 (func $memcpy/memcpy (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  (local $89 i32)
  local.get $0
  local.set $3
  loop $while-continue|0
   local.get $2
   if (result i32)
    local.get $1
    i32.const 4
    i32.rem_u
   else
    i32.const 0
   end
   local.set $6
   local.get $6
   if
    local.get $0
    local.tee $7
    i32.const 1
    i32.add
    local.set $0
    local.get $7
    local.get $1
    local.tee $8
    i32.const 1
    i32.add
    local.set $1
    local.get $8
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
  i32.const 4
  i32.rem_u
  i32.const 0
  i32.eq
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    local.set $9
    local.get $9
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
    local.tee $10
    i32.const 1
    i32.add
    local.set $0
    local.get $10
    local.get $1
    local.tee $11
    i32.const 1
    i32.add
    local.set $1
    local.get $11
    i32.load8_u
    i32.store8
   end
   local.get $3
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
       i32.const 4
       i32.rem_u
       local.set $12
       local.get $12
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $12
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $12
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $4
      local.get $0
      local.tee $13
      i32.const 1
      i32.add
      local.set $0
      local.get $13
      local.get $1
      local.tee $14
      i32.const 1
      i32.add
      local.set $1
      local.get $14
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $15
      i32.const 1
      i32.add
      local.set $0
      local.get $15
      local.get $1
      local.tee $16
      i32.const 1
      i32.add
      local.set $1
      local.get $16
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $17
      i32.const 1
      i32.add
      local.set $0
      local.get $17
      local.get $1
      local.tee $18
      i32.const 1
      i32.add
      local.set $1
      local.get $18
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
       local.set $19
       local.get $19
       if
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.set $5
        local.get $0
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $5
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 4
        i32.add
        local.get $5
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.set $5
        local.get $0
        i32.const 8
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $5
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 12
        i32.add
        local.get $5
        i32.const 24
        i32.shr_u
        local.get $4
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
     local.set $4
     local.get $0
     local.tee $20
     i32.const 1
     i32.add
     local.set $0
     local.get $20
     local.get $1
     local.tee $21
     i32.const 1
     i32.add
     local.set $1
     local.get $21
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $22
     i32.const 1
     i32.add
     local.set $0
     local.get $22
     local.get $1
     local.tee $23
     i32.const 1
     i32.add
     local.set $1
     local.get $23
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
      local.set $24
      local.get $24
      if
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.set $5
       local.get $0
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $5
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 4
       i32.add
       local.get $5
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.set $5
       local.get $0
       i32.const 8
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $5
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 12
       i32.add
       local.get $5
       i32.const 16
       i32.shr_u
       local.get $4
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
    local.set $4
    local.get $0
    local.tee $25
    i32.const 1
    i32.add
    local.set $0
    local.get $25
    local.get $1
    local.tee $26
    i32.const 1
    i32.add
    local.set $1
    local.get $26
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
     local.set $27
     local.get $27
     if
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.set $5
      local.get $0
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $5
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 4
      i32.add
      local.get $5
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.set $5
      local.get $0
      i32.const 8
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $5
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 12
      i32.add
      local.get $5
      i32.const 8
      i32.shr_u
      local.get $4
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
   local.tee $28
   i32.const 1
   i32.add
   local.set $0
   local.get $28
   local.get $1
   local.tee $29
   i32.const 1
   i32.add
   local.set $1
   local.get $29
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $30
   i32.const 1
   i32.add
   local.set $0
   local.get $30
   local.get $1
   local.tee $31
   i32.const 1
   i32.add
   local.set $1
   local.get $31
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $32
   i32.const 1
   i32.add
   local.set $0
   local.get $32
   local.get $1
   local.tee $33
   i32.const 1
   i32.add
   local.set $1
   local.get $33
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $34
   i32.const 1
   i32.add
   local.set $0
   local.get $34
   local.get $1
   local.tee $35
   i32.const 1
   i32.add
   local.set $1
   local.get $35
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $36
   i32.const 1
   i32.add
   local.set $0
   local.get $36
   local.get $1
   local.tee $37
   i32.const 1
   i32.add
   local.set $1
   local.get $37
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $38
   i32.const 1
   i32.add
   local.set $0
   local.get $38
   local.get $1
   local.tee $39
   i32.const 1
   i32.add
   local.set $1
   local.get $39
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $40
   i32.const 1
   i32.add
   local.set $0
   local.get $40
   local.get $1
   local.tee $41
   i32.const 1
   i32.add
   local.set $1
   local.get $41
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $42
   i32.const 1
   i32.add
   local.set $0
   local.get $42
   local.get $1
   local.tee $43
   i32.const 1
   i32.add
   local.set $1
   local.get $43
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $44
   i32.const 1
   i32.add
   local.set $0
   local.get $44
   local.get $1
   local.tee $45
   i32.const 1
   i32.add
   local.set $1
   local.get $45
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $46
   i32.const 1
   i32.add
   local.set $0
   local.get $46
   local.get $1
   local.tee $47
   i32.const 1
   i32.add
   local.set $1
   local.get $47
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $48
   i32.const 1
   i32.add
   local.set $0
   local.get $48
   local.get $1
   local.tee $49
   i32.const 1
   i32.add
   local.set $1
   local.get $49
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $50
   i32.const 1
   i32.add
   local.set $0
   local.get $50
   local.get $1
   local.tee $51
   i32.const 1
   i32.add
   local.set $1
   local.get $51
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $52
   i32.const 1
   i32.add
   local.set $0
   local.get $52
   local.get $1
   local.tee $53
   i32.const 1
   i32.add
   local.set $1
   local.get $53
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $54
   i32.const 1
   i32.add
   local.set $0
   local.get $54
   local.get $1
   local.tee $55
   i32.const 1
   i32.add
   local.set $1
   local.get $55
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $56
   i32.const 1
   i32.add
   local.set $0
   local.get $56
   local.get $1
   local.tee $57
   i32.const 1
   i32.add
   local.set $1
   local.get $57
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $58
   i32.const 1
   i32.add
   local.set $0
   local.get $58
   local.get $1
   local.tee $59
   i32.const 1
   i32.add
   local.set $1
   local.get $59
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $60
   i32.const 1
   i32.add
   local.set $0
   local.get $60
   local.get $1
   local.tee $61
   i32.const 1
   i32.add
   local.set $1
   local.get $61
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $62
   i32.const 1
   i32.add
   local.set $0
   local.get $62
   local.get $1
   local.tee $63
   i32.const 1
   i32.add
   local.set $1
   local.get $63
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $64
   i32.const 1
   i32.add
   local.set $0
   local.get $64
   local.get $1
   local.tee $65
   i32.const 1
   i32.add
   local.set $1
   local.get $65
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $66
   i32.const 1
   i32.add
   local.set $0
   local.get $66
   local.get $1
   local.tee $67
   i32.const 1
   i32.add
   local.set $1
   local.get $67
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $68
   i32.const 1
   i32.add
   local.set $0
   local.get $68
   local.get $1
   local.tee $69
   i32.const 1
   i32.add
   local.set $1
   local.get $69
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $70
   i32.const 1
   i32.add
   local.set $0
   local.get $70
   local.get $1
   local.tee $71
   i32.const 1
   i32.add
   local.set $1
   local.get $71
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $72
   i32.const 1
   i32.add
   local.set $0
   local.get $72
   local.get $1
   local.tee $73
   i32.const 1
   i32.add
   local.set $1
   local.get $73
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $74
   i32.const 1
   i32.add
   local.set $0
   local.get $74
   local.get $1
   local.tee $75
   i32.const 1
   i32.add
   local.set $1
   local.get $75
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $76
   i32.const 1
   i32.add
   local.set $0
   local.get $76
   local.get $1
   local.tee $77
   i32.const 1
   i32.add
   local.set $1
   local.get $77
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $78
   i32.const 1
   i32.add
   local.set $0
   local.get $78
   local.get $1
   local.tee $79
   i32.const 1
   i32.add
   local.set $1
   local.get $79
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $80
   i32.const 1
   i32.add
   local.set $0
   local.get $80
   local.get $1
   local.tee $81
   i32.const 1
   i32.add
   local.set $1
   local.get $81
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $82
   i32.const 1
   i32.add
   local.set $0
   local.get $82
   local.get $1
   local.tee $83
   i32.const 1
   i32.add
   local.set $1
   local.get $83
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $84
   i32.const 1
   i32.add
   local.set $0
   local.get $84
   local.get $1
   local.tee $85
   i32.const 1
   i32.add
   local.set $1
   local.get $85
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $86
   i32.const 1
   i32.add
   local.set $0
   local.get $86
   local.get $1
   local.tee $87
   i32.const 1
   i32.add
   local.set $1
   local.get $87
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $88
   i32.const 1
   i32.add
   local.set $0
   local.get $88
   local.get $1
   local.tee $89
   i32.const 1
   i32.add
   local.set $1
   local.get $89
   i32.load8_u
   i32.store8
  end
  local.get $3
 )
 (func $start:memcpy
  global.get $memcpy/base
  i64.const 1229782938247303441
  i64.store
  global.get $memcpy/base
  i32.const 8
  i32.add
  i64.const 2459565876494606882
  i64.store
  global.get $memcpy/base
  i32.const 16
  i32.add
  i64.const 3689348814741910323
  i64.store
  global.get $memcpy/base
  i32.const 24
  i32.add
  i64.const 4919131752989213764
  i64.store
  global.get $memcpy/base
  i32.const 1
  i32.add
  global.get $memcpy/base
  i32.const 16
  i32.add
  i32.const 4
  call $memcpy/memcpy
  global.set $memcpy/dest
  global.get $memcpy/dest
  global.get $memcpy/base
  i32.const 1
  i32.add
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 151
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i64.load
  i64.const 1229783084848853777
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 152
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  global.get $memcpy/base
  i32.const 32
  call $memcpy/memcpy
  global.set $memcpy/dest
  global.get $memcpy/dest
  global.get $memcpy/base
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 155
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i64.load
  i64.const 1229783084848853777
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 156
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 8
  i32.add
  i64.load
  i64.const 2459565876494606882
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 157
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 16
  i32.add
  i64.load
  i64.const 3689348814741910323
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 158
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 24
  i32.add
  i64.load
  i64.const 4919131752989213764
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 159
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 5
  i32.add
  global.get $memcpy/base
  i32.const 28
  i32.add
  i32.const 3
  call $memcpy/memcpy
  global.set $memcpy/dest
  global.get $memcpy/base
  i64.load
  i64.const 4919131679688438545
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 162
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 8
  i32.add
  global.get $memcpy/base
  i32.const 16
  i32.add
  i32.const 15
  call $memcpy/memcpy
  global.set $memcpy/dest
  global.get $memcpy/base
  i64.load
  i64.const 4919131679688438545
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 165
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 8
  i32.add
  i64.load
  i64.const 3689348814741910323
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 166
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 16
  i32.add
  i64.load
  i64.const 3694152654344438852
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 167
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 24
  i32.add
  i64.load
  i64.const 4919131752989213764
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 168
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:memcpy
 )
)
