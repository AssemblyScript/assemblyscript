(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00r\00e\00t\00a\00i\00n\00-\00i\003\002\00.\00t\00s\00\00\00")
 (table $0 1 funcref)
 (global $~lib/builtins/i8.MAX_VALUE i32 (i32.const 127))
 (global $~lib/builtins/i8.MIN_VALUE i32 (i32.const -128))
 (global $~lib/builtins/u8.MAX_VALUE i32 (i32.const 255))
 (global $~lib/builtins/i16.MIN_VALUE i32 (i32.const -32768))
 (global $~lib/builtins/i16.MAX_VALUE i32 (i32.const 32767))
 (global $~lib/builtins/u16.MAX_VALUE i32 (i32.const 65535))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~lib/builtins/i32.MIN_VALUE i32 (i32.const -2147483648))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $retain-i32/si (mut i32) (i32.const 0))
 (global $retain-i32/ui (mut i32) (i32.const 0))
 (global $retain-i32/ri (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $retain-i32/test (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.add
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  local.get $0
  local.get $1
  i32.add
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
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
  local.get $0
  local.get $1
  i32.sub
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
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
  local.get $0
  local.get $1
  i32.mul
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
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
  local.get $0
  local.get $1
  i32.and
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
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
  local.get $0
  local.get $1
  i32.or
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
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
  local.get $0
  local.get $1
  i32.xor
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 9
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 7
  i32.and
  i32.shl
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  local.get $0
  local.get $1
  i32.const 7
  i32.and
  i32.shl
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
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
  local.get $0
  local.get $1
  i32.add
  i32.const 255
  i32.and
  local.get $0
  local.get $1
  i32.add
  i32.const 255
  i32.and
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
  local.get $0
  local.get $1
  i32.sub
  i32.const 255
  i32.and
  local.get $0
  local.get $1
  i32.sub
  i32.const 255
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
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
  local.get $0
  local.get $1
  i32.mul
  i32.const 255
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
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
  local.get $0
  local.get $1
  i32.and
  i32.const 255
  i32.and
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
  local.get $0
  local.get $1
  i32.or
  i32.const 255
  i32.and
  local.get $0
  local.get $1
  i32.or
  i32.const 255
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
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
  local.get $0
  local.get $1
  i32.xor
  i32.const 255
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 18
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 7
  i32.and
  i32.shl
  i32.const 255
  i32.and
  local.get $0
  local.get $1
  i32.const 7
  i32.and
  i32.shl
  i32.const 255
  i32.and
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
 )
 (func $retain-i32/testLocalRetain
  (local $0 i32)
  i32.const 0
  i32.load8_s
  local.set $0
  i32.const 1
  drop
 )
 (func $start:retain-i32
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.get $~lib/builtins/i8.MAX_VALUE
  call $retain-i32/test
  global.get $~lib/builtins/i8.MAX_VALUE
  i32.const 0
  call $retain-i32/test
  i32.const 1
  global.get $~lib/builtins/i8.MAX_VALUE
  call $retain-i32/test
  global.get $~lib/builtins/i8.MAX_VALUE
  i32.const 1
  call $retain-i32/test
  i32.const -1
  global.get $~lib/builtins/i8.MAX_VALUE
  call $retain-i32/test
  global.get $~lib/builtins/i8.MAX_VALUE
  i32.const -1
  call $retain-i32/test
  i32.const 0
  global.get $~lib/builtins/i8.MIN_VALUE
  call $retain-i32/test
  global.get $~lib/builtins/i8.MIN_VALUE
  i32.const 0
  call $retain-i32/test
  i32.const 1
  global.get $~lib/builtins/i8.MIN_VALUE
  call $retain-i32/test
  global.get $~lib/builtins/i8.MIN_VALUE
  i32.const 1
  call $retain-i32/test
  i32.const -1
  global.get $~lib/builtins/i8.MIN_VALUE
  call $retain-i32/test
  global.get $~lib/builtins/i8.MIN_VALUE
  i32.const -1
  call $retain-i32/test
  global.get $~lib/builtins/i8.MAX_VALUE
  global.get $~lib/builtins/i8.MAX_VALUE
  call $retain-i32/test
  global.get $~lib/builtins/i8.MIN_VALUE
  global.get $~lib/builtins/i8.MIN_VALUE
  call $retain-i32/test
  global.get $~lib/builtins/i8.MAX_VALUE
  global.get $~lib/builtins/i8.MIN_VALUE
  call $retain-i32/test
  global.get $~lib/builtins/i8.MIN_VALUE
  global.get $~lib/builtins/i8.MAX_VALUE
  call $retain-i32/test
  i32.const 0
  global.get $~lib/builtins/u8.MAX_VALUE
  call $retain-i32/test
  global.get $~lib/builtins/u8.MAX_VALUE
  i32.const 0
  call $retain-i32/test
  i32.const 1
  global.get $~lib/builtins/u8.MAX_VALUE
  call $retain-i32/test
  global.get $~lib/builtins/u8.MAX_VALUE
  i32.const 1
  call $retain-i32/test
  i32.const -1
  global.get $~lib/builtins/u8.MAX_VALUE
  call $retain-i32/test
  global.get $~lib/builtins/u8.MAX_VALUE
  i32.const -1
  call $retain-i32/test
  global.get $~lib/builtins/u8.MAX_VALUE
  global.get $~lib/builtins/u8.MAX_VALUE
  call $retain-i32/test
  global.get $~lib/builtins/i8.MIN_VALUE
  local.set $0
  loop $for-loop|0
   local.get $0
   global.get $~lib/builtins/u8.MAX_VALUE
   i32.le_s
   local.set $1
   local.get $1
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
    global.get $~lib/builtins/i8.MIN_VALUE
    local.get $0
    call $retain-i32/test
    global.get $~lib/builtins/i8.MAX_VALUE
    local.get $0
    call $retain-i32/test
    global.get $~lib/builtins/u8.MAX_VALUE
    local.get $0
    call $retain-i32/test
    global.get $~lib/builtins/i16.MIN_VALUE
    local.get $0
    call $retain-i32/test
    global.get $~lib/builtins/i16.MAX_VALUE
    local.get $0
    call $retain-i32/test
    global.get $~lib/builtins/u16.MAX_VALUE
    local.get $0
    call $retain-i32/test
    global.get $~lib/builtins/i32.MAX_VALUE
    local.get $0
    call $retain-i32/test
    global.get $~lib/builtins/i32.MIN_VALUE
    local.get $0
    call $retain-i32/test
    global.get $~lib/builtins/u32.MAX_VALUE
    local.get $0
    call $retain-i32/test
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 127
  i32.const 127
  i32.add
  i32.const 1
  i32.add
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 78
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 127
  i32.const 1
  i32.sub
  i32.const 127
  i32.sub
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 81
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 127
  i32.const 2
  i32.mul
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const -2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 84
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const -128
  i32.sub
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const -128
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 87
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -128
  i32.const -1
  i32.mul
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const -128
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 90
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 127
  i32.const -1
  i32.div_s
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const -127
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 93
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -128
  i32.const -1
  i32.div_s
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const -128
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 96
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 127
  i32.const 2
  i32.rem_s
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 99
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 127
  i32.rem_s
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 102
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -128
  i32.const 2
  i32.rem_s
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 105
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const -128
  i32.rem_s
  global.set $retain-i32/si
  global.get $retain-i32/si
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 108
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 255
  i32.const 255
  i32.add
  i32.const 1
  i32.add
  i32.const 255
  i32.and
  global.set $retain-i32/ui
  global.get $retain-i32/ui
  i32.const 255
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 113
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 255
  i32.const 1
  i32.sub
  i32.const 255
  i32.sub
  i32.const 255
  i32.and
  global.set $retain-i32/ui
  global.get $retain-i32/ui
  i32.const 255
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 116
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 255
  i32.const 2
  i32.mul
  i32.const 255
  i32.and
  global.set $retain-i32/ui
  global.get $retain-i32/ui
  i32.const 254
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 119
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 255
  i32.const 255
  i32.mul
  i32.const 255
  i32.and
  global.set $retain-i32/ui
  global.get $retain-i32/ui
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 122
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 255
  i32.const 255
  i32.div_u
  global.set $retain-i32/ui
  global.get $retain-i32/ui
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 125
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 255
  i32.const 2
  i32.rem_u
  global.set $retain-i32/ui
  global.get $retain-i32/ui
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 128
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 255
  i32.const 255
  i32.rem_u
  global.set $retain-i32/ui
  global.get $retain-i32/ui
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 131
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.load8_s
  global.set $retain-i32/ri
  i32.const 1
  drop
  call $retain-i32/testLocalRetain
 )
 (func $~start
  call $start:retain-i32
 )
)
