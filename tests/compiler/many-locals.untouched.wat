(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $HEAP_BASE i32 (i32.const 40))
 (memory $0 1)
 (data (i32.const 8) "\0e\00\00\00m\00a\00n\00y\00-\00l\00o\00c\00a\00l\00s\00.\00t\00s\00")
 (export "memory" (memory $0))
 (export "testI32" (func $many-locals/testI32))
 (export "testI8" (func $many-locals/testI8))
 (start $start)
 (func $many-locals/testI32 (; 1 ;) (type $ii) (param $0 i32) (result i32)
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
  (set_local $1
   (get_local $0)
  )
  (set_local $2
   (get_local $1)
  )
  (set_local $3
   (get_local $2)
  )
  (set_local $4
   (get_local $3)
  )
  (set_local $5
   (get_local $4)
  )
  (set_local $6
   (get_local $5)
  )
  (set_local $7
   (get_local $6)
  )
  (set_local $8
   (get_local $7)
  )
  (set_local $9
   (get_local $8)
  )
  (set_local $10
   (get_local $9)
  )
  (set_local $11
   (get_local $10)
  )
  (set_local $12
   (get_local $11)
  )
  (set_local $13
   (get_local $12)
  )
  (set_local $14
   (get_local $13)
  )
  (set_local $15
   (get_local $14)
  )
  (set_local $16
   (get_local $15)
  )
  (set_local $17
   (get_local $16)
  )
  (set_local $18
   (get_local $17)
  )
  (set_local $19
   (get_local $18)
  )
  (set_local $20
   (get_local $19)
  )
  (set_local $21
   (get_local $20)
  )
  (set_local $22
   (get_local $21)
  )
  (set_local $23
   (get_local $22)
  )
  (set_local $24
   (get_local $23)
  )
  (set_local $25
   (get_local $24)
  )
  (set_local $26
   (get_local $25)
  )
  (set_local $27
   (get_local $26)
  )
  (set_local $28
   (get_local $27)
  )
  (set_local $29
   (get_local $28)
  )
  (set_local $30
   (get_local $29)
  )
  (set_local $31
   (get_local $30)
  )
  (set_local $32
   (get_local $31)
  )
  (set_local $33
   (get_local $32)
  )
  (set_local $34
   (get_local $33)
  )
  (set_local $35
   (get_local $34)
  )
  (set_local $36
   (get_local $35)
  )
  (set_local $37
   (get_local $36)
  )
  (set_local $38
   (get_local $37)
  )
  (set_local $39
   (get_local $38)
  )
  (set_local $40
   (get_local $39)
  )
  (set_local $41
   (get_local $40)
  )
  (set_local $42
   (get_local $41)
  )
  (set_local $43
   (get_local $42)
  )
  (set_local $44
   (get_local $43)
  )
  (set_local $45
   (get_local $44)
  )
  (set_local $46
   (get_local $45)
  )
  (set_local $47
   (get_local $46)
  )
  (set_local $48
   (get_local $47)
  )
  (set_local $49
   (get_local $48)
  )
  (set_local $50
   (get_local $49)
  )
  (set_local $51
   (get_local $50)
  )
  (set_local $52
   (get_local $51)
  )
  (set_local $53
   (get_local $52)
  )
  (set_local $54
   (get_local $53)
  )
  (set_local $55
   (get_local $54)
  )
  (set_local $56
   (get_local $55)
  )
  (set_local $57
   (get_local $56)
  )
  (set_local $58
   (get_local $57)
  )
  (set_local $59
   (get_local $58)
  )
  (set_local $60
   (get_local $59)
  )
  (set_local $61
   (get_local $60)
  )
  (set_local $62
   (get_local $61)
  )
  (set_local $63
   (get_local $62)
  )
  (set_local $64
   (get_local $63)
  )
  (set_local $65
   (get_local $64)
  )
  (set_local $66
   (get_local $65)
  )
  (set_local $67
   (get_local $66)
  )
  (set_local $68
   (get_local $67)
  )
  (set_local $69
   (get_local $68)
  )
  (set_local $70
   (get_local $69)
  )
  (set_local $71
   (get_local $70)
  )
  (set_local $72
   (get_local $71)
  )
  (set_local $73
   (get_local $72)
  )
  (set_local $74
   (get_local $73)
  )
  (set_local $75
   (get_local $74)
  )
  (set_local $76
   (get_local $75)
  )
  (set_local $77
   (get_local $76)
  )
  (set_local $78
   (get_local $77)
  )
  (set_local $79
   (get_local $78)
  )
  (set_local $80
   (get_local $79)
  )
  (set_local $81
   (get_local $80)
  )
  (set_local $82
   (get_local $81)
  )
  (set_local $83
   (get_local $82)
  )
  (set_local $84
   (get_local $83)
  )
  (set_local $85
   (get_local $84)
  )
  (set_local $86
   (get_local $85)
  )
  (set_local $87
   (get_local $86)
  )
  (set_local $88
   (get_local $87)
  )
  (set_local $89
   (get_local $88)
  )
  (set_local $90
   (get_local $89)
  )
  (set_local $91
   (get_local $90)
  )
  (set_local $92
   (get_local $91)
  )
  (set_local $93
   (get_local $92)
  )
  (set_local $94
   (get_local $93)
  )
  (set_local $95
   (get_local $94)
  )
  (set_local $96
   (get_local $95)
  )
  (set_local $97
   (get_local $96)
  )
  (set_local $98
   (get_local $97)
  )
  (set_local $99
   (get_local $98)
  )
  (set_local $100
   (get_local $99)
  )
  (set_local $101
   (get_local $100)
  )
  (set_local $102
   (get_local $101)
  )
  (set_local $103
   (get_local $102)
  )
  (set_local $104
   (get_local $103)
  )
  (set_local $105
   (get_local $104)
  )
  (set_local $106
   (get_local $105)
  )
  (set_local $107
   (get_local $106)
  )
  (set_local $108
   (get_local $107)
  )
  (set_local $109
   (get_local $108)
  )
  (set_local $110
   (get_local $109)
  )
  (set_local $111
   (get_local $110)
  )
  (set_local $112
   (get_local $111)
  )
  (set_local $113
   (get_local $112)
  )
  (set_local $114
   (get_local $113)
  )
  (set_local $115
   (get_local $114)
  )
  (set_local $116
   (get_local $115)
  )
  (set_local $117
   (get_local $116)
  )
  (set_local $118
   (get_local $117)
  )
  (set_local $119
   (get_local $118)
  )
  (set_local $120
   (get_local $119)
  )
  (set_local $121
   (get_local $120)
  )
  (set_local $122
   (get_local $121)
  )
  (set_local $123
   (get_local $122)
  )
  (set_local $124
   (get_local $123)
  )
  (set_local $125
   (get_local $124)
  )
  (set_local $126
   (get_local $125)
  )
  (set_local $127
   (get_local $126)
  )
  (set_local $128
   (get_local $127)
  )
  (get_local $128)
 )
 (func $many-locals/testI8 (; 2 ;) (type $ii) (param $0 i32) (result i32)
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
  (set_local $1
   (get_local $0)
  )
  (set_local $2
   (get_local $1)
  )
  (set_local $3
   (get_local $2)
  )
  (set_local $4
   (get_local $3)
  )
  (set_local $5
   (get_local $4)
  )
  (set_local $6
   (get_local $5)
  )
  (set_local $7
   (get_local $6)
  )
  (set_local $8
   (get_local $7)
  )
  (set_local $9
   (get_local $8)
  )
  (set_local $10
   (get_local $9)
  )
  (set_local $11
   (get_local $10)
  )
  (set_local $12
   (get_local $11)
  )
  (set_local $13
   (get_local $12)
  )
  (set_local $14
   (get_local $13)
  )
  (set_local $15
   (get_local $14)
  )
  (set_local $16
   (get_local $15)
  )
  (set_local $17
   (get_local $16)
  )
  (set_local $18
   (get_local $17)
  )
  (set_local $19
   (get_local $18)
  )
  (set_local $20
   (get_local $19)
  )
  (set_local $21
   (get_local $20)
  )
  (set_local $22
   (get_local $21)
  )
  (set_local $23
   (get_local $22)
  )
  (set_local $24
   (get_local $23)
  )
  (set_local $25
   (get_local $24)
  )
  (set_local $26
   (get_local $25)
  )
  (set_local $27
   (get_local $26)
  )
  (set_local $28
   (get_local $27)
  )
  (set_local $29
   (get_local $28)
  )
  (set_local $30
   (get_local $29)
  )
  (set_local $31
   (get_local $30)
  )
  (set_local $32
   (get_local $31)
  )
  (set_local $33
   (get_local $32)
  )
  (set_local $34
   (get_local $33)
  )
  (set_local $35
   (get_local $34)
  )
  (set_local $36
   (get_local $35)
  )
  (set_local $37
   (get_local $36)
  )
  (set_local $38
   (get_local $37)
  )
  (set_local $39
   (get_local $38)
  )
  (set_local $40
   (get_local $39)
  )
  (set_local $41
   (get_local $40)
  )
  (set_local $42
   (get_local $41)
  )
  (set_local $43
   (get_local $42)
  )
  (set_local $44
   (get_local $43)
  )
  (set_local $45
   (get_local $44)
  )
  (set_local $46
   (get_local $45)
  )
  (set_local $47
   (get_local $46)
  )
  (set_local $48
   (get_local $47)
  )
  (set_local $49
   (get_local $48)
  )
  (set_local $50
   (get_local $49)
  )
  (set_local $51
   (get_local $50)
  )
  (set_local $52
   (get_local $51)
  )
  (set_local $53
   (get_local $52)
  )
  (set_local $54
   (get_local $53)
  )
  (set_local $55
   (get_local $54)
  )
  (set_local $56
   (get_local $55)
  )
  (set_local $57
   (get_local $56)
  )
  (set_local $58
   (get_local $57)
  )
  (set_local $59
   (get_local $58)
  )
  (set_local $60
   (get_local $59)
  )
  (set_local $61
   (get_local $60)
  )
  (set_local $62
   (get_local $61)
  )
  (set_local $63
   (get_local $62)
  )
  (set_local $64
   (get_local $63)
  )
  (set_local $65
   (get_local $64)
  )
  (set_local $66
   (get_local $65)
  )
  (set_local $67
   (get_local $66)
  )
  (set_local $68
   (get_local $67)
  )
  (set_local $69
   (get_local $68)
  )
  (set_local $70
   (get_local $69)
  )
  (set_local $71
   (get_local $70)
  )
  (set_local $72
   (get_local $71)
  )
  (set_local $73
   (get_local $72)
  )
  (set_local $74
   (get_local $73)
  )
  (set_local $75
   (get_local $74)
  )
  (set_local $76
   (get_local $75)
  )
  (set_local $77
   (get_local $76)
  )
  (set_local $78
   (get_local $77)
  )
  (set_local $79
   (get_local $78)
  )
  (set_local $80
   (get_local $79)
  )
  (set_local $81
   (get_local $80)
  )
  (set_local $82
   (get_local $81)
  )
  (set_local $83
   (get_local $82)
  )
  (set_local $84
   (get_local $83)
  )
  (set_local $85
   (get_local $84)
  )
  (set_local $86
   (get_local $85)
  )
  (set_local $87
   (get_local $86)
  )
  (set_local $88
   (get_local $87)
  )
  (set_local $89
   (get_local $88)
  )
  (set_local $90
   (get_local $89)
  )
  (set_local $91
   (get_local $90)
  )
  (set_local $92
   (get_local $91)
  )
  (set_local $93
   (get_local $92)
  )
  (set_local $94
   (get_local $93)
  )
  (set_local $95
   (get_local $94)
  )
  (set_local $96
   (get_local $95)
  )
  (set_local $97
   (get_local $96)
  )
  (set_local $98
   (get_local $97)
  )
  (set_local $99
   (get_local $98)
  )
  (set_local $100
   (get_local $99)
  )
  (set_local $101
   (get_local $100)
  )
  (set_local $102
   (get_local $101)
  )
  (set_local $103
   (get_local $102)
  )
  (set_local $104
   (get_local $103)
  )
  (set_local $105
   (get_local $104)
  )
  (set_local $106
   (get_local $105)
  )
  (set_local $107
   (get_local $106)
  )
  (set_local $108
   (get_local $107)
  )
  (set_local $109
   (get_local $108)
  )
  (set_local $110
   (get_local $109)
  )
  (set_local $111
   (get_local $110)
  )
  (set_local $112
   (get_local $111)
  )
  (set_local $113
   (get_local $112)
  )
  (set_local $114
   (get_local $113)
  )
  (set_local $115
   (get_local $114)
  )
  (set_local $116
   (get_local $115)
  )
  (set_local $117
   (get_local $116)
  )
  (set_local $118
   (get_local $117)
  )
  (set_local $119
   (get_local $118)
  )
  (set_local $120
   (get_local $119)
  )
  (set_local $121
   (get_local $120)
  )
  (set_local $122
   (get_local $121)
  )
  (set_local $123
   (get_local $122)
  )
  (set_local $124
   (get_local $123)
  )
  (set_local $125
   (get_local $124)
  )
  (set_local $126
   (get_local $125)
  )
  (set_local $127
   (get_local $126)
  )
  (set_local $128
   (get_local $127)
  )
  (i32.shr_s
   (i32.shl
    (get_local $128)
    (i32.const 24)
   )
   (i32.const 24)
  )
 )
 (func $start (; 3 ;) (type $v)
  (if
   (i32.eqz
    (i32.eq
     (call $many-locals/testI32
      (i32.const 42)
     )
     (i32.const 42)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 133)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $many-locals/testI8
      (i32.const 42)
     )
     (i32.const 42)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 267)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
