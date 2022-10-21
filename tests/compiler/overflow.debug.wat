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
  (local $var$2 i32)
  (local $var$3 i32)
  (local $val_0 i32)
  (local $ctx_0 i32)
  (local $var$6 i32)
  (local $var$7 i32)
  (local $val_1 i32)
  (local $ctx_1 i32)
  (local $var$10 i32)
  (local $var$11 i32)
  (local $val_2 i32)
  (local $ctx_2 i32)
  (local $var$14 i32)
  (local $var$15 i32)
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
  local.tee $var$2
  i32.const 1
  i32.add
  local.set $val
  local.get $var$2
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
  local.tee $var$3
  i32.const 1
  i32.sub
  local.set $val
  local.get $var$3
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
  local.set $val_0
  local.get $val_0
  i32.const 1
  i32.add
  local.set $val_0
  local.get $val_0
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
  local.get $val_0
  i32.const 1
  i32.sub
  local.set $val_0
  local.get $val_0
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
  local.get $val_0
  local.tee $var$6
  i32.const 1
  i32.add
  local.set $val_0
  local.get $var$6
  local.set $ctx_0
  local.get $val_0
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
  local.get $val_0
  local.tee $var$7
  i32.const 1
  i32.sub
  local.set $val_0
  local.get $var$7
  local.set $ctx_0
  local.get $val_0
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
  local.get $val_0
  i32.const 1
  i32.add
  local.set $val_0
  local.get $val_0
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
  local.get $val_0
  i32.const 1
  i32.sub
  local.set $val_0
  local.get $val_0
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
  local.get $val_0
  i32.const 1
  i32.add
  local.tee $val_0
  local.set $ctx_0
  local.get $val_0
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
  local.get $val_0
  i32.const 1
  i32.sub
  local.tee $val_0
  local.set $ctx_0
  local.get $val_0
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
  local.get $val_0
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
  local.set $val_1
  local.get $val_1
  i32.const 1
  i32.sub
  local.set $val_1
  local.get $val_1
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
  local.get $val_1
  i32.const 1
  i32.add
  local.set $val_1
  local.get $val_1
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
  local.get $val_1
  local.tee $var$10
  i32.const 1
  i32.sub
  local.set $val_1
  local.get $var$10
  local.set $ctx_1
  local.get $val_1
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
  local.get $val_1
  local.tee $var$11
  i32.const 1
  i32.add
  local.set $val_1
  local.get $var$11
  local.set $ctx_1
  local.get $val_1
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
  local.get $val_1
  i32.const 1
  i32.sub
  local.set $val_1
  local.get $val_1
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
  local.get $val_1
  i32.const 1
  i32.add
  local.set $val_1
  local.get $val_1
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
  local.get $val_1
  i32.const 1
  i32.sub
  local.tee $val_1
  local.set $ctx_1
  local.get $val_1
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
  local.get $val_1
  i32.const 1
  i32.add
  local.tee $val_1
  local.set $ctx_1
  local.get $val_1
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
  local.get $val_1
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
  local.set $val_2
  local.get $val_2
  i32.const 1
  i32.sub
  local.set $val_2
  local.get $val_2
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
  local.get $val_2
  i32.const 1
  i32.add
  local.set $val_2
  local.get $val_2
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
  local.get $val_2
  local.tee $var$14
  i32.const 1
  i32.sub
  local.set $val_2
  local.get $var$14
  local.set $ctx_2
  local.get $val_2
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
  local.get $val_2
  local.tee $var$15
  i32.const 1
  i32.add
  local.set $val_2
  local.get $var$15
  local.set $ctx_2
  local.get $val_2
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
  local.get $val_2
  i32.const 1
  i32.sub
  local.set $val_2
  local.get $val_2
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
  local.get $val_2
  i32.const 1
  i32.add
  local.set $val_2
  local.get $val_2
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
  local.get $val_2
  i32.const 1
  i32.sub
  local.tee $val_2
  local.set $ctx_2
  local.get $val_2
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
  local.get $val_2
  i32.const 1
  i32.add
  local.tee $val_2
  local.set $ctx_2
  local.get $val_2
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
  local.get $val_2
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
