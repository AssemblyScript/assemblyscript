(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00r\00e\00t\00a\00i\00n\00-\00i\003\002\00.\00t\00s")
 (export "memory" (memory $0))
 (start $~start)
 (func $retain-i32/test (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.add
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  local.tee $2
  local.get $2
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 4
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.sub
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  local.tee $2
  local.get $2
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 5
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.mul
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  local.tee $2
  local.get $2
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 6
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.and
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  local.tee $2
  local.get $2
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 7
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.or
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  local.tee $2
  local.get $2
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 8
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.xor
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  local.tee $2
  local.get $2
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 9
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.shl
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  local.tee $2
  local.get $2
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 10
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.add
  i32.const 255
  i32.and
  local.tee $2
  local.get $2
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 13
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.sub
  i32.const 255
  i32.and
  local.tee $2
  local.get $2
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 14
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.mul
  i32.const 255
  i32.and
  local.tee $2
  local.get $2
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 15
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.and
  i32.const 255
  i32.and
  local.tee $2
  local.get $2
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 16
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.or
  i32.const 255
  i32.and
  local.tee $2
  local.get $2
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 17
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.xor
  i32.const 255
  i32.and
  local.tee $2
  local.get $2
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 18
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.shl
  i32.const 255
  i32.and
  local.tee $0
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 19
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:retain-i32
  (local $0 i32)
  i32.const 0
  i32.const 127
  call $retain-i32/test
  i32.const 127
  i32.const 0
  call $retain-i32/test
  i32.const 1
  i32.const 127
  call $retain-i32/test
  i32.const 127
  i32.const 1
  call $retain-i32/test
  i32.const -1
  i32.const 127
  call $retain-i32/test
  i32.const 127
  i32.const -1
  call $retain-i32/test
  i32.const 0
  i32.const -128
  call $retain-i32/test
  i32.const -128
  i32.const 0
  call $retain-i32/test
  i32.const 1
  i32.const -128
  call $retain-i32/test
  i32.const -128
  i32.const 1
  call $retain-i32/test
  i32.const -1
  i32.const -128
  call $retain-i32/test
  i32.const -128
  i32.const -1
  call $retain-i32/test
  i32.const 127
  i32.const 127
  call $retain-i32/test
  i32.const -128
  i32.const -128
  call $retain-i32/test
  i32.const 127
  i32.const -128
  call $retain-i32/test
  i32.const -128
  i32.const 127
  call $retain-i32/test
  i32.const 0
  i32.const 255
  call $retain-i32/test
  i32.const 255
  i32.const 0
  call $retain-i32/test
  i32.const 1
  i32.const 255
  call $retain-i32/test
  i32.const 255
  i32.const 1
  call $retain-i32/test
  i32.const -1
  i32.const 255
  call $retain-i32/test
  i32.const 255
  i32.const -1
  call $retain-i32/test
  i32.const 255
  i32.const 255
  call $retain-i32/test
  i32.const -128
  local.set $0
  loop $for-loop|0
   local.get $0
   i32.const 255
   i32.le_s
   if
    i32.const 0
    local.get $0
    call $retain-i32/test
    i32.const 1
    local.get $0
    call $retain-i32/test
    i32.const -1
    local.get $0
    call $retain-i32/test
    i32.const -128
    local.get $0
    call $retain-i32/test
    i32.const 127
    local.get $0
    call $retain-i32/test
    i32.const 255
    local.get $0
    call $retain-i32/test
    i32.const -32768
    local.get $0
    call $retain-i32/test
    i32.const 32767
    local.get $0
    call $retain-i32/test
    i32.const 65535
    local.get $0
    call $retain-i32/test
    i32.const 2147483647
    local.get $0
    call $retain-i32/test
    i32.const -2147483648
    local.get $0
    call $retain-i32/test
    i32.const -1
    local.get $0
    call $retain-i32/test
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 0
  i32.load8_s
  drop
  i32.const 0
  i32.load8_s
  drop
 )
 (func $~start
  call $start:retain-i32
 )
)
