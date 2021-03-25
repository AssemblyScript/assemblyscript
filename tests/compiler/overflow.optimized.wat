(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\01\00\00\00\16\00\00\00o\00v\00e\00r\00f\00l\00o\00w\00.\00t\00s")
 (export "memory" (memory $0))
 (start $~start)
 (func $start:overflow
  (local $0 i32)
  i32.const 128
  local.tee $0
  i32.const 128
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 10
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.sub
  local.tee $0
  i32.const 255
  i32.and
  i32.const 127
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 13
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.add
  local.tee $0
  i32.const 255
  i32.and
  i32.const 128
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 16
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.sub
  local.tee $0
  i32.const 255
  i32.and
  i32.const 127
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 19
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.add
  local.tee $0
  i32.const 255
  i32.and
  i32.const 128
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 22
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.sub
  local.tee $0
  i32.const 255
  i32.and
  i32.const 127
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 25
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.add
  local.tee $0
  i32.const 255
  i32.and
  i32.const 128
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 28
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.sub
  local.tee $0
  i32.const 255
  i32.and
  i32.const 127
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 31
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.add
  i32.const 255
  i32.and
  i32.const 128
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 33
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32768
  local.tee $0
  i32.const 32768
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 42
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.sub
  local.tee $0
  i32.const 65535
  i32.and
  i32.const 32767
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 45
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.add
  local.tee $0
  i32.const 65535
  i32.and
  i32.const 32768
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 48
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.sub
  local.tee $0
  i32.const 65535
  i32.and
  i32.const 32767
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 51
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.add
  local.tee $0
  i32.const 65535
  i32.and
  i32.const 32768
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 54
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.sub
  local.tee $0
  i32.const 65535
  i32.and
  i32.const 32767
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 57
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.add
  local.tee $0
  i32.const 65535
  i32.and
  i32.const 32768
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.sub
  local.tee $0
  i32.const 65535
  i32.and
  i32.const 32767
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 63
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.add
  i32.const 65535
  i32.and
  i32.const 32768
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 65
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.sub
  local.tee $0
  i32.const 255
  i32.and
  i32.const 255
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 74
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.add
  local.tee $0
  i32.const 255
  i32.and
  if
   i32.const 0
   i32.const 1056
   i32.const 77
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.sub
  local.tee $0
  i32.const 255
  i32.and
  i32.const 255
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 80
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.add
  local.tee $0
  i32.const 255
  i32.and
  if
   i32.const 0
   i32.const 1056
   i32.const 83
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.sub
  local.tee $0
  i32.const 255
  i32.and
  i32.const 255
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 86
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.add
  local.tee $0
  i32.const 255
  i32.and
  if
   i32.const 0
   i32.const 1056
   i32.const 89
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.sub
  local.tee $0
  i32.const 255
  i32.and
  i32.const 255
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 92
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.add
  local.tee $0
  i32.const 255
  i32.and
  if
   i32.const 0
   i32.const 1056
   i32.const 95
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.sub
  i32.const 255
  i32.and
  i32.const 255
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 97
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.sub
  local.tee $0
  i32.const 65535
  i32.and
  i32.const 65535
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 106
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.add
  local.tee $0
  i32.const 65535
  i32.and
  if
   i32.const 0
   i32.const 1056
   i32.const 109
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.sub
  local.tee $0
  i32.const 65535
  i32.and
  i32.const 65535
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 112
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.add
  local.tee $0
  i32.const 65535
  i32.and
  if
   i32.const 0
   i32.const 1056
   i32.const 115
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.sub
  local.tee $0
  i32.const 65535
  i32.and
  i32.const 65535
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 118
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.add
  local.tee $0
  i32.const 65535
  i32.and
  if
   i32.const 0
   i32.const 1056
   i32.const 121
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.sub
  local.tee $0
  i32.const 65535
  i32.and
  i32.const 65535
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 124
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.add
  local.tee $0
  i32.const 65535
  i32.and
  if
   i32.const 0
   i32.const 1056
   i32.const 127
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.sub
  i32.const 65535
  i32.and
  i32.const 65535
  i32.ne
  if
   i32.const 0
   i32.const 1056
   i32.const 129
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:overflow
 )
)
