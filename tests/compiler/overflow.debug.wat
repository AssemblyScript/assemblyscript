(module
 (type $none_=>_none (func_subtype func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32828))
 (global $~lib/memory/__heap_base i32 (i32.const 32828))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00o\00v\00e\00r\00f\00l\00o\00w\00.\00t\00s\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:overflow (type $none_=>_none)
  (local $val i32)
  (local $ctx i32)
  (local $2 i32)
  (local $3 i32)
  (local $val|4 i32)
  (local $ctx|5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $val|8 i32)
  (local $ctx|9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $val|12 i32)
  (local $ctx|13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $b4 i32)
  (local $b5 i32)
  (local $b6 i32)
  (local $c i32)
  i32.const 127
  local.set $val
  local.get $val
  i32.const 1
  i32.add
  local.set $val
  local.get $val
  i32.extend8_s
  i32.const -128
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 10
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val
  i32.const 1
  i32.sub
  local.set $val
  local.get $val
  i32.extend8_s
  i32.const 127
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 13
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val
  local.tee $2
  i32.const 1
  i32.add
  local.set $val
  local.get $2
  local.set $ctx
  local.get $val
  i32.extend8_s
  i32.const -128
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 16
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val
  local.tee $3
  i32.const 1
  i32.sub
  local.set $val
  local.get $3
  local.set $ctx
  local.get $val
  i32.extend8_s
  i32.const 127
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 19
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val
  i32.const 1
  i32.add
  local.set $val
  local.get $val
  i32.extend8_s
  i32.const -128
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 22
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val
  i32.const 1
  i32.sub
  local.set $val
  local.get $val
  i32.extend8_s
  i32.const 127
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 25
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val
  i32.const 1
  i32.add
  local.tee $val
  local.set $ctx
  local.get $val
  i32.extend8_s
  i32.const -128
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 28
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val
  i32.const 1
  i32.sub
  local.tee $val
  local.set $ctx
  local.get $val
  i32.extend8_s
  i32.const 127
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 31
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val
  i32.const 1
  i32.add
  i32.extend8_s
  i32.const -128
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 33
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32767
  local.set $val|4
  local.get $val|4
  i32.const 1
  i32.add
  local.set $val|4
  local.get $val|4
  i32.extend16_s
  i32.const -32768
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 42
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|4
  i32.const 1
  i32.sub
  local.set $val|4
  local.get $val|4
  i32.extend16_s
  i32.const 32767
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 45
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|4
  local.tee $6
  i32.const 1
  i32.add
  local.set $val|4
  local.get $6
  local.set $ctx|5
  local.get $val|4
  i32.extend16_s
  i32.const -32768
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 48
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|4
  local.tee $7
  i32.const 1
  i32.sub
  local.set $val|4
  local.get $7
  local.set $ctx|5
  local.get $val|4
  i32.extend16_s
  i32.const 32767
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 51
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|4
  i32.const 1
  i32.add
  local.set $val|4
  local.get $val|4
  i32.extend16_s
  i32.const -32768
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 54
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|4
  i32.const 1
  i32.sub
  local.set $val|4
  local.get $val|4
  i32.extend16_s
  i32.const 32767
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 57
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|4
  i32.const 1
  i32.add
  local.tee $val|4
  local.set $ctx|5
  local.get $val|4
  i32.extend16_s
  i32.const -32768
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|4
  i32.const 1
  i32.sub
  local.tee $val|4
  local.set $ctx|5
  local.get $val|4
  i32.extend16_s
  i32.const 32767
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 63
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|4
  i32.const 1
  i32.add
  i32.extend16_s
  i32.const -32768
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 65
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $val|8
  local.get $val|8
  i32.const 1
  i32.sub
  local.set $val|8
  local.get $val|8
  i32.const 255
  i32.and
  i32.const 255
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 74
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|8
  i32.const 1
  i32.add
  local.set $val|8
  local.get $val|8
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 77
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|8
  local.tee $10
  i32.const 1
  i32.sub
  local.set $val|8
  local.get $10
  local.set $ctx|9
  local.get $val|8
  i32.const 255
  i32.and
  i32.const 255
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 80
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|8
  local.tee $11
  i32.const 1
  i32.add
  local.set $val|8
  local.get $11
  local.set $ctx|9
  local.get $val|8
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 83
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|8
  i32.const 1
  i32.sub
  local.set $val|8
  local.get $val|8
  i32.const 255
  i32.and
  i32.const 255
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 86
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|8
  i32.const 1
  i32.add
  local.set $val|8
  local.get $val|8
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 89
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|8
  i32.const 1
  i32.sub
  local.tee $val|8
  local.set $ctx|9
  local.get $val|8
  i32.const 255
  i32.and
  i32.const 255
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 92
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|8
  i32.const 1
  i32.add
  local.tee $val|8
  local.set $ctx|9
  local.get $val|8
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 95
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|8
  i32.const 1
  i32.sub
  i32.const 255
  i32.and
  i32.const 255
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 97
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $val|12
  local.get $val|12
  i32.const 1
  i32.sub
  local.set $val|12
  local.get $val|12
  i32.const 65535
  i32.and
  i32.const 65535
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 106
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|12
  i32.const 1
  i32.add
  local.set $val|12
  local.get $val|12
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 109
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|12
  local.tee $14
  i32.const 1
  i32.sub
  local.set $val|12
  local.get $14
  local.set $ctx|13
  local.get $val|12
  i32.const 65535
  i32.and
  i32.const 65535
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 112
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|12
  local.tee $15
  i32.const 1
  i32.add
  local.set $val|12
  local.get $15
  local.set $ctx|13
  local.get $val|12
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 115
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|12
  i32.const 1
  i32.sub
  local.set $val|12
  local.get $val|12
  i32.const 65535
  i32.and
  i32.const 65535
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 118
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|12
  i32.const 1
  i32.add
  local.set $val|12
  local.get $val|12
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 121
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|12
  i32.const 1
  i32.sub
  local.tee $val|12
  local.set $ctx|13
  local.get $val|12
  i32.const 65535
  i32.and
  i32.const 65535
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 124
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|12
  i32.const 1
  i32.add
  local.tee $val|12
  local.set $ctx|13
  local.get $val|12
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 127
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $val|12
  i32.const 1
  i32.sub
  i32.const 65535
  i32.and
  i32.const 65535
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 129
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 1
  i32.eq
  drop
  i32.const 1
  i32.const 1
  i32.eq
  drop
  i32.const 0
  i32.const 0
  i32.eq
  drop
  i32.const 2
  local.set $b4
  local.get $b4
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 144
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -1
  local.set $b5
  local.get $b5
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 147
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $b6
  local.get $b6
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 150
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 65
  i32.const 63457
  i32.const 504
  i32.and
  i32.const 3
  i32.const 15
  i32.and
  i32.shr_u
  i32.const 64
  i32.sub
  i32.const 65535
  i32.and
  i32.add
  local.set $c
  local.get $c
  i32.const 65597
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 159
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start (type $none_=>_none)
  call $start:overflow
 )
)
