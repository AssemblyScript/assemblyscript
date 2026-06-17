(module
 (type $0 (func (param f64 f64) (result f64)))
 (type $1 (func))
 (type $2 (func (param f64 f64) (result i32)))
 (type $3 (func (param f64 f64 f64) (result i32)))
 (type $4 (func (param i32 i32 i32 i32)))
 (type $5 (func (param f32 f32) (result f32)))
 (type $6 (func (param f32 f32) (result i32)))
 (type $7 (func (param f32 f32 f32) (result i32)))
 (import "mod" "mod" (func $std/mod/mod (param f64 f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $std/mod/js i32 (i32.const 1))
 (global $~lib/util/dtoa/gPow10Hi (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gPow10Lo (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/POW10_MINOR i32 (i32.const 8))
 (global $~lib/util/dtoa/POW10_MAJOR i32 (i32.const 232))
 (global $~lib/util/dtoa/POW10_FIXUPS i32 (i32.const 600))
 (global $~lib/util/dtoa/DIV10K_EXP i32 (i32.const 40))
 (global $~lib/util/dtoa/DIV10K_SIG i64 (i64.const 109951163))
 (global $~lib/util/dtoa/NEG10K i64 (i64.const 4294957296))
 (global $~lib/util/dtoa/DIV100_EXP i32 (i32.const 19))
 (global $~lib/util/dtoa/DIV100_SIG i64 (i64.const 5243))
 (global $~lib/util/dtoa/NEG100 i64 (i64.const 65436))
 (global $~lib/util/dtoa/DIV10_EXP i32 (i32.const 10))
 (global $~lib/util/dtoa/DIV10_SIG i64 (i64.const 103))
 (global $~lib/util/dtoa/NEG10 i64 (i64.const 246))
 (global $~lib/util/dtoa/ZEROS i64 (i64.const 3472328296227680304))
 (global $~lib/util/dtoa/gBcd (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gBcdLen (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gDigHi (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gDigLo (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gDigNum (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gSig (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gExp (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gLastDigit (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gHasLastDigit (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/DOUBLE_EXP_OFFSET i32 (i32.const 1075))
 (global $~lib/util/dtoa/EXTRA_SHIFT i32 (i32.const 6))
 (global $~lib/util/dtoa/BIASED_HALF i64 (i64.const -9223372036854775802))
 (global $~lib/util/dtoa/DOUBLE_MAX_DIGITS10 i32 (i32.const 17))
 (global $~lib/util/dtoa/MIN_FIXED_DEC_EXP i32 (i32.const -6))
 (global $~lib/util/dtoa/MAX_FIXED_DEC_EXP i32 (i32.const 20))
 (global $~lib/util/dtoa/SCRATCH i32 (i32.const 688))
 (global $~lib/util/dtoa/POW10_FLOAT_HI i32 (i32.const 816))
 (global $~lib/util/dtoa/H37 i32 (i32.const 1432))
 (global $~lib/util/dtoa/FLOAT_EXP_OFFSET i32 (i32.const 150))
 (global $~lib/util/dtoa/FLOAT_BIT i32 (i32.const 36))
 (global $~lib/util/dtoa/FLOAT_ONE_BIAS i64 (i64.const 17179869177))
 (global $~lib/util/dtoa/FLOAT_MAX_DIGITS10 i32 (i32.const 9))
 (global $~lib/memory/__data_end i32 (i32.const 1740))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 34508))
 (global $~lib/memory/__heap_base i32 (i32.const 34508))
 (memory $0 1)
 (data $0 (i32.const 8) "\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\fa\00\00\00\00\00\00@\9c\00\00\00\00\00\00P\c3\00\00\00\00\00\00$\f4\00\00\00\00\00\80\96\98\00\00\00\00\00 \bc\be\00\00\00\00\00(k\ee\00\00\00\00\00\f9\02\95\00\00\00\00@\b7C\ba\00\00\00\00\10\a5\d4\e8\00\00\00\00*\e7\84\91\00\00\00\80\f4 \e6\b5\00\00\00\a01\a9_\e3\00\00\00\04\bf\c9\1b\8e\00\00\00\c5.\bc\a2\b1\00\00@v:k\0b\de\00\00\e8\89\04#\c7\8a\00\00b\ac\c5\ebx\ad\00\80z\17\b7&\d7\d8\00\90\acn2x\86\87\00\b4W\n?\16h\a9\00\a1\ed\cc\ce\1b\c2\d3\a0\84\14@aQY\84\c8\a5\19\90\b9\a5o\a5:\0f \f4\'\8f\cb\ce")
 (data $1 (i32.const 232) "o\1b\8e(\10T\8e\af\daM\e4^\ae\f0\ec\07J\fb\9f\f4\98\'D\b1\9dwA\df\cf\11\cd\99\07\ef\99\85\0b?\fe\b2\15\aa\b4\dc\e6\a7\1f\86c\beZ\06\0b\a5\bc\b4\aaSkuz\07\ed\0f\08\bf,)Ud\7f\b6C\d5\b1\17L\c8;\1a\fb;\efi\c2\87F\b8B\a7\ee@OQ]=\eb\dd\e4PF\1a\12\ba\13\e4labM\f3\92\ea\af(\b6\ef&\e2\bb\8c6U\n\f7\89\04\89\0f`\cb\05\e9\b8\b6\bd!\c9\c1\bb\87\e9\00T\96_\9a\84x\db\8f\bf4\d0\bdr\04R\98\de\'\8a\92\95\00\9am\c1\94\82\17\0f<\05\b7u\00\00\00\00\00\00P\c3\00\00\00\00\00\00\00\00\05\e3L6\12\197\c5\00\00\00\00\00\00(l\d6\aa\80\9d\ef\f0\"\c7\f6~\b9\b7\d2:MBL\c8q\d5m\93\13\c9\ea8\1e\cd\19:\bc\03\1cU\ab\01\80\0c\t\cb\c6,\07\d3\bf\f5\ad\\\a1\90\08\137h\03\cd\10\8cz\c3\87\a8\db6.\ef\07\12\c2\b2\02\cf\bc\f4\03^\e4g\f9\94\c7\85\d7in\f8\06\d1R\ba\be\01\d763\e1|\a0\1c4\a8E\10\d3Q\a0\t\12\11H\de\1e1Vx\85\fa\a6\1e\d5f\a5>\7f\"t*U3\f1\ca\ba\0f)2\d7\96@\adGy\17|\a9t\088\c7\b1\d8J\d9\bc\"x\ae\81R7\18")
 (data $2 (i32.const 600) "?6N\n@\18\00\00\00d\00\00@\00 $\00\00\00\00\00\00\00\0c\80\13\c8\82\1f\e0L^\0f\f60\d7\1b\00\00\00\00\00\00\00\fc\ff\f7\cd\d8\01\82n\d1?\cd@\01%d\db\r\r\00\00\00$\04\14@8qS\b4\1dx\11\00\00\00\00")
 (data $3 (i32.const 688) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $4 (i32.const 816) "p\\\ea{\ce2~\8f\1a\c7C\c6\b0\b7\96\e5\ae\05\03\05\'\c6\ab\b7\bf7\cf\d0\b8\d1\ef\92\fe%\e5\1a\8eO\19\eb2\ebP\e2\a4?\14\bc\f5\88\r\b5P\99v\96!\dbH\bb\1a\c2\bd\f0\b4\15\07\c9{\ce\97\c0]\11l:\96\0b\13\9a\c7\1b\e0\c3V\df\84\f6\06\e3L6\12\197\c5\9e\b5p+\a8\ad\c5\9d\97\"\81E@|o\fc\dfNg\04\cd\c9\f2\c9\e6\0b\b96\d7\07\8f\a1\85\t\94\f8x9?\81:\0f \f4\'\8f\cb\ce\c8\a5\19\90\b9\a5o\a5\a0\84\14@aQY\84\00\a1\ed\cc\ce\1b\c2\d3\00\b4W\n?\16h\a9\00\90\acn2x\86\87\00\80z\17\b7&\d7\d8\00\00b\ac\c5\ebx\ad\00\00\e8\89\04#\c7\8a\00\00@v:k\0b\de\00\00\00\c5.\bc\a2\b1\00\00\00\04\bf\c9\1b\8e\00\00\00\a01\a9_\e3\00\00\00\80\f4 \e6\b5\00\00\00\00*\e7\84\91\00\00\00\00\10\a5\d4\e8\00\00\00\00@\b7C\ba\00\00\00\00\00\f9\02\95\00\00\00\00\00(k\ee\00\00\00\00\00 \bc\be\00\00\00\00\00\80\96\98\00\00\00\00\00\00$\f4\00\00\00\00\00\00P\c3\00\00\00\00\00\00@\9c\00\00\00\00\00\00\00\fa\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\80\cd\cc\cc\cc\cc\cc\cc\cc\0b\d7\a3p=\n\d7\a3<\dfO\8d\97n\12\83,e\19\e2X\17\b7\d1$\84G\1bG\ac\c5\a7\b6il\af\05\bd7\86\bdBz\e5\d5\94\bf\d6\fd\cea\84\11w\cc\ab\98\a5\b46A_p\89\bf\d5\ed\bd\ce\fe\e6\db\ff\aa$\cb\0b\ff\eb\af\cc\88Po\t\cc\bc\8c\14\0e\b4KB\13.\e1\10\d8\\\t5\dc$\b4\da\ac\b0:\f7|\1d\90\\\e1M\c4\be\94\95\e6J\b4\a462\aaw\b8\08]\1d\92\8e\ee\92\93\a6a\95\b6}J\1e\ec\eb\1a\11\92d\08\e5\bc\ef{\datP\a0\1d\97\b2,\f7\ba\80\00\c9\f1(\8a\92\95\00\9am\c1S;uD\cd\14\be\9aR\c5\ee\d3\ae\87\96\f7\db\9dXv%\06\12\c6I~\e0\91\b7\d1t\9e\0e\ca\00\83\f2\b5\87\fd?;\9a5\f5\f7\d2\ca2\fc\14^\f7_B\a2\f5\fcCK,\b3\ce\81\bb\949E\ad\1e\b1\cf")
 (data $5 (i32.const 1432) "\"\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#")
 (data $6 (i32.const 1692) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00s\00t\00d\00/\00m\00o\00d\00.\00t\00s\00\00\00\00\00\00\00\00\00")
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
   i32.const 1712
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
