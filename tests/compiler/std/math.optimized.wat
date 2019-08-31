(module
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$dddd (func (param f64 f64 f64) (result f64)))
 (type $FUNCSIG$ddi (func (param f64 i32) (result f64)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$if (func (param f32) (result i32)))
 (type $FUNCSIG$ffff (func (param f32 f32 f32) (result f32)))
 (type $FUNCSIG$ffi (func (param f32 i32) (result f32)))
 (type $FUNCSIG$dd (func (param f64) (result f64)))
 (type $FUNCSIG$ff (func (param f32) (result f32)))
 (type $FUNCSIG$ddd (func (param f64 f64) (result f64)))
 (type $FUNCSIG$fff (func (param f32 f32) (result f32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$viiddddd (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iddd (func (param f64 f64 f64) (result i32)))
 (type $FUNCSIG$ifff (func (param f32 f32 f32) (result i32)))
 (type $FUNCSIG$idid (func (param f64 i32 f64) (result i32)))
 (type $FUNCSIG$ifif (func (param f32 i32 f32) (result i32)))
 (type $FUNCSIG$idd (func (param f64 f64) (result i32)))
 (type $FUNCSIG$iff (func (param f32 f32) (result i32)))
 (type $FUNCSIG$idddd (func (param f64 f64 f64 f64) (result i32)))
 (type $FUNCSIG$iffff (func (param f32 f32 f32 f32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (import "Math" "E" (global $~lib/bindings/Math/E f64))
 (import "Math" "LN2" (global $~lib/bindings/Math/LN2 f64))
 (import "Math" "LN10" (global $~lib/bindings/Math/LN10 f64))
 (import "Math" "LOG2E" (global $~lib/bindings/Math/LOG2E f64))
 (import "Math" "PI" (global $~lib/bindings/Math/PI f64))
 (import "Math" "SQRT1_2" (global $~lib/bindings/Math/SQRT1_2 f64))
 (import "Math" "SQRT2" (global $~lib/bindings/Math/SQRT2 f64))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "Math" "abs" (func $~lib/bindings/Math/abs (param f64) (result f64)))
 (import "Math" "acos" (func $~lib/bindings/Math/acos (param f64) (result f64)))
 (import "Math" "acosh" (func $~lib/bindings/Math/acosh (param f64) (result f64)))
 (import "Math" "asin" (func $~lib/bindings/Math/asin (param f64) (result f64)))
 (import "Math" "asinh" (func $~lib/bindings/Math/asinh (param f64) (result f64)))
 (import "Math" "atan" (func $~lib/bindings/Math/atan (param f64) (result f64)))
 (import "Math" "atanh" (func $~lib/bindings/Math/atanh (param f64) (result f64)))
 (import "Math" "atan2" (func $~lib/bindings/Math/atan2 (param f64 f64) (result f64)))
 (import "Math" "cbrt" (func $~lib/bindings/Math/cbrt (param f64) (result f64)))
 (import "Math" "ceil" (func $~lib/bindings/Math/ceil (param f64) (result f64)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (import "Math" "cos" (func $~lib/bindings/Math/cos (param f64) (result f64)))
 (memory $0 1)
 (data (i32.const 8) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00s\00t\00d\00/\00m\00a\00t\00h\00.\00t\00s")
 (data (i32.const 48) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00N\00a\00t\00i\00v\00e\00M\00a\00t\00h\00.\00c\00o\00s")
 (data (i32.const 96) "\c0\00\00\00\01\00\00\00\00\00\00\00\c0\00\00\00n\83\f9\a2\00\00\00\00\d1W\'\fc)\15DN\99\95b\db\c0\dd4\f5\abcQ\feA\90C<:n$\b7a\c5\bb\de\ea.I\06\e0\d2MB\1c\eb\1d\fe\1c\92\d1\t\f55\82\e8>\a7)\b1&p\9c\e9\84D\bb.9\d6\919A~_\b4\8b_\84\9c\f49S\83\ff\97\f8\1f;(\f9\bd\8b\11/\ef\0f\98\05\de\cf~6m\1fm\nZf?FO\b7\t\cb\'\c7\ba\'u-\ea_\9e\f79\07={\f1\e5\eb\b1_\fbk\ea\92R\8aF0\03V\08]\8d\1f \bc\cf\f0\abk{\fca\91\e3\a9\1d6\f4\9a_\85\99e\08\1b\e6^\80\d8\ff\8d@h\a0\14W\15\06\061\'sM")
 (data (i32.const 308) "\01\00\00\00\01")
 (data (i32.const 320) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00)\15DNn\83\f9\a2\c0\dd4\f5\d1W\'\fcA\90C<\99\95b\dba\c5\bb\de\abcQ\fe")
 (data (i32.const 368) "\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\00P\01\00\00P\01\00\00 \00\00\00\04")
 (data (i32.const 400) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s")
 (data (i32.const 440) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00P\00R\00N\00G\00 \00m\00u\00s\00t\00 \00b\00e\00 \00s\00e\00e\00d\00e\00d\00.")
 (global $~lib/math/rempio2_y0 (mut f64) (f64.const 0))
 (global $~lib/math/rempio2_y1 (mut f64) (f64.const 0))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/math/__res128_lo (mut i64) (i64.const 0))
 (global $~lib/math/__res128_hi (mut i64) (i64.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/number/isNaN<f64> (; 13 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.ne
 )
 (func $~lib/number/isFinite<f64> (; 14 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.sub
  f64.const 0
  f64.eq
 )
 (func $~lib/math/NativeMath.scalbn (; 15 ;) (type $FUNCSIG$ddi) (param $0 f64) (param $1 i32) (result f64)
  local.get $1
  i32.const 1023
  i32.gt_s
  if (result f64)
   local.get $0
   f64.const 8988465674311579538646525e283
   f64.mul
   local.set $0
   local.get $1
   i32.const 1023
   i32.sub
   local.tee $1
   i32.const 1023
   i32.gt_s
   if (result f64)
    local.get $1
    i32.const 1023
    i32.sub
    local.tee $1
    i32.const 1023
    local.get $1
    i32.const 1023
    i32.lt_s
    select
    local.set $1
    local.get $0
    f64.const 8988465674311579538646525e283
    f64.mul
   else    
    local.get $0
   end
  else   
   local.get $1
   i32.const -1022
   i32.lt_s
   if (result f64)
    local.get $0
    f64.const 2.004168360008973e-292
    f64.mul
    local.set $0
    local.get $1
    i32.const 969
    i32.add
    local.tee $1
    i32.const -1022
    i32.lt_s
    if (result f64)
     local.get $1
     i32.const 969
     i32.add
     local.tee $1
     i32.const -1022
     local.get $1
     i32.const -1022
     i32.gt_s
     select
     local.set $1
     local.get $0
     f64.const 2.004168360008973e-292
     f64.mul
    else     
     local.get $0
    end
   else    
    local.get $0
   end
  end
  local.get $1
  i64.extend_i32_s
  i64.const 1023
  i64.add
  i64.const 52
  i64.shl
  f64.reinterpret_i64
  f64.mul
 )
 (func $std/math/ulperr (; 16 ;) (type $FUNCSIG$dddd) (param $0 f64) (param $1 f64) (param $2 f64) (result f64)
  (local $3 i32)
  local.get $0
  call $~lib/number/isNaN<f64>
  if (result i32)
   local.get $1
   call $~lib/number/isNaN<f64>
  else   
   i32.const 0
  end
  if
   f64.const 0
   return
  end
  local.get $0
  local.get $1
  f64.eq
  if
   local.get $0
   i64.reinterpret_f64
   i64.const 63
   i64.shr_u
   i32.wrap_i64
   local.get $0
   local.get $0
   f64.eq
   i32.and
   i32.const 0
   i32.ne
   local.get $1
   i64.reinterpret_f64
   i64.const 63
   i64.shr_u
   i32.wrap_i64
   local.get $1
   local.get $1
   f64.eq
   i32.and
   i32.const 0
   i32.ne
   i32.eq
   if
    local.get $2
    return
   end
   f64.const inf
   return
  end
  local.get $0
  call $~lib/number/isFinite<f64>
  i32.eqz
  if
   local.get $1
   f64.const 0.5
   f64.mul
   local.set $1
   f64.const 8988465674311579538646525e283
   local.get $0
   f64.copysign
   local.set $0
  end
  local.get $0
  local.get $1
  f64.sub
  local.get $1
  i64.reinterpret_f64
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  i32.wrap_i64
  local.tee $3
  i32.eqz
  if
   local.get $3
   i32.const 1
   i32.add
   local.set $3
  end
  i32.const 0
  local.get $3
  i32.const -1075
  i32.add
  i32.sub
  call $~lib/math/NativeMath.scalbn
  local.get $2
  f64.add
 )
 (func $std/math/check<f64> (; 17 ;) (type $FUNCSIG$iddd) (param $0 f64) (param $1 f64) (param $2 f64) (result i32)
  local.get $0
  local.get $1
  f64.eq
  if
   i32.const 1
   return
  end
  local.get $1
  call $~lib/number/isNaN<f64>
  if
   local.get $0
   call $~lib/number/isNaN<f64>
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $std/math/ulperr
  f64.abs
  f64.const 1.5
  f64.ge
  if
   i32.const 0
   return
  end
  i32.const 1
 )
 (func $~lib/number/isNaN<f32> (; 18 ;) (type $FUNCSIG$if) (param $0 f32) (result i32)
  local.get $0
  local.get $0
  f32.ne
 )
 (func $~lib/math/NativeMathf.scalbn (; 19 ;) (type $FUNCSIG$ffi) (param $0 f32) (param $1 i32) (result f32)
  local.get $1
  i32.const 127
  i32.gt_s
  if (result f32)
   local.get $0
   f32.const 1701411834604692317316873e14
   f32.mul
   local.set $0
   local.get $1
   i32.const 127
   i32.sub
   local.tee $1
   i32.const 127
   i32.gt_s
   if (result f32)
    local.get $1
    i32.const 127
    i32.sub
    local.tee $1
    i32.const 127
    local.get $1
    i32.const 127
    i32.lt_s
    select
    local.set $1
    local.get $0
    f32.const 1701411834604692317316873e14
    f32.mul
   else    
    local.get $0
   end
  else   
   local.get $1
   i32.const -126
   i32.lt_s
   if (result f32)
    local.get $0
    f32.const 1.9721522630525295e-31
    f32.mul
    local.set $0
    local.get $1
    i32.const 102
    i32.add
    local.tee $1
    i32.const -126
    i32.lt_s
    if (result f32)
     local.get $1
     i32.const 102
     i32.add
     local.tee $1
     i32.const -126
     local.get $1
     i32.const -126
     i32.gt_s
     select
     local.set $1
     local.get $0
     f32.const 1.9721522630525295e-31
     f32.mul
    else     
     local.get $0
    end
   else    
    local.get $0
   end
  end
  local.get $1
  i32.const 127
  i32.add
  i32.const 23
  i32.shl
  f32.reinterpret_i32
  f32.mul
 )
 (func $std/math/ulperrf (; 20 ;) (type $FUNCSIG$ffff) (param $0 f32) (param $1 f32) (param $2 f32) (result f32)
  (local $3 i32)
  local.get $0
  call $~lib/number/isNaN<f32>
  if (result i32)
   local.get $1
   call $~lib/number/isNaN<f32>
  else   
   i32.const 0
  end
  if
   f32.const 0
   return
  end
  local.get $0
  local.get $1
  f32.eq
  if
   local.get $0
   i32.reinterpret_f32
   i32.const 31
   i32.shr_u
   local.get $0
   local.get $0
   f32.eq
   i32.and
   i32.const 0
   i32.ne
   local.get $1
   i32.reinterpret_f32
   i32.const 31
   i32.shr_u
   local.get $1
   local.get $1
   f32.eq
   i32.and
   i32.const 0
   i32.ne
   i32.eq
   if
    local.get $2
    return
   end
   f32.const inf
   return
  end
  local.get $0
  local.get $0
  f32.sub
  f32.const 0
  f32.ne
  if
   local.get $1
   f32.const 0.5
   f32.mul
   local.set $1
   f32.const 1701411834604692317316873e14
   local.get $0
   f32.copysign
   local.set $0
  end
  local.get $0
  local.get $1
  f32.sub
  local.get $1
  i32.reinterpret_f32
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  local.tee $3
  i32.eqz
  if
   local.get $3
   i32.const 1
   i32.add
   local.set $3
  end
  i32.const 0
  local.get $3
  i32.const -150
  i32.add
  i32.sub
  call $~lib/math/NativeMathf.scalbn
  local.get $2
  f32.add
 )
 (func $std/math/check<f32> (; 21 ;) (type $FUNCSIG$ifff) (param $0 f32) (param $1 f32) (param $2 f32) (result i32)
  local.get $0
  local.get $1
  f32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  call $~lib/number/isNaN<f32>
  if
   local.get $0
   call $~lib/number/isNaN<f32>
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $std/math/ulperrf
  f32.abs
  f32.const 1.5
  f32.ge
  if
   i32.const 0
   return
  end
  i32.const 1
 )
 (func $std/math/test_scalbn (; 22 ;) (type $FUNCSIG$idid) (param $0 f64) (param $1 i32) (param $2 f64) (result i32)
  local.get $0
  local.get $1
  call $~lib/math/NativeMath.scalbn
  local.get $2
  f64.const 0
  call $std/math/check<f64>
 )
 (func $std/math/test_scalbnf (; 23 ;) (type $FUNCSIG$ifif) (param $0 f32) (param $1 i32) (param $2 f32) (result i32)
  local.get $0
  local.get $1
  call $~lib/math/NativeMathf.scalbn
  local.get $2
  f32.const 0
  call $std/math/check<f32>
 )
 (func $std/math/test_abs (; 24 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
  local.get $0
  f64.abs
  local.get $1
  f64.const 0
  call $std/math/check<f64>
  if (result i32)
   local.get $0
   call $~lib/bindings/Math/abs
   local.get $1
   f64.const 0
   call $std/math/check<f64>
  else   
   i32.const 0
  end
 )
 (func $std/math/test_absf (; 25 ;) (type $FUNCSIG$iff) (param $0 f32) (param $1 f32) (result i32)
  local.get $0
  f32.abs
  local.get $1
  f32.const 0
  call $std/math/check<f32>
 )
 (func $~lib/math/R (; 26 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  f64.const 0.16666666666666666
  local.get $0
  f64.const -0.3255658186224009
  local.get $0
  f64.const 0.20121253213486293
  local.get $0
  f64.const -0.04005553450067941
  local.get $0
  f64.const 7.915349942898145e-04
  local.get $0
  f64.const 3.479331075960212e-05
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.const 1
  local.get $0
  f64.const -2.403394911734414
  local.get $0
  f64.const 2.0209457602335057
  local.get $0
  f64.const -0.6882839716054533
  local.get $0
  f64.const 0.07703815055590194
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.div
 )
 (func $~lib/math/NativeMath.acos (; 27 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  local.get $0
  i64.reinterpret_f64
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $3
  i32.const 2147483647
  i32.and
  local.tee $2
  i32.const 1072693248
  i32.ge_u
  if
   local.get $0
   i64.reinterpret_f64
   i32.wrap_i64
   local.get $2
   i32.const 1072693248
   i32.sub
   i32.or
   i32.eqz
   if
    local.get $3
    i32.const 31
    i32.shr_u
    if
     f64.const 3.141592653589793
     return
    end
    f64.const 0
    return
   end
   f64.const 0
   local.get $0
   local.get $0
   f64.sub
   f64.div
   return
  end
  local.get $2
  i32.const 1071644672
  i32.lt_u
  if
   local.get $2
   i32.const 1012924416
   i32.le_u
   if
    f64.const 1.5707963267948966
    return
   end
   f64.const 1.5707963267948966
   local.get $0
   f64.const 6.123233995736766e-17
   local.get $0
   local.get $0
   local.get $0
   f64.mul
   call $~lib/math/R
   f64.mul
   f64.sub
   f64.sub
   f64.sub
   return
  end
  local.get $3
  i32.const 31
  i32.shr_u
  if
   f64.const 2
   f64.const 1.5707963267948966
   f64.const 0.5
   local.get $0
   f64.const 0.5
   f64.mul
   f64.add
   local.tee $0
   f64.sqrt
   local.tee $1
   local.get $0
   call $~lib/math/R
   local.get $1
   f64.mul
   f64.const 6.123233995736766e-17
   f64.sub
   f64.add
   f64.sub
   f64.mul
   return
  end
  f64.const 2
  f64.const 0.5
  local.get $0
  f64.const 0.5
  f64.mul
  f64.sub
  local.tee $1
  f64.sqrt
  local.tee $4
  i64.reinterpret_f64
  i64.const -4294967296
  i64.and
  f64.reinterpret_i64
  local.tee $0
  local.get $1
  call $~lib/math/R
  local.get $4
  f64.mul
  local.get $1
  local.get $0
  local.get $0
  f64.mul
  f64.sub
  local.get $4
  local.get $0
  f64.add
  f64.div
  f64.add
  f64.add
  f64.mul
 )
 (func $std/math/test_acos (; 28 ;) (type $FUNCSIG$iddd) (param $0 f64) (param $1 f64) (param $2 f64) (result i32)
  local.get $0
  call $~lib/math/NativeMath.acos
  local.get $1
  local.get $2
  call $std/math/check<f64>
  if (result i32)
   local.get $0
   call $~lib/bindings/Math/acos
   local.get $1
   local.get $2
   call $std/math/check<f64>
  else   
   i32.const 0
  end
 )
 (func $~lib/math/Rf (; 29 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  f32.const 0.16666586697101593
  local.get $0
  f32.const -0.04274342209100723
  local.get $0
  f32.const -0.008656363002955914
  f32.mul
  f32.add
  f32.mul
  f32.add
  f32.mul
  f32.const 1
  local.get $0
  f32.const -0.7066296339035034
  f32.mul
  f32.add
  f32.div
 )
 (func $~lib/math/NativeMathf.acos (; 30 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  local.get $0
  i32.reinterpret_f32
  local.tee $3
  i32.const 2147483647
  i32.and
  local.tee $2
  i32.const 1065353216
  i32.ge_u
  if
   local.get $2
   i32.const 1065353216
   i32.eq
   if
    local.get $3
    i32.const 31
    i32.shr_u
    if
     f32.const 3.141592502593994
     return
    end
    f32.const 0
    return
   end
   f32.const 0
   local.get $0
   local.get $0
   f32.sub
   f32.div
   return
  end
  local.get $2
  i32.const 1056964608
  i32.lt_u
  if
   local.get $2
   i32.const 847249408
   i32.le_u
   if
    f32.const 1.570796251296997
    return
   end
   f32.const 1.570796251296997
   local.get $0
   f32.const 7.549789415861596e-08
   local.get $0
   local.get $0
   local.get $0
   f32.mul
   call $~lib/math/Rf
   f32.mul
   f32.sub
   f32.sub
   f32.sub
   return
  end
  local.get $3
  i32.const 31
  i32.shr_u
  if
   f32.const 2
   f32.const 1.570796251296997
   f32.const 0.5
   local.get $0
   f32.const 0.5
   f32.mul
   f32.add
   local.tee $0
   f32.sqrt
   local.tee $1
   local.get $0
   call $~lib/math/Rf
   local.get $1
   f32.mul
   f32.const 7.549789415861596e-08
   f32.sub
   f32.add
   f32.sub
   f32.mul
   return
  end
  f32.const 2
  f32.const 0.5
  local.get $0
  f32.const 0.5
  f32.mul
  f32.sub
  local.tee $1
  f32.sqrt
  local.tee $4
  i32.reinterpret_f32
  i32.const -4096
  i32.and
  f32.reinterpret_i32
  local.tee $0
  local.get $1
  call $~lib/math/Rf
  local.get $4
  f32.mul
  local.get $1
  local.get $0
  local.get $0
  f32.mul
  f32.sub
  local.get $4
  local.get $0
  f32.add
  f32.div
  f32.add
  f32.add
  f32.mul
 )
 (func $std/math/test_acosf (; 31 ;) (type $FUNCSIG$ifff) (param $0 f32) (param $1 f32) (param $2 f32) (result i32)
  local.get $0
  call $~lib/math/NativeMathf.acos
  local.get $1
  local.get $2
  call $std/math/check<f32>
 )
 (func $~lib/math/NativeMath.log1p (; 32 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 i64)
  (local $7 f64)
  i32.const 1
  local.set $3
  local.get $0
  i64.reinterpret_f64
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $2
  i32.const 1071284858
  i32.lt_u
  if (result i32)
   i32.const 1
  else   
   local.get $2
   i32.const 31
   i32.shr_u
  end
  if
   local.get $2
   i32.const -1074790400
   i32.ge_u
   if
    local.get $0
    f64.const -1
    f64.eq
    if
     local.get $0
     f64.const 0
     f64.div
     return
    end
    local.get $0
    local.get $0
    f64.sub
    f64.const 0
    f64.div
    return
   end
   local.get $2
   i32.const 1
   i32.shl
   i32.const 2034237440
   i32.lt_u
   if
    local.get $0
    return
   end
   local.get $2
   i32.const -1076707644
   i32.le_u
   if
    i32.const 0
    local.set $3
    local.get $0
    local.set $1
   end
  else   
   local.get $2
   i32.const 2146435072
   i32.ge_u
   if
    local.get $0
    return
   end
  end
  local.get $3
  if
   f64.const 1
   local.get $0
   f64.add
   i64.reinterpret_f64
   local.tee $6
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   i32.const 614242
   i32.add
   local.tee $2
   i32.const 20
   i32.shr_u
   i32.const 1023
   i32.sub
   local.tee $3
   i32.const 54
   i32.lt_s
   if (result f64)
    local.get $6
    f64.reinterpret_i64
    local.set $1
    f64.const 1
    local.get $1
    local.get $0
    f64.sub
    f64.sub
    local.get $0
    local.get $1
    f64.const 1
    f64.sub
    f64.sub
    local.get $3
    i32.const 2
    i32.ge_s
    select
    local.get $1
    f64.div
   else    
    f64.const 0
   end
   local.set $5
   local.get $6
   i64.const 4294967295
   i64.and
   local.get $2
   i32.const 1048575
   i32.and
   i32.const 1072079006
   i32.add
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   f64.reinterpret_i64
   f64.const 1
   f64.sub
   local.set $1
  end
  local.get $1
  f64.const 2
  local.get $1
  f64.add
  f64.div
  local.tee $4
  local.get $4
  f64.mul
  local.tee $7
  local.get $7
  f64.mul
  local.set $0
  local.get $4
  f64.const 0.5
  local.get $1
  f64.mul
  local.get $1
  f64.mul
  local.tee $4
  local.get $7
  f64.const 0.6666666666666735
  local.get $0
  f64.const 0.2857142874366239
  local.get $0
  f64.const 0.1818357216161805
  local.get $0
  f64.const 0.14798198605116586
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.get $0
  f64.const 0.3999999999940942
  local.get $0
  f64.const 0.22222198432149784
  local.get $0
  f64.const 0.15313837699209373
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.add
  f64.mul
  local.get $3
  f64.convert_i32_s
  local.tee $0
  f64.const 1.9082149292705877e-10
  f64.mul
  local.get $5
  f64.add
  f64.add
  local.get $4
  f64.sub
  local.get $1
  f64.add
  local.get $0
  f64.const 0.6931471803691238
  f64.mul
  f64.add
 )
 (func $~lib/math/NativeMath.log (; 33 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i64)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  (local $6 f64)
  local.get $0
  i64.reinterpret_f64
  local.tee $2
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $1
  i32.const 1048576
  i32.lt_u
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 31
   i32.shr_u
  end
  if
   local.get $2
   i64.const 1
   i64.shl
   i64.const 0
   i64.eq
   if
    f64.const -1
    local.get $0
    local.get $0
    f64.mul
    f64.div
    return
   end
   local.get $1
   i32.const 31
   i32.shr_u
   if
    local.get $0
    local.get $0
    f64.sub
    f64.const 0
    f64.div
    return
   end
   i32.const -54
   local.set $5
   local.get $0
   f64.const 18014398509481984
   f64.mul
   i64.reinterpret_f64
   local.tee $2
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   local.set $1
  else   
   local.get $1
   i32.const 2146435072
   i32.ge_u
   if
    local.get $0
    return
   else    
    local.get $2
    i64.const 32
    i64.shl
    i64.const 0
    i64.eq
    i32.const 0
    local.get $1
    i32.const 1072693248
    i32.eq
    select
    if
     f64.const 0
     return
    end
   end
  end
  local.get $2
  i64.const 4294967295
  i64.and
  local.get $1
  i32.const 614242
  i32.add
  local.tee $1
  i32.const 1048575
  i32.and
  i32.const 1072079006
  i32.add
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  f64.reinterpret_i64
  f64.const 1
  f64.sub
  local.tee $3
  f64.const 2
  local.get $3
  f64.add
  f64.div
  local.tee $4
  local.get $4
  f64.mul
  local.tee $6
  local.get $6
  f64.mul
  local.set $0
  local.get $4
  f64.const 0.5
  local.get $3
  f64.mul
  local.get $3
  f64.mul
  local.tee $4
  local.get $6
  f64.const 0.6666666666666735
  local.get $0
  f64.const 0.2857142874366239
  local.get $0
  f64.const 0.1818357216161805
  local.get $0
  f64.const 0.14798198605116586
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.get $0
  f64.const 0.3999999999940942
  local.get $0
  f64.const 0.22222198432149784
  local.get $0
  f64.const 0.15313837699209373
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.add
  f64.mul
  local.get $1
  i32.const 20
  i32.shr_s
  i32.const 1023
  i32.sub
  local.get $5
  i32.add
  local.tee $1
  f64.convert_i32_s
  f64.const 1.9082149292705877e-10
  f64.mul
  f64.add
  local.get $4
  f64.sub
  local.get $3
  f64.add
  local.get $1
  f64.convert_i32_s
  f64.const 0.6931471803691238
  f64.mul
  f64.add
 )
 (func $~lib/math/NativeMath.acosh (; 34 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  local.get $0
  i64.reinterpret_f64
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.tee $1
  i64.const 1024
  i64.lt_u
  if
   local.get $0
   f64.const 1
   f64.sub
   local.tee $0
   local.get $0
   local.get $0
   f64.mul
   f64.const 2
   local.get $0
   f64.mul
   f64.add
   f64.sqrt
   f64.add
   call $~lib/math/NativeMath.log1p
   return
  end
  local.get $1
  i64.const 1049
  i64.lt_u
  if
   f64.const 2
   local.get $0
   f64.mul
   f64.const 1
   local.get $0
   local.get $0
   local.get $0
   f64.mul
   f64.const 1
   f64.sub
   f64.sqrt
   f64.add
   f64.div
   f64.sub
   call $~lib/math/NativeMath.log
   return
  end
  local.get $0
  call $~lib/math/NativeMath.log
  f64.const 0.6931471805599453
  f64.add
 )
 (func $std/math/test_acosh (; 35 ;) (type $FUNCSIG$iddd) (param $0 f64) (param $1 f64) (param $2 f64) (result i32)
  local.get $0
  call $~lib/math/NativeMath.acosh
  local.get $1
  local.get $2
  call $std/math/check<f64>
  if (result i32)
   local.get $0
   call $~lib/bindings/Math/acosh
   local.get $1
   local.get $2
   call $std/math/check<f64>
  else   
   i32.const 0
  end
 )
 (func $~lib/math/NativeMathf.log1p (; 36 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  i32.const 1
  local.set $3
  local.get $0
  i32.reinterpret_f32
  local.tee $2
  i32.const 1054086096
  i32.lt_u
  if (result i32)
   i32.const 1
  else   
   local.get $2
   i32.const 31
   i32.shr_u
  end
  if
   local.get $2
   i32.const -1082130432
   i32.ge_u
   if
    local.get $0
    f32.const -1
    f32.eq
    if
     local.get $0
     f32.const 0
     f32.div
     return
    end
    local.get $0
    local.get $0
    f32.sub
    f32.const 0
    f32.div
    return
   end
   local.get $2
   i32.const 1
   i32.shl
   i32.const 1728053248
   i32.lt_u
   if
    local.get $0
    return
   end
   local.get $2
   i32.const -1097468391
   i32.le_u
   if
    i32.const 0
    local.set $3
    local.get $0
    local.set $1
   end
  else   
   local.get $2
   i32.const 2139095040
   i32.ge_u
   if
    local.get $0
    return
   end
  end
  local.get $3
  if
   f32.const 1
   local.get $0
   f32.add
   local.tee $1
   i32.reinterpret_f32
   i32.const 4913933
   i32.add
   local.tee $2
   i32.const 23
   i32.shr_u
   i32.const 127
   i32.sub
   local.tee $3
   i32.const 25
   i32.lt_s
   if (result f32)
    f32.const 1
    local.get $1
    local.get $0
    f32.sub
    f32.sub
    local.get $0
    local.get $1
    f32.const 1
    f32.sub
    f32.sub
    local.get $3
    i32.const 2
    i32.ge_s
    select
    local.get $1
    f32.div
   else    
    f32.const 0
   end
   local.set $5
   local.get $2
   i32.const 8388607
   i32.and
   i32.const 1060439283
   i32.add
   f32.reinterpret_i32
   f32.const 1
   f32.sub
   local.set $1
  end
  local.get $1
  f32.const 2
  local.get $1
  f32.add
  f32.div
  local.tee $4
  local.get $4
  f32.mul
  local.tee $6
  local.get $6
  f32.mul
  local.set $0
  local.get $4
  f32.const 0.5
  local.get $1
  f32.mul
  local.get $1
  f32.mul
  local.tee $4
  local.get $6
  f32.const 0.6666666269302368
  local.get $0
  f32.const 0.2849878668785095
  f32.mul
  f32.add
  f32.mul
  local.get $0
  f32.const 0.40000972151756287
  local.get $0
  f32.const 0.24279078841209412
  f32.mul
  f32.add
  f32.mul
  f32.add
  f32.add
  f32.mul
  local.get $3
  f32.convert_i32_s
  local.tee $0
  f32.const 9.05800061445916e-06
  f32.mul
  local.get $5
  f32.add
  f32.add
  local.get $4
  f32.sub
  local.get $1
  f32.add
  local.get $0
  f32.const 0.6931381225585938
  f32.mul
  f32.add
 )
 (func $~lib/math/NativeMathf.log (; 37 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 f32)
  local.get $0
  i32.reinterpret_f32
  local.tee $1
  i32.const 8388608
  i32.lt_u
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 31
   i32.shr_u
  end
  if
   local.get $1
   i32.const 1
   i32.shl
   i32.eqz
   if
    f32.const -1
    local.get $0
    local.get $0
    f32.mul
    f32.div
    return
   end
   local.get $1
   i32.const 31
   i32.shr_u
   if
    local.get $0
    local.get $0
    f32.sub
    f32.const 0
    f32.div
    return
   end
   i32.const -25
   local.set $4
   local.get $0
   f32.const 33554432
   f32.mul
   i32.reinterpret_f32
   local.set $1
  else   
   local.get $1
   i32.const 2139095040
   i32.ge_u
   if
    local.get $0
    return
   else    
    local.get $1
    i32.const 1065353216
    i32.eq
    if
     f32.const 0
     return
    end
   end
  end
  local.get $1
  i32.const 4913933
  i32.add
  local.tee $1
  i32.const 8388607
  i32.and
  i32.const 1060439283
  i32.add
  f32.reinterpret_i32
  f32.const 1
  f32.sub
  local.tee $0
  f32.const 2
  local.get $0
  f32.add
  f32.div
  local.tee $3
  local.get $3
  f32.mul
  local.tee $5
  local.get $5
  f32.mul
  local.set $2
  local.get $3
  f32.const 0.5
  local.get $0
  f32.mul
  local.get $0
  f32.mul
  local.tee $3
  local.get $5
  f32.const 0.6666666269302368
  local.get $2
  f32.const 0.2849878668785095
  f32.mul
  f32.add
  f32.mul
  local.get $2
  f32.const 0.40000972151756287
  local.get $2
  f32.const 0.24279078841209412
  f32.mul
  f32.add
  f32.mul
  f32.add
  f32.add
  f32.mul
  local.get $1
  i32.const 23
  i32.shr_s
  i32.const 127
  i32.sub
  local.get $4
  i32.add
  f32.convert_i32_s
  local.tee $2
  f32.const 9.05800061445916e-06
  f32.mul
  f32.add
  local.get $3
  f32.sub
  local.get $0
  f32.add
  local.get $2
  f32.const 0.6931381225585938
  f32.mul
  f32.add
 )
 (func $~lib/math/NativeMathf.acosh (; 38 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  local.get $0
  i32.reinterpret_f32
  i32.const 2147483647
  i32.and
  local.tee $1
  i32.const 1073741824
  i32.lt_u
  if
   local.get $0
   f32.const 1
   f32.sub
   local.tee $0
   local.get $0
   local.get $0
   f32.const 2
   f32.add
   f32.mul
   f32.sqrt
   f32.add
   call $~lib/math/NativeMathf.log1p
   return
  end
  local.get $1
  i32.const 1166016512
  i32.lt_u
  if
   f32.const 2
   local.get $0
   f32.mul
   f32.const 1
   local.get $0
   local.get $0
   local.get $0
   f32.mul
   f32.const 1
   f32.sub
   f32.sqrt
   f32.add
   f32.div
   f32.sub
   call $~lib/math/NativeMathf.log
   return
  end
  local.get $0
  call $~lib/math/NativeMathf.log
  f32.const 0.6931471824645996
  f32.add
 )
 (func $std/math/test_acoshf (; 39 ;) (type $FUNCSIG$ifff) (param $0 f32) (param $1 f32) (param $2 f32) (result i32)
  local.get $0
  call $~lib/math/NativeMathf.acosh
  local.get $1
  local.get $2
  call $std/math/check<f32>
 )
 (func $~lib/math/NativeMath.asin (; 40 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  local.get $0
  i64.reinterpret_f64
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $4
  i32.const 2147483647
  i32.and
  local.tee $2
  i32.const 1072693248
  i32.ge_u
  if
   local.get $0
   i64.reinterpret_f64
   i32.wrap_i64
   local.get $2
   i32.const 1072693248
   i32.sub
   i32.or
   i32.eqz
   if
    local.get $0
    f64.const 1.5707963267948966
    f64.mul
    f64.const 7.52316384526264e-37
    f64.add
    return
   end
   f64.const 0
   local.get $0
   local.get $0
   f64.sub
   f64.div
   return
  end
  local.get $2
  i32.const 1071644672
  i32.lt_u
  if
   local.get $2
   i32.const 1048576
   i32.ge_u
   i32.const 0
   local.get $2
   i32.const 1045430272
   i32.lt_u
   select
   if
    local.get $0
    return
   end
   local.get $0
   local.get $0
   local.get $0
   local.get $0
   f64.mul
   call $~lib/math/R
   f64.mul
   f64.add
   return
  end
  f64.const 0.5
  local.get $0
  f64.abs
  f64.const 0.5
  f64.mul
  f64.sub
  local.tee $1
  f64.sqrt
  local.set $0
  local.get $1
  call $~lib/math/R
  local.set $3
  local.get $2
  i32.const 1072640819
  i32.ge_u
  if (result f64)
   f64.const 1.5707963267948966
   f64.const 2
   local.get $0
   local.get $0
   local.get $3
   f64.mul
   f64.add
   f64.mul
   f64.const 6.123233995736766e-17
   f64.sub
   f64.sub
  else   
   f64.const 0.7853981633974483
   f64.const 2
   local.get $0
   f64.mul
   local.get $3
   f64.mul
   f64.const 6.123233995736766e-17
   f64.const 2
   local.get $1
   local.get $0
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.tee $1
   local.get $1
   f64.mul
   f64.sub
   local.get $0
   local.get $1
   f64.add
   f64.div
   f64.mul
   f64.sub
   f64.sub
   f64.const 0.7853981633974483
   f64.const 2
   local.get $1
   f64.mul
   f64.sub
   f64.sub
   f64.sub
  end
  local.set $0
  local.get $4
  i32.const 31
  i32.shr_u
  if
   local.get $0
   f64.neg
   return
  end
  local.get $0
 )
 (func $std/math/test_asin (; 41 ;) (type $FUNCSIG$iddd) (param $0 f64) (param $1 f64) (param $2 f64) (result i32)
  local.get $0
  call $~lib/math/NativeMath.asin
  local.get $1
  local.get $2
  call $std/math/check<f64>
  if (result i32)
   local.get $0
   call $~lib/bindings/Math/asin
   local.get $1
   local.get $2
   call $std/math/check<f64>
  else   
   i32.const 0
  end
 )
 (func $~lib/math/NativeMathf.asin (; 42 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f64)
  local.get $0
  i32.reinterpret_f32
  i32.const 2147483647
  i32.and
  local.tee $1
  i32.const 1065353216
  i32.ge_u
  if
   local.get $1
   i32.const 1065353216
   i32.eq
   if
    local.get $0
    f32.const 1.5707963705062866
    f32.mul
    f32.const 7.52316384526264e-37
    f32.add
    return
   end
   f32.const 0
   local.get $0
   local.get $0
   f32.sub
   f32.div
   return
  end
  local.get $1
  i32.const 1056964608
  i32.lt_u
  if
   local.get $1
   i32.const 8388608
   i32.ge_u
   i32.const 0
   local.get $1
   i32.const 964689920
   i32.lt_u
   select
   if
    local.get $0
    return
   end
   local.get $0
   local.get $0
   local.get $0
   local.get $0
   f32.mul
   call $~lib/math/Rf
   f32.mul
   f32.add
   return
  end
  f64.const 1.5707963705062866
  f64.const 2
  f32.const 0.5
  local.get $0
  f32.abs
  f32.const 0.5
  f32.mul
  f32.sub
  local.tee $2
  f64.promote_f32
  f64.sqrt
  local.tee $3
  local.get $3
  local.get $2
  call $~lib/math/Rf
  f64.promote_f32
  f64.mul
  f64.add
  f64.mul
  f64.sub
  f32.demote_f64
  local.get $0
  f32.copysign
 )
 (func $std/math/test_asinf (; 43 ;) (type $FUNCSIG$ifff) (param $0 f32) (param $1 f32) (param $2 f32) (result i32)
  local.get $0
  call $~lib/math/NativeMathf.asin
  local.get $1
  local.get $2
  call $std/math/check<f32>
 )
 (func $~lib/math/NativeMath.asinh (; 44 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 i64)
  local.get $0
  i64.reinterpret_f64
  local.tee $2
  i64.const 9223372036854775807
  i64.and
  f64.reinterpret_i64
  local.set $1
  local.get $2
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.tee $2
  i64.const 1049
  i64.ge_u
  if (result f64)
   local.get $1
   call $~lib/math/NativeMath.log
   f64.const 0.6931471805599453
   f64.add
  else   
   local.get $2
   i64.const 1024
   i64.ge_u
   if (result f64)
    f64.const 2
    local.get $1
    f64.mul
    f64.const 1
    local.get $1
    local.get $1
    f64.mul
    f64.const 1
    f64.add
    f64.sqrt
    local.get $1
    f64.add
    f64.div
    f64.add
    call $~lib/math/NativeMath.log
   else    
    local.get $2
    i64.const 997
    i64.ge_u
    if (result f64)
     local.get $1
     local.get $1
     local.get $1
     f64.mul
     local.tee $1
     local.get $1
     f64.const 1
     f64.add
     f64.sqrt
     f64.const 1
     f64.add
     f64.div
     f64.add
     call $~lib/math/NativeMath.log1p
    else     
     local.get $1
    end
   end
  end
  local.get $0
  f64.copysign
 )
 (func $std/math/test_asinh (; 45 ;) (type $FUNCSIG$iddd) (param $0 f64) (param $1 f64) (param $2 f64) (result i32)
  local.get $0
  call $~lib/math/NativeMath.asinh
  local.get $1
  local.get $2
  call $std/math/check<f64>
  if (result i32)
   local.get $0
   call $~lib/bindings/Math/asinh
   local.get $1
   local.get $2
   call $std/math/check<f64>
  else   
   i32.const 0
  end
 )
 (func $~lib/math/NativeMathf.asinh (; 46 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f32)
  (local $2 i32)
  local.get $0
  i32.reinterpret_f32
  i32.const 2147483647
  i32.and
  local.tee $2
  f32.reinterpret_i32
  local.set $1
  local.get $2
  i32.const 1166016512
  i32.ge_u
  if (result f32)
   local.get $1
   call $~lib/math/NativeMathf.log
   f32.const 0.6931471824645996
   f32.add
  else   
   local.get $2
   i32.const 1073741824
   i32.ge_u
   if (result f32)
    f32.const 2
    local.get $1
    f32.mul
    f32.const 1
    local.get $1
    local.get $1
    f32.mul
    f32.const 1
    f32.add
    f32.sqrt
    local.get $1
    f32.add
    f32.div
    f32.add
    call $~lib/math/NativeMathf.log
   else    
    local.get $2
    i32.const 964689920
    i32.ge_u
    if (result f32)
     local.get $1
     local.get $1
     local.get $1
     f32.mul
     local.tee $1
     local.get $1
     f32.const 1
     f32.add
     f32.sqrt
     f32.const 1
     f32.add
     f32.div
     f32.add
     call $~lib/math/NativeMathf.log1p
    else     
     local.get $1
    end
   end
  end
  local.get $0
  f32.copysign
 )
 (func $std/math/test_asinhf (; 47 ;) (type $FUNCSIG$ifff) (param $0 f32) (param $1 f32) (param $2 f32) (result i32)
  local.get $0
  call $~lib/math/NativeMathf.asinh
  local.get $1
  local.get $2
  call $std/math/check<f32>
 )
 (func $~lib/math/NativeMath.atan (; 48 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  local.get $0
  local.set $3
  local.get $0
  i64.reinterpret_f64
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  i32.const 2147483647
  i32.and
  local.tee $2
  i32.const 1141899264
  i32.ge_u
  if
   local.get $0
   call $~lib/number/isNaN<f64>
   if
    local.get $0
    return
   end
   f64.const 1.5707963267948966
   local.get $3
   f64.copysign
   return
  end
  local.get $2
  i32.const 1071382528
  i32.lt_u
  if
   local.get $2
   i32.const 1044381696
   i32.lt_u
   if
    local.get $0
    return
   end
   i32.const -1
   local.set $2
  else   
   local.get $0
   f64.abs
   local.set $0
   local.get $2
   i32.const 1072889856
   i32.lt_u
   if (result f64)
    local.get $2
    i32.const 1072037888
    i32.lt_u
    if (result f64)
     i32.const 0
     local.set $2
     f64.const 2
     local.get $0
     f64.mul
     f64.const 1
     f64.sub
     f64.const 2
     local.get $0
     f64.add
     f64.div
    else     
     i32.const 1
     local.set $2
     local.get $0
     f64.const 1
     f64.sub
     local.get $0
     f64.const 1
     f64.add
     f64.div
    end
   else    
    local.get $2
    i32.const 1073971200
    i32.lt_u
    if (result f64)
     i32.const 2
     local.set $2
     local.get $0
     f64.const 1.5
     f64.sub
     f64.const 1
     f64.const 1.5
     local.get $0
     f64.mul
     f64.add
     f64.div
    else     
     i32.const 3
     local.set $2
     f64.const -1
     local.get $0
     f64.div
    end
   end
   local.set $0
  end
  local.get $0
  local.get $0
  f64.mul
  local.tee $4
  local.get $4
  f64.mul
  local.set $1
  local.get $0
  local.get $4
  f64.const 0.3333333333333293
  local.get $1
  f64.const 0.14285714272503466
  local.get $1
  f64.const 0.09090887133436507
  local.get $1
  f64.const 0.06661073137387531
  local.get $1
  f64.const 0.049768779946159324
  local.get $1
  f64.const 0.016285820115365782
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.get $1
  f64.const -0.19999999999876483
  local.get $1
  f64.const -0.11111110405462356
  local.get $1
  f64.const -0.0769187620504483
  local.get $1
  f64.const -0.058335701337905735
  local.get $1
  f64.const -0.036531572744216916
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if
   local.get $0
   local.get $1
   f64.sub
   return
  end
  block $break|0
   block $case4|0
    block $case3|0
     block $case2|0
      block $case1|0
       local.get $2
       if
        block $tablify|0
         local.get $2
         i32.const 1
         i32.sub
         br_table $case1|0 $case2|0 $case3|0 $tablify|0
        end
        br $case4|0
       end
       f64.const 0.4636476090008061
       local.get $1
       f64.const 2.2698777452961687e-17
       f64.sub
       local.get $0
       f64.sub
       f64.sub
       local.set $0
       br $break|0
      end
      f64.const 0.7853981633974483
      local.get $1
      f64.const 3.061616997868383e-17
      f64.sub
      local.get $0
      f64.sub
      f64.sub
      local.set $0
      br $break|0
     end
     f64.const 0.982793723247329
     local.get $1
     f64.const 1.3903311031230998e-17
     f64.sub
     local.get $0
     f64.sub
     f64.sub
     local.set $0
     br $break|0
    end
    f64.const 1.5707963267948966
    local.get $1
    f64.const 6.123233995736766e-17
    f64.sub
    local.get $0
    f64.sub
    f64.sub
    local.set $0
    br $break|0
   end
   unreachable
  end
  local.get $0
  local.get $3
  f64.copysign
 )
 (func $std/math/test_atan (; 49 ;) (type $FUNCSIG$iddd) (param $0 f64) (param $1 f64) (param $2 f64) (result i32)
  local.get $0
  call $~lib/math/NativeMath.atan
  local.get $1
  local.get $2
  call $std/math/check<f64>
  if (result i32)
   local.get $0
   call $~lib/bindings/Math/atan
   local.get $1
   local.get $2
   call $std/math/check<f64>
  else   
   i32.const 0
  end
 )
 (func $~lib/math/NativeMathf.atan (; 50 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 f32)
  local.get $0
  local.set $4
  local.get $0
  i32.reinterpret_f32
  i32.const 2147483647
  i32.and
  local.tee $1
  i32.const 1283457024
  i32.ge_u
  if
   local.get $0
   call $~lib/number/isNaN<f32>
   if
    local.get $0
    return
   end
   f32.const 1.570796251296997
   local.get $4
   f32.copysign
   return
  end
  local.get $1
  i32.const 1054867456
  i32.lt_u
  if
   local.get $1
   i32.const 964689920
   i32.lt_u
   if
    local.get $0
    return
   end
   i32.const -1
   local.set $1
  else   
   local.get $0
   f32.abs
   local.set $0
   local.get $1
   i32.const 1066926080
   i32.lt_u
   if (result f32)
    local.get $1
    i32.const 1060110336
    i32.lt_u
    if (result f32)
     i32.const 0
     local.set $1
     f32.const 2
     local.get $0
     f32.mul
     f32.const 1
     f32.sub
     f32.const 2
     local.get $0
     f32.add
     f32.div
    else     
     i32.const 1
     local.set $1
     local.get $0
     f32.const 1
     f32.sub
     local.get $0
     f32.const 1
     f32.add
     f32.div
    end
   else    
    local.get $1
    i32.const 1075576832
    i32.lt_u
    if (result f32)
     i32.const 2
     local.set $1
     local.get $0
     f32.const 1.5
     f32.sub
     f32.const 1
     f32.const 1.5
     local.get $0
     f32.mul
     f32.add
     f32.div
    else     
     i32.const 3
     local.set $1
     f32.const -1
     local.get $0
     f32.div
    end
   end
   local.set $0
  end
  local.get $0
  local.get $0
  f32.mul
  local.tee $2
  local.get $2
  f32.mul
  local.set $3
  local.get $0
  local.get $2
  f32.const 0.333333283662796
  local.get $3
  f32.const 0.14253635704517365
  local.get $3
  f32.const 0.06168760731816292
  f32.mul
  f32.add
  f32.mul
  f32.add
  f32.mul
  local.get $3
  f32.const -0.19999158382415771
  local.get $3
  f32.const -0.106480173766613
  f32.mul
  f32.add
  f32.mul
  f32.add
  f32.mul
  local.set $2
  local.get $1
  i32.const 0
  i32.lt_s
  if
   local.get $0
   local.get $2
   f32.sub
   return
  end
  block $break|0
   block $case4|0
    block $case3|0
     block $case2|0
      block $case1|0
       local.get $1
       if
        block $tablify|0
         local.get $1
         i32.const 1
         i32.sub
         br_table $case1|0 $case2|0 $case3|0 $tablify|0
        end
        br $case4|0
       end
       f32.const 0.46364760398864746
       local.get $2
       f32.const 5.01215824399992e-09
       f32.sub
       local.get $0
       f32.sub
       f32.sub
       local.set $0
       br $break|0
      end
      f32.const 0.7853981256484985
      local.get $2
      f32.const 3.774894707930798e-08
      f32.sub
      local.get $0
      f32.sub
      f32.sub
      local.set $0
      br $break|0
     end
     f32.const 0.9827936887741089
     local.get $2
     f32.const 3.447321716976148e-08
     f32.sub
     local.get $0
     f32.sub
     f32.sub
     local.set $0
     br $break|0
    end
    f32.const 1.570796251296997
    local.get $2
    f32.const 7.549789415861596e-08
    f32.sub
    local.get $0
    f32.sub
    f32.sub
    local.set $0
    br $break|0
   end
   unreachable
  end
  local.get $0
  local.get $4
  f32.copysign
 )
 (func $std/math/test_atanf (; 51 ;) (type $FUNCSIG$ifff) (param $0 f32) (param $1 f32) (param $2 f32) (result i32)
  local.get $0
  call $~lib/math/NativeMathf.atan
  local.get $1
  local.get $2
  call $std/math/check<f32>
 )
 (func $~lib/math/NativeMath.atanh (; 52 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 i64)
  (local $3 f64)
  local.get $0
  i64.reinterpret_f64
  local.tee $2
  i64.const 9223372036854775807
  i64.and
  f64.reinterpret_i64
  local.set $1
  local.get $2
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.tee $2
  i64.const 1022
  i64.lt_u
  if (result f64)
   local.get $2
   i64.const 991
   i64.ge_u
   if (result f64)
    f64.const 0.5
    f64.const 2
    local.get $1
    f64.mul
    local.tee $3
    local.get $3
    local.get $1
    f64.mul
    f64.const 1
    local.get $1
    f64.sub
    f64.div
    f64.add
    call $~lib/math/NativeMath.log1p
    f64.mul
   else    
    local.get $1
   end
  else   
   f64.const 0.5
   f64.const 2
   local.get $1
   f64.const 1
   local.get $1
   f64.sub
   f64.div
   f64.mul
   call $~lib/math/NativeMath.log1p
   f64.mul
  end
  local.get $0
  f64.copysign
 )
 (func $std/math/test_atanh (; 53 ;) (type $FUNCSIG$iddd) (param $0 f64) (param $1 f64) (param $2 f64) (result i32)
  local.get $0
  call $~lib/math/NativeMath.atanh
  local.get $1
  local.get $2
  call $std/math/check<f64>
  if (result i32)
   local.get $0
   call $~lib/bindings/Math/atanh
   local.get $1
   local.get $2
   call $std/math/check<f64>
  else   
   i32.const 0
  end
 )
 (func $~lib/math/NativeMathf.atanh (; 54 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f32)
  (local $2 i32)
  local.get $0
  i32.reinterpret_f32
  i32.const 2147483647
  i32.and
  local.tee $2
  f32.reinterpret_i32
  local.set $1
  local.get $2
  i32.const 1056964608
  i32.lt_u
  if (result f32)
   local.get $2
   i32.const 796917760
   i32.ge_u
   if (result f32)
    f32.const 0.5
    f32.const 2
    local.get $1
    f32.mul
    f32.const 1
    local.get $1
    f32.const 1
    local.get $1
    f32.sub
    f32.div
    f32.add
    f32.mul
    call $~lib/math/NativeMathf.log1p
    f32.mul
   else    
    local.get $1
   end
  else   
   f32.const 0.5
   f32.const 2
   local.get $1
   f32.const 1
   local.get $1
   f32.sub
   f32.div
   f32.mul
   call $~lib/math/NativeMathf.log1p
   f32.mul
  end
  local.get $0
  f32.copysign
 )
 (func $std/math/test_atanhf (; 55 ;) (type $FUNCSIG$ifff) (param $0 f32) (param $1 f32) (param $2 f32) (result i32)
  local.get $0
  call $~lib/math/NativeMathf.atanh
  local.get $1
  local.get $2
  call $std/math/check<f32>
 )
 (func $~lib/math/NativeMath.atan2 (; 56 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/number/isNaN<f64>
  if (result i32)
   i32.const 1
  else   
   local.get $0
   call $~lib/number/isNaN<f64>
  end
  if
   local.get $1
   local.get $0
   f64.add
   return
  end
  local.get $0
  i64.reinterpret_f64
  local.tee $5
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $4
  local.get $5
  i32.wrap_i64
  local.set $6
  local.get $1
  i64.reinterpret_f64
  local.tee $5
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $3
  local.get $5
  i32.wrap_i64
  local.tee $7
  local.get $3
  i32.const 1072693248
  i32.sub
  i32.or
  i32.eqz
  if
   local.get $0
   call $~lib/math/NativeMath.atan
   return
  end
  local.get $3
  i32.const 30
  i32.shr_u
  i32.const 2
  i32.and
  local.get $4
  i32.const 31
  i32.shr_u
  i32.or
  local.set $2
  local.get $3
  i32.const 2147483647
  i32.and
  local.set $3
  local.get $4
  i32.const 2147483647
  i32.and
  local.tee $4
  local.get $6
  i32.or
  i32.eqz
  if
   block $break|0
    block $case3|0
     block $case2|0
      local.get $2
      i32.eqz
      local.get $2
      i32.const 1
      i32.eq
      i32.or
      i32.eqz
      if
       local.get $2
       i32.const 2
       i32.eq
       br_if $case2|0
       local.get $2
       i32.const 3
       i32.eq
       br_if $case3|0
       br $break|0
      end
      local.get $0
      return
     end
     f64.const 3.141592653589793
     return
    end
    f64.const -3.141592653589793
    return
   end
  end
  block $folding-inner0
   local.get $3
   local.get $7
   i32.or
   i32.eqz
   br_if $folding-inner0
   local.get $3
   i32.const 2146435072
   i32.eq
   if
    local.get $4
    i32.const 2146435072
    i32.eq
    if
     block $break|1
      block $case3|1
       block $case2|1
        block $case1|1
         local.get $2
         if
          block $tablify|0
           local.get $2
           i32.const 1
           i32.sub
           br_table $case1|1 $case2|1 $case3|1 $tablify|0
          end
          br $break|1
         end
         f64.const 0.7853981633974483
         return
        end
        f64.const -0.7853981633974483
        return
       end
       f64.const 2.356194490192345
       return
      end
      f64.const -2.356194490192345
      return
     end
    else     
     block $break|2
      block $case3|2
       block $case2|2
        block $case1|2
         local.get $2
         if
          block $tablify|00
           local.get $2
           i32.const 1
           i32.sub
           br_table $case1|2 $case2|2 $case3|2 $tablify|00
          end
          br $break|2
         end
         f64.const 0
         return
        end
        f64.const -0
        return
       end
       f64.const 3.141592653589793
       return
      end
      f64.const -3.141592653589793
      return
     end
    end
   end
   i32.const 1
   local.get $4
   i32.const 2146435072
   i32.eq
   local.get $3
   i32.const 67108864
   i32.add
   local.get $4
   i32.lt_u
   select
   br_if $folding-inner0
   local.get $4
   i32.const 67108864
   i32.add
   local.get $3
   i32.lt_u
   i32.const 0
   local.get $2
   i32.const 2
   i32.and
   select
   if (result f64)
    f64.const 0
   else    
    local.get $0
    local.get $1
    f64.div
    f64.abs
    call $~lib/math/NativeMath.atan
   end
   local.set $0
   block $break|3
    block $case3|3
     block $case2|3
      block $case1|3
       local.get $2
       if
        block $tablify|01
         local.get $2
         i32.const 1
         i32.sub
         br_table $case1|3 $case2|3 $case3|3 $tablify|01
        end
        br $break|3
       end
       local.get $0
       return
      end
      local.get $0
      f64.neg
      return
     end
     f64.const 3.141592653589793
     local.get $0
     f64.const 1.2246467991473532e-16
     f64.sub
     f64.sub
     return
    end
    local.get $0
    f64.const 1.2246467991473532e-16
    f64.sub
    f64.const 3.141592653589793
    f64.sub
    return
   end
   unreachable
  end
  f64.const -1.5707963267948966
  f64.const 1.5707963267948966
  local.get $2
  i32.const 1
  i32.and
  select
 )
 (func $std/math/test_atan2 (; 57 ;) (type $FUNCSIG$idddd) (param $0 f64) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
  local.get $0
  local.get $1
  call $~lib/math/NativeMath.atan2
  local.get $2
  local.get $3
  call $std/math/check<f64>
  if (result i32)
   local.get $0
   local.get $1
   call $~lib/bindings/Math/atan2
   local.get $2
   local.get $3
   call $std/math/check<f64>
  else   
   i32.const 0
  end
 )
 (func $~lib/math/NativeMathf.atan2 (; 58 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/number/isNaN<f32>
  if (result i32)
   i32.const 1
  else   
   local.get $0
   call $~lib/number/isNaN<f32>
  end
  if
   local.get $1
   local.get $0
   f32.add
   return
  end
  local.get $0
  i32.reinterpret_f32
  local.set $3
  local.get $1
  i32.reinterpret_f32
  local.tee $4
  i32.const 1065353216
  i32.eq
  if
   local.get $0
   call $~lib/math/NativeMathf.atan
   return
  end
  local.get $4
  i32.const 30
  i32.shr_u
  i32.const 2
  i32.and
  local.get $3
  i32.const 31
  i32.shr_u
  i32.or
  local.set $2
  local.get $4
  i32.const 2147483647
  i32.and
  local.set $4
  local.get $3
  i32.const 2147483647
  i32.and
  local.tee $3
  i32.eqz
  if
   block $break|0
    block $case3|0
     block $case2|0
      local.get $2
      i32.eqz
      local.get $2
      i32.const 1
      i32.eq
      i32.or
      i32.eqz
      if
       local.get $2
       i32.const 2
       i32.eq
       br_if $case2|0
       local.get $2
       i32.const 3
       i32.eq
       br_if $case3|0
       br $break|0
      end
      local.get $0
      return
     end
     f32.const 3.1415927410125732
     return
    end
    f32.const -3.1415927410125732
    return
   end
  end
  block $folding-inner0
   local.get $4
   i32.eqz
   br_if $folding-inner0
   local.get $4
   i32.const 2139095040
   i32.eq
   if
    local.get $3
    i32.const 2139095040
    i32.eq
    if
     block $break|1
      block $case3|1
       block $case2|1
        block $case1|1
         local.get $2
         if
          block $tablify|0
           local.get $2
           i32.const 1
           i32.sub
           br_table $case1|1 $case2|1 $case3|1 $tablify|0
          end
          br $break|1
         end
         f32.const 0.7853981852531433
         return
        end
        f32.const -0.7853981852531433
        return
       end
       f32.const 2.356194496154785
       return
      end
      f32.const -2.356194496154785
      return
     end
    else     
     block $break|2
      block $case3|2
       block $case2|2
        block $case1|2
         local.get $2
         if
          block $tablify|00
           local.get $2
           i32.const 1
           i32.sub
           br_table $case1|2 $case2|2 $case3|2 $tablify|00
          end
          br $break|2
         end
         f32.const 0
         return
        end
        f32.const 0
        return
       end
       f32.const 3.1415927410125732
       return
      end
      f32.const -3.1415927410125732
      return
     end
    end
   end
   i32.const 1
   local.get $3
   i32.const 2139095040
   i32.eq
   local.get $4
   i32.const 218103808
   i32.add
   local.get $3
   i32.lt_u
   select
   br_if $folding-inner0
   local.get $3
   i32.const 218103808
   i32.add
   local.get $4
   i32.lt_u
   i32.const 0
   local.get $2
   i32.const 2
   i32.and
   select
   if (result f32)
    f32.const 0
   else    
    local.get $0
    local.get $1
    f32.div
    f32.abs
    call $~lib/math/NativeMathf.atan
   end
   local.set $0
   block $break|3
    block $case3|3
     block $case2|3
      block $case1|3
       local.get $2
       if
        block $tablify|01
         local.get $2
         i32.const 1
         i32.sub
         br_table $case1|3 $case2|3 $case3|3 $tablify|01
        end
        br $break|3
       end
       local.get $0
       return
      end
      local.get $0
      f32.neg
      return
     end
     f32.const 3.1415927410125732
     local.get $0
     f32.const -8.742277657347586e-08
     f32.sub
     f32.sub
     return
    end
    local.get $0
    f32.const -8.742277657347586e-08
    f32.sub
    f32.const 3.1415927410125732
    f32.sub
    return
   end
   unreachable
  end
  f32.const -1.5707963705062866
  f32.const 1.5707963705062866
  local.get $2
  i32.const 1
  i32.and
  select
 )
 (func $std/math/test_atan2f (; 59 ;) (type $FUNCSIG$iffff) (param $0 f32) (param $1 f32) (param $2 f32) (param $3 f32) (result i32)
  local.get $0
  local.get $1
  call $~lib/math/NativeMathf.atan2
  local.get $2
  local.get $3
  call $std/math/check<f32>
 )
 (func $~lib/math/NativeMath.cbrt (; 60 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 i32)
  (local $3 f64)
  (local $4 i64)
  local.get $0
  i64.reinterpret_f64
  local.tee $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  i32.const 2147483647
  i32.and
  local.tee $2
  i32.const 2146435072
  i32.ge_u
  if
   local.get $0
   local.get $0
   f64.add
   return
  end
  local.get $2
  i32.const 1048576
  i32.lt_u
  if (result i32)
   local.get $0
   f64.const 18014398509481984
   f64.mul
   i64.reinterpret_f64
   local.tee $4
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   i32.const 2147483647
   i32.and
   local.tee $2
   i32.eqz
   if
    local.get $0
    return
   end
   local.get $2
   i32.const 3
   i32.div_u
   i32.const 696219795
   i32.add
  else   
   local.get $2
   i32.const 3
   i32.div_u
   i32.const 715094163
   i32.add
  end
  local.set $2
  local.get $4
  i64.const -9223372036854775808
  i64.and
  local.get $2
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  f64.reinterpret_i64
  local.tee $3
  local.get $3
  f64.mul
  local.get $3
  local.get $0
  f64.div
  f64.mul
  local.set $1
  local.get $0
  local.get $3
  f64.const 1.87595182427177
  local.get $1
  f64.const -1.8849797954337717
  local.get $1
  f64.const 1.6214297201053545
  f64.mul
  f64.add
  f64.mul
  f64.add
  local.get $1
  local.get $1
  f64.mul
  local.get $1
  f64.mul
  f64.const -0.758397934778766
  local.get $1
  f64.const 0.14599619288661245
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  i64.reinterpret_f64
  i64.const 2147483648
  i64.add
  i64.const -1073741824
  i64.and
  f64.reinterpret_i64
  local.tee $0
  local.get $0
  f64.mul
  f64.div
  local.tee $1
  local.get $0
  f64.sub
  f64.const 2
  local.get $0
  f64.mul
  local.get $1
  f64.add
  f64.div
  local.set $1
  local.get $0
  local.get $0
  local.get $1
  f64.mul
  f64.add
 )
 (func $std/math/test_cbrt (; 61 ;) (type $FUNCSIG$iddd) (param $0 f64) (param $1 f64) (param $2 f64) (result i32)
  local.get $0
  call $~lib/math/NativeMath.cbrt
  local.get $1
  local.get $2
  call $std/math/check<f64>
  if (result i32)
   local.get $0
   call $~lib/bindings/Math/cbrt
   local.get $1
   local.get $2
   call $std/math/check<f64>
  else   
   i32.const 0
  end
 )
 (func $~lib/math/NativeMathf.cbrt (; 62 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f64)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.reinterpret_f32
  local.tee $4
  i32.const 2147483647
  i32.and
  local.tee $3
  i32.const 2139095040
  i32.ge_u
  if
   local.get $0
   local.get $0
   f32.add
   return
  end
  local.get $3
  i32.const 8388608
  i32.lt_u
  if (result i32)
   local.get $3
   i32.eqz
   if
    local.get $0
    return
   end
   local.get $0
   f32.const 16777216
   f32.mul
   i32.reinterpret_f32
   local.tee $4
   i32.const 2147483647
   i32.and
   i32.const 3
   i32.div_u
   i32.const 642849266
   i32.add
  else   
   local.get $3
   i32.const 3
   i32.div_u
   i32.const 709958130
   i32.add
  end
  local.get $4
  i32.const -2147483648
  i32.and
  i32.or
  f32.reinterpret_i32
  f64.promote_f32
  local.tee $1
  local.get $1
  f64.mul
  local.get $1
  f64.mul
  local.set $2
  local.get $1
  local.get $0
  f64.promote_f32
  local.get $0
  f64.promote_f32
  f64.add
  local.get $2
  f64.add
  f64.mul
  local.get $0
  f64.promote_f32
  local.get $2
  f64.add
  local.get $2
  f64.add
  f64.div
  local.tee $1
  local.get $1
  f64.mul
  local.get $1
  f64.mul
  local.set $2
  local.get $1
  local.get $0
  f64.promote_f32
  local.get $0
  f64.promote_f32
  f64.add
  local.get $2
  f64.add
  f64.mul
  local.get $0
  f64.promote_f32
  local.get $2
  f64.add
  local.get $2
  f64.add
  f64.div
  f32.demote_f64
 )
 (func $std/math/test_cbrtf (; 63 ;) (type $FUNCSIG$ifff) (param $0 f32) (param $1 f32) (param $2 f32) (result i32)
  local.get $0
  call $~lib/math/NativeMathf.cbrt
  local.get $1
  local.get $2
  call $std/math/check<f32>
 )
 (func $std/math/test_ceil (; 64 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
  local.get $0
  f64.ceil
  local.get $1
  f64.const 0
  call $std/math/check<f64>
  if (result i32)
   local.get $0
   call $~lib/bindings/Math/ceil
   local.get $1
   f64.const 0
   call $std/math/check<f64>
  else   
   i32.const 0
  end
 )
 (func $std/math/test_ceilf (; 65 ;) (type $FUNCSIG$iff) (param $0 f32) (param $1 f32) (result i32)
  local.get $0
  f32.ceil
  local.get $1
  f32.const 0
  call $std/math/check<f32>
 )
 (func $~lib/rt/stub/maybeGrowMemory (; 66 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  memory.size
  local.tee $2
  i32.const 16
  i32.shl
  local.tee $1
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $1
   local.get $2
   local.get $1
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $1
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (; 67 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $2
  local.get $0
  i32.const 1
  local.get $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $2
  i32.const 16
  i32.sub
  local.tee $3
  local.get $1
  i32.store offset=8
  local.get $3
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/memory/memory.copy (; 68 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 112
  local.set $2
  i32.const 192
  local.set $1
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   i32.const 112
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $0
   i32.const 112
   i32.lt_u
   if
    local.get $0
    i32.const 7
    i32.and
    i32.eqz
    if
     loop $continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $1
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $1
       i32.const 1
       i32.sub
       local.set $1
       local.get $0
       local.tee $3
       i32.const 1
       i32.add
       local.set $0
       local.get $2
       local.tee $4
       i32.const 1
       i32.add
       local.set $2
       local.get $3
       local.get $4
       i32.load8_u
       i32.store8
       br $continue|0
      end
     end
     loop $continue|1
      local.get $1
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $2
       i64.load
       i64.store
       local.get $1
       i32.const 8
       i32.sub
       local.set $1
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $2
       i32.const 8
       i32.add
       local.set $2
       br $continue|1
      end
     end
    end
    loop $continue|2
     local.get $1
     if
      local.get $0
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $2
      local.tee $4
      i32.const 1
      i32.add
      local.set $2
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $1
      i32.const 1
      i32.sub
      local.set $1
      br $continue|2
     end
    end
   else    
    local.get $0
    i32.const 7
    i32.and
    i32.eqz
    if
     loop $continue|3
      local.get $0
      local.get $1
      i32.add
      i32.const 7
      i32.and
      if
       local.get $1
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $1
       i32.const 1
       i32.sub
       local.tee $1
       local.get $0
       i32.add
       local.get $1
       i32.const 112
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
     end
     loop $continue|4
      local.get $1
      i32.const 8
      i32.ge_u
      if
       local.get $1
       i32.const 8
       i32.sub
       local.tee $1
       local.get $0
       i32.add
       local.get $1
       i32.const 112
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
     end
    end
    loop $continue|5
     local.get $1
     if
      local.get $1
      i32.const 1
      i32.sub
      local.tee $1
      local.get $0
      i32.add
      local.get $1
      i32.const 112
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/__allocArray (; 69 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 16
  i32.const 3
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 192
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 192
  i32.store offset=8
  local.get $0
  i32.const 24
  i32.store offset=12
  local.get $1
  call $~lib/memory/memory.copy
  local.get $0
 )
 (func $~lib/array/Array<u64>#__unchecked_get (; 70 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/math/pio2_large_quot (; 71 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i64)
  (local $13 f64)
  call $~lib/rt/__allocArray
  local.tee $8
  local.set $11
  local.get $8
  local.get $0
  i64.const 52
  i64.shr_s
  i64.const 1045
  i64.sub
  local.tee $1
  i64.const 6
  i64.shr_s
  i32.wrap_i64
  local.tee $9
  call $~lib/array/Array<u64>#__unchecked_get
  local.set $7
  local.get $8
  local.get $9
  i32.const 1
  i32.add
  call $~lib/array/Array<u64>#__unchecked_get
  local.set $2
  local.get $8
  local.get $9
  i32.const 2
  i32.add
  call $~lib/array/Array<u64>#__unchecked_get
  local.set $3
  local.get $1
  i64.const 63
  i64.and
  local.tee $1
  i64.const 0
  i64.ne
  if
   local.get $7
   local.get $1
   i64.shl
   local.get $2
   i64.const 64
   local.get $1
   i64.sub
   local.tee $5
   i64.shr_u
   i64.or
   local.set $7
   local.get $2
   local.get $1
   i64.shl
   local.get $3
   local.get $5
   i64.shr_u
   i64.or
   local.set $2
   local.get $3
   local.get $1
   i64.shl
   local.get $11
   local.get $9
   i32.const 3
   i32.add
   call $~lib/array/Array<u64>#__unchecked_get
   local.get $5
   i64.shr_u
   i64.or
   local.set $3
  end
  local.get $2
  i64.const 4294967295
  i64.and
  local.tee $5
  local.get $0
  i64.const 4503599627370495
  i64.and
  i64.const 4503599627370496
  i64.or
  local.tee $1
  i64.const 4294967295
  i64.and
  local.tee $6
  i64.mul
  local.tee $4
  i64.const 4294967295
  i64.and
  local.get $5
  local.get $1
  i64.const 32
  i64.shr_u
  local.tee $5
  i64.mul
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $2
  local.get $6
  i64.mul
  local.get $4
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $6
  i64.const 4294967295
  i64.and
  i64.add
  local.tee $4
  i64.const 32
  i64.shl
  i64.add
  global.set $~lib/math/__res128_lo
  local.get $2
  local.get $5
  i64.mul
  local.get $6
  i64.const 32
  i64.shr_u
  i64.add
  local.get $4
  i64.const 32
  i64.shr_u
  i64.add
  global.set $~lib/math/__res128_hi
  global.get $~lib/math/__res128_hi
  local.get $1
  local.get $7
  i64.mul
  i64.add
  local.get $3
  i64.const 32
  i64.shr_u
  local.get $1
  i64.const 32
  i64.shr_s
  i64.mul
  local.tee $2
  global.get $~lib/math/__res128_lo
  i64.add
  local.tee $1
  local.get $2
  i64.lt_u
  i64.extend_i32_u
  i64.add
  local.tee $7
  i64.const 2
  i64.shl
  local.get $1
  i64.const 62
  i64.shr_u
  i64.or
  local.tee $3
  i64.clz
  local.set $2
  local.get $3
  local.get $2
  i64.shl
  local.get $3
  i64.const 63
  i64.shr_u
  local.tee $5
  local.get $1
  i64.const 2
  i64.shl
  i64.xor
  local.tee $6
  i64.const 64
  local.get $2
  i64.sub
  i64.shr_u
  i64.or
  local.tee $1
  i64.const 4294967295
  i64.and
  local.tee $4
  i64.const 560513588
  i64.mul
  local.tee $10
  i64.const 4294967295
  i64.and
  local.get $1
  i64.const 32
  i64.shr_u
  local.tee $12
  i64.const 560513588
  i64.mul
  local.get $4
  i64.const 3373259426
  i64.mul
  local.get $10
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $4
  i64.const 4294967295
  i64.and
  i64.add
  local.tee $10
  i64.const 32
  i64.shl
  i64.add
  global.set $~lib/math/__res128_lo
  local.get $12
  i64.const 3373259426
  i64.mul
  local.get $4
  i64.const 32
  i64.shr_u
  i64.add
  local.get $10
  i64.const 32
  i64.shr_u
  i64.add
  global.set $~lib/math/__res128_hi
  global.get $~lib/math/__res128_lo
  local.tee $4
  f64.const 3.753184150245214e-04
  local.get $1
  f64.convert_i64_u
  f64.mul
  f64.const 3.834951969714103e-04
  local.get $6
  local.get $2
  i64.shl
  f64.convert_i64_u
  f64.mul
  f64.add
  i64.trunc_f64_u
  local.tee $1
  i64.lt_u
  i64.extend_i32_u
  global.get $~lib/math/__res128_hi
  local.tee $6
  i64.const 11
  i64.shr_u
  i64.add
  f64.convert_i64_u
  global.set $~lib/math/rempio2_y0
  f64.const 5.421010862427522e-20
  local.get $6
  i64.const 53
  i64.shl
  local.get $4
  i64.const 11
  i64.shr_u
  i64.or
  local.get $1
  i64.add
  f64.convert_i64_u
  f64.mul
  global.set $~lib/math/rempio2_y1
  global.get $~lib/math/rempio2_y0
  i64.const 4372995238176751616
  local.get $2
  i64.const 52
  i64.shl
  i64.sub
  local.get $0
  local.get $3
  i64.xor
  i64.const -9223372036854775808
  i64.and
  i64.or
  f64.reinterpret_i64
  local.tee $13
  f64.mul
  global.set $~lib/math/rempio2_y0
  global.get $~lib/math/rempio2_y1
  local.get $13
  f64.mul
  global.set $~lib/math/rempio2_y1
  i32.const 320
  i32.const 1
  local.get $7
  i64.const 62
  i64.shr_u
  local.get $5
  i64.sub
  local.tee $0
  f64.convert_i64_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 320
  i32.const 1
  global.get $~lib/math/rempio2_y0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 320
  i32.const 1
  global.get $~lib/math/rempio2_y1
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  local.get $0
  i32.wrap_i64
 )
 (func $~lib/math/NativeMath.cos (; 72 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i64)
  (local $8 f64)
  local.get $0
  i64.reinterpret_f64
  local.tee $7
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $4
  i32.const 31
  i32.shr_u
  local.set $6
  local.get $4
  i32.const 2147483647
  i32.and
  local.tee $4
  i32.const 1072243195
  i32.le_u
  if
   local.get $4
   i32.const 1044816030
   i32.lt_u
   if
    f64.const 1
    return
   end
   local.get $0
   local.get $0
   f64.mul
   local.tee $2
   local.get $2
   f64.mul
   local.set $1
   f64.const 1
   f64.const 0.5
   local.get $2
   f64.mul
   local.tee $3
   f64.sub
   local.tee $5
   f64.const 1
   local.get $5
   f64.sub
   local.get $3
   f64.sub
   local.get $2
   local.get $2
   f64.const 0.0416666666666666
   local.get $2
   f64.const -0.001388888888887411
   local.get $2
   f64.const 2.480158728947673e-05
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.get $1
   local.get $1
   f64.mul
   f64.const -2.7557314351390663e-07
   local.get $2
   f64.const 2.087572321298175e-09
   local.get $2
   f64.const -1.1359647557788195e-11
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.get $0
   f64.const 0
   f64.mul
   f64.sub
   f64.add
   f64.add
   return
  end
  local.get $4
  i32.const 2146435072
  i32.ge_u
  if
   local.get $0
   local.get $0
   f64.sub
   return
  end
  block $~lib/math/rempio2|inlined.0 (result i32)
   local.get $7
   i64.const 9223372036854775807
   i64.and
   local.tee $7
   i64.const 4735853846491049240
   i64.lt_u
   if
    local.get $0
    f64.const 0.6366197723675814
    local.get $0
    f64.mul
    f64.nearest
    f64.const 0
    f64.add
    local.tee $0
    f64.const 1.5707963109016418
    f64.mul
    f64.sub
    local.tee $2
    local.get $2
    local.get $0
    f64.const -1.5893254712295857e-08
    f64.mul
    local.tee $1
    f64.add
    local.tee $2
    f64.sub
    local.get $1
    f64.add
    local.get $0
    f64.const 6.123233995736766e-17
    f64.mul
    f64.sub
    local.set $1
    local.get $2
    local.get $1
    f64.add
    local.tee $3
    global.set $~lib/math/rempio2_y0
    local.get $2
    local.get $3
    f64.sub
    local.get $1
    f64.add
    global.set $~lib/math/rempio2_y1
    local.get $0
    i32.trunc_f64_s
    br $~lib/math/rempio2|inlined.0
   end
   i32.const 0
   local.get $7
   call $~lib/math/pio2_large_quot
   local.tee $4
   i32.sub
   local.get $4
   local.get $6
   select
  end
  local.set $6
  global.get $~lib/math/rempio2_y0
  local.set $0
  global.get $~lib/math/rempio2_y1
  local.set $2
  local.get $6
  i32.const 1
  i32.and
  if (result f64)
   local.get $0
   local.get $0
   f64.mul
   local.tee $1
   local.get $1
   f64.mul
   local.set $3
   f64.const 0.00833333333332249
   local.get $1
   f64.const -1.984126982985795e-04
   local.get $1
   f64.const 2.7557313707070068e-06
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $1
   local.get $3
   f64.mul
   f64.const -2.5050760253406863e-08
   local.get $1
   f64.const 1.58969099521155e-10
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.set $5
   local.get $0
   local.get $1
   f64.const 0.5
   local.get $2
   f64.mul
   local.get $1
   local.get $0
   f64.mul
   local.tee $3
   local.get $5
   f64.mul
   f64.sub
   f64.mul
   local.get $2
   f64.sub
   local.get $3
   f64.const -0.16666666666666632
   f64.mul
   f64.sub
   f64.sub
  else   
   local.get $0
   local.get $0
   f64.mul
   local.tee $1
   local.get $1
   f64.mul
   local.set $3
   f64.const 1
   f64.const 0.5
   local.get $1
   f64.mul
   local.tee $5
   f64.sub
   local.tee $8
   f64.const 1
   local.get $8
   f64.sub
   local.get $5
   f64.sub
   local.get $1
   local.get $1
   f64.const 0.0416666666666666
   local.get $1
   f64.const -0.001388888888887411
   local.get $1
   f64.const 2.480158728947673e-05
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.get $3
   local.get $3
   f64.mul
   f64.const -2.7557314351390663e-07
   local.get $1
   f64.const 2.087572321298175e-09
   local.get $1
   f64.const -1.1359647557788195e-11
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.get $0
   local.get $2
   f64.mul
   f64.sub
   f64.add
   f64.add
  end
  local.set $0
  local.get $6
  i32.const 1
  i32.add
  i32.const 2
  i32.and
  if
   local.get $0
   f64.neg
   local.set $0
  end
  local.get $0
 )
 (func $start:std/math (; 73 ;) (type $FUNCSIG$v)
  f64.const 2.718281828459045
  global.get $~lib/bindings/Math/E
  f64.const 0
  call $std/math/check<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 108
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.6931471805599453
  global.get $~lib/bindings/Math/LN2
  f64.const 0
  call $std/math/check<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 109
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 2.302585092994046
  global.get $~lib/bindings/Math/LN10
  f64.const 0
  call $std/math/check<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 110
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.4426950408889634
  global.get $~lib/bindings/Math/LOG2E
  f64.const 0
  call $std/math/check<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 111
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 3.141592653589793
  global.get $~lib/bindings/Math/PI
  f64.const 0
  call $std/math/check<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 112
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.7071067811865476
  global.get $~lib/bindings/Math/SQRT1_2
  f64.const 0
  call $std/math/check<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 113
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.4142135623730951
  global.get $~lib/bindings/Math/SQRT2
  f64.const 0
  call $std/math/check<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 114
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 2.7182817459106445
  global.get $~lib/bindings/Math/E
  f32.demote_f64
  f32.const 0
  call $std/math/check<f32>
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 116
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.6931471824645996
  global.get $~lib/bindings/Math/LN2
  f32.demote_f64
  f32.const 0
  call $std/math/check<f32>
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 117
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 2.3025851249694824
  global.get $~lib/bindings/Math/LN10
  f32.demote_f64
  f32.const 0
  call $std/math/check<f32>
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 118
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.4426950216293335
  global.get $~lib/bindings/Math/LOG2E
  f32.demote_f64
  f32.const 0
  call $std/math/check<f32>
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 119
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 3.1415927410125732
  global.get $~lib/bindings/Math/PI
  f32.demote_f64
  f32.const 0
  call $std/math/check<f32>
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 120
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.7071067690849304
  global.get $~lib/bindings/Math/SQRT1_2
  f32.demote_f64
  f32.const 0
  call $std/math/check<f32>
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 121
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.4142135381698608
  global.get $~lib/bindings/Math/SQRT2
  f32.demote_f64
  f32.const 0
  call $std/math/check<f32>
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 122
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.06684839057968
  i32.const -2
  f64.const -2.01671209764492
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 133
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 4.345239849338305
  i32.const -1
  f64.const 2.1726199246691524
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 134
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.38143342755525
  i32.const 0
  f64.const -8.38143342755525
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 135
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -6.531673581913484
  i32.const 1
  f64.const -13.063347163826968
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 136
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 9.267056966972586
  i32.const 2
  f64.const 37.06822786789034
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 137
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.6619858980995045
  i32.const 3
  f64.const 5.295887184796036
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 138
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.4066039223853553
  i32.const 4
  f64.const -6.505662758165685
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 139
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.5617597462207241
  i32.const 5
  f64.const 17.97631187906317
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 140
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.7741522965913037
  i32.const 6
  f64.const 49.545746981843436
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 141
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.6787637026394024
  i32.const 7
  f64.const -86.88175393784351
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 142
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  i32.const 2147483647
  f64.const 0
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 145
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  i32.const -2147483647
  f64.const 0
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 146
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  i32.const 2147483647
  f64.const -0
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 147
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  i32.const 0
  f64.const nan:0x8000000000000
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 148
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  i32.const 0
  f64.const inf
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 149
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  i32.const 0
  f64.const -inf
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 150
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  i32.const 0
  f64.const 1
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 151
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  i32.const 1
  f64.const 2
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 152
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  i32.const -1
  f64.const 0.5
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 153
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  i32.const 2147483647
  f64.const inf
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 154
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  i32.const 1
  f64.const nan:0x8000000000000
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 155
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  i32.const 2147483647
  f64.const inf
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 156
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  i32.const -2147483647
  f64.const inf
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 157
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  i32.const 2147483647
  f64.const -inf
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 158
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 8988465674311579538646525e283
  i32.const -2097
  f64.const 5e-324
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 159
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 5e-324
  i32.const 2097
  f64.const 8988465674311579538646525e283
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 160
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.000244140625
  i32.const -1074
  f64.const 5e-324
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 161
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.7499999999999999
  i32.const -1073
  f64.const 5e-324
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 162
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.5000000000000012
  i32.const -1024
  f64.const 2.781342323134007e-309
  call $std/math/test_scalbn
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 163
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.066848754882812
  i32.const -2
  f32.const -2.016712188720703
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 172
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 4.345239639282227
  i32.const -1
  f32.const 2.1726198196411133
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 173
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.381433486938477
  i32.const 0
  f32.const -8.381433486938477
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 174
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -6.531673431396484
  i32.const 1
  f32.const -13.063346862792969
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 175
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 9.267057418823242
  i32.const 2
  f32.const 37.06822967529297
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 176
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.6619858741760254
  i32.const 3
  f32.const 5.295886993408203
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 177
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.40660393238067627
  i32.const 4
  f32.const -6.50566291809082
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 178
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.5617597699165344
  i32.const 5
  f32.const 17.9763126373291
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 179
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.7741522789001465
  i32.const 6
  f32.const 49.545745849609375
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 180
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.6787636876106262
  i32.const 7
  f32.const -86.88175201416016
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 181
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  i32.const 2147483647
  f32.const 0
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 184
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  i32.const -2147483647
  f32.const 0
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 185
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  i32.const 2147483647
  f32.const -0
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 186
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  i32.const 0
  f32.const nan:0x400000
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 187
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  i32.const 0
  f32.const inf
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 188
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  i32.const 0
  f32.const -inf
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 189
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  i32.const 0
  f32.const 1
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 190
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  i32.const 1
  f32.const 2
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 191
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  i32.const -1
  f32.const 0.5
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 192
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  i32.const 2147483647
  f32.const inf
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 193
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  i32.const 1
  f32.const nan:0x400000
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 194
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  i32.const 2147483647
  f32.const inf
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 195
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  i32.const -2147483647
  f32.const inf
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 196
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  i32.const 2147483647
  f32.const -inf
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 197
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1701411834604692317316873e14
  i32.const -276
  f32.const 1.401298464324817e-45
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 198
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.401298464324817e-45
  i32.const 276
  f32.const 1701411834604692317316873e14
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 199
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.000244140625
  i32.const -149
  f32.const 1.401298464324817e-45
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 200
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.7499999403953552
  i32.const -148
  f32.const 1.401298464324817e-45
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 201
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.5000006556510925
  i32.const -128
  f32.const 1.4693693398263237e-39
  call $std/math/test_scalbnf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 202
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.06684839057968
  f64.const 8.06684839057968
  call $std/math/test_abs
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 214
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 4.345239849338305
  f64.const 4.345239849338305
  call $std/math/test_abs
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 215
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.38143342755525
  f64.const 8.38143342755525
  call $std/math/test_abs
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 216
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -6.531673581913484
  f64.const 6.531673581913484
  call $std/math/test_abs
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 217
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 9.267056966972586
  f64.const 9.267056966972586
  call $std/math/test_abs
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 218
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.6619858980995045
  f64.const 0.6619858980995045
  call $std/math/test_abs
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 219
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.4066039223853553
  f64.const 0.4066039223853553
  call $std/math/test_abs
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 220
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.5617597462207241
  f64.const 0.5617597462207241
  call $std/math/test_abs
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 221
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.7741522965913037
  f64.const 0.7741522965913037
  call $std/math/test_abs
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 222
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.6787637026394024
  f64.const 0.6787637026394024
  call $std/math/test_abs
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 223
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const 0
  call $std/math/test_abs
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 226
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const 0
  call $std/math/test_abs
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 227
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const 1
  call $std/math/test_abs
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 228
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const 1
  call $std/math/test_abs
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 229
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const inf
  call $std/math/test_abs
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 230
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const inf
  call $std/math/test_abs
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 231
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const nan:0x8000000000000
  call $std/math/test_abs
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 232
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.066848754882812
  f32.const 8.066848754882812
  call $std/math/test_absf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 241
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 4.345239639282227
  f32.const 4.345239639282227
  call $std/math/test_absf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 242
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.381433486938477
  f32.const 8.381433486938477
  call $std/math/test_absf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 243
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -6.531673431396484
  f32.const 6.531673431396484
  call $std/math/test_absf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 244
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 9.267057418823242
  f32.const 9.267057418823242
  call $std/math/test_absf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 245
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.6619858741760254
  f32.const 0.6619858741760254
  call $std/math/test_absf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 246
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.40660393238067627
  f32.const 0.40660393238067627
  call $std/math/test_absf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 247
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.5617597699165344
  f32.const 0.5617597699165344
  call $std/math/test_absf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 248
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.7741522789001465
  f32.const 0.7741522789001465
  call $std/math/test_absf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 249
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.6787636876106262
  f32.const 0.6787636876106262
  call $std/math/test_absf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 250
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const 0
  call $std/math/test_absf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 253
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const 0
  call $std/math/test_absf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 254
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const 1
  call $std/math/test_absf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 255
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1
  f32.const 1
  call $std/math/test_absf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 256
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const inf
  call $std/math/test_absf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 257
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const inf
  call $std/math/test_absf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 258
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const nan:0x400000
  call $std/math/test_absf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 259
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.06684839057968
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 271
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 4.345239849338305
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 272
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.38143342755525
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 273
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -6.531673581913484
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 274
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 9.267056966972586
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 275
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.6619858980995045
  f64.const 0.8473310828433507
  f64.const -0.41553276777267456
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 276
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.4066039223853553
  f64.const 1.989530071088669
  f64.const 0.4973946213722229
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 277
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.5617597462207241
  f64.const 0.9742849645674904
  f64.const -0.4428897500038147
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 278
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.7741522965913037
  f64.const 0.6854215158636222
  f64.const -0.12589527666568756
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 279
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.6787637026394024
  f64.const 2.316874138205964
  f64.const -0.17284949123859406
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 280
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const 1.5707963267948966
  f64.const -0.27576595544815063
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 283
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const 3.141592653589793
  f64.const -0.27576595544815063
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 284
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const 0
  f64.const 0
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 285
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.0000000000000002
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 286
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1.0000000000000002
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 287
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 288
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 289
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 290
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.5309227209592985
  f64.const 2.1304853799705463
  f64.const 0.1391008496284485
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 291
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.4939556746399746
  f64.const 1.0541629875851946
  f64.const 0.22054767608642578
  call $std/math/test_acos
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 292
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.066848754882812
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 301
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 4.345239639282227
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 302
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.381433486938477
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 303
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -6.531673431396484
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 304
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 9.267057418823242
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 305
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.6619858741760254
  f32.const 0.8473311066627502
  f32.const -0.13588131964206696
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 306
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.40660393238067627
  f32.const 1.989530086517334
  f32.const 0.03764917701482773
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 307
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.5617597699165344
  f32.const 0.9742849469184875
  f32.const 0.18443739414215088
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 308
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.7741522789001465
  f32.const 0.6854215264320374
  f32.const -0.29158344864845276
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 309
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.6787636876106262
  f32.const 2.3168740272521973
  f32.const -0.3795364499092102
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 310
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const 1.5707963705062866
  f32.const 0.3666777014732361
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 313
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1
  f32.const 3.1415927410125732
  f32.const 0.3666777014732361
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 314
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const 0
  f32.const 0
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 315
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.0000001192092896
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 316
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1.0000001192092896
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 317
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 318
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 319
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 320
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.49965065717697144
  f32.const 1.0476008653640747
  f32.const -0.21161814033985138
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 321
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.5051405429840088
  f32.const 2.1003410816192627
  f32.const -0.20852705836296082
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 322
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.5189794898033142
  f32.const 2.116452932357788
  f32.const -0.14600826799869537
  call $std/math/test_acosf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 323
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.06684839057968
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 335
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 4.345239849338305
  f64.const 2.1487163980597503
  f64.const -0.291634738445282
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 336
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.38143342755525
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 337
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -6.531673581913484
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 338
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 9.267056966972586
  f64.const 2.91668914109908
  f64.const -0.24191908538341522
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 339
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.6619858980995045
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 340
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.4066039223853553
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 341
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.5617597462207241
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 342
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.7741522965913037
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 343
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.6787637026394024
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 344
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 347
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const inf
  f64.const 0
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 348
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const 0
  f64.const 0
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.9999923706054688
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 350
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 351
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 352
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 353
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.1060831199926429
  f64.const 0.4566373404384803
  f64.const -0.29381608963012695
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 369
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.1089809557628658
  f64.const 0.4627246859959428
  f64.const -0.3990095555782318
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 371
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.1169429159875521
  f64.const 0.47902433134075284
  f64.const -0.321674108505249
  call $std/math/test_acosh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 372
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.066848754882812
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acoshf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 381
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 4.345239639282227
  f32.const 2.148716449737549
  f32.const 0.4251045286655426
  call $std/math/test_acoshf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 382
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.381433486938477
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acoshf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 383
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -6.531673431396484
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acoshf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 384
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 9.267057418823242
  f32.const 2.916689157485962
  f32.const -0.1369788944721222
  call $std/math/test_acoshf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 385
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.6619858741760254
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acoshf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 386
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.40660393238067627
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acoshf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 387
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.5617597699165344
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acoshf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 388
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.7741522789001465
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acoshf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 389
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.6787636876106262
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acoshf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 390
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acoshf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 393
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const inf
  f32.const 0
  call $std/math/test_acoshf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 394
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const 0
  f32.const 0
  call $std/math/test_acoshf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 395
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.9999923706054688
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acoshf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 396
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acoshf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 397
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acoshf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 398
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acoshf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 399
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1125899906842624
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_acoshf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 400
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.06684839057968
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 412
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 4.345239849338305
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 413
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.38143342755525
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 414
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -6.531673581913484
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 415
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 9.267056966972586
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 416
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.6619858980995045
  f64.const 0.7234652439515459
  f64.const -0.13599912822246552
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 417
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.4066039223853553
  f64.const -0.41873374429377225
  f64.const -0.09264230728149414
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 418
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.5617597462207241
  f64.const 0.5965113622274062
  f64.const -0.10864213854074478
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 419
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.7741522965913037
  f64.const 0.8853748109312743
  f64.const -0.4256366193294525
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 420
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.6787637026394024
  f64.const -0.7460778114110673
  f64.const 0.13986606895923615
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 421
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const 1.5707963267948966
  f64.const -0.27576595544815063
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 424
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const -1.5707963267948966
  f64.const 0.27576595544815063
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 425
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const 0
  f64.const 0
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 426
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const -0
  f64.const 0
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 427
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.0000000000000002
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 428
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1.0000000000000002
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 429
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 430
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 431
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 432
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.5073043929119148
  f64.const 0.5320538997772349
  f64.const -0.16157317161560059
  call $std/math/test_asin
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 433
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.066848754882812
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 442
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 4.345239639282227
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 443
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.381433486938477
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 444
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -6.531673431396484
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 445
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 9.267057418823242
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 446
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.6619858741760254
  f32.const 0.7234652042388916
  f32.const -0.1307632476091385
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 447
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.40660393238067627
  f32.const -0.41873374581336975
  f32.const 0.3161141574382782
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 448
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.5617597699165344
  f32.const 0.5965113639831543
  f32.const -0.4510819613933563
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 449
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.7741522789001465
  f32.const 0.8853747844696045
  f32.const 0.02493886835873127
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 450
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.6787636876106262
  f32.const -0.7460777759552002
  f32.const 0.2515012323856354
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 451
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const 1.5707963705062866
  f32.const 0.3666777014732361
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 454
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1
  f32.const -1.5707963705062866
  f32.const -0.3666777014732361
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 455
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const 0
  f32.const 0
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 456
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const -0
  f32.const 0
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 457
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.0000001192092896
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 458
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1.0000001192092896
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 459
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 460
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 461
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 462
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.5004770159721375
  f32.const 0.5241496562957764
  f32.const -0.29427099227905273
  call $std/math/test_asinf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 463
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.06684839057968
  f64.const -2.784729878387861
  f64.const -0.4762189984321594
  call $std/math/test_asinh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 475
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 4.345239849338305
  f64.const 2.175213389013164
  f64.const -0.02728751301765442
  call $std/math/test_asinh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 476
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.38143342755525
  f64.const -2.822706083697696
  f64.const 0.20985257625579834
  call $std/math/test_asinh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 477
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -6.531673581913484
  f64.const -2.575619446591922
  f64.const 0.3113134205341339
  call $std/math/test_asinh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 478
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 9.267056966972586
  f64.const 2.9225114951048674
  f64.const 0.4991756081581116
  call $std/math/test_asinh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 479
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.6619858980995045
  f64.const 0.6212462762707166
  f64.const -0.4697347581386566
  call $std/math/test_asinh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 480
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.4066039223853553
  f64.const -0.39615990393192035
  f64.const -0.40814438462257385
  call $std/math/test_asinh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 481
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.5617597462207241
  f64.const 0.5357588870255474
  f64.const 0.3520713150501251
  call $std/math/test_asinh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 482
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.7741522965913037
  f64.const 0.7123571263197349
  f64.const 0.13371451199054718
  call $std/math/test_asinh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 483
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.6787637026394024
  f64.const -0.635182348903198
  f64.const 0.04749670997262001
  call $std/math/test_asinh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 484
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_asinh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 487
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const inf
  f64.const 0
  call $std/math/test_asinh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 488
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const -inf
  f64.const 0
  call $std/math/test_asinh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 489
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const 0
  f64.const 0
  call $std/math/test_asinh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 490
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const -0
  f64.const 0
  call $std/math/test_asinh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 491
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.066848754882812
  f32.const -2.7847299575805664
  f32.const -0.14418013393878937
  call $std/math/test_asinhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 520
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 4.345239639282227
  f32.const 2.17521333694458
  f32.const -0.020796965807676315
  call $std/math/test_asinhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 521
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.381433486938477
  f32.const -2.8227059841156006
  f32.const 0.44718533754348755
  call $std/math/test_asinhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 522
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -6.531673431396484
  f32.const -2.5756194591522217
  f32.const -0.14822272956371307
  call $std/math/test_asinhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 523
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 9.267057418823242
  f32.const 2.922511577606201
  f32.const 0.14270681142807007
  call $std/math/test_asinhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 524
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.6619858741760254
  f32.const 0.6212462782859802
  f32.const 0.3684912919998169
  call $std/math/test_asinhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 525
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.40660393238067627
  f32.const -0.39615991711616516
  f32.const -0.13170306384563446
  call $std/math/test_asinhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 526
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.5617597699165344
  f32.const 0.535758912563324
  f32.const 0.08184859901666641
  call $std/math/test_asinhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 527
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.7741522789001465
  f32.const 0.7123571038246155
  f32.const -0.14270737767219543
  call $std/math/test_asinhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 528
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.6787636876106262
  f32.const -0.6351823210716248
  f32.const 0.2583143711090088
  call $std/math/test_asinhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 529
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_asinhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 532
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const inf
  f32.const 0
  call $std/math/test_asinhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 533
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const -inf
  f32.const 0
  call $std/math/test_asinhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 534
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const 0
  f32.const 0
  call $std/math/test_asinhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 535
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const -0
  f32.const 0
  call $std/math/test_asinhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 536
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.06684839057968
  f64.const -1.4474613762633468
  f64.const 0.14857111871242523
  call $std/math/test_atan
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 548
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 4.345239849338305
  f64.const 1.344597927114538
  f64.const -0.08170335739850998
  call $std/math/test_atan
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 549
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.38143342755525
  f64.const -1.4520463463295539
  f64.const -0.07505480200052261
  call $std/math/test_atan
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 550
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -6.531673581913484
  f64.const -1.4188758658752532
  f64.const -0.057633496820926666
  call $std/math/test_atan
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 551
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 9.267056966972586
  f64.const 1.463303145448706
  f64.const 0.1606956422328949
  call $std/math/test_atan
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 552
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.6619858980995045
  f64.const 0.5847550670238325
  f64.const 0.4582556486129761
  call $std/math/test_atan
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 553
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.4066039223853553
  f64.const -0.3861864177552131
  f64.const -0.2574281692504883
  call $std/math/test_atan
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 554
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.5617597462207241
  f64.const 0.5118269531628881
  f64.const -0.11444277316331863
  call $std/math/test_atan
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 555
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.7741522965913037
  f64.const 0.6587802431653822
  f64.const -0.11286488175392151
  call $std/math/test_atan
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 556
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.6787637026394024
  f64.const -0.5963307826973472
  f64.const -0.2182842344045639
  call $std/math/test_atan
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 557
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const 0
  f64.const 0
  call $std/math/test_atan
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 560
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const -0
  f64.const 0
  call $std/math/test_atan
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 561
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const 0.7853981633974483
  f64.const -0.27576595544815063
  call $std/math/test_atan
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 562
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const -0.7853981633974483
  f64.const 0.27576595544815063
  call $std/math/test_atan
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 563
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const 1.5707963267948966
  f64.const -0.27576595544815063
  call $std/math/test_atan
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 564
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const -1.5707963267948966
  f64.const 0.27576595544815063
  call $std/math/test_atan
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 565
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_atan
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 566
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.6929821535674624
  f64.const 0.6060004555152562
  f64.const -0.17075790464878082
  call $std/math/test_atan
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 567
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.066848754882812
  f32.const -1.4474613666534424
  f32.const 0.12686480581760406
  call $std/math/test_atanf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 576
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 4.345239639282227
  f32.const 1.3445979356765747
  f32.const 0.16045434772968292
  call $std/math/test_atanf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 577
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.381433486938477
  f32.const -1.4520463943481445
  f32.const -0.39581751823425293
  call $std/math/test_atanf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 578
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -6.531673431396484
  f32.const -1.418875813484192
  f32.const 0.410570353269577
  call $std/math/test_atanf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 579
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 9.267057418823242
  f32.const 1.4633032083511353
  f32.const 0.48403501510620117
  call $std/math/test_atanf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 580
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.6619858741760254
  f32.const 0.5847550630569458
  f32.const 0.2125193476676941
  call $std/math/test_atanf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 581
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.40660393238067627
  f32.const -0.386186420917511
  f32.const 0.18169628083705902
  call $std/math/test_atanf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 582
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.5617597699165344
  f32.const 0.5118269920349121
  f32.const 0.3499770760536194
  call $std/math/test_atanf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 583
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.7741522789001465
  f32.const 0.6587802171707153
  f32.const -0.2505330741405487
  call $std/math/test_atanf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 584
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.6787636876106262
  f32.const -0.5963307619094849
  f32.const 0.17614826560020447
  call $std/math/test_atanf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 585
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const 0
  f32.const 0
  call $std/math/test_atanf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 588
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const -0
  f32.const 0
  call $std/math/test_atanf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 589
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const 0.7853981852531433
  f32.const 0.3666777014732361
  call $std/math/test_atanf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 590
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1
  f32.const -0.7853981852531433
  f32.const -0.3666777014732361
  call $std/math/test_atanf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 591
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const 1.5707963705062866
  f32.const 0.3666777014732361
  call $std/math/test_atanf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 592
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const -1.5707963705062866
  f32.const -0.3666777014732361
  call $std/math/test_atanf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 593
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_atanf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 594
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.06684839057968
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 606
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 4.345239849338305
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 607
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.38143342755525
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 608
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -6.531673581913484
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 609
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 9.267056966972586
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 610
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.6619858980995045
  f64.const 0.7963404371347943
  f64.const 0.21338365972042084
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 611
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.4066039223853553
  f64.const -0.43153570730602897
  f64.const -0.4325666129589081
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 612
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.5617597462207241
  f64.const 0.6354006111644578
  f64.const -0.06527865678071976
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 613
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.7741522965913037
  f64.const 1.0306085575277995
  f64.const 0.14632052183151245
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 614
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.6787637026394024
  f64.const -0.8268179645205255
  f64.const 0.1397128701210022
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 615
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 618
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 619
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 620
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const 0
  f64.const 0
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 621
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const -0
  f64.const 0
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 622
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const inf
  f64.const 0
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 623
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const -inf
  f64.const 0
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 624
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.0000152587890625
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 625
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1.0000152587890625
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 626
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.3552527156068805e-20
  f64.const 1.3552527156068805e-20
  f64.const 0
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 627
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 9.332636185032189e-302
  f64.const 9.332636185032189e-302
  f64.const 0
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 628
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 5.562684646268003e-309
  f64.const 5.562684646268003e-309
  f64.const 0
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 629
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -5.562684646268003e-309
  f64.const -5.562684646268003e-309
  f64.const 0
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 630
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 8988465674311579538646525e283
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_atanh
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 631
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.066848754882812
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 640
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 4.345239639282227
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 641
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.381433486938477
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 642
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -6.531673431396484
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 643
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 9.267057418823242
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 644
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.6619858741760254
  f32.const 0.7963404059410095
  f32.const 0.19112196564674377
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 645
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.40660393238067627
  f32.const -0.4315357208251953
  f32.const -0.05180925130844116
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 646
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.5617597699165344
  f32.const 0.635400652885437
  f32.const 0.11911056190729141
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 647
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.7741522789001465
  f32.const 1.0306085348129272
  f32.const 0.1798270344734192
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 648
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.6787636876106262
  f32.const -0.8268179297447205
  f32.const 0.11588983237743378
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 649
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 652
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 653
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 654
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const 0
  f32.const 0
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 655
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const -0
  f32.const 0
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 656
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const inf
  f32.const 0
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 657
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1
  f32.const -inf
  f32.const 0
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 658
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.0000152587890625
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 659
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1.0000152587890625
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 660
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.3552527156068805e-20
  f32.const 1.3552527156068805e-20
  f32.const 0
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 661
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 7.888609052210118e-31
  f32.const 7.888609052210118e-31
  f32.const 0
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 662
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 2.938735877055719e-39
  f32.const 2.938735877055719e-39
  f32.const 0
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 663
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -2.938735877055719e-39
  f32.const -2.938735877055719e-39
  f32.const 0
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 664
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1701411834604692317316873e14
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_atanhf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 665
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.06684839057968
  f64.const 4.535662560676869
  f64.const -1.0585895402489023
  f64.const 0.09766263514757156
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 677
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 4.345239849338305
  f64.const -8.88799136300345
  f64.const 2.6868734126013067
  f64.const 0.35833948850631714
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 678
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.38143342755525
  f64.const -2.763607337379588
  f64.const -1.889300091849528
  f64.const -0.46235957741737366
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 679
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -6.531673581913484
  f64.const 4.567535276842744
  f64.const -0.9605469021111489
  f64.const -0.21524477005004883
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 680
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 9.267056966972586
  f64.const 4.811392084359796
  f64.const 1.0919123946142109
  f64.const 0.3894443213939667
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 681
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -6.450045556060236
  f64.const 0.6620717923376739
  f64.const -1.468508500616424
  f64.const -0.448591411113739
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 682
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 7.858890253041697
  f64.const 0.05215452675006225
  f64.const 1.5641600512601268
  f64.const 0.3784842789173126
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 683
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.792054511984896
  f64.const 7.67640268511754
  f64.const -0.10281658910678508
  f64.const -0.13993260264396667
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 684
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.615702673197924
  f64.const 2.0119025790324803
  f64.const 0.29697974004493516
  f64.const 0.44753071665763855
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 685
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.5587586823609152
  f64.const 0.03223983060263804
  f64.const -1.5131612053303916
  f64.const 0.39708876609802246
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 686
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 689
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const -0
  f64.const 3.141592653589793
  f64.const -0.27576595544815063
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 690
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const -1
  f64.const 3.141592653589793
  f64.const -0.27576595544815063
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 691
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const -inf
  f64.const 3.141592653589793
  f64.const -0.27576595544815063
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 692
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const 1
  f64.const 0
  f64.const 0
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 693
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const inf
  f64.const 0
  f64.const 0
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 694
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const 0
  f64.const -0
  f64.const 0
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 695
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const -0
  f64.const -3.141592653589793
  f64.const 0.27576595544815063
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 696
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const -1
  f64.const -3.141592653589793
  f64.const 0.27576595544815063
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 697
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const -inf
  f64.const -3.141592653589793
  f64.const 0.27576595544815063
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 698
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const 1
  f64.const -0
  f64.const 0
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 699
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const inf
  f64.const -0
  f64.const 0
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 700
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const 0
  f64.const -1.5707963267948966
  f64.const 0.27576595544815063
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 701
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const -0
  f64.const -1.5707963267948966
  f64.const 0.27576595544815063
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 702
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const 0
  f64.const 1.5707963267948966
  f64.const -0.27576595544815063
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 703
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const -0
  f64.const 1.5707963267948966
  f64.const -0.27576595544815063
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 704
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const inf
  f64.const -0
  f64.const 0
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 705
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const inf
  f64.const 0
  f64.const 0
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 706
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const -inf
  f64.const -3.141592653589793
  f64.const 0.27576595544815063
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 707
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const -inf
  f64.const 3.141592653589793
  f64.const -0.27576595544815063
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 708
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const 0
  f64.const 1.5707963267948966
  f64.const -0.27576595544815063
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 709
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const 0
  f64.const -1.5707963267948966
  f64.const 0.27576595544815063
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 710
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const inf
  f64.const 0.7853981633974483
  f64.const -0.27576595544815063
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 711
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const -inf
  f64.const 2.356194490192345
  f64.const -0.20682445168495178
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 712
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const inf
  f64.const -0.7853981633974483
  f64.const 0.27576595544815063
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 713
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const -inf
  f64.const -2.356194490192345
  f64.const 0.20682445168495178
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 714
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.1125369292536007e-308
  f64.const 1
  f64.const 1.1125369292536007e-308
  f64.const 0
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 715
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const 8988465674311579538646525e283
  f64.const 1.1125369292536007e-308
  f64.const 0
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 716
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.5
  f64.const 8988465674311579538646525e283
  f64.const 1.668805393880401e-308
  f64.const 0
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 717
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.5
  f64.const -8988465674311579538646525e283
  f64.const 3.141592653589793
  f64.const 0
  call $std/math/test_atan2
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 718
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.066848754882812
  f32.const 4.535662651062012
  f32.const -1.0585895776748657
  f32.const -0.22352588176727295
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 727
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 4.345239639282227
  f32.const -8.887990951538086
  f32.const 2.686873435974121
  f32.const 0.09464472532272339
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 728
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.381433486938477
  f32.const -2.7636072635650635
  f32.const -1.8893001079559326
  f32.const -0.21941901743412018
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 729
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -6.531673431396484
  f32.const 4.567535400390625
  f32.const -0.9605468511581421
  f32.const 0.46015575528144836
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 730
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 9.267057418823242
  f32.const 4.811392307281494
  f32.const 1.0919123888015747
  f32.const -0.05708503723144531
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 731
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -6.450045585632324
  f32.const 0.6620717644691467
  f32.const -1.4685084819793701
  f32.const 0.19611206650733948
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 732
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 7.858890056610107
  f32.const 0.052154526114463806
  f32.const 1.5641601085662842
  f32.const 0.48143187165260315
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 733
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.7920545339584351
  f32.const 7.676402568817139
  f32.const -0.10281659662723541
  f32.const -0.4216274917125702
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 734
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.6157026886940002
  f32.const 2.0119025707244873
  f32.const 0.29697975516319275
  f32.const 0.2322007566690445
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 735
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.5587586760520935
  f32.const 0.03223983198404312
  f32.const -1.5131611824035645
  f32.const 0.16620726883411407
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 736
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 739
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const -0
  f32.const 3.1415927410125732
  f32.const 0.3666777014732361
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 740
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const -1
  f32.const 3.1415927410125732
  f32.const 0.3666777014732361
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 741
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const -inf
  f32.const 3.1415927410125732
  f32.const 0.3666777014732361
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 742
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const 1
  f32.const 0
  f32.const 0
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 743
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const inf
  f32.const 0
  f32.const 0
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 744
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const 0
  f32.const -0
  f32.const 0
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 745
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const -0
  f32.const -3.1415927410125732
  f32.const -0.3666777014732361
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 746
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const -1
  f32.const -3.1415927410125732
  f32.const -0.3666777014732361
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 747
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const -inf
  f32.const -3.1415927410125732
  f32.const -0.3666777014732361
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 748
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const 1
  f32.const -0
  f32.const 0
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 749
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const inf
  f32.const -0
  f32.const 0
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 750
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1
  f32.const 0
  f32.const -1.5707963705062866
  f32.const -0.3666777014732361
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 751
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1
  f32.const -0
  f32.const -1.5707963705062866
  f32.const -0.3666777014732361
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 752
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const 0
  f32.const 1.5707963705062866
  f32.const 0.3666777014732361
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 753
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const -0
  f32.const 1.5707963705062866
  f32.const 0.3666777014732361
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 754
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1
  f32.const inf
  f32.const -0
  f32.const 0
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 755
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const inf
  f32.const 0
  f32.const 0
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 756
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1
  f32.const -inf
  f32.const -3.1415927410125732
  f32.const -0.3666777014732361
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 757
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const -inf
  f32.const 3.1415927410125732
  f32.const 0.3666777014732361
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 758
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const 0
  f32.const 1.5707963705062866
  f32.const 0.3666777014732361
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 759
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const 0
  f32.const -1.5707963705062866
  f32.const -0.3666777014732361
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 760
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const inf
  f32.const 0.7853981852531433
  f32.const 0.3666777014732361
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 761
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const -inf
  f32.const 2.356194496154785
  f32.const 0.02500828728079796
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 762
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const inf
  f32.const -0.7853981852531433
  f32.const -0.3666777014732361
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 763
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const -inf
  f32.const -2.356194496154785
  f32.const -0.02500828728079796
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 764
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 5.877471754111438e-39
  f32.const 1
  f32.const 5.877471754111438e-39
  f32.const 0
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 765
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const 1701411834604692317316873e14
  f32.const 5.877471754111438e-39
  f32.const 0
  call $std/math/test_atan2f
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 766
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.06684839057968
  f64.const -2.0055552545020245
  f64.const 0.46667951345443726
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 778
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 4.345239849338305
  f64.const 1.6318162410515635
  f64.const -0.08160271495580673
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 779
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.38143342755525
  f64.const -2.031293910673361
  f64.const -0.048101816326379776
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 780
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -6.531673581913484
  f64.const -1.8692820012204925
  f64.const 0.08624018728733063
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 781
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 9.267056966972586
  f64.const 2.100457720859702
  f64.const -0.2722989022731781
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 782
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.6619858980995045
  f64.const 0.8715311470455973
  f64.const 0.4414918124675751
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 783
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.4066039223853553
  f64.const -0.740839030300223
  f64.const 0.016453813761472702
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 784
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.5617597462207241
  f64.const 0.8251195400559286
  f64.const 0.30680638551712036
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 785
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.7741522965913037
  f64.const 0.9182102478959914
  f64.const 0.06543998420238495
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 786
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.6787637026394024
  f64.const -0.8788326906580094
  f64.const -0.2016713172197342
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 787
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const nan:0x8000000000000
  f64.const 0
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 790
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const inf
  f64.const 0
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 791
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const -inf
  f64.const 0
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 792
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const 0
  f64.const 0
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 793
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const -0
  f64.const 0
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 794
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 9.313225746154785e-10
  f64.const 0.0009765625
  f64.const 0
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 795
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -9.313225746154785e-10
  f64.const -0.0009765625
  f64.const 0
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 796
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const 1
  f64.const 0
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 797
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const -1
  f64.const 0
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 798
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 8
  f64.const 2
  f64.const 0
  call $std/math/test_cbrt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 799
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.066848754882812
  f32.const -2.0055553913116455
  f32.const -0.44719240069389343
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 808
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 4.345239639282227
  f32.const 1.6318162679672241
  f32.const 0.44636252522468567
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 809
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.381433486938477
  f32.const -2.0312938690185547
  f32.const 0.19483426213264465
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 810
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -6.531673431396484
  f32.const -1.8692820072174072
  f32.const -0.17075514793395996
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 811
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 9.267057418823242
  f32.const 2.1004576683044434
  f32.const -0.36362043023109436
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 812
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.6619858741760254
  f32.const 0.8715311288833618
  f32.const -0.12857209146022797
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 813
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.40660393238067627
  f32.const -0.7408390641212463
  f32.const -0.4655757546424866
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 814
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.5617597699165344
  f32.const 0.8251195549964905
  f32.const 0.05601907894015312
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 815
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.7741522789001465
  f32.const 0.9182102680206299
  f32.const 0.45498204231262207
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 816
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.6787636876106262
  f32.const -0.8788326978683472
  f32.const -0.22978967428207397
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 817
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const nan:0x400000
  f32.const 0
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 820
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const inf
  f32.const 0
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 821
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const -inf
  f32.const 0
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 822
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const 0
  f32.const 0
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 823
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const -0
  f32.const 0
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 824
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 9.313225746154785e-10
  f32.const 0.0009765625
  f32.const 0
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 825
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -9.313225746154785e-10
  f32.const -0.0009765625
  f32.const 0
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 826
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const 1
  f32.const 0
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 827
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1
  f32.const -1
  f32.const 0
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 828
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 8
  f32.const 2
  f32.const 0
  call $std/math/test_cbrtf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 829
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.06684839057968
  f64.const -8
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 841
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 4.345239849338305
  f64.const 5
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 842
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -8.38143342755525
  f64.const -8
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 843
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -6.531673581913484
  f64.const -6
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 844
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 9.267056966972586
  f64.const 10
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 845
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.6619858980995045
  f64.const 1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 846
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.4066039223853553
  f64.const -0
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 847
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.5617597462207241
  f64.const 1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 848
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.7741522965913037
  f64.const 1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 849
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.6787637026394024
  f64.const -0
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 850
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const nan:0x8000000000000
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 853
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const inf
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 854
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const -inf
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 855
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const 0
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 856
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const -0
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 857
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const 1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 858
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const -1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 859
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.5
  f64.const 1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 860
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.5
  f64.const -0
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 861
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.0000152587890625
  f64.const 2
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 862
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1.0000152587890625
  f64.const -1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 863
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.9999923706054688
  f64.const 1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 864
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.9999923706054688
  f64.const -0
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 865
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 7.888609052210118e-31
  f64.const 1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 866
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -7.888609052210118e-31
  f64.const -0
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 867
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const nan:0x8000000000000
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 868
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const inf
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 869
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const -inf
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 870
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const 0
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 871
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const -0
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 872
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const 1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 873
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const -1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 874
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.5
  f64.const 1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 875
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.5
  f64.const -0
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 876
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.0000152587890625
  f64.const 2
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 877
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1.0000152587890625
  f64.const -1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 878
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.9999923706054688
  f64.const 1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 879
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.9999923706054688
  f64.const -0
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 880
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 7.888609052210118e-31
  f64.const 1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 881
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -7.888609052210118e-31
  f64.const -0
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 882
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  f64.const nan:0x8000000000000
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 883
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const inf
  f64.const inf
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 884
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -inf
  f64.const -inf
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 885
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64.const 0
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 886
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0
  f64.const -0
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 887
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64.const 1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 888
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1
  f64.const -1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 889
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.5
  f64.const 1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 890
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.5
  f64.const -0
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 891
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1.0000152587890625
  f64.const 2
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 892
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -1.0000152587890625
  f64.const -1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 893
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.9999923706054688
  f64.const 1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 894
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -0.9999923706054688
  f64.const -0
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 895
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 7.888609052210118e-31
  f64.const 1
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 896
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const -7.888609052210118e-31
  f64.const -0
  call $std/math/test_ceil
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 897
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.066848754882812
  f32.const -8
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 906
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 4.345239639282227
  f32.const 5
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 907
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -8.381433486938477
  f32.const -8
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 908
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -6.531673431396484
  f32.const -6
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 909
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 9.267057418823242
  f32.const 10
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 910
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.6619858741760254
  f32.const 1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 911
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.40660393238067627
  f32.const -0
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 912
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.5617597699165344
  f32.const 1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 913
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.7741522789001465
  f32.const 1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 914
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.6787636876106262
  f32.const -0
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 915
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const nan:0x400000
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 918
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const inf
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 919
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const -inf
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 920
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const 0
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 921
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const -0
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 922
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const 1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 923
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1
  f32.const -1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 924
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.5
  f32.const 1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 925
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.5
  f32.const -0
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 926
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.0000152587890625
  f32.const 2
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 927
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1.0000152587890625
  f32.const -1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 928
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.9999923706054688
  f32.const 1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 929
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.9999923706054688
  f32.const -0
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 930
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 7.888609052210118e-31
  f32.const 1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 931
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -7.888609052210118e-31
  f32.const -0
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 932
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const nan:0x400000
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 933
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const inf
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 934
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const -inf
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 935
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const 0
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 936
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const -0
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 937
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const 1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 938
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1
  f32.const -1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 939
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.5
  f32.const 1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 940
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.5
  f32.const -0
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 941
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.0000152587890625
  f32.const 2
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 942
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1.0000152587890625
  f32.const -1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 943
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.9999923706054688
  f32.const 1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 944
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.9999923706054688
  f32.const -0
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 945
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 7.888609052210118e-31
  f32.const 1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 946
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -7.888609052210118e-31
  f32.const -0
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 947
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const nan:0x400000
  f32.const nan:0x400000
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 948
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const inf
  f32.const inf
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 949
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -inf
  f32.const -inf
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 950
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32.const 0
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 951
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0
  f32.const -0
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 952
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32.const 1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 953
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1
  f32.const -1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 954
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.5
  f32.const 1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 955
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.5
  f32.const -0
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 956
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1.0000152587890625
  f32.const 2
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 957
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1.0000152587890625
  f32.const -1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 958
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0.9999923706054688
  f32.const 1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 959
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -0.9999923706054688
  f32.const -0
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 960
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 7.888609052210118e-31
  f32.const 1
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 961
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -7.888609052210118e-31
  f32.const -0
  call $std/math/test_ceilf
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 962
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 496
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 64
  i32.const 2
  f64.const 8988465674311579538646525e283
  call $~lib/math/NativeMath.cos
  f64.const 8988465674311579538646525e283
  call $~lib/bindings/Math/cos
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/builtins/trace
  i32.const 0
  i32.const 24
  i32.const 973
  i32.const 0
  call $~lib/builtins/abort
  unreachable
 )
 (func $start (; 74 ;) (type $FUNCSIG$v)
  call $start:std/math
 )
 (func $null (; 75 ;) (type $FUNCSIG$v)
  nop
 )
)
