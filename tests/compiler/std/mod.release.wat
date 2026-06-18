(module
 (type $0 (func))
 (type $1 (func (param i32 i32 i32 i32)))
 (type $2 (func (param f64 f64 f64) (result i32)))
 (type $3 (func (param f32 f32 f32) (result i32)))
 (type $4 (func (param f64 f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "mod" "mod" (func $std/mod/mod (param f64 f64) (result f64)))
 (memory $0 1)
 (data $0 (i32.const 1024) "p\\\ea{\ce2~\8f\1a\c7C\c6\b0\b7\96\e5\ae\05\03\05\'\c6\ab\b7\bf7\cf\d0\b8\d1\ef\92\fe%\e5\1a\8eO\19\eb2\ebP\e2\a4?\14\bc\f5\88\r\b5P\99v\96!\dbH\bb\1a\c2\bd\f0\b4\15\07\c9{\ce\97\c0]\11l:\96\0b\13\9a\c7\1b\e0\c3V\df\84\f6\06\e3L6\12\197\c5\9e\b5p+\a8\ad\c5\9d\97\"\81E@|o\fc\dfNg\04\cd\c9\f2\c9\e6\0b\b96\d7\07\8f\a1\85\t\94\f8x9?\81:\0f \f4\'\8f\cb\ce\c8\a5\19\90\b9\a5o\a5\a0\84\14@aQY\84\00\a1\ed\cc\ce\1b\c2\d3\00\b4W\n?\16h\a9\00\90\acn2x\86\87\00\80z\17\b7&\d7\d8\00\00b\ac\c5\ebx\ad\00\00\e8\89\04#\c7\8a\00\00@v:k\0b\de\00\00\00\c5.\bc\a2\b1\00\00\00\04\bf\c9\1b\8e\00\00\00\a01\a9_\e3\00\00\00\80\f4 \e6\b5\00\00\00\00*\e7\84\91\00\00\00\00\10\a5\d4\e8\00\00\00\00@\b7C\ba\00\00\00\00\00\f9\02\95\00\00\00\00\00(k\ee\00\00\00\00\00 \bc\be\00\00\00\00\00\80\96\98\00\00\00\00\00\00$\f4\00\00\00\00\00\00P\c3\00\00\00\00\00\00@\9c\00\00\00\00\00\00\00\fa\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\80\cd\cc\cc\cc\cc\cc\cc\cc\0b\d7\a3p=\n\d7\a3<\dfO\8d\97n\12\83,e\19\e2X\17\b7\d1$\84G\1bG\ac\c5\a7\b6il\af\05\bd7\86\bdBz\e5\d5\94\bf\d6\fd\cea\84\11w\cc\ab\98\a5\b46A_p\89\bf\d5\ed\bd\ce\fe\e6\db\ff\aa$\cb\0b\ff\eb\af\cc\88Po\t\cc\bc\8c\14\0e\b4KB\13.\e1\10\d8\\\t5\dc$\b4\da\ac\b0:\f7|\1d\90\\\e1M\c4\be\94\95\e6J\b4\a462\aaw\b8\08]\1d\92\8e\ee\92\93\a6a\95\b6}J\1e\ec\eb\1a\11\92d\08\e5\bc\ef{\datP\a0\1d\97\b2,\f7\ba\80\00\c9\f1(\8a\92\95\00\9am\c1S;uD\cd\14\be\9aR\c5\ee\d3\ae\87\96\f7\db\9dXv%\06\12\c6I~\e0\91\b7\d1t\9e\0e\ca\00\83\f2\b5\87\fd?;\9a5\f5\f7\d2\ca2\fc\14^\f7_B\a2\f5\fcCK,\b3\ce\81\bb\949E\ad\1e\b1\cf")
 (data $1 (i32.const 1640) "\"\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#")
 (data $2 (i32.const 1900) ",")
 (data $2.1 (i32.const 1912) "\02\00\00\00\14\00\00\00s\00t\00d\00/\00m\00o\00d\00.\00t\00s")
 (export "mod" (func $std/mod/mod))
 (export "memory" (memory $0))
 (start $~start)
 (func $std/mod/test_fmod (param $0 f64) (param $1 f64) (param $2 f64) (result i32)
  (local $3 i64)
  (local $4 f64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  block $__inlined_func$std/mod/check<f64> (result i32)
   block $__inlined_func$~lib/math/NativeMath.mod (result f64)
    local.get $0
    local.get $0
    f64.trunc
    f64.sub
    local.get $0
    f64.copysign
    local.get $1
    f64.abs
    f64.const 1
    f64.eq
    br_if $__inlined_func$~lib/math/NativeMath.mod
    drop
    local.get $1
    i64.reinterpret_f64
    local.tee $8
    i64.const 52
    i64.shr_u
    i64.const 2047
    i64.and
    local.set $9
    local.get $8
    i64.const 1
    i64.shl
    local.tee $6
    i64.eqz
    local.get $0
    i64.reinterpret_f64
    local.tee $5
    i64.const 52
    i64.shr_u
    i64.const 2047
    i64.and
    local.tee $10
    i64.const 2047
    i64.eq
    i32.or
    local.get $1
    local.get $1
    f64.ne
    i32.or
    if
     local.get $0
     local.get $1
     f64.mul
     local.tee $4
     local.get $4
     f64.div
     br $__inlined_func$~lib/math/NativeMath.mod
    end
    local.get $5
    i64.const 1
    i64.shl
    local.tee $3
    local.get $6
    i64.le_u
    if
     local.get $0
     local.get $3
     local.get $6
     i64.ne
     f64.convert_i32_u
     f64.mul
     br $__inlined_func$~lib/math/NativeMath.mod
    end
    local.get $5
    i64.const 63
    i64.shr_u
    local.set $7
    local.get $10
    i64.eqz
    if (result i64)
     local.get $5
     i64.const 1
     local.get $10
     local.get $5
     i64.const 12
     i64.shl
     i64.clz
     i64.sub
     local.tee $10
     i64.sub
     i64.shl
    else
     local.get $5
     i64.const 4503599627370495
     i64.and
     i64.const 4503599627370496
     i64.or
    end
    local.set $3
    local.get $9
    i64.eqz
    if (result i64)
     local.get $8
     i64.const 1
     local.get $9
     local.get $8
     i64.const 12
     i64.shl
     i64.clz
     i64.sub
     local.tee $9
     i64.sub
     i64.shl
    else
     local.get $8
     i64.const 4503599627370495
     i64.and
     i64.const 4503599627370496
     i64.or
    end
    local.set $5
    loop $while-continue|0
     local.get $9
     local.get $10
     i64.lt_s
     if
      local.get $3
      local.get $5
      i64.ge_u
      if (result i64)
       local.get $0
       f64.const 0
       f64.mul
       local.get $3
       local.get $5
       i64.eq
       br_if $__inlined_func$~lib/math/NativeMath.mod
       drop
       local.get $3
       local.get $5
       i64.sub
      else
       local.get $3
      end
      i64.const 1
      i64.shl
      local.set $3
      local.get $10
      i64.const 1
      i64.sub
      local.set $10
      br $while-continue|0
     end
    end
    local.get $3
    local.get $5
    i64.ge_u
    if
     local.get $0
     f64.const 0
     f64.mul
     local.get $3
     local.get $5
     i64.eq
     br_if $__inlined_func$~lib/math/NativeMath.mod
     drop
     local.get $3
     local.get $5
     i64.sub
     local.set $3
    end
    local.get $10
    local.get $3
    i64.const 11
    i64.shl
    i64.clz
    local.tee $6
    i64.sub
    local.set $5
    local.get $3
    local.get $6
    i64.shl
    local.set $3
    local.get $5
    i64.const 0
    i64.gt_s
    if (result i64)
     local.get $3
     i64.const 4503599627370496
     i64.sub
     local.get $5
     i64.const 52
     i64.shl
     i64.or
    else
     local.get $3
     i64.const 1
     local.get $5
     i64.sub
     i64.shr_u
    end
    local.get $7
    i64.const 63
    i64.shl
    i64.or
    f64.reinterpret_i64
   end
   local.tee $4
   local.get $4
   f64.ne
   local.get $2
   local.get $2
   f64.ne
   br_if $__inlined_func$std/mod/check<f64>
   drop
   f64.const 1
   local.get $2
   f64.div
   f64.const 1
   local.get $4
   f64.div
   f64.eq
   local.get $2
   f64.const 0
   f64.eq
   br_if $__inlined_func$std/mod/check<f64>
   drop
   local.get $2
   local.get $4
   f64.eq
  end
  if (result i32)
   block $__inlined_func$std/mod/check<f64>$1 (result i32)
    local.get $0
    local.get $1
    call $std/mod/mod
    local.tee $0
    local.get $0
    f64.ne
    local.get $2
    local.get $2
    f64.ne
    br_if $__inlined_func$std/mod/check<f64>$1
    drop
    f64.const 1
    local.get $2
    f64.div
    f64.const 1
    local.get $0
    f64.div
    f64.eq
    local.get $2
    f64.const 0
    f64.eq
    br_if $__inlined_func$std/mod/check<f64>$1
    drop
    local.get $0
    local.get $2
    f64.eq
   end
  else
   i32.const 0
  end
 )
 (func $std/mod/test_fmodf (param $0 f32) (param $1 f32) (param $2 f32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $__inlined_func$std/mod/check<f32>$2 (result i32)
   block $__inlined_func$~lib/math/NativeMathf.mod$1 (result f32)
    local.get $0
    local.get $0
    f32.trunc
    f32.sub
    local.get $0
    f32.copysign
    local.get $1
    f32.abs
    f32.const 1
    f32.eq
    br_if $__inlined_func$~lib/math/NativeMathf.mod$1
    drop
    local.get $1
    i32.reinterpret_f32
    local.tee $7
    i32.const 23
    i32.shr_u
    i32.const 255
    i32.and
    local.set $8
    local.get $7
    i32.const 1
    i32.shl
    local.tee $5
    i32.eqz
    local.get $0
    i32.reinterpret_f32
    local.tee $4
    i32.const 23
    i32.shr_u
    i32.const 255
    i32.and
    local.tee $9
    i32.const 255
    i32.eq
    i32.or
    local.get $1
    local.get $1
    f32.ne
    i32.or
    if
     local.get $0
     local.get $1
     f32.mul
     local.tee $0
     local.get $0
     f32.div
     br $__inlined_func$~lib/math/NativeMathf.mod$1
    end
    local.get $4
    i32.const 1
    i32.shl
    local.tee $3
    local.get $5
    i32.le_u
    if
     local.get $0
     local.get $3
     local.get $5
     i32.ne
     f32.convert_i32_u
     f32.mul
     br $__inlined_func$~lib/math/NativeMathf.mod$1
    end
    local.get $4
    i32.const -2147483648
    i32.and
    local.set $6
    local.get $9
    if (result i32)
     local.get $4
     i32.const 8388607
     i32.and
     i32.const 8388608
     i32.or
    else
     local.get $4
     i32.const 1
     local.get $9
     local.get $4
     i32.const 9
     i32.shl
     i32.clz
     i32.sub
     local.tee $9
     i32.sub
     i32.shl
    end
    local.set $3
    local.get $8
    if (result i32)
     local.get $7
     i32.const 8388607
     i32.and
     i32.const 8388608
     i32.or
    else
     local.get $7
     i32.const 1
     local.get $8
     local.get $7
     i32.const 9
     i32.shl
     i32.clz
     i32.sub
     local.tee $8
     i32.sub
     i32.shl
    end
    local.set $4
    loop $while-continue|0
     local.get $8
     local.get $9
     i32.lt_s
     if
      local.get $3
      local.get $4
      i32.ge_u
      if (result i32)
       local.get $0
       f32.const 0
       f32.mul
       local.get $3
       local.get $4
       i32.eq
       br_if $__inlined_func$~lib/math/NativeMathf.mod$1
       drop
       local.get $3
       local.get $4
       i32.sub
      else
       local.get $3
      end
      i32.const 1
      i32.shl
      local.set $3
      local.get $9
      i32.const 1
      i32.sub
      local.set $9
      br $while-continue|0
     end
    end
    local.get $3
    local.get $4
    i32.ge_u
    if
     local.get $0
     f32.const 0
     f32.mul
     local.get $3
     local.get $4
     i32.eq
     br_if $__inlined_func$~lib/math/NativeMathf.mod$1
     drop
     local.get $3
     local.get $4
     i32.sub
     local.set $3
    end
    local.get $9
    local.get $3
    i32.const 8
    i32.shl
    i32.clz
    local.tee $5
    i32.sub
    local.set $4
    local.get $3
    local.get $5
    i32.shl
    local.set $3
    local.get $4
    i32.const 0
    i32.gt_s
    if (result i32)
     local.get $3
     i32.const 8388608
     i32.sub
     local.get $4
     i32.const 23
     i32.shl
     i32.or
    else
     local.get $3
     i32.const 1
     local.get $4
     i32.sub
     i32.shr_u
    end
    local.get $6
    i32.or
    f32.reinterpret_i32
   end
   local.tee $0
   local.get $0
   f32.ne
   local.get $2
   local.get $2
   f32.ne
   br_if $__inlined_func$std/mod/check<f32>$2
   drop
   f32.const 1
   local.get $2
   f32.div
   f32.const 1
   local.get $0
   f32.div
   f32.eq
   local.get $2
   f32.const 0
   f32.eq
   br_if $__inlined_func$std/mod/check<f32>$2
   drop
   local.get $0
   local.get $2
   f32.eq
  end
 )
 (func $~start
  call $start:std/mod
 )
 (func $start:std/mod
  f64.const 3
  f64.const 2
  f64.const 1
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
   i32.const 72
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const -inf
  f64.const 0
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 1920
   i32.const 73
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const -inf
  f64.const -0
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
   i32.const 76
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const -inf
  f64.const 1
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 1920
   i32.const 77
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const -inf
  f64.const -1
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
   i32.const 80
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const 0
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 1920
   i32.const 81
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const -0
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
   i32.const 84
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const 1
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 1920
   i32.const 85
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const -1
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 1920
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
   i32.const 1920
   i32.const 87
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const inf
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 1920
   i32.const 88
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const -inf
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 1920
   i32.const 89
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const -inf
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 1920
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
   i32.const 1920
   i32.const 91
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const nan:0x8000000000000
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 1920
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
   i32.const 1920
   i32.const 93
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const -inf
  f64.const nan:0x8000000000000
  call $std/mod/test_fmod
  i32.eqz
  if
   i32.const 0
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
   i32.const 143
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const -inf
  f32.const 0
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 1920
   i32.const 144
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const -inf
  f32.const -0
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
   i32.const 147
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const -inf
  f32.const 1
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 1920
   i32.const 148
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1
  f32.const -inf
  f32.const -1
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
   i32.const 151
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const 0
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 1920
   i32.const 152
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const -0
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 1920
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
   i32.const 1920
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
   i32.const 1920
   i32.const 155
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const 1
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 1920
   i32.const 156
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const -1
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 1920
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
   i32.const 1920
   i32.const 158
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const inf
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 1920
   i32.const 159
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const -inf
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 1920
   i32.const 160
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const -inf
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 1920
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
   i32.const 1920
   i32.const 162
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const nan:0x400000
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 1920
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
   i32.const 1920
   i32.const 164
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const -inf
  f32.const nan:0x400000
  call $std/mod/test_fmodf
  i32.eqz
  if
   i32.const 0
   i32.const 1920
   i32.const 165
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
)
