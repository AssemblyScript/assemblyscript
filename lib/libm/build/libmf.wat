(module
 (type $FUNCSIG$ff (func (param f32) (result f32)))
 (type $FUNCSIG$fff (func (param f32 f32) (result f32)))
 (type $FUNCSIG$ffi (func (param f32 i32) (result f32)))
 (type $FUNCSIG$v (func))
 (memory $0 1)
 (data (i32.const 8) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00)\15DNn\83\f9\a2\c0\dd4\f5\d1W\'\fcA\90C<\99\95b\dba\c5\bb\de\abcQ\fe")
 (data (i32.const 56) "\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\00\18\00\00\00\18\00\00\00 \00\00\00\04")
 (global $assembly/libmf/E f32 (f32.const 2.7182817459106445))
 (global $assembly/libmf/LN10 f32 (f32.const 2.3025851249694824))
 (global $assembly/libmf/LN2 f32 (f32.const 0.6931471824645996))
 (global $assembly/libmf/LOG10E f32 (f32.const 0.4342944920063019))
 (global $assembly/libmf/LOG2E f32 (f32.const 1.4426950216293335))
 (global $assembly/libmf/PI f32 (f32.const 3.1415927410125732))
 (global $assembly/libmf/SQRT1_2 f32 (f32.const 0.7071067690849304))
 (global $assembly/libmf/SQRT2 f32 (f32.const 1.4142135381698608))
 (global $~lib/math/rempio2f_y (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (export "E" (global $assembly/libmf/E))
 (export "LN10" (global $assembly/libmf/LN10))
 (export "LN2" (global $assembly/libmf/LN2))
 (export "LOG10E" (global $assembly/libmf/LOG10E))
 (export "LOG2E" (global $assembly/libmf/LOG2E))
 (export "PI" (global $assembly/libmf/PI))
 (export "SQRT1_2" (global $assembly/libmf/SQRT1_2))
 (export "SQRT2" (global $assembly/libmf/SQRT2))
 (export "abs" (func $assembly/libmf/abs))
 (export "acos" (func $assembly/libmf/acos))
 (export "acosh" (func $assembly/libmf/acosh))
 (export "asin" (func $assembly/libmf/asin))
 (export "asinh" (func $assembly/libmf/asinh))
 (export "atan" (func $assembly/libmf/atan))
 (export "atanh" (func $assembly/libmf/atanh))
 (export "atan2" (func $assembly/libmf/atan2))
 (export "cbrt" (func $assembly/libmf/cbrt))
 (export "ceil" (func $assembly/libmf/ceil))
 (export "clz32" (func $assembly/libmf/clz32))
 (export "cos" (func $assembly/libmf/cos))
 (export "cosh" (func $assembly/libmf/cosh))
 (export "exp" (func $assembly/libmf/exp))
 (export "expm1" (func $assembly/libmf/expm1))
 (export "floor" (func $assembly/libmf/floor))
 (export "fround" (func $assembly/libmf/fround))
 (export "hypot" (func $assembly/libmf/hypot))
 (export "imul" (func $assembly/libmf/imul))
 (export "log" (func $assembly/libmf/log))
 (export "log10" (func $assembly/libmf/log10))
 (export "log1p" (func $assembly/libmf/log1p))
 (export "log2" (func $assembly/libmf/log2))
 (export "max" (func $assembly/libmf/max))
 (export "min" (func $assembly/libmf/min))
 (export "pow" (func $assembly/libmf/pow))
 (export "round" (func $assembly/libmf/round))
 (export "sign" (func $assembly/libmf/sign))
 (export "sin" (func $assembly/libmf/sin))
 (export "sinh" (func $assembly/libmf/sinh))
 (export "sqrt" (func $assembly/libmf/sqrt))
 (export "tan" (func $assembly/libmf/tan))
 (export "tanh" (func $assembly/libmf/tanh))
 (export "trunc" (func $assembly/libmf/trunc))
 (func $assembly/libmf/abs (; 0 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  f32.abs
 )
 (func $~lib/math/NativeMathf.acos (; 1 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
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
   local.tee $0
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
   f32.const 0.5
   local.get $0
   f32.const 0.5
   f32.mul
   f32.add
   local.tee $0
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
   local.set $1
   f32.const 2
   f32.const 1.570796251296997
   local.get $0
   f32.sqrt
   local.tee $0
   local.get $1
   local.get $0
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
  local.tee $0
  f32.sqrt
  local.tee $4
  i32.reinterpret_f32
  i32.const -4096
  i32.and
  f32.reinterpret_i32
  local.tee $1
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
  local.get $4
  f32.mul
  local.get $0
  local.get $1
  local.get $1
  f32.mul
  f32.sub
  local.get $4
  local.get $1
  f32.add
  f32.div
  f32.add
  f32.add
  f32.mul
 )
 (func $assembly/libmf/acos (; 2 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.acos
 )
 (func $~lib/math/NativeMathf.log1p (; 3 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
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
 (func $~lib/math/NativeMathf.log (; 4 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
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
 (func $~lib/math/NativeMathf.acosh (; 5 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
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
 (func $assembly/libmf/acosh (; 6 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.acosh
 )
 (func $~lib/math/NativeMathf.asin (; 7 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 f64)
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
   local.tee $0
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
  local.tee $2
  f32.const 0.16666586697101593
  local.get $2
  f32.const -0.04274342209100723
  local.get $2
  f32.const -0.008656363002955914
  f32.mul
  f32.add
  f32.mul
  f32.add
  f32.mul
  f32.const 1
  local.get $2
  f32.const -0.7066296339035034
  f32.mul
  f32.add
  f32.div
  local.set $3
  f64.const 1.5707963705062866
  f64.const 2
  local.get $2
  f64.promote_f32
  f64.sqrt
  local.tee $4
  local.get $4
  local.get $3
  f64.promote_f32
  f64.mul
  f64.add
  f64.mul
  f64.sub
  f32.demote_f64
  local.get $0
  f32.copysign
 )
 (func $assembly/libmf/asin (; 8 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.asin
 )
 (func $~lib/math/NativeMathf.asinh (; 9 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
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
 (func $assembly/libmf/asinh (; 10 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.asinh
 )
 (func $~lib/math/NativeMathf.atan (; 11 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 f32)
  local.get $0
  local.set $3
  local.get $0
  i32.reinterpret_f32
  i32.const 2147483647
  i32.and
  local.tee $1
  i32.const 1283457024
  i32.ge_u
  if
   local.get $0
   local.get $0
   f32.ne
   if
    local.get $0
    return
   end
   f32.const 1.570796251296997
   local.get $3
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
  local.tee $4
  local.get $4
  f32.mul
  local.set $2
  local.get $0
  local.get $4
  f32.const 0.333333283662796
  local.get $2
  f32.const 0.14253635704517365
  local.get $2
  f32.const 0.06168760731816292
  f32.mul
  f32.add
  f32.mul
  f32.add
  f32.mul
  local.get $2
  f32.const -0.19999158382415771
  local.get $2
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
        local.get $1
        i32.const 1
        i32.sub
        br_table $case1|0 $case2|0 $case3|0 $case4|0
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
  local.get $3
  f32.copysign
 )
 (func $assembly/libmf/atan (; 12 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.atan
 )
 (func $~lib/math/NativeMathf.atanh (; 13 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
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
 (func $assembly/libmf/atanh (; 14 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.atanh
 )
 (func $~lib/math/NativeMathf.atan2 (; 15 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  local.get $0
  local.get $0
  f32.ne
  local.get $1
  local.get $1
  f32.ne
  select
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
      block $case1|0
       local.get $2
       i32.eqz
       br_if $case1|0
       block $tablify|0
        local.get $2
        i32.const 1
        i32.sub
        br_table $case1|0 $case2|0 $case3|0 $tablify|0
       end
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
          local.get $2
          i32.const 1
          i32.sub
          br_table $case1|1 $case2|1 $case3|1 $break|1
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
          local.get $2
          i32.const 1
          i32.sub
          br_table $case1|2 $case2|2 $case3|2 $break|2
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
        local.get $2
        i32.const 1
        i32.sub
        br_table $case1|3 $case2|3 $case3|3 $break|3
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
 (func $assembly/libmf/atan2 (; 16 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  local.get $0
  local.get $1
  call $~lib/math/NativeMathf.atan2
 )
 (func $~lib/math/NativeMathf.cbrt (; 17 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f64)
  (local $2 f64)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 f64)
  local.get $0
  i32.reinterpret_f32
  local.tee $5
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
   local.tee $5
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
  local.get $5
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
  local.tee $1
  local.get $1
  f64.add
  local.tee $6
  local.get $2
  f64.add
  f64.mul
  local.get $1
  local.get $2
  f64.add
  local.get $2
  f64.add
  f64.div
  local.tee $2
  local.get $2
  f64.mul
  local.get $2
  f64.mul
  local.set $4
  local.get $2
  local.get $6
  local.get $4
  f64.add
  f64.mul
  local.get $1
  local.get $4
  f64.add
  local.get $4
  f64.add
  f64.div
  f32.demote_f64
 )
 (func $assembly/libmf/cbrt (; 18 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.cbrt
 )
 (func $assembly/libmf/ceil (; 19 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  f32.ceil
 )
 (func $~lib/math/NativeMathf.clz32 (; 20 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  local.get $0
  f32.sub
  f32.const 0
  f32.ne
  if
   f32.const 32
   return
  end
  local.get $0
  f32.const 4294967296
  local.get $0
  f32.const 2.3283064365386963e-10
  f32.mul
  f32.floor
  f32.mul
  f32.sub
  i64.trunc_f32_s
  i32.wrap_i64
  i32.clz
  f32.convert_i32_s
 )
 (func $assembly/libmf/clz32 (; 21 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.clz32
 )
 (func $~lib/math/NativeMathf.cos (; 22 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f64)
  (local $2 f64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  local.get $0
  i32.reinterpret_f32
  local.tee $3
  i32.const 31
  i32.shr_u
  local.set $6
  block $folding-inner1
   block $folding-inner0
    local.get $3
    i32.const 2147483647
    i32.and
    local.tee $3
    i32.const 1061752794
    i32.le_u
    if
     local.get $3
     i32.const 964689920
     i32.lt_u
     if
      f32.const 1
      return
     end
     local.get $0
     f64.promote_f32
     local.tee $1
     local.get $1
     f64.mul
     local.tee $1
     local.get $1
     f64.mul
     local.set $2
     br $folding-inner0
    end
    local.get $3
    i32.const 1081824209
    i32.le_u
    if
     local.get $3
     i32.const 1075235811
     i32.gt_u
     if
      local.get $0
      f64.promote_f32
      local.tee $1
      f64.const 3.141592653589793
      f64.add
      local.get $1
      f64.const 3.141592653589793
      f64.sub
      local.get $6
      select
      local.tee $1
      local.get $1
      f64.mul
      local.tee $1
      local.get $1
      f64.mul
      local.set $2
      f64.const 1
      local.get $1
      f64.const -0.499999997251031
      f64.mul
      f64.add
      local.get $2
      f64.const 0.04166662332373906
      f64.mul
      f64.add
      local.get $2
      local.get $1
      f64.mul
      f64.const -0.001388676377460993
      local.get $1
      f64.const 2.439044879627741e-05
      f64.mul
      f64.add
      f64.mul
      f64.add
      f32.demote_f64
      f32.neg
      return
     else      
      local.get $6
      if (result f64)
       local.get $0
       f64.promote_f32
       f64.const 1.5707963267948966
       f64.add
       local.tee $2
       local.get $2
       f64.mul
       local.tee $1
       local.get $2
       f64.mul
      else       
       f64.const 1.5707963267948966
       local.get $0
       f64.promote_f32
       f64.sub
       local.tee $2
       local.get $2
       f64.mul
       local.tee $1
       local.get $2
       f64.mul
      end
      local.set $7
      br $folding-inner1
     end
     unreachable
    end
    local.get $3
    i32.const 1088565717
    i32.le_u
    if
     local.get $3
     i32.const 1085271519
     i32.gt_u
     if
      local.get $0
      f64.promote_f32
      local.tee $1
      f64.const 6.283185307179586
      f64.add
      local.get $1
      f64.const 6.283185307179586
      f64.sub
      local.get $6
      select
      local.tee $1
      local.get $1
      f64.mul
      local.tee $1
      local.get $1
      f64.mul
      local.set $2
      br $folding-inner0
     else      
      local.get $6
      if (result f64)
       local.get $0
       f32.neg
       f64.promote_f32
       f64.const 4.71238898038469
       f64.sub
       local.tee $2
       local.get $2
       f64.mul
       local.tee $1
       local.get $2
       f64.mul
      else       
       local.get $0
       f64.promote_f32
       f64.const 4.71238898038469
       f64.sub
       local.tee $2
       local.get $2
       f64.mul
       local.tee $1
       local.get $2
       f64.mul
      end
      local.set $7
      br $folding-inner1
     end
     unreachable
    end
    local.get $3
    i32.const 2139095040
    i32.ge_u
    if
     local.get $0
     local.get $0
     f32.sub
     return
    end
    block $~lib/math/rempio2f|inlined.0 (result i32)
     local.get $3
     i32.const 1305022427
     i32.lt_u
     if
      local.get $0
      f64.promote_f32
      local.tee $2
      f64.const 0.6366197723675814
      f64.mul
      f64.nearest
      local.set $1
      local.get $2
      local.get $1
      f64.const 1.5707963109016418
      f64.mul
      f64.sub
      local.get $1
      f64.const 1.5893254773528196e-08
      f64.mul
      f64.sub
      global.set $~lib/math/rempio2f_y
      local.get $1
      i32.trunc_f64_s
      br $~lib/math/rempio2f|inlined.0
     end
     i32.const 76
     i32.load
     local.get $3
     i32.const 23
     i32.shr_s
     i32.const 152
     i32.sub
     local.tee $5
     i32.const 6
     i32.shr_s
     local.tee $9
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.set $10
     i32.const 76
     i32.load
     local.get $9
     i32.const 1
     i32.add
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.set $4
     local.get $5
     i32.const 63
     i32.and
     local.tee $5
     i32.const 32
     i32.gt_s
     if (result i64)
      local.get $4
      local.get $5
      i32.const 32
      i32.sub
      i64.extend_i32_s
      i64.shl
      i32.const 76
      i32.load
      local.get $9
      i32.const 2
      i32.add
      i32.const 3
      i32.shl
      i32.add
      i64.load
      i64.const 96
      local.get $5
      i64.extend_i32_s
      i64.sub
      i64.shr_u
      i64.or
     else      
      local.get $4
      i64.const 32
      local.get $5
      i64.extend_i32_s
      i64.sub
      i64.shr_u
     end
     local.set $8
     f64.const 8.515303950216386e-20
     local.get $0
     f64.promote_f32
     f64.copysign
     local.get $3
     i32.const 8388607
     i32.and
     i32.const 8388608
     i32.or
     i64.extend_i32_s
     local.tee $11
     local.get $4
     i64.const 64
     local.get $5
     i64.extend_i32_s
     local.tee $4
     i64.sub
     i64.shr_u
     local.get $10
     local.get $4
     i64.shl
     i64.or
     i64.mul
     local.get $8
     local.get $11
     i64.mul
     i64.const 32
     i64.shr_u
     i64.add
     local.tee $4
     i64.const 2
     i64.shl
     local.tee $8
     f64.convert_i64_s
     f64.mul
     global.set $~lib/math/rempio2f_y
     i32.const 0
     local.get $4
     i64.const 62
     i64.shr_u
     local.get $8
     i64.const 63
     i64.shr_u
     i64.add
     i32.wrap_i64
     local.tee $3
     i32.sub
     local.get $3
     local.get $6
     select
    end
    local.set $3
    global.get $~lib/math/rempio2f_y
    local.set $1
    local.get $3
    i32.const 1
    i32.and
    if (result f32)
     local.get $1
     local.get $1
     local.get $1
     f64.mul
     local.tee $2
     local.get $1
     f64.mul
     local.tee $1
     f64.const -0.16666666641626524
     local.get $2
     f64.const 0.008333329385889463
     f64.mul
     f64.add
     f64.mul
     f64.add
     local.get $1
     local.get $2
     local.get $2
     f64.mul
     f64.mul
     f64.const -1.9839334836096632e-04
     local.get $2
     f64.const 2.718311493989822e-06
     f64.mul
     f64.add
     f64.mul
     f64.add
     f32.demote_f64
    else     
     local.get $1
     local.get $1
     f64.mul
     local.tee $1
     local.get $1
     f64.mul
     local.set $2
     f64.const 1
     local.get $1
     f64.const -0.499999997251031
     f64.mul
     f64.add
     local.get $2
     f64.const 0.04166662332373906
     f64.mul
     f64.add
     local.get $2
     local.get $1
     f64.mul
     f64.const -0.001388676377460993
     local.get $1
     f64.const 2.439044879627741e-05
     f64.mul
     f64.add
     f64.mul
     f64.add
     f32.demote_f64
    end
    local.set $0
    local.get $0
    f32.neg
    local.get $0
    local.get $3
    i32.const 1
    i32.add
    i32.const 2
    i32.and
    select
    return
   end
   f64.const 1
   local.get $1
   f64.const -0.499999997251031
   f64.mul
   f64.add
   local.get $2
   f64.const 0.04166662332373906
   f64.mul
   f64.add
   local.get $2
   local.get $1
   f64.mul
   f64.const -0.001388676377460993
   local.get $1
   f64.const 2.439044879627741e-05
   f64.mul
   f64.add
   f64.mul
   f64.add
   f32.demote_f64
   return
  end
  local.get $2
  local.get $7
  f64.const -0.16666666641626524
  local.get $1
  f64.const 0.008333329385889463
  f64.mul
  f64.add
  f64.mul
  f64.add
  local.get $7
  local.get $1
  local.get $1
  f64.mul
  f64.mul
  f64.const -1.9839334836096632e-04
  local.get $1
  f64.const 2.718311493989822e-06
  f64.mul
  f64.add
  f64.mul
  f64.add
  f32.demote_f64
 )
 (func $assembly/libmf/cos (; 23 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.cos
 )
 (func $~lib/math/NativeMathf.expm1 (; 24 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 f32)
  (local $5 i32)
  (local $6 f32)
  local.get $0
  i32.reinterpret_f32
  local.tee $1
  i32.const 31
  i32.shr_u
  local.set $5
  local.get $1
  i32.const 2147483647
  i32.and
  local.tee $1
  i32.const 1100331076
  i32.ge_u
  if
   local.get $1
   i32.const 2139095040
   i32.gt_u
   if
    local.get $0
    return
   end
   local.get $5
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
    return
   end
  end
  local.get $1
  i32.const 1051816472
  i32.gt_u
  if
   local.get $0
   i32.const 1
   local.get $5
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
   local.get $1
   i32.const 1065686418
   i32.lt_u
   select
   local.tee $1
   f32.convert_i32_s
   local.tee $0
   f32.const 0.6931381225585938
   f32.mul
   f32.sub
   local.tee $2
   local.get $2
   local.get $0
   f32.const 9.05800061445916e-06
   f32.mul
   local.tee $2
   f32.sub
   local.tee $0
   f32.sub
   local.get $2
   f32.sub
   local.set $4
  else   
   local.get $1
   i32.const 855638016
   i32.lt_u
   if (result i32)
    local.get $0
    return
   else    
    i32.const 0
   end
   local.set $1
  end
  f32.const 3
  f32.const 1
  local.get $0
  f32.const 0.5
  local.get $0
  f32.mul
  local.tee $3
  f32.mul
  local.tee $2
  f32.const -0.03333321213722229
  local.get $2
  f32.const 1.5807170420885086e-03
  f32.mul
  f32.add
  f32.mul
  f32.add
  local.tee $6
  local.get $3
  f32.mul
  f32.sub
  local.set $3
  local.get $2
  local.get $6
  local.get $3
  f32.sub
  f32.const 6
  local.get $0
  local.get $3
  f32.mul
  f32.sub
  f32.div
  f32.mul
  local.set $3
  local.get $1
  i32.eqz
  if
   local.get $0
   local.get $0
   local.get $3
   f32.mul
   local.get $2
   f32.sub
   f32.sub
   return
  end
  local.get $0
  local.get $3
  local.get $4
  f32.sub
  f32.mul
  local.get $4
  f32.sub
  local.get $2
  f32.sub
  local.set $2
  local.get $1
  i32.const -1
  i32.eq
  if
   f32.const 0.5
   local.get $0
   local.get $2
   f32.sub
   f32.mul
   f32.const 0.5
   f32.sub
   return
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   local.get $0
   f32.const -0.25
   f32.lt
   if
    f32.const -2
    local.get $2
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
   local.get $2
   f32.sub
   f32.mul
   f32.add
   return
  end
  local.get $1
  i32.const 127
  i32.add
  i32.const 23
  i32.shl
  f32.reinterpret_i32
  local.set $4
  i32.const 1
  local.get $1
  i32.const 56
  i32.gt_s
  local.get $1
  i32.const 0
  i32.lt_s
  select
  if
   local.get $0
   local.get $2
   f32.sub
   f32.const 1
   f32.add
   local.set $0
   local.get $1
   i32.const 128
   i32.eq
   if (result f32)
    local.get $0
    f32.const 2
    f32.mul
    f32.const 1701411834604692317316873e14
    f32.mul
   else    
    local.get $0
    local.get $4
    f32.mul
   end
   f32.const 1
   f32.sub
   return
  end
  i32.const 127
  local.get $1
  i32.sub
  i32.const 23
  i32.shl
  f32.reinterpret_i32
  local.set $3
  local.get $0
  f32.const 1
  local.get $3
  f32.sub
  local.get $2
  f32.sub
  f32.const 1
  local.get $2
  local.get $3
  f32.add
  f32.sub
  local.get $1
  i32.const 20
  i32.lt_s
  select
  f32.add
  local.get $4
  f32.mul
 )
 (func $~lib/math/NativeMathf.scalbn (; 25 ;) (type $FUNCSIG$ffi) (param $0 f32) (param $1 i32) (result f32)
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
 (func $~lib/math/NativeMathf.exp (; 26 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 f32)
  local.get $0
  i32.reinterpret_f32
  local.tee $1
  i32.const 31
  i32.shr_u
  local.set $2
  local.get $1
  i32.const 2147483647
  i32.and
  local.tee $1
  i32.const 1118743632
  i32.ge_u
  if
   local.get $1
   i32.const 1118925336
   i32.ge_u
   if
    local.get $2
    if
     local.get $1
     i32.const 1120924085
     i32.ge_u
     if
      f32.const 0
      return
     end
    else     
     local.get $0
     f32.const 1701411834604692317316873e14
     f32.mul
     return
    end
   end
  end
  local.get $1
  i32.const 1051816472
  i32.gt_u
  if
   local.get $0
   local.get $1
   i32.const 1065686418
   i32.gt_u
   if (result i32)
    f32.const 1.4426950216293335
    local.get $0
    f32.mul
    f32.const 0.5
    local.get $0
    f32.copysign
    f32.add
    i32.trunc_f32_s
   else    
    i32.const 1
    local.get $2
    i32.const 1
    i32.shl
    i32.sub
   end
   local.tee $1
   f32.convert_i32_s
   local.tee $0
   f32.const 0.693145751953125
   f32.mul
   f32.sub
   local.tee $3
   local.get $0
   f32.const 1.428606765330187e-06
   f32.mul
   local.tee $4
   f32.sub
   local.set $0
  else   
   local.get $1
   i32.const 956301312
   i32.gt_u
   if (result f32)
    i32.const 0
    local.set $1
    local.get $0
   else    
    f32.const 1
    local.get $0
    f32.add
    return
   end
   local.set $3
  end
  f32.const 1
  local.get $0
  local.get $0
  local.get $0
  local.get $0
  f32.mul
  local.tee $0
  f32.const 0.16666625440120697
  local.get $0
  f32.const -2.7667332906275988e-03
  f32.mul
  f32.add
  f32.mul
  f32.sub
  local.tee $0
  f32.mul
  f32.const 2
  local.get $0
  f32.sub
  f32.div
  local.get $4
  f32.sub
  local.get $3
  f32.add
  f32.add
  local.set $0
  local.get $1
  i32.eqz
  if
   local.get $0
   return
  end
  local.get $0
  local.get $1
  call $~lib/math/NativeMathf.scalbn
 )
 (func $~lib/math/NativeMathf.cosh (; 27 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  local.get $0
  i32.reinterpret_f32
  i32.const 2147483647
  i32.and
  local.tee $1
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
   f32.const 1
   local.get $0
   call $~lib/math/NativeMathf.expm1
   local.tee $0
   local.get $0
   f32.mul
   f32.const 2
   f32.const 2
   local.get $0
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
   f32.const 0.5
   local.get $0
   call $~lib/math/NativeMathf.exp
   local.tee $0
   f32.mul
   f32.const 0.5
   local.get $0
   f32.div
   f32.add
   return
  end
  local.get $0
  f32.const 162.88958740234375
  f32.sub
  call $~lib/math/NativeMathf.exp
  f32.const 1661534994731144841129758e11
  f32.mul
  f32.const 1661534994731144841129758e11
  f32.mul
 )
 (func $assembly/libmf/cosh (; 28 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.cosh
 )
 (func $assembly/libmf/exp (; 29 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.exp
 )
 (func $assembly/libmf/expm1 (; 30 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.expm1
 )
 (func $assembly/libmf/floor (; 31 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  f32.floor
 )
 (func $assembly/libmf/fround (; 32 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
 )
 (func $~lib/math/NativeMathf.hypot (; 33 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f64)
  (local $6 i32)
  local.get $0
  i32.reinterpret_f32
  i32.const 2147483647
  i32.and
  local.tee $3
  local.get $1
  i32.reinterpret_f32
  i32.const 2147483647
  i32.and
  local.tee $2
  i32.lt_u
  if
   local.get $3
   local.get $2
   local.set $3
   local.set $2
  end
  local.get $3
  f32.reinterpret_i32
  local.set $0
  local.get $2
  f32.reinterpret_i32
  local.set $1
  local.get $2
  i32.const 2139095040
  i32.eq
  if
   local.get $1
   return
  end
  i32.const 1
  local.get $3
  local.get $2
  i32.sub
  i32.const 209715200
  i32.ge_u
  i32.const 1
  local.get $2
  i32.eqz
  local.get $3
  i32.const 2139095040
  i32.ge_u
  select
  select
  if
   local.get $0
   local.get $1
   f32.add
   return
  end
  f32.const 1
  local.set $4
  local.get $3
  i32.const 1568669696
  i32.ge_u
  if (result f32)
   f32.const 1237940039285380274899124e3
   local.set $4
   local.get $1
   f32.const 8.077935669463161e-28
   f32.mul
   local.set $1
   local.get $0
   f32.const 8.077935669463161e-28
   f32.mul
  else   
   local.get $2
   i32.const 562036736
   i32.lt_u
   if (result f32)
    f32.const 8.077935669463161e-28
    local.set $4
    local.get $1
    f32.const 1237940039285380274899124e3
    f32.mul
    local.set $1
    local.get $0
    f32.const 1237940039285380274899124e3
    f32.mul
   else    
    local.get $0
   end
  end
  local.set $0
  local.get $4
  local.get $0
  f64.promote_f32
  local.tee $5
  local.get $5
  f64.mul
  local.get $1
  f64.promote_f32
  local.tee $5
  local.get $5
  f64.mul
  f64.add
  f32.demote_f64
  f32.sqrt
  f32.mul
 )
 (func $assembly/libmf/hypot (; 34 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  local.get $0
  local.get $1
  call $~lib/math/NativeMathf.hypot
 )
 (func $assembly/libmf/imul (; 35 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 f64)
  (local $3 f32)
  block $~lib/math/NativeMathf.imul|inlined.0 (result f32)
   f32.const 0
   local.get $0
   local.get $1
   f32.add
   local.tee $3
   local.get $3
   f32.sub
   f32.const 0
   f32.ne
   br_if $~lib/math/NativeMathf.imul|inlined.0
   drop
   local.get $0
   f64.promote_f32
   local.tee $2
   f64.const 4294967296
   local.get $2
   f64.const 2.3283064365386963e-10
   f64.mul
   f64.floor
   f64.mul
   f64.sub
   i64.trunc_f64_s
   i32.wrap_i64
   local.get $1
   f64.promote_f32
   local.tee $2
   f64.const 4294967296
   local.get $2
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
 (func $assembly/libmf/log (; 36 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.log
 )
 (func $~lib/math/NativeMathf.log10 (; 37 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
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
   local.set $3
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
  local.tee $4
  local.get $4
  f32.mul
  local.tee $5
  local.get $5
  f32.mul
  local.set $2
  local.get $1
  i32.const 23
  i32.shr_u
  i32.const 127
  i32.sub
  local.get $3
  i32.add
  f32.convert_i32_s
  local.tee $7
  f32.const 7.903415166765626e-07
  f32.mul
  local.get $0
  local.get $0
  f32.const 0.5
  local.get $0
  f32.mul
  local.get $0
  f32.mul
  local.tee $0
  f32.sub
  i32.reinterpret_f32
  i32.const -4096
  i32.and
  f32.reinterpret_i32
  local.tee $6
  f32.sub
  local.get $0
  f32.sub
  local.get $4
  local.get $0
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
  f32.add
  local.tee $0
  local.get $6
  f32.add
  f32.const -3.168997136526741e-05
  f32.mul
  f32.add
  local.get $0
  f32.const 0.434326171875
  f32.mul
  f32.add
  local.get $6
  f32.const 0.434326171875
  f32.mul
  f32.add
  local.get $7
  f32.const 0.3010292053222656
  f32.mul
  f32.add
 )
 (func $assembly/libmf/log10 (; 38 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.log10
 )
 (func $assembly/libmf/log1p (; 39 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.log1p
 )
 (func $~lib/math/NativeMathf.log2 (; 40 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
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
   local.set $3
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
  local.tee $4
  local.get $4
  f32.mul
  local.tee $5
  local.get $5
  f32.mul
  local.set $2
  local.get $0
  local.get $0
  f32.const 0.5
  local.get $0
  f32.mul
  local.get $0
  f32.mul
  local.tee $0
  f32.sub
  i32.reinterpret_f32
  i32.const -4096
  i32.and
  f32.reinterpret_i32
  local.tee $6
  f32.sub
  local.get $0
  f32.sub
  local.get $4
  local.get $0
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
  f32.add
  local.tee $0
  local.get $6
  f32.add
  f32.const -1.7605285393074155e-04
  f32.mul
  local.get $0
  f32.const 1.44287109375
  f32.mul
  f32.add
  local.get $6
  f32.const 1.44287109375
  f32.mul
  f32.add
  local.get $1
  i32.const 23
  i32.shr_u
  i32.const 127
  i32.sub
  local.get $3
  i32.add
  f32.convert_i32_s
  f32.add
 )
 (func $assembly/libmf/log2 (; 41 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.log2
 )
 (func $assembly/libmf/max (; 42 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  local.get $0
  local.get $1
  f32.max
 )
 (func $assembly/libmf/min (; 43 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  local.get $0
  local.get $1
  f32.min
 )
 (func $~lib/math/NativeMathf.pow (; 44 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  (local $8 i32)
  (local $9 f32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 f32)
  (local $14 f32)
  (local $15 f32)
  (local $16 f32)
  local.get $0
  i32.reinterpret_f32
  local.tee $8
  i32.const 2147483647
  i32.and
  local.set $5
  local.get $1
  i32.reinterpret_f32
  local.tee $11
  i32.const 2147483647
  i32.and
  local.tee $10
  i32.eqz
  if
   f32.const 1
   return
  end
  i32.const 1
  local.get $10
  i32.const 2139095040
  i32.gt_s
  local.get $5
  i32.const 2139095040
  i32.gt_s
  select
  if
   local.get $0
   local.get $1
   f32.add
   return
  end
  local.get $8
  i32.const 0
  i32.lt_s
  if
   local.get $10
   i32.const 1266679808
   i32.ge_s
   if (result i32)
    i32.const 2
   else    
    local.get $10
    i32.const 1065353216
    i32.ge_s
    if (result i32)
     local.get $10
     i32.const 150
     local.get $10
     i32.const 23
     i32.shr_s
     i32.sub
     local.tee $12
     i32.shr_s
     local.tee $6
     local.get $12
     i32.shl
     local.get $10
     i32.eq
     if (result i32)
      i32.const 2
      local.get $6
      i32.const 1
      i32.and
      i32.sub
     else      
      i32.const 0
     end
    else     
     i32.const 0
    end
   end
   local.set $4
  end
  local.get $10
  i32.const 2139095040
  i32.eq
  if
   local.get $5
   i32.const 1065353216
   i32.eq
   if
    f32.const nan:0x400000
    return
   else    
    local.get $5
    i32.const 1065353216
    i32.gt_s
    if
     local.get $11
     i32.const 0
     i32.lt_s
     if
      f32.const 0
      local.set $1
     end
     local.get $1
     return
    else     
     f32.const 0
     local.get $1
     f32.neg
     local.get $11
     i32.const 0
     i32.ge_s
     select
     return
    end
    unreachable
   end
   unreachable
  end
  local.get $10
  i32.const 1065353216
  i32.eq
  if
   local.get $11
   i32.const 0
   i32.lt_s
   if
    f32.const 1
    local.get $0
    f32.div
    local.set $0
   end
   local.get $0
   return
  end
  local.get $11
  i32.const 1073741824
  i32.eq
  if
   local.get $0
   local.get $0
   f32.mul
   return
  end
  local.get $11
  i32.const 1056964608
  i32.eq
  if
   local.get $8
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
  local.set $3
  i32.const 1
  local.get $5
  i32.const 1065353216
  i32.eq
  i32.const 1
  local.get $5
  i32.eqz
  local.get $5
  i32.const 2139095040
  i32.eq
  select
  select
  if
   f32.const 1
   local.get $3
   f32.div
   local.get $3
   local.get $11
   i32.const 0
   i32.lt_s
   select
   local.set $3
   local.get $8
   i32.const 0
   i32.lt_s
   if (result f32)
    local.get $5
    i32.const 1065353216
    i32.sub
    local.get $4
    i32.or
    if (result f32)
     local.get $3
     f32.neg
     local.get $3
     local.get $4
     i32.const 1
     i32.eq
     select
    else     
     local.get $3
     local.get $3
     f32.sub
     local.tee $0
     local.get $0
     f32.div
    end
   else    
    local.get $3
   end
   return
  end
  f32.const 1
  local.set $7
  local.get $8
  i32.const 0
  i32.lt_s
  if
   local.get $4
   i32.eqz
   if
    local.get $0
    local.get $0
    f32.sub
    local.tee $0
    local.get $0
    f32.div
    return
   end
   f32.const -1
   f32.const 1
   local.get $4
   i32.const 1
   i32.eq
   select
   local.set $7
  end
  local.get $10
  i32.const 1291845632
  i32.gt_s
  if (result f32)
   local.get $5
   i32.const 1065353208
   i32.lt_s
   if
    local.get $11
    i32.const 0
    i32.lt_s
    if (result f32)
     local.get $7
     f32.const 1000000015047466219876688e6
     f32.mul
     f32.const 1000000015047466219876688e6
     f32.mul
    else     
     local.get $7
     f32.const 1.0000000031710769e-30
     f32.mul
     f32.const 1.0000000031710769e-30
     f32.mul
    end
    return
   end
   local.get $5
   i32.const 1065353223
   i32.gt_s
   if
    local.get $11
    i32.const 0
    i32.gt_s
    if (result f32)
     local.get $7
     f32.const 1000000015047466219876688e6
     f32.mul
     f32.const 1000000015047466219876688e6
     f32.mul
    else     
     local.get $7
     f32.const 1.0000000031710769e-30
     f32.mul
     f32.const 1.0000000031710769e-30
     f32.mul
    end
    return
   end
   local.get $3
   f32.const 1
   f32.sub
   local.tee $2
   local.get $2
   f32.mul
   f32.const 0.5
   local.get $2
   f32.const 0.3333333432674408
   local.get $2
   f32.const 0.25
   f32.mul
   f32.sub
   f32.mul
   f32.sub
   f32.mul
   local.set $0
   f32.const 1.44268798828125
   local.get $2
   f32.mul
   local.tee $3
   local.get $2
   f32.const 7.052607543300837e-06
   f32.mul
   local.get $0
   f32.const 1.4426950216293335
   f32.mul
   f32.sub
   local.tee $0
   f32.add
   i32.reinterpret_f32
   i32.const -4096
   i32.and
   f32.reinterpret_i32
   local.set $9
   local.get $0
   local.get $9
   local.get $3
   f32.sub
   f32.sub
  else   
   i32.const 0
   local.set $4
   local.get $5
   i32.const 8388608
   i32.lt_s
   if (result i32)
    local.get $3
    f32.const 16777216
    f32.mul
    i32.reinterpret_f32
    local.set $5
    i32.const -24
   else    
    i32.const 0
   end
   local.get $5
   i32.const 23
   i32.shr_s
   i32.const 127
   i32.sub
   i32.add
   local.set $4
   local.get $5
   i32.const 8388607
   i32.and
   local.tee $6
   i32.const 1065353216
   i32.or
   local.set $5
   local.get $6
   i32.const 1885297
   i32.le_s
   if (result i32)
    i32.const 0
   else    
    local.get $6
    i32.const 6140887
    i32.lt_s
    if (result i32)
     i32.const 1
    else     
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     local.get $5
     i32.const 8388608
     i32.sub
     local.set $5
     i32.const 0
    end
   end
   local.set $6
   local.get $5
   f32.reinterpret_i32
   local.tee $3
   f32.const 1.5
   f32.const 1
   local.get $6
   select
   local.tee $0
   f32.sub
   local.tee $9
   f32.const 1
   local.get $3
   local.get $0
   f32.add
   f32.div
   local.tee $2
   f32.mul
   local.tee $15
   i32.reinterpret_f32
   i32.const -4096
   i32.and
   f32.reinterpret_i32
   local.set $13
   local.get $3
   local.get $5
   i32.const 1
   i32.shr_s
   i32.const -4096
   i32.and
   i32.const 536870912
   i32.or
   i32.const 4194304
   i32.add
   local.get $6
   i32.const 21
   i32.shl
   i32.add
   f32.reinterpret_i32
   local.tee $3
   local.get $0
   f32.sub
   f32.sub
   local.set $0
   f32.const 0.9619140625
   local.get $13
   f32.const 3
   local.get $13
   local.get $13
   f32.mul
   local.tee $16
   f32.add
   local.get $15
   local.get $15
   f32.mul
   local.tee $14
   local.get $14
   f32.mul
   f32.const 0.6000000238418579
   local.get $14
   f32.const 0.4285714328289032
   local.get $14
   f32.const 0.3333333432674408
   local.get $14
   f32.const 0.2727281153202057
   local.get $14
   f32.const 0.23066075146198273
   local.get $14
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
   local.get $2
   local.get $9
   local.get $13
   local.get $3
   f32.mul
   f32.sub
   local.get $13
   local.get $0
   f32.mul
   f32.sub
   f32.mul
   local.tee $2
   local.get $13
   local.get $15
   f32.add
   f32.mul
   f32.add
   local.tee $0
   f32.add
   i32.reinterpret_f32
   i32.const -4096
   i32.and
   f32.reinterpret_i32
   local.tee $9
   f32.mul
   local.tee $3
   local.get $2
   local.get $9
   f32.mul
   local.get $0
   local.get $9
   f32.const 3
   f32.sub
   local.get $16
   f32.sub
   f32.sub
   local.get $15
   f32.mul
   f32.add
   local.tee $0
   f32.add
   i32.reinterpret_f32
   i32.const -4096
   i32.and
   f32.reinterpret_i32
   local.tee $2
   f32.mul
   local.tee $16
   f32.const -1.1736857413779944e-04
   local.get $2
   f32.mul
   local.get $0
   local.get $2
   local.get $3
   f32.sub
   f32.sub
   f32.const 0.9617967009544373
   f32.mul
   f32.add
   f32.const 1.5632208487659227e-06
   f32.const 0
   local.get $6
   select
   f32.add
   local.tee $2
   f32.add
   f32.const 0.5849609375
   f32.const 0
   local.get $6
   select
   local.tee $3
   f32.add
   local.get $4
   f32.convert_i32_s
   local.tee $0
   f32.add
   i32.reinterpret_f32
   i32.const -4096
   i32.and
   f32.reinterpret_i32
   local.set $9
   local.get $2
   local.get $9
   local.get $0
   f32.sub
   local.get $3
   f32.sub
   local.get $16
   f32.sub
   f32.sub
  end
  local.set $3
  block $folding-inner1
   block $folding-inner0
    local.get $1
    local.get $1
    i32.reinterpret_f32
    i32.const -4096
    i32.and
    f32.reinterpret_i32
    local.tee $0
    f32.sub
    local.get $9
    f32.mul
    local.get $1
    local.get $3
    f32.mul
    f32.add
    local.tee $1
    local.get $0
    local.get $9
    f32.mul
    local.tee $2
    f32.add
    local.tee $0
    i32.reinterpret_f32
    local.tee $8
    i32.const 1124073472
    i32.gt_s
    br_if $folding-inner0
    local.get $8
    i32.const 1124073472
    i32.eq
    if
     local.get $1
     f32.const 4.299566569443414e-08
     f32.add
     local.get $0
     local.get $2
     f32.sub
     f32.gt
     br_if $folding-inner0
    else     
     local.get $8
     i32.const 2147483647
     i32.and
     i32.const 1125515264
     i32.gt_s
     if
      br $folding-inner1
     else      
      local.get $8
      i32.const -1021968384
      i32.eq
      if
       local.get $1
       local.get $0
       local.get $2
       f32.sub
       f32.le
       br_if $folding-inner1
      end
     end
    end
    local.get $8
    i32.const 2147483647
    i32.and
    local.tee $12
    i32.const 23
    i32.shr_s
    i32.const 127
    i32.sub
    local.set $6
    i32.const 0
    local.set $4
    local.get $12
    i32.const 1056964608
    i32.gt_s
    if
     i32.const 8388608
     local.get $6
     i32.const 1
     i32.add
     i32.shr_s
     local.get $8
     i32.add
     local.tee $12
     i32.const 2147483647
     i32.and
     i32.const 23
     i32.shr_s
     i32.const 127
     i32.sub
     local.set $6
     i32.const 8388607
     local.get $6
     i32.shr_s
     i32.const -1
     i32.xor
     local.get $12
     i32.and
     f32.reinterpret_i32
     local.set $0
     local.get $12
     i32.const 8388607
     i32.and
     i32.const 8388608
     i32.or
     i32.const 23
     local.get $6
     i32.sub
     i32.shr_s
     local.set $4
     i32.const 0
     local.get $4
     i32.sub
     local.get $4
     local.get $8
     i32.const 0
     i32.lt_s
     select
     local.set $4
     local.get $2
     local.get $0
     f32.sub
     local.set $2
    end
    local.get $1
    local.get $2
    f32.add
    i32.reinterpret_f32
    i32.const -32768
    i32.and
    f32.reinterpret_i32
    local.tee $0
    f32.const 0.693145751953125
    f32.mul
    local.tee $3
    local.get $1
    local.get $0
    local.get $2
    f32.sub
    f32.sub
    f32.const 0.6931471824645996
    f32.mul
    local.get $0
    f32.const 1.4286065379565116e-06
    f32.mul
    f32.add
    local.tee $1
    f32.add
    local.tee $2
    local.get $2
    f32.mul
    local.set $0
    local.get $7
    f32.const 1
    local.get $2
    local.get $2
    local.get $0
    f32.const 0.1666666716337204
    local.get $0
    f32.const -2.7777778450399637e-03
    local.get $0
    f32.const 6.61375597701408e-05
    local.get $0
    f32.const -1.6533901998627698e-06
    local.get $0
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
    local.tee $0
    f32.mul
    local.get $0
    f32.const 2
    f32.sub
    f32.div
    local.get $1
    local.get $2
    local.get $3
    f32.sub
    f32.sub
    local.tee $0
    local.get $2
    local.get $0
    f32.mul
    f32.add
    f32.sub
    local.get $2
    f32.sub
    f32.sub
    local.tee $0
    i32.reinterpret_f32
    local.get $4
    i32.const 23
    i32.shl
    i32.add
    local.tee $6
    i32.const 23
    i32.shr_s
    i32.const 0
    i32.le_s
    if (result f32)
     local.get $0
     local.get $4
     call $~lib/math/NativeMathf.scalbn
    else     
     local.get $6
     f32.reinterpret_i32
    end
    f32.mul
    return
   end
   local.get $7
   f32.const 1000000015047466219876688e6
   f32.mul
   f32.const 1000000015047466219876688e6
   f32.mul
   return
  end
  local.get $7
  f32.const 1.0000000031710769e-30
  f32.mul
  f32.const 1.0000000031710769e-30
  f32.mul
 )
 (func $assembly/libmf/pow (; 45 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  local.get $0
  local.get $1
  call $~lib/math/NativeMathf.pow
 )
 (func $assembly/libmf/round (; 46 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  f32.const 0.5
  f32.add
  f32.floor
  local.get $0
  f32.copysign
 )
 (func $assembly/libmf/sign (; 47 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  f32.const 0
  f32.gt
  if
   f32.const 1
   local.set $0
  else   
   local.get $0
   f32.const 0
   f32.lt
   if
    f32.const -1
    local.set $0
   end
  end
  local.get $0
 )
 (func $~lib/math/NativeMathf.sin (; 48 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f64)
  (local $2 f64)
  (local $3 i32)
  (local $4 i64)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  local.get $0
  i32.reinterpret_f32
  local.tee $3
  i32.const 31
  i32.shr_u
  local.set $7
  block $folding-inner0
   local.get $3
   i32.const 2147483647
   i32.and
   local.tee $3
   i32.const 1061752794
   i32.le_u
   if
    local.get $3
    i32.const 964689920
    i32.lt_u
    if
     local.get $0
     return
    end
    local.get $0
    f64.promote_f32
    local.tee $1
    local.get $1
    f64.mul
    local.tee $2
    local.get $1
    f64.mul
    local.set $5
    br $folding-inner0
   end
   local.get $3
   i32.const 1081824209
   i32.le_u
   if
    local.get $3
    i32.const 1075235811
    i32.le_u
    if
     local.get $7
     if (result f32)
      local.get $0
      f64.promote_f32
      f64.const 1.5707963267948966
      f64.add
      local.tee $1
      local.get $1
      f64.mul
      local.tee $1
      local.get $1
      f64.mul
      local.set $2
      f64.const 1
      local.get $1
      f64.const -0.499999997251031
      f64.mul
      f64.add
      local.get $2
      f64.const 0.04166662332373906
      f64.mul
      f64.add
      local.get $2
      local.get $1
      f64.mul
      f64.const -0.001388676377460993
      local.get $1
      f64.const 2.439044879627741e-05
      f64.mul
      f64.add
      f64.mul
      f64.add
      f32.demote_f64
      f32.neg
     else      
      local.get $0
      f64.promote_f32
      f64.const 1.5707963267948966
      f64.sub
      local.tee $1
      local.get $1
      f64.mul
      local.tee $1
      local.get $1
      f64.mul
      local.set $2
      f64.const 1
      local.get $1
      f64.const -0.499999997251031
      f64.mul
      f64.add
      local.get $2
      f64.const 0.04166662332373906
      f64.mul
      f64.add
      local.get $2
      local.get $1
      f64.mul
      f64.const -0.001388676377460993
      local.get $1
      f64.const 2.439044879627741e-05
      f64.mul
      f64.add
      f64.mul
      f64.add
      f32.demote_f64
     end
     return
    end
    local.get $0
    f64.promote_f32
    local.tee $1
    f64.const 3.141592653589793
    f64.add
    local.get $1
    f64.const 3.141592653589793
    f64.sub
    local.get $7
    select
    f64.neg
    local.tee $1
    local.get $1
    f64.mul
    local.tee $2
    local.get $1
    f64.mul
    local.set $5
    br $folding-inner0
   end
   local.get $3
   i32.const 1088565717
   i32.le_u
   if
    local.get $3
    i32.const 1085271519
    i32.le_u
    if
     local.get $7
     if (result f32)
      local.get $0
      f64.promote_f32
      f64.const 4.71238898038469
      f64.add
      local.tee $1
      local.get $1
      f64.mul
      local.tee $1
      local.get $1
      f64.mul
      local.set $2
      f64.const 1
      local.get $1
      f64.const -0.499999997251031
      f64.mul
      f64.add
      local.get $2
      f64.const 0.04166662332373906
      f64.mul
      f64.add
      local.get $2
      local.get $1
      f64.mul
      f64.const -0.001388676377460993
      local.get $1
      f64.const 2.439044879627741e-05
      f64.mul
      f64.add
      f64.mul
      f64.add
      f32.demote_f64
     else      
      local.get $0
      f64.promote_f32
      f64.const 4.71238898038469
      f64.sub
      local.tee $1
      local.get $1
      f64.mul
      local.tee $1
      local.get $1
      f64.mul
      local.set $2
      f64.const 1
      local.get $1
      f64.const -0.499999997251031
      f64.mul
      f64.add
      local.get $2
      f64.const 0.04166662332373906
      f64.mul
      f64.add
      local.get $2
      local.get $1
      f64.mul
      f64.const -0.001388676377460993
      local.get $1
      f64.const 2.439044879627741e-05
      f64.mul
      f64.add
      f64.mul
      f64.add
      f32.demote_f64
      f32.neg
     end
     return
    end
    local.get $0
    f64.promote_f32
    local.tee $1
    f64.const 6.283185307179586
    f64.add
    local.get $1
    f64.const 6.283185307179586
    f64.sub
    local.get $7
    select
    local.tee $2
    local.get $2
    f64.mul
    local.tee $1
    local.get $2
    f64.mul
    local.set $5
    local.get $2
    local.get $5
    f64.const -0.16666666641626524
    local.get $1
    f64.const 0.008333329385889463
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.get $5
    local.get $1
    local.get $1
    f64.mul
    f64.mul
    f64.const -1.9839334836096632e-04
    local.get $1
    f64.const 2.718311493989822e-06
    f64.mul
    f64.add
    f64.mul
    f64.add
    f32.demote_f64
    return
   end
   local.get $3
   i32.const 2139095040
   i32.ge_u
   if
    local.get $0
    local.get $0
    f32.sub
    return
   end
   block $~lib/math/rempio2f|inlined.1 (result i32)
    local.get $3
    i32.const 1305022427
    i32.lt_u
    if
     local.get $0
     f64.promote_f32
     local.tee $2
     f64.const 0.6366197723675814
     f64.mul
     f64.nearest
     local.set $1
     local.get $2
     local.get $1
     f64.const 1.5707963109016418
     f64.mul
     f64.sub
     local.get $1
     f64.const 1.5893254773528196e-08
     f64.mul
     f64.sub
     global.set $~lib/math/rempio2f_y
     local.get $1
     i32.trunc_f64_s
     br $~lib/math/rempio2f|inlined.1
    end
    i32.const 76
    i32.load
    local.get $3
    i32.const 23
    i32.shr_s
    i32.const 152
    i32.sub
    local.tee $6
    i32.const 6
    i32.shr_s
    local.tee $9
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.set $10
    i32.const 76
    i32.load
    local.get $9
    i32.const 1
    i32.add
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.set $4
    local.get $6
    i32.const 63
    i32.and
    local.tee $6
    i32.const 32
    i32.gt_s
    if (result i64)
     local.get $4
     local.get $6
     i32.const 32
     i32.sub
     i64.extend_i32_s
     i64.shl
     i32.const 76
     i32.load
     local.get $9
     i32.const 2
     i32.add
     i32.const 3
     i32.shl
     i32.add
     i64.load
     i64.const 96
     local.get $6
     i64.extend_i32_s
     i64.sub
     i64.shr_u
     i64.or
    else     
     local.get $4
     i64.const 32
     local.get $6
     i64.extend_i32_s
     i64.sub
     i64.shr_u
    end
    local.set $8
    f64.const 8.515303950216386e-20
    local.get $0
    f64.promote_f32
    f64.copysign
    local.get $3
    i32.const 8388607
    i32.and
    i32.const 8388608
    i32.or
    i64.extend_i32_s
    local.tee $11
    local.get $4
    i64.const 64
    local.get $6
    i64.extend_i32_s
    local.tee $4
    i64.sub
    i64.shr_u
    local.get $10
    local.get $4
    i64.shl
    i64.or
    i64.mul
    local.get $8
    local.get $11
    i64.mul
    i64.const 32
    i64.shr_u
    i64.add
    local.tee $4
    i64.const 2
    i64.shl
    local.tee $8
    f64.convert_i64_s
    f64.mul
    global.set $~lib/math/rempio2f_y
    i32.const 0
    local.get $4
    i64.const 62
    i64.shr_u
    local.get $8
    i64.const 63
    i64.shr_u
    i64.add
    i32.wrap_i64
    local.tee $3
    i32.sub
    local.get $3
    local.get $7
    select
   end
   local.set $3
   global.get $~lib/math/rempio2f_y
   local.set $1
   local.get $3
   i32.const 1
   i32.and
   if (result f32)
    local.get $1
    local.get $1
    f64.mul
    local.tee $1
    local.get $1
    f64.mul
    local.set $2
    f64.const 1
    local.get $1
    f64.const -0.499999997251031
    f64.mul
    f64.add
    local.get $2
    f64.const 0.04166662332373906
    f64.mul
    f64.add
    local.get $2
    local.get $1
    f64.mul
    f64.const -0.001388676377460993
    local.get $1
    f64.const 2.439044879627741e-05
    f64.mul
    f64.add
    f64.mul
    f64.add
    f32.demote_f64
   else    
    local.get $1
    local.get $1
    local.get $1
    f64.mul
    local.tee $2
    local.get $1
    f64.mul
    local.tee $1
    f64.const -0.16666666641626524
    local.get $2
    f64.const 0.008333329385889463
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.get $1
    local.get $2
    local.get $2
    f64.mul
    f64.mul
    f64.const -1.9839334836096632e-04
    local.get $2
    f64.const 2.718311493989822e-06
    f64.mul
    f64.add
    f64.mul
    f64.add
    f32.demote_f64
   end
   local.set $0
   local.get $0
   f32.neg
   local.get $0
   local.get $3
   i32.const 2
   i32.and
   select
   return
  end
  local.get $1
  local.get $5
  f64.const -0.16666666641626524
  local.get $2
  f64.const 0.008333329385889463
  f64.mul
  f64.add
  f64.mul
  f64.add
  local.get $5
  local.get $2
  local.get $2
  f64.mul
  f64.mul
  f64.const -1.9839334836096632e-04
  local.get $2
  f64.const 2.718311493989822e-06
  f64.mul
  f64.add
  f64.mul
  f64.add
  f32.demote_f64
 )
 (func $assembly/libmf/sin (; 49 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.sin
 )
 (func $~lib/math/NativeMathf.sinh (; 50 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f32)
  (local $2 i32)
  (local $3 f32)
  local.get $0
  i32.reinterpret_f32
  i32.const 2147483647
  i32.and
  local.tee $2
  f32.reinterpret_i32
  local.set $1
  f32.const 0.5
  local.get $0
  f32.copysign
  local.set $3
  local.get $2
  i32.const 1118925335
  i32.lt_u
  if
   local.get $1
   call $~lib/math/NativeMathf.expm1
   local.set $1
   local.get $2
   i32.const 1065353216
   i32.lt_u
   if
    local.get $2
    i32.const 964689920
    i32.lt_u
    if
     local.get $0
     return
    end
    local.get $3
    f32.const 2
    local.get $1
    f32.mul
    local.get $1
    local.get $1
    f32.mul
    local.get $1
    f32.const 1
    f32.add
    f32.div
    f32.sub
    f32.mul
    return
   end
   local.get $3
   local.get $1
   local.get $1
   local.get $1
   f32.const 1
   f32.add
   f32.div
   f32.add
   f32.mul
   return
  end
  f32.const 2
  local.get $3
  f32.mul
  local.get $1
  f32.const 162.88958740234375
  f32.sub
  call $~lib/math/NativeMathf.exp
  f32.const 1661534994731144841129758e11
  f32.mul
  f32.const 1661534994731144841129758e11
  f32.mul
  f32.mul
 )
 (func $assembly/libmf/sinh (; 51 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.sinh
 )
 (func $assembly/libmf/sqrt (; 52 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  f32.sqrt
 )
 (func $~lib/math/NativeMathf.tan (; 53 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 f64)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  local.get $0
  i32.reinterpret_f32
  local.tee $4
  i32.const 31
  i32.shr_u
  local.set $7
  block $folding-inner1
   block $folding-inner0
    local.get $4
    i32.const 2147483647
    i32.and
    local.tee $4
    i32.const 1061752794
    i32.le_u
    if
     local.get $4
     i32.const 964689920
     i32.lt_u
     if
      local.get $0
      return
     end
     local.get $0
     f64.promote_f32
     local.tee $2
     local.get $2
     f64.mul
     local.tee $1
     local.get $2
     f64.mul
     local.set $3
     br $folding-inner0
    end
    local.get $4
    i32.const 1081824209
    i32.le_u
    if
     local.get $4
     i32.const 1075235811
     i32.le_u
     if
      local.get $0
      f64.promote_f32
      local.tee $1
      f64.const 1.5707963267948966
      f64.add
      local.get $1
      f64.const 1.5707963267948966
      f64.sub
      local.get $7
      select
      local.tee $2
      local.get $2
      f64.mul
      local.tee $1
      local.get $2
      f64.mul
      local.set $3
      br $folding-inner1
     else      
      local.get $0
      f64.promote_f32
      local.tee $1
      f64.const 3.141592653589793
      f64.add
      local.get $1
      f64.const 3.141592653589793
      f64.sub
      local.get $7
      select
      local.tee $2
      local.get $2
      f64.mul
      local.tee $1
      local.get $2
      f64.mul
      local.set $3
      br $folding-inner0
     end
     unreachable
    end
    local.get $4
    i32.const 1088565717
    i32.le_u
    if
     local.get $4
     i32.const 1085271519
     i32.le_u
     if
      local.get $0
      f64.promote_f32
      local.tee $1
      f64.const 4.71238898038469
      f64.add
      local.get $1
      f64.const 4.71238898038469
      f64.sub
      local.get $7
      select
      local.tee $2
      local.get $2
      f64.mul
      local.tee $1
      local.get $2
      f64.mul
      local.set $3
      br $folding-inner1
     else      
      local.get $0
      f64.promote_f32
      local.tee $1
      f64.const 6.283185307179586
      f64.add
      local.get $1
      f64.const 6.283185307179586
      f64.sub
      local.get $7
      select
      local.tee $2
      local.get $2
      f64.mul
      local.tee $1
      local.get $2
      f64.mul
      local.set $3
      br $folding-inner0
     end
     unreachable
    end
    local.get $4
    i32.const 2139095040
    i32.ge_u
    if
     local.get $0
     local.get $0
     f32.sub
     return
    end
    block $~lib/math/rempio2f|inlined.2 (result i32)
     local.get $4
     i32.const 1305022427
     i32.lt_u
     if
      local.get $0
      f64.promote_f32
      local.tee $2
      f64.const 0.6366197723675814
      f64.mul
      f64.nearest
      local.set $1
      local.get $2
      local.get $1
      f64.const 1.5707963109016418
      f64.mul
      f64.sub
      local.get $1
      f64.const 1.5893254773528196e-08
      f64.mul
      f64.sub
      global.set $~lib/math/rempio2f_y
      local.get $1
      i32.trunc_f64_s
      br $~lib/math/rempio2f|inlined.2
     end
     i32.const 76
     i32.load
     local.get $4
     i32.const 23
     i32.shr_s
     i32.const 152
     i32.sub
     local.tee $6
     i32.const 6
     i32.shr_s
     local.tee $9
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.set $10
     i32.const 76
     i32.load
     local.get $9
     i32.const 1
     i32.add
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.set $5
     local.get $6
     i32.const 63
     i32.and
     local.tee $6
     i32.const 32
     i32.gt_s
     if (result i64)
      local.get $5
      local.get $6
      i32.const 32
      i32.sub
      i64.extend_i32_s
      i64.shl
      i32.const 76
      i32.load
      local.get $9
      i32.const 2
      i32.add
      i32.const 3
      i32.shl
      i32.add
      i64.load
      i64.const 96
      local.get $6
      i64.extend_i32_s
      i64.sub
      i64.shr_u
      i64.or
     else      
      local.get $5
      i64.const 32
      local.get $6
      i64.extend_i32_s
      i64.sub
      i64.shr_u
     end
     local.set $8
     f64.const 8.515303950216386e-20
     local.get $0
     f64.promote_f32
     f64.copysign
     local.get $4
     i32.const 8388607
     i32.and
     i32.const 8388608
     i32.or
     i64.extend_i32_s
     local.tee $11
     local.get $5
     i64.const 64
     local.get $6
     i64.extend_i32_s
     local.tee $5
     i64.sub
     i64.shr_u
     local.get $10
     local.get $5
     i64.shl
     i64.or
     i64.mul
     local.get $8
     local.get $11
     i64.mul
     i64.const 32
     i64.shr_u
     i64.add
     local.tee $5
     i64.const 2
     i64.shl
     local.tee $8
     f64.convert_i64_s
     f64.mul
     global.set $~lib/math/rempio2f_y
     i32.const 0
     local.get $5
     i64.const 62
     i64.shr_u
     local.get $8
     i64.const 63
     i64.shr_u
     i64.add
     i32.wrap_i64
     local.tee $4
     i32.sub
     local.get $4
     local.get $7
     select
    end
    local.set $4
    global.get $~lib/math/rempio2f_y
    local.tee $2
    local.get $2
    f64.mul
    local.tee $1
    local.get $2
    f64.mul
    local.set $3
    local.get $2
    local.get $3
    f64.const 0.3333313950307914
    local.get $1
    f64.const 0.13339200271297674
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.get $3
    local.get $1
    local.get $1
    f64.mul
    local.tee $2
    f64.mul
    f64.const 0.05338123784456704
    local.get $1
    f64.const 0.024528318116654728
    f64.mul
    f64.add
    local.get $2
    f64.const 0.002974357433599673
    local.get $1
    f64.const 0.009465647849436732
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $1
    f64.const -1
    local.get $1
    f64.div
    local.get $1
    local.get $4
    i32.const 1
    i32.and
    select
    f32.demote_f64
    return
   end
   local.get $2
   local.get $3
   f64.const 0.3333313950307914
   local.get $1
   f64.const 0.13339200271297674
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $3
   local.get $1
   local.get $1
   f64.mul
   local.tee $2
   f64.mul
   f64.const 0.05338123784456704
   local.get $1
   f64.const 0.024528318116654728
   f64.mul
   f64.add
   local.get $2
   f64.const 0.002974357433599673
   local.get $1
   f64.const 0.009465647849436732
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   f32.demote_f64
   return
  end
  f64.const -1
  local.get $2
  local.get $3
  f64.const 0.3333313950307914
  local.get $1
  f64.const 0.13339200271297674
  f64.mul
  f64.add
  f64.mul
  f64.add
  local.get $3
  local.get $1
  local.get $1
  f64.mul
  local.tee $2
  f64.mul
  f64.const 0.05338123784456704
  local.get $1
  f64.const 0.024528318116654728
  f64.mul
  f64.add
  local.get $2
  f64.const 0.002974357433599673
  local.get $1
  f64.const 0.009465647849436732
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.div
  f32.demote_f64
 )
 (func $assembly/libmf/tan (; 54 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.tan
 )
 (func $~lib/math/NativeMathf.tanh (; 55 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
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
  i32.const 1057791828
  i32.gt_u
  if
   local.get $2
   i32.const 1092616192
   i32.gt_u
   if (result f32)
    f32.const 1
    f32.const 0
    local.get $1
    f32.div
    f32.add
   else    
    f32.const 1
    f32.const 2
    f32.const 2
    local.get $1
    f32.mul
    call $~lib/math/NativeMathf.expm1
    f32.const 2
    f32.add
    f32.div
    f32.sub
   end
   local.set $1
  else   
   local.get $2
   i32.const 1048757624
   i32.gt_u
   if
    f32.const 2
    local.get $1
    f32.mul
    call $~lib/math/NativeMathf.expm1
    local.tee $1
    local.get $1
    f32.const 2
    f32.add
    f32.div
    local.set $1
   else    
    local.get $2
    i32.const 8388608
    i32.ge_u
    if
     f32.const -2
     local.get $1
     f32.mul
     call $~lib/math/NativeMathf.expm1
     local.tee $1
     f32.neg
     local.get $1
     f32.const 2
     f32.add
     f32.div
     local.set $1
    end
   end
  end
  local.get $1
  local.get $0
  f32.copysign
 )
 (func $assembly/libmf/tanh (; 56 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  call $~lib/math/NativeMathf.tanh
 )
 (func $assembly/libmf/trunc (; 57 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
  f32.trunc
 )
 (func $null (; 58 ;) (type $FUNCSIG$v)
  nop
 )
)
