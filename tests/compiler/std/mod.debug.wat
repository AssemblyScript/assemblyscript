(module
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (type $none_=>_none (func))
 (type $f64_f64_=>_i32 (func (param f64 f64) (result i32)))
 (type $f64_f64_f64_=>_i32 (func (param f64 f64 f64) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $f32_f32_=>_f32 (func (param f32 f32) (result f32)))
 (type $f32_f32_=>_i32 (func (param f32 f32) (result i32)))
 (type $f32_f32_f32_=>_i32 (func (param f32 f32 f32) (result i32)))
 (import "mod" "mod" (func $std/mod/mod (param f64 f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $std/mod/js i32 (i32.const 1))
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32828))
 (global $~lib/memory/__heap_base i32 (i32.const 32828))
 (memory $0 1)
 (data $0 (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00s\00t\00d\00/\00m\00o\00d\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "mod" (func $std/mod/mod))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/math/NativeMath.mod (param $x f64) (param $y f64) (result f64)
  (local $ux i64)
  (local $uy i64)
  (local $ex i64)
  (local $ey i64)
  (local $sx i64)
  (local $uy1 i64)
  (local $m f64)
  (local $ux1 i64)
  (local $shift i64)
  local.get $y
  f64.abs
  f64.const 1
  f64.eq
  if
   local.get $x
   local.get $x
   f64.trunc
   f64.sub
   local.get $x
   f64.copysign
   return
  end
  local.get $x
  i64.reinterpret_f64
  local.set $ux
  local.get $y
  i64.reinterpret_f64
  local.set $uy
  local.get $ux
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.set $ex
  local.get $uy
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.set $ey
  local.get $ux
  i64.const 63
  i64.shr_u
  local.set $sx
  local.get $uy
  i64.const 1
  i64.shl
  local.set $uy1
  local.get $uy1
  i64.const 0
  i64.eq
  if (result i32)
   i32.const 1
  else
   local.get $ex
   i64.const 2047
   i64.eq
  end
  if (result i32)
   i32.const 1
  else
   local.get $y
   local.get $y
   f64.ne
  end
  if
   local.get $x
   local.get $y
   f64.mul
   local.set $m
   local.get $m
   local.get $m
   f64.div
   return
  end
  local.get $ux
  i64.const 1
  i64.shl
  local.set $ux1
  local.get $ux1
  local.get $uy1
  i64.le_u
  if
   local.get $x
   local.get $ux1
   local.get $uy1
   i64.ne
   f64.convert_i32_u
   f64.mul
   return
  end
  local.get $ex
  i64.const 0
  i64.ne
  i32.eqz
  if
   local.get $ex
   local.get $ux
   i64.const 12
   i64.shl
   i64.clz
   i64.sub
   local.set $ex
   local.get $ux
   i64.const 1
   local.get $ex
   i64.sub
   i64.shl
   local.set $ux
  else
   local.get $ux
   i64.const -1
   i64.const 12
   i64.shr_u
   i64.and
   local.set $ux
   local.get $ux
   i64.const 1
   i64.const 52
   i64.shl
   i64.or
   local.set $ux
  end
  local.get $ey
  i64.const 0
  i64.ne
  i32.eqz
  if
   local.get $ey
   local.get $uy
   i64.const 12
   i64.shl
   i64.clz
   i64.sub
   local.set $ey
   local.get $uy
   i64.const 1
   local.get $ey
   i64.sub
   i64.shl
   local.set $uy
  else
   local.get $uy
   i64.const -1
   i64.const 12
   i64.shr_u
   i64.and
   local.set $uy
   local.get $uy
   i64.const 1
   i64.const 52
   i64.shl
   i64.or
   local.set $uy
  end
  loop $while-continue|0
   local.get $ex
   local.get $ey
   i64.gt_s
   if
    local.get $ux
    local.get $uy
    i64.ge_u
    if
     local.get $ux
     local.get $uy
     i64.eq
     if
      f64.const 0
      local.get $x
      f64.mul
      return
     end
     local.get $ux
     local.get $uy
     i64.sub
     local.set $ux
    end
    local.get $ux
    i64.const 1
    i64.shl
    local.set $ux
    local.get $ex
    i64.const 1
    i64.sub
    local.set $ex
    br $while-continue|0
   end
  end
  local.get $ux
  local.get $uy
  i64.ge_u
  if
   local.get $ux
   local.get $uy
   i64.eq
   if
    f64.const 0
    local.get $x
    f64.mul
    return
   end
   local.get $ux
   local.get $uy
   i64.sub
   local.set $ux
  end
  local.get $ux
  i64.const 11
  i64.shl
  i64.clz
  local.set $shift
  local.get $ex
  local.get $shift
  i64.sub
  local.set $ex
  local.get $ux
  local.get $shift
  i64.shl
  local.set $ux
  local.get $ex
  i64.const 0
  i64.gt_s
  if
   local.get $ux
   i64.const 1
   i64.const 52
   i64.shl
   i64.sub
   local.set $ux
   local.get $ux
   local.get $ex
   i64.const 52
   i64.shl
   i64.or
   local.set $ux
  else
   local.get $ux
   i64.const 0
   local.get $ex
   i64.sub
   i64.const 1
   i64.add
   i64.shr_u
   local.set $ux
  end
  local.get $ux
  local.get $sx
  i64.const 63
  i64.shl
  i64.or
  f64.reinterpret_i64
  return
 )
 (func $std/mod/check<f64> (param $actual f64) (param $expected f64) (result i32)
  local.get $expected
  local.get $expected
  f64.ne
  if
   local.get $actual
   local.get $actual
   f64.ne
   return
  end
  local.get $expected
  f64.const 0
  f64.eq
  if
   i32.const 1
   f64.convert_i32_u
   local.get $expected
   f64.div
   f64.const 1
   local.get $actual
   f64.div
   f64.eq
   return
  end
  local.get $actual
  local.get $expected
  f64.eq
  return
 )
 (func $std/mod/test_fmod (param $left f64) (param $right f64) (param $expected f64) (result i32)
  local.get $left
  local.get $right
  call $~lib/math/NativeMath.mod
  local.get $expected
  call $std/mod/check<f64>
  if (result i32)
   local.get $left
   local.get $right
   call $std/mod/mod
   local.get $expected
   call $std/mod/check<f64>
  else
   i32.const 0
  end
  return
 )
 (func $~lib/math/NativeMathf.mod (param $x f32) (param $y f32) (result f32)
  (local $ux i32)
  (local $uy i32)
  (local $ex i32)
  (local $ey i32)
  (local $sm i32)
  (local $uy1 i32)
  (local $m f32)
  (local $ux1 i32)
  (local $shift i32)
  local.get $y
  f32.abs
  f32.const 1
  f32.eq
  if
   local.get $x
   local.get $x
   f32.trunc
   f32.sub
   local.get $x
   f32.copysign
   return
  end
  local.get $x
  i32.reinterpret_f32
  local.set $ux
  local.get $y
  i32.reinterpret_f32
  local.set $uy
  local.get $ux
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  local.set $ex
  local.get $uy
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  local.set $ey
  local.get $ux
  i32.const -2147483648
  i32.and
  local.set $sm
  local.get $uy
  i32.const 1
  i32.shl
  local.set $uy1
  local.get $uy1
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $ex
   i32.const 255
   i32.eq
  end
  if (result i32)
   i32.const 1
  else
   local.get $y
   local.get $y
   f32.ne
  end
  if
   local.get $x
   local.get $y
   f32.mul
   local.set $m
   local.get $m
   local.get $m
   f32.div
   return
  end
  local.get $ux
  i32.const 1
  i32.shl
  local.set $ux1
  local.get $ux1
  local.get $uy1
  i32.le_u
  if
   local.get $x
   local.get $ux1
   local.get $uy1
   i32.ne
   f32.convert_i32_u
   f32.mul
   return
  end
  local.get $ex
  i32.eqz
  if
   local.get $ex
   local.get $ux
   i32.const 9
   i32.shl
   i32.clz
   i32.sub
   local.set $ex
   local.get $ux
   i32.const 1
   local.get $ex
   i32.sub
   i32.shl
   local.set $ux
  else
   local.get $ux
   i32.const -1
   i32.const 9
   i32.shr_u
   i32.and
   local.set $ux
   local.get $ux
   i32.const 1
   i32.const 23
   i32.shl
   i32.or
   local.set $ux
  end
  local.get $ey
  i32.eqz
  if
   local.get $ey
   local.get $uy
   i32.const 9
   i32.shl
   i32.clz
   i32.sub
   local.set $ey
   local.get $uy
   i32.const 1
   local.get $ey
   i32.sub
   i32.shl
   local.set $uy
  else
   local.get $uy
   i32.const -1
   i32.const 9
   i32.shr_u
   i32.and
   local.set $uy
   local.get $uy
   i32.const 1
   i32.const 23
   i32.shl
   i32.or
   local.set $uy
  end
  loop $while-continue|0
   local.get $ex
   local.get $ey
   i32.gt_s
   if
    local.get $ux
    local.get $uy
    i32.ge_u
    if
     local.get $ux
     local.get $uy
     i32.eq
     if
      f32.const 0
      local.get $x
      f32.mul
      return
     end
     local.get $ux
     local.get $uy
     i32.sub
     local.set $ux
    end
    local.get $ux
    i32.const 1
    i32.shl
    local.set $ux
    local.get $ex
    i32.const 1
    i32.sub
    local.set $ex
    br $while-continue|0
   end
  end
  local.get $ux
  local.get $uy
  i32.ge_u
  if
   local.get $ux
   local.get $uy
   i32.eq
   if
    f32.const 0
    local.get $x
    f32.mul
    return
   end
   local.get $ux
   local.get $uy
   i32.sub
   local.set $ux
  end
  local.get $ux
  i32.const 8
  i32.shl
  i32.clz
  local.set $shift
  local.get $ex
  local.get $shift
  i32.sub
  local.set $ex
  local.get $ux
  local.get $shift
  i32.shl
  local.set $ux
  local.get $ex
  i32.const 0
  i32.gt_s
  if
   local.get $ux
   i32.const 1
   i32.const 23
   i32.shl
   i32.sub
   local.set $ux
   local.get $ux
   local.get $ex
   i32.const 23
   i32.shl
   i32.or
   local.set $ux
  else
   local.get $ux
   i32.const 0
   local.get $ex
   i32.sub
   i32.const 1
   i32.add
   i32.shr_u
   local.set $ux
  end
  local.get $ux
  local.get $sm
  i32.or
  f32.reinterpret_i32
  return
 )
 (func $std/mod/check<f32> (param $actual f32) (param $expected f32) (result i32)
  local.get $expected
  local.get $expected
  f32.ne
  if
   local.get $actual
   local.get $actual
   f32.ne
   return
  end
  local.get $expected
  f32.const 0
  f32.eq
  if
   i32.const 1
   f32.convert_i32_u
   local.get $expected
   f32.div
   f32.const 1
   local.get $actual
   f32.div
   f32.eq
   return
  end
  local.get $actual
  local.get $expected
  f32.eq
  return
 )
 (func $std/mod/test_fmodf (param $left f32) (param $right f32) (param $expected f32) (result i32)
  local.get $left
  local.get $right
  call $~lib/math/NativeMathf.mod
  local.get $expected
  call $std/mod/check<f32>
  return
 )
 (func $start:std/mod
  f64.const 3
  f64.const 2
  f64.const 1
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 19
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 3
  f64.const -2
  f64.const 1
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 20
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -3
  f64.const 2
  f64.const -1
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -3
  f64.const -2
  f64.const -1
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 3.5
  f64.const 2
  f64.const 1.5
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 23
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 3.5
  f64.const -2
  f64.const 1.5
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 24
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -3.5
  f64.const 2
  f64.const -1.5
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 25
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -3.5
  f64.const -2
  f64.const -1.5
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 26
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 3
  f64.const 2.5
  f64.const 0.5
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 27
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 3
  f64.const -2.5
  f64.const 0.5
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 28
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -3
  f64.const 2.5
  f64.const -0.5
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 29
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -3
  f64.const -2.5
  f64.const -0.5
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 30
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.5
  f64.const 1
  f64.const 0.5
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 31
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.5
  f64.const -1
  f64.const 0.5
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 32
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.5
  f64.const 1
  f64.const -0.5
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 33
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.5
  f64.const -1
  f64.const -0.5
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 34
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.5
  f64.const 1
  f64.const 0.5
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 35
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.5
  f64.const -1
  f64.const 0.5
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 36
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1.5
  f64.const 1
  f64.const -0.5
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 37
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1.5
  f64.const -1
  f64.const -0.5
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 38
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.25
  f64.const 1
  f64.const 0.25
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 39
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.25
  f64.const -1
  f64.const 0.25
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 40
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1.25
  f64.const 1
  f64.const -0.25
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1.25
  f64.const -1
  f64.const -0.25
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 42
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const 1.25
  f64.const 1
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 43
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const -1.25
  f64.const 1
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 44
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const 1.25
  f64.const -1
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 45
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const -1.25
  f64.const -1
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 46
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -13
  f64.const 64
  f64.const -13
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 47
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const 0
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 50
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const 0
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 51
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const -0
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 52
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const -0
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 53
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const 1
  f64.const 0
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 54
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const 1
  f64.const -0
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 55
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const -1
  f64.const 0
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 56
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const -1
  f64.const -0
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 57
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const 0
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 58
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const 0
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 59
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const -0
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 60
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const -0
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 61
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const 0
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 62
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const -0
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 63
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const 1
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 64
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const -1
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 65
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const 0
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 66
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const -0
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 67
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const 1
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 68
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const -1
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 69
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const nan:0x8000000000000
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 70
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const inf
  f64.const 0
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 71
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const inf
  f64.const -0
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 72
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const inf
  f64.neg
  f64.const 0
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 73
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const inf
  f64.neg
  f64.const -0
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 74
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const inf
  f64.const 1
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 75
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const inf
  f64.const -1
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 76
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const inf
  f64.neg
  f64.const 1
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 77
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const inf
  f64.neg
  f64.const -1
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 78
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const 0
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 79
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const -0
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 80
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.neg
  f64.const 0
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 81
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.neg
  f64.const -0
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 82
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const 1
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 83
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const -1
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 84
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.neg
  f64.const 1
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 85
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.neg
  f64.const -1
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 86
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const inf
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 87
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.neg
  f64.const inf
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 88
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const inf
  f64.neg
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 89
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.neg
  f64.const inf
  f64.neg
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 90
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const nan:0x8000000000000
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 91
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.neg
  f64.const nan:0x8000000000000
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 92
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const inf
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 93
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const inf
  f64.neg
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 94
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 3
  f32.const 2
  f32.const 1
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 103
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 3
  f32.const -2
  f32.const 1
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 104
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -3
  f32.const 2
  f32.const -1
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 105
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -3
  f32.const -2
  f32.const -1
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 106
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 3.5
  f32.const 2
  f32.const 1.5
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 107
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 3.5
  f32.const -2
  f32.const 1.5
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 108
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -3.5
  f32.const 2
  f32.const -1.5
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 109
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -3.5
  f32.const -2
  f32.const -1.5
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 110
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 3
  f32.const 2.5
  f32.const 0.5
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 111
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 3
  f32.const -2.5
  f32.const 0.5
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 112
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -3
  f32.const 2.5
  f32.const -0.5
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 113
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -3
  f32.const -2.5
  f32.const -0.5
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 114
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.5
  f32.const 1
  f32.const 0.5
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 115
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.5
  f32.const -1
  f32.const 0.5
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 116
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.5
  f32.const 1
  f32.const -0.5
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 117
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.5
  f32.const -1
  f32.const -0.5
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 118
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.5
  f32.const 1
  f32.const 0.5
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 119
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.5
  f32.const -1
  f32.const 0.5
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 120
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1.5
  f32.const 1
  f32.const -0.5
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 121
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1.5
  f32.const -1
  f32.const -0.5
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 122
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const 0
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 125
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const 0
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 126
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const -0
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 127
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const -0
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 128
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const 0
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 129
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1
  f32.const 0
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 130
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const -0
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 131
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1
  f32.const -0
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 132
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const 0
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 133
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const -0
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 134
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const 1
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 135
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const -1
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 136
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const 0
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 137
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const -0
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 138
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const 1
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 139
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const -1
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 140
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const nan:0x400000
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 141
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const inf
  f32.const 0
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 142
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const inf
  f32.const -0
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 143
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const inf
  f32.neg
  f32.const 0
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 144
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const inf
  f32.neg
  f32.const -0
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 145
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const inf
  f32.const 1
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 146
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1
  f32.const inf
  f32.const -1
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 147
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const inf
  f32.neg
  f32.const 1
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 148
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1
  f32.const inf
  f32.neg
  f32.const -1
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 149
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const 0
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 150
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const -0
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 151
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.neg
  f32.const 0
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 152
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.neg
  f32.const -0
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 153
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const 1
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 154
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const -1
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 155
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.neg
  f32.const 1
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 156
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.neg
  f32.const -1
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 157
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const inf
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 158
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.neg
  f32.const inf
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 159
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const inf
  f32.neg
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 160
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.neg
  f32.const inf
  f32.neg
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 161
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const nan:0x400000
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 162
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.neg
  f32.const nan:0x400000
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 163
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const inf
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 164
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const inf
  f32.neg
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 165
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:std/mod
 )
)
