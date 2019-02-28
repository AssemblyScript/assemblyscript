(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0e\00\00\00m\00a\00n\00y\00-\00l\00o\00c\00a\00l\00s\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/memory/HEAP_BASE i32 (i32.const 40))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "testI32" (func $many-locals/testI32))
 (export "testI8" (func $many-locals/testI8))
 (start $start)
 (func $many-locals/testI32 (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  local.get $0
  local.set $1
  local.get $1
  local.set $2
  local.get $2
  local.set $3
  local.get $3
  local.set $4
  local.get $4
  local.set $5
  local.get $5
  local.set $6
  local.get $6
  local.set $7
  local.get $7
  local.set $8
  local.get $8
  local.set $9
  local.get $9
  local.set $10
  local.get $10
  local.set $11
  local.get $11
  local.set $12
  local.get $12
  local.set $13
  local.get $13
  local.set $14
  local.get $14
  local.set $15
  local.get $15
  local.set $16
  local.get $16
  local.set $17
  local.get $17
  local.set $18
  local.get $18
  local.set $19
  local.get $19
  local.set $20
  local.get $20
  local.set $21
  local.get $21
  local.set $22
  local.get $22
  local.set $23
  local.get $23
  local.set $24
  local.get $24
  local.set $25
  local.get $25
  local.set $26
  local.get $26
  local.set $27
  local.get $27
  local.set $28
  local.get $28
  local.set $29
  local.get $29
  local.set $30
  local.get $30
  local.set $31
  local.get $31
  local.set $32
  local.get $32
  local.set $33
  local.get $33
  local.set $34
  local.get $34
  local.set $35
  local.get $35
  local.set $36
  local.get $36
  local.set $37
  local.get $37
  local.set $38
  local.get $38
  local.set $39
  local.get $39
  local.set $40
  local.get $40
  local.set $41
  local.get $41
  local.set $42
  local.get $42
  local.set $43
  local.get $43
  local.set $44
  local.get $44
  local.set $45
  local.get $45
  local.set $46
  local.get $46
  local.set $47
  local.get $47
  local.set $48
  local.get $48
  local.set $49
  local.get $49
  local.set $50
  local.get $50
  local.set $51
  local.get $51
  local.set $52
  local.get $52
  local.set $53
  local.get $53
  local.set $54
  local.get $54
  local.set $55
  local.get $55
  local.set $56
  local.get $56
  local.set $57
  local.get $57
  local.set $58
  local.get $58
  local.set $59
  local.get $59
  local.set $60
  local.get $60
  local.set $61
  local.get $61
  local.set $62
  local.get $62
  local.set $63
  local.get $63
  local.set $64
  local.get $64
  local.set $65
  local.get $65
  local.set $66
  local.get $66
  local.set $67
  local.get $67
  local.set $68
  local.get $68
  local.set $69
  local.get $69
  local.set $70
  local.get $70
  local.set $71
  local.get $71
  local.set $72
  local.get $72
  local.set $73
  local.get $73
  local.set $74
  local.get $74
  local.set $75
  local.get $75
  local.set $76
  local.get $76
  local.set $77
  local.get $77
  local.set $78
  local.get $78
  local.set $79
  local.get $79
  local.set $80
  local.get $80
  local.set $81
  local.get $81
  local.set $82
  local.get $82
  local.set $83
  local.get $83
  local.set $84
  local.get $84
  local.set $85
  local.get $85
  local.set $86
  local.get $86
  local.set $87
  local.get $87
  local.set $88
  local.get $88
  local.set $89
  local.get $89
  local.set $90
  local.get $90
  local.set $91
  local.get $91
  local.set $92
  local.get $92
  local.set $93
  local.get $93
  local.set $94
  local.get $94
  local.set $95
  local.get $95
  local.set $96
  local.get $96
  local.set $97
  local.get $97
  local.set $98
  local.get $98
  local.set $99
  local.get $99
  local.set $100
  local.get $100
  local.set $101
  local.get $101
  local.set $102
  local.get $102
  local.set $103
  local.get $103
  local.set $104
  local.get $104
  local.set $105
  local.get $105
  local.set $106
  local.get $106
  local.set $107
  local.get $107
  local.set $108
  local.get $108
  local.set $109
  local.get $109
  local.set $110
  local.get $110
  local.set $111
  local.get $111
  local.set $112
  local.get $112
  local.set $113
  local.get $113
  local.set $114
  local.get $114
  local.set $115
  local.get $115
  local.set $116
  local.get $116
  local.set $117
  local.get $117
  local.set $118
  local.get $118
  local.set $119
  local.get $119
  local.set $120
  local.get $120
  local.set $121
  local.get $121
  local.set $122
  local.get $122
  local.set $123
  local.get $123
  local.set $124
  local.get $124
  local.set $125
  local.get $125
  local.set $126
  local.get $126
  local.set $127
  local.get $127
  local.set $128
  local.get $128
 )
 (func $many-locals/testI8 (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  local.get $0
  local.set $1
  local.get $1
  local.set $2
  local.get $2
  local.set $3
  local.get $3
  local.set $4
  local.get $4
  local.set $5
  local.get $5
  local.set $6
  local.get $6
  local.set $7
  local.get $7
  local.set $8
  local.get $8
  local.set $9
  local.get $9
  local.set $10
  local.get $10
  local.set $11
  local.get $11
  local.set $12
  local.get $12
  local.set $13
  local.get $13
  local.set $14
  local.get $14
  local.set $15
  local.get $15
  local.set $16
  local.get $16
  local.set $17
  local.get $17
  local.set $18
  local.get $18
  local.set $19
  local.get $19
  local.set $20
  local.get $20
  local.set $21
  local.get $21
  local.set $22
  local.get $22
  local.set $23
  local.get $23
  local.set $24
  local.get $24
  local.set $25
  local.get $25
  local.set $26
  local.get $26
  local.set $27
  local.get $27
  local.set $28
  local.get $28
  local.set $29
  local.get $29
  local.set $30
  local.get $30
  local.set $31
  local.get $31
  local.set $32
  local.get $32
  local.set $33
  local.get $33
  local.set $34
  local.get $34
  local.set $35
  local.get $35
  local.set $36
  local.get $36
  local.set $37
  local.get $37
  local.set $38
  local.get $38
  local.set $39
  local.get $39
  local.set $40
  local.get $40
  local.set $41
  local.get $41
  local.set $42
  local.get $42
  local.set $43
  local.get $43
  local.set $44
  local.get $44
  local.set $45
  local.get $45
  local.set $46
  local.get $46
  local.set $47
  local.get $47
  local.set $48
  local.get $48
  local.set $49
  local.get $49
  local.set $50
  local.get $50
  local.set $51
  local.get $51
  local.set $52
  local.get $52
  local.set $53
  local.get $53
  local.set $54
  local.get $54
  local.set $55
  local.get $55
  local.set $56
  local.get $56
  local.set $57
  local.get $57
  local.set $58
  local.get $58
  local.set $59
  local.get $59
  local.set $60
  local.get $60
  local.set $61
  local.get $61
  local.set $62
  local.get $62
  local.set $63
  local.get $63
  local.set $64
  local.get $64
  local.set $65
  local.get $65
  local.set $66
  local.get $66
  local.set $67
  local.get $67
  local.set $68
  local.get $68
  local.set $69
  local.get $69
  local.set $70
  local.get $70
  local.set $71
  local.get $71
  local.set $72
  local.get $72
  local.set $73
  local.get $73
  local.set $74
  local.get $74
  local.set $75
  local.get $75
  local.set $76
  local.get $76
  local.set $77
  local.get $77
  local.set $78
  local.get $78
  local.set $79
  local.get $79
  local.set $80
  local.get $80
  local.set $81
  local.get $81
  local.set $82
  local.get $82
  local.set $83
  local.get $83
  local.set $84
  local.get $84
  local.set $85
  local.get $85
  local.set $86
  local.get $86
  local.set $87
  local.get $87
  local.set $88
  local.get $88
  local.set $89
  local.get $89
  local.set $90
  local.get $90
  local.set $91
  local.get $91
  local.set $92
  local.get $92
  local.set $93
  local.get $93
  local.set $94
  local.get $94
  local.set $95
  local.get $95
  local.set $96
  local.get $96
  local.set $97
  local.get $97
  local.set $98
  local.get $98
  local.set $99
  local.get $99
  local.set $100
  local.get $100
  local.set $101
  local.get $101
  local.set $102
  local.get $102
  local.set $103
  local.get $103
  local.set $104
  local.get $104
  local.set $105
  local.get $105
  local.set $106
  local.get $106
  local.set $107
  local.get $107
  local.set $108
  local.get $108
  local.set $109
  local.get $109
  local.set $110
  local.get $110
  local.set $111
  local.get $111
  local.set $112
  local.get $112
  local.set $113
  local.get $113
  local.set $114
  local.get $114
  local.set $115
  local.get $115
  local.set $116
  local.get $116
  local.set $117
  local.get $117
  local.set $118
  local.get $118
  local.set $119
  local.get $119
  local.set $120
  local.get $120
  local.set $121
  local.get $121
  local.set $122
  local.get $122
  local.set $123
  local.get $123
  local.set $124
  local.get $124
  local.set $125
  local.get $125
  local.set $126
  local.get $126
  local.set $127
  local.get $127
  local.set $128
  local.get $128
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
 )
 (func $start:many-locals (; 3 ;) (type $FUNCSIG$v)
  i32.const 42
  call $many-locals/testI32
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 133
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 42
  call $many-locals/testI8
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 267
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 4 ;) (type $FUNCSIG$v)
  call $start:many-locals
 )
 (func $null (; 5 ;) (type $FUNCSIG$v)
 )
)
