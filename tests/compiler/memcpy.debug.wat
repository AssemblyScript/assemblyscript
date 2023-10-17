(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $memcpy/base i32 (i32.const 8))
 (global $memcpy/dest (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32828))
 (global $~lib/memory/__heap_base i32 (i32.const 32828))
 (memory $0 1)
 (data $0 (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\12\00\00\00m\00e\00m\00c\00p\00y\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memcpy" (func $memcpy/memcpy))
 (export "memory" (memory $0))
 (start $~start)
 (func $memcpy/memcpy (param $dest i32) (param $src i32) (param $n i32) (result i32)
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
  (local $85 i32)
  (local $86 i32)
  (local $87 i32)
  (local $88 i32)
  (local $89 i32)
  (local $90 i32)
  (local $91 i32)
  (local $92 i32)
  (local $93 i32)
  (local $94 i32)
  (local $95 i32)
  (local $96 i32)
  (local $97 i32)
  (local $98 i32)
  (local $99 i32)
  (local $100 i32)
  (local $101 i32)
  (local $102 i32)
  (local $103 i32)
  (local $104 i32)
  (local $105 i32)
  (local $106 i32)
  (local $107 i32)
  (local $108 i32)
  (local $109 i32)
  (local $110 i32)
  (local $111 i32)
  (local $112 i32)
  (local $113 i32)
  (local $114 i32)
  (local $115 i32)
  (local $116 i32)
  (local $117 i32)
  (local $118 i32)
  (local $119 i32)
  (local $120 i32)
  (local $121 i32)
  (local $122 i32)
  (local $123 i32)
  (local $124 i32)
  (local $125 i32)
  (local $126 i32)
  (local $127 i32)
  (local $128 i32)
  (local $129 i32)
  (local $130 i32)
  (local $131 i32)
  (local $132 i32)
  (local $133 i32)
  (local $134 i32)
  (local $135 i32)
  (local $136 i32)
  (local $137 i32)
  (local $138 i32)
  (local $139 i32)
  (local $140 i32)
  (local $141 i32)
  (local $142 i32)
  (local $143 i32)
  (local $144 i32)
  (local $145 i32)
  (local $146 i32)
  (local $147 i32)
  (local $148 i32)
  (local $149 i32)
  (local $150 i32)
  (local $151 i32)
  (local $152 i32)
  (local $153 i32)
  (local $154 i32)
  (local $155 i32)
  (local $156 i32)
  (local $157 i32)
  (local $158 i32)
  (local $159 i32)
  (local $160 i32)
  (local $161 i32)
  (local $162 i32)
  (local $163 i32)
  (local $164 i32)
  (local $165 i32)
  (local $166 i32)
  (local $167 i32)
  (local $168 i32)
  (local $169 i32)
  (local $170 i32)
  (local $171 i32)
  (local $172 i32)
  (local $173 i32)
  (local $174 i32)
  (local $175 i32)
  (local $176 i32)
  (local $177 i32)
  (local $178 i32)
  (local $179 i32)
  (local $180 i32)
  (local $181 i32)
  (local $182 i32)
  (local $183 i32)
  (local $184 i32)
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
    local.set $7
    local.get $7
    local.set $dest
    local.get $6
    local.get $src
    local.tee $8
    i32.const 1
    i32.add
    local.set $9
    local.get $9
    local.set $src
    local.get $8
    i32.load8_u $0
    i32.store8 $0
    local.get $n
    i32.const 1
    i32.sub
    local.set $10
    local.get $10
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
     local.set $11
     local.get $11
     local.set $src
     local.get $dest
     i32.const 16
     i32.add
     local.set $12
     local.get $12
     local.set $dest
     local.get $n
     i32.const 16
     i32.sub
     local.set $13
     local.get $13
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
    local.set $14
    local.get $14
    local.set $dest
    local.get $src
    i32.const 8
    i32.add
    local.set $15
    local.get $15
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
    local.set $16
    local.get $16
    local.set $dest
    local.get $src
    i32.const 4
    i32.add
    local.set $17
    local.get $17
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
    local.set $18
    local.get $18
    local.set $dest
    local.get $src
    i32.const 2
    i32.add
    local.set $19
    local.get $19
    local.set $src
   end
   local.get $n
   i32.const 1
   i32.and
   if
    local.get $dest
    local.tee $20
    i32.const 1
    i32.add
    local.set $21
    local.get $21
    local.set $dest
    local.get $20
    local.get $src
    local.tee $22
    i32.const 1
    i32.add
    local.set $23
    local.get $23
    local.set $src
    local.get $22
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
       local.set $24
       local.get $24
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $24
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $24
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $src
      i32.load $0
      local.set $w
      local.get $dest
      local.tee $25
      i32.const 1
      i32.add
      local.set $26
      local.get $26
      local.set $dest
      local.get $25
      local.get $src
      local.tee $27
      i32.const 1
      i32.add
      local.set $28
      local.get $28
      local.set $src
      local.get $27
      i32.load8_u $0
      i32.store8 $0
      local.get $dest
      local.tee $29
      i32.const 1
      i32.add
      local.set $30
      local.get $30
      local.set $dest
      local.get $29
      local.get $src
      local.tee $31
      i32.const 1
      i32.add
      local.set $32
      local.get $32
      local.set $src
      local.get $31
      i32.load8_u $0
      i32.store8 $0
      local.get $dest
      local.tee $33
      i32.const 1
      i32.add
      local.set $34
      local.get $34
      local.set $dest
      local.get $33
      local.get $src
      local.tee $35
      i32.const 1
      i32.add
      local.set $36
      local.get $36
      local.set $src
      local.get $35
      i32.load8_u $0
      i32.store8 $0
      local.get $n
      i32.const 3
      i32.sub
      local.set $37
      local.get $37
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
        local.set $38
        local.get $38
        local.set $src
        local.get $dest
        i32.const 16
        i32.add
        local.set $39
        local.get $39
        local.set $dest
        local.get $n
        i32.const 16
        i32.sub
        local.set $40
        local.get $40
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
     local.tee $41
     i32.const 1
     i32.add
     local.set $42
     local.get $42
     local.set $dest
     local.get $41
     local.get $src
     local.tee $43
     i32.const 1
     i32.add
     local.set $44
     local.get $44
     local.set $src
     local.get $43
     i32.load8_u $0
     i32.store8 $0
     local.get $dest
     local.tee $45
     i32.const 1
     i32.add
     local.set $46
     local.get $46
     local.set $dest
     local.get $45
     local.get $src
     local.tee $47
     i32.const 1
     i32.add
     local.set $48
     local.get $48
     local.set $src
     local.get $47
     i32.load8_u $0
     i32.store8 $0
     local.get $n
     i32.const 2
     i32.sub
     local.set $49
     local.get $49
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
       local.set $50
       local.get $50
       local.set $src
       local.get $dest
       i32.const 16
       i32.add
       local.set $51
       local.get $51
       local.set $dest
       local.get $n
       i32.const 16
       i32.sub
       local.set $52
       local.get $52
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
    local.tee $53
    i32.const 1
    i32.add
    local.set $54
    local.get $54
    local.set $dest
    local.get $53
    local.get $src
    local.tee $55
    i32.const 1
    i32.add
    local.set $56
    local.get $56
    local.set $src
    local.get $55
    i32.load8_u $0
    i32.store8 $0
    local.get $n
    i32.const 1
    i32.sub
    local.set $57
    local.get $57
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
      local.set $58
      local.get $58
      local.set $src
      local.get $dest
      i32.const 16
      i32.add
      local.set $59
      local.get $59
      local.set $dest
      local.get $n
      i32.const 16
      i32.sub
      local.set $60
      local.get $60
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
   local.tee $61
   i32.const 1
   i32.add
   local.set $62
   local.get $62
   local.set $dest
   local.get $61
   local.get $src
   local.tee $63
   i32.const 1
   i32.add
   local.set $64
   local.get $64
   local.set $src
   local.get $63
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $65
   i32.const 1
   i32.add
   local.set $66
   local.get $66
   local.set $dest
   local.get $65
   local.get $src
   local.tee $67
   i32.const 1
   i32.add
   local.set $68
   local.get $68
   local.set $src
   local.get $67
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $69
   i32.const 1
   i32.add
   local.set $70
   local.get $70
   local.set $dest
   local.get $69
   local.get $src
   local.tee $71
   i32.const 1
   i32.add
   local.set $72
   local.get $72
   local.set $src
   local.get $71
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $73
   i32.const 1
   i32.add
   local.set $74
   local.get $74
   local.set $dest
   local.get $73
   local.get $src
   local.tee $75
   i32.const 1
   i32.add
   local.set $76
   local.get $76
   local.set $src
   local.get $75
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $77
   i32.const 1
   i32.add
   local.set $78
   local.get $78
   local.set $dest
   local.get $77
   local.get $src
   local.tee $79
   i32.const 1
   i32.add
   local.set $80
   local.get $80
   local.set $src
   local.get $79
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $81
   i32.const 1
   i32.add
   local.set $82
   local.get $82
   local.set $dest
   local.get $81
   local.get $src
   local.tee $83
   i32.const 1
   i32.add
   local.set $84
   local.get $84
   local.set $src
   local.get $83
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $85
   i32.const 1
   i32.add
   local.set $86
   local.get $86
   local.set $dest
   local.get $85
   local.get $src
   local.tee $87
   i32.const 1
   i32.add
   local.set $88
   local.get $88
   local.set $src
   local.get $87
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $89
   i32.const 1
   i32.add
   local.set $90
   local.get $90
   local.set $dest
   local.get $89
   local.get $src
   local.tee $91
   i32.const 1
   i32.add
   local.set $92
   local.get $92
   local.set $src
   local.get $91
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $93
   i32.const 1
   i32.add
   local.set $94
   local.get $94
   local.set $dest
   local.get $93
   local.get $src
   local.tee $95
   i32.const 1
   i32.add
   local.set $96
   local.get $96
   local.set $src
   local.get $95
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $97
   i32.const 1
   i32.add
   local.set $98
   local.get $98
   local.set $dest
   local.get $97
   local.get $src
   local.tee $99
   i32.const 1
   i32.add
   local.set $100
   local.get $100
   local.set $src
   local.get $99
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $101
   i32.const 1
   i32.add
   local.set $102
   local.get $102
   local.set $dest
   local.get $101
   local.get $src
   local.tee $103
   i32.const 1
   i32.add
   local.set $104
   local.get $104
   local.set $src
   local.get $103
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $105
   i32.const 1
   i32.add
   local.set $106
   local.get $106
   local.set $dest
   local.get $105
   local.get $src
   local.tee $107
   i32.const 1
   i32.add
   local.set $108
   local.get $108
   local.set $src
   local.get $107
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $109
   i32.const 1
   i32.add
   local.set $110
   local.get $110
   local.set $dest
   local.get $109
   local.get $src
   local.tee $111
   i32.const 1
   i32.add
   local.set $112
   local.get $112
   local.set $src
   local.get $111
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $113
   i32.const 1
   i32.add
   local.set $114
   local.get $114
   local.set $dest
   local.get $113
   local.get $src
   local.tee $115
   i32.const 1
   i32.add
   local.set $116
   local.get $116
   local.set $src
   local.get $115
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $117
   i32.const 1
   i32.add
   local.set $118
   local.get $118
   local.set $dest
   local.get $117
   local.get $src
   local.tee $119
   i32.const 1
   i32.add
   local.set $120
   local.get $120
   local.set $src
   local.get $119
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $121
   i32.const 1
   i32.add
   local.set $122
   local.get $122
   local.set $dest
   local.get $121
   local.get $src
   local.tee $123
   i32.const 1
   i32.add
   local.set $124
   local.get $124
   local.set $src
   local.get $123
   i32.load8_u $0
   i32.store8 $0
  end
  local.get $n
  i32.const 8
  i32.and
  if
   local.get $dest
   local.tee $125
   i32.const 1
   i32.add
   local.set $126
   local.get $126
   local.set $dest
   local.get $125
   local.get $src
   local.tee $127
   i32.const 1
   i32.add
   local.set $128
   local.get $128
   local.set $src
   local.get $127
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $129
   i32.const 1
   i32.add
   local.set $130
   local.get $130
   local.set $dest
   local.get $129
   local.get $src
   local.tee $131
   i32.const 1
   i32.add
   local.set $132
   local.get $132
   local.set $src
   local.get $131
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $133
   i32.const 1
   i32.add
   local.set $134
   local.get $134
   local.set $dest
   local.get $133
   local.get $src
   local.tee $135
   i32.const 1
   i32.add
   local.set $136
   local.get $136
   local.set $src
   local.get $135
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $137
   i32.const 1
   i32.add
   local.set $138
   local.get $138
   local.set $dest
   local.get $137
   local.get $src
   local.tee $139
   i32.const 1
   i32.add
   local.set $140
   local.get $140
   local.set $src
   local.get $139
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $141
   i32.const 1
   i32.add
   local.set $142
   local.get $142
   local.set $dest
   local.get $141
   local.get $src
   local.tee $143
   i32.const 1
   i32.add
   local.set $144
   local.get $144
   local.set $src
   local.get $143
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $145
   i32.const 1
   i32.add
   local.set $146
   local.get $146
   local.set $dest
   local.get $145
   local.get $src
   local.tee $147
   i32.const 1
   i32.add
   local.set $148
   local.get $148
   local.set $src
   local.get $147
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $149
   i32.const 1
   i32.add
   local.set $150
   local.get $150
   local.set $dest
   local.get $149
   local.get $src
   local.tee $151
   i32.const 1
   i32.add
   local.set $152
   local.get $152
   local.set $src
   local.get $151
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $153
   i32.const 1
   i32.add
   local.set $154
   local.get $154
   local.set $dest
   local.get $153
   local.get $src
   local.tee $155
   i32.const 1
   i32.add
   local.set $156
   local.get $156
   local.set $src
   local.get $155
   i32.load8_u $0
   i32.store8 $0
  end
  local.get $n
  i32.const 4
  i32.and
  if
   local.get $dest
   local.tee $157
   i32.const 1
   i32.add
   local.set $158
   local.get $158
   local.set $dest
   local.get $157
   local.get $src
   local.tee $159
   i32.const 1
   i32.add
   local.set $160
   local.get $160
   local.set $src
   local.get $159
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $161
   i32.const 1
   i32.add
   local.set $162
   local.get $162
   local.set $dest
   local.get $161
   local.get $src
   local.tee $163
   i32.const 1
   i32.add
   local.set $164
   local.get $164
   local.set $src
   local.get $163
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $165
   i32.const 1
   i32.add
   local.set $166
   local.get $166
   local.set $dest
   local.get $165
   local.get $src
   local.tee $167
   i32.const 1
   i32.add
   local.set $168
   local.get $168
   local.set $src
   local.get $167
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $169
   i32.const 1
   i32.add
   local.set $170
   local.get $170
   local.set $dest
   local.get $169
   local.get $src
   local.tee $171
   i32.const 1
   i32.add
   local.set $172
   local.get $172
   local.set $src
   local.get $171
   i32.load8_u $0
   i32.store8 $0
  end
  local.get $n
  i32.const 2
  i32.and
  if
   local.get $dest
   local.tee $173
   i32.const 1
   i32.add
   local.set $174
   local.get $174
   local.set $dest
   local.get $173
   local.get $src
   local.tee $175
   i32.const 1
   i32.add
   local.set $176
   local.get $176
   local.set $src
   local.get $175
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $177
   i32.const 1
   i32.add
   local.set $178
   local.get $178
   local.set $dest
   local.get $177
   local.get $src
   local.tee $179
   i32.const 1
   i32.add
   local.set $180
   local.get $180
   local.set $src
   local.get $179
   i32.load8_u $0
   i32.store8 $0
  end
  local.get $n
  i32.const 1
  i32.and
  if
   local.get $dest
   local.tee $181
   i32.const 1
   i32.add
   local.set $182
   local.get $182
   local.set $dest
   local.get $181
   local.get $src
   local.tee $183
   i32.const 1
   i32.add
   local.set $184
   local.get $184
   local.set $src
   local.get $183
   i32.load8_u $0
   i32.store8 $0
  end
  local.get $ret
  return
 )
 (func $start:memcpy
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
 (func $~start
  call $start:memcpy
 )
)
