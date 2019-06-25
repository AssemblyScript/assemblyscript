(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$dd (func (param f64) (result f64)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "computeLine" (func $../../examples/mandelbrot/assembly/index/computeLine))
 (func $~lib/math/NativeMath.log (; 0 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
 (func $~lib/math/NativeMath.log2 (; 1 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 i32)
  (local $3 i64)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  local.get $0
  i64.reinterpret_f64
  local.tee $3
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $2
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
   local.get $3
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
   i32.const -54
   local.set $6
   local.get $0
   f64.const 18014398509481984
   f64.mul
   i64.reinterpret_f64
   local.tee $3
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
    local.get $3
    i64.const 32
    i64.shl
    i64.const 0
    i64.eq
    i32.const 0
    local.get $2
    i32.const 1072693248
    i32.eq
    select
    if
     f64.const 0
     return
    end
   end
  end
  local.get $3
  i64.const 4294967295
  i64.and
  local.get $2
  i32.const 614242
  i32.add
  local.tee $2
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
  local.tee $1
  f64.const 2
  local.get $1
  f64.add
  f64.div
  local.tee $4
  local.get $4
  f64.mul
  local.tee $5
  local.get $5
  f64.mul
  local.set $0
  local.get $1
  local.get $1
  f64.const 0.5
  local.get $1
  f64.mul
  local.get $1
  f64.mul
  local.tee $1
  f64.sub
  i64.reinterpret_f64
  i64.const -4294967296
  i64.and
  f64.reinterpret_i64
  local.tee $7
  f64.sub
  local.get $1
  f64.sub
  local.get $4
  local.get $1
  local.get $5
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
  f64.add
  local.set $0
  local.get $2
  i32.const 20
  i32.shr_u
  i32.const 1023
  i32.sub
  local.get $6
  i32.add
  f64.convert_i32_s
  local.tee $4
  local.get $7
  f64.const 1.4426950407214463
  f64.mul
  local.tee $5
  f64.add
  local.set $1
  local.get $0
  local.get $7
  f64.add
  f64.const 1.6751713164886512e-10
  f64.mul
  local.get $0
  f64.const 1.4426950407214463
  f64.mul
  f64.add
  local.get $4
  local.get $1
  f64.sub
  local.get $5
  f64.add
  f64.add
  local.get $1
  f64.add
 )
 (func $../../examples/mandelbrot/assembly/index/computeLine (; 2 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 f64)
  (local $5 f64)
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
  f64.convert_i32_u
  local.get $2
  f64.convert_i32_u
  f64.const 0.5
  f64.mul
  f64.sub
  f64.const 10
  f64.const 3
  local.get $1
  f64.convert_i32_u
  f64.mul
  f64.const 4
  local.get $2
  f64.convert_i32_u
  f64.mul
  f64.min
  f64.div
  local.tee $9
  f64.mul
  local.set $10
  local.get $1
  f64.convert_i32_u
  f64.const 0.625
  f64.mul
  local.get $9
  f64.mul
  local.set $12
  local.get $0
  local.get $1
  i32.mul
  i32.const 1
  i32.shl
  local.set $0
  f64.const 1
  local.get $3
  f64.convert_i32_u
  f64.div
  local.set $13
  f64.const 8
  local.get $3
  f64.convert_i32_u
  f64.min
  local.set $14
  loop $loop|0
   block $break|0
    local.get $7
    local.get $1
    i32.ge_u
    br_if $break|0
    local.get $7
    f64.convert_i32_u
    local.get $9
    f64.mul
    local.get $12
    f64.sub
    local.set $11
    f64.const 0
    local.set $4
    f64.const 0
    local.set $5
    i32.const 0
    local.set $6
    loop $continue|1
     block $break|1
      local.get $4
      local.get $4
      f64.mul
      local.tee $15
      local.get $5
      local.get $5
      f64.mul
      local.tee $8
      f64.add
      f64.const 4
      f64.le
      i32.eqz
      br_if $break|1
      f64.const 2
      local.get $4
      f64.mul
      local.get $5
      f64.mul
      local.get $10
      f64.add
      local.set $5
      local.get $15
      local.get $8
      f64.sub
      local.get $11
      f64.add
      local.set $4
      local.get $6
      local.get $3
      i32.ge_u
      br_if $break|1
      local.get $6
      i32.const 1
      i32.add
      local.set $6
      br $continue|1
     end
    end
    loop $continue|2
     local.get $6
     f64.convert_i32_u
     local.get $14
     f64.lt
     if
      local.get $4
      local.get $4
      f64.mul
      local.get $5
      local.get $5
      f64.mul
      f64.sub
      local.get $11
      f64.add
      f64.const 2
      local.get $4
      f64.mul
      local.get $5
      f64.mul
      local.get $10
      f64.add
      local.set $5
      local.set $4
      local.get $6
      i32.const 1
      i32.add
      local.set $6
      br $continue|2
     end
    end
    i32.const 2047
    local.set $2
    local.get $7
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.get $4
    local.get $4
    f64.mul
    local.get $5
    local.get $5
    f64.mul
    f64.add
    local.tee $8
    f64.const 1
    f64.gt
    if (result i32)
     f64.const 2047
     local.get $6
     i32.const 1
     i32.add
     f64.convert_i32_u
     f64.const 0.5
     local.get $8
     call $~lib/math/NativeMath.log
     f64.mul
     call $~lib/math/NativeMath.log2
     f64.sub
     local.get $13
     f64.mul
     f64.const 0
     f64.max
     f64.const 1
     f64.min
     f64.mul
     i32.trunc_f64_u
    else     
     i32.const 2047
    end
    i32.store16
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|0
   end
  end
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
  nop
 )
)
