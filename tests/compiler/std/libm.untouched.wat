(module
 (type $FUNCSIG$dd (func (param f64) (result f64)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$ddd (func (param f64 f64) (result f64)))
 (type $FUNCSIG$ddi (func (param f64 i32) (result f64)))
 (type $FUNCSIG$ff (func (param f32) (result f32)))
 (type $FUNCSIG$if (func (param f32) (result i32)))
 (type $FUNCSIG$fff (func (param f32 f32) (result f32)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$ffi (func (param f32 i32) (result f32)))
 (type $FUNCSIG$v (func))
 (import "Math" "cos" (func $~lib/bindings/Math/cos (param f64) (result f64)))
 (import "Math" "sin" (func $~lib/bindings/Math/sin (param f64) (result f64)))
 (import "Math" "tan" (func $~lib/bindings/Math/tan (param f64) (result f64)))
 (memory $0 1)
 (data (i32.const 8) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00)\15DNn\83\f9\a2\c0\dd4\f5\d1W\'\fcA\90C<\99\95b\dba\c5\bb\de\abcQ\fe")
 (data (i32.const 56) "\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\00\18\00\00\00\18\00\00\00 \00\00\00\04\00\00\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/math/NativeMath.E f64 (f64.const 2.718281828459045))
 (global $../../lib/libm/assembly/libm/E f64 (f64.const 2.718281828459045))
 (global $~lib/math/NativeMath.LN10 f64 (f64.const 2.302585092994046))
 (global $../../lib/libm/assembly/libm/LN10 f64 (f64.const 2.302585092994046))
 (global $~lib/math/NativeMath.LN2 f64 (f64.const 0.6931471805599453))
 (global $../../lib/libm/assembly/libm/LN2 f64 (f64.const 0.6931471805599453))
 (global $~lib/math/NativeMath.LOG10E f64 (f64.const 0.4342944819032518))
 (global $../../lib/libm/assembly/libm/LOG10E f64 (f64.const 0.4342944819032518))
 (global $~lib/math/NativeMath.LOG2E f64 (f64.const 1.4426950408889634))
 (global $../../lib/libm/assembly/libm/LOG2E f64 (f64.const 1.4426950408889634))
 (global $~lib/math/NativeMath.PI f64 (f64.const 3.141592653589793))
 (global $../../lib/libm/assembly/libm/PI f64 (f64.const 3.141592653589793))
 (global $~lib/math/NativeMath.SQRT1_2 f64 (f64.const 0.7071067811865476))
 (global $../../lib/libm/assembly/libm/SQRT1_2 f64 (f64.const 0.7071067811865476))
 (global $~lib/math/NativeMath.SQRT2 f64 (f64.const 1.4142135623730951))
 (global $../../lib/libm/assembly/libm/SQRT2 f64 (f64.const 1.4142135623730951))
 (global $~lib/math/NativeMathf.E f32 (f32.const 2.7182817459106445))
 (global $../../lib/libm/assembly/libmf/E f32 (f32.const 2.7182817459106445))
 (global $~lib/math/NativeMathf.LN10 f32 (f32.const 2.3025851249694824))
 (global $../../lib/libm/assembly/libmf/LN10 f32 (f32.const 2.3025851249694824))
 (global $~lib/math/NativeMathf.LN2 f32 (f32.const 0.6931471824645996))
 (global $../../lib/libm/assembly/libmf/LN2 f32 (f32.const 0.6931471824645996))
 (global $~lib/math/NativeMathf.LOG10E f32 (f32.const 0.4342944920063019))
 (global $../../lib/libm/assembly/libmf/LOG10E f32 (f32.const 0.4342944920063019))
 (global $~lib/math/NativeMathf.LOG2E f32 (f32.const 1.4426950216293335))
 (global $../../lib/libm/assembly/libmf/LOG2E f32 (f32.const 1.4426950216293335))
 (global $~lib/math/NativeMathf.PI f32 (f32.const 3.1415927410125732))
 (global $../../lib/libm/assembly/libmf/PI f32 (f32.const 3.1415927410125732))
 (global $~lib/math/NativeMathf.SQRT1_2 f32 (f32.const 0.7071067690849304))
 (global $../../lib/libm/assembly/libmf/SQRT1_2 f32 (f32.const 0.7071067690849304))
 (global $~lib/math/NativeMathf.SQRT2 f32 (f32.const 1.4142135381698608))
 (global $../../lib/libm/assembly/libmf/SQRT2 f32 (f32.const 1.4142135381698608))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/math/rempio2f_y (mut f64) (f64.const 0))
 (global $~lib/math/PIO2_TABLE i32 (i32.const 72))
 (export "memory" (memory $0))
 (export "libm.E" (global $../../lib/libm/assembly/libm/E))
 (export "libm.LN10" (global $../../lib/libm/assembly/libm/LN10))
 (export "libm.LN2" (global $../../lib/libm/assembly/libm/LN2))
 (export "libm.LOG10E" (global $../../lib/libm/assembly/libm/LOG10E))
 (export "libm.LOG2E" (global $../../lib/libm/assembly/libm/LOG2E))
 (export "libm.PI" (global $../../lib/libm/assembly/libm/PI))
 (export "libm.SQRT1_2" (global $../../lib/libm/assembly/libm/SQRT1_2))
 (export "libm.SQRT2" (global $../../lib/libm/assembly/libm/SQRT2))
 (export "libm.abs" (func $../../lib/libm/assembly/libm/abs))
 (export "libm.acos" (func $../../lib/libm/assembly/libm/acos))
 (export "libm.acosh" (func $../../lib/libm/assembly/libm/acosh))
 (export "libm.asin" (func $../../lib/libm/assembly/libm/asin))
 (export "libm.asinh" (func $../../lib/libm/assembly/libm/asinh))
 (export "libm.atan" (func $../../lib/libm/assembly/libm/atan))
 (export "libm.atanh" (func $../../lib/libm/assembly/libm/atanh))
 (export "libm.atan2" (func $../../lib/libm/assembly/libm/atan2))
 (export "libm.cbrt" (func $../../lib/libm/assembly/libm/cbrt))
 (export "libm.ceil" (func $../../lib/libm/assembly/libm/ceil))
 (export "libm.clz32" (func $../../lib/libm/assembly/libm/clz32))
 (export "libm.cos" (func $../../lib/libm/assembly/libm/cos))
 (export "libm.cosh" (func $../../lib/libm/assembly/libm/cosh))
 (export "libm.exp" (func $../../lib/libm/assembly/libm/exp))
 (export "libm.expm1" (func $../../lib/libm/assembly/libm/expm1))
 (export "libm.floor" (func $../../lib/libm/assembly/libm/floor))
 (export "libm.fround" (func $../../lib/libm/assembly/libm/fround))
 (export "libm.hypot" (func $../../lib/libm/assembly/libm/hypot))
 (export "libm.imul" (func $../../lib/libm/assembly/libm/imul))
 (export "libm.log" (func $../../lib/libm/assembly/libm/log))
 (export "libm.log10" (func $../../lib/libm/assembly/libm/log10))
 (export "libm.log1p" (func $../../lib/libm/assembly/libm/log1p))
 (export "libm.log2" (func $../../lib/libm/assembly/libm/log2))
 (export "libm.max" (func $../../lib/libm/assembly/libm/max))
 (export "libm.min" (func $../../lib/libm/assembly/libm/min))
 (export "libm.pow" (func $../../lib/libm/assembly/libm/pow))
 (export "libm.round" (func $../../lib/libm/assembly/libm/round))
 (export "libm.sign" (func $../../lib/libm/assembly/libm/sign))
 (export "libm.sin" (func $../../lib/libm/assembly/libm/sin))
 (export "libm.sinh" (func $../../lib/libm/assembly/libm/sinh))
 (export "libm.sqrt" (func $../../lib/libm/assembly/libm/sqrt))
 (export "libm.tan" (func $../../lib/libm/assembly/libm/tan))
 (export "libm.tanh" (func $../../lib/libm/assembly/libm/tanh))
 (export "libm.trunc" (func $../../lib/libm/assembly/libm/trunc))
 (export "libmf.E" (global $../../lib/libm/assembly/libmf/E))
 (export "libmf.LN10" (global $../../lib/libm/assembly/libmf/LN10))
 (export "libmf.LN2" (global $../../lib/libm/assembly/libmf/LN2))
 (export "libmf.LOG10E" (global $../../lib/libm/assembly/libmf/LOG10E))
 (export "libmf.LOG2E" (global $../../lib/libm/assembly/libmf/LOG2E))
 (export "libmf.PI" (global $../../lib/libm/assembly/libmf/PI))
 (export "libmf.SQRT1_2" (global $../../lib/libm/assembly/libmf/SQRT1_2))
 (export "libmf.SQRT2" (global $../../lib/libm/assembly/libmf/SQRT2))
 (export "libmf.abs" (func $../../lib/libm/assembly/libmf/abs))
 (export "libmf.acos" (func $../../lib/libm/assembly/libmf/acos))
 (export "libmf.acosh" (func $../../lib/libm/assembly/libmf/acosh))
 (export "libmf.asin" (func $../../lib/libm/assembly/libmf/asin))
 (export "libmf.asinh" (func $../../lib/libm/assembly/libmf/asinh))
 (export "libmf.atan" (func $../../lib/libm/assembly/libmf/atan))
 (export "libmf.atanh" (func $../../lib/libm/assembly/libmf/atanh))
 (export "libmf.atan2" (func $../../lib/libm/assembly/libmf/atan2))
 (export "libmf.cbrt" (func $../../lib/libm/assembly/libmf/cbrt))
 (export "libmf.ceil" (func $../../lib/libm/assembly/libmf/ceil))
 (export "libmf.clz32" (func $../../lib/libm/assembly/libmf/clz32))
 (export "libmf.cos" (func $../../lib/libm/assembly/libmf/cos))
 (export "libmf.cosh" (func $../../lib/libm/assembly/libmf/cosh))
 (export "libmf.exp" (func $../../lib/libm/assembly/libmf/exp))
 (export "libmf.expm1" (func $../../lib/libm/assembly/libmf/expm1))
 (export "libmf.floor" (func $../../lib/libm/assembly/libmf/floor))
 (export "libmf.fround" (func $../../lib/libm/assembly/libmf/fround))
 (export "libmf.hypot" (func $../../lib/libm/assembly/libmf/hypot))
 (export "libmf.imul" (func $../../lib/libm/assembly/libmf/imul))
 (export "libmf.log" (func $../../lib/libm/assembly/libmf/log))
 (export "libmf.log10" (func $../../lib/libm/assembly/libmf/log10))
 (export "libmf.log1p" (func $../../lib/libm/assembly/libmf/log1p))
 (export "libmf.log2" (func $../../lib/libm/assembly/libmf/log2))
 (export "libmf.max" (func $../../lib/libm/assembly/libmf/max))
 (export "libmf.min" (func $../../lib/libm/assembly/libmf/min))
 (export "libmf.pow" (func $../../lib/libm/assembly/libmf/pow))
 (export "libmf.round" (func $../../lib/libm/assembly/libmf/round))
 (export "libmf.sign" (func $../../lib/libm/assembly/libmf/sign))
 (export "libmf.sin" (func $../../lib/libm/assembly/libmf/sin))
 (export "libmf.sinh" (func $../../lib/libm/assembly/libmf/sinh))
 (export "libmf.sqrt" (func $../../lib/libm/assembly/libmf/sqrt))
 (export "libmf.tan" (func $../../lib/libm/assembly/libmf/tan))
 (export "libmf.tanh" (func $../../lib/libm/assembly/libmf/tanh))
 (export "libmf.trunc" (func $../../lib/libm/assembly/libmf/trunc))
 (func $../../lib/libm/assembly/libm/abs (; 3 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  local.get $0
  local.set $1
  local.get $1
  f64.abs
 )
 (func $~lib/math/R (; 4 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 f64)
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
  local.set $1
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
  local.set $2
  local.get $1
  local.get $2
  f64.div
 )
 (func $~lib/math/NativeMath.acos (; 5 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  local.get $0
  i64.reinterpret_f64
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $1
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $2
  local.get $2
  i32.const 1072693248
  i32.ge_u
  if
   local.get $0
   i64.reinterpret_f64
   i32.wrap_i64
   local.set $3
   local.get $2
   i32.const 1072693248
   i32.sub
   local.get $3
   i32.or
   i32.const 0
   i32.eq
   if
    local.get $1
    i32.const 31
    i32.shr_u
    if
     f64.const 2
     f64.const 1.5707963267948966
     f64.mul
     f32.const 7.52316384526264e-37
     f64.promote_f32
     f64.add
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
    f32.const 7.52316384526264e-37
    f64.promote_f32
    f64.add
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
  local.get $1
  i32.const 31
  i32.shr_u
  if
   f64.const 0.5
   local.get $0
   f64.const 0.5
   f64.mul
   f64.add
   local.set $6
   local.get $6
   f64.sqrt
   local.set $4
   local.get $6
   call $~lib/math/R
   local.get $4
   f64.mul
   f64.const 6.123233995736766e-17
   f64.sub
   local.set $5
   f64.const 2
   f64.const 1.5707963267948966
   local.get $4
   local.get $5
   f64.add
   f64.sub
   f64.mul
   return
  end
  f64.const 0.5
  local.get $0
  f64.const 0.5
  f64.mul
  f64.sub
  local.set $6
  local.get $6
  f64.sqrt
  local.set $4
  local.get $4
  i64.reinterpret_f64
  i64.const -4294967296
  i64.and
  f64.reinterpret_i64
  local.set $7
  local.get $6
  local.get $7
  local.get $7
  f64.mul
  f64.sub
  local.get $4
  local.get $7
  f64.add
  f64.div
  local.set $8
  local.get $6
  call $~lib/math/R
  local.get $4
  f64.mul
  local.get $8
  f64.add
  local.set $5
  f64.const 2
  local.get $7
  local.get $5
  f64.add
  f64.mul
 )
 (func $../../lib/libm/assembly/libm/acos (; 6 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.acos
 )
 (func $~lib/math/NativeMath.log1p (; 7 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  local.get $0
  i64.reinterpret_f64
  local.set $1
  local.get $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $2
  i32.const 1
  local.set $3
  f64.const 0
  local.set $4
  f64.const 0
  local.set $5
  local.get $2
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
    f64.const 0
    local.set $4
    local.get $0
    local.set $5
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
   local.set $1
   local.get $1
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   local.set $6
   local.get $6
   i32.const 1072693248
   i32.const 1072079006
   i32.sub
   i32.add
   local.set $6
   local.get $6
   i32.const 20
   i32.shr_u
   i32.const 1023
   i32.sub
   local.set $3
   local.get $3
   i32.const 54
   i32.lt_s
   if
    local.get $1
    f64.reinterpret_i64
    local.set $7
    local.get $3
    i32.const 2
    i32.ge_s
    if (result f64)
     f64.const 1
     local.get $7
     local.get $0
     f64.sub
     f64.sub
    else     
     local.get $0
     local.get $7
     f64.const 1
     f64.sub
     f64.sub
    end
    local.set $4
    local.get $4
    local.get $7
    f64.div
    local.set $4
   else    
    f64.const 0
    local.set $4
   end
   local.get $6
   i32.const 1048575
   i32.and
   i32.const 1072079006
   i32.add
   local.set $6
   local.get $6
   i64.extend_i32_u
   i64.const 32
   i64.shl
   local.get $1
   i64.const 4294967295
   i64.and
   i64.or
   local.set $1
   local.get $1
   f64.reinterpret_i64
   f64.const 1
   f64.sub
   local.set $5
  end
  f64.const 0.5
  local.get $5
  f64.mul
  local.get $5
  f64.mul
  local.set $8
  local.get $5
  f64.const 2
  local.get $5
  f64.add
  f64.div
  local.set $9
  local.get $9
  local.get $9
  f64.mul
  local.set $10
  local.get $10
  local.get $10
  f64.mul
  local.set $11
  local.get $11
  f64.const 0.3999999999940942
  local.get $11
  f64.const 0.22222198432149784
  local.get $11
  f64.const 0.15313837699209373
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $12
  local.get $10
  f64.const 0.6666666666666735
  local.get $11
  f64.const 0.2857142874366239
  local.get $11
  f64.const 0.1818357216161805
  local.get $11
  f64.const 0.14798198605116586
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $13
  local.get $13
  local.get $12
  f64.add
  local.set $14
  local.get $3
  f64.convert_i32_s
  local.set $15
  local.get $9
  local.get $8
  local.get $14
  f64.add
  f64.mul
  local.get $15
  f64.const 1.9082149292705877e-10
  f64.mul
  local.get $4
  f64.add
  f64.add
  local.get $8
  f64.sub
  local.get $5
  f64.add
  local.get $15
  f64.const 0.6931471803691238
  f64.mul
  f64.add
 )
 (func $~lib/math/NativeMath.log (; 8 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 i32)
  local.get $0
  i64.reinterpret_f64
  local.set $1
  local.get $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  i32.const 1048576
  i32.lt_u
  if (result i32)
   i32.const 1
  else   
   local.get $2
   i32.const 31
   i32.shr_u
  end
  if
   local.get $1
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
   local.get $2
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
   local.get $3
   i32.const 54
   i32.sub
   local.set $3
   local.get $0
   f64.const 18014398509481984
   f64.mul
   local.set $0
   local.get $0
   i64.reinterpret_f64
   local.set $1
   local.get $1
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   local.set $2
  else   
   local.get $2
   i32.const 2146435072
   i32.ge_u
   if
    local.get $0
    return
   else    
    local.get $2
    i32.const 1072693248
    i32.eq
    if (result i32)
     local.get $1
     i64.const 32
     i64.shl
     i64.const 0
     i64.eq
    else     
     i32.const 0
    end
    if
     f64.const 0
     return
    end
   end
  end
  local.get $2
  i32.const 1072693248
  i32.const 1072079006
  i32.sub
  i32.add
  local.set $2
  local.get $3
  local.get $2
  i32.const 20
  i32.shr_s
  i32.const 1023
  i32.sub
  i32.add
  local.set $3
  local.get $2
  i32.const 1048575
  i32.and
  i32.const 1072079006
  i32.add
  local.set $2
  local.get $2
  i64.extend_i32_u
  i64.const 32
  i64.shl
  local.get $1
  i64.const 4294967295
  i64.and
  i64.or
  local.set $1
  local.get $1
  f64.reinterpret_i64
  local.set $0
  local.get $0
  f64.const 1
  f64.sub
  local.set $4
  f64.const 0.5
  local.get $4
  f64.mul
  local.get $4
  f64.mul
  local.set $5
  local.get $4
  f64.const 2
  local.get $4
  f64.add
  f64.div
  local.set $6
  local.get $6
  local.get $6
  f64.mul
  local.set $7
  local.get $7
  local.get $7
  f64.mul
  local.set $8
  local.get $8
  f64.const 0.3999999999940942
  local.get $8
  f64.const 0.22222198432149784
  local.get $8
  f64.const 0.15313837699209373
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $9
  local.get $7
  f64.const 0.6666666666666735
  local.get $8
  f64.const 0.2857142874366239
  local.get $8
  f64.const 0.1818357216161805
  local.get $8
  f64.const 0.14798198605116586
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $10
  local.get $10
  local.get $9
  f64.add
  local.set $11
  local.get $3
  local.set $12
  local.get $6
  local.get $5
  local.get $11
  f64.add
  f64.mul
  local.get $12
  f64.convert_i32_s
  f64.const 1.9082149292705877e-10
  f64.mul
  f64.add
  local.get $5
  f64.sub
  local.get $4
  f64.add
  local.get $12
  f64.convert_i32_s
  f64.const 0.6931471803691238
  f64.mul
  f64.add
 )
 (func $~lib/math/NativeMath.acosh (; 9 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  local.get $0
  i64.reinterpret_f64
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.set $1
  local.get $1
  i64.const 1024
  i64.lt_u
  if
   local.get $0
   f64.const 1
   f64.sub
   local.get $0
   f64.const 1
   f64.sub
   local.get $0
   f64.const 1
   f64.sub
   f64.mul
   f64.const 2
   local.get $0
   f64.const 1
   f64.sub
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
 (func $../../lib/libm/assembly/libm/acosh (; 10 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.acosh
 )
 (func $~lib/math/NativeMath.asin (; 11 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  local.get $0
  i64.reinterpret_f64
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $1
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $2
  local.get $2
  i32.const 1072693248
  i32.ge_u
  if
   local.get $0
   i64.reinterpret_f64
   i32.wrap_i64
   local.set $3
   local.get $2
   i32.const 1072693248
   i32.sub
   local.get $3
   i32.or
   i32.const 0
   i32.eq
   if
    local.get $0
    f64.const 1.5707963267948966
    f64.mul
    f32.const 7.52316384526264e-37
    f64.promote_f32
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
   i32.const 1045430272
   i32.lt_u
   if (result i32)
    local.get $2
    i32.const 1048576
    i32.ge_u
   else    
    i32.const 0
   end
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
  local.set $4
  local.get $4
  f64.sqrt
  local.set $5
  local.get $4
  call $~lib/math/R
  local.set $6
  local.get $2
  i32.const 1072640819
  i32.ge_u
  if
   f64.const 1.5707963267948966
   f64.const 2
   local.get $5
   local.get $5
   local.get $6
   f64.mul
   f64.add
   f64.mul
   f64.const 6.123233995736766e-17
   f64.sub
   f64.sub
   local.set $0
  else   
   local.get $5
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $7
   local.get $4
   local.get $7
   local.get $7
   f64.mul
   f64.sub
   local.get $5
   local.get $7
   f64.add
   f64.div
   local.set $8
   f64.const 0.5
   f64.const 1.5707963267948966
   f64.mul
   f64.const 2
   local.get $5
   f64.mul
   local.get $6
   f64.mul
   f64.const 6.123233995736766e-17
   f64.const 2
   local.get $8
   f64.mul
   f64.sub
   f64.sub
   f64.const 0.5
   f64.const 1.5707963267948966
   f64.mul
   f64.const 2
   local.get $7
   f64.mul
   f64.sub
   f64.sub
   f64.sub
   local.set $0
  end
  local.get $1
  i32.const 31
  i32.shr_u
  if
   local.get $0
   f64.neg
   return
  end
  local.get $0
 )
 (func $../../lib/libm/assembly/libm/asin (; 12 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.asin
 )
 (func $~lib/math/NativeMath.asinh (; 13 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i64)
  (local $3 f64)
  local.get $0
  i64.reinterpret_f64
  local.set $1
  local.get $1
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.set $2
  local.get $1
  i64.const 9223372036854775807
  i64.and
  f64.reinterpret_i64
  local.set $3
  local.get $2
  i64.const 1049
  i64.ge_u
  if
   local.get $3
   call $~lib/math/NativeMath.log
   f64.const 0.6931471805599453
   f64.add
   local.set $3
  else   
   local.get $2
   i64.const 1024
   i64.ge_u
   if
    f64.const 2
    local.get $3
    f64.mul
    f64.const 1
    local.get $3
    local.get $3
    f64.mul
    f64.const 1
    f64.add
    f64.sqrt
    local.get $3
    f64.add
    f64.div
    f64.add
    call $~lib/math/NativeMath.log
    local.set $3
   else    
    local.get $2
    i64.const 997
    i64.ge_u
    if
     local.get $3
     local.get $3
     local.get $3
     f64.mul
     local.get $3
     local.get $3
     f64.mul
     f64.const 1
     f64.add
     f64.sqrt
     f64.const 1
     f64.add
     f64.div
     f64.add
     call $~lib/math/NativeMath.log1p
     local.set $3
    end
   end
  end
  local.get $3
  local.get $0
  f64.copysign
 )
 (func $../../lib/libm/assembly/libm/asinh (; 14 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.asinh
 )
 (func $~lib/number/isNaN<f64> (; 15 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.ne
 )
 (func $~lib/math/NativeMath.atan (; 16 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 i32)
  local.get $0
  i64.reinterpret_f64
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $1
  local.get $0
  local.set $2
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $1
  local.get $1
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
   f32.const 7.52316384526264e-37
   f64.promote_f32
   f64.add
   local.set $3
   local.get $3
   local.get $2
   f64.copysign
   return
  end
  local.get $1
  i32.const 1071382528
  i32.lt_u
  if
   local.get $1
   i32.const 1044381696
   i32.lt_u
   if
    local.get $0
    return
   end
   i32.const -1
   local.set $4
  else   
   local.get $0
   f64.abs
   local.set $0
   local.get $1
   i32.const 1072889856
   i32.lt_u
   if
    local.get $1
    i32.const 1072037888
    i32.lt_u
    if
     i32.const 0
     local.set $4
     f64.const 2
     local.get $0
     f64.mul
     f64.const 1
     f64.sub
     f64.const 2
     local.get $0
     f64.add
     f64.div
     local.set $0
    else     
     i32.const 1
     local.set $4
     local.get $0
     f64.const 1
     f64.sub
     local.get $0
     f64.const 1
     f64.add
     f64.div
     local.set $0
    end
   else    
    local.get $1
    i32.const 1073971200
    i32.lt_u
    if
     i32.const 2
     local.set $4
     local.get $0
     f64.const 1.5
     f64.sub
     f64.const 1
     f64.const 1.5
     local.get $0
     f64.mul
     f64.add
     f64.div
     local.set $0
    else     
     i32.const 3
     local.set $4
     f64.const -1
     local.get $0
     f64.div
     local.set $0
    end
   end
  end
  local.get $0
  local.get $0
  f64.mul
  local.set $3
  local.get $3
  local.get $3
  f64.mul
  local.set $5
  local.get $3
  f64.const 0.3333333333333293
  local.get $5
  f64.const 0.14285714272503466
  local.get $5
  f64.const 0.09090887133436507
  local.get $5
  f64.const 0.06661073137387531
  local.get $5
  f64.const 0.049768779946159324
  local.get $5
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
  local.set $6
  local.get $5
  f64.const -0.19999999999876483
  local.get $5
  f64.const -0.11111110405462356
  local.get $5
  f64.const -0.0769187620504483
  local.get $5
  f64.const -0.058335701337905735
  local.get $5
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
  local.set $7
  local.get $0
  local.get $6
  local.get $7
  f64.add
  f64.mul
  local.set $8
  local.get $4
  i32.const 0
  i32.lt_s
  if
   local.get $0
   local.get $8
   f64.sub
   return
  end
  block $break|0
   block $case4|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        local.get $4
        local.set $9
        local.get $9
        i32.const 0
        i32.eq
        br_if $case0|0
        local.get $9
        i32.const 1
        i32.eq
        br_if $case1|0
        local.get $9
        i32.const 2
        i32.eq
        br_if $case2|0
        local.get $9
        i32.const 3
        i32.eq
        br_if $case3|0
        br $case4|0
       end
       f64.const 0.4636476090008061
       local.get $8
       f64.const 2.2698777452961687e-17
       f64.sub
       local.get $0
       f64.sub
       f64.sub
       local.set $3
       br $break|0
      end
      f64.const 0.7853981633974483
      local.get $8
      f64.const 3.061616997868383e-17
      f64.sub
      local.get $0
      f64.sub
      f64.sub
      local.set $3
      br $break|0
     end
     f64.const 0.982793723247329
     local.get $8
     f64.const 1.3903311031230998e-17
     f64.sub
     local.get $0
     f64.sub
     f64.sub
     local.set $3
     br $break|0
    end
    f64.const 1.5707963267948966
    local.get $8
    f64.const 6.123233995736766e-17
    f64.sub
    local.get $0
    f64.sub
    f64.sub
    local.set $3
    br $break|0
   end
   unreachable
  end
  local.get $3
  local.get $2
  f64.copysign
 )
 (func $../../lib/libm/assembly/libm/atan (; 17 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.atan
 )
 (func $~lib/math/NativeMath.atanh (; 18 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 f64)
  local.get $0
  i64.reinterpret_f64
  local.set $1
  local.get $1
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.set $2
  local.get $1
  i64.const 63
  i64.shr_u
  local.set $3
  local.get $1
  i64.const 9223372036854775807
  i64.and
  local.set $1
  local.get $1
  f64.reinterpret_i64
  local.set $4
  local.get $2
  i64.const 1022
  i64.lt_u
  if
   local.get $2
   i64.const 991
   i64.ge_u
   if
    f64.const 0.5
    f64.const 2
    local.get $4
    f64.mul
    f64.const 2
    local.get $4
    f64.mul
    local.get $4
    f64.mul
    f64.const 1
    local.get $4
    f64.sub
    f64.div
    f64.add
    call $~lib/math/NativeMath.log1p
    f64.mul
    local.set $4
   end
  else   
   f64.const 0.5
   f64.const 2
   local.get $4
   f64.const 1
   local.get $4
   f64.sub
   f64.div
   f64.mul
   call $~lib/math/NativeMath.log1p
   f64.mul
   local.set $4
  end
  local.get $4
  local.get $0
  f64.copysign
 )
 (func $../../lib/libm/assembly/libm/atanh (; 19 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.atanh
 )
 (func $~lib/math/NativeMath.atan2 (; 20 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
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
  local.get $1
  i64.reinterpret_f64
  local.set $2
  local.get $2
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $3
  local.get $2
  i32.wrap_i64
  local.set $4
  local.get $0
  i64.reinterpret_f64
  local.set $2
  local.get $2
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $5
  local.get $2
  i32.wrap_i64
  local.set $6
  local.get $3
  i32.const 1072693248
  i32.sub
  local.get $4
  i32.or
  i32.const 0
  i32.eq
  if
   local.get $0
   call $~lib/math/NativeMath.atan
   return
  end
  local.get $5
  i32.const 31
  i32.shr_u
  i32.const 1
  i32.and
  local.get $3
  i32.const 30
  i32.shr_u
  i32.const 2
  i32.and
  i32.or
  local.set $7
  local.get $3
  i32.const 2147483647
  i32.and
  local.set $3
  local.get $5
  i32.const 2147483647
  i32.and
  local.set $5
  local.get $5
  local.get $6
  i32.or
  i32.const 0
  i32.eq
  if
   block $break|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        local.get $7
        local.set $8
        local.get $8
        i32.const 0
        i32.eq
        br_if $case0|0
        local.get $8
        i32.const 1
        i32.eq
        br_if $case1|0
        local.get $8
        i32.const 2
        i32.eq
        br_if $case2|0
        local.get $8
        i32.const 3
        i32.eq
        br_if $case3|0
        br $break|0
       end
      end
      local.get $0
      return
     end
     global.get $~lib/math/NativeMath.PI
     return
    end
    global.get $~lib/math/NativeMath.PI
    f64.neg
    return
   end
  end
  local.get $3
  local.get $4
  i32.or
  i32.const 0
  i32.eq
  if
   local.get $7
   i32.const 1
   i32.and
   if (result f64)
    global.get $~lib/math/NativeMath.PI
    f64.neg
    f64.const 2
    f64.div
   else    
    global.get $~lib/math/NativeMath.PI
    f64.const 2
    f64.div
   end
   return
  end
  local.get $3
  i32.const 2146435072
  i32.eq
  if
   local.get $5
   i32.const 2146435072
   i32.eq
   if
    block $break|1
     block $case3|1
      block $case2|1
       block $case1|1
        block $case0|1
         local.get $7
         local.set $8
         local.get $8
         i32.const 0
         i32.eq
         br_if $case0|1
         local.get $8
         i32.const 1
         i32.eq
         br_if $case1|1
         local.get $8
         i32.const 2
         i32.eq
         br_if $case2|1
         local.get $8
         i32.const 3
         i32.eq
         br_if $case3|1
         br $break|1
        end
        global.get $~lib/math/NativeMath.PI
        f64.const 4
        f64.div
        return
       end
       global.get $~lib/math/NativeMath.PI
       f64.neg
       f64.const 4
       f64.div
       return
      end
      f64.const 3
      global.get $~lib/math/NativeMath.PI
      f64.mul
      f64.const 4
      f64.div
      return
     end
     f64.const -3
     global.get $~lib/math/NativeMath.PI
     f64.mul
     f64.const 4
     f64.div
     return
    end
   else    
    block $break|2
     block $case3|2
      block $case2|2
       block $case1|2
        block $case0|2
         local.get $7
         local.set $8
         local.get $8
         i32.const 0
         i32.eq
         br_if $case0|2
         local.get $8
         i32.const 1
         i32.eq
         br_if $case1|2
         local.get $8
         i32.const 2
         i32.eq
         br_if $case2|2
         local.get $8
         i32.const 3
         i32.eq
         br_if $case3|2
         br $break|2
        end
        f64.const 0
        return
       end
       f64.const -0
       return
      end
      global.get $~lib/math/NativeMath.PI
      return
     end
     global.get $~lib/math/NativeMath.PI
     f64.neg
     return
    end
   end
  end
  local.get $3
  i32.const 67108864
  i32.add
  local.get $5
  i32.lt_u
  if (result i32)
   i32.const 1
  else   
   local.get $5
   i32.const 2146435072
   i32.eq
  end
  if
   local.get $7
   i32.const 1
   i32.and
   if (result f64)
    global.get $~lib/math/NativeMath.PI
    f64.neg
    f64.const 2
    f64.div
   else    
    global.get $~lib/math/NativeMath.PI
    f64.const 2
    f64.div
   end
   return
  end
  local.get $7
  i32.const 2
  i32.and
  if (result i32)
   local.get $5
   i32.const 67108864
   i32.add
   local.get $3
   i32.lt_u
  else   
   i32.const 0
  end
  if
   f64.const 0
   local.set $9
  else   
   local.get $0
   local.get $1
   f64.div
   f64.abs
   call $~lib/math/NativeMath.atan
   local.set $9
  end
  block $break|3
   block $case3|3
    block $case2|3
     block $case1|3
      block $case0|3
       local.get $7
       local.set $8
       local.get $8
       i32.const 0
       i32.eq
       br_if $case0|3
       local.get $8
       i32.const 1
       i32.eq
       br_if $case1|3
       local.get $8
       i32.const 2
       i32.eq
       br_if $case2|3
       local.get $8
       i32.const 3
       i32.eq
       br_if $case3|3
       br $break|3
      end
      local.get $9
      return
     end
     local.get $9
     f64.neg
     return
    end
    global.get $~lib/math/NativeMath.PI
    local.get $9
    f64.const 1.2246467991473532e-16
    f64.sub
    f64.sub
    return
   end
   local.get $9
   f64.const 1.2246467991473532e-16
   f64.sub
   global.get $~lib/math/NativeMath.PI
   f64.sub
   return
  end
  unreachable
 )
 (func $../../lib/libm/assembly/libm/atan2 (; 21 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  local.get $0
  local.get $1
  call $~lib/math/NativeMath.atan2
 )
 (func $~lib/math/NativeMath.cbrt (; 22 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  local.get $0
  i64.reinterpret_f64
  local.set $1
  local.get $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  i32.const 2147483647
  i32.and
  local.set $2
  local.get $2
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
  if
   local.get $0
   f64.const 18014398509481984
   f64.mul
   i64.reinterpret_f64
   local.set $1
   local.get $1
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   i32.const 2147483647
   i32.and
   local.set $2
   local.get $2
   i32.const 0
   i32.eq
   if
    local.get $0
    return
   end
   local.get $2
   i32.const 3
   i32.div_u
   i32.const 696219795
   i32.add
   local.set $2
  else   
   local.get $2
   i32.const 3
   i32.div_u
   i32.const 715094163
   i32.add
   local.set $2
  end
  local.get $1
  i64.const 1
  i64.const 63
  i64.shl
  i64.and
  local.set $1
  local.get $1
  local.get $2
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.set $1
  local.get $1
  f64.reinterpret_i64
  local.set $3
  local.get $3
  local.get $3
  f64.mul
  local.get $3
  local.get $0
  f64.div
  f64.mul
  local.set $4
  local.get $3
  f64.const 1.87595182427177
  local.get $4
  f64.const -1.8849797954337717
  local.get $4
  f64.const 1.6214297201053545
  f64.mul
  f64.add
  f64.mul
  f64.add
  local.get $4
  local.get $4
  f64.mul
  local.get $4
  f64.mul
  f64.const -0.758397934778766
  local.get $4
  f64.const 0.14599619288661245
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $3
  local.get $3
  i64.reinterpret_f64
  i64.const 2147483648
  i64.add
  i64.const -1073741824
  i64.and
  f64.reinterpret_i64
  local.set $3
  local.get $3
  local.get $3
  f64.mul
  local.set $5
  local.get $0
  local.get $5
  f64.div
  local.set $4
  local.get $4
  local.get $3
  f64.sub
  f64.const 2
  local.get $3
  f64.mul
  local.get $4
  f64.add
  f64.div
  local.set $4
  local.get $3
  local.get $3
  local.get $4
  f64.mul
  f64.add
  local.set $3
  local.get $3
 )
 (func $../../lib/libm/assembly/libm/cbrt (; 23 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.cbrt
 )
 (func $../../lib/libm/assembly/libm/ceil (; 24 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  local.get $0
  local.set $1
  local.get $1
  f64.ceil
 )
 (func $~lib/number/isFinite<f64> (; 25 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.sub
  f64.const 0
  f64.eq
 )
 (func $~lib/math/NativeMath.clz32 (; 26 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/number/isFinite<f64>
  i32.eqz
  if
   f64.const 32
   return
  end
  local.get $0
  f64.const 4294967296
  local.get $0
  f64.const 1
  f64.const 4294967296
  f64.div
  f64.mul
  f64.floor
  f64.mul
  f64.sub
  i64.trunc_f64_s
  i32.wrap_i64
  i32.clz
  f64.convert_i32_s
 )
 (func $../../lib/libm/assembly/libm/clz32 (; 27 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.clz32
 )
 (func $~lib/math/NativeMath.cos (; 28 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/bindings/Math/cos
 )
 (func $../../lib/libm/assembly/libm/cos (; 29 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.cos
 )
 (func $~lib/math/NativeMath.expm1 (; 30 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  local.get $0
  i64.reinterpret_f64
  local.set $1
  local.get $1
  i64.const 32
  i64.shr_u
  i64.const 2147483647
  i64.and
  i32.wrap_i64
  local.set $2
  i32.const 0
  local.set $3
  local.get $1
  i64.const 63
  i64.shr_u
  i32.wrap_i64
  local.set $4
  local.get $2
  i32.const 1078159482
  i32.ge_u
  if
   local.get $0
   call $~lib/number/isNaN<f64>
   if
    local.get $0
    return
   end
   local.get $4
   if
    f64.const -1
    return
   end
   local.get $0
   f64.const 709.782712893384
   f64.gt
   if
    local.get $0
    f64.const 8988465674311579538646525e283
    f64.mul
    return
   end
  end
  f64.const 0
  local.set $5
  local.get $2
  i32.const 1071001154
  i32.gt_u
  if
   i32.const 1
   local.get $4
   i32.const 1
   i32.shl
   i32.sub
   f64.const 1.4426950408889634
   local.get $0
   f64.mul
   f64.const 0.5
   local.get $0
   f64.copysign
   f64.add
   i32.trunc_f64_s
   local.get $2
   i32.const 1072734898
   i32.lt_u
   select
   local.set $3
   local.get $3
   f64.convert_i32_s
   local.set $6
   local.get $0
   local.get $6
   f64.const 0.6931471803691238
   f64.mul
   f64.sub
   local.set $7
   local.get $6
   f64.const 1.9082149292705877e-10
   f64.mul
   local.set $8
   local.get $7
   local.get $8
   f64.sub
   local.set $0
   local.get $7
   local.get $0
   f64.sub
   local.get $8
   f64.sub
   local.set $5
  else   
   local.get $2
   i32.const 1016070144
   i32.lt_u
   if
    local.get $0
    return
   end
  end
  f64.const 0.5
  local.get $0
  f64.mul
  local.set $9
  local.get $0
  local.get $9
  f64.mul
  local.set $10
  local.get $10
  local.get $10
  f64.mul
  local.set $11
  f64.const 1
  local.get $10
  f64.const -0.03333333333333313
  f64.mul
  f64.add
  local.get $11
  f64.const 1.5873015872548146e-03
  local.get $10
  f64.const -7.93650757867488e-05
  f64.mul
  f64.add
  local.get $11
  f64.const 4.008217827329362e-06
  local.get $10
  f64.const -2.0109921818362437e-07
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  local.set $12
  f64.const 3
  local.get $12
  local.get $9
  f64.mul
  f64.sub
  local.set $6
  local.get $10
  local.get $12
  local.get $6
  f64.sub
  f64.const 6
  local.get $0
  local.get $6
  f64.mul
  f64.sub
  f64.div
  f64.mul
  local.set $13
  local.get $3
  i32.const 0
  i32.eq
  if
   local.get $0
   local.get $0
   local.get $13
   f64.mul
   local.get $10
   f64.sub
   f64.sub
   return
  end
  local.get $0
  local.get $13
  local.get $5
  f64.sub
  f64.mul
  local.get $5
  f64.sub
  local.set $13
  local.get $13
  local.get $10
  f64.sub
  local.set $13
  local.get $3
  i32.const -1
  i32.eq
  if
   f64.const 0.5
   local.get $0
   local.get $13
   f64.sub
   f64.mul
   f64.const 0.5
   f64.sub
   return
  end
  local.get $3
  i32.const 1
  i32.eq
  if
   local.get $0
   f64.const -0.25
   f64.lt
   if
    f64.const -2
    local.get $13
    local.get $0
    f64.const 0.5
    f64.add
    f64.sub
    f64.mul
    return
   end
   f64.const 1
   f64.const 2
   local.get $0
   local.get $13
   f64.sub
   f64.mul
   f64.add
   return
  end
  i64.const 1023
  local.get $3
  i64.extend_i32_s
  i64.add
  i64.const 52
  i64.shl
  local.set $1
  local.get $1
  f64.reinterpret_i64
  local.set $14
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   i32.const 1
  else   
   local.get $3
   i32.const 56
   i32.gt_s
  end
  if
   local.get $0
   local.get $13
   f64.sub
   f64.const 1
   f64.add
   local.set $15
   local.get $3
   i32.const 1024
   i32.eq
   if
    local.get $15
    f64.const 2
    f64.mul
    f64.const 8988465674311579538646525e283
    f64.mul
    local.set $15
   else    
    local.get $15
    local.get $14
    f64.mul
    local.set $15
   end
   local.get $15
   f64.const 1
   f64.sub
   return
  end
  i64.const 1023
  local.get $3
  i64.extend_i32_s
  i64.sub
  i64.const 52
  i64.shl
  local.set $1
  local.get $1
  f64.reinterpret_i64
  local.set $15
  local.get $3
  i32.const 20
  i32.lt_s
  if
   f64.const 1
   local.get $15
   f64.sub
   local.get $13
   f64.sub
   local.set $15
  else   
   f64.const 1
   local.get $13
   local.get $15
   f64.add
   f64.sub
   local.set $15
  end
  local.get $0
  local.get $15
  f64.add
  local.get $14
  f64.mul
 )
 (func $~lib/math/NativeMath.scalbn (; 31 ;) (type $FUNCSIG$ddi) (param $0 f64) (param $1 i32) (result f64)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.set $2
  local.get $1
  i32.const 1023
  i32.gt_s
  if
   local.get $2
   f64.const 8988465674311579538646525e283
   f64.mul
   local.set $2
   local.get $1
   i32.const 1023
   i32.sub
   local.set $1
   local.get $1
   i32.const 1023
   i32.gt_s
   if
    local.get $2
    f64.const 8988465674311579538646525e283
    f64.mul
    local.set $2
    local.get $1
    i32.const 1023
    i32.sub
    local.tee $3
    i32.const 1023
    local.tee $4
    local.get $3
    local.get $4
    i32.lt_s
    select
    local.set $1
   end
  else   
   local.get $1
   i32.const -1022
   i32.lt_s
   if
    local.get $2
    f64.const 2.2250738585072014e-308
    f64.const 9007199254740992
    f64.mul
    f64.mul
    local.set $2
    local.get $1
    i32.const 1022
    i32.const 53
    i32.sub
    i32.add
    local.set $1
    local.get $1
    i32.const -1022
    i32.lt_s
    if
     local.get $2
     f64.const 2.2250738585072014e-308
     f64.const 9007199254740992
     f64.mul
     f64.mul
     local.set $2
     local.get $1
     i32.const 1022
     i32.add
     i32.const 53
     i32.sub
     local.tee $3
     i32.const -1022
     local.tee $4
     local.get $3
     local.get $4
     i32.gt_s
     select
     local.set $1
    end
   end
  end
  local.get $2
  i64.const 1023
  local.get $1
  i64.extend_i32_s
  i64.add
  i64.const 52
  i64.shl
  f64.reinterpret_i64
  f64.mul
 )
 (func $~lib/math/NativeMath.exp (; 32 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  local.get $0
  i64.reinterpret_f64
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $1
  local.get $1
  i32.const 31
  i32.shr_u
  local.set $2
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $1
  local.get $1
  i32.const 1082532651
  i32.ge_u
  if
   local.get $0
   call $~lib/number/isNaN<f64>
   if
    local.get $0
    return
   end
   local.get $0
   f64.const 709.782712893384
   f64.gt
   if
    local.get $0
    f64.const 8988465674311579538646525e283
    f64.mul
    return
   end
   local.get $0
   f64.const -745.1332191019411
   f64.lt
   if
    f64.const 0
    return
   end
  end
  f64.const 0
  local.set $4
  i32.const 0
  local.set $5
  local.get $1
  i32.const 1071001154
  i32.gt_u
  if
   local.get $1
   i32.const 1072734898
   i32.ge_u
   if
    f64.const 1.4426950408889634
    local.get $0
    f64.mul
    f64.const 0.5
    local.get $0
    f64.copysign
    f64.add
    i32.trunc_f64_s
    local.set $5
   else    
    i32.const 1
    local.get $2
    i32.const 1
    i32.shl
    i32.sub
    local.set $5
   end
   local.get $0
   local.get $5
   f64.convert_i32_s
   f64.const 0.6931471803691238
   f64.mul
   f64.sub
   local.set $3
   local.get $5
   f64.convert_i32_s
   f64.const 1.9082149292705877e-10
   f64.mul
   local.set $4
   local.get $3
   local.get $4
   f64.sub
   local.set $0
  else   
   local.get $1
   i32.const 1043333120
   i32.gt_u
   if
    local.get $0
    local.set $3
   else    
    f64.const 1
    local.get $0
    f64.add
    return
   end
  end
  local.get $0
  local.get $0
  f64.mul
  local.set $6
  local.get $6
  local.get $6
  f64.mul
  local.set $7
  local.get $0
  local.get $6
  f64.const 0.16666666666666602
  f64.mul
  local.get $7
  f64.const -2.7777777777015593e-03
  local.get $6
  f64.const 6.613756321437934e-05
  f64.mul
  f64.add
  local.get $7
  f64.const -1.6533902205465252e-06
  local.get $6
  f64.const 4.1381367970572385e-08
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.sub
  local.set $8
  f64.const 1
  local.get $0
  local.get $8
  f64.mul
  f64.const 2
  local.get $8
  f64.sub
  f64.div
  local.get $4
  f64.sub
  local.get $3
  f64.add
  f64.add
  local.set $9
  local.get $5
  i32.const 0
  i32.eq
  if
   local.get $9
   return
  end
  local.get $9
  local.get $5
  call $~lib/math/NativeMath.scalbn
 )
 (func $~lib/math/NativeMath.cosh (; 33 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  local.get $0
  i64.reinterpret_f64
  local.set $1
  local.get $1
  i64.const 9223372036854775807
  i64.and
  local.set $1
  local.get $1
  f64.reinterpret_i64
  local.set $0
  local.get $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $2
  local.get $2
  i32.const 1072049730
  i32.lt_u
  if
   local.get $2
   i32.const 1045430272
   i32.lt_u
   if
    f64.const 1
    return
   end
   local.get $0
   call $~lib/math/NativeMath.expm1
   local.set $3
   f64.const 1
   local.get $3
   local.get $3
   f64.mul
   f64.const 2
   f64.const 2
   local.get $3
   f64.mul
   f64.add
   f64.div
   f64.add
   return
  end
  local.get $2
  i32.const 1082535490
  i32.lt_u
  if
   local.get $0
   call $~lib/math/NativeMath.exp
   local.set $3
   f64.const 0.5
   local.get $3
   f64.const 1
   local.get $3
   f64.div
   f64.add
   f64.mul
   return
  end
  local.get $0
  local.set $4
  i32.const 1023
  i32.const 2043
  i32.const 2
  i32.div_u
  i32.add
  i32.const 20
  i32.shl
  i64.extend_i32_u
  i64.const 32
  i64.shl
  f64.reinterpret_i64
  local.set $5
  local.get $4
  f64.const 1416.0996898839683
  f64.sub
  call $~lib/math/NativeMath.exp
  local.get $5
  f64.mul
  local.get $5
  f64.mul
  local.set $3
  local.get $3
 )
 (func $../../lib/libm/assembly/libm/cosh (; 34 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.cosh
 )
 (func $../../lib/libm/assembly/libm/exp (; 35 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.exp
 )
 (func $../../lib/libm/assembly/libm/expm1 (; 36 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.expm1
 )
 (func $../../lib/libm/assembly/libm/floor (; 37 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  local.get $0
  local.set $1
  local.get $1
  f64.floor
 )
 (func $../../lib/libm/assembly/libm/fround (; 38 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  local.get $0
  local.set $1
  local.get $1
  f32.demote_f64
  f64.promote_f32
 )
 (func $~lib/math/NativeMath.hypot (; 39 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  local.get $0
  i64.reinterpret_f64
  local.set $2
  local.get $1
  i64.reinterpret_f64
  local.set $3
  local.get $2
  i64.const 9223372036854775807
  i64.and
  local.set $2
  local.get $3
  i64.const 9223372036854775807
  i64.and
  local.set $3
  local.get $2
  local.get $3
  i64.lt_u
  if
   local.get $2
   local.set $4
   local.get $3
   local.set $2
   local.get $4
   local.set $3
  end
  local.get $2
  i64.const 52
  i64.shr_u
  i32.wrap_i64
  local.set $5
  local.get $3
  i64.const 52
  i64.shr_u
  i32.wrap_i64
  local.set $6
  local.get $3
  f64.reinterpret_i64
  local.set $1
  local.get $6
  i32.const 2047
  i32.eq
  if
   local.get $1
   return
  end
  local.get $2
  f64.reinterpret_i64
  local.set $0
  local.get $5
  i32.const 2047
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $3
   i64.const 0
   i64.eq
  end
  if
   local.get $0
   return
  end
  local.get $5
  local.get $6
  i32.sub
  i32.const 64
  i32.gt_s
  if
   local.get $0
   local.get $1
   f64.add
   return
  end
  f64.const 1
  local.set $7
  local.get $5
  i32.const 1533
  i32.gt_s
  if
   f64.const 5260135901548373507240989e186
   local.set $7
   local.get $0
   f64.const 1.90109156629516e-211
   f64.mul
   local.set $0
   local.get $1
   f64.const 1.90109156629516e-211
   f64.mul
   local.set $1
  else   
   local.get $6
   i32.const 573
   i32.lt_s
   if
    f64.const 1.90109156629516e-211
    local.set $7
    local.get $0
    f64.const 5260135901548373507240989e186
    f64.mul
    local.set $0
    local.get $1
    f64.const 5260135901548373507240989e186
    f64.mul
    local.set $1
   end
  end
  local.get $0
  f64.const 134217729
  f64.mul
  local.set $8
  local.get $0
  local.get $8
  f64.sub
  local.get $8
  f64.add
  local.set $9
  local.get $0
  local.get $9
  f64.sub
  local.set $10
  local.get $0
  local.get $0
  f64.mul
  local.set $11
  local.get $9
  local.get $9
  f64.mul
  local.get $11
  f64.sub
  f64.const 2
  local.get $9
  f64.mul
  local.get $10
  f64.add
  local.get $10
  f64.mul
  f64.add
  local.set $12
  local.get $1
  f64.const 134217729
  f64.mul
  local.set $8
  local.get $1
  local.get $8
  f64.sub
  local.get $8
  f64.add
  local.set $9
  local.get $1
  local.get $9
  f64.sub
  local.set $10
  local.get $1
  local.get $1
  f64.mul
  local.set $13
  local.get $9
  local.get $9
  f64.mul
  local.get $13
  f64.sub
  f64.const 2
  local.get $9
  f64.mul
  local.get $10
  f64.add
  local.get $10
  f64.mul
  f64.add
  local.set $14
  local.get $7
  local.get $14
  local.get $12
  f64.add
  local.get $13
  f64.add
  local.get $11
  f64.add
  f64.sqrt
  f64.mul
 )
 (func $../../lib/libm/assembly/libm/hypot (; 40 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  local.get $0
  local.get $1
  call $~lib/math/NativeMath.hypot
 )
 (func $~lib/math/NativeMath.imul (; 41 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  local.get $0
  local.get $1
  f64.add
  call $~lib/number/isFinite<f64>
  i32.eqz
  if
   f64.const 0
   return
  end
  local.get $0
  f64.const 4294967296
  local.get $0
  f64.const 2.3283064365386963e-10
  f64.mul
  f64.floor
  f64.mul
  f64.sub
  i64.trunc_f64_s
  i32.wrap_i64
  local.get $1
  f64.const 4294967296
  local.get $1
  f64.const 2.3283064365386963e-10
  f64.mul
  f64.floor
  f64.mul
  f64.sub
  i64.trunc_f64_s
  i32.wrap_i64
  i32.mul
  f64.convert_i32_s
 )
 (func $../../lib/libm/assembly/libm/imul (; 42 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  local.get $0
  local.get $1
  call $~lib/math/NativeMath.imul
 )
 (func $../../lib/libm/assembly/libm/log (; 43 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.log
 )
 (func $~lib/math/NativeMath.log10 (; 44 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  local.get $0
  i64.reinterpret_f64
  local.set $1
  local.get $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  i32.const 1048576
  i32.lt_u
  if (result i32)
   i32.const 1
  else   
   local.get $2
   i32.const 31
   i32.shr_u
  end
  if
   local.get $1
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
   local.get $2
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
   local.get $3
   i32.const 54
   i32.sub
   local.set $3
   local.get $0
   f64.const 18014398509481984
   f64.mul
   local.set $0
   local.get $0
   i64.reinterpret_f64
   local.set $1
   local.get $1
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   local.set $2
  else   
   local.get $2
   i32.const 2146435072
   i32.ge_u
   if
    local.get $0
    return
   else    
    local.get $2
    i32.const 1072693248
    i32.eq
    if (result i32)
     local.get $1
     i64.const 32
     i64.shl
     i64.const 0
     i64.eq
    else     
     i32.const 0
    end
    if
     f64.const 0
     return
    end
   end
  end
  local.get $2
  i32.const 1072693248
  i32.const 1072079006
  i32.sub
  i32.add
  local.set $2
  local.get $3
  local.get $2
  i32.const 20
  i32.shr_u
  i32.const 1023
  i32.sub
  i32.add
  local.set $3
  local.get $2
  i32.const 1048575
  i32.and
  i32.const 1072079006
  i32.add
  local.set $2
  local.get $2
  i64.extend_i32_u
  i64.const 32
  i64.shl
  local.get $1
  i64.const 4294967295
  i64.and
  i64.or
  local.set $1
  local.get $1
  f64.reinterpret_i64
  local.set $0
  local.get $0
  f64.const 1
  f64.sub
  local.set $4
  f64.const 0.5
  local.get $4
  f64.mul
  local.get $4
  f64.mul
  local.set $5
  local.get $4
  f64.const 2
  local.get $4
  f64.add
  f64.div
  local.set $6
  local.get $6
  local.get $6
  f64.mul
  local.set $7
  local.get $7
  local.get $7
  f64.mul
  local.set $8
  local.get $8
  f64.const 0.3999999999940942
  local.get $8
  f64.const 0.22222198432149784
  local.get $8
  f64.const 0.15313837699209373
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $9
  local.get $7
  f64.const 0.6666666666666735
  local.get $8
  f64.const 0.2857142874366239
  local.get $8
  f64.const 0.1818357216161805
  local.get $8
  f64.const 0.14798198605116586
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $10
  local.get $10
  local.get $9
  f64.add
  local.set $11
  local.get $4
  local.get $5
  f64.sub
  local.set $12
  local.get $12
  i64.reinterpret_f64
  local.set $1
  local.get $1
  i64.const -4294967296
  i64.and
  local.set $1
  local.get $1
  f64.reinterpret_i64
  local.set $12
  local.get $4
  local.get $12
  f64.sub
  local.get $5
  f64.sub
  local.get $6
  local.get $5
  local.get $11
  f64.add
  f64.mul
  f64.add
  local.set $13
  local.get $12
  f64.const 0.4342944818781689
  f64.mul
  local.set $14
  local.get $3
  f64.convert_i32_s
  local.set $15
  local.get $15
  f64.const 0.30102999566361177
  f64.mul
  local.set $16
  local.get $15
  f64.const 3.694239077158931e-13
  f64.mul
  local.get $13
  local.get $12
  f64.add
  f64.const 2.5082946711645275e-11
  f64.mul
  f64.add
  local.get $13
  f64.const 0.4342944818781689
  f64.mul
  f64.add
  local.set $17
  local.get $16
  local.get $14
  f64.add
  local.set $8
  local.get $17
  local.get $16
  local.get $8
  f64.sub
  local.get $14
  f64.add
  f64.add
  local.set $17
  local.get $17
  local.get $8
  f64.add
 )
 (func $../../lib/libm/assembly/libm/log10 (; 45 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.log10
 )
 (func $../../lib/libm/assembly/libm/log1p (; 46 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.log1p
 )
 (func $~lib/math/NativeMath.log2 (; 47 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  local.get $0
  i64.reinterpret_f64
  local.set $1
  local.get $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $2
  i32.const 0
  local.set $3
  local.get $2
  i32.const 1048576
  i32.lt_u
  if (result i32)
   i32.const 1
  else   
   local.get $2
   i32.const 31
   i32.shr_u
  end
  if
   local.get $1
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
   local.get $2
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
   local.get $3
   i32.const 54
   i32.sub
   local.set $3
   local.get $0
   f64.const 18014398509481984
   f64.mul
   local.set $0
   local.get $0
   i64.reinterpret_f64
   local.set $1
   local.get $1
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   local.set $2
  else   
   local.get $2
   i32.const 2146435072
   i32.ge_u
   if
    local.get $0
    return
   else    
    local.get $2
    i32.const 1072693248
    i32.eq
    if (result i32)
     local.get $1
     i64.const 32
     i64.shl
     i64.const 0
     i64.eq
    else     
     i32.const 0
    end
    if
     f64.const 0
     return
    end
   end
  end
  local.get $2
  i32.const 1072693248
  i32.const 1072079006
  i32.sub
  i32.add
  local.set $2
  local.get $3
  local.get $2
  i32.const 20
  i32.shr_u
  i32.const 1023
  i32.sub
  i32.add
  local.set $3
  local.get $2
  i32.const 1048575
  i32.and
  i32.const 1072079006
  i32.add
  local.set $2
  local.get $2
  i64.extend_i32_u
  i64.const 32
  i64.shl
  local.get $1
  i64.const 4294967295
  i64.and
  i64.or
  local.set $1
  local.get $1
  f64.reinterpret_i64
  local.set $0
  local.get $0
  f64.const 1
  f64.sub
  local.set $4
  f64.const 0.5
  local.get $4
  f64.mul
  local.get $4
  f64.mul
  local.set $5
  local.get $4
  f64.const 2
  local.get $4
  f64.add
  f64.div
  local.set $6
  local.get $6
  local.get $6
  f64.mul
  local.set $7
  local.get $7
  local.get $7
  f64.mul
  local.set $8
  local.get $8
  f64.const 0.3999999999940942
  local.get $8
  f64.const 0.22222198432149784
  local.get $8
  f64.const 0.15313837699209373
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $9
  local.get $7
  f64.const 0.6666666666666735
  local.get $8
  f64.const 0.2857142874366239
  local.get $8
  f64.const 0.1818357216161805
  local.get $8
  f64.const 0.14798198605116586
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $10
  local.get $10
  local.get $9
  f64.add
  local.set $11
  local.get $4
  local.get $5
  f64.sub
  local.set $12
  local.get $12
  i64.reinterpret_f64
  local.set $1
  local.get $1
  i64.const -4294967296
  i64.and
  local.set $1
  local.get $1
  f64.reinterpret_i64
  local.set $12
  local.get $4
  local.get $12
  f64.sub
  local.get $5
  f64.sub
  local.get $6
  local.get $5
  local.get $11
  f64.add
  f64.mul
  f64.add
  local.set $13
  local.get $12
  f64.const 1.4426950407214463
  f64.mul
  local.set $14
  local.get $13
  local.get $12
  f64.add
  f64.const 1.6751713164886512e-10
  f64.mul
  local.get $13
  f64.const 1.4426950407214463
  f64.mul
  f64.add
  local.set $15
  local.get $3
  f64.convert_i32_s
  local.set $16
  local.get $16
  local.get $14
  f64.add
  local.set $8
  local.get $15
  local.get $16
  local.get $8
  f64.sub
  local.get $14
  f64.add
  f64.add
  local.set $15
  local.get $8
  local.set $14
  local.get $15
  local.get $14
  f64.add
 )
 (func $../../lib/libm/assembly/libm/log2 (; 48 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.log2
 )
 (func $../../lib/libm/assembly/libm/max (; 49 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  (local $2 f64)
  (local $3 f64)
  local.get $0
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  local.get $2
  f64.max
 )
 (func $../../lib/libm/assembly/libm/min (; 50 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  (local $2 f64)
  (local $3 f64)
  local.get $0
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  local.get $2
  f64.min
 )
 (func $~lib/math/NativeMath.pow (; 51 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 f64)
  (local $24 f64)
  (local $25 f64)
  (local $26 f64)
  (local $27 f64)
  (local $28 i32)
  (local $29 i32)
  (local $30 f64)
  (local $31 f64)
  (local $32 f64)
  (local $33 f64)
  (local $34 f64)
  (local $35 f64)
  (local $36 f64)
  (local $37 f64)
  (local $38 f64)
  (local $39 f64)
  (local $40 f64)
  (local $41 i32)
  local.get $0
  i64.reinterpret_f64
  local.set $2
  local.get $2
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $3
  local.get $2
  i32.wrap_i64
  local.set $4
  local.get $1
  i64.reinterpret_f64
  local.set $2
  local.get $2
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $5
  local.get $2
  i32.wrap_i64
  local.set $6
  local.get $3
  i32.const 2147483647
  i32.and
  local.set $7
  local.get $5
  i32.const 2147483647
  i32.and
  local.set $8
  local.get $8
  local.get $6
  i32.or
  i32.const 0
  i32.eq
  if
   f64.const 1
   return
  end
  local.get $7
  i32.const 2146435072
  i32.gt_s
  if (result i32)
   i32.const 1
  else   
   local.get $7
   i32.const 2146435072
   i32.eq
   if (result i32)
    local.get $4
    i32.const 0
    i32.ne
   else    
    i32.const 0
   end
  end
  if (result i32)
   i32.const 1
  else   
   local.get $8
   i32.const 2146435072
   i32.gt_s
  end
  if (result i32)
   i32.const 1
  else   
   local.get $8
   i32.const 2146435072
   i32.eq
   if (result i32)
    local.get $6
    i32.const 0
    i32.ne
   else    
    i32.const 0
   end
  end
  if
   local.get $0
   local.get $1
   f64.add
   return
  end
  i32.const 0
  local.set $9
  local.get $3
  i32.const 0
  i32.lt_s
  if
   local.get $8
   i32.const 1128267776
   i32.ge_s
   if
    i32.const 2
    local.set $9
   else    
    local.get $8
    i32.const 1072693248
    i32.ge_s
    if
     local.get $8
     i32.const 20
     i32.shr_s
     i32.const 1023
     i32.sub
     local.set $10
     local.get $10
     i32.const 20
     i32.gt_s
     local.set $11
     i32.const 52
     i32.const 20
     local.get $11
     select
     local.get $10
     i32.sub
     local.set $12
     local.get $6
     local.get $8
     local.get $11
     select
     local.set $13
     local.get $13
     local.get $12
     i32.shr_s
     local.set $14
     local.get $14
     local.get $12
     i32.shl
     local.get $13
     i32.eq
     if
      i32.const 2
      local.get $14
      i32.const 1
      i32.and
      i32.sub
      local.set $9
     end
    end
   end
  end
  local.get $6
  i32.const 0
  i32.eq
  if
   local.get $8
   i32.const 2146435072
   i32.eq
   if
    local.get $7
    i32.const 1072693248
    i32.sub
    local.get $4
    i32.or
    i32.const 0
    i32.eq
    if
     f64.const nan:0x8000000000000
     return
    else     
     local.get $7
     i32.const 1072693248
     i32.ge_s
     if
      local.get $5
      i32.const 0
      i32.ge_s
      if (result f64)
       local.get $1
      else       
       f64.const 0
      end
      return
     else      
      local.get $5
      i32.const 0
      i32.ge_s
      if (result f64)
       f64.const 0
      else       
       local.get $1
       f64.neg
      end
      return
     end
     unreachable
    end
    unreachable
   end
   local.get $8
   i32.const 1072693248
   i32.eq
   if
    local.get $5
    i32.const 0
    i32.ge_s
    if
     local.get $0
     return
    end
    f64.const 1
    local.get $0
    f64.div
    return
   end
   local.get $5
   i32.const 1073741824
   i32.eq
   if
    local.get $0
    local.get $0
    f64.mul
    return
   end
   local.get $5
   i32.const 1071644672
   i32.eq
   if
    local.get $3
    i32.const 0
    i32.ge_s
    if
     local.get $0
     f64.sqrt
     return
    end
   end
  end
  local.get $0
  f64.abs
  local.set $15
  local.get $4
  i32.const 0
  i32.eq
  if
   local.get $7
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $7
    i32.const 2146435072
    i32.eq
   end
   if (result i32)
    i32.const 1
   else    
    local.get $7
    i32.const 1072693248
    i32.eq
   end
   if
    local.get $15
    local.set $16
    local.get $5
    i32.const 0
    i32.lt_s
    if
     f64.const 1
     local.get $16
     f64.div
     local.set $16
    end
    local.get $3
    i32.const 0
    i32.lt_s
    if
     local.get $7
     i32.const 1072693248
     i32.sub
     local.get $9
     i32.or
     i32.const 0
     i32.eq
     if
      local.get $16
      local.get $16
      f64.sub
      local.set $17
      local.get $17
      local.get $17
      f64.div
      local.set $16
     else      
      local.get $9
      i32.const 1
      i32.eq
      if
       local.get $16
       f64.neg
       local.set $16
      end
     end
    end
    local.get $16
    return
   end
  end
  f64.const 1
  local.set $18
  local.get $3
  i32.const 0
  i32.lt_s
  if
   local.get $9
   i32.const 0
   i32.eq
   if
    local.get $0
    local.get $0
    f64.sub
    local.set $17
    local.get $17
    local.get $17
    f64.div
    return
   end
   local.get $9
   i32.const 1
   i32.eq
   if
    f64.const -1
    local.set $18
   end
  end
  local.get $8
  i32.const 1105199104
  i32.gt_s
  if
   local.get $8
   i32.const 1139802112
   i32.gt_s
   if
    local.get $7
    i32.const 1072693247
    i32.le_s
    if
     local.get $5
     i32.const 0
     i32.lt_s
     if (result f64)
      f64.const 1.e+300
      f64.const 1.e+300
      f64.mul
     else      
      f64.const 1e-300
      f64.const 1e-300
      f64.mul
     end
     return
    end
    local.get $7
    i32.const 1072693248
    i32.ge_s
    if
     local.get $5
     i32.const 0
     i32.gt_s
     if (result f64)
      f64.const 1.e+300
      f64.const 1.e+300
      f64.mul
     else      
      f64.const 1e-300
      f64.const 1e-300
      f64.mul
     end
     return
    end
   end
   local.get $7
   i32.const 1072693247
   i32.lt_s
   if
    local.get $5
    i32.const 0
    i32.lt_s
    if (result f64)
     local.get $18
     f64.const 1.e+300
     f64.mul
     f64.const 1.e+300
     f64.mul
    else     
     local.get $18
     f64.const 1e-300
     f64.mul
     f64.const 1e-300
     f64.mul
    end
    return
   end
   local.get $7
   i32.const 1072693248
   i32.gt_s
   if
    local.get $5
    i32.const 0
    i32.gt_s
    if (result f64)
     local.get $18
     f64.const 1.e+300
     f64.mul
     f64.const 1.e+300
     f64.mul
    else     
     local.get $18
     f64.const 1e-300
     f64.mul
     f64.const 1e-300
     f64.mul
    end
    return
   end
   local.get $15
   f64.const 1
   f64.sub
   local.set $24
   local.get $24
   local.get $24
   f64.mul
   f64.const 0.5
   local.get $24
   f64.const 0.3333333333333333
   local.get $24
   f64.const 0.25
   f64.mul
   f64.sub
   f64.mul
   f64.sub
   f64.mul
   local.set $27
   f64.const 1.4426950216293335
   local.get $24
   f64.mul
   local.set $25
   local.get $24
   f64.const 1.9259629911266175e-08
   f64.mul
   local.get $27
   f64.const 1.4426950408889634
   f64.mul
   f64.sub
   local.set $26
   local.get $25
   local.get $26
   f64.add
   local.set $19
   local.get $19
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $19
   local.get $26
   local.get $19
   local.get $25
   f64.sub
   f64.sub
   local.set $20
  else   
   i32.const 0
   local.set $29
   local.get $7
   i32.const 1048576
   i32.lt_s
   if
    local.get $15
    f64.const 9007199254740992
    f64.mul
    local.set $15
    local.get $29
    i32.const 53
    i32.sub
    local.set $29
    local.get $15
    i64.reinterpret_f64
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    local.set $7
   end
   local.get $29
   local.get $7
   i32.const 20
   i32.shr_s
   i32.const 1023
   i32.sub
   i32.add
   local.set $29
   local.get $7
   i32.const 1048575
   i32.and
   local.set $28
   local.get $28
   i32.const 1072693248
   i32.or
   local.set $7
   local.get $28
   i32.const 235662
   i32.le_s
   if
    i32.const 0
    local.set $10
   else    
    local.get $28
    i32.const 767610
    i32.lt_s
    if
     i32.const 1
     local.set $10
    else     
     i32.const 0
     local.set $10
     local.get $29
     i32.const 1
     i32.add
     local.set $29
     local.get $7
     i32.const 1048576
     i32.sub
     local.set $7
    end
   end
   local.get $15
   i64.reinterpret_f64
   i64.const 4294967295
   i64.and
   local.get $7
   i64.extend_i32_s
   i64.const 32
   i64.shl
   i64.or
   f64.reinterpret_i64
   local.set $15
   f64.const 1.5
   f64.const 1
   local.get $10
   select
   local.set $35
   local.get $15
   local.get $35
   f64.sub
   local.set $25
   f64.const 1
   local.get $15
   local.get $35
   f64.add
   f64.div
   local.set $26
   local.get $25
   local.get $26
   f64.mul
   local.set $17
   local.get $17
   local.set $31
   local.get $31
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $31
   local.get $7
   i32.const 1
   i32.shr_s
   i32.const 536870912
   i32.or
   i32.const 524288
   i32.add
   local.get $10
   i32.const 18
   i32.shl
   i32.add
   i64.extend_i32_s
   i64.const 32
   i64.shl
   f64.reinterpret_i64
   local.set $33
   local.get $15
   local.get $33
   local.get $35
   f64.sub
   f64.sub
   local.set $34
   local.get $26
   local.get $25
   local.get $31
   local.get $33
   f64.mul
   f64.sub
   local.get $31
   local.get $34
   f64.mul
   f64.sub
   f64.mul
   local.set $32
   local.get $17
   local.get $17
   f64.mul
   local.set $30
   local.get $30
   local.get $30
   f64.mul
   f64.const 0.5999999999999946
   local.get $30
   f64.const 0.4285714285785502
   local.get $30
   f64.const 0.33333332981837743
   local.get $30
   f64.const 0.272728123808534
   local.get $30
   f64.const 0.23066074577556175
   local.get $30
   f64.const 0.20697501780033842
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
   local.set $23
   local.get $23
   local.get $32
   local.get $31
   local.get $17
   f64.add
   f64.mul
   f64.add
   local.set $23
   local.get $31
   local.get $31
   f64.mul
   local.set $30
   f64.const 3
   local.get $30
   f64.add
   local.get $23
   f64.add
   local.set $33
   local.get $33
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $33
   local.get $23
   local.get $33
   f64.const 3
   f64.sub
   local.get $30
   f64.sub
   f64.sub
   local.set $34
   local.get $31
   local.get $33
   f64.mul
   local.set $25
   local.get $32
   local.get $33
   f64.mul
   local.get $34
   local.get $17
   f64.mul
   f64.add
   local.set $26
   local.get $25
   local.get $26
   f64.add
   local.set $21
   local.get $21
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $21
   local.get $26
   local.get $21
   local.get $25
   f64.sub
   f64.sub
   local.set $22
   f64.const 0.9617967009544373
   local.get $21
   f64.mul
   local.set $36
   f64.const 1.350039202129749e-08
   f64.const 0
   local.get $10
   select
   local.set $37
   f64.const -7.028461650952758e-09
   local.get $21
   f64.mul
   local.get $22
   f64.const 0.9617966939259756
   f64.mul
   f64.add
   local.get $37
   f64.add
   local.set $38
   local.get $29
   f64.convert_i32_s
   local.set $24
   f64.const 0.5849624872207642
   f64.const 0
   local.get $10
   select
   local.set $39
   local.get $36
   local.get $38
   f64.add
   local.get $39
   f64.add
   local.get $24
   f64.add
   local.set $19
   local.get $19
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $19
   local.get $38
   local.get $19
   local.get $24
   f64.sub
   local.get $39
   f64.sub
   local.get $36
   f64.sub
   f64.sub
   local.set $20
  end
  local.get $1
  local.set $40
  local.get $40
  i64.reinterpret_f64
  i64.const -4294967296
  i64.and
  f64.reinterpret_i64
  local.set $40
  local.get $1
  local.get $40
  f64.sub
  local.get $19
  f64.mul
  local.get $1
  local.get $20
  f64.mul
  f64.add
  local.set $22
  local.get $40
  local.get $19
  f64.mul
  local.set $21
  local.get $22
  local.get $21
  f64.add
  local.set $16
  local.get $16
  i64.reinterpret_f64
  local.set $2
  local.get $2
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $28
  local.get $2
  i32.wrap_i64
  local.set $41
  local.get $28
  i32.const 1083179008
  i32.ge_s
  if
   local.get $28
   i32.const 1083179008
   i32.sub
   local.get $41
   i32.or
   i32.const 0
   i32.ne
   if
    local.get $18
    f64.const 1.e+300
    f64.mul
    f64.const 1.e+300
    f64.mul
    return
   end
   local.get $22
   f64.const 8.008566259537294e-17
   f64.add
   local.get $16
   local.get $21
   f64.sub
   f64.gt
   if
    local.get $18
    f64.const 1.e+300
    f64.mul
    f64.const 1.e+300
    f64.mul
    return
   end
  else   
   local.get $28
   i32.const 2147483647
   i32.and
   i32.const 1083231232
   i32.ge_s
   if
    local.get $28
    i32.const -1064252416
    i32.sub
    local.get $41
    i32.or
    i32.const 0
    i32.ne
    if
     local.get $18
     f64.const 1e-300
     f64.mul
     f64.const 1e-300
     f64.mul
     return
    end
    local.get $22
    local.get $16
    local.get $21
    f64.sub
    f64.le
    if
     local.get $18
     f64.const 1e-300
     f64.mul
     f64.const 1e-300
     f64.mul
     return
    end
   end
  end
  local.get $28
  i32.const 2147483647
  i32.and
  local.set $41
  local.get $41
  i32.const 20
  i32.shr_s
  i32.const 1023
  i32.sub
  local.set $10
  i32.const 0
  local.set $29
  local.get $41
  i32.const 1071644672
  i32.gt_s
  if
   local.get $28
   i32.const 1048576
   local.get $10
   i32.const 1
   i32.add
   i32.shr_s
   i32.add
   local.set $29
   local.get $29
   i32.const 2147483647
   i32.and
   i32.const 20
   i32.shr_s
   i32.const 1023
   i32.sub
   local.set $10
   f64.const 0
   local.set $24
   local.get $29
   i32.const 1048575
   local.get $10
   i32.shr_s
   i32.const -1
   i32.xor
   i32.and
   i64.extend_i32_s
   i64.const 32
   i64.shl
   f64.reinterpret_i64
   local.set $24
   local.get $29
   i32.const 1048575
   i32.and
   i32.const 1048576
   i32.or
   i32.const 20
   local.get $10
   i32.sub
   i32.shr_s
   local.set $29
   local.get $28
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    local.get $29
    i32.sub
    local.set $29
   end
   local.get $21
   local.get $24
   f64.sub
   local.set $21
  end
  local.get $22
  local.get $21
  f64.add
  local.set $24
  local.get $24
  i64.reinterpret_f64
  i64.const -4294967296
  i64.and
  f64.reinterpret_i64
  local.set $24
  local.get $24
  f64.const 0.6931471824645996
  f64.mul
  local.set $25
  local.get $22
  local.get $24
  local.get $21
  f64.sub
  f64.sub
  f64.const 0.6931471805599453
  f64.mul
  local.get $24
  f64.const -1.904654299957768e-09
  f64.mul
  f64.add
  local.set $26
  local.get $25
  local.get $26
  f64.add
  local.set $16
  local.get $26
  local.get $16
  local.get $25
  f64.sub
  f64.sub
  local.set $27
  local.get $16
  local.get $16
  f64.mul
  local.set $24
  local.get $16
  local.get $24
  f64.const 0.16666666666666602
  local.get $24
  f64.const -2.7777777777015593e-03
  local.get $24
  f64.const 6.613756321437934e-05
  local.get $24
  f64.const -1.6533902205465252e-06
  local.get $24
  f64.const 4.1381367970572385e-08
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.sub
  local.set $19
  local.get $16
  local.get $19
  f64.mul
  local.get $19
  f64.const 2
  f64.sub
  f64.div
  local.get $27
  local.get $16
  local.get $27
  f64.mul
  f64.add
  f64.sub
  local.set $23
  f64.const 1
  local.get $23
  local.get $16
  f64.sub
  f64.sub
  local.set $16
  local.get $16
  i64.reinterpret_f64
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $28
  local.get $28
  local.get $29
  i32.const 20
  i32.shl
  i32.add
  local.set $28
  local.get $28
  i32.const 20
  i32.shr_s
  i32.const 0
  i32.le_s
  if
   local.get $16
   local.get $29
   call $~lib/math/NativeMath.scalbn
   local.set $16
  else   
   local.get $16
   i64.reinterpret_f64
   i64.const 4294967295
   i64.and
   local.get $28
   i64.extend_i32_s
   i64.const 32
   i64.shl
   i64.or
   f64.reinterpret_i64
   local.set $16
  end
  local.get $18
  local.get $16
  f64.mul
 )
 (func $../../lib/libm/assembly/libm/pow (; 52 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  local.get $0
  local.get $1
  call $~lib/math/NativeMath.pow
 )
 (func $../../lib/libm/assembly/libm/round (; 53 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  local.get $0
  local.set $1
  local.get $1
  f64.const 0.5
  f64.add
  f64.floor
  local.get $1
  f64.copysign
 )
 (func $../../lib/libm/assembly/libm/sign (; 54 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  block $~lib/math/NativeMath.sign|inlined.0 (result f64)
   local.get $0
   local.set $1
   local.get $1
   f64.const 0
   f64.gt
   if (result f64)
    f64.const 1
   else    
    local.get $1
    f64.const 0
    f64.lt
    if (result f64)
     f64.const -1
    else     
     local.get $1
    end
   end
   br $~lib/math/NativeMath.sign|inlined.0
  end
 )
 (func $~lib/math/NativeMath.sin (; 55 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/bindings/Math/sin
 )
 (func $../../lib/libm/assembly/libm/sin (; 56 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.sin
 )
 (func $~lib/math/NativeMath.sinh (; 57 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 f64)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  local.get $0
  i64.reinterpret_f64
  i64.const 9223372036854775807
  i64.and
  local.set $1
  local.get $1
  f64.reinterpret_i64
  local.set $2
  local.get $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $3
  f64.const 0.5
  local.get $0
  f64.copysign
  local.set $5
  local.get $3
  i32.const 1082535490
  i32.lt_u
  if
   local.get $2
   call $~lib/math/NativeMath.expm1
   local.set $4
   local.get $3
   i32.const 1072693248
   i32.lt_u
   if
    local.get $3
    i32.const 1045430272
    i32.lt_u
    if
     local.get $0
     return
    end
    local.get $5
    f64.const 2
    local.get $4
    f64.mul
    local.get $4
    local.get $4
    f64.mul
    local.get $4
    f64.const 1
    f64.add
    f64.div
    f64.sub
    f64.mul
    return
   end
   local.get $5
   local.get $4
   local.get $4
   local.get $4
   f64.const 1
   f64.add
   f64.div
   f64.add
   f64.mul
   return
  end
  f64.const 2
  local.get $5
  f64.mul
  local.get $2
  local.set $6
  i32.const 1023
  i32.const 2043
  i32.const 2
  i32.div_u
  i32.add
  i32.const 20
  i32.shl
  i64.extend_i32_u
  i64.const 32
  i64.shl
  f64.reinterpret_i64
  local.set $7
  local.get $6
  f64.const 1416.0996898839683
  f64.sub
  call $~lib/math/NativeMath.exp
  local.get $7
  f64.mul
  local.get $7
  f64.mul
  f64.mul
  local.set $4
  local.get $4
 )
 (func $../../lib/libm/assembly/libm/sinh (; 58 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.sinh
 )
 (func $../../lib/libm/assembly/libm/sqrt (; 59 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  local.get $0
  local.set $1
  local.get $1
  f64.sqrt
 )
 (func $~lib/math/NativeMath.tan (; 60 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/bindings/Math/tan
 )
 (func $../../lib/libm/assembly/libm/tan (; 61 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.tan
 )
 (func $~lib/math/NativeMath.tanh (; 62 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 f64)
  (local $3 i32)
  (local $4 f64)
  local.get $0
  i64.reinterpret_f64
  local.set $1
  local.get $1
  i64.const 9223372036854775807
  i64.and
  local.set $1
  local.get $1
  f64.reinterpret_i64
  local.set $2
  local.get $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $3
  local.get $3
  i32.const 1071748074
  i32.gt_u
  if
   local.get $3
   i32.const 1077149696
   i32.gt_u
   if
    f64.const 1
    f64.const 0
    local.get $2
    f64.div
    f64.sub
    local.set $4
   else    
    f64.const 2
    local.get $2
    f64.mul
    call $~lib/math/NativeMath.expm1
    local.set $4
    f64.const 1
    f64.const 2
    local.get $4
    f64.const 2
    f64.add
    f64.div
    f64.sub
    local.set $4
   end
  else   
   local.get $3
   i32.const 1070618798
   i32.gt_u
   if
    f64.const 2
    local.get $2
    f64.mul
    call $~lib/math/NativeMath.expm1
    local.set $4
    local.get $4
    local.get $4
    f64.const 2
    f64.add
    f64.div
    local.set $4
   else    
    local.get $3
    i32.const 1048576
    i32.ge_u
    if
     f64.const -2
     local.get $2
     f64.mul
     call $~lib/math/NativeMath.expm1
     local.set $4
     local.get $4
     f64.neg
     local.get $4
     f64.const 2
     f64.add
     f64.div
     local.set $4
    else     
     local.get $2
     local.set $4
    end
   end
  end
  local.get $4
  local.get $0
  f64.copysign
 )
 (func $../../lib/libm/assembly/libm/tanh (; 63 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.tanh
 )
 (func $../../lib/libm/assembly/libm/trunc (; 64 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  local.get $0
  local.set $1
  local.get $1
  f64.trunc
 )
 (func $../../lib/libm/assembly/libmf/abs (; 65 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f32)
  local.get $0
  local.set $1
  local.get $1
  f32.abs
 )
 (func $~lib/math/Rf (; 66 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f32)
  (local $2 f32)
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
  local.set $1
  f32.const 1
  local.get $0
  f32.const -0.7066296339035034
  f32.mul
  f32.add
  local.set $2
  local.get $1
  local.get $2
  f32.div
 )
 (func $~lib/math/NativeMathf.acos (; 67 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $2
  local.get $2
  i32.const 1065353216
  i32.ge_u
  if
   local.get $2
   i32.const 1065353216
   i32.eq
   if
    local.get $1
    i32.const 31
    i32.shr_u
    if
     f32.const 2
     f32.const 1.570796251296997
     f32.mul
     f32.const 7.52316384526264e-37
     f32.add
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
    f32.const 7.52316384526264e-37
    f32.add
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
  local.get $1
  i32.const 31
  i32.shr_u
  if
   f32.const 0.5
   local.get $0
   f32.const 0.5
   f32.mul
   f32.add
   local.set $3
   local.get $3
   f32.sqrt
   local.set $5
   local.get $3
   call $~lib/math/Rf
   local.get $5
   f32.mul
   f32.const 7.549789415861596e-08
   f32.sub
   local.set $4
   f32.const 2
   f32.const 1.570796251296997
   local.get $5
   local.get $4
   f32.add
   f32.sub
   f32.mul
   return
  end
  f32.const 0.5
  local.get $0
  f32.const 0.5
  f32.mul
  f32.sub
  local.set $3
  local.get $3
  f32.sqrt
  local.set $5
  local.get $5
  i32.reinterpret_f32
  local.set $1
  local.get $1
  i32.const -4096
  i32.and
  f32.reinterpret_i32
  local.set $6
  local.get $3
  local.get $6
  local.get $6
  f32.mul
  f32.sub
  local.get $5
  local.get $6
  f32.add
  f32.div
  local.set $7
  local.get $3
  call $~lib/math/Rf
  local.get $5
  f32.mul
  local.get $7
  f32.add
  local.set $4
  f32.const 2
  local.get $6
  local.get $4
  f32.add
  f32.mul
 )
 (func $../../lib/libm/assembly/libmf/acos (; 68 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.acos
 )
 (func $~lib/math/NativeMathf.log1p (; 69 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  f32.const 0
  local.set $2
  f32.const 0
  local.set $3
  i32.const 1
  local.set $4
  local.get $1
  i32.const 1054086096
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
   local.get $1
   i32.const 1
   i32.shl
   i32.const 1728053248
   i32.lt_u
   if
    local.get $0
    return
   end
   local.get $1
   i32.const -1097468391
   i32.le_u
   if
    i32.const 0
    local.set $4
    f32.const 0
    local.set $2
    local.get $0
    local.set $3
   end
  else   
   local.get $1
   i32.const 2139095040
   i32.ge_u
   if
    local.get $0
    return
   end
  end
  local.get $4
  if
   f32.const 1
   local.get $0
   f32.add
   local.set $5
   local.get $5
   i32.reinterpret_f32
   local.set $6
   local.get $6
   i32.const 1065353216
   i32.const 1060439283
   i32.sub
   i32.add
   local.set $6
   local.get $6
   i32.const 23
   i32.shr_u
   i32.const 127
   i32.sub
   local.set $4
   local.get $4
   i32.const 25
   i32.lt_s
   if
    local.get $4
    i32.const 2
    i32.ge_s
    if (result f32)
     f32.const 1
     local.get $5
     local.get $0
     f32.sub
     f32.sub
    else     
     local.get $0
     local.get $5
     f32.const 1
     f32.sub
     f32.sub
    end
    local.set $2
    local.get $2
    local.get $5
    f32.div
    local.set $2
   else    
    f32.const 0
    local.set $2
   end
   local.get $6
   i32.const 8388607
   i32.and
   i32.const 1060439283
   i32.add
   local.set $6
   local.get $6
   f32.reinterpret_i32
   f32.const 1
   f32.sub
   local.set $3
  end
  local.get $3
  f32.const 2
  local.get $3
  f32.add
  f32.div
  local.set $7
  local.get $7
  local.get $7
  f32.mul
  local.set $8
  local.get $8
  local.get $8
  f32.mul
  local.set $9
  local.get $9
  f32.const 0.40000972151756287
  local.get $9
  f32.const 0.24279078841209412
  f32.mul
  f32.add
  f32.mul
  local.set $10
  local.get $8
  f32.const 0.6666666269302368
  local.get $9
  f32.const 0.2849878668785095
  f32.mul
  f32.add
  f32.mul
  local.set $11
  local.get $11
  local.get $10
  f32.add
  local.set $12
  f32.const 0.5
  local.get $3
  f32.mul
  local.get $3
  f32.mul
  local.set $13
  local.get $4
  f32.convert_i32_s
  local.set $14
  local.get $7
  local.get $13
  local.get $12
  f32.add
  f32.mul
  local.get $14
  f32.const 9.05800061445916e-06
  f32.mul
  local.get $2
  f32.add
  f32.add
  local.get $13
  f32.sub
  local.get $3
  f32.add
  local.get $14
  f32.const 0.6931381225585938
  f32.mul
  f32.add
 )
 (func $~lib/math/NativeMathf.log (; 70 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  i32.const 0
  local.set $2
  local.get $1
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
   i32.const 0
   i32.eq
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
   local.get $2
   i32.const 25
   i32.sub
   local.set $2
   local.get $0
   f32.const 33554432
   f32.mul
   local.set $0
   local.get $0
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
  i32.const 1065353216
  i32.const 1060439283
  i32.sub
  i32.add
  local.set $1
  local.get $2
  local.get $1
  i32.const 23
  i32.shr_s
  i32.const 127
  i32.sub
  i32.add
  local.set $2
  local.get $1
  i32.const 8388607
  i32.and
  i32.const 1060439283
  i32.add
  local.set $1
  local.get $1
  f32.reinterpret_i32
  local.set $0
  local.get $0
  f32.const 1
  f32.sub
  local.set $3
  local.get $3
  f32.const 2
  local.get $3
  f32.add
  f32.div
  local.set $4
  local.get $4
  local.get $4
  f32.mul
  local.set $5
  local.get $5
  local.get $5
  f32.mul
  local.set $6
  local.get $6
  f32.const 0.40000972151756287
  local.get $6
  f32.const 0.24279078841209412
  f32.mul
  f32.add
  f32.mul
  local.set $7
  local.get $5
  f32.const 0.6666666269302368
  local.get $6
  f32.const 0.2849878668785095
  f32.mul
  f32.add
  f32.mul
  local.set $8
  local.get $8
  local.get $7
  f32.add
  local.set $9
  f32.const 0.5
  local.get $3
  f32.mul
  local.get $3
  f32.mul
  local.set $10
  local.get $2
  f32.convert_i32_s
  local.set $11
  local.get $4
  local.get $10
  local.get $9
  f32.add
  f32.mul
  local.get $11
  f32.const 9.05800061445916e-06
  f32.mul
  f32.add
  local.get $10
  f32.sub
  local.get $3
  f32.add
  local.get $11
  f32.const 0.6931381225585938
  f32.mul
  f32.add
 )
 (func $~lib/math/NativeMathf.acosh (; 71 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $2
  local.get $2
  i32.const 1073741824
  i32.lt_u
  if
   local.get $0
   f32.const 1
   f32.sub
   local.set $3
   local.get $3
   local.get $3
   local.get $3
   f32.const 2
   f32.add
   f32.mul
   f32.sqrt
   f32.add
   call $~lib/math/NativeMathf.log1p
   return
  end
  local.get $2
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
 (func $../../lib/libm/assembly/libmf/acosh (; 72 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.acosh
 )
 (func $~lib/math/NativeMathf.asin (; 73 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f32)
  (local $2 i32)
  (local $3 f32)
  (local $4 f64)
  local.get $0
  local.set $1
  local.get $0
  i32.reinterpret_f32
  i32.const 2147483647
  i32.and
  local.set $2
  local.get $2
  i32.const 1065353216
  i32.ge_u
  if
   local.get $2
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
  local.get $2
  i32.const 1056964608
  i32.lt_u
  if
   local.get $2
   i32.const 964689920
   i32.lt_u
   if (result i32)
    local.get $2
    i32.const 8388608
    i32.ge_u
   else    
    i32.const 0
   end
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
  f32.const 0.5
  local.get $0
  f32.abs
  f32.const 0.5
  f32.mul
  f32.sub
  local.set $3
  local.get $3
  f64.promote_f32
  f64.sqrt
  local.set $4
  f32.const 1.5707963705062866
  f64.promote_f32
  f32.const 2
  f64.promote_f32
  local.get $4
  local.get $4
  local.get $3
  call $~lib/math/Rf
  f64.promote_f32
  f64.mul
  f64.add
  f64.mul
  f64.sub
  f32.demote_f64
  local.set $0
  local.get $0
  local.get $1
  f32.copysign
 )
 (func $../../lib/libm/assembly/libmf/asin (; 74 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.asin
 )
 (func $~lib/math/NativeMathf.asinh (; 75 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  local.get $0
  i32.reinterpret_f32
  i32.const 2147483647
  i32.and
  local.set $1
  local.get $1
  f32.reinterpret_i32
  local.set $2
  local.get $1
  i32.const 1166016512
  i32.ge_u
  if
   local.get $2
   call $~lib/math/NativeMathf.log
   f32.const 0.6931471824645996
   f32.add
   local.set $2
  else   
   local.get $1
   i32.const 1073741824
   i32.ge_u
   if
    f32.const 2
    local.get $2
    f32.mul
    f32.const 1
    local.get $2
    local.get $2
    f32.mul
    f32.const 1
    f32.add
    f32.sqrt
    local.get $2
    f32.add
    f32.div
    f32.add
    call $~lib/math/NativeMathf.log
    local.set $2
   else    
    local.get $1
    i32.const 964689920
    i32.ge_u
    if
     local.get $2
     local.get $2
     local.get $2
     f32.mul
     local.get $2
     local.get $2
     f32.mul
     f32.const 1
     f32.add
     f32.sqrt
     f32.const 1
     f32.add
     f32.div
     f32.add
     call $~lib/math/NativeMathf.log1p
     local.set $2
    end
   end
  end
  local.get $2
  local.get $0
  f32.copysign
 )
 (func $../../lib/libm/assembly/libmf/asinh (; 76 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.asinh
 )
 (func $~lib/number/isNaN<f32> (; 77 ;) (type $FUNCSIG$if) (param $0 f32) (result i32)
  local.get $0
  local.get $0
  f32.ne
 )
 (func $~lib/math/NativeMathf.atan (; 78 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 i32)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  local.get $0
  local.set $2
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $1
  local.get $1
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
   f32.const 7.52316384526264e-37
   f32.add
   local.set $3
   local.get $3
   local.get $2
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
   local.set $4
  else   
   local.get $0
   f32.abs
   local.set $0
   local.get $1
   i32.const 1066926080
   i32.lt_u
   if
    local.get $1
    i32.const 1060110336
    i32.lt_u
    if
     i32.const 0
     local.set $4
     f32.const 2
     local.get $0
     f32.mul
     f32.const 1
     f32.sub
     f32.const 2
     local.get $0
     f32.add
     f32.div
     local.set $0
    else     
     i32.const 1
     local.set $4
     local.get $0
     f32.const 1
     f32.sub
     local.get $0
     f32.const 1
     f32.add
     f32.div
     local.set $0
    end
   else    
    local.get $1
    i32.const 1075576832
    i32.lt_u
    if
     i32.const 2
     local.set $4
     local.get $0
     f32.const 1.5
     f32.sub
     f32.const 1
     f32.const 1.5
     local.get $0
     f32.mul
     f32.add
     f32.div
     local.set $0
    else     
     i32.const 3
     local.set $4
     f32.const -1
     local.get $0
     f32.div
     local.set $0
    end
   end
  end
  local.get $0
  local.get $0
  f32.mul
  local.set $3
  local.get $3
  local.get $3
  f32.mul
  local.set $5
  local.get $3
  f32.const 0.333333283662796
  local.get $5
  f32.const 0.14253635704517365
  local.get $5
  f32.const 0.06168760731816292
  f32.mul
  f32.add
  f32.mul
  f32.add
  f32.mul
  local.set $6
  local.get $5
  f32.const -0.19999158382415771
  local.get $5
  f32.const -0.106480173766613
  f32.mul
  f32.add
  f32.mul
  local.set $7
  local.get $0
  local.get $6
  local.get $7
  f32.add
  f32.mul
  local.set $8
  local.get $4
  i32.const 0
  i32.lt_s
  if
   local.get $0
   local.get $8
   f32.sub
   return
  end
  block $break|0
   block $case4|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        local.get $4
        local.set $9
        local.get $9
        i32.const 0
        i32.eq
        br_if $case0|0
        local.get $9
        i32.const 1
        i32.eq
        br_if $case1|0
        local.get $9
        i32.const 2
        i32.eq
        br_if $case2|0
        local.get $9
        i32.const 3
        i32.eq
        br_if $case3|0
        br $case4|0
       end
       f32.const 0.46364760398864746
       local.get $8
       f32.const 5.01215824399992e-09
       f32.sub
       local.get $0
       f32.sub
       f32.sub
       local.set $3
       br $break|0
      end
      f32.const 0.7853981256484985
      local.get $8
      f32.const 3.774894707930798e-08
      f32.sub
      local.get $0
      f32.sub
      f32.sub
      local.set $3
      br $break|0
     end
     f32.const 0.9827936887741089
     local.get $8
     f32.const 3.447321716976148e-08
     f32.sub
     local.get $0
     f32.sub
     f32.sub
     local.set $3
     br $break|0
    end
    f32.const 1.570796251296997
    local.get $8
    f32.const 7.549789415861596e-08
    f32.sub
    local.get $0
    f32.sub
    f32.sub
    local.set $3
    br $break|0
   end
   unreachable
  end
  local.get $3
  local.get $2
  f32.copysign
 )
 (func $../../lib/libm/assembly/libmf/atan (; 79 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.atan
 )
 (func $~lib/math/NativeMathf.atanh (; 80 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $1
  local.get $1
  f32.reinterpret_i32
  local.set $2
  local.get $1
  i32.const 1056964608
  i32.lt_u
  if
   local.get $1
   i32.const 796917760
   i32.ge_u
   if
    f32.const 0.5
    f32.const 2
    local.get $2
    f32.mul
    f32.const 1
    local.get $2
    f32.const 1
    local.get $2
    f32.sub
    f32.div
    f32.add
    f32.mul
    call $~lib/math/NativeMathf.log1p
    f32.mul
    local.set $2
   end
  else   
   f32.const 0.5
   f32.const 2
   local.get $2
   f32.const 1
   local.get $2
   f32.sub
   f32.div
   f32.mul
   call $~lib/math/NativeMathf.log1p
   f32.mul
   local.set $2
  end
  local.get $2
  local.get $0
  f32.copysign
 )
 (func $../../lib/libm/assembly/libmf/atanh (; 81 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.atanh
 )
 (func $~lib/math/NativeMathf.atan2 (; 82 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
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
  local.get $1
  i32.reinterpret_f32
  local.set $2
  local.get $0
  i32.reinterpret_f32
  local.set $3
  local.get $2
  i32.const 1065353216
  i32.eq
  if
   local.get $0
   call $~lib/math/NativeMathf.atan
   return
  end
  local.get $3
  i32.const 31
  i32.shr_u
  i32.const 1
  i32.and
  local.get $2
  i32.const 30
  i32.shr_u
  i32.const 2
  i32.and
  i32.or
  local.set $4
  local.get $2
  i32.const 2147483647
  i32.and
  local.set $2
  local.get $3
  i32.const 2147483647
  i32.and
  local.set $3
  local.get $3
  i32.const 0
  i32.eq
  if
   block $break|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        local.get $4
        local.set $5
        local.get $5
        i32.const 0
        i32.eq
        br_if $case0|0
        local.get $5
        i32.const 1
        i32.eq
        br_if $case1|0
        local.get $5
        i32.const 2
        i32.eq
        br_if $case2|0
        local.get $5
        i32.const 3
        i32.eq
        br_if $case3|0
        br $break|0
       end
      end
      local.get $0
      return
     end
     f32.const 3.1415927410125732
     return
    end
    f32.const 3.1415927410125732
    f32.neg
    return
   end
  end
  local.get $2
  i32.const 0
  i32.eq
  if
   local.get $4
   i32.const 1
   i32.and
   if (result f32)
    f32.const 3.1415927410125732
    f32.neg
    f32.const 2
    f32.div
   else    
    f32.const 3.1415927410125732
    f32.const 2
    f32.div
   end
   return
  end
  local.get $2
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
        block $case0|1
         local.get $4
         local.set $5
         local.get $5
         i32.const 0
         i32.eq
         br_if $case0|1
         local.get $5
         i32.const 1
         i32.eq
         br_if $case1|1
         local.get $5
         i32.const 2
         i32.eq
         br_if $case2|1
         local.get $5
         i32.const 3
         i32.eq
         br_if $case3|1
         br $break|1
        end
        f32.const 3.1415927410125732
        f32.const 4
        f32.div
        return
       end
       f32.const 3.1415927410125732
       f32.neg
       f32.const 4
       f32.div
       return
      end
      f32.const 3
      f32.const 3.1415927410125732
      f32.mul
      f32.const 4
      f32.div
      return
     end
     f32.const -3
     f32.const 3.1415927410125732
     f32.mul
     f32.const 4
     f32.div
     return
    end
   else    
    block $break|2
     block $case3|2
      block $case2|2
       block $case1|2
        block $case0|2
         local.get $4
         local.set $5
         local.get $5
         i32.const 0
         i32.eq
         br_if $case0|2
         local.get $5
         i32.const 1
         i32.eq
         br_if $case1|2
         local.get $5
         i32.const 2
         i32.eq
         br_if $case2|2
         local.get $5
         i32.const 3
         i32.eq
         br_if $case3|2
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
     f32.const 3.1415927410125732
     f32.neg
     return
    end
   end
  end
  local.get $2
  i32.const 218103808
  i32.add
  local.get $3
  i32.lt_u
  if (result i32)
   i32.const 1
  else   
   local.get $3
   i32.const 2139095040
   i32.eq
  end
  if
   local.get $4
   i32.const 1
   i32.and
   if (result f32)
    f32.const 3.1415927410125732
    f32.neg
    f32.const 2
    f32.div
   else    
    f32.const 3.1415927410125732
    f32.const 2
    f32.div
   end
   return
  end
  local.get $4
  i32.const 2
  i32.and
  if (result i32)
   local.get $3
   i32.const 218103808
   i32.add
   local.get $2
   i32.lt_u
  else   
   i32.const 0
  end
  if
   f32.const 0
   local.set $6
  else   
   local.get $0
   local.get $1
   f32.div
   f32.abs
   call $~lib/math/NativeMathf.atan
   local.set $6
  end
  block $break|3
   block $case3|3
    block $case2|3
     block $case1|3
      block $case0|3
       local.get $4
       local.set $5
       local.get $5
       i32.const 0
       i32.eq
       br_if $case0|3
       local.get $5
       i32.const 1
       i32.eq
       br_if $case1|3
       local.get $5
       i32.const 2
       i32.eq
       br_if $case2|3
       local.get $5
       i32.const 3
       i32.eq
       br_if $case3|3
       br $break|3
      end
      local.get $6
      return
     end
     local.get $6
     f32.neg
     return
    end
    f32.const 3.1415927410125732
    local.get $6
    f32.const -8.742277657347586e-08
    f32.sub
    f32.sub
    return
   end
   local.get $6
   f32.const -8.742277657347586e-08
   f32.sub
   f32.const 3.1415927410125732
   f32.sub
   return
  end
  unreachable
 )
 (func $../../lib/libm/assembly/libmf/atan2 (; 83 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  local.get $0
  local.get $1
  call $~lib/math/NativeMathf.atan2
 )
 (func $~lib/math/NativeMathf.cbrt (; 84 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $2
  local.get $2
  i32.const 2139095040
  i32.ge_u
  if
   local.get $0
   local.get $0
   f32.add
   return
  end
  local.get $2
  i32.const 8388608
  i32.lt_u
  if
   local.get $2
   i32.const 0
   i32.eq
   if
    local.get $0
    return
   end
   local.get $0
   f32.const 16777216
   f32.mul
   i32.reinterpret_f32
   local.set $1
   local.get $1
   i32.const 2147483647
   i32.and
   local.set $2
   local.get $2
   i32.const 3
   i32.div_u
   i32.const 642849266
   i32.add
   local.set $2
  else   
   local.get $2
   i32.const 3
   i32.div_u
   i32.const 709958130
   i32.add
   local.set $2
  end
  local.get $1
  i32.const -2147483648
  i32.and
  local.set $1
  local.get $1
  local.get $2
  i32.or
  local.set $1
  local.get $1
  f32.reinterpret_i32
  f64.promote_f32
  local.set $3
  local.get $3
  local.get $3
  f64.mul
  local.get $3
  f64.mul
  local.set $4
  local.get $3
  local.get $0
  f64.promote_f32
  local.get $0
  f64.promote_f32
  f64.add
  local.get $4
  f64.add
  f64.mul
  local.get $0
  f64.promote_f32
  local.get $4
  f64.add
  local.get $4
  f64.add
  f64.div
  local.set $3
  local.get $3
  local.get $3
  f64.mul
  local.get $3
  f64.mul
  local.set $4
  local.get $3
  local.get $0
  f64.promote_f32
  local.get $0
  f64.promote_f32
  f64.add
  local.get $4
  f64.add
  f64.mul
  local.get $0
  f64.promote_f32
  local.get $4
  f64.add
  local.get $4
  f64.add
  f64.div
  local.set $3
  local.get $3
  f32.demote_f64
 )
 (func $../../lib/libm/assembly/libmf/cbrt (; 85 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.cbrt
 )
 (func $../../lib/libm/assembly/libmf/ceil (; 86 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f32)
  local.get $0
  local.set $1
  local.get $1
  f32.ceil
 )
 (func $~lib/number/isFinite<f32> (; 87 ;) (type $FUNCSIG$if) (param $0 f32) (result i32)
  local.get $0
  local.get $0
  f32.sub
  f32.const 0
  f32.eq
 )
 (func $~lib/math/NativeMathf.clz32 (; 88 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/number/isFinite<f32>
  i32.eqz
  if
   f32.const 32
   return
  end
  local.get $0
  f32.const 4294967296
  local.get $0
  f32.const 1
  f32.const 4294967296
  f32.div
  f32.mul
  f32.floor
  f32.mul
  f32.sub
  i64.trunc_f32_s
  i32.wrap_i64
  i32.clz
  f32.convert_i32_s
 )
 (func $../../lib/libm/assembly/libmf/clz32 (; 89 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.clz32
 )
 (func $~lib/array/Array<u64>#__unchecked_get (; 90 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/math/NativeMathf.cos (; 91 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (local $9 i32)
  (local $10 f32)
  (local $11 i32)
  (local $12 f32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i64)
  (local $17 i64)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i32)
  (local $24 i32)
  (local $25 f64)
  (local $26 f32)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  local.get $1
  i32.const 31
  i32.shr_u
  local.set $2
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $1
  local.get $1
  i32.const 1061752794
  i32.le_u
  if
   local.get $1
   i32.const 964689920
   i32.lt_u
   if
    f32.const 1
    return
   end
   local.get $0
   f64.promote_f32
   local.set $3
   local.get $3
   local.get $3
   f64.mul
   local.set $4
   local.get $4
   local.get $4
   f64.mul
   local.set $5
   f64.const -0.001388676377460993
   local.get $4
   f64.const 2.439044879627741e-05
   f64.mul
   f64.add
   local.set $6
   f32.const 1
   f64.promote_f32
   local.get $4
   f64.const -0.499999997251031
   f64.mul
   f64.add
   local.get $5
   f64.const 0.04166662332373906
   f64.mul
   f64.add
   local.get $5
   local.get $4
   f64.mul
   local.get $6
   f64.mul
   f64.add
   f32.demote_f64
   return
  end
  local.get $1
  i32.const 1081824209
  i32.le_u
  if
   local.get $1
   i32.const 1075235811
   i32.gt_u
   if
    local.get $2
    if (result f64)
     local.get $0
     f64.promote_f32
     f64.const 3.141592653589793
     f64.add
    else     
     local.get $0
     f64.promote_f32
     f64.const 3.141592653589793
     f64.sub
    end
    local.set $3
    local.get $3
    local.get $3
    f64.mul
    local.set $6
    local.get $6
    local.get $6
    f64.mul
    local.set $5
    f64.const -0.001388676377460993
    local.get $6
    f64.const 2.439044879627741e-05
    f64.mul
    f64.add
    local.set $4
    f32.const 1
    f64.promote_f32
    local.get $6
    f64.const -0.499999997251031
    f64.mul
    f64.add
    local.get $5
    f64.const 0.04166662332373906
    f64.mul
    f64.add
    local.get $5
    local.get $6
    f64.mul
    local.get $4
    f64.mul
    f64.add
    f32.demote_f64
    f32.neg
    return
   else    
    local.get $2
    if (result f32)
     local.get $0
     f64.promote_f32
     f64.const 1.5707963267948966
     f64.add
     local.set $3
     local.get $3
     local.get $3
     f64.mul
     local.set $4
     local.get $4
     local.get $4
     f64.mul
     local.set $5
     f64.const -1.9839334836096632e-04
     local.get $4
     f64.const 2.718311493989822e-06
     f64.mul
     f64.add
     local.set $6
     local.get $4
     local.get $3
     f64.mul
     local.set $7
     local.get $3
     local.get $7
     f64.const -0.16666666641626524
     local.get $4
     f64.const 0.008333329385889463
     f64.mul
     f64.add
     f64.mul
     f64.add
     local.get $7
     local.get $5
     f64.mul
     local.get $6
     f64.mul
     f64.add
     f32.demote_f64
    else     
     f64.const 1.5707963267948966
     local.get $0
     f64.promote_f32
     f64.sub
     local.set $3
     local.get $3
     local.get $3
     f64.mul
     local.set $7
     local.get $7
     local.get $7
     f64.mul
     local.set $6
     f64.const -1.9839334836096632e-04
     local.get $7
     f64.const 2.718311493989822e-06
     f64.mul
     f64.add
     local.set $5
     local.get $7
     local.get $3
     f64.mul
     local.set $4
     local.get $3
     local.get $4
     f64.const -0.16666666641626524
     local.get $7
     f64.const 0.008333329385889463
     f64.mul
     f64.add
     f64.mul
     f64.add
     local.get $4
     local.get $6
     f64.mul
     local.get $5
     f64.mul
     f64.add
     f32.demote_f64
    end
    return
   end
   unreachable
  end
  local.get $1
  i32.const 1088565717
  i32.le_u
  if
   local.get $1
   i32.const 1085271519
   i32.gt_u
   if
    local.get $2
    if (result f64)
     local.get $0
     f64.promote_f32
     f64.const 6.283185307179586
     f64.add
    else     
     local.get $0
     f64.promote_f32
     f64.const 6.283185307179586
     f64.sub
    end
    local.set $3
    local.get $3
    local.get $3
    f64.mul
    local.set $4
    local.get $4
    local.get $4
    f64.mul
    local.set $5
    f64.const -0.001388676377460993
    local.get $4
    f64.const 2.439044879627741e-05
    f64.mul
    f64.add
    local.set $6
    f32.const 1
    f64.promote_f32
    local.get $4
    f64.const -0.499999997251031
    f64.mul
    f64.add
    local.get $5
    f64.const 0.04166662332373906
    f64.mul
    f64.add
    local.get $5
    local.get $4
    f64.mul
    local.get $6
    f64.mul
    f64.add
    f32.demote_f64
    return
   else    
    local.get $2
    if (result f32)
     local.get $0
     f32.neg
     f64.promote_f32
     f64.const 4.71238898038469
     f64.sub
     local.set $7
     local.get $7
     local.get $7
     f64.mul
     local.set $6
     local.get $6
     local.get $6
     f64.mul
     local.set $5
     f64.const -1.9839334836096632e-04
     local.get $6
     f64.const 2.718311493989822e-06
     f64.mul
     f64.add
     local.set $4
     local.get $6
     local.get $7
     f64.mul
     local.set $3
     local.get $7
     local.get $3
     f64.const -0.16666666641626524
     local.get $6
     f64.const 0.008333329385889463
     f64.mul
     f64.add
     f64.mul
     f64.add
     local.get $3
     local.get $5
     f64.mul
     local.get $4
     f64.mul
     f64.add
     f32.demote_f64
    else     
     local.get $0
     f64.promote_f32
     f64.const 4.71238898038469
     f64.sub
     local.set $7
     local.get $7
     local.get $7
     f64.mul
     local.set $3
     local.get $3
     local.get $3
     f64.mul
     local.set $4
     f64.const -1.9839334836096632e-04
     local.get $3
     f64.const 2.718311493989822e-06
     f64.mul
     f64.add
     local.set $5
     local.get $3
     local.get $7
     f64.mul
     local.set $6
     local.get $7
     local.get $6
     f64.const -0.16666666641626524
     local.get $3
     f64.const 0.008333329385889463
     f64.mul
     f64.add
     f64.mul
     f64.add
     local.get $6
     local.get $4
     f64.mul
     local.get $5
     f64.mul
     f64.add
     f32.demote_f64
    end
    return
   end
   unreachable
  end
  local.get $1
  i32.const 2139095040
  i32.ge_u
  if
   local.get $0
   local.get $0
   f32.sub
   return
  end
  block $~lib/math/rempio2f|inlined.0 (result i32)
   local.get $0
   local.set $10
   local.get $1
   local.set $9
   local.get $2
   local.set $8
   local.get $9
   i32.const 1305022427
   i32.lt_u
   if
    local.get $10
    f64.promote_f32
    f64.const 0.6366197723675814
    f64.mul
    f64.nearest
    local.set $6
    local.get $10
    f64.promote_f32
    local.get $6
    f64.const 1.5707963109016418
    f64.mul
    f64.sub
    local.get $6
    f64.const 1.5893254773528196e-08
    f64.mul
    f64.sub
    global.set $~lib/math/rempio2f_y
    local.get $6
    i32.trunc_f64_s
    br $~lib/math/rempio2f|inlined.0
   end
   local.get $10
   local.set $12
   local.get $9
   local.set $11
   local.get $11
   i32.const 23
   i32.shr_s
   i32.const 152
   i32.sub
   local.set $13
   local.get $13
   i32.const 6
   i32.shr_s
   local.set $14
   local.get $13
   i32.const 63
   i32.and
   local.set $15
   i32.const 72
   local.get $14
   i32.const 0
   i32.add
   call $~lib/array/Array<u64>#__unchecked_get
   local.set $16
   i32.const 72
   local.get $14
   i32.const 1
   i32.add
   call $~lib/array/Array<u64>#__unchecked_get
   local.set $17
   local.get $15
   i32.const 32
   i32.gt_s
   if
    i32.const 72
    local.get $14
    i32.const 2
    i32.add
    call $~lib/array/Array<u64>#__unchecked_get
    local.set $19
    local.get $19
    i64.const 96
    local.get $15
    i64.extend_i32_s
    i64.sub
    i64.shr_u
    local.set $18
    local.get $18
    local.get $17
    local.get $15
    i32.const 32
    i32.sub
    i64.extend_i32_s
    i64.shl
    i64.or
    local.set $18
   else    
    local.get $17
    i64.const 32
    local.get $15
    i64.extend_i32_s
    i64.sub
    i64.shr_u
    local.set $18
   end
   local.get $17
   i64.const 64
   local.get $15
   i64.extend_i32_s
   i64.sub
   i64.shr_u
   local.get $16
   local.get $15
   i64.extend_i32_s
   i64.shl
   i64.or
   local.set $19
   local.get $11
   i32.const 8388607
   i32.and
   i32.const 8388608
   i32.or
   i64.extend_i32_s
   local.set $20
   local.get $20
   local.get $19
   i64.mul
   local.get $20
   local.get $18
   i64.mul
   i64.const 32
   i64.shr_u
   i64.add
   local.set $21
   local.get $21
   i64.const 2
   i64.shl
   local.set $22
   local.get $21
   i64.const 62
   i64.shr_u
   local.get $22
   i64.const 63
   i64.shr_u
   i64.add
   i32.wrap_i64
   local.set $23
   f64.const 8.515303950216386e-20
   local.get $12
   f64.promote_f32
   f64.copysign
   local.get $22
   f64.convert_i64_s
   f64.mul
   global.set $~lib/math/rempio2f_y
   local.get $23
   local.set $23
   i32.const 0
   local.get $23
   i32.sub
   local.get $23
   local.get $8
   select
  end
  local.set $24
  global.get $~lib/math/rempio2f_y
  local.set $25
  local.get $24
  i32.const 1
  i32.and
  if (result f32)
   local.get $25
   local.set $7
   local.get $7
   local.get $7
   f64.mul
   local.set $6
   local.get $6
   local.get $6
   f64.mul
   local.set $5
   f64.const -1.9839334836096632e-04
   local.get $6
   f64.const 2.718311493989822e-06
   f64.mul
   f64.add
   local.set $4
   local.get $6
   local.get $7
   f64.mul
   local.set $3
   local.get $7
   local.get $3
   f64.const -0.16666666641626524
   local.get $6
   f64.const 0.008333329385889463
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $3
   local.get $5
   f64.mul
   local.get $4
   f64.mul
   f64.add
   f32.demote_f64
  else   
   local.get $25
   local.set $7
   local.get $7
   local.get $7
   f64.mul
   local.set $3
   local.get $3
   local.get $3
   f64.mul
   local.set $4
   f64.const -0.001388676377460993
   local.get $3
   f64.const 2.439044879627741e-05
   f64.mul
   f64.add
   local.set $5
   f32.const 1
   f64.promote_f32
   local.get $3
   f64.const -0.499999997251031
   f64.mul
   f64.add
   local.get $4
   f64.const 0.04166662332373906
   f64.mul
   f64.add
   local.get $4
   local.get $3
   f64.mul
   local.get $5
   f64.mul
   f64.add
   f32.demote_f64
  end
  local.set $26
  local.get $24
  i32.const 1
  i32.add
  i32.const 2
  i32.and
  if (result f32)
   local.get $26
   f32.neg
  else   
   local.get $26
  end
 )
 (func $../../lib/libm/assembly/libmf/cos (; 92 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.cos
 )
 (func $~lib/math/NativeMathf.expm1 (; 93 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 i32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $2
  local.get $1
  i32.const 31
  i32.shr_u
  local.set $3
  local.get $2
  i32.const 1100331076
  i32.ge_u
  if
   local.get $2
   i32.const 2139095040
   i32.gt_u
   if
    local.get $0
    return
   end
   local.get $3
   if
    f32.const -1
    return
   end
   local.get $0
   f32.const 88.7216796875
   f32.gt
   if
    local.get $0
    f32.const 1701411834604692317316873e14
    f32.mul
    local.set $0
    local.get $0
    return
   end
  end
  f32.const 0
  local.set $4
  local.get $2
  i32.const 1051816472
  i32.gt_u
  if
   i32.const 1
   local.get $3
   i32.const 1
   i32.shl
   i32.sub
   f32.const 1.4426950216293335
   local.get $0
   f32.mul
   f32.const 0.5
   local.get $0
   f32.copysign
   f32.add
   i32.trunc_f32_s
   local.get $2
   i32.const 1065686418
   i32.lt_u
   select
   local.set $6
   local.get $6
   f32.convert_i32_s
   local.set $5
   local.get $0
   local.get $5
   f32.const 0.6931381225585938
   f32.mul
   f32.sub
   local.set $7
   local.get $5
   f32.const 9.05800061445916e-06
   f32.mul
   local.set $8
   local.get $7
   local.get $8
   f32.sub
   local.set $0
   local.get $7
   local.get $0
   f32.sub
   local.get $8
   f32.sub
   local.set $4
  else   
   local.get $2
   i32.const 855638016
   i32.lt_u
   if
    local.get $0
    return
   else    
    i32.const 0
    local.set $6
   end
  end
  f32.const 0.5
  local.get $0
  f32.mul
  local.set $9
  local.get $0
  local.get $9
  f32.mul
  local.set $10
  f32.const 1
  local.get $10
  f32.const -0.03333321213722229
  local.get $10
  f32.const 1.5807170420885086e-03
  f32.mul
  f32.add
  f32.mul
  f32.add
  local.set $11
  f32.const 3
  local.get $11
  local.get $9
  f32.mul
  f32.sub
  local.set $5
  local.get $10
  local.get $11
  local.get $5
  f32.sub
  f32.const 6
  local.get $0
  local.get $5
  f32.mul
  f32.sub
  f32.div
  f32.mul
  local.set $12
  local.get $6
  i32.const 0
  i32.eq
  if
   local.get $0
   local.get $0
   local.get $12
   f32.mul
   local.get $10
   f32.sub
   f32.sub
   return
  end
  local.get $0
  local.get $12
  local.get $4
  f32.sub
  f32.mul
  local.get $4
  f32.sub
  local.set $12
  local.get $12
  local.get $10
  f32.sub
  local.set $12
  local.get $6
  i32.const -1
  i32.eq
  if
   f32.const 0.5
   local.get $0
   local.get $12
   f32.sub
   f32.mul
   f32.const 0.5
   f32.sub
   return
  end
  local.get $6
  i32.const 1
  i32.eq
  if
   local.get $0
   f32.const -0.25
   f32.lt
   if
    f32.const -2
    local.get $12
    local.get $0
    f32.const 0.5
    f32.add
    f32.sub
    f32.mul
    return
   end
   f32.const 1
   f32.const 2
   local.get $0
   local.get $12
   f32.sub
   f32.mul
   f32.add
   return
  end
  i32.const 127
  local.get $6
  i32.add
  i32.const 23
  i32.shl
  local.set $1
  local.get $1
  f32.reinterpret_i32
  local.set $13
  local.get $6
  i32.const 0
  i32.lt_s
  if (result i32)
   i32.const 1
  else   
   local.get $6
   i32.const 56
   i32.gt_s
  end
  if
   local.get $0
   local.get $12
   f32.sub
   f32.const 1
   f32.add
   local.set $14
   local.get $6
   i32.const 128
   i32.eq
   if
    local.get $14
    f32.const 2
    f32.mul
    f32.const 1701411834604692317316873e14
    f32.mul
    local.set $14
   else    
    local.get $14
    local.get $13
    f32.mul
    local.set $14
   end
   local.get $14
   f32.const 1
   f32.sub
   return
  end
  i32.const 127
  local.get $6
  i32.sub
  i32.const 23
  i32.shl
  local.set $1
  local.get $1
  f32.reinterpret_i32
  local.set $14
  local.get $6
  i32.const 20
  i32.lt_s
  if
   f32.const 1
   local.get $14
   f32.sub
   local.get $12
   f32.sub
   local.set $14
  else   
   f32.const 1
   local.get $12
   local.get $14
   f32.add
   f32.sub
   local.set $14
  end
  local.get $0
  local.get $14
  f32.add
  local.get $13
  f32.mul
 )
 (func $~lib/math/NativeMathf.scalbn (; 94 ;) (type $FUNCSIG$ffi) (param $0 f32) (param $1 i32) (result f32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.set $2
  local.get $1
  i32.const 127
  i32.gt_s
  if
   local.get $2
   f32.const 1701411834604692317316873e14
   f32.mul
   local.set $2
   local.get $1
   i32.const 127
   i32.sub
   local.set $1
   local.get $1
   i32.const 127
   i32.gt_s
   if
    local.get $2
    f32.const 1701411834604692317316873e14
    f32.mul
    local.set $2
    local.get $1
    i32.const 127
    i32.sub
    local.tee $3
    i32.const 127
    local.tee $4
    local.get $3
    local.get $4
    i32.lt_s
    select
    local.set $1
   end
  else   
   local.get $1
   i32.const -126
   i32.lt_s
   if
    local.get $2
    f32.const 1.1754943508222875e-38
    f32.const 16777216
    f32.mul
    f32.mul
    local.set $2
    local.get $1
    i32.const 126
    i32.const 24
    i32.sub
    i32.add
    local.set $1
    local.get $1
    i32.const -126
    i32.lt_s
    if
     local.get $2
     f32.const 1.1754943508222875e-38
     f32.const 16777216
     f32.mul
     f32.mul
     local.set $2
     local.get $1
     i32.const 126
     i32.add
     i32.const 24
     i32.sub
     local.tee $3
     i32.const -126
     local.tee $4
     local.get $3
     local.get $4
     i32.gt_s
     select
     local.set $1
    end
   end
  end
  local.get $2
  i32.const 127
  local.get $1
  i32.add
  i32.const 23
  i32.shl
  f32.reinterpret_i32
  f32.mul
 )
 (func $~lib/math/NativeMathf.exp (; 95 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 f32)
  (local $5 i32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  local.get $1
  i32.const 31
  i32.shr_u
  local.set $2
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $1
  local.get $1
  i32.const 1118743632
  i32.ge_u
  if
   local.get $1
   i32.const 1118925336
   i32.ge_u
   if
    local.get $2
    i32.eqz
    if
     local.get $0
     f32.const 1701411834604692317316873e14
     f32.mul
     return
    else     
     local.get $1
     i32.const 1120924085
     i32.ge_u
     if
      f32.const 0
      return
     end
    end
   end
  end
  local.get $1
  i32.const 1051816472
  i32.gt_u
  if
   local.get $1
   i32.const 1065686418
   i32.gt_u
   if
    f32.const 1.4426950216293335
    local.get $0
    f32.mul
    f32.const 0.5
    local.get $0
    f32.copysign
    f32.add
    i32.trunc_f32_s
    local.set $5
   else    
    i32.const 1
    local.get $2
    i32.const 1
    i32.shl
    i32.sub
    local.set $5
   end
   local.get $0
   local.get $5
   f32.convert_i32_s
   f32.const 0.693145751953125
   f32.mul
   f32.sub
   local.set $3
   local.get $5
   f32.convert_i32_s
   f32.const 1.428606765330187e-06
   f32.mul
   local.set $4
   local.get $3
   local.get $4
   f32.sub
   local.set $0
  else   
   local.get $1
   i32.const 956301312
   i32.gt_u
   if
    i32.const 0
    local.set $5
    local.get $0
    local.set $3
    f32.const 0
    local.set $4
   else    
    f32.const 1
    local.get $0
    f32.add
    return
   end
  end
  local.get $0
  local.get $0
  f32.mul
  local.set $6
  local.get $0
  local.get $6
  f32.const 0.16666625440120697
  local.get $6
  f32.const -2.7667332906275988e-03
  f32.mul
  f32.add
  f32.mul
  f32.sub
  local.set $7
  f32.const 1
  local.get $0
  local.get $7
  f32.mul
  f32.const 2
  local.get $7
  f32.sub
  f32.div
  local.get $4
  f32.sub
  local.get $3
  f32.add
  f32.add
  local.set $8
  local.get $5
  i32.const 0
  i32.eq
  if
   local.get $8
   return
  end
  local.get $8
  local.get $5
  call $~lib/math/NativeMathf.scalbn
 )
 (func $~lib/math/NativeMathf.cosh (; 96 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $1
  local.get $1
  f32.reinterpret_i32
  local.set $0
  local.get $1
  i32.const 1060205079
  i32.lt_u
  if
   local.get $1
   i32.const 964689920
   i32.lt_u
   if
    f32.const 1
    return
   end
   local.get $0
   call $~lib/math/NativeMathf.expm1
   local.set $2
   f32.const 1
   local.get $2
   local.get $2
   f32.mul
   f32.const 2
   f32.const 2
   local.get $2
   f32.mul
   f32.add
   f32.div
   f32.add
   return
  end
  local.get $1
  i32.const 1118925335
  i32.lt_u
  if
   local.get $0
   call $~lib/math/NativeMathf.exp
   local.set $2
   f32.const 0.5
   local.get $2
   f32.mul
   f32.const 0.5
   local.get $2
   f32.div
   f32.add
   return
  end
  local.get $0
  local.set $2
  i32.const 127
  i32.const 235
  i32.const 1
  i32.shr_u
  i32.add
  i32.const 23
  i32.shl
  f32.reinterpret_i32
  local.set $3
  local.get $2
  f32.const 162.88958740234375
  f32.sub
  call $~lib/math/NativeMathf.exp
  local.get $3
  f32.mul
  local.get $3
  f32.mul
 )
 (func $../../lib/libm/assembly/libmf/cosh (; 97 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.cosh
 )
 (func $../../lib/libm/assembly/libmf/exp (; 98 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.exp
 )
 (func $../../lib/libm/assembly/libmf/expm1 (; 99 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.expm1
 )
 (func $../../lib/libm/assembly/libmf/floor (; 100 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f32)
  local.get $0
  local.set $1
  local.get $1
  f32.floor
 )
 (func $../../lib/libm/assembly/libmf/fround (; 101 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f32)
  local.get $0
  local.set $1
  local.get $1
 )
 (func $~lib/math/NativeMathf.hypot (; 102 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  local.get $0
  i32.reinterpret_f32
  local.set $2
  local.get $1
  i32.reinterpret_f32
  local.set $3
  local.get $2
  i32.const 2147483647
  i32.and
  local.set $2
  local.get $3
  i32.const 2147483647
  i32.and
  local.set $3
  local.get $2
  local.get $3
  i32.lt_u
  if
   local.get $2
   local.set $4
   local.get $3
   local.set $2
   local.get $4
   local.set $3
  end
  local.get $2
  f32.reinterpret_i32
  local.set $0
  local.get $3
  f32.reinterpret_i32
  local.set $1
  local.get $3
  i32.const 2139095040
  i32.eq
  if
   local.get $1
   return
  end
  local.get $2
  i32.const 2139095040
  i32.ge_u
  if (result i32)
   i32.const 1
  else   
   local.get $3
   i32.const 0
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $2
   local.get $3
   i32.sub
   i32.const 209715200
   i32.ge_u
  end
  if
   local.get $0
   local.get $1
   f32.add
   return
  end
  f32.const 1
  local.set $5
  local.get $2
  i32.const 1568669696
  i32.ge_u
  if
   f32.const 1237940039285380274899124e3
   local.set $5
   local.get $0
   f32.const 8.077935669463161e-28
   f32.mul
   local.set $0
   local.get $1
   f32.const 8.077935669463161e-28
   f32.mul
   local.set $1
  else   
   local.get $3
   i32.const 562036736
   i32.lt_u
   if
    f32.const 8.077935669463161e-28
    local.set $5
    local.get $0
    f32.const 1237940039285380274899124e3
    f32.mul
    local.set $0
    local.get $1
    f32.const 1237940039285380274899124e3
    f32.mul
    local.set $1
   end
  end
  local.get $5
  local.get $0
  f64.promote_f32
  local.get $0
  f64.promote_f32
  f64.mul
  local.get $1
  f64.promote_f32
  local.get $1
  f64.promote_f32
  f64.mul
  f64.add
  f32.demote_f64
  f32.sqrt
  f32.mul
 )
 (func $../../lib/libm/assembly/libmf/hypot (; 103 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  local.get $0
  local.get $1
  call $~lib/math/NativeMathf.hypot
 )
 (func $../../lib/libm/assembly/libmf/imul (; 104 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 f32)
  (local $3 f32)
  block $~lib/math/NativeMathf.imul|inlined.0 (result f32)
   local.get $0
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   local.get $2
   f32.add
   call $~lib/number/isFinite<f32>
   i32.eqz
   if
    f32.const 0
    br $~lib/math/NativeMathf.imul|inlined.0
   end
   local.get $3
   f64.promote_f32
   f32.const 4294967296
   f64.promote_f32
   local.get $3
   f64.promote_f32
   f64.const 2.3283064365386963e-10
   f64.mul
   f64.floor
   f64.mul
   f64.sub
   i64.trunc_f64_s
   i32.wrap_i64
   local.get $2
   f64.promote_f32
   f32.const 4294967296
   f64.promote_f32
   local.get $2
   f64.promote_f32
   f64.const 2.3283064365386963e-10
   f64.mul
   f64.floor
   f64.mul
   f64.sub
   i64.trunc_f64_s
   i32.wrap_i64
   i32.mul
   f32.convert_i32_s
  end
 )
 (func $../../lib/libm/assembly/libmf/log (; 105 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.log
 )
 (func $~lib/math/NativeMathf.log10 (; 106 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  i32.const 0
  local.set $2
  local.get $1
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
   i32.const 0
   i32.eq
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
   local.get $2
   i32.const 25
   i32.sub
   local.set $2
   local.get $0
   f32.const 33554432
   f32.mul
   local.set $0
   local.get $0
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
  i32.const 1065353216
  i32.const 1060439283
  i32.sub
  i32.add
  local.set $1
  local.get $2
  local.get $1
  i32.const 23
  i32.shr_u
  i32.const 127
  i32.sub
  i32.add
  local.set $2
  local.get $1
  i32.const 8388607
  i32.and
  i32.const 1060439283
  i32.add
  local.set $1
  local.get $1
  f32.reinterpret_i32
  local.set $0
  local.get $0
  f32.const 1
  f32.sub
  local.set $3
  local.get $3
  f32.const 2
  local.get $3
  f32.add
  f32.div
  local.set $4
  local.get $4
  local.get $4
  f32.mul
  local.set $5
  local.get $5
  local.get $5
  f32.mul
  local.set $6
  local.get $6
  f32.const 0.40000972151756287
  local.get $6
  f32.const 0.24279078841209412
  f32.mul
  f32.add
  f32.mul
  local.set $7
  local.get $5
  f32.const 0.6666666269302368
  local.get $6
  f32.const 0.2849878668785095
  f32.mul
  f32.add
  f32.mul
  local.set $8
  local.get $8
  local.get $7
  f32.add
  local.set $9
  f32.const 0.5
  local.get $3
  f32.mul
  local.get $3
  f32.mul
  local.set $10
  local.get $3
  local.get $10
  f32.sub
  local.set $11
  local.get $11
  i32.reinterpret_f32
  local.set $1
  local.get $1
  i32.const -4096
  i32.and
  local.set $1
  local.get $1
  f32.reinterpret_i32
  local.set $11
  local.get $3
  local.get $11
  f32.sub
  local.get $10
  f32.sub
  local.get $4
  local.get $10
  local.get $9
  f32.add
  f32.mul
  f32.add
  local.set $12
  local.get $2
  f32.convert_i32_s
  local.set $13
  local.get $13
  f32.const 7.903415166765626e-07
  f32.mul
  local.get $12
  local.get $11
  f32.add
  f32.const -3.168997136526741e-05
  f32.mul
  f32.add
  local.get $12
  f32.const 0.434326171875
  f32.mul
  f32.add
  local.get $11
  f32.const 0.434326171875
  f32.mul
  f32.add
  local.get $13
  f32.const 0.3010292053222656
  f32.mul
  f32.add
 )
 (func $../../lib/libm/assembly/libmf/log10 (; 107 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.log10
 )
 (func $../../lib/libm/assembly/libmf/log1p (; 108 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.log1p
 )
 (func $~lib/math/NativeMathf.log2 (; 109 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 i32)
  (local $13 f32)
  (local $14 f32)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  i32.const 0
  local.set $2
  local.get $1
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
   i32.const 0
   i32.eq
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
   local.get $2
   i32.const 25
   i32.sub
   local.set $2
   local.get $0
   f32.const 33554432
   f32.mul
   local.set $0
   local.get $0
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
  i32.const 1065353216
  i32.const 1060439283
  i32.sub
  i32.add
  local.set $1
  local.get $2
  local.get $1
  i32.const 23
  i32.shr_u
  i32.const 127
  i32.sub
  i32.add
  local.set $2
  local.get $1
  i32.const 8388607
  i32.and
  i32.const 1060439283
  i32.add
  local.set $1
  local.get $1
  f32.reinterpret_i32
  local.set $0
  local.get $0
  f32.const 1
  f32.sub
  local.set $3
  local.get $3
  f32.const 2
  local.get $3
  f32.add
  f32.div
  local.set $4
  local.get $4
  local.get $4
  f32.mul
  local.set $5
  local.get $5
  local.get $5
  f32.mul
  local.set $6
  local.get $6
  f32.const 0.40000972151756287
  local.get $6
  f32.const 0.24279078841209412
  f32.mul
  f32.add
  f32.mul
  local.set $7
  local.get $5
  f32.const 0.6666666269302368
  local.get $6
  f32.const 0.2849878668785095
  f32.mul
  f32.add
  f32.mul
  local.set $8
  local.get $8
  local.get $7
  f32.add
  local.set $9
  f32.const 0.5
  local.get $3
  f32.mul
  local.get $3
  f32.mul
  local.set $10
  local.get $3
  local.get $10
  f32.sub
  local.set $11
  local.get $11
  i32.reinterpret_f32
  local.set $12
  local.get $12
  i32.const -4096
  i32.and
  local.set $12
  local.get $12
  f32.reinterpret_i32
  local.set $11
  local.get $3
  local.get $11
  f32.sub
  local.get $10
  f32.sub
  local.get $4
  local.get $10
  local.get $9
  f32.add
  f32.mul
  f32.add
  local.set $13
  local.get $2
  f32.convert_i32_s
  local.set $14
  local.get $13
  local.get $11
  f32.add
  f32.const -1.7605285393074155e-04
  f32.mul
  local.get $13
  f32.const 1.44287109375
  f32.mul
  f32.add
  local.get $11
  f32.const 1.44287109375
  f32.mul
  f32.add
  local.get $14
  f32.add
 )
 (func $../../lib/libm/assembly/libmf/log2 (; 110 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.log2
 )
 (func $../../lib/libm/assembly/libmf/max (; 111 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 f32)
  (local $3 f32)
  local.get $0
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  local.get $2
  f32.max
 )
 (func $../../lib/libm/assembly/libmf/min (; 112 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 f32)
  (local $3 f32)
  local.get $0
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  local.get $2
  f32.min
 )
 (func $~lib/math/NativeMathf.pow (; 113 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  (local $15 f32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f32)
  (local $20 f32)
  (local $21 f32)
  (local $22 f32)
  (local $23 f32)
  (local $24 i32)
  (local $25 i32)
  (local $26 f32)
  (local $27 f32)
  (local $28 f32)
  (local $29 f32)
  (local $30 f32)
  (local $31 f32)
  (local $32 f32)
  (local $33 f32)
  (local $34 f32)
  (local $35 f32)
  (local $36 i32)
  local.get $0
  i32.reinterpret_f32
  local.set $2
  local.get $1
  i32.reinterpret_f32
  local.set $3
  local.get $2
  i32.const 2147483647
  i32.and
  local.set $4
  local.get $3
  i32.const 2147483647
  i32.and
  local.set $5
  local.get $5
  i32.const 0
  i32.eq
  if
   f32.const 1
   return
  end
  local.get $4
  i32.const 2139095040
  i32.gt_s
  if (result i32)
   i32.const 1
  else   
   local.get $5
   i32.const 2139095040
   i32.gt_s
  end
  if
   local.get $0
   local.get $1
   f32.add
   return
  end
  i32.const 0
  local.set $6
  local.get $2
  i32.const 0
  i32.lt_s
  if
   local.get $5
   i32.const 1266679808
   i32.ge_s
   if
    i32.const 2
    local.set $6
   else    
    local.get $5
    i32.const 1065353216
    i32.ge_s
    if
     local.get $5
     i32.const 23
     i32.shr_s
     i32.const 127
     i32.sub
     local.set $8
     i32.const 23
     local.get $8
     i32.sub
     local.set $9
     local.get $5
     local.get $9
     i32.shr_s
     local.set $7
     local.get $7
     local.get $9
     i32.shl
     local.get $5
     i32.eq
     if
      i32.const 2
      local.get $7
      i32.const 1
      i32.and
      i32.sub
      local.set $6
     end
    end
   end
  end
  local.get $5
  i32.const 2139095040
  i32.eq
  if
   local.get $4
   i32.const 1065353216
   i32.eq
   if
    f32.const nan:0x400000
    return
   else    
    local.get $4
    i32.const 1065353216
    i32.gt_s
    if
     local.get $3
     i32.const 0
     i32.ge_s
     if (result f32)
      local.get $1
     else      
      f32.const 0
     end
     return
    else     
     local.get $3
     i32.const 0
     i32.ge_s
     if (result f32)
      f32.const 0
     else      
      local.get $1
      f32.neg
     end
     return
    end
    unreachable
   end
   unreachable
  end
  local.get $5
  i32.const 1065353216
  i32.eq
  if
   local.get $3
   i32.const 0
   i32.ge_s
   if (result f32)
    local.get $0
   else    
    f32.const 1
    local.get $0
    f32.div
   end
   return
  end
  local.get $3
  i32.const 1073741824
  i32.eq
  if
   local.get $0
   local.get $0
   f32.mul
   return
  end
  local.get $3
  i32.const 1056964608
  i32.eq
  if
   local.get $2
   i32.const 0
   i32.ge_s
   if
    local.get $0
    f32.sqrt
    return
   end
  end
  local.get $0
  f32.abs
  local.set $10
  local.get $4
  i32.const 2139095040
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $4
   i32.const 0
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $4
   i32.const 1065353216
   i32.eq
  end
  if
   local.get $10
   local.set $11
   local.get $3
   i32.const 0
   i32.lt_s
   if
    f32.const 1
    local.get $11
    f32.div
    local.set $11
   end
   local.get $2
   i32.const 0
   i32.lt_s
   if
    local.get $4
    i32.const 1065353216
    i32.sub
    local.get $6
    i32.or
    i32.const 0
    i32.eq
    if
     local.get $11
     local.get $11
     f32.sub
     local.set $12
     local.get $12
     local.get $12
     f32.div
     local.set $11
    else     
     local.get $6
     i32.const 1
     i32.eq
     if
      local.get $11
      f32.neg
      local.set $11
     end
    end
   end
   local.get $11
   return
  end
  f32.const 1
  local.set $13
  local.get $2
  i32.const 0
  i32.lt_s
  if
   local.get $6
   i32.const 0
   i32.eq
   if
    local.get $0
    local.get $0
    f32.sub
    local.set $12
    local.get $12
    local.get $12
    f32.div
    return
   end
   local.get $6
   i32.const 1
   i32.eq
   if
    f32.const -1
    local.set $13
   end
  end
  local.get $5
  i32.const 1291845632
  i32.gt_s
  if
   local.get $4
   i32.const 1065353208
   i32.lt_s
   if
    local.get $3
    i32.const 0
    i32.lt_s
    if (result f32)
     local.get $13
     f32.const 1000000015047466219876688e6
     f32.mul
     f32.const 1000000015047466219876688e6
     f32.mul
    else     
     local.get $13
     f32.const 1.0000000031710769e-30
     f32.mul
     f32.const 1.0000000031710769e-30
     f32.mul
    end
    return
   end
   local.get $4
   i32.const 1065353223
   i32.gt_s
   if
    local.get $3
    i32.const 0
    i32.gt_s
    if (result f32)
     local.get $13
     f32.const 1000000015047466219876688e6
     f32.mul
     f32.const 1000000015047466219876688e6
     f32.mul
    else     
     local.get $13
     f32.const 1.0000000031710769e-30
     f32.mul
     f32.const 1.0000000031710769e-30
     f32.mul
    end
    return
   end
   local.get $10
   f32.const 1
   f32.sub
   local.set $18
   local.get $18
   local.get $18
   f32.mul
   f32.const 0.5
   local.get $18
   f32.const 0.3333333432674408
   local.get $18
   f32.const 0.25
   f32.mul
   f32.sub
   f32.mul
   f32.sub
   f32.mul
   local.set $21
   f32.const 1.44268798828125
   local.get $18
   f32.mul
   local.set $19
   local.get $18
   f32.const 7.052607543300837e-06
   f32.mul
   local.get $21
   f32.const 1.4426950216293335
   f32.mul
   f32.sub
   local.set $20
   local.get $19
   local.get $20
   f32.add
   local.set $14
   local.get $14
   i32.reinterpret_f32
   local.set $25
   local.get $25
   i32.const -4096
   i32.and
   f32.reinterpret_i32
   local.set $14
   local.get $20
   local.get $14
   local.get $19
   f32.sub
   f32.sub
   local.set $15
  else   
   i32.const 0
   local.set $24
   local.get $4
   i32.const 8388608
   i32.lt_s
   if
    local.get $10
    f32.const 16777216
    f32.mul
    local.set $10
    local.get $24
    i32.const 24
    i32.sub
    local.set $24
    local.get $10
    i32.reinterpret_f32
    local.set $4
   end
   local.get $24
   local.get $4
   i32.const 23
   i32.shr_s
   i32.const 127
   i32.sub
   i32.add
   local.set $24
   local.get $4
   i32.const 8388607
   i32.and
   local.set $7
   local.get $7
   i32.const 1065353216
   i32.or
   local.set $4
   local.get $7
   i32.const 1885297
   i32.le_s
   if
    i32.const 0
    local.set $8
   else    
    local.get $7
    i32.const 6140887
    i32.lt_s
    if
     i32.const 1
     local.set $8
    else     
     i32.const 0
     local.set $8
     local.get $24
     i32.const 1
     i32.add
     local.set $24
     local.get $4
     i32.const 8388608
     i32.sub
     local.set $4
    end
   end
   local.get $4
   f32.reinterpret_i32
   local.set $10
   f32.const 1.5
   f32.const 1
   local.get $8
   select
   local.set $30
   local.get $10
   local.get $30
   f32.sub
   local.set $19
   f32.const 1
   local.get $10
   local.get $30
   f32.add
   f32.div
   local.set $20
   local.get $19
   local.get $20
   f32.mul
   local.set $17
   local.get $17
   local.set $26
   local.get $26
   i32.reinterpret_f32
   local.set $25
   local.get $25
   i32.const -4096
   i32.and
   f32.reinterpret_i32
   local.set $26
   local.get $4
   i32.const 1
   i32.shr_s
   i32.const -4096
   i32.and
   i32.const 536870912
   i32.or
   local.set $25
   local.get $25
   i32.const 4194304
   i32.add
   local.get $8
   i32.const 21
   i32.shl
   i32.add
   f32.reinterpret_i32
   local.set $28
   local.get $10
   local.get $28
   local.get $30
   f32.sub
   f32.sub
   local.set $29
   local.get $20
   local.get $19
   local.get $26
   local.get $28
   f32.mul
   f32.sub
   local.get $26
   local.get $29
   f32.mul
   f32.sub
   f32.mul
   local.set $27
   local.get $17
   local.get $17
   f32.mul
   local.set $12
   local.get $12
   local.get $12
   f32.mul
   f32.const 0.6000000238418579
   local.get $12
   f32.const 0.4285714328289032
   local.get $12
   f32.const 0.3333333432674408
   local.get $12
   f32.const 0.2727281153202057
   local.get $12
   f32.const 0.23066075146198273
   local.get $12
   f32.const 0.20697501301765442
   f32.mul
   f32.add
   f32.mul
   f32.add
   f32.mul
   f32.add
   f32.mul
   f32.add
   f32.mul
   f32.add
   f32.mul
   local.set $16
   local.get $16
   local.get $27
   local.get $26
   local.get $17
   f32.add
   f32.mul
   f32.add
   local.set $16
   local.get $26
   local.get $26
   f32.mul
   local.set $12
   f32.const 3
   local.get $12
   f32.add
   local.get $16
   f32.add
   local.set $28
   local.get $28
   i32.reinterpret_f32
   local.set $25
   local.get $25
   i32.const -4096
   i32.and
   f32.reinterpret_i32
   local.set $28
   local.get $16
   local.get $28
   f32.const 3
   f32.sub
   local.get $12
   f32.sub
   f32.sub
   local.set $29
   local.get $26
   local.get $28
   f32.mul
   local.set $19
   local.get $27
   local.get $28
   f32.mul
   local.get $29
   local.get $17
   f32.mul
   f32.add
   local.set $20
   local.get $19
   local.get $20
   f32.add
   local.set $22
   local.get $22
   i32.reinterpret_f32
   local.set $25
   local.get $25
   i32.const -4096
   i32.and
   f32.reinterpret_i32
   local.set $22
   local.get $20
   local.get $22
   local.get $19
   f32.sub
   f32.sub
   local.set $23
   f32.const 0.9619140625
   local.get $22
   f32.mul
   local.set $31
   f32.const 1.5632208487659227e-06
   f32.const 0
   local.get $8
   select
   local.set $32
   f32.const -1.1736857413779944e-04
   local.get $22
   f32.mul
   local.get $23
   f32.const 0.9617967009544373
   f32.mul
   f32.add
   local.get $32
   f32.add
   local.set $33
   local.get $24
   f32.convert_i32_s
   local.set $18
   f32.const 0.5849609375
   f32.const 0
   local.get $8
   select
   local.set $34
   local.get $31
   local.get $33
   f32.add
   local.get $34
   f32.add
   local.get $18
   f32.add
   local.set $14
   local.get $14
   i32.reinterpret_f32
   local.set $25
   local.get $25
   i32.const -4096
   i32.and
   f32.reinterpret_i32
   local.set $14
   local.get $33
   local.get $14
   local.get $18
   f32.sub
   local.get $34
   f32.sub
   local.get $31
   f32.sub
   f32.sub
   local.set $15
  end
  local.get $1
  i32.reinterpret_f32
  local.set $25
  local.get $25
  i32.const -4096
  i32.and
  f32.reinterpret_i32
  local.set $35
  local.get $1
  local.get $35
  f32.sub
  local.get $14
  f32.mul
  local.get $1
  local.get $15
  f32.mul
  f32.add
  local.set $23
  local.get $35
  local.get $14
  f32.mul
  local.set $22
  local.get $23
  local.get $22
  f32.add
  local.set $11
  local.get $11
  i32.reinterpret_f32
  local.set $7
  local.get $7
  i32.const 1124073472
  i32.gt_s
  if
   local.get $13
   f32.const 1000000015047466219876688e6
   f32.mul
   f32.const 1000000015047466219876688e6
   f32.mul
   return
  else   
   local.get $7
   i32.const 1124073472
   i32.eq
   if
    local.get $23
    f32.const 4.299566569443414e-08
    f32.add
    local.get $11
    local.get $22
    f32.sub
    f32.gt
    if
     local.get $13
     f32.const 1000000015047466219876688e6
     f32.mul
     f32.const 1000000015047466219876688e6
     f32.mul
     return
    end
   else    
    local.get $7
    i32.const 2147483647
    i32.and
    i32.const 1125515264
    i32.gt_s
    if
     local.get $13
     f32.const 1.0000000031710769e-30
     f32.mul
     f32.const 1.0000000031710769e-30
     f32.mul
     return
    else     
     local.get $7
     i32.const -1021968384
     i32.eq
     if
      local.get $23
      local.get $11
      local.get $22
      f32.sub
      f32.le
      if
       local.get $13
       f32.const 1.0000000031710769e-30
       f32.mul
       f32.const 1.0000000031710769e-30
       f32.mul
       return
      end
     end
    end
   end
  end
  local.get $7
  i32.const 2147483647
  i32.and
  local.set $36
  local.get $36
  i32.const 23
  i32.shr_s
  i32.const 127
  i32.sub
  local.set $8
  i32.const 0
  local.set $24
  local.get $36
  i32.const 1056964608
  i32.gt_s
  if
   local.get $7
   i32.const 8388608
   local.get $8
   i32.const 1
   i32.add
   i32.shr_s
   i32.add
   local.set $24
   local.get $24
   i32.const 2147483647
   i32.and
   i32.const 23
   i32.shr_s
   i32.const 127
   i32.sub
   local.set $8
   local.get $24
   i32.const 8388607
   local.get $8
   i32.shr_s
   i32.const -1
   i32.xor
   i32.and
   f32.reinterpret_i32
   local.set $18
   local.get $24
   i32.const 8388607
   i32.and
   i32.const 8388608
   i32.or
   i32.const 23
   local.get $8
   i32.sub
   i32.shr_s
   local.set $24
   local.get $7
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    local.get $24
    i32.sub
    local.set $24
   end
   local.get $22
   local.get $18
   f32.sub
   local.set $22
  end
  local.get $23
  local.get $22
  f32.add
  local.set $18
  local.get $18
  i32.reinterpret_f32
  local.set $25
  local.get $25
  i32.const -32768
  i32.and
  f32.reinterpret_i32
  local.set $18
  local.get $18
  f32.const 0.693145751953125
  f32.mul
  local.set $19
  local.get $23
  local.get $18
  local.get $22
  f32.sub
  f32.sub
  f32.const 0.6931471824645996
  f32.mul
  local.get $18
  f32.const 1.4286065379565116e-06
  f32.mul
  f32.add
  local.set $20
  local.get $19
  local.get $20
  f32.add
  local.set $11
  local.get $20
  local.get $11
  local.get $19
  f32.sub
  f32.sub
  local.set $21
  local.get $11
  local.get $11
  f32.mul
  local.set $18
  local.get $11
  local.get $18
  f32.const 0.1666666716337204
  local.get $18
  f32.const -2.7777778450399637e-03
  local.get $18
  f32.const 6.61375597701408e-05
  local.get $18
  f32.const -1.6533901998627698e-06
  local.get $18
  f32.const 4.138136944220605e-08
  f32.mul
  f32.add
  f32.mul
  f32.add
  f32.mul
  f32.add
  f32.mul
  f32.add
  f32.mul
  f32.sub
  local.set $14
  local.get $11
  local.get $14
  f32.mul
  local.get $14
  f32.const 2
  f32.sub
  f32.div
  local.get $21
  local.get $11
  local.get $21
  f32.mul
  f32.add
  f32.sub
  local.set $16
  f32.const 1
  local.get $16
  local.get $11
  f32.sub
  f32.sub
  local.set $11
  local.get $11
  i32.reinterpret_f32
  local.set $7
  local.get $7
  local.get $24
  i32.const 23
  i32.shl
  i32.add
  local.set $7
  local.get $7
  i32.const 23
  i32.shr_s
  i32.const 0
  i32.le_s
  if
   local.get $11
   local.get $24
   call $~lib/math/NativeMathf.scalbn
   local.set $11
  else   
   local.get $7
   f32.reinterpret_i32
   local.set $11
  end
  local.get $13
  local.get $11
  f32.mul
 )
 (func $../../lib/libm/assembly/libmf/pow (; 114 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  local.get $0
  local.get $1
  call $~lib/math/NativeMathf.pow
 )
 (func $../../lib/libm/assembly/libmf/round (; 115 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f32)
  local.get $0
  local.set $1
  local.get $1
  f32.const 0.5
  f32.add
  f32.floor
  local.get $1
  f32.copysign
 )
 (func $../../lib/libm/assembly/libmf/sign (; 116 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f32)
  block $~lib/math/NativeMathf.sign|inlined.0 (result f32)
   local.get $0
   local.set $1
   local.get $1
   f32.const 0
   f32.gt
   if (result f32)
    f32.const 1
   else    
    local.get $1
    f32.const 0
    f32.lt
    if (result f32)
     f32.const -1
    else     
     local.get $1
    end
   end
   br $~lib/math/NativeMathf.sign|inlined.0
  end
 )
 (func $~lib/math/NativeMathf.sin (; 117 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (local $9 i32)
  (local $10 f32)
  (local $11 i32)
  (local $12 f32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i64)
  (local $17 i64)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i32)
  (local $24 i32)
  (local $25 f64)
  (local $26 f32)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  local.get $1
  i32.const 31
  i32.shr_u
  local.set $2
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $1
  local.get $1
  i32.const 1061752794
  i32.le_u
  if
   local.get $1
   i32.const 964689920
   i32.lt_u
   if
    local.get $0
    return
   end
   local.get $0
   f64.promote_f32
   local.set $3
   local.get $3
   local.get $3
   f64.mul
   local.set $4
   local.get $4
   local.get $4
   f64.mul
   local.set $5
   f64.const -1.9839334836096632e-04
   local.get $4
   f64.const 2.718311493989822e-06
   f64.mul
   f64.add
   local.set $6
   local.get $4
   local.get $3
   f64.mul
   local.set $7
   local.get $3
   local.get $7
   f64.const -0.16666666641626524
   local.get $4
   f64.const 0.008333329385889463
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $7
   local.get $5
   f64.mul
   local.get $6
   f64.mul
   f64.add
   f32.demote_f64
   return
  end
  local.get $1
  i32.const 1081824209
  i32.le_u
  if
   local.get $1
   i32.const 1075235811
   i32.le_u
   if
    local.get $2
    if (result f32)
     local.get $0
     f64.promote_f32
     f64.const 1.5707963267948966
     f64.add
     local.set $3
     local.get $3
     local.get $3
     f64.mul
     local.set $7
     local.get $7
     local.get $7
     f64.mul
     local.set $6
     f64.const -0.001388676377460993
     local.get $7
     f64.const 2.439044879627741e-05
     f64.mul
     f64.add
     local.set $5
     f32.const 1
     f64.promote_f32
     local.get $7
     f64.const -0.499999997251031
     f64.mul
     f64.add
     local.get $6
     f64.const 0.04166662332373906
     f64.mul
     f64.add
     local.get $6
     local.get $7
     f64.mul
     local.get $5
     f64.mul
     f64.add
     f32.demote_f64
     f32.neg
    else     
     local.get $0
     f64.promote_f32
     f64.const 1.5707963267948966
     f64.sub
     local.set $4
     local.get $4
     local.get $4
     f64.mul
     local.set $5
     local.get $5
     local.get $5
     f64.mul
     local.set $6
     f64.const -0.001388676377460993
     local.get $5
     f64.const 2.439044879627741e-05
     f64.mul
     f64.add
     local.set $7
     f32.const 1
     f64.promote_f32
     local.get $5
     f64.const -0.499999997251031
     f64.mul
     f64.add
     local.get $6
     f64.const 0.04166662332373906
     f64.mul
     f64.add
     local.get $6
     local.get $5
     f64.mul
     local.get $7
     f64.mul
     f64.add
     f32.demote_f64
    end
    return
   end
   local.get $2
   if (result f64)
    local.get $0
    f64.promote_f32
    f64.const 3.141592653589793
    f64.add
   else    
    local.get $0
    f64.promote_f32
    f64.const 3.141592653589793
    f64.sub
   end
   f64.neg
   local.set $3
   local.get $3
   local.get $3
   f64.mul
   local.set $7
   local.get $7
   local.get $7
   f64.mul
   local.set $6
   f64.const -1.9839334836096632e-04
   local.get $7
   f64.const 2.718311493989822e-06
   f64.mul
   f64.add
   local.set $5
   local.get $7
   local.get $3
   f64.mul
   local.set $4
   local.get $3
   local.get $4
   f64.const -0.16666666641626524
   local.get $7
   f64.const 0.008333329385889463
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $4
   local.get $6
   f64.mul
   local.get $5
   f64.mul
   f64.add
   f32.demote_f64
   return
  end
  local.get $1
  i32.const 1088565717
  i32.le_u
  if
   local.get $1
   i32.const 1085271519
   i32.le_u
   if
    local.get $2
    if (result f32)
     local.get $0
     f64.promote_f32
     f64.const 4.71238898038469
     f64.add
     local.set $3
     local.get $3
     local.get $3
     f64.mul
     local.set $4
     local.get $4
     local.get $4
     f64.mul
     local.set $5
     f64.const -0.001388676377460993
     local.get $4
     f64.const 2.439044879627741e-05
     f64.mul
     f64.add
     local.set $6
     f32.const 1
     f64.promote_f32
     local.get $4
     f64.const -0.499999997251031
     f64.mul
     f64.add
     local.get $5
     f64.const 0.04166662332373906
     f64.mul
     f64.add
     local.get $5
     local.get $4
     f64.mul
     local.get $6
     f64.mul
     f64.add
     f32.demote_f64
    else     
     local.get $0
     f64.promote_f32
     f64.const 4.71238898038469
     f64.sub
     local.set $7
     local.get $7
     local.get $7
     f64.mul
     local.set $6
     local.get $6
     local.get $6
     f64.mul
     local.set $5
     f64.const -0.001388676377460993
     local.get $6
     f64.const 2.439044879627741e-05
     f64.mul
     f64.add
     local.set $4
     f32.const 1
     f64.promote_f32
     local.get $6
     f64.const -0.499999997251031
     f64.mul
     f64.add
     local.get $5
     f64.const 0.04166662332373906
     f64.mul
     f64.add
     local.get $5
     local.get $6
     f64.mul
     local.get $4
     f64.mul
     f64.add
     f32.demote_f64
     f32.neg
    end
    return
   end
   local.get $2
   if (result f64)
    local.get $0
    f64.promote_f32
    f64.const 6.283185307179586
    f64.add
   else    
    local.get $0
    f64.promote_f32
    f64.const 6.283185307179586
    f64.sub
   end
   local.set $3
   local.get $3
   local.get $3
   f64.mul
   local.set $4
   local.get $4
   local.get $4
   f64.mul
   local.set $5
   f64.const -1.9839334836096632e-04
   local.get $4
   f64.const 2.718311493989822e-06
   f64.mul
   f64.add
   local.set $6
   local.get $4
   local.get $3
   f64.mul
   local.set $7
   local.get $3
   local.get $7
   f64.const -0.16666666641626524
   local.get $4
   f64.const 0.008333329385889463
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $7
   local.get $5
   f64.mul
   local.get $6
   f64.mul
   f64.add
   f32.demote_f64
   return
  end
  local.get $1
  i32.const 2139095040
  i32.ge_u
  if
   local.get $0
   local.get $0
   f32.sub
   return
  end
  block $~lib/math/rempio2f|inlined.1 (result i32)
   local.get $0
   local.set $10
   local.get $1
   local.set $9
   local.get $2
   local.set $8
   local.get $9
   i32.const 1305022427
   i32.lt_u
   if
    local.get $10
    f64.promote_f32
    f64.const 0.6366197723675814
    f64.mul
    f64.nearest
    local.set $7
    local.get $10
    f64.promote_f32
    local.get $7
    f64.const 1.5707963109016418
    f64.mul
    f64.sub
    local.get $7
    f64.const 1.5893254773528196e-08
    f64.mul
    f64.sub
    global.set $~lib/math/rempio2f_y
    local.get $7
    i32.trunc_f64_s
    br $~lib/math/rempio2f|inlined.1
   end
   local.get $10
   local.set $12
   local.get $9
   local.set $11
   local.get $11
   i32.const 23
   i32.shr_s
   i32.const 152
   i32.sub
   local.set $13
   local.get $13
   i32.const 6
   i32.shr_s
   local.set $14
   local.get $13
   i32.const 63
   i32.and
   local.set $15
   i32.const 72
   local.get $14
   i32.const 0
   i32.add
   call $~lib/array/Array<u64>#__unchecked_get
   local.set $16
   i32.const 72
   local.get $14
   i32.const 1
   i32.add
   call $~lib/array/Array<u64>#__unchecked_get
   local.set $17
   local.get $15
   i32.const 32
   i32.gt_s
   if
    i32.const 72
    local.get $14
    i32.const 2
    i32.add
    call $~lib/array/Array<u64>#__unchecked_get
    local.set $19
    local.get $19
    i64.const 96
    local.get $15
    i64.extend_i32_s
    i64.sub
    i64.shr_u
    local.set $18
    local.get $18
    local.get $17
    local.get $15
    i32.const 32
    i32.sub
    i64.extend_i32_s
    i64.shl
    i64.or
    local.set $18
   else    
    local.get $17
    i64.const 32
    local.get $15
    i64.extend_i32_s
    i64.sub
    i64.shr_u
    local.set $18
   end
   local.get $17
   i64.const 64
   local.get $15
   i64.extend_i32_s
   i64.sub
   i64.shr_u
   local.get $16
   local.get $15
   i64.extend_i32_s
   i64.shl
   i64.or
   local.set $19
   local.get $11
   i32.const 8388607
   i32.and
   i32.const 8388608
   i32.or
   i64.extend_i32_s
   local.set $20
   local.get $20
   local.get $19
   i64.mul
   local.get $20
   local.get $18
   i64.mul
   i64.const 32
   i64.shr_u
   i64.add
   local.set $21
   local.get $21
   i64.const 2
   i64.shl
   local.set $22
   local.get $21
   i64.const 62
   i64.shr_u
   local.get $22
   i64.const 63
   i64.shr_u
   i64.add
   i32.wrap_i64
   local.set $23
   f64.const 8.515303950216386e-20
   local.get $12
   f64.promote_f32
   f64.copysign
   local.get $22
   f64.convert_i64_s
   f64.mul
   global.set $~lib/math/rempio2f_y
   local.get $23
   local.set $23
   i32.const 0
   local.get $23
   i32.sub
   local.get $23
   local.get $8
   select
  end
  local.set $24
  global.get $~lib/math/rempio2f_y
  local.set $25
  local.get $24
  i32.const 1
  i32.and
  if (result f32)
   local.get $25
   local.set $3
   local.get $3
   local.get $3
   f64.mul
   local.set $7
   local.get $7
   local.get $7
   f64.mul
   local.set $6
   f64.const -0.001388676377460993
   local.get $7
   f64.const 2.439044879627741e-05
   f64.mul
   f64.add
   local.set $5
   f32.const 1
   f64.promote_f32
   local.get $7
   f64.const -0.499999997251031
   f64.mul
   f64.add
   local.get $6
   f64.const 0.04166662332373906
   f64.mul
   f64.add
   local.get $6
   local.get $7
   f64.mul
   local.get $5
   f64.mul
   f64.add
   f32.demote_f64
  else   
   local.get $25
   local.set $4
   local.get $4
   local.get $4
   f64.mul
   local.set $5
   local.get $5
   local.get $5
   f64.mul
   local.set $6
   f64.const -1.9839334836096632e-04
   local.get $5
   f64.const 2.718311493989822e-06
   f64.mul
   f64.add
   local.set $7
   local.get $5
   local.get $4
   f64.mul
   local.set $3
   local.get $4
   local.get $3
   f64.const -0.16666666641626524
   local.get $5
   f64.const 0.008333329385889463
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $3
   local.get $6
   f64.mul
   local.get $7
   f64.mul
   f64.add
   f32.demote_f64
  end
  local.set $26
  local.get $24
  i32.const 2
  i32.and
  if (result f32)
   local.get $26
   f32.neg
  else   
   local.get $26
  end
 )
 (func $../../lib/libm/assembly/libmf/sin (; 118 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.sin
 )
 (func $~lib/math/NativeMathf.sinh (; 119 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  local.get $0
  i32.reinterpret_f32
  i32.const 2147483647
  i32.and
  local.set $1
  local.get $1
  f32.reinterpret_i32
  local.set $2
  f32.const 0.5
  local.get $0
  f32.copysign
  local.set $4
  local.get $1
  i32.const 1118925335
  i32.lt_u
  if
   local.get $2
   call $~lib/math/NativeMathf.expm1
   local.set $3
   local.get $1
   i32.const 1065353216
   i32.lt_u
   if
    local.get $1
    i32.const 964689920
    i32.lt_u
    if
     local.get $0
     return
    end
    local.get $4
    f32.const 2
    local.get $3
    f32.mul
    local.get $3
    local.get $3
    f32.mul
    local.get $3
    f32.const 1
    f32.add
    f32.div
    f32.sub
    f32.mul
    return
   end
   local.get $4
   local.get $3
   local.get $3
   local.get $3
   f32.const 1
   f32.add
   f32.div
   f32.add
   f32.mul
   return
  end
  f32.const 2
  local.get $4
  f32.mul
  local.get $2
  local.set $5
  i32.const 127
  i32.const 235
  i32.const 1
  i32.shr_u
  i32.add
  i32.const 23
  i32.shl
  f32.reinterpret_i32
  local.set $6
  local.get $5
  f32.const 162.88958740234375
  f32.sub
  call $~lib/math/NativeMathf.exp
  local.get $6
  f32.mul
  local.get $6
  f32.mul
  f32.mul
  local.set $3
  local.get $3
 )
 (func $../../lib/libm/assembly/libmf/sinh (; 120 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.sinh
 )
 (func $../../lib/libm/assembly/libmf/sqrt (; 121 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f32)
  local.get $0
  local.set $1
  local.get $1
  f32.sqrt
 )
 (func $~lib/math/NativeMathf.tan (; 122 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 i32)
  (local $12 f32)
  (local $13 i32)
  (local $14 f32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i64)
  (local $24 i64)
  (local $25 i32)
  (local $26 i32)
  (local $27 f64)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  local.get $1
  i32.const 31
  i32.shr_u
  local.set $2
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $1
  local.get $1
  i32.const 1061752794
  i32.le_u
  if
   local.get $1
   i32.const 964689920
   i32.lt_u
   if
    local.get $0
    return
   end
   local.get $0
   f64.promote_f32
   local.set $4
   i32.const 0
   local.set $3
   local.get $4
   local.get $4
   f64.mul
   local.set $5
   f64.const 0.002974357433599673
   local.get $5
   f64.const 0.009465647849436732
   f64.mul
   f64.add
   local.set $6
   f64.const 0.05338123784456704
   local.get $5
   f64.const 0.024528318116654728
   f64.mul
   f64.add
   local.set $7
   local.get $5
   local.get $5
   f64.mul
   local.set $8
   local.get $5
   local.get $4
   f64.mul
   local.set $9
   f64.const 0.3333313950307914
   local.get $5
   f64.const 0.13339200271297674
   f64.mul
   f64.add
   local.set $10
   local.get $4
   local.get $9
   local.get $10
   f64.mul
   f64.add
   local.get $9
   local.get $8
   f64.mul
   local.get $7
   local.get $8
   local.get $6
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.set $6
   local.get $3
   if (result f64)
    f32.const -1
    f64.promote_f32
    local.get $6
    f64.div
   else    
    local.get $6
   end
   f32.demote_f64
   return
  end
  local.get $1
  i32.const 1081824209
  i32.le_u
  if
   local.get $1
   i32.const 1075235811
   i32.le_u
   if
    local.get $2
    if (result f64)
     local.get $0
     f64.promote_f32
     f64.const 1.5707963267948966
     f64.add
    else     
     local.get $0
     f64.promote_f32
     f64.const 1.5707963267948966
     f64.sub
    end
    local.set $4
    i32.const 1
    local.set $3
    local.get $4
    local.get $4
    f64.mul
    local.set $10
    f64.const 0.002974357433599673
    local.get $10
    f64.const 0.009465647849436732
    f64.mul
    f64.add
    local.set $9
    f64.const 0.05338123784456704
    local.get $10
    f64.const 0.024528318116654728
    f64.mul
    f64.add
    local.set $8
    local.get $10
    local.get $10
    f64.mul
    local.set $7
    local.get $10
    local.get $4
    f64.mul
    local.set $6
    f64.const 0.3333313950307914
    local.get $10
    f64.const 0.13339200271297674
    f64.mul
    f64.add
    local.set $5
    local.get $4
    local.get $6
    local.get $5
    f64.mul
    f64.add
    local.get $6
    local.get $7
    f64.mul
    local.get $8
    local.get $7
    local.get $9
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $9
    local.get $3
    if (result f64)
     f32.const -1
     f64.promote_f32
     local.get $9
     f64.div
    else     
     local.get $9
    end
    f32.demote_f64
    return
   else    
    local.get $2
    if (result f64)
     local.get $0
     f64.promote_f32
     f64.const 3.141592653589793
     f64.add
    else     
     local.get $0
     f64.promote_f32
     f64.const 3.141592653589793
     f64.sub
    end
    local.set $4
    i32.const 0
    local.set $3
    local.get $4
    local.get $4
    f64.mul
    local.set $5
    f64.const 0.002974357433599673
    local.get $5
    f64.const 0.009465647849436732
    f64.mul
    f64.add
    local.set $6
    f64.const 0.05338123784456704
    local.get $5
    f64.const 0.024528318116654728
    f64.mul
    f64.add
    local.set $7
    local.get $5
    local.get $5
    f64.mul
    local.set $8
    local.get $5
    local.get $4
    f64.mul
    local.set $9
    f64.const 0.3333313950307914
    local.get $5
    f64.const 0.13339200271297674
    f64.mul
    f64.add
    local.set $10
    local.get $4
    local.get $9
    local.get $10
    f64.mul
    f64.add
    local.get $9
    local.get $8
    f64.mul
    local.get $7
    local.get $8
    local.get $6
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $6
    local.get $3
    if (result f64)
     f32.const -1
     f64.promote_f32
     local.get $6
     f64.div
    else     
     local.get $6
    end
    f32.demote_f64
    return
   end
   unreachable
  end
  local.get $1
  i32.const 1088565717
  i32.le_u
  if
   local.get $1
   i32.const 1085271519
   i32.le_u
   if
    local.get $2
    if (result f64)
     local.get $0
     f64.promote_f32
     f64.const 4.71238898038469
     f64.add
    else     
     local.get $0
     f64.promote_f32
     f64.const 4.71238898038469
     f64.sub
    end
    local.set $4
    i32.const 1
    local.set $3
    local.get $4
    local.get $4
    f64.mul
    local.set $10
    f64.const 0.002974357433599673
    local.get $10
    f64.const 0.009465647849436732
    f64.mul
    f64.add
    local.set $9
    f64.const 0.05338123784456704
    local.get $10
    f64.const 0.024528318116654728
    f64.mul
    f64.add
    local.set $8
    local.get $10
    local.get $10
    f64.mul
    local.set $7
    local.get $10
    local.get $4
    f64.mul
    local.set $6
    f64.const 0.3333313950307914
    local.get $10
    f64.const 0.13339200271297674
    f64.mul
    f64.add
    local.set $5
    local.get $4
    local.get $6
    local.get $5
    f64.mul
    f64.add
    local.get $6
    local.get $7
    f64.mul
    local.get $8
    local.get $7
    local.get $9
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $9
    local.get $3
    if (result f64)
     f32.const -1
     f64.promote_f32
     local.get $9
     f64.div
    else     
     local.get $9
    end
    f32.demote_f64
    return
   else    
    local.get $2
    if (result f64)
     local.get $0
     f64.promote_f32
     f64.const 6.283185307179586
     f64.add
    else     
     local.get $0
     f64.promote_f32
     f64.const 6.283185307179586
     f64.sub
    end
    local.set $4
    i32.const 0
    local.set $3
    local.get $4
    local.get $4
    f64.mul
    local.set $5
    f64.const 0.002974357433599673
    local.get $5
    f64.const 0.009465647849436732
    f64.mul
    f64.add
    local.set $6
    f64.const 0.05338123784456704
    local.get $5
    f64.const 0.024528318116654728
    f64.mul
    f64.add
    local.set $7
    local.get $5
    local.get $5
    f64.mul
    local.set $8
    local.get $5
    local.get $4
    f64.mul
    local.set $9
    f64.const 0.3333313950307914
    local.get $5
    f64.const 0.13339200271297674
    f64.mul
    f64.add
    local.set $10
    local.get $4
    local.get $9
    local.get $10
    f64.mul
    f64.add
    local.get $9
    local.get $8
    f64.mul
    local.get $7
    local.get $8
    local.get $6
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $6
    local.get $3
    if (result f64)
     f32.const -1
     f64.promote_f32
     local.get $6
     f64.div
    else     
     local.get $6
    end
    f32.demote_f64
    return
   end
   unreachable
  end
  local.get $1
  i32.const 2139095040
  i32.ge_u
  if
   local.get $0
   local.get $0
   f32.sub
   return
  end
  block $~lib/math/rempio2f|inlined.2 (result i32)
   local.get $0
   local.set $12
   local.get $1
   local.set $11
   local.get $2
   local.set $3
   local.get $11
   i32.const 1305022427
   i32.lt_u
   if
    local.get $12
    f64.promote_f32
    f64.const 0.6366197723675814
    f64.mul
    f64.nearest
    local.set $10
    local.get $12
    f64.promote_f32
    local.get $10
    f64.const 1.5707963109016418
    f64.mul
    f64.sub
    local.get $10
    f64.const 1.5893254773528196e-08
    f64.mul
    f64.sub
    global.set $~lib/math/rempio2f_y
    local.get $10
    i32.trunc_f64_s
    br $~lib/math/rempio2f|inlined.2
   end
   local.get $12
   local.set $14
   local.get $11
   local.set $13
   local.get $13
   i32.const 23
   i32.shr_s
   i32.const 152
   i32.sub
   local.set $15
   local.get $15
   i32.const 6
   i32.shr_s
   local.set $16
   local.get $15
   i32.const 63
   i32.and
   local.set $17
   i32.const 72
   local.get $16
   i32.const 0
   i32.add
   call $~lib/array/Array<u64>#__unchecked_get
   local.set $18
   i32.const 72
   local.get $16
   i32.const 1
   i32.add
   call $~lib/array/Array<u64>#__unchecked_get
   local.set $19
   local.get $17
   i32.const 32
   i32.gt_s
   if
    i32.const 72
    local.get $16
    i32.const 2
    i32.add
    call $~lib/array/Array<u64>#__unchecked_get
    local.set $21
    local.get $21
    i64.const 96
    local.get $17
    i64.extend_i32_s
    i64.sub
    i64.shr_u
    local.set $20
    local.get $20
    local.get $19
    local.get $17
    i32.const 32
    i32.sub
    i64.extend_i32_s
    i64.shl
    i64.or
    local.set $20
   else    
    local.get $19
    i64.const 32
    local.get $17
    i64.extend_i32_s
    i64.sub
    i64.shr_u
    local.set $20
   end
   local.get $19
   i64.const 64
   local.get $17
   i64.extend_i32_s
   i64.sub
   i64.shr_u
   local.get $18
   local.get $17
   i64.extend_i32_s
   i64.shl
   i64.or
   local.set $21
   local.get $13
   i32.const 8388607
   i32.and
   i32.const 8388608
   i32.or
   i64.extend_i32_s
   local.set $22
   local.get $22
   local.get $21
   i64.mul
   local.get $22
   local.get $20
   i64.mul
   i64.const 32
   i64.shr_u
   i64.add
   local.set $23
   local.get $23
   i64.const 2
   i64.shl
   local.set $24
   local.get $23
   i64.const 62
   i64.shr_u
   local.get $24
   i64.const 63
   i64.shr_u
   i64.add
   i32.wrap_i64
   local.set $25
   f64.const 8.515303950216386e-20
   local.get $14
   f64.promote_f32
   f64.copysign
   local.get $24
   f64.convert_i64_s
   f64.mul
   global.set $~lib/math/rempio2f_y
   local.get $25
   local.set $25
   i32.const 0
   local.get $25
   i32.sub
   local.get $25
   local.get $3
   select
  end
  local.set $26
  global.get $~lib/math/rempio2f_y
  local.set $27
  local.get $27
  local.set $4
  local.get $26
  i32.const 1
  i32.and
  local.set $13
  local.get $4
  local.get $4
  f64.mul
  local.set $10
  f64.const 0.002974357433599673
  local.get $10
  f64.const 0.009465647849436732
  f64.mul
  f64.add
  local.set $9
  f64.const 0.05338123784456704
  local.get $10
  f64.const 0.024528318116654728
  f64.mul
  f64.add
  local.set $8
  local.get $10
  local.get $10
  f64.mul
  local.set $7
  local.get $10
  local.get $4
  f64.mul
  local.set $6
  f64.const 0.3333313950307914
  local.get $10
  f64.const 0.13339200271297674
  f64.mul
  f64.add
  local.set $5
  local.get $4
  local.get $6
  local.get $5
  f64.mul
  f64.add
  local.get $6
  local.get $7
  f64.mul
  local.get $8
  local.get $7
  local.get $9
  f64.mul
  f64.add
  f64.mul
  f64.add
  local.set $9
  local.get $13
  if (result f64)
   f32.const -1
   f64.promote_f32
   local.get $9
   f64.div
  else   
   local.get $9
  end
  f32.demote_f64
 )
 (func $../../lib/libm/assembly/libmf/tan (; 123 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.tan
 )
 (func $~lib/math/NativeMathf.tanh (; 124 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $1
  local.get $1
  f32.reinterpret_i32
  local.set $2
  local.get $1
  i32.const 1057791828
  i32.gt_u
  if
   local.get $1
   i32.const 1092616192
   i32.gt_u
   if
    f32.const 1
    f32.const 0
    local.get $2
    f32.div
    f32.add
    local.set $3
   else    
    f32.const 2
    local.get $2
    f32.mul
    call $~lib/math/NativeMathf.expm1
    local.set $3
    f32.const 1
    f32.const 2
    local.get $3
    f32.const 2
    f32.add
    f32.div
    f32.sub
    local.set $3
   end
  else   
   local.get $1
   i32.const 1048757624
   i32.gt_u
   if
    f32.const 2
    local.get $2
    f32.mul
    call $~lib/math/NativeMathf.expm1
    local.set $3
    local.get $3
    local.get $3
    f32.const 2
    f32.add
    f32.div
    local.set $3
   else    
    local.get $1
    i32.const 8388608
    i32.ge_u
    if
     f32.const -2
     local.get $2
     f32.mul
     call $~lib/math/NativeMathf.expm1
     local.set $3
     local.get $3
     f32.neg
     local.get $3
     f32.const 2
     f32.add
     f32.div
     local.set $3
    else     
     local.get $2
     local.set $3
    end
   end
  end
  local.get $3
  local.get $0
  f32.copysign
 )
 (func $../../lib/libm/assembly/libmf/tanh (; 125 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.tanh
 )
 (func $../../lib/libm/assembly/libmf/trunc (; 126 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f32)
  local.get $0
  local.set $1
  local.get $1
  f32.trunc
 )
 (func $null (; 127 ;) (type $FUNCSIG$v)
 )
)
