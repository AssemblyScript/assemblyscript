(module
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $../../examples/mandelbrot/assembly/index/NUM_COLORS i32 (i32.const 2048))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/util/math/LOG_TABLE_BITS i32 (i32.const 7))
 (global $~lib/util/math/log_data_tab1 i32 (i32.const 2088))
 (global $~lib/util/math/log_data_tab2 i32 (i32.const 4184))
 (global $~lib/util/math/LOG2_TABLE_BITS i32 (i32.const 6))
 (global $~lib/util/math/log2_data_tab1 i32 (i32.const 5256))
 (global $~lib/util/math/log2_data_tab2 i32 (i32.const 6328))
 (export "memory" (memory $0))
 (export "computeLine" (func $../../examples/mandelbrot/assembly/index/computeLine))
 (func $~lib/math/NativeMath.log (; 0 ;) (param $0 f64) (result f64)
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
  (local $13 i64)
  (local $14 i32)
  (local $15 i64)
  (local $16 i64)
  (local $17 i32)
  (local $18 i32)
  (local $19 f64)
  (local $20 f64)
  block $~lib/util/math/log_lut|inlined.0 (result f64)
   local.get $0
   local.set $1
   local.get $1
   i64.reinterpret_f64
   local.set $2
   local.get $2
   i64.const 4606619468846596096
   i64.sub
   i64.const 854320534781952
   i64.lt_u
   if
    local.get $1
    f64.const 1
    f64.sub
    local.set $3
    local.get $3
    local.get $3
    f64.mul
    local.set $4
    local.get $4
    local.get $3
    f64.mul
    local.set $5
    local.get $5
    f64.const 0.3333333333333352
    local.get $3
    f64.const -0.24999999999998432
    f64.mul
    f64.add
    local.get $4
    f64.const 0.19999999999320328
    f64.mul
    f64.add
    local.get $5
    f64.const -0.16666666669929706
    local.get $3
    f64.const 0.14285715076560868
    f64.mul
    f64.add
    local.get $4
    f64.const -0.12499997863982555
    f64.mul
    f64.add
    local.get $5
    f64.const 0.11110712032936046
    local.get $3
    f64.const -0.10000486757818193
    f64.mul
    f64.add
    local.get $4
    f64.const 0.09181994006195467
    f64.mul
    f64.add
    local.get $5
    f64.const -0.08328363062289341
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    local.set $6
    local.get $3
    f64.const 134217728
    f64.mul
    local.set $7
    local.get $3
    local.get $7
    f64.add
    local.get $7
    f64.sub
    local.set $8
    local.get $3
    local.get $8
    f64.sub
    local.set $9
    local.get $8
    local.get $8
    f64.mul
    f64.const -0.5
    f64.mul
    local.set $7
    local.get $3
    local.get $7
    f64.add
    local.set $10
    local.get $3
    local.get $10
    f64.sub
    local.get $7
    f64.add
    local.set $11
    local.get $11
    f64.const -0.5
    local.get $9
    f64.mul
    local.get $8
    local.get $3
    f64.add
    f64.mul
    f64.add
    local.set $11
    local.get $6
    local.get $11
    f64.add
    local.get $10
    f64.add
    br $~lib/util/math/log_lut|inlined.0
   end
   local.get $2
   i64.const 48
   i64.shr_u
   i32.wrap_i64
   local.set $12
   local.get $12
   i32.const 16
   i32.sub
   i32.const 32736
   i32.ge_u
   if
    local.get $2
    i64.const 1
    i64.shl
    i64.const 0
    i64.eq
    if
     f64.const -1
     local.get $1
     local.get $1
     f64.mul
     f64.div
     br $~lib/util/math/log_lut|inlined.0
    end
    local.get $2
    i64.const 9218868437227405312
    i64.eq
    if
     local.get $1
     br $~lib/util/math/log_lut|inlined.0
    end
    local.get $12
    i32.const 32768
    i32.and
    if (result i32)
     i32.const 1
    else
     local.get $12
     i32.const 32752
     i32.and
     i32.const 32752
     i32.eq
    end
    if
     local.get $1
     local.get $1
     f64.sub
     local.get $1
     local.get $1
     f64.sub
     f64.div
     br $~lib/util/math/log_lut|inlined.0
    end
    local.get $1
    f64.const 4503599627370496
    f64.mul
    i64.reinterpret_f64
    local.set $2
    local.get $2
    i64.const 52
    i64.const 52
    i64.shl
    i64.sub
    local.set $2
   end
   local.get $2
   i64.const 4604367669032910848
   i64.sub
   local.set $13
   local.get $13
   i64.const 52
   global.get $~lib/util/math/LOG_TABLE_BITS
   i64.extend_i32_s
   i64.sub
   i64.shr_u
   i64.const 127
   i64.and
   i32.wrap_i64
   local.set $14
   local.get $13
   i64.const 52
   i64.shr_s
   local.set $15
   local.get $2
   local.get $13
   i64.const 4095
   i64.const 52
   i64.shl
   i64.and
   i64.sub
   local.set $16
   i32.const 2088
   i32.load offset=4
   local.set $17
   i32.const 4184
   i32.load offset=4
   local.set $18
   local.get $17
   local.get $14
   i32.const 1
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load
   local.set $11
   local.get $17
   local.get $14
   i32.const 1
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load offset=8
   local.set $10
   local.get $16
   f64.reinterpret_i64
   local.set $9
   local.get $18
   local.get $14
   i32.const 4
   i32.shl
   i32.add
   f64.load
   local.set $8
   local.get $18
   local.get $14
   i32.const 4
   i32.shl
   i32.add
   f64.load offset=8
   local.set $7
   local.get $9
   local.get $8
   f64.sub
   local.get $7
   f64.sub
   local.get $11
   f64.mul
   local.set $6
   local.get $15
   f64.convert_i64_s
   local.set $5
   local.get $5
   f64.const 0.6931471805598903
   f64.mul
   local.get $10
   f64.add
   local.set $4
   local.get $4
   local.get $6
   f64.add
   local.set $3
   local.get $4
   local.get $3
   f64.sub
   local.get $6
   f64.add
   local.get $5
   f64.const 5.497923018708371e-14
   f64.mul
   f64.add
   local.set $19
   local.get $6
   local.get $6
   f64.mul
   local.set $20
   local.get $19
   local.get $20
   f64.const -0.5000000000000001
   f64.mul
   f64.add
   local.get $6
   local.get $20
   f64.mul
   f64.const 0.33333333331825593
   local.get $6
   f64.const -0.2499999999622955
   f64.mul
   f64.add
   local.get $20
   f64.const 0.20000304511814496
   local.get $6
   f64.const -0.16667054827627667
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $3
   f64.add
  end
  return
 )
 (func $~lib/math/NativeMath.log2 (; 1 ;) (param $0 f64) (result f64)
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
  (local $13 i64)
  (local $14 i32)
  (local $15 i64)
  (local $16 i64)
  (local $17 i32)
  (local $18 i32)
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 f64)
  (local $24 f64)
  (local $25 f64)
  block $~lib/util/math/log2_lut|inlined.0 (result f64)
   local.get $0
   local.set $1
   local.get $1
   i64.reinterpret_f64
   local.set $2
   local.get $2
   i64.const 4606800540372828160
   i64.sub
   i64.const 581272283906048
   i64.lt_u
   if
    local.get $1
    f64.const 1
    f64.sub
    local.set $3
    local.get $3
    i64.reinterpret_f64
    i64.const -4294967296
    i64.and
    f64.reinterpret_i64
    local.set $4
    local.get $3
    local.get $4
    f64.sub
    local.set $5
    local.get $4
    f64.const 1.4426950407214463
    f64.mul
    local.set $6
    local.get $5
    f64.const 1.4426950407214463
    f64.mul
    local.get $3
    f64.const 1.6751713164886512e-10
    f64.mul
    f64.add
    local.set $7
    local.get $3
    local.get $3
    f64.mul
    local.set $8
    local.get $8
    local.get $8
    f64.mul
    local.set $9
    local.get $8
    f64.const -0.7213475204444817
    local.get $3
    f64.const 0.48089834696298744
    f64.mul
    f64.add
    f64.mul
    local.set $10
    local.get $6
    local.get $10
    f64.add
    local.set $11
    local.get $7
    local.get $6
    local.get $11
    f64.sub
    local.get $10
    f64.add
    f64.add
    local.set $7
    local.get $7
    local.get $9
    f64.const -0.360673760222145
    local.get $3
    f64.const 0.2885390081805197
    f64.mul
    f64.add
    local.get $8
    f64.const -0.24044917405728863
    local.get $3
    f64.const 0.2060992861022954
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.get $9
    f64.const -0.18033596705327856
    local.get $3
    f64.const 0.1603032746063156
    f64.mul
    f64.add
    local.get $8
    f64.const -0.14483316576701266
    local.get $3
    f64.const 0.13046826811283835
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $7
    local.get $11
    local.get $7
    f64.add
    br $~lib/util/math/log2_lut|inlined.0
   end
   local.get $2
   i64.const 48
   i64.shr_u
   i32.wrap_i64
   local.set $12
   local.get $12
   i32.const 16
   i32.sub
   i32.const 32736
   i32.ge_u
   if
    local.get $2
    i64.const 1
    i64.shl
    i64.const 0
    i64.eq
    if
     f64.const -1
     local.get $1
     local.get $1
     f64.mul
     f64.div
     br $~lib/util/math/log2_lut|inlined.0
    end
    local.get $2
    i64.const 9218868437227405312
    i64.eq
    if
     local.get $1
     br $~lib/util/math/log2_lut|inlined.0
    end
    local.get $12
    i32.const 32768
    i32.and
    if (result i32)
     i32.const 1
    else
     local.get $12
     i32.const 32752
     i32.and
     i32.const 32752
     i32.eq
    end
    if
     local.get $1
     local.get $1
     f64.sub
     local.get $1
     local.get $1
     f64.sub
     f64.div
     br $~lib/util/math/log2_lut|inlined.0
    end
    local.get $1
    f64.const 4503599627370496
    f64.mul
    i64.reinterpret_f64
    local.set $2
    local.get $2
    i64.const 52
    i64.const 52
    i64.shl
    i64.sub
    local.set $2
   end
   local.get $2
   i64.const 4604367669032910848
   i64.sub
   local.set $13
   local.get $13
   i64.const 52
   global.get $~lib/util/math/LOG2_TABLE_BITS
   i64.extend_i32_s
   i64.sub
   i64.shr_u
   i64.const 63
   i64.and
   i32.wrap_i64
   local.set $14
   local.get $13
   i64.const 52
   i64.shr_s
   local.set $15
   local.get $2
   local.get $13
   i64.const -4503599627370496
   i64.and
   i64.sub
   local.set $16
   i32.const 5256
   i32.load offset=4
   local.set $17
   i32.const 6328
   i32.load offset=4
   local.set $18
   local.get $17
   local.get $14
   i32.const 1
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load
   local.set $11
   local.get $17
   local.get $14
   i32.const 1
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load offset=8
   local.set $10
   local.get $16
   f64.reinterpret_i64
   local.set $9
   local.get $15
   f64.convert_i64_s
   local.set $8
   local.get $18
   local.get $14
   i32.const 1
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load
   local.set $7
   local.get $18
   local.get $14
   i32.const 1
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load offset=8
   local.set $6
   local.get $9
   local.get $7
   f64.sub
   local.get $6
   f64.sub
   local.get $11
   f64.mul
   local.set $5
   local.get $5
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $4
   local.get $5
   local.get $4
   f64.sub
   local.set $3
   local.get $4
   f64.const 1.4426950407214463
   f64.mul
   local.set $19
   local.get $3
   f64.const 1.4426950407214463
   f64.mul
   local.get $5
   f64.const 1.6751713164886512e-10
   f64.mul
   f64.add
   local.set $20
   local.get $8
   local.get $10
   f64.add
   local.set $21
   local.get $21
   local.get $19
   f64.add
   local.set $22
   local.get $21
   local.get $22
   f64.sub
   local.get $19
   f64.add
   local.get $20
   f64.add
   local.set $23
   local.get $5
   local.get $5
   f64.mul
   local.set $24
   f64.const -0.7213475204444882
   local.get $5
   f64.const 0.4808983469629985
   f64.mul
   f64.add
   local.get $24
   f64.const -0.36067375954075914
   local.get $5
   f64.const 0.2885390073180969
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $24
   local.get $24
   f64.mul
   f64.const -0.2404693555628422
   local.get $5
   f64.const 0.2061202382173603
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.set $25
   local.get $23
   local.get $24
   local.get $25
   f64.mul
   f64.add
   local.get $22
   f64.add
  end
  return
 )
 (func $../../examples/mandelbrot/assembly/index/computeLine (; 2 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 i32)
  (local $12 f64)
  (local $13 i32)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 i32)
  (local $21 f64)
  (local $22 f64)
  (local $23 f64)
  (local $24 f64)
  local.get $1
  f64.convert_i32_u
  f64.const 1
  f64.const 1.6
  f64.div
  f64.mul
  local.set $4
  local.get $2
  f64.convert_i32_u
  f64.const 1
  f64.const 2
  f64.div
  f64.mul
  local.set $5
  f64.const 10
  i32.const 3
  local.get $1
  i32.mul
  local.tee $6
  i32.const 4
  local.get $2
  i32.mul
  local.tee $7
  local.get $6
  local.get $7
  i32.lt_s
  select
  f64.convert_i32_s
  f64.div
  local.set $8
  local.get $0
  f64.convert_i32_u
  local.get $5
  f64.sub
  local.get $8
  f64.mul
  local.set $9
  local.get $4
  local.get $8
  f64.mul
  local.set $10
  local.get $0
  local.get $1
  i32.mul
  i32.const 1
  i32.shl
  local.set $11
  f64.const 1
  local.get $3
  f64.convert_i32_u
  f64.div
  local.set $12
  i32.const 8
  local.tee $6
  local.get $3
  local.tee $7
  local.get $6
  local.get $7
  i32.lt_u
  select
  local.set $13
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $6
    f64.convert_i32_u
    local.get $8
    f64.mul
    local.get $10
    f64.sub
    local.set $14
    f64.const 0
    local.set $15
    f64.const 0
    local.set $16
    i32.const 0
    local.set $7
    block $break|1
     loop $continue|1
      local.get $15
      local.get $15
      f64.mul
      local.tee $17
      local.get $16
      local.get $16
      f64.mul
      local.tee $18
      f64.add
      f64.const 4
      f64.le
      i32.eqz
      br_if $break|1
      f64.const 2
      local.get $15
      f64.mul
      local.get $16
      f64.mul
      local.get $9
      f64.add
      local.set $16
      local.get $17
      local.get $18
      f64.sub
      local.get $14
      f64.add
      local.set $15
      local.get $7
      local.get $3
      i32.ge_u
      if
       br $break|1
      end
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $continue|1
     end
     unreachable
    end
    block $break|2
     loop $continue|2
      local.get $7
      local.get $13
      i32.lt_u
      i32.eqz
      br_if $break|2
      local.get $15
      local.get $15
      f64.mul
      local.get $16
      local.get $16
      f64.mul
      f64.sub
      local.get $14
      f64.add
      local.set $19
      f64.const 2
      local.get $15
      f64.mul
      local.get $16
      f64.mul
      local.get $9
      f64.add
      local.set $16
      local.get $19
      local.set $15
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $continue|2
     end
     unreachable
    end
    global.get $../../examples/mandelbrot/assembly/index/NUM_COLORS
    i32.const 1
    i32.sub
    local.set $20
    local.get $15
    local.get $15
    f64.mul
    local.get $16
    local.get $16
    f64.mul
    f64.add
    local.set $19
    local.get $19
    f64.const 1
    f64.gt
    if
     f64.const 0.5
     local.get $19
     call $~lib/math/NativeMath.log
     f64.mul
     call $~lib/math/NativeMath.log2
     local.set $21
     global.get $../../examples/mandelbrot/assembly/index/NUM_COLORS
     i32.const 1
     i32.sub
     f64.convert_i32_s
     local.get $7
     i32.const 1
     i32.add
     f64.convert_i32_u
     local.get $21
     f64.sub
     local.get $12
     f64.mul
     local.set $24
     f64.const 0
     local.set $23
     f64.const 1
     local.set $22
     local.get $24
     local.get $23
     f64.max
     local.get $22
     f64.min
     f64.mul
     i32.trunc_f64_u
     local.set $20
    end
    local.get $11
    local.get $6
    i32.const 1
    i32.shl
    i32.add
    local.get $20
    i32.store16
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
 )
 (func $null (; 3 ;)
  unreachable
 )
)
