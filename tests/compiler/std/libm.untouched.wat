(module
 (type $FF (func (param f64) (result f64)))
 (type $Fi (func (param f64) (result i32)))
 (type $FFF (func (param f64 f64) (result f64)))
 (type $FiF (func (param f64 i32) (result f64)))
 (type $Ff (func (param f64) (result f32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
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
 (global $NaN f64 (f64.const nan:0x8000000000000))
 (global $ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
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
 (func $std/libm/abs (; 0 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  f64.abs
 )
 (func $~lib/math/R (; 1 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 f64)
  get_local $0
  f64.const 0.16666666666666666
  get_local $0
  f64.const -0.3255658186224009
  get_local $0
  f64.const 0.20121253213486293
  get_local $0
  f64.const -0.04005553450067941
  get_local $0
  f64.const 7.915349942898145e-04
  get_local $0
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
  set_local $1
  f64.const 1
  get_local $0
  f64.const -2.403394911734414
  get_local $0
  f64.const 2.0209457602335057
  get_local $0
  f64.const -0.6882839716054533
  get_local $0
  f64.const 0.07703815055590194
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  set_local $2
  get_local $1
  get_local $2
  f64.div
 )
 (func $~lib/math/NativeMath.acos (; 2 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  get_local $0
  i64.reinterpret/f64
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_local $1
  get_local $1
  i32.const 2147483647
  i32.and
  set_local $2
  get_local $2
  i32.const 1072693248
  i32.ge_u
  if
   get_local $0
   i64.reinterpret/f64
   i32.wrap/i64
   set_local $3
   get_local $2
   i32.const 1072693248
   i32.sub
   get_local $3
   i32.or
   i32.const 0
   i32.eq
   if
    get_local $1
    i32.const 31
    i32.shr_u
    if
     f64.const 2
     f64.const 1.5707963267948966
     f64.mul
     f32.const 7.52316384526264e-37
     f64.promote/f32
     f64.add
     return
    end
    f64.const 0
    return
   end
   f64.const 0
   get_local $0
   get_local $0
   f64.sub
   f64.div
   return
  end
  get_local $2
  i32.const 1071644672
  i32.lt_u
  if
   get_local $2
   i32.const 1012924416
   i32.le_u
   if
    f64.const 1.5707963267948966
    f32.const 7.52316384526264e-37
    f64.promote/f32
    f64.add
    return
   end
   f64.const 1.5707963267948966
   get_local $0
   f64.const 6.123233995736766e-17
   get_local $0
   get_local $0
   get_local $0
   f64.mul
   call $~lib/math/R
   f64.mul
   f64.sub
   f64.sub
   f64.sub
   return
  end
  get_local $1
  i32.const 31
  i32.shr_u
  if
   f64.const 0.5
   get_local $0
   f64.const 0.5
   f64.mul
   f64.add
   set_local $6
   get_local $6
   f64.sqrt
   set_local $4
   get_local $6
   call $~lib/math/R
   get_local $4
   f64.mul
   f64.const 6.123233995736766e-17
   f64.sub
   set_local $5
   f64.const 2
   f64.const 1.5707963267948966
   get_local $4
   get_local $5
   f64.add
   f64.sub
   f64.mul
   return
  end
  f64.const 0.5
  get_local $0
  f64.const 0.5
  f64.mul
  f64.sub
  set_local $6
  get_local $6
  f64.sqrt
  set_local $4
  get_local $4
  i64.reinterpret/f64
  i64.const -4294967296
  i64.and
  f64.reinterpret/i64
  set_local $7
  get_local $6
  get_local $7
  get_local $7
  f64.mul
  f64.sub
  get_local $4
  get_local $7
  f64.add
  f64.div
  set_local $8
  get_local $6
  call $~lib/math/R
  get_local $4
  f64.mul
  get_local $8
  f64.add
  set_local $5
  f64.const 2
  get_local $7
  get_local $5
  f64.add
  f64.mul
 )
 (func $std/libm/acos (; 3 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  call $~lib/math/NativeMath.acos
 )
 (func $~lib/math/NativeMath.log1p (; 4 ;) (type $FF) (param $0 f64) (result f64)
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
  get_local $0
  i64.reinterpret/f64
  set_local $1
  get_local $1
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_local $2
  i32.const 1
  set_local $3
  f64.const 0
  set_local $4
  f64.const 0
  set_local $5
  get_local $2
  i32.const 1071284858
  i32.lt_u
  tee_local $6
  if (result i32)
   get_local $6
  else   
   get_local $2
   i32.const 31
   i32.shr_u
  end
  if
   get_local $2
   i32.const -1074790400
   i32.ge_u
   if
    get_local $0
    f64.const -1
    f64.eq
    if
     get_local $0
     f64.const 0
     f64.div
     return
    end
    get_local $0
    get_local $0
    f64.sub
    f64.const 0
    f64.div
    return
   end
   get_local $2
   i32.const 1
   i32.shl
   i32.const 1017118720
   i32.const 1
   i32.shl
   i32.lt_u
   if
    get_local $0
    return
   end
   get_local $2
   i32.const -1076707644
   i32.le_u
   if
    i32.const 0
    set_local $3
    f64.const 0
    set_local $4
    get_local $0
    set_local $5
   end
  else   
   get_local $2
   i32.const 2146435072
   i32.ge_u
   if
    get_local $0
    return
   end
  end
  get_local $3
  if
   f64.const 1
   get_local $0
   f64.add
   i64.reinterpret/f64
   set_local $1
   get_local $1
   i64.const 32
   i64.shr_u
   i32.wrap/i64
   set_local $6
   get_local $6
   i32.const 1072693248
   i32.const 1072079006
   i32.sub
   i32.add
   set_local $6
   get_local $6
   i32.const 20
   i32.shr_u
   i32.const 1023
   i32.sub
   set_local $3
   get_local $3
   i32.const 54
   i32.lt_s
   if
    get_local $1
    f64.reinterpret/i64
    set_local $7
    get_local $3
    i32.const 2
    i32.ge_s
    if (result f64)
     f64.const 1
     get_local $7
     get_local $0
     f64.sub
     f64.sub
    else     
     get_local $0
     get_local $7
     f64.const 1
     f64.sub
     f64.sub
    end
    set_local $4
    get_local $4
    get_local $7
    f64.div
    set_local $4
   else    
    f64.const 0
    set_local $4
   end
   get_local $6
   i32.const 1048575
   i32.and
   i32.const 1072079006
   i32.add
   set_local $6
   get_local $6
   i64.extend_u/i32
   i64.const 32
   i64.shl
   get_local $1
   i64.const 4294967295
   i64.and
   i64.or
   set_local $1
   get_local $1
   f64.reinterpret/i64
   f64.const 1
   f64.sub
   set_local $5
  end
  f64.const 0.5
  get_local $5
  f64.mul
  get_local $5
  f64.mul
  set_local $8
  get_local $5
  f64.const 2
  get_local $5
  f64.add
  f64.div
  set_local $9
  get_local $9
  get_local $9
  f64.mul
  set_local $10
  get_local $10
  get_local $10
  f64.mul
  set_local $11
  get_local $11
  f64.const 0.3999999999940942
  get_local $11
  f64.const 0.22222198432149784
  get_local $11
  f64.const 0.15313837699209373
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  set_local $12
  get_local $10
  f64.const 0.6666666666666735
  get_local $11
  f64.const 0.2857142874366239
  get_local $11
  f64.const 0.1818357216161805
  get_local $11
  f64.const 0.14798198605116586
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  set_local $13
  get_local $13
  get_local $12
  f64.add
  set_local $14
  get_local $3
  f64.convert_s/i32
  set_local $15
  get_local $9
  get_local $8
  get_local $14
  f64.add
  f64.mul
  get_local $15
  f64.const 1.9082149292705877e-10
  f64.mul
  get_local $4
  f64.add
  f64.add
  get_local $8
  f64.sub
  get_local $5
  f64.add
  get_local $15
  f64.const 0.6931471803691238
  f64.mul
  f64.add
 )
 (func $~lib/math/NativeMath.log (; 5 ;) (type $FF) (param $0 f64) (result f64)
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
  get_local $0
  i64.reinterpret/f64
  set_local $1
  get_local $1
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_local $2
  i32.const 0
  set_local $3
  get_local $2
  i32.const 1048576
  i32.lt_u
  tee_local $4
  if (result i32)
   get_local $4
  else   
   get_local $2
   i32.const 31
   i32.shr_u
  end
  if
   get_local $1
   i64.const 1
   i64.shl
   i64.const 0
   i64.eq
   if
    f64.const -1
    get_local $0
    get_local $0
    f64.mul
    f64.div
    return
   end
   get_local $2
   i32.const 31
   i32.shr_u
   if
    get_local $0
    get_local $0
    f64.sub
    f64.const 0
    f64.div
    return
   end
   get_local $3
   i32.const 54
   i32.sub
   set_local $3
   get_local $0
   f64.const 18014398509481984
   f64.mul
   set_local $0
   get_local $0
   i64.reinterpret/f64
   set_local $1
   get_local $1
   i64.const 32
   i64.shr_u
   i32.wrap/i64
   set_local $2
  else   
   get_local $2
   i32.const 2146435072
   i32.ge_u
   if
    get_local $0
    return
   else    
    get_local $2
    i32.const 1072693248
    i32.eq
    tee_local $4
    if (result i32)
     get_local $1
     i64.const 32
     i64.shl
     i64.const 0
     i64.eq
    else     
     get_local $4
    end
    if
     f64.const 0
     return
    end
   end
  end
  get_local $2
  i32.const 1072693248
  i32.const 1072079006
  i32.sub
  i32.add
  set_local $2
  get_local $3
  get_local $2
  i32.const 20
  i32.shr_s
  i32.const 1023
  i32.sub
  i32.add
  set_local $3
  get_local $2
  i32.const 1048575
  i32.and
  i32.const 1072079006
  i32.add
  set_local $2
  get_local $2
  i64.extend_u/i32
  i64.const 32
  i64.shl
  get_local $1
  i64.const 4294967295
  i64.and
  i64.or
  set_local $1
  get_local $1
  f64.reinterpret/i64
  set_local $0
  get_local $0
  f64.const 1
  f64.sub
  set_local $5
  f64.const 0.5
  get_local $5
  f64.mul
  get_local $5
  f64.mul
  set_local $6
  get_local $5
  f64.const 2
  get_local $5
  f64.add
  f64.div
  set_local $7
  get_local $7
  get_local $7
  f64.mul
  set_local $8
  get_local $8
  get_local $8
  f64.mul
  set_local $9
  get_local $9
  f64.const 0.3999999999940942
  get_local $9
  f64.const 0.22222198432149784
  get_local $9
  f64.const 0.15313837699209373
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  set_local $10
  get_local $8
  f64.const 0.6666666666666735
  get_local $9
  f64.const 0.2857142874366239
  get_local $9
  f64.const 0.1818357216161805
  get_local $9
  f64.const 0.14798198605116586
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  set_local $11
  get_local $11
  get_local $10
  f64.add
  set_local $12
  get_local $3
  set_local $13
  get_local $7
  get_local $6
  get_local $12
  f64.add
  f64.mul
  get_local $13
  f64.convert_s/i32
  f64.const 1.9082149292705877e-10
  f64.mul
  f64.add
  get_local $6
  f64.sub
  get_local $5
  f64.add
  get_local $13
  f64.convert_s/i32
  f64.const 0.6931471803691238
  f64.mul
  f64.add
 )
 (func $~lib/math/NativeMath.acosh (; 6 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i64)
  get_local $0
  i64.reinterpret/f64
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  set_local $1
  get_local $1
  i64.const 1023
  i64.const 1
  i64.add
  i64.lt_u
  if
   get_local $0
   f64.const 1
   f64.sub
   get_local $0
   f64.const 1
   f64.sub
   get_local $0
   f64.const 1
   f64.sub
   f64.mul
   f64.const 2
   get_local $0
   f64.const 1
   f64.sub
   f64.mul
   f64.add
   f64.sqrt
   f64.add
   call $~lib/math/NativeMath.log1p
   return
  end
  get_local $1
  i64.const 1023
  i64.const 26
  i64.add
  i64.lt_u
  if
   f64.const 2
   get_local $0
   f64.mul
   f64.const 1
   get_local $0
   get_local $0
   get_local $0
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
  get_local $0
  call $~lib/math/NativeMath.log
  f64.const 0.6931471805599453
  f64.add
 )
 (func $std/libm/acosh (; 7 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  call $~lib/math/NativeMath.acosh
 )
 (func $~lib/math/NativeMath.asin (; 8 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  get_local $0
  i64.reinterpret/f64
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_local $1
  get_local $1
  i32.const 2147483647
  i32.and
  set_local $2
  get_local $2
  i32.const 1072693248
  i32.ge_u
  if
   get_local $0
   i64.reinterpret/f64
   i32.wrap/i64
   set_local $3
   get_local $2
   i32.const 1072693248
   i32.sub
   get_local $3
   i32.or
   i32.const 0
   i32.eq
   if
    get_local $0
    f64.const 1.5707963267948966
    f64.mul
    f32.const 7.52316384526264e-37
    f64.promote/f32
    f64.add
    return
   end
   f64.const 0
   get_local $0
   get_local $0
   f64.sub
   f64.div
   return
  end
  get_local $2
  i32.const 1071644672
  i32.lt_u
  if
   get_local $2
   i32.const 1045430272
   i32.lt_u
   tee_local $3
   if (result i32)
    get_local $2
    i32.const 1048576
    i32.ge_u
   else    
    get_local $3
   end
   if
    get_local $0
    return
   end
   get_local $0
   get_local $0
   get_local $0
   get_local $0
   f64.mul
   call $~lib/math/R
   f64.mul
   f64.add
   return
  end
  f64.const 0.5
  get_local $0
  f64.abs
  f64.const 0.5
  f64.mul
  f64.sub
  set_local $4
  get_local $4
  f64.sqrt
  set_local $5
  get_local $4
  call $~lib/math/R
  set_local $6
  get_local $2
  i32.const 1072640819
  i32.ge_u
  if
   f64.const 1.5707963267948966
   f64.const 2
   get_local $5
   get_local $5
   get_local $6
   f64.mul
   f64.add
   f64.mul
   f64.const 6.123233995736766e-17
   f64.sub
   f64.sub
   set_local $0
  else   
   get_local $5
   i64.reinterpret/f64
   i64.const -4294967296
   i64.and
   f64.reinterpret/i64
   set_local $7
   get_local $4
   get_local $7
   get_local $7
   f64.mul
   f64.sub
   get_local $5
   get_local $7
   f64.add
   f64.div
   set_local $8
   f64.const 0.5
   f64.const 1.5707963267948966
   f64.mul
   f64.const 2
   get_local $5
   f64.mul
   get_local $6
   f64.mul
   f64.const 6.123233995736766e-17
   f64.const 2
   get_local $8
   f64.mul
   f64.sub
   f64.sub
   f64.const 0.5
   f64.const 1.5707963267948966
   f64.mul
   f64.const 2
   get_local $7
   f64.mul
   f64.sub
   f64.sub
   f64.sub
   set_local $0
  end
  get_local $1
  i32.const 31
  i32.shr_u
  if
   get_local $0
   f64.neg
   return
  end
  get_local $0
 )
 (func $std/libm/asin (; 9 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  call $~lib/math/NativeMath.asin
 )
 (func $~lib/math/NativeMath.asinh (; 10 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i64)
  (local $3 f64)
  get_local $0
  i64.reinterpret/f64
  set_local $1
  get_local $1
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  set_local $2
  get_local $1
  i64.const 9223372036854775807
  i64.and
  f64.reinterpret/i64
  set_local $3
  get_local $2
  i64.const 1023
  i64.const 26
  i64.add
  i64.ge_u
  if
   get_local $3
   call $~lib/math/NativeMath.log
   f64.const 0.6931471805599453
   f64.add
   set_local $3
  else   
   get_local $2
   i64.const 1023
   i64.const 1
   i64.add
   i64.ge_u
   if
    f64.const 2
    get_local $3
    f64.mul
    f64.const 1
    get_local $3
    get_local $3
    f64.mul
    f64.const 1
    f64.add
    f64.sqrt
    get_local $3
    f64.add
    f64.div
    f64.add
    call $~lib/math/NativeMath.log
    set_local $3
   else    
    get_local $2
    i64.const 1023
    i64.const 26
    i64.sub
    i64.ge_u
    if
     get_local $3
     get_local $3
     get_local $3
     f64.mul
     get_local $3
     get_local $3
     f64.mul
     f64.const 1
     f64.add
     f64.sqrt
     f64.const 1
     f64.add
     f64.div
     f64.add
     call $~lib/math/NativeMath.log1p
     set_local $3
    end
   end
  end
  get_local $3
  get_local $0
  f64.copysign
 )
 (func $std/libm/asinh (; 11 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  call $~lib/math/NativeMath.asinh
 )
 (func $~lib/builtins/isNaN<f64> (; 12 ;) (type $Fi) (param $0 f64) (result i32)
  get_local $0
  get_local $0
  f64.ne
 )
 (func $~lib/math/NativeMath.atan (; 13 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 i32)
  get_local $0
  i64.reinterpret/f64
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_local $1
  get_local $0
  set_local $2
  get_local $1
  i32.const 2147483647
  i32.and
  set_local $1
  get_local $1
  i32.const 1141899264
  i32.ge_u
  if
   get_local $0
   call $~lib/builtins/isNaN<f64>
   if
    get_local $0
    return
   end
   f64.const 1.5707963267948966
   f32.const 7.52316384526264e-37
   f64.promote/f32
   f64.add
   set_local $3
   get_local $3
   get_local $2
   f64.copysign
   return
  end
  get_local $1
  i32.const 1071382528
  i32.lt_u
  if
   get_local $1
   i32.const 1044381696
   i32.lt_u
   if
    get_local $0
    return
   end
   i32.const -1
   set_local $4
  else   
   get_local $0
   f64.abs
   set_local $0
   get_local $1
   i32.const 1072889856
   i32.lt_u
   if
    get_local $1
    i32.const 1072037888
    i32.lt_u
    if
     i32.const 0
     set_local $4
     f64.const 2
     get_local $0
     f64.mul
     f64.const 1
     f64.sub
     f64.const 2
     get_local $0
     f64.add
     f64.div
     set_local $0
    else     
     i32.const 1
     set_local $4
     get_local $0
     f64.const 1
     f64.sub
     get_local $0
     f64.const 1
     f64.add
     f64.div
     set_local $0
    end
   else    
    get_local $1
    i32.const 1073971200
    i32.lt_u
    if
     i32.const 2
     set_local $4
     get_local $0
     f64.const 1.5
     f64.sub
     f64.const 1
     f64.const 1.5
     get_local $0
     f64.mul
     f64.add
     f64.div
     set_local $0
    else     
     i32.const 3
     set_local $4
     f64.const -1
     get_local $0
     f64.div
     set_local $0
    end
   end
  end
  get_local $0
  get_local $0
  f64.mul
  set_local $3
  get_local $3
  get_local $3
  f64.mul
  set_local $5
  get_local $3
  f64.const 0.3333333333333293
  get_local $5
  f64.const 0.14285714272503466
  get_local $5
  f64.const 0.09090887133436507
  get_local $5
  f64.const 0.06661073137387531
  get_local $5
  f64.const 0.049768779946159324
  get_local $5
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
  set_local $6
  get_local $5
  f64.const -0.19999999999876483
  get_local $5
  f64.const -0.11111110405462356
  get_local $5
  f64.const -0.0769187620504483
  get_local $5
  f64.const -0.058335701337905735
  get_local $5
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
  set_local $7
  get_local $0
  get_local $6
  get_local $7
  f64.add
  f64.mul
  set_local $8
  get_local $4
  i32.const 0
  i32.lt_s
  if
   get_local $0
   get_local $8
   f64.sub
   return
  end
  block $break|0
   block $case4|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        get_local $4
        set_local $9
        get_local $9
        i32.const 0
        i32.eq
        br_if $case0|0
        get_local $9
        i32.const 1
        i32.eq
        br_if $case1|0
        get_local $9
        i32.const 2
        i32.eq
        br_if $case2|0
        get_local $9
        i32.const 3
        i32.eq
        br_if $case3|0
        br $case4|0
       end
       block
        f64.const 0.4636476090008061
        get_local $8
        f64.const 2.2698777452961687e-17
        f64.sub
        get_local $0
        f64.sub
        f64.sub
        set_local $3
        br $break|0
        unreachable
       end
       unreachable
      end
      block
       f64.const 0.7853981633974483
       get_local $8
       f64.const 3.061616997868383e-17
       f64.sub
       get_local $0
       f64.sub
       f64.sub
       set_local $3
       br $break|0
       unreachable
      end
      unreachable
     end
     block
      f64.const 0.982793723247329
      get_local $8
      f64.const 1.3903311031230998e-17
      f64.sub
      get_local $0
      f64.sub
      f64.sub
      set_local $3
      br $break|0
      unreachable
     end
     unreachable
    end
    block
     f64.const 1.5707963267948966
     get_local $8
     f64.const 6.123233995736766e-17
     f64.sub
     get_local $0
     f64.sub
     f64.sub
     set_local $3
     br $break|0
     unreachable
    end
    unreachable
   end
   unreachable
  end
  get_local $3
  get_local $2
  f64.copysign
 )
 (func $std/libm/atan (; 14 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  call $~lib/math/NativeMath.atan
 )
 (func $~lib/math/NativeMath.atanh (; 15 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 f64)
  get_local $0
  i64.reinterpret/f64
  set_local $1
  get_local $1
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  set_local $2
  get_local $1
  i64.const 63
  i64.shr_u
  set_local $3
  get_local $1
  i64.const 9223372036854775807
  i64.and
  set_local $1
  get_local $1
  f64.reinterpret/i64
  set_local $4
  get_local $2
  i64.const 1023
  i64.const 1
  i64.sub
  i64.lt_u
  if
   get_local $2
   i64.const 1023
   i64.const 32
   i64.sub
   i64.ge_u
   if
    f64.const 0.5
    f64.const 2
    get_local $4
    f64.mul
    f64.const 2
    get_local $4
    f64.mul
    get_local $4
    f64.mul
    f64.const 1
    get_local $4
    f64.sub
    f64.div
    f64.add
    call $~lib/math/NativeMath.log1p
    f64.mul
    set_local $4
   end
  else   
   f64.const 0.5
   f64.const 2
   get_local $4
   f64.const 1
   get_local $4
   f64.sub
   f64.div
   f64.mul
   call $~lib/math/NativeMath.log1p
   f64.mul
   set_local $4
  end
  get_local $4
  get_local $0
  f64.copysign
 )
 (func $std/libm/atanh (; 16 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  call $~lib/math/NativeMath.atanh
 )
 (func $~lib/math/NativeMath.atan2 (; 17 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  get_local $1
  call $~lib/builtins/isNaN<f64>
  tee_local $2
  if (result i32)
   get_local $2
  else   
   get_local $0
   call $~lib/builtins/isNaN<f64>
  end
  if
   get_local $1
   get_local $0
   f64.add
   return
  end
  get_local $1
  i64.reinterpret/f64
  set_local $3
  get_local $3
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_local $4
  get_local $3
  i32.wrap/i64
  set_local $5
  get_local $0
  i64.reinterpret/f64
  set_local $3
  get_local $3
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_local $6
  get_local $3
  i32.wrap/i64
  set_local $7
  get_local $4
  i32.const 1072693248
  i32.sub
  get_local $5
  i32.or
  i32.const 0
  i32.eq
  if
   get_local $0
   call $~lib/math/NativeMath.atan
   return
  end
  get_local $6
  i32.const 31
  i32.shr_u
  i32.const 1
  i32.and
  get_local $4
  i32.const 30
  i32.shr_u
  i32.const 2
  i32.and
  i32.or
  set_local $8
  get_local $4
  i32.const 2147483647
  i32.and
  set_local $4
  get_local $6
  i32.const 2147483647
  i32.and
  set_local $6
  get_local $6
  get_local $7
  i32.or
  i32.const 0
  i32.eq
  if
   block $break|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        get_local $8
        set_local $2
        get_local $2
        i32.const 0
        i32.eq
        br_if $case0|0
        get_local $2
        i32.const 1
        i32.eq
        br_if $case1|0
        get_local $2
        i32.const 2
        i32.eq
        br_if $case2|0
        get_local $2
        i32.const 3
        i32.eq
        br_if $case3|0
        br $break|0
       end
      end
      get_local $0
      return
     end
     get_global $~lib/math/NativeMath.PI
     return
    end
    get_global $~lib/math/NativeMath.PI
    f64.neg
    return
   end
  end
  get_local $4
  get_local $5
  i32.or
  i32.const 0
  i32.eq
  if
   get_local $8
   i32.const 1
   i32.and
   if (result f64)
    get_global $~lib/math/NativeMath.PI
    f64.neg
    f64.const 2
    f64.div
   else    
    get_global $~lib/math/NativeMath.PI
    f64.const 2
    f64.div
   end
   return
  end
  get_local $4
  i32.const 2146435072
  i32.eq
  if
   get_local $6
   i32.const 2146435072
   i32.eq
   if
    block $break|1
     block $case3|1
      block $case2|1
       block $case1|1
        block $case0|1
         get_local $8
         set_local $2
         get_local $2
         i32.const 0
         i32.eq
         br_if $case0|1
         get_local $2
         i32.const 1
         i32.eq
         br_if $case1|1
         get_local $2
         i32.const 2
         i32.eq
         br_if $case2|1
         get_local $2
         i32.const 3
         i32.eq
         br_if $case3|1
         br $break|1
        end
        get_global $~lib/math/NativeMath.PI
        f64.const 4
        f64.div
        return
       end
       get_global $~lib/math/NativeMath.PI
       f64.neg
       f64.const 4
       f64.div
       return
      end
      f64.const 3
      get_global $~lib/math/NativeMath.PI
      f64.mul
      f64.const 4
      f64.div
      return
     end
     f64.const -3
     get_global $~lib/math/NativeMath.PI
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
         get_local $8
         set_local $2
         get_local $2
         i32.const 0
         i32.eq
         br_if $case0|2
         get_local $2
         i32.const 1
         i32.eq
         br_if $case1|2
         get_local $2
         i32.const 2
         i32.eq
         br_if $case2|2
         get_local $2
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
      get_global $~lib/math/NativeMath.PI
      return
     end
     get_global $~lib/math/NativeMath.PI
     f64.neg
     return
    end
   end
  end
  get_local $4
  i32.const 64
  i32.const 20
  i32.shl
  i32.add
  get_local $6
  i32.lt_u
  tee_local $2
  if (result i32)
   get_local $2
  else   
   get_local $6
   i32.const 2146435072
   i32.eq
  end
  if
   get_local $8
   i32.const 1
   i32.and
   if (result f64)
    get_global $~lib/math/NativeMath.PI
    f64.neg
    f64.const 2
    f64.div
   else    
    get_global $~lib/math/NativeMath.PI
    f64.const 2
    f64.div
   end
   return
  end
  get_local $8
  i32.const 2
  i32.and
  tee_local $2
  if (result i32)
   get_local $6
   i32.const 64
   i32.const 20
   i32.shl
   i32.add
   get_local $4
   i32.lt_u
  else   
   get_local $2
  end
  if
   f64.const 0
   set_local $9
  else   
   get_local $0
   get_local $1
   f64.div
   f64.abs
   call $~lib/math/NativeMath.atan
   set_local $9
  end
  block $break|3
   block $case3|3
    block $case2|3
     block $case1|3
      block $case0|3
       get_local $8
       set_local $2
       get_local $2
       i32.const 0
       i32.eq
       br_if $case0|3
       get_local $2
       i32.const 1
       i32.eq
       br_if $case1|3
       get_local $2
       i32.const 2
       i32.eq
       br_if $case2|3
       get_local $2
       i32.const 3
       i32.eq
       br_if $case3|3
       br $break|3
      end
      get_local $9
      return
     end
     get_local $9
     f64.neg
     return
    end
    get_global $~lib/math/NativeMath.PI
    get_local $9
    f64.const 1.2246467991473532e-16
    f64.sub
    f64.sub
    return
   end
   get_local $9
   f64.const 1.2246467991473532e-16
   f64.sub
   get_global $~lib/math/NativeMath.PI
   f64.sub
   return
  end
  unreachable
  f64.const 0
 )
 (func $std/libm/atan2 (; 18 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  get_local $0
  get_local $1
  call $~lib/math/NativeMath.atan2
 )
 (func $~lib/math/NativeMath.cbrt (; 19 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  get_local $0
  i64.reinterpret/f64
  set_local $1
  get_local $1
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  i32.const 2147483647
  i32.and
  set_local $2
  get_local $2
  i32.const 2146435072
  i32.ge_u
  if
   get_local $0
   get_local $0
   f64.add
   return
  end
  get_local $2
  i32.const 1048576
  i32.lt_u
  if
   get_local $0
   f64.const 18014398509481984
   f64.mul
   i64.reinterpret/f64
   set_local $1
   get_local $1
   i64.const 32
   i64.shr_u
   i32.wrap/i64
   i32.const 2147483647
   i32.and
   set_local $2
   get_local $2
   i32.const 0
   i32.eq
   if
    get_local $0
    return
   end
   get_local $2
   i32.const 3
   i32.div_u
   i32.const 696219795
   i32.add
   set_local $2
  else   
   get_local $2
   i32.const 3
   i32.div_u
   i32.const 715094163
   i32.add
   set_local $2
  end
  get_local $1
  i64.const 1
  i64.const 63
  i64.shl
  i64.and
  set_local $1
  get_local $1
  get_local $2
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  set_local $1
  get_local $1
  f64.reinterpret/i64
  set_local $3
  get_local $3
  get_local $3
  f64.mul
  get_local $3
  get_local $0
  f64.div
  f64.mul
  set_local $4
  get_local $3
  f64.const 1.87595182427177
  get_local $4
  f64.const -1.8849797954337717
  get_local $4
  f64.const 1.6214297201053545
  f64.mul
  f64.add
  f64.mul
  f64.add
  get_local $4
  get_local $4
  f64.mul
  get_local $4
  f64.mul
  f64.const -0.758397934778766
  get_local $4
  f64.const 0.14599619288661245
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  set_local $3
  get_local $3
  i64.reinterpret/f64
  i64.const 2147483648
  i64.add
  i64.const -1073741824
  i64.and
  f64.reinterpret/i64
  set_local $3
  get_local $3
  get_local $3
  f64.mul
  set_local $5
  get_local $0
  get_local $5
  f64.div
  set_local $4
  get_local $3
  get_local $3
  f64.add
  set_local $6
  get_local $4
  get_local $3
  f64.sub
  get_local $6
  get_local $4
  f64.add
  f64.div
  set_local $4
  get_local $3
  get_local $3
  get_local $4
  f64.mul
  f64.add
  set_local $3
  get_local $3
 )
 (func $std/libm/cbrt (; 20 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  call $~lib/math/NativeMath.cbrt
 )
 (func $std/libm/ceil (; 21 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  f64.ceil
 )
 (func $std/libm/clz32 (; 22 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  i32.trunc_s/f64
  i32.clz
  f64.convert_s/i32
 )
 (func $~lib/math/NativeMath.cos (; 23 ;) (type $FF) (param $0 f64) (result f64)
  unreachable
  f64.const 0
 )
 (func $std/libm/cos (; 24 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  call $~lib/math/NativeMath.cos
 )
 (func $~lib/math/NativeMath.expm1 (; 25 ;) (type $FF) (param $0 f64) (result f64)
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
  (local $15 i32)
  get_local $0
  i64.reinterpret/f64
  set_local $1
  get_local $1
  i64.const 32
  i64.shr_u
  i64.const 2147483647
  i64.and
  i32.wrap/i64
  set_local $2
  i32.const 0
  set_local $3
  get_local $1
  i64.const 63
  i64.shr_u
  i32.wrap/i64
  set_local $4
  get_local $2
  i32.const 1078159482
  i32.ge_u
  if
   get_local $0
   call $~lib/builtins/isNaN<f64>
   if
    get_local $0
    return
   end
   get_local $4
   if
    f64.const -1
    return
   end
   get_local $0
   f64.const 709.782712893384
   f64.gt
   if
    get_local $0
    f64.const 8988465674311579538646525e283
    f64.mul
    return
   end
  end
  f64.const 0
  set_local $5
  get_local $2
  i32.const 1071001154
  i32.gt_u
  if
   i32.const 1
   get_local $4
   i32.const 1
   i32.shl
   i32.sub
   f64.const 1.4426950408889634
   get_local $0
   f64.mul
   f64.const 0.5
   get_local $0
   f64.copysign
   f64.add
   i32.trunc_s/f64
   get_local $2
   i32.const 1072734898
   i32.lt_u
   select
   set_local $3
   get_local $3
   f64.convert_s/i32
   set_local $6
   get_local $0
   get_local $6
   f64.const 0.6931471803691238
   f64.mul
   f64.sub
   set_local $7
   get_local $6
   f64.const 1.9082149292705877e-10
   f64.mul
   set_local $8
   get_local $7
   get_local $8
   f64.sub
   set_local $0
   get_local $7
   get_local $0
   f64.sub
   get_local $8
   f64.sub
   set_local $5
  else   
   get_local $2
   i32.const 1016070144
   i32.lt_u
   if
    get_local $0
    return
   end
  end
  f64.const 0.5
  get_local $0
  f64.mul
  set_local $9
  get_local $0
  get_local $9
  f64.mul
  set_local $10
  f64.const 1
  get_local $10
  f64.const -0.03333333333333313
  get_local $10
  f64.const 1.5873015872548146e-03
  get_local $10
  f64.const -7.93650757867488e-05
  get_local $10
  f64.const 4.008217827329362e-06
  get_local $10
  f64.const -2.0109921818362437e-07
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
  set_local $11
  f64.const 3
  get_local $11
  get_local $9
  f64.mul
  f64.sub
  set_local $6
  get_local $10
  get_local $11
  get_local $6
  f64.sub
  f64.const 6
  get_local $0
  get_local $6
  f64.mul
  f64.sub
  f64.div
  f64.mul
  set_local $12
  get_local $3
  i32.const 0
  i32.eq
  if
   get_local $0
   get_local $0
   get_local $12
   f64.mul
   get_local $10
   f64.sub
   f64.sub
   return
  end
  get_local $0
  get_local $12
  get_local $5
  f64.sub
  f64.mul
  get_local $5
  f64.sub
  set_local $12
  get_local $12
  get_local $10
  f64.sub
  set_local $12
  get_local $3
  i32.const -1
  i32.eq
  if
   f64.const 0.5
   get_local $0
   get_local $12
   f64.sub
   f64.mul
   f64.const 0.5
   f64.sub
   return
  end
  get_local $3
  i32.const 1
  i32.eq
  if
   get_local $0
   f64.const -0.25
   f64.lt
   if
    f64.const -2
    get_local $12
    get_local $0
    f64.const 0.5
    f64.add
    f64.sub
    f64.mul
    return
   end
   f64.const 1
   f64.const 2
   get_local $0
   get_local $12
   f64.sub
   f64.mul
   f64.add
   return
  end
  i64.const 1023
  get_local $3
  i64.extend_s/i32
  i64.add
  i64.const 52
  i64.shl
  set_local $1
  get_local $1
  f64.reinterpret/i64
  set_local $13
  get_local $3
  i32.const 0
  i32.lt_s
  tee_local $15
  if (result i32)
   get_local $15
  else   
   get_local $3
   i32.const 56
   i32.gt_s
  end
  if
   get_local $0
   get_local $12
   f64.sub
   f64.const 1
   f64.add
   set_local $14
   get_local $3
   i32.const 1024
   i32.eq
   if
    get_local $14
    f64.const 2
    f64.mul
    f64.const 8988465674311579538646525e283
    f64.mul
    set_local $14
   else    
    get_local $14
    get_local $13
    f64.mul
    set_local $14
   end
   get_local $14
   f64.const 1
   f64.sub
   return
  end
  i64.const 1023
  get_local $3
  i64.extend_s/i32
  i64.sub
  i64.const 52
  i64.shl
  set_local $1
  get_local $1
  f64.reinterpret/i64
  set_local $14
  get_local $3
  i32.const 20
  i32.lt_s
  if
   f64.const 1
   get_local $14
   f64.sub
   get_local $12
   f64.sub
   set_local $14
  else   
   f64.const 1
   get_local $12
   get_local $14
   f64.add
   f64.sub
   set_local $14
  end
  get_local $0
  get_local $14
  f64.add
  get_local $13
  f64.mul
 )
 (func $~lib/math/NativeMath.scalbn (; 26 ;) (type $FiF) (param $0 f64) (param $1 i32) (result f64)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  set_local $2
  get_local $1
  i32.const 1023
  i32.gt_s
  if
   get_local $2
   f64.const 8988465674311579538646525e283
   f64.mul
   set_local $2
   get_local $1
   i32.const 1023
   i32.sub
   set_local $1
   get_local $1
   i32.const 1023
   i32.gt_s
   if
    get_local $2
    f64.const 8988465674311579538646525e283
    f64.mul
    set_local $2
    get_local $1
    i32.const 1023
    i32.sub
    tee_local $3
    i32.const 1023
    tee_local $4
    get_local $3
    get_local $4
    i32.lt_s
    select
    set_local $1
   end
  else   
   get_local $1
   i32.const -1022
   i32.lt_s
   if
    get_local $2
    f64.const 2.2250738585072014e-308
    f64.const 9007199254740992
    f64.mul
    f64.mul
    set_local $2
    get_local $1
    i32.const 1022
    i32.const 53
    i32.sub
    i32.add
    set_local $1
    get_local $1
    i32.const -1022
    i32.lt_s
    if
     get_local $2
     f64.const 2.2250738585072014e-308
     f64.const 9007199254740992
     f64.mul
     f64.mul
     set_local $2
     get_local $1
     i32.const 1022
     i32.add
     i32.const 53
     i32.sub
     tee_local $3
     i32.const -1022
     tee_local $4
     get_local $3
     get_local $4
     i32.gt_s
     select
     set_local $1
    end
   end
  end
  get_local $2
  i64.const 1023
  get_local $1
  i64.extend_s/i32
  i64.add
  i64.const 52
  i64.shl
  f64.reinterpret/i64
  f64.mul
 )
 (func $~lib/math/NativeMath.exp (; 27 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  get_local $0
  i64.reinterpret/f64
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_local $1
  get_local $1
  i32.const 31
  i32.shr_u
  set_local $2
  get_local $1
  i32.const 2147483647
  i32.and
  set_local $1
  get_local $1
  i32.const 1082532651
  i32.ge_u
  if
   get_local $0
   call $~lib/builtins/isNaN<f64>
   if
    get_local $0
    return
   end
   get_local $0
   f64.const 709.782712893384
   f64.gt
   if
    get_local $0
    f64.const 8988465674311579538646525e283
    f64.mul
    set_local $0
    get_local $0
    return
   end
   get_local $0
   f64.const -745.1332191019411
   f64.lt
   if
    f64.const 0
    return
   end
  end
  f64.const 0
  set_local $4
  i32.const 0
  set_local $5
  get_local $1
  i32.const 1071001154
  i32.gt_u
  if
   get_local $1
   i32.const 1072734898
   i32.ge_u
   if
    f64.const 1.4426950408889634
    get_local $0
    f64.mul
    f64.const 0.5
    get_local $0
    f64.copysign
    f64.add
    i32.trunc_s/f64
    set_local $5
   else    
    i32.const 1
    get_local $2
    i32.const 1
    i32.shl
    i32.sub
    set_local $5
   end
   get_local $0
   get_local $5
   f64.convert_s/i32
   f64.const 0.6931471803691238
   f64.mul
   f64.sub
   set_local $3
   get_local $5
   f64.convert_s/i32
   f64.const 1.9082149292705877e-10
   f64.mul
   set_local $4
   get_local $3
   get_local $4
   f64.sub
   set_local $0
  else   
   get_local $1
   i32.const 1043333120
   i32.gt_u
   if
    get_local $0
    set_local $3
   else    
    f64.const 1
    get_local $0
    f64.add
    return
   end
  end
  get_local $0
  get_local $0
  f64.mul
  set_local $6
  get_local $0
  get_local $6
  f64.const 0.16666666666666602
  get_local $6
  f64.const -2.7777777777015593e-03
  get_local $6
  f64.const 6.613756321437934e-05
  get_local $6
  f64.const -1.6533902205465252e-06
  get_local $6
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
  set_local $7
  f64.const 1
  get_local $0
  get_local $7
  f64.mul
  f64.const 2
  get_local $7
  f64.sub
  f64.div
  get_local $4
  f64.sub
  get_local $3
  f64.add
  f64.add
  set_local $8
  get_local $5
  i32.const 0
  i32.eq
  if
   get_local $8
   return
  end
  get_local $8
  get_local $5
  call $~lib/math/NativeMath.scalbn
 )
 (func $~lib/math/NativeMath.cosh (; 28 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  get_local $0
  i64.reinterpret/f64
  set_local $1
  get_local $1
  i64.const 9223372036854775807
  i64.and
  set_local $1
  get_local $1
  f64.reinterpret/i64
  set_local $0
  get_local $1
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_local $2
  get_local $2
  i32.const 1072049730
  i32.lt_u
  if
   get_local $2
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
   get_local $0
   call $~lib/math/NativeMath.expm1
   set_local $3
   f64.const 1
   get_local $3
   get_local $3
   f64.mul
   f64.const 2
   f64.const 2
   get_local $3
   f64.mul
   f64.add
   f64.div
   f64.add
   return
  end
  get_local $2
  i32.const 1082535490
  i32.lt_u
  if
   get_local $0
   call $~lib/math/NativeMath.exp
   set_local $3
   f64.const 0.5
   get_local $3
   f64.const 1
   get_local $3
   f64.div
   f64.add
   f64.mul
   return
  end
  block $~lib/math/expo2|inlined.0 (result f64)
   i32.const 1023
   i32.const 2043
   i32.const 2
   i32.div_u
   i32.add
   i32.const 20
   i32.shl
   i64.extend_u/i32
   i64.const 32
   i64.shl
   f64.reinterpret/i64
   set_local $4
   get_local $0
   f64.const 1416.0996898839683
   f64.sub
   call $~lib/math/NativeMath.exp
   get_local $4
   f64.mul
   get_local $4
   f64.mul
  end
  set_local $3
  get_local $3
 )
 (func $std/libm/cosh (; 29 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  call $~lib/math/NativeMath.cosh
 )
 (func $std/libm/exp (; 30 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  call $~lib/math/NativeMath.exp
 )
 (func $std/libm/expm1 (; 31 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  call $~lib/math/NativeMath.expm1
 )
 (func $std/libm/floor (; 32 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  f64.floor
 )
 (func $std/libm/fround (; 33 ;) (type $Ff) (param $0 f64) (result f32)
  get_local $0
  f32.demote/f64
 )
 (func $~lib/math/NativeMath.hypot (; 34 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
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
  get_local $0
  i64.reinterpret/f64
  set_local $2
  get_local $1
  i64.reinterpret/f64
  set_local $3
  get_local $2
  i64.const 9223372036854775807
  i64.and
  set_local $2
  get_local $3
  i64.const 9223372036854775807
  i64.and
  set_local $3
  get_local $2
  get_local $3
  i64.lt_u
  if
   get_local $2
   set_local $4
   get_local $3
   set_local $2
   get_local $4
   set_local $3
  end
  get_local $2
  i64.const 52
  i64.shr_u
  i32.wrap/i64
  set_local $5
  get_local $3
  i64.const 52
  i64.shr_u
  i32.wrap/i64
  set_local $6
  get_local $3
  f64.reinterpret/i64
  set_local $1
  get_local $6
  i32.const 2047
  i32.eq
  if
   get_local $1
   return
  end
  get_local $2
  f64.reinterpret/i64
  set_local $0
  get_local $5
  i32.const 2047
  i32.eq
  tee_local $7
  if (result i32)
   get_local $7
  else   
   get_local $3
   i64.const 0
   i64.eq
  end
  if
   get_local $0
   return
  end
  get_local $5
  get_local $6
  i32.sub
  i32.const 64
  i32.gt_s
  if
   get_local $0
   get_local $1
   f64.add
   return
  end
  f64.const 1
  set_local $8
  get_local $5
  i32.const 1023
  i32.const 510
  i32.add
  i32.gt_s
  if
   f64.const 5260135901548373507240989e186
   set_local $8
   get_local $0
   f64.const 1.90109156629516e-211
   f64.mul
   set_local $0
   get_local $1
   f64.const 1.90109156629516e-211
   f64.mul
   set_local $1
  else   
   get_local $6
   i32.const 1023
   i32.const 450
   i32.sub
   i32.lt_s
   if
    f64.const 1.90109156629516e-211
    set_local $8
    get_local $0
    f64.const 5260135901548373507240989e186
    f64.mul
    set_local $0
    get_local $1
    f64.const 5260135901548373507240989e186
    f64.mul
    set_local $1
   end
  end
  get_local $0
  f64.const 134217729
  f64.mul
  set_local $9
  get_local $0
  get_local $9
  f64.sub
  get_local $9
  f64.add
  set_local $10
  get_local $0
  get_local $10
  f64.sub
  set_local $11
  get_local $0
  get_local $0
  f64.mul
  set_local $12
  get_local $10
  get_local $10
  f64.mul
  get_local $12
  f64.sub
  f64.const 2
  get_local $10
  f64.mul
  get_local $11
  f64.add
  get_local $11
  f64.mul
  f64.add
  set_local $13
  get_local $1
  f64.const 134217729
  f64.mul
  set_local $9
  get_local $1
  get_local $9
  f64.sub
  get_local $9
  f64.add
  set_local $10
  get_local $1
  get_local $10
  f64.sub
  set_local $11
  get_local $1
  get_local $1
  f64.mul
  set_local $14
  get_local $10
  get_local $10
  f64.mul
  get_local $14
  f64.sub
  f64.const 2
  get_local $10
  f64.mul
  get_local $11
  f64.add
  get_local $11
  f64.mul
  f64.add
  set_local $15
  get_local $8
  get_local $15
  get_local $13
  f64.add
  get_local $14
  f64.add
  get_local $12
  f64.add
  f64.sqrt
  f64.mul
 )
 (func $std/libm/hypot (; 35 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  get_local $0
  get_local $1
  call $~lib/math/NativeMath.hypot
 )
 (func $~lib/math/NativeMath.imul (; 36 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  get_local $0
  i32.trunc_s/f64
  get_local $1
  i32.trunc_s/f64
  i32.mul
  f64.convert_s/i32
 )
 (func $std/libm/imul (; 37 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  get_local $0
  get_local $1
  call $~lib/math/NativeMath.imul
 )
 (func $std/libm/log (; 38 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  call $~lib/math/NativeMath.log
 )
 (func $~lib/math/NativeMath.log10 (; 39 ;) (type $FF) (param $0 f64) (result f64)
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
  get_local $0
  i64.reinterpret/f64
  set_local $1
  get_local $1
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_local $2
  i32.const 0
  set_local $3
  get_local $2
  i32.const 1048576
  i32.lt_u
  tee_local $4
  if (result i32)
   get_local $4
  else   
   get_local $2
   i32.const 31
   i32.shr_u
  end
  if
   get_local $1
   i64.const 1
   i64.shl
   i64.const 0
   i64.eq
   if
    f64.const -1
    get_local $0
    get_local $0
    f64.mul
    f64.div
    return
   end
   get_local $2
   i32.const 31
   i32.shr_u
   if
    get_local $0
    get_local $0
    f64.sub
    f64.const 0
    f64.div
    return
   end
   get_local $3
   i32.const 54
   i32.sub
   set_local $3
   get_local $0
   f64.const 18014398509481984
   f64.mul
   set_local $0
   get_local $0
   i64.reinterpret/f64
   set_local $1
   get_local $1
   i64.const 32
   i64.shr_u
   i32.wrap/i64
   set_local $2
  else   
   get_local $2
   i32.const 2146435072
   i32.ge_u
   if
    get_local $0
    return
   else    
    get_local $2
    i32.const 1072693248
    i32.eq
    tee_local $4
    if (result i32)
     get_local $1
     i64.const 32
     i64.shl
     i64.const 0
     i64.eq
    else     
     get_local $4
    end
    if
     f64.const 0
     return
    end
   end
  end
  get_local $2
  i32.const 1072693248
  i32.const 1072079006
  i32.sub
  i32.add
  set_local $2
  get_local $3
  get_local $2
  i32.const 20
  i32.shr_u
  i32.const 1023
  i32.sub
  i32.add
  set_local $3
  get_local $2
  i32.const 1048575
  i32.and
  i32.const 1072079006
  i32.add
  set_local $2
  get_local $2
  i64.extend_u/i32
  i64.const 32
  i64.shl
  get_local $1
  i64.const 4294967295
  i64.and
  i64.or
  set_local $1
  get_local $1
  f64.reinterpret/i64
  set_local $0
  get_local $0
  f64.const 1
  f64.sub
  set_local $5
  f64.const 0.5
  get_local $5
  f64.mul
  get_local $5
  f64.mul
  set_local $6
  get_local $5
  f64.const 2
  get_local $5
  f64.add
  f64.div
  set_local $7
  get_local $7
  get_local $7
  f64.mul
  set_local $8
  get_local $8
  get_local $8
  f64.mul
  set_local $9
  get_local $9
  f64.const 0.3999999999940942
  get_local $9
  f64.const 0.22222198432149784
  get_local $9
  f64.const 0.15313837699209373
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  set_local $10
  get_local $8
  f64.const 0.6666666666666735
  get_local $9
  f64.const 0.2857142874366239
  get_local $9
  f64.const 0.1818357216161805
  get_local $9
  f64.const 0.14798198605116586
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  set_local $11
  get_local $11
  get_local $10
  f64.add
  set_local $12
  get_local $5
  get_local $6
  f64.sub
  set_local $13
  get_local $13
  i64.reinterpret/f64
  set_local $1
  get_local $1
  i64.const -4294967296
  i64.and
  set_local $1
  get_local $1
  f64.reinterpret/i64
  set_local $13
  get_local $5
  get_local $13
  f64.sub
  get_local $6
  f64.sub
  get_local $7
  get_local $6
  get_local $12
  f64.add
  f64.mul
  f64.add
  set_local $14
  get_local $13
  f64.const 0.4342944818781689
  f64.mul
  set_local $15
  get_local $3
  f64.convert_s/i32
  set_local $16
  get_local $16
  f64.const 0.30102999566361177
  f64.mul
  set_local $17
  get_local $16
  f64.const 3.694239077158931e-13
  f64.mul
  get_local $14
  get_local $13
  f64.add
  f64.const 2.5082946711645275e-11
  f64.mul
  f64.add
  get_local $14
  f64.const 0.4342944818781689
  f64.mul
  f64.add
  set_local $18
  get_local $17
  get_local $15
  f64.add
  set_local $9
  get_local $18
  get_local $17
  get_local $9
  f64.sub
  get_local $15
  f64.add
  f64.add
  set_local $18
  get_local $18
  get_local $9
  f64.add
 )
 (func $std/libm/log10 (; 40 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  call $~lib/math/NativeMath.log10
 )
 (func $std/libm/log1p (; 41 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  call $~lib/math/NativeMath.log1p
 )
 (func $~lib/math/NativeMath.log2 (; 42 ;) (type $FF) (param $0 f64) (result f64)
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
  get_local $0
  i64.reinterpret/f64
  set_local $1
  get_local $1
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_local $2
  i32.const 0
  set_local $3
  get_local $2
  i32.const 1048576
  i32.lt_u
  tee_local $4
  if (result i32)
   get_local $4
  else   
   get_local $2
   i32.const 31
   i32.shr_u
  end
  if
   get_local $1
   i64.const 1
   i64.shl
   i64.const 0
   i64.eq
   if
    f64.const -1
    get_local $0
    get_local $0
    f64.mul
    f64.div
    return
   end
   get_local $2
   i32.const 31
   i32.shr_u
   if
    get_local $0
    get_local $0
    f64.sub
    f64.const 0
    f64.div
    return
   end
   get_local $3
   i32.const 54
   i32.sub
   set_local $3
   get_local $0
   f64.const 18014398509481984
   f64.mul
   set_local $0
   get_local $0
   i64.reinterpret/f64
   set_local $1
   get_local $1
   i64.const 32
   i64.shr_u
   i32.wrap/i64
   set_local $2
  else   
   get_local $2
   i32.const 2146435072
   i32.ge_u
   if
    get_local $0
    return
   else    
    get_local $2
    i32.const 1072693248
    i32.eq
    tee_local $4
    if (result i32)
     get_local $1
     i64.const 32
     i64.shl
     i64.const 0
     i64.eq
    else     
     get_local $4
    end
    if
     f64.const 0
     return
    end
   end
  end
  get_local $2
  i32.const 1072693248
  i32.const 1072079006
  i32.sub
  i32.add
  set_local $2
  get_local $3
  get_local $2
  i32.const 20
  i32.shr_u
  i32.const 1023
  i32.sub
  i32.add
  set_local $3
  get_local $2
  i32.const 1048575
  i32.and
  i32.const 1072079006
  i32.add
  set_local $2
  get_local $2
  i64.extend_u/i32
  i64.const 32
  i64.shl
  get_local $1
  i64.const 4294967295
  i64.and
  i64.or
  set_local $1
  get_local $1
  f64.reinterpret/i64
  set_local $0
  get_local $0
  f64.const 1
  f64.sub
  set_local $5
  f64.const 0.5
  get_local $5
  f64.mul
  get_local $5
  f64.mul
  set_local $6
  get_local $5
  f64.const 2
  get_local $5
  f64.add
  f64.div
  set_local $7
  get_local $7
  get_local $7
  f64.mul
  set_local $8
  get_local $8
  get_local $8
  f64.mul
  set_local $9
  get_local $9
  f64.const 0.3999999999940942
  get_local $9
  f64.const 0.22222198432149784
  get_local $9
  f64.const 0.15313837699209373
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  set_local $10
  get_local $8
  f64.const 0.6666666666666735
  get_local $9
  f64.const 0.2857142874366239
  get_local $9
  f64.const 0.1818357216161805
  get_local $9
  f64.const 0.14798198605116586
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  set_local $11
  get_local $11
  get_local $10
  f64.add
  set_local $12
  get_local $5
  get_local $6
  f64.sub
  set_local $13
  get_local $13
  i64.reinterpret/f64
  set_local $1
  get_local $1
  i64.const -4294967296
  i64.and
  set_local $1
  get_local $1
  f64.reinterpret/i64
  set_local $13
  get_local $5
  get_local $13
  f64.sub
  get_local $6
  f64.sub
  get_local $7
  get_local $6
  get_local $12
  f64.add
  f64.mul
  f64.add
  set_local $14
  get_local $13
  f64.const 1.4426950407214463
  f64.mul
  set_local $15
  get_local $14
  get_local $13
  f64.add
  f64.const 1.6751713164886512e-10
  f64.mul
  get_local $14
  f64.const 1.4426950407214463
  f64.mul
  f64.add
  set_local $16
  get_local $3
  f64.convert_s/i32
  set_local $17
  get_local $17
  get_local $15
  f64.add
  set_local $9
  get_local $16
  get_local $17
  get_local $9
  f64.sub
  get_local $15
  f64.add
  f64.add
  set_local $16
  get_local $9
  set_local $15
  get_local $16
  get_local $15
  f64.add
 )
 (func $std/libm/log2 (; 43 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  call $~lib/math/NativeMath.log2
 )
 (func $std/libm/max (; 44 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  get_local $0
  get_local $1
  f64.max
 )
 (func $std/libm/min (; 45 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  get_local $0
  get_local $1
  f64.min
 )
 (func $~lib/math/NativeMath.pow (; 46 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
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
  (local $14 f64)
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
  (local $26 i32)
  (local $27 i32)
  (local $28 f64)
  (local $29 f64)
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
  (local $40 i32)
  get_local $0
  i64.reinterpret/f64
  set_local $2
  get_local $2
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_local $3
  get_local $2
  i32.wrap/i64
  set_local $4
  get_local $1
  i64.reinterpret/f64
  set_local $2
  get_local $2
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_local $5
  get_local $2
  i32.wrap/i64
  set_local $6
  get_local $3
  i32.const 2147483647
  i32.and
  set_local $7
  get_local $5
  i32.const 2147483647
  i32.and
  set_local $8
  get_local $8
  get_local $6
  i32.or
  i32.const 0
  i32.eq
  if
   f64.const 1
   return
  end
  get_local $7
  i32.const 2146435072
  i32.gt_s
  tee_local $9
  if (result i32)
   get_local $9
  else   
   get_local $7
   i32.const 2146435072
   i32.eq
   tee_local $9
   if (result i32)
    get_local $4
    i32.const 0
    i32.ne
   else    
    get_local $9
   end
  end
  tee_local $9
  if (result i32)
   get_local $9
  else   
   get_local $8
   i32.const 2146435072
   i32.gt_s
  end
  tee_local $9
  if (result i32)
   get_local $9
  else   
   get_local $8
   i32.const 2146435072
   i32.eq
   tee_local $9
   if (result i32)
    get_local $6
    i32.const 0
    i32.ne
   else    
    get_local $9
   end
  end
  if
   get_local $0
   get_local $1
   f64.add
   return
  end
  i32.const 0
  set_local $10
  get_local $3
  i32.const 0
  i32.lt_s
  if
   get_local $8
   i32.const 1128267776
   i32.ge_s
   if
    i32.const 2
    set_local $10
   else    
    get_local $8
    i32.const 1072693248
    i32.ge_s
    if
     get_local $8
     i32.const 20
     i32.shr_s
     i32.const 1023
     i32.sub
     set_local $11
     i32.const 52
     i32.const 20
     get_local $11
     i32.const 20
     i32.gt_s
     select
     get_local $11
     i32.sub
     set_local $9
     get_local $6
     get_local $8
     get_local $11
     i32.const 20
     i32.gt_s
     select
     set_local $12
     get_local $12
     get_local $9
     i32.shr_s
     set_local $13
     get_local $13
     get_local $9
     i32.shl
     get_local $12
     i32.eq
     if
      i32.const 2
      get_local $13
      i32.const 1
      i32.and
      i32.sub
      set_local $10
     end
    end
   end
  end
  get_local $6
  i32.const 0
  i32.eq
  if
   get_local $8
   i32.const 2146435072
   i32.eq
   if
    get_local $7
    i32.const 1072693248
    i32.sub
    get_local $4
    i32.or
    i32.const 0
    i32.eq
    if
     f64.const nan:0x8000000000000
     return
    else     
     get_local $7
     i32.const 1072693248
     i32.ge_s
     if
      get_local $5
      i32.const 0
      i32.ge_s
      if (result f64)
       get_local $1
      else       
       f64.const 0
      end
      return
     else      
      get_local $5
      i32.const 0
      i32.ge_s
      if (result f64)
       f64.const 0
      else       
       get_local $1
       f64.neg
      end
      return
     end
     unreachable
    end
    unreachable
    unreachable
   end
   get_local $8
   i32.const 1072693248
   i32.eq
   if
    get_local $5
    i32.const 0
    i32.ge_s
    if
     get_local $0
     return
    end
    f64.const 1
    get_local $0
    f64.div
    return
   end
   get_local $5
   i32.const 1073741824
   i32.eq
   if
    get_local $0
    get_local $0
    f64.mul
    return
   end
   get_local $5
   i32.const 1071644672
   i32.eq
   if
    get_local $3
    i32.const 0
    i32.ge_s
    if
     get_local $0
     f64.sqrt
     return
    end
   end
  end
  get_local $0
  f64.abs
  set_local $14
  get_local $4
  i32.const 0
  i32.eq
  if
   get_local $7
   i32.const 2146435072
   i32.eq
   tee_local $13
   if (result i32)
    get_local $13
   else    
    get_local $7
    i32.const 0
    i32.eq
   end
   tee_local $13
   if (result i32)
    get_local $13
   else    
    get_local $7
    i32.const 1072693248
    i32.eq
   end
   if
    get_local $14
    set_local $15
    get_local $5
    i32.const 0
    i32.lt_s
    if
     f64.const 1
     get_local $15
     f64.div
     set_local $15
    end
    get_local $3
    i32.const 0
    i32.lt_s
    if
     get_local $7
     i32.const 1072693248
     i32.sub
     get_local $10
     i32.or
     i32.const 0
     i32.eq
     if
      get_local $15
      get_local $15
      f64.sub
      get_local $15
      get_local $15
      f64.sub
      f64.div
      set_local $15
     else      
      get_local $10
      i32.const 1
      i32.eq
      if
       get_local $15
       f64.neg
       set_local $15
      end
     end
    end
    get_local $15
    return
   end
  end
  f64.const 1
  set_local $16
  get_local $3
  i32.const 0
  i32.lt_s
  if
   get_local $10
   i32.const 0
   i32.eq
   if
    get_local $0
    get_local $0
    f64.sub
    get_local $0
    get_local $0
    f64.sub
    f64.div
    return
   end
   get_local $10
   i32.const 1
   i32.eq
   if
    f64.const -1
    set_local $16
   end
  end
  get_local $8
  i32.const 1105199104
  i32.gt_s
  if
   get_local $8
   i32.const 1139802112
   i32.gt_s
   if
    get_local $7
    i32.const 1072693247
    i32.le_s
    if
     get_local $5
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
    get_local $7
    i32.const 1072693248
    i32.ge_s
    if
     get_local $5
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
   get_local $7
   i32.const 1072693247
   i32.lt_s
   if
    get_local $5
    i32.const 0
    i32.lt_s
    if (result f64)
     get_local $16
     f64.const 1.e+300
     f64.mul
     f64.const 1.e+300
     f64.mul
    else     
     get_local $16
     f64.const 1e-300
     f64.mul
     f64.const 1e-300
     f64.mul
    end
    return
   end
   get_local $7
   i32.const 1072693248
   i32.gt_s
   if
    get_local $5
    i32.const 0
    i32.gt_s
    if (result f64)
     get_local $16
     f64.const 1.e+300
     f64.mul
     f64.const 1.e+300
     f64.mul
    else     
     get_local $16
     f64.const 1e-300
     f64.mul
     f64.const 1e-300
     f64.mul
    end
    return
   end
   get_local $14
   f64.const 1
   f64.sub
   set_local $22
   get_local $22
   get_local $22
   f64.mul
   f64.const 0.5
   get_local $22
   f64.const 0.3333333333333333
   get_local $22
   f64.const 0.25
   f64.mul
   f64.sub
   f64.mul
   f64.sub
   f64.mul
   set_local $25
   f64.const 1.4426950216293335
   get_local $22
   f64.mul
   set_local $23
   get_local $22
   f64.const 1.9259629911266175e-08
   f64.mul
   get_local $25
   f64.const 1.4426950408889634
   f64.mul
   f64.sub
   set_local $24
   get_local $23
   get_local $24
   f64.add
   set_local $17
   get_local $17
   i64.reinterpret/f64
   i64.const -4294967296
   i64.and
   f64.reinterpret/i64
   set_local $17
   get_local $24
   get_local $17
   get_local $23
   f64.sub
   f64.sub
   set_local $18
  else   
   i32.const 0
   set_local $27
   get_local $7
   i32.const 1048576
   i32.lt_s
   if
    get_local $14
    f64.const 9007199254740992
    f64.mul
    set_local $14
    get_local $27
    i32.const 53
    i32.sub
    set_local $27
    get_local $14
    i64.reinterpret/f64
    i64.const 32
    i64.shr_u
    i32.wrap/i64
    set_local $7
   end
   get_local $27
   get_local $7
   i32.const 20
   i32.shr_s
   i32.const 1023
   i32.sub
   i32.add
   set_local $27
   get_local $7
   i32.const 1048575
   i32.and
   set_local $26
   get_local $26
   i32.const 1072693248
   i32.or
   set_local $7
   get_local $26
   i32.const 235662
   i32.le_s
   if
    i32.const 0
    set_local $11
   else    
    get_local $26
    i32.const 767610
    i32.lt_s
    if
     i32.const 1
     set_local $11
    else     
     i32.const 0
     set_local $11
     get_local $27
     i32.const 1
     i32.add
     set_local $27
     get_local $7
     i32.const 1048576
     i32.sub
     set_local $7
    end
   end
   get_local $14
   i64.reinterpret/f64
   i64.const 4294967295
   i64.and
   get_local $7
   i64.extend_s/i32
   i64.const 32
   i64.shl
   i64.or
   f64.reinterpret/i64
   set_local $14
   f64.const 1.5
   f64.const 1
   get_local $11
   select
   set_local $34
   get_local $14
   get_local $34
   f64.sub
   set_local $23
   f64.const 1
   get_local $14
   get_local $34
   f64.add
   f64.div
   set_local $24
   get_local $23
   get_local $24
   f64.mul
   set_local $28
   get_local $28
   set_local $30
   get_local $30
   i64.reinterpret/f64
   i64.const -4294967296
   i64.and
   f64.reinterpret/i64
   set_local $30
   get_local $7
   i32.const 1
   i32.shr_s
   i32.const 536870912
   i32.or
   i32.const 524288
   i32.add
   get_local $11
   i32.const 18
   i32.shl
   i32.add
   i64.extend_s/i32
   i64.const 32
   i64.shl
   f64.reinterpret/i64
   set_local $32
   get_local $14
   get_local $32
   get_local $34
   f64.sub
   f64.sub
   set_local $33
   get_local $24
   get_local $23
   get_local $30
   get_local $32
   f64.mul
   f64.sub
   get_local $30
   get_local $33
   f64.mul
   f64.sub
   f64.mul
   set_local $31
   get_local $28
   get_local $28
   f64.mul
   set_local $29
   get_local $29
   get_local $29
   f64.mul
   f64.const 0.5999999999999946
   get_local $29
   f64.const 0.4285714285785502
   get_local $29
   f64.const 0.33333332981837743
   get_local $29
   f64.const 0.272728123808534
   get_local $29
   f64.const 0.23066074577556175
   get_local $29
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
   set_local $21
   get_local $21
   get_local $31
   get_local $30
   get_local $28
   f64.add
   f64.mul
   f64.add
   set_local $21
   get_local $30
   get_local $30
   f64.mul
   set_local $29
   f64.const 3
   get_local $29
   f64.add
   get_local $21
   f64.add
   set_local $32
   get_local $32
   i64.reinterpret/f64
   i64.const -4294967296
   i64.and
   f64.reinterpret/i64
   set_local $32
   get_local $21
   get_local $32
   f64.const 3
   f64.sub
   get_local $29
   f64.sub
   f64.sub
   set_local $33
   get_local $30
   get_local $32
   f64.mul
   set_local $23
   get_local $31
   get_local $32
   f64.mul
   get_local $33
   get_local $28
   f64.mul
   f64.add
   set_local $24
   get_local $23
   get_local $24
   f64.add
   set_local $19
   get_local $19
   i64.reinterpret/f64
   i64.const -4294967296
   i64.and
   f64.reinterpret/i64
   set_local $19
   get_local $24
   get_local $19
   get_local $23
   f64.sub
   f64.sub
   set_local $20
   f64.const 0.9617967009544373
   get_local $19
   f64.mul
   set_local $35
   f64.const 1.350039202129749e-08
   f64.const 0
   get_local $11
   select
   set_local $36
   f64.const -7.028461650952758e-09
   get_local $19
   f64.mul
   get_local $20
   f64.const 0.9617966939259756
   f64.mul
   f64.add
   get_local $36
   f64.add
   set_local $37
   get_local $27
   f64.convert_s/i32
   set_local $22
   f64.const 0.5849624872207642
   f64.const 0
   get_local $11
   select
   set_local $38
   get_local $35
   get_local $37
   f64.add
   get_local $38
   f64.add
   get_local $22
   f64.add
   set_local $17
   get_local $17
   i64.reinterpret/f64
   i64.const -4294967296
   i64.and
   f64.reinterpret/i64
   set_local $17
   get_local $37
   get_local $17
   get_local $22
   f64.sub
   get_local $38
   f64.sub
   get_local $35
   f64.sub
   f64.sub
   set_local $18
  end
  get_local $1
  set_local $39
  get_local $39
  i64.reinterpret/f64
  i64.const -4294967296
  i64.and
  f64.reinterpret/i64
  set_local $39
  get_local $1
  get_local $39
  f64.sub
  get_local $17
  f64.mul
  get_local $1
  get_local $18
  f64.mul
  f64.add
  set_local $20
  get_local $39
  get_local $17
  f64.mul
  set_local $19
  get_local $20
  get_local $19
  f64.add
  set_local $15
  get_local $15
  i64.reinterpret/f64
  set_local $2
  get_local $2
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_local $26
  get_local $2
  i32.wrap/i64
  set_local $40
  get_local $26
  i32.const 1083179008
  i32.ge_s
  if
   get_local $26
   i32.const 1083179008
   i32.sub
   get_local $40
   i32.or
   i32.const 0
   i32.ne
   if
    get_local $16
    f64.const 1.e+300
    f64.mul
    f64.const 1.e+300
    f64.mul
    return
   end
   get_local $20
   f64.const 8.008566259537294e-17
   f64.add
   get_local $15
   get_local $19
   f64.sub
   f64.gt
   if
    get_local $16
    f64.const 1.e+300
    f64.mul
    f64.const 1.e+300
    f64.mul
    return
   end
  else   
   get_local $26
   i32.const 2147483647
   i32.and
   i32.const 1083231232
   i32.ge_s
   if
    get_local $26
    i32.const -1064252416
    i32.sub
    get_local $40
    i32.or
    i32.const 0
    i32.ne
    if
     get_local $16
     f64.const 1e-300
     f64.mul
     f64.const 1e-300
     f64.mul
     return
    end
    get_local $20
    get_local $15
    get_local $19
    f64.sub
    f64.le
    if
     get_local $16
     f64.const 1e-300
     f64.mul
     f64.const 1e-300
     f64.mul
     return
    end
   end
  end
  get_local $26
  i32.const 2147483647
  i32.and
  set_local $40
  get_local $40
  i32.const 20
  i32.shr_s
  i32.const 1023
  i32.sub
  set_local $11
  i32.const 0
  set_local $27
  get_local $40
  i32.const 1071644672
  i32.gt_s
  if
   get_local $26
   i32.const 1048576
   get_local $11
   i32.const 1
   i32.add
   i32.shr_s
   i32.add
   set_local $27
   get_local $27
   i32.const 2147483647
   i32.and
   i32.const 20
   i32.shr_s
   i32.const 1023
   i32.sub
   set_local $11
   f64.const 0
   set_local $22
   get_local $27
   i32.const 1048575
   get_local $11
   i32.shr_s
   i32.const -1
   i32.xor
   i32.and
   i64.extend_s/i32
   i64.const 32
   i64.shl
   f64.reinterpret/i64
   set_local $22
   get_local $27
   i32.const 1048575
   i32.and
   i32.const 1048576
   i32.or
   i32.const 20
   get_local $11
   i32.sub
   i32.shr_s
   set_local $27
   get_local $26
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    get_local $27
    i32.sub
    set_local $27
   end
   get_local $19
   get_local $22
   f64.sub
   set_local $19
  end
  get_local $20
  get_local $19
  f64.add
  set_local $22
  get_local $22
  i64.reinterpret/f64
  i64.const -4294967296
  i64.and
  f64.reinterpret/i64
  set_local $22
  get_local $22
  f64.const 0.6931471824645996
  f64.mul
  set_local $23
  get_local $20
  get_local $22
  get_local $19
  f64.sub
  f64.sub
  f64.const 0.6931471805599453
  f64.mul
  get_local $22
  f64.const -1.904654299957768e-09
  f64.mul
  f64.add
  set_local $24
  get_local $23
  get_local $24
  f64.add
  set_local $15
  get_local $24
  get_local $15
  get_local $23
  f64.sub
  f64.sub
  set_local $25
  get_local $15
  get_local $15
  f64.mul
  set_local $22
  get_local $15
  get_local $22
  f64.const 0.16666666666666602
  get_local $22
  f64.const -2.7777777777015593e-03
  get_local $22
  f64.const 6.613756321437934e-05
  get_local $22
  f64.const -1.6533902205465252e-06
  get_local $22
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
  set_local $17
  get_local $15
  get_local $17
  f64.mul
  get_local $17
  f64.const 2
  f64.sub
  f64.div
  get_local $25
  get_local $15
  get_local $25
  f64.mul
  f64.add
  f64.sub
  set_local $21
  f64.const 1
  get_local $21
  get_local $15
  f64.sub
  f64.sub
  set_local $15
  get_local $15
  i64.reinterpret/f64
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_local $26
  get_local $26
  get_local $27
  i32.const 20
  i32.shl
  i32.add
  set_local $26
  get_local $26
  i32.const 20
  i32.shr_s
  i32.const 0
  i32.le_s
  if
   get_local $15
   get_local $27
   call $~lib/math/NativeMath.scalbn
   set_local $15
  else   
   get_local $15
   i64.reinterpret/f64
   i64.const 4294967295
   i64.and
   get_local $26
   i64.extend_s/i32
   i64.const 32
   i64.shl
   i64.or
   f64.reinterpret/i64
   set_local $15
  end
  get_local $16
  get_local $15
  f64.mul
 )
 (func $std/libm/pow (; 47 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  get_local $0
  get_local $1
  call $~lib/math/NativeMath.pow
 )
 (func $std/libm/round (; 48 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  f64.const 0.5
  f64.add
  f64.floor
  get_local $0
  f64.copysign
 )
 (func $std/libm/sign (; 49 ;) (type $FF) (param $0 f64) (result f64)
  block $~lib/math/NativeMath.sign|inlined.0 (result f64)
   get_local $0
   f64.const 0
   f64.gt
   if (result f64)
    f64.const 1
   else    
    get_local $0
    f64.const 0
    f64.lt
    if (result f64)
     f64.const -1
    else     
     get_local $0
    end
   end
   br $~lib/math/NativeMath.sign|inlined.0
  end
 )
 (func $~lib/math/NativeMath.sin (; 50 ;) (type $FF) (param $0 f64) (result f64)
  unreachable
  f64.const 0
 )
 (func $std/libm/sin (; 51 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  call $~lib/math/NativeMath.sin
 )
 (func $~lib/math/NativeMath.sinh (; 52 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 f64)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  get_local $0
  i64.reinterpret/f64
  i64.const 9223372036854775807
  i64.and
  set_local $1
  get_local $1
  f64.reinterpret/i64
  set_local $2
  get_local $1
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_local $3
  f64.const 0.5
  get_local $0
  f64.copysign
  set_local $5
  get_local $3
  i32.const 1082535490
  i32.lt_u
  if
   get_local $2
   call $~lib/math/NativeMath.expm1
   set_local $4
   get_local $3
   i32.const 1072693248
   i32.lt_u
   if
    get_local $3
    i32.const 1072693248
    i32.const 26
    i32.const 20
    i32.shl
    i32.sub
    i32.lt_u
    if
     get_local $0
     return
    end
    get_local $5
    f64.const 2
    get_local $4
    f64.mul
    get_local $4
    get_local $4
    f64.mul
    get_local $4
    f64.const 1
    f64.add
    f64.div
    f64.sub
    f64.mul
    return
   end
   get_local $5
   get_local $4
   get_local $4
   get_local $4
   f64.const 1
   f64.add
   f64.div
   f64.add
   f64.mul
   return
  end
  f64.const 2
  get_local $5
  f64.mul
  block $~lib/math/expo2|inlined.1 (result f64)
   i32.const 1023
   i32.const 2043
   i32.const 2
   i32.div_u
   i32.add
   i32.const 20
   i32.shl
   i64.extend_u/i32
   i64.const 32
   i64.shl
   f64.reinterpret/i64
   set_local $6
   get_local $2
   f64.const 1416.0996898839683
   f64.sub
   call $~lib/math/NativeMath.exp
   get_local $6
   f64.mul
   get_local $6
   f64.mul
  end
  f64.mul
  set_local $4
  get_local $4
 )
 (func $std/libm/sinh (; 53 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  call $~lib/math/NativeMath.sinh
 )
 (func $std/libm/sqrt (; 54 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  f64.sqrt
 )
 (func $~lib/math/NativeMath.tan (; 55 ;) (type $FF) (param $0 f64) (result f64)
  unreachable
  f64.const 0
 )
 (func $std/libm/tan (; 56 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  call $~lib/math/NativeMath.tan
 )
 (func $~lib/math/NativeMath.tanh (; 57 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 f64)
  (local $3 i32)
  (local $4 f64)
  get_local $0
  i64.reinterpret/f64
  set_local $1
  get_local $1
  i64.const 9223372036854775807
  i64.and
  set_local $1
  get_local $1
  f64.reinterpret/i64
  set_local $2
  get_local $1
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_local $3
  get_local $3
  i32.const 1071748074
  i32.gt_u
  if
   get_local $3
   i32.const 1077149696
   i32.gt_u
   if
    f64.const 1
    f64.const 0
    get_local $2
    f64.div
    f64.sub
    set_local $4
   else    
    f64.const 2
    get_local $2
    f64.mul
    call $~lib/math/NativeMath.expm1
    set_local $4
    f64.const 1
    f64.const 2
    get_local $4
    f64.const 2
    f64.add
    f64.div
    f64.sub
    set_local $4
   end
  else   
   get_local $3
   i32.const 1070618798
   i32.gt_u
   if
    f64.const 2
    get_local $2
    f64.mul
    call $~lib/math/NativeMath.expm1
    set_local $4
    get_local $4
    get_local $4
    f64.const 2
    f64.add
    f64.div
    set_local $4
   else    
    get_local $3
    i32.const 1048576
    i32.ge_u
    if
     f64.const -2
     get_local $2
     f64.mul
     call $~lib/math/NativeMath.expm1
     set_local $4
     get_local $4
     f64.neg
     get_local $4
     f64.const 2
     f64.add
     f64.div
     set_local $4
    else     
     get_local $2
     set_local $4
    end
   end
  end
  get_local $4
  get_local $0
  f64.copysign
 )
 (func $std/libm/tanh (; 58 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  call $~lib/math/NativeMath.tanh
 )
 (func $std/libm/trunc (; 59 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
  f64.trunc
 )
 (func $null (; 60 ;) (type $v)
 )
)
