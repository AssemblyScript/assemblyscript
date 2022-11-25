(module
 (type $none_=>_none (func_subtype func))
 (type $i32_i32_i32_=>_i32 (func_subtype (param i32 i32 i32) (result i32) func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $memcpy/base i32 (i32.const 8))
 (global $memcpy/dest (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32828))
 (global $~lib/memory/__heap_base i32 (i32.const 32828))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\12\00\00\00m\00e\00m\00c\00p\00y\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memcpy" (func $memcpy/memcpy))
 (export "memory" (memory $0))
 (start $~start)
 (func $memcpy/memcpy (type $i32_i32_i32_=>_i32) (param $dest i32) (param $src i32) (param $n i32) (result i32)
  (local $ret i32)
  (local $w i32)
  (local $x i32)
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
  local.get $dest
  local.set $ret
  loop $while-continue|0
   local.get $n
   if (result i32)
    local.get $src
    i32.const 4
    i32.rem_u
   else
    i32.const 0
   end
   if
    local.get $dest
    local.tee $6
    i32.const 1
    i32.add
    local.set $dest
    local.get $6
    local.get $src
    local.tee $7
    i32.const 1
    i32.add
    local.set $src
    local.get $7
    i32.load8_u $0
    i32.store8 $0
    local.get $n
    i32.const 1
    i32.sub
    local.set $n
    br $while-continue|0
   end
  end
  local.get $dest
  i32.const 4
  i32.rem_u
  i32.const 0
  i32.eq
  if
   loop $while-continue|1
    local.get $n
    i32.const 16
    i32.ge_u
    if
     local.get $dest
     local.get $src
     i32.load $0
     i32.store $0
     local.get $dest
     i32.const 4
     i32.add
     local.get $src
     i32.const 4
     i32.add
     i32.load $0
     i32.store $0
     local.get $dest
     i32.const 8
     i32.add
     local.get $src
     i32.const 8
     i32.add
     i32.load $0
     i32.store $0
     local.get $dest
     i32.const 12
     i32.add
     local.get $src
     i32.const 12
     i32.add
     i32.load $0
     i32.store $0
     local.get $src
     i32.const 16
     i32.add
     local.set $src
     local.get $dest
     i32.const 16
     i32.add
     local.set $dest
     local.get $n
     i32.const 16
     i32.sub
     local.set $n
     br $while-continue|1
    end
   end
   local.get $n
   i32.const 8
   i32.and
   if
    local.get $dest
    local.get $src
    i32.load $0
    i32.store $0
    local.get $dest
    i32.const 4
    i32.add
    local.get $src
    i32.const 4
    i32.add
    i32.load $0
    i32.store $0
    local.get $dest
    i32.const 8
    i32.add
    local.set $dest
    local.get $src
    i32.const 8
    i32.add
    local.set $src
   end
   local.get $n
   i32.const 4
   i32.and
   if
    local.get $dest
    local.get $src
    i32.load $0
    i32.store $0
    local.get $dest
    i32.const 4
    i32.add
    local.set $dest
    local.get $src
    i32.const 4
    i32.add
    local.set $src
   end
   local.get $n
   i32.const 2
   i32.and
   if
    local.get $dest
    local.get $src
    i32.load16_u $0
    i32.store16 $0
    local.get $dest
    i32.const 2
    i32.add
    local.set $dest
    local.get $src
    i32.const 2
    i32.add
    local.set $src
   end
   local.get $n
   i32.const 1
   i32.and
   if
    local.get $dest
    local.tee $8
    i32.const 1
    i32.add
    local.set $dest
    local.get $8
    local.get $src
    local.tee $9
    i32.const 1
    i32.add
    local.set $src
    local.get $9
    i32.load8_u $0
    i32.store8 $0
   end
   local.get $ret
   return
  end
  local.get $n
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $dest
       i32.const 4
       i32.rem_u
       local.set $10
       local.get $10
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $10
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $10
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $src
      i32.load $0
      local.set $w
      local.get $dest
      local.tee $11
      i32.const 1
      i32.add
      local.set $dest
      local.get $11
      local.get $src
      local.tee $12
      i32.const 1
      i32.add
      local.set $src
      local.get $12
      i32.load8_u $0
      i32.store8 $0
      local.get $dest
      local.tee $13
      i32.const 1
      i32.add
      local.set $dest
      local.get $13
      local.get $src
      local.tee $14
      i32.const 1
      i32.add
      local.set $src
      local.get $14
      i32.load8_u $0
      i32.store8 $0
      local.get $dest
      local.tee $15
      i32.const 1
      i32.add
      local.set $dest
      local.get $15
      local.get $src
      local.tee $16
      i32.const 1
      i32.add
      local.set $src
      local.get $16
      i32.load8_u $0
      i32.store8 $0
      local.get $n
      i32.const 3
      i32.sub
      local.set $n
      loop $while-continue|3
       local.get $n
       i32.const 17
       i32.ge_u
       if
        local.get $src
        i32.const 1
        i32.add
        i32.load $0
        local.set $x
        local.get $dest
        local.get $w
        i32.const 24
        i32.shr_u
        local.get $x
        i32.const 8
        i32.shl
        i32.or
        i32.store $0
        local.get $src
        i32.const 5
        i32.add
        i32.load $0
        local.set $w
        local.get $dest
        i32.const 4
        i32.add
        local.get $x
        i32.const 24
        i32.shr_u
        local.get $w
        i32.const 8
        i32.shl
        i32.or
        i32.store $0
        local.get $src
        i32.const 9
        i32.add
        i32.load $0
        local.set $x
        local.get $dest
        i32.const 8
        i32.add
        local.get $w
        i32.const 24
        i32.shr_u
        local.get $x
        i32.const 8
        i32.shl
        i32.or
        i32.store $0
        local.get $src
        i32.const 13
        i32.add
        i32.load $0
        local.set $w
        local.get $dest
        i32.const 12
        i32.add
        local.get $x
        i32.const 24
        i32.shr_u
        local.get $w
        i32.const 8
        i32.shl
        i32.or
        i32.store $0
        local.get $src
        i32.const 16
        i32.add
        local.set $src
        local.get $dest
        i32.const 16
        i32.add
        local.set $dest
        local.get $n
        i32.const 16
        i32.sub
        local.set $n
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $src
     i32.load $0
     local.set $w
     local.get $dest
     local.tee $17
     i32.const 1
     i32.add
     local.set $dest
     local.get $17
     local.get $src
     local.tee $18
     i32.const 1
     i32.add
     local.set $src
     local.get $18
     i32.load8_u $0
     i32.store8 $0
     local.get $dest
     local.tee $19
     i32.const 1
     i32.add
     local.set $dest
     local.get $19
     local.get $src
     local.tee $20
     i32.const 1
     i32.add
     local.set $src
     local.get $20
     i32.load8_u $0
     i32.store8 $0
     local.get $n
     i32.const 2
     i32.sub
     local.set $n
     loop $while-continue|4
      local.get $n
      i32.const 18
      i32.ge_u
      if
       local.get $src
       i32.const 2
       i32.add
       i32.load $0
       local.set $x
       local.get $dest
       local.get $w
       i32.const 16
       i32.shr_u
       local.get $x
       i32.const 16
       i32.shl
       i32.or
       i32.store $0
       local.get $src
       i32.const 6
       i32.add
       i32.load $0
       local.set $w
       local.get $dest
       i32.const 4
       i32.add
       local.get $x
       i32.const 16
       i32.shr_u
       local.get $w
       i32.const 16
       i32.shl
       i32.or
       i32.store $0
       local.get $src
       i32.const 10
       i32.add
       i32.load $0
       local.set $x
       local.get $dest
       i32.const 8
       i32.add
       local.get $w
       i32.const 16
       i32.shr_u
       local.get $x
       i32.const 16
       i32.shl
       i32.or
       i32.store $0
       local.get $src
       i32.const 14
       i32.add
       i32.load $0
       local.set $w
       local.get $dest
       i32.const 12
       i32.add
       local.get $x
       i32.const 16
       i32.shr_u
       local.get $w
       i32.const 16
       i32.shl
       i32.or
       i32.store $0
       local.get $src
       i32.const 16
       i32.add
       local.set $src
       local.get $dest
       i32.const 16
       i32.add
       local.set $dest
       local.get $n
       i32.const 16
       i32.sub
       local.set $n
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $src
    i32.load $0
    local.set $w
    local.get $dest
    local.tee $21
    i32.const 1
    i32.add
    local.set $dest
    local.get $21
    local.get $src
    local.tee $22
    i32.const 1
    i32.add
    local.set $src
    local.get $22
    i32.load8_u $0
    i32.store8 $0
    local.get $n
    i32.const 1
    i32.sub
    local.set $n
    loop $while-continue|5
     local.get $n
     i32.const 19
     i32.ge_u
     if
      local.get $src
      i32.const 3
      i32.add
      i32.load $0
      local.set $x
      local.get $dest
      local.get $w
      i32.const 8
      i32.shr_u
      local.get $x
      i32.const 24
      i32.shl
      i32.or
      i32.store $0
      local.get $src
      i32.const 7
      i32.add
      i32.load $0
      local.set $w
      local.get $dest
      i32.const 4
      i32.add
      local.get $x
      i32.const 8
      i32.shr_u
      local.get $w
      i32.const 24
      i32.shl
      i32.or
      i32.store $0
      local.get $src
      i32.const 11
      i32.add
      i32.load $0
      local.set $x
      local.get $dest
      i32.const 8
      i32.add
      local.get $w
      i32.const 8
      i32.shr_u
      local.get $x
      i32.const 24
      i32.shl
      i32.or
      i32.store $0
      local.get $src
      i32.const 15
      i32.add
      i32.load $0
      local.set $w
      local.get $dest
      i32.const 12
      i32.add
      local.get $x
      i32.const 8
      i32.shr_u
      local.get $w
      i32.const 24
      i32.shl
      i32.or
      i32.store $0
      local.get $src
      i32.const 16
      i32.add
      local.set $src
      local.get $dest
      i32.const 16
      i32.add
      local.set $dest
      local.get $n
      i32.const 16
      i32.sub
      local.set $n
      br $while-continue|5
     end
    end
    br $break|2
   end
  end
  local.get $n
  i32.const 16
  i32.and
  if
   local.get $dest
   local.tee $23
   i32.const 1
   i32.add
   local.set $dest
   local.get $23
   local.get $src
   local.tee $24
   i32.const 1
   i32.add
   local.set $src
   local.get $24
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $25
   i32.const 1
   i32.add
   local.set $dest
   local.get $25
   local.get $src
   local.tee $26
   i32.const 1
   i32.add
   local.set $src
   local.get $26
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $27
   i32.const 1
   i32.add
   local.set $dest
   local.get $27
   local.get $src
   local.tee $28
   i32.const 1
   i32.add
   local.set $src
   local.get $28
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $29
   i32.const 1
   i32.add
   local.set $dest
   local.get $29
   local.get $src
   local.tee $30
   i32.const 1
   i32.add
   local.set $src
   local.get $30
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $31
   i32.const 1
   i32.add
   local.set $dest
   local.get $31
   local.get $src
   local.tee $32
   i32.const 1
   i32.add
   local.set $src
   local.get $32
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $33
   i32.const 1
   i32.add
   local.set $dest
   local.get $33
   local.get $src
   local.tee $34
   i32.const 1
   i32.add
   local.set $src
   local.get $34
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $35
   i32.const 1
   i32.add
   local.set $dest
   local.get $35
   local.get $src
   local.tee $36
   i32.const 1
   i32.add
   local.set $src
   local.get $36
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $37
   i32.const 1
   i32.add
   local.set $dest
   local.get $37
   local.get $src
   local.tee $38
   i32.const 1
   i32.add
   local.set $src
   local.get $38
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $39
   i32.const 1
   i32.add
   local.set $dest
   local.get $39
   local.get $src
   local.tee $40
   i32.const 1
   i32.add
   local.set $src
   local.get $40
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $41
   i32.const 1
   i32.add
   local.set $dest
   local.get $41
   local.get $src
   local.tee $42
   i32.const 1
   i32.add
   local.set $src
   local.get $42
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $43
   i32.const 1
   i32.add
   local.set $dest
   local.get $43
   local.get $src
   local.tee $44
   i32.const 1
   i32.add
   local.set $src
   local.get $44
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $45
   i32.const 1
   i32.add
   local.set $dest
   local.get $45
   local.get $src
   local.tee $46
   i32.const 1
   i32.add
   local.set $src
   local.get $46
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $47
   i32.const 1
   i32.add
   local.set $dest
   local.get $47
   local.get $src
   local.tee $48
   i32.const 1
   i32.add
   local.set $src
   local.get $48
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $49
   i32.const 1
   i32.add
   local.set $dest
   local.get $49
   local.get $src
   local.tee $50
   i32.const 1
   i32.add
   local.set $src
   local.get $50
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $51
   i32.const 1
   i32.add
   local.set $dest
   local.get $51
   local.get $src
   local.tee $52
   i32.const 1
   i32.add
   local.set $src
   local.get $52
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $53
   i32.const 1
   i32.add
   local.set $dest
   local.get $53
   local.get $src
   local.tee $54
   i32.const 1
   i32.add
   local.set $src
   local.get $54
   i32.load8_u $0
   i32.store8 $0
  end
  local.get $n
  i32.const 8
  i32.and
  if
   local.get $dest
   local.tee $55
   i32.const 1
   i32.add
   local.set $dest
   local.get $55
   local.get $src
   local.tee $56
   i32.const 1
   i32.add
   local.set $src
   local.get $56
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $57
   i32.const 1
   i32.add
   local.set $dest
   local.get $57
   local.get $src
   local.tee $58
   i32.const 1
   i32.add
   local.set $src
   local.get $58
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $59
   i32.const 1
   i32.add
   local.set $dest
   local.get $59
   local.get $src
   local.tee $60
   i32.const 1
   i32.add
   local.set $src
   local.get $60
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $61
   i32.const 1
   i32.add
   local.set $dest
   local.get $61
   local.get $src
   local.tee $62
   i32.const 1
   i32.add
   local.set $src
   local.get $62
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $63
   i32.const 1
   i32.add
   local.set $dest
   local.get $63
   local.get $src
   local.tee $64
   i32.const 1
   i32.add
   local.set $src
   local.get $64
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $65
   i32.const 1
   i32.add
   local.set $dest
   local.get $65
   local.get $src
   local.tee $66
   i32.const 1
   i32.add
   local.set $src
   local.get $66
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $67
   i32.const 1
   i32.add
   local.set $dest
   local.get $67
   local.get $src
   local.tee $68
   i32.const 1
   i32.add
   local.set $src
   local.get $68
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $69
   i32.const 1
   i32.add
   local.set $dest
   local.get $69
   local.get $src
   local.tee $70
   i32.const 1
   i32.add
   local.set $src
   local.get $70
   i32.load8_u $0
   i32.store8 $0
  end
  local.get $n
  i32.const 4
  i32.and
  if
   local.get $dest
   local.tee $71
   i32.const 1
   i32.add
   local.set $dest
   local.get $71
   local.get $src
   local.tee $72
   i32.const 1
   i32.add
   local.set $src
   local.get $72
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $73
   i32.const 1
   i32.add
   local.set $dest
   local.get $73
   local.get $src
   local.tee $74
   i32.const 1
   i32.add
   local.set $src
   local.get $74
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $75
   i32.const 1
   i32.add
   local.set $dest
   local.get $75
   local.get $src
   local.tee $76
   i32.const 1
   i32.add
   local.set $src
   local.get $76
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $77
   i32.const 1
   i32.add
   local.set $dest
   local.get $77
   local.get $src
   local.tee $78
   i32.const 1
   i32.add
   local.set $src
   local.get $78
   i32.load8_u $0
   i32.store8 $0
  end
  local.get $n
  i32.const 2
  i32.and
  if
   local.get $dest
   local.tee $79
   i32.const 1
   i32.add
   local.set $dest
   local.get $79
   local.get $src
   local.tee $80
   i32.const 1
   i32.add
   local.set $src
   local.get $80
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $81
   i32.const 1
   i32.add
   local.set $dest
   local.get $81
   local.get $src
   local.tee $82
   i32.const 1
   i32.add
   local.set $src
   local.get $82
   i32.load8_u $0
   i32.store8 $0
  end
  local.get $n
  i32.const 1
  i32.and
  if
   local.get $dest
   local.tee $83
   i32.const 1
   i32.add
   local.set $dest
   local.get $83
   local.get $src
   local.tee $84
   i32.const 1
   i32.add
   local.set $src
   local.get $84
   i32.load8_u $0
   i32.store8 $0
  end
  local.get $ret
 )
 (func $start:memcpy (type $none_=>_none)
  global.get $memcpy/base
  i64.const 1229782938247303441
  i64.store $0
  global.get $memcpy/base
  i32.const 8
  i32.add
  i64.const 2459565876494606882
  i64.store $0
  global.get $memcpy/base
  i32.const 16
  i32.add
  i64.const 3689348814741910323
  i64.store $0
  global.get $memcpy/base
  i32.const 24
  i32.add
  i64.const 4919131752989213764
  i64.store $0
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
  i64.load $0
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
  i64.load $0
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
  i64.load $0
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
  i64.load $0
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
  i64.load $0
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
  i64.load $0
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
  i64.load $0
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
  i64.load $0
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
  i64.load $0
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
  i64.load $0
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
 (func $~start (type $none_=>_none)
  call $start:memcpy
 )
)
