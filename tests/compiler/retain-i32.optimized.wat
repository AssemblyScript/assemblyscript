(module
 (type $none_=>_none (func))
 (memory $0 1)
 (data (i32.const 16) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00r\00e\00t\00a\00i\00n\00-\00i\003\002\00.\00t\00s")
 (global $retain-i32/si (mut i32) (i32.const 0))
 (global $retain-i32/ui (mut i32) (i32.const 0))
 (global $retain-i32/ri (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:retain-i32 (; 0 ;)
  (local $0 i32)
  i32.const -128
  local.set $0
  loop $for-loop|0
   local.get $0
   i32.const 255
   i32.le_s
   if
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const -1
  global.set $retain-i32/si
  i32.const -1
  global.set $retain-i32/si
  i32.const -2
  global.set $retain-i32/si
  i32.const -128
  global.set $retain-i32/si
  i32.const -128
  global.set $retain-i32/si
  i32.const -127
  global.set $retain-i32/si
  i32.const -128
  global.set $retain-i32/si
  i32.const 1
  global.set $retain-i32/si
  i32.const 1
  global.set $retain-i32/si
  i32.const 0
  global.set $retain-i32/si
  i32.const 1
  global.set $retain-i32/si
  i32.const 255
  global.set $retain-i32/ui
  i32.const 255
  global.set $retain-i32/ui
  i32.const 254
  global.set $retain-i32/ui
  i32.const 1
  global.set $retain-i32/ui
  i32.const 1
  global.set $retain-i32/ui
  i32.const 1
  global.set $retain-i32/ui
  i32.const 0
  global.set $retain-i32/ui
  i32.const 0
  i32.load8_s
  global.set $retain-i32/ri
  i32.const 0
  i32.load8_s
  drop
 )
 (func $~start (; 1 ;)
  call $start:retain-i32
 )
)
