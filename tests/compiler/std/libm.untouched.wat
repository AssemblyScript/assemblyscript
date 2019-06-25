(module
 (type $FUNCSIG$dd (func (param f64) (result f64)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$ddd (func (param f64 f64) (result f64)))
 (type $FUNCSIG$ddi (func (param f64 i32) (result f64)))
 (type $FUNCSIG$fd (func (param f64) (result f32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/math/NativeMath.E f64 (f64.const 2.718281828459045))
 (global $std/libm/E f64 (f64.const 2.718281828459045))
 (global $~lib/math/NativeMath.LN10 f64 (f64.const 2.302585092994046))
 (global $std/libm/LN10 f64 (f64.const 2.302585092994046))
 (global $~lib/math/NativeMath.LN2 f64 (f64.const 0.6931471805599453))
 (global $std/libm/LN2 f64 (f64.const 0.6931471805599453))
 (global $~lib/math/NativeMath.LOG10E f64 (f64.const 0.4342944819032518))
 (global $std/libm/LOG10E f64 (f64.const 0.4342944819032518))
 (global $~lib/math/NativeMath.LOG2E f64 (f64.const 1.4426950408889634))
 (global $std/libm/LOG2E f64 (f64.const 1.4426950408889634))
 (global $~lib/math/NativeMath.PI f64 (f64.const 3.141592653589793))
 (global $std/libm/PI f64 (f64.const 3.141592653589793))
 (global $~lib/math/NativeMath.SQRT1_2 f64 (f64.const 0.7071067811865476))
 (global $std/libm/SQRT1_2 f64 (f64.const 0.7071067811865476))
 (global $~lib/math/NativeMath.SQRT2 f64 (f64.const 1.4142135623730951))
 (global $std/libm/SQRT2 f64 (f64.const 1.4142135623730951))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "E" (global $std/libm/E))
 (export "LN10" (global $std/libm/LN10))
 (export "LN2" (global $std/libm/LN2))
 (export "LOG10E" (global $std/libm/LOG10E))
 (export "LOG2E" (global $std/libm/LOG2E))
 (export "PI" (global $std/libm/PI))
 (export "SQRT1_2" (global $std/libm/SQRT1_2))
 (export "SQRT2" (global $std/libm/SQRT2))
 (export "abs" (func $std/libm/abs))
 (export "acos" (func $std/libm/acos))
 (export "acosh" (func $std/libm/acosh))
 (export "asin" (func $std/libm/asin))
 (export "asinh" (func $std/libm/asinh))
 (export "atan" (func $std/libm/atan))
 (export "atanh" (func $std/libm/atanh))
 (export "atan2" (func $std/libm/atan2))
 (export "cbrt" (func $std/libm/cbrt))
 (export "ceil" (func $std/libm/ceil))
 (export "clz32" (func $std/libm/clz32))
 (export "cos" (func $std/libm/cos))
 (export "cosh" (func $std/libm/cosh))
 (export "exp" (func $std/libm/exp))
 (export "expm1" (func $std/libm/expm1))
 (export "floor" (func $std/libm/floor))
 (export "fround" (func $std/libm/fround))
 (export "hypot" (func $std/libm/hypot))
 (export "imul" (func $std/libm/imul))
 (export "log" (func $std/libm/log))
 (export "log10" (func $std/libm/log10))
 (export "log1p" (func $std/libm/log1p))
 (export "log2" (func $std/libm/log2))
 (export "max" (func $std/libm/max))
 (export "min" (func $std/libm/min))
 (export "pow" (func $std/libm/pow))
 (export "round" (func $std/libm/round))
 (export "sign" (func $std/libm/sign))
 (export "sin" (func $std/libm/sin))
 (export "sinh" (func $std/libm/sinh))
 (export "sqrt" (func $std/libm/sqrt))
 (export "tan" (func $std/libm/tan))
 (export "tanh" (func $std/libm/tanh))
 (export "trunc" (func $std/libm/trunc))
 (func $std/libm/abs (; 0 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  local.get $0
  local.set $1
  local.get $1
  f64.abs
 )
 (func $~lib/math/R (; 1 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
 (func $~lib/math/NativeMath.acos (; 2 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
 (func $std/libm/acos (; 3 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.acos
 )
 (func $~lib/math/NativeMath.log1p (; 4 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
  local.tee $6
  if (result i32)
   local.get $6
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
   i32.const 1017118720
   i32.const 1
   i32.shl
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
 (func $~lib/math/NativeMath.log (; 5 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
  (local $13 i32)
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
  local.tee $4
  if (result i32)
   local.get $4
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
    local.tee $4
    if (result i32)
     local.get $1
     i64.const 32
     i64.shl
     i64.const 0
     i64.eq
    else     
     local.get $4
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
  local.set $5
  f64.const 0.5
  local.get $5
  f64.mul
  local.get $5
  f64.mul
  local.set $6
  local.get $5
  f64.const 2
  local.get $5
  f64.add
  f64.div
  local.set $7
  local.get $7
  local.get $7
  f64.mul
  local.set $8
  local.get $8
  local.get $8
  f64.mul
  local.set $9
  local.get $9
  f64.const 0.3999999999940942
  local.get $9
  f64.const 0.22222198432149784
  local.get $9
  f64.const 0.15313837699209373
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $10
  local.get $8
  f64.const 0.6666666666666735
  local.get $9
  f64.const 0.2857142874366239
  local.get $9
  f64.const 0.1818357216161805
  local.get $9
  f64.const 0.14798198605116586
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $11
  local.get $11
  local.get $10
  f64.add
  local.set $12
  local.get $3
  local.set $13
  local.get $7
  local.get $6
  local.get $12
  f64.add
  f64.mul
  local.get $13
  f64.convert_i32_s
  f64.const 1.9082149292705877e-10
  f64.mul
  f64.add
  local.get $6
  f64.sub
  local.get $5
  f64.add
  local.get $13
  f64.convert_i32_s
  f64.const 0.6931471803691238
  f64.mul
  f64.add
 )
 (func $~lib/math/NativeMath.acosh (; 6 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  local.get $0
  i64.reinterpret_f64
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.set $1
  local.get $1
  i64.const 1023
  i64.const 1
  i64.add
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
  i64.const 1023
  i64.const 26
  i64.add
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
 (func $std/libm/acosh (; 7 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.acosh
 )
 (func $~lib/math/NativeMath.asin (; 8 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
   local.tee $3
   if (result i32)
    local.get $2
    i32.const 1048576
    i32.ge_u
   else    
    local.get $3
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
 (func $std/libm/asin (; 9 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.asin
 )
 (func $~lib/math/NativeMath.asinh (; 10 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
  i64.const 1023
  i64.const 26
  i64.add
  i64.ge_u
  if
   local.get $3
   call $~lib/math/NativeMath.log
   f64.const 0.6931471805599453
   f64.add
   local.set $3
  else   
   local.get $2
   i64.const 1023
   i64.const 1
   i64.add
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
    i64.const 1023
    i64.const 26
    i64.sub
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
 (func $std/libm/asinh (; 11 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.asinh
 )
 (func $~lib/builtins/isNaN<f64> (; 12 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.ne
 )
 (func $~lib/math/NativeMath.atan (; 13 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
   call $~lib/builtins/isNaN<f64>
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
       block
        f64.const 0.4636476090008061
        local.get $8
        f64.const 2.2698777452961687e-17
        f64.sub
        local.get $0
        f64.sub
        f64.sub
        local.set $3
        br $break|0
        unreachable
       end
       unreachable
      end
      block
       f64.const 0.7853981633974483
       local.get $8
       f64.const 3.061616997868383e-17
       f64.sub
       local.get $0
       f64.sub
       f64.sub
       local.set $3
       br $break|0
       unreachable
      end
      unreachable
     end
     block
      f64.const 0.982793723247329
      local.get $8
      f64.const 1.3903311031230998e-17
      f64.sub
      local.get $0
      f64.sub
      f64.sub
      local.set $3
      br $break|0
      unreachable
     end
     unreachable
    end
    block
     f64.const 1.5707963267948966
     local.get $8
     f64.const 6.123233995736766e-17
     f64.sub
     local.get $0
     f64.sub
     f64.sub
     local.set $3
     br $break|0
     unreachable
    end
    unreachable
   end
   unreachable
  end
  local.get $3
  local.get $2
  f64.copysign
 )
 (func $std/libm/atan (; 14 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.atan
 )
 (func $~lib/math/NativeMath.atanh (; 15 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
  i64.const 1023
  i64.const 1
  i64.sub
  i64.lt_u
  if
   local.get $2
   i64.const 1023
   i64.const 32
   i64.sub
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
 (func $std/libm/atanh (; 16 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.atanh
 )
 (func $~lib/math/NativeMath.atan2 (; 17 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  local.get $1
  call $~lib/builtins/isNaN<f64>
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $0
   call $~lib/builtins/isNaN<f64>
  end
  if
   local.get $1
   local.get $0
   f64.add
   return
  end
  local.get $1
  i64.reinterpret_f64
  local.set $3
  local.get $3
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $4
  local.get $3
  i32.wrap_i64
  local.set $5
  local.get $0
  i64.reinterpret_f64
  local.set $3
  local.get $3
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $6
  local.get $3
  i32.wrap_i64
  local.set $7
  local.get $4
  i32.const 1072693248
  i32.sub
  local.get $5
  i32.or
  i32.const 0
  i32.eq
  if
   local.get $0
   call $~lib/math/NativeMath.atan
   return
  end
  local.get $6
  i32.const 31
  i32.shr_u
  i32.const 1
  i32.and
  local.get $4
  i32.const 30
  i32.shr_u
  i32.const 2
  i32.and
  i32.or
  local.set $8
  local.get $4
  i32.const 2147483647
  i32.and
  local.set $4
  local.get $6
  i32.const 2147483647
  i32.and
  local.set $6
  local.get $6
  local.get $7
  i32.or
  i32.const 0
  i32.eq
  if
   block $break|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        local.get $8
        local.set $2
        local.get $2
        i32.const 0
        i32.eq
        br_if $case0|0
        local.get $2
        i32.const 1
        i32.eq
        br_if $case1|0
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
  local.get $4
  local.get $5
  i32.or
  i32.const 0
  i32.eq
  if
   local.get $8
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
  local.get $4
  i32.const 2146435072
  i32.eq
  if
   local.get $6
   i32.const 2146435072
   i32.eq
   if
    block $break|1
     block $case3|1
      block $case2|1
       block $case1|1
        block $case0|1
         local.get $8
         local.set $2
         local.get $2
         i32.const 0
         i32.eq
         br_if $case0|1
         local.get $2
         i32.const 1
         i32.eq
         br_if $case1|1
         local.get $2
         i32.const 2
         i32.eq
         br_if $case2|1
         local.get $2
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
         local.get $8
         local.set $2
         local.get $2
         i32.const 0
         i32.eq
         br_if $case0|2
         local.get $2
         i32.const 1
         i32.eq
         br_if $case1|2
         local.get $2
         i32.const 2
         i32.eq
         br_if $case2|2
         local.get $2
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
  local.get $4
  i32.const 64
  i32.const 20
  i32.shl
  i32.add
  local.get $6
  i32.lt_u
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $6
   i32.const 2146435072
   i32.eq
  end
  if
   local.get $8
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
  local.get $8
  i32.const 2
  i32.and
  local.tee $2
  if (result i32)
   local.get $6
   i32.const 64
   i32.const 20
   i32.shl
   i32.add
   local.get $4
   i32.lt_u
  else   
   local.get $2
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
       local.get $8
       local.set $2
       local.get $2
       i32.const 0
       i32.eq
       br_if $case0|3
       local.get $2
       i32.const 1
       i32.eq
       br_if $case1|3
       local.get $2
       i32.const 2
       i32.eq
       br_if $case2|3
       local.get $2
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
  f64.const 0
 )
 (func $std/libm/atan2 (; 18 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  local.get $0
  local.get $1
  call $~lib/math/NativeMath.atan2
 )
 (func $~lib/math/NativeMath.cbrt (; 19 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
 (func $std/libm/cbrt (; 20 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.cbrt
 )
 (func $std/libm/ceil (; 21 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  local.get $0
  local.set $1
  local.get $1
  f64.ceil
 )
 (func $~lib/builtins/isFinite<f64> (; 22 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.sub
  f64.const 0
  f64.eq
 )
 (func $~lib/math/NativeMath.clz32 (; 23 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/builtins/isFinite<f64>
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
 (func $std/libm/clz32 (; 24 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.clz32
 )
 (func $~lib/math/NativeMath.cos (; 25 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  unreachable
  f64.const 0
 )
 (func $std/libm/cos (; 26 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.cos
 )
 (func $~lib/math/NativeMath.expm1 (; 27 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
  (local $16 i32)
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
   call $~lib/builtins/isNaN<f64>
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
  local.tee $16
  if (result i32)
   local.get $16
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
 (func $~lib/math/NativeMath.scalbn (; 28 ;) (type $FUNCSIG$ddi) (param $0 f64) (param $1 i32) (result f64)
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
 (func $~lib/math/NativeMath.exp (; 29 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
   call $~lib/builtins/isNaN<f64>
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
 (func $~lib/math/NativeMath.cosh (; 30 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
   i32.const 1072693248
   i32.const 26
   i32.const 20
   i32.shl
   i32.sub
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
  block $~lib/math/expo2|inlined.0 (result f64)
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
  end
  local.set $3
  local.get $3
 )
 (func $std/libm/cosh (; 31 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.cosh
 )
 (func $std/libm/exp (; 32 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.exp
 )
 (func $std/libm/expm1 (; 33 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.expm1
 )
 (func $std/libm/floor (; 34 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  local.get $0
  local.set $1
  local.get $1
  f64.floor
 )
 (func $std/libm/fround (; 35 ;) (type $FUNCSIG$fd) (param $0 f64) (result f32)
  (local $1 f64)
  local.get $0
  local.set $1
  local.get $1
  f32.demote_f64
 )
 (func $~lib/math/NativeMath.hypot (; 36 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
  local.tee $7
  if (result i32)
   local.get $7
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
  local.set $8
  local.get $5
  i32.const 1023
  i32.const 510
  i32.add
  i32.gt_s
  if
   f64.const 5260135901548373507240989e186
   local.set $8
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
   i32.const 1023
   i32.const 450
   i32.sub
   i32.lt_s
   if
    f64.const 1.90109156629516e-211
    local.set $8
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
  local.set $9
  local.get $0
  local.get $9
  f64.sub
  local.get $9
  f64.add
  local.set $10
  local.get $0
  local.get $10
  f64.sub
  local.set $11
  local.get $0
  local.get $0
  f64.mul
  local.set $12
  local.get $10
  local.get $10
  f64.mul
  local.get $12
  f64.sub
  f64.const 2
  local.get $10
  f64.mul
  local.get $11
  f64.add
  local.get $11
  f64.mul
  f64.add
  local.set $13
  local.get $1
  f64.const 134217729
  f64.mul
  local.set $9
  local.get $1
  local.get $9
  f64.sub
  local.get $9
  f64.add
  local.set $10
  local.get $1
  local.get $10
  f64.sub
  local.set $11
  local.get $1
  local.get $1
  f64.mul
  local.set $14
  local.get $10
  local.get $10
  f64.mul
  local.get $14
  f64.sub
  f64.const 2
  local.get $10
  f64.mul
  local.get $11
  f64.add
  local.get $11
  f64.mul
  f64.add
  local.set $15
  local.get $8
  local.get $15
  local.get $13
  f64.add
  local.get $14
  f64.add
  local.get $12
  f64.add
  f64.sqrt
  f64.mul
 )
 (func $std/libm/hypot (; 37 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  local.get $0
  local.get $1
  call $~lib/math/NativeMath.hypot
 )
 (func $~lib/math/NativeMath.imul (; 38 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  local.get $0
  local.get $1
  f64.add
  call $~lib/builtins/isFinite<f64>
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
 (func $std/libm/imul (; 39 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  local.get $0
  local.get $1
  call $~lib/math/NativeMath.imul
 )
 (func $std/libm/log (; 40 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.log
 )
 (func $~lib/math/NativeMath.log10 (; 41 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
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
  local.tee $4
  if (result i32)
   local.get $4
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
    local.tee $4
    if (result i32)
     local.get $1
     i64.const 32
     i64.shl
     i64.const 0
     i64.eq
    else     
     local.get $4
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
  local.set $5
  f64.const 0.5
  local.get $5
  f64.mul
  local.get $5
  f64.mul
  local.set $6
  local.get $5
  f64.const 2
  local.get $5
  f64.add
  f64.div
  local.set $7
  local.get $7
  local.get $7
  f64.mul
  local.set $8
  local.get $8
  local.get $8
  f64.mul
  local.set $9
  local.get $9
  f64.const 0.3999999999940942
  local.get $9
  f64.const 0.22222198432149784
  local.get $9
  f64.const 0.15313837699209373
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $10
  local.get $8
  f64.const 0.6666666666666735
  local.get $9
  f64.const 0.2857142874366239
  local.get $9
  f64.const 0.1818357216161805
  local.get $9
  f64.const 0.14798198605116586
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $11
  local.get $11
  local.get $10
  f64.add
  local.set $12
  local.get $5
  local.get $6
  f64.sub
  local.set $13
  local.get $13
  i64.reinterpret_f64
  local.set $1
  local.get $1
  i64.const -4294967296
  i64.and
  local.set $1
  local.get $1
  f64.reinterpret_i64
  local.set $13
  local.get $5
  local.get $13
  f64.sub
  local.get $6
  f64.sub
  local.get $7
  local.get $6
  local.get $12
  f64.add
  f64.mul
  f64.add
  local.set $14
  local.get $13
  f64.const 0.4342944818781689
  f64.mul
  local.set $15
  local.get $3
  f64.convert_i32_s
  local.set $16
  local.get $16
  f64.const 0.30102999566361177
  f64.mul
  local.set $17
  local.get $16
  f64.const 3.694239077158931e-13
  f64.mul
  local.get $14
  local.get $13
  f64.add
  f64.const 2.5082946711645275e-11
  f64.mul
  f64.add
  local.get $14
  f64.const 0.4342944818781689
  f64.mul
  f64.add
  local.set $18
  local.get $17
  local.get $15
  f64.add
  local.set $9
  local.get $18
  local.get $17
  local.get $9
  f64.sub
  local.get $15
  f64.add
  f64.add
  local.set $18
  local.get $18
  local.get $9
  f64.add
 )
 (func $std/libm/log10 (; 42 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.log10
 )
 (func $std/libm/log1p (; 43 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.log1p
 )
 (func $~lib/math/NativeMath.log2 (; 44 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
  local.tee $4
  if (result i32)
   local.get $4
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
    local.tee $4
    if (result i32)
     local.get $1
     i64.const 32
     i64.shl
     i64.const 0
     i64.eq
    else     
     local.get $4
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
  local.set $5
  f64.const 0.5
  local.get $5
  f64.mul
  local.get $5
  f64.mul
  local.set $6
  local.get $5
  f64.const 2
  local.get $5
  f64.add
  f64.div
  local.set $7
  local.get $7
  local.get $7
  f64.mul
  local.set $8
  local.get $8
  local.get $8
  f64.mul
  local.set $9
  local.get $9
  f64.const 0.3999999999940942
  local.get $9
  f64.const 0.22222198432149784
  local.get $9
  f64.const 0.15313837699209373
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $10
  local.get $8
  f64.const 0.6666666666666735
  local.get $9
  f64.const 0.2857142874366239
  local.get $9
  f64.const 0.1818357216161805
  local.get $9
  f64.const 0.14798198605116586
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $11
  local.get $11
  local.get $10
  f64.add
  local.set $12
  local.get $5
  local.get $6
  f64.sub
  local.set $13
  local.get $13
  i64.reinterpret_f64
  local.set $1
  local.get $1
  i64.const -4294967296
  i64.and
  local.set $1
  local.get $1
  f64.reinterpret_i64
  local.set $13
  local.get $5
  local.get $13
  f64.sub
  local.get $6
  f64.sub
  local.get $7
  local.get $6
  local.get $12
  f64.add
  f64.mul
  f64.add
  local.set $14
  local.get $13
  f64.const 1.4426950407214463
  f64.mul
  local.set $15
  local.get $14
  local.get $13
  f64.add
  f64.const 1.6751713164886512e-10
  f64.mul
  local.get $14
  f64.const 1.4426950407214463
  f64.mul
  f64.add
  local.set $16
  local.get $3
  f64.convert_i32_s
  local.set $17
  local.get $17
  local.get $15
  f64.add
  local.set $9
  local.get $16
  local.get $17
  local.get $9
  f64.sub
  local.get $15
  f64.add
  f64.add
  local.set $16
  local.get $9
  local.set $15
  local.get $16
  local.get $15
  f64.add
 )
 (func $std/libm/log2 (; 45 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.log2
 )
 (func $std/libm/max (; 46 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  (local $2 f64)
  (local $3 f64)
  local.get $0
  local.set $2
  local.get $1
  local.set $3
  local.get $2
  local.get $3
  f64.max
 )
 (func $std/libm/min (; 47 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  (local $2 f64)
  (local $3 f64)
  local.get $0
  local.set $2
  local.get $1
  local.set $3
  local.get $2
  local.get $3
  f64.min
 )
 (func $~lib/math/NativeMath.pow (; 48 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
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
  local.tee $9
  if (result i32)
   local.get $9
  else   
   local.get $7
   i32.const 2146435072
   i32.eq
   local.tee $9
   if (result i32)
    local.get $4
    i32.const 0
    i32.ne
   else    
    local.get $9
   end
  end
  local.tee $9
  if (result i32)
   local.get $9
  else   
   local.get $8
   i32.const 2146435072
   i32.gt_s
  end
  local.tee $9
  if (result i32)
   local.get $9
  else   
   local.get $8
   i32.const 2146435072
   i32.eq
   local.tee $9
   if (result i32)
    local.get $6
    i32.const 0
    i32.ne
   else    
    local.get $9
   end
  end
  if
   local.get $0
   local.get $1
   f64.add
   return
  end
  i32.const 0
  local.set $10
  local.get $3
  i32.const 0
  i32.lt_s
  if
   local.get $8
   i32.const 1128267776
   i32.ge_s
   if
    i32.const 2
    local.set $10
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
     local.set $11
     local.get $11
     i32.const 20
     i32.gt_s
     local.set $9
     i32.const 52
     i32.const 20
     local.get $9
     select
     local.get $11
     i32.sub
     local.set $12
     local.get $6
     local.get $8
     local.get $9
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
      local.set $10
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
   local.tee $14
   if (result i32)
    local.get $14
   else    
    local.get $7
    i32.const 2146435072
    i32.eq
   end
   local.tee $14
   if (result i32)
    local.get $14
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
     local.get $10
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
      local.get $10
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
   local.get $10
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
   local.get $10
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
    local.set $11
   else    
    local.get $28
    i32.const 767610
    i32.lt_s
    if
     i32.const 1
     local.set $11
    else     
     i32.const 0
     local.set $11
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
   local.get $11
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
   local.get $11
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
   local.get $11
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
   local.get $11
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
  local.set $11
  i32.const 0
  local.set $29
  local.get $41
  i32.const 1071644672
  i32.gt_s
  if
   local.get $28
   i32.const 1048576
   local.get $11
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
   local.set $11
   f64.const 0
   local.set $24
   local.get $29
   i32.const 1048575
   local.get $11
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
   local.get $11
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
 (func $std/libm/pow (; 49 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  local.get $0
  local.get $1
  call $~lib/math/NativeMath.pow
 )
 (func $std/libm/round (; 50 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
 (func $std/libm/sign (; 51 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
 (func $~lib/math/NativeMath.sin (; 52 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  unreachable
  f64.const 0
 )
 (func $std/libm/sin (; 53 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.sin
 )
 (func $~lib/math/NativeMath.sinh (; 54 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
    i32.const 1072693248
    i32.const 26
    i32.const 20
    i32.shl
    i32.sub
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
  block $~lib/math/expo2|inlined.1 (result f64)
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
  end
  f64.mul
  local.set $4
  local.get $4
 )
 (func $std/libm/sinh (; 55 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.sinh
 )
 (func $std/libm/sqrt (; 56 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  local.get $0
  local.set $1
  local.get $1
  f64.sqrt
 )
 (func $~lib/math/NativeMath.tan (; 57 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  unreachable
  f64.const 0
 )
 (func $std/libm/tan (; 58 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.tan
 )
 (func $~lib/math/NativeMath.tanh (; 59 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
 (func $std/libm/tanh (; 60 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.tanh
 )
 (func $std/libm/trunc (; 61 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  local.get $0
  local.set $1
  local.get $1
  f64.trunc
 )
 (func $null (; 62 ;) (type $FUNCSIG$v)
 )
)
