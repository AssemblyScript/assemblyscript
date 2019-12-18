(module
 (type $none_=>_none (func))
 (type $f32_f32_=>_f32 (func (param f32 f32) (result f32)))
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (type $f32_i32_=>_f32 (func (param f32 i32) (result f32)))
 (type $f64_i32_=>_f64 (func (param f64 i32) (result f64)))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $binary/b (mut i32) (i32.const 0))
 (global $binary/i (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/util/math/EXP_TABLE_BITS i32 (i32.const 7))
 (global $~lib/util/math/SIGN_BIAS i32 (i32.const 262144))
 (global $~lib/util/math/POW_LOG_TABLE_BITS i32 (i32.const 7))
 (global $~lib/util/math/pow_log_data_tab i32 (i32.const 4136))
 (global $~lib/util/math/log_tail (mut f64) (f64.const 0))
 (global $~lib/util/math/exp_data_tab i32 (i32.const 6232))
 (global $binary/I (mut i64) (i64.const 0))
 (global $binary/f (mut f32) (f32.const 0))
 (global $~lib/util/math/EXP2F_TABLE_BITS i32 (i32.const 5))
 (global $~lib/util/math/LOG2F_TABLE_BITS i32 (i32.const 4))
 (global $~lib/util/math/log2f_data_tab i32 (i32.const 6536))
 (global $~lib/util/math/exp2f_data_tab i32 (i32.const 6840))
 (global $binary/F (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/math/NativeMath.scalbn (; 0 ;) (param $0 f64) (param $1 i32) (result f64)
  (local $2 f64)
  (local $3 f64)
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
 (func $~lib/math/NativeMath.pow (; 1 ;) (param $0 f64) (param $1 f64) (result f64)
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
  (local $13 i64)
  (local $14 i64)
  (local $15 f64)
  (local $16 i32)
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
  (local $41 i32)
  (local $42 i32)
  (local $43 i64)
  (local $44 i64)
  block $~lib/util/math/pow_lut|inlined.0 (result f64)
   local.get $0
   local.set $3
   local.get $1
   local.set $2
   i32.const 0
   local.set $4
   local.get $3
   i64.reinterpret_f64
   local.set $5
   local.get $2
   i64.reinterpret_f64
   local.set $6
   local.get $5
   i64.const 52
   i64.shr_u
   local.set $7
   local.get $6
   i64.const 52
   i64.shr_u
   local.set $8
   local.get $7
   i64.const 1
   i64.sub
   i64.const 2046
   i64.ge_u
   if (result i32)
    i32.const 1
   else
    local.get $8
    i64.const 2047
    i64.and
    i64.const 958
    i64.sub
    i64.const 128
    i64.ge_u
   end
   if
    local.get $6
    local.set $9
    local.get $9
    i64.const 1
    i64.shl
    i64.const 1
    i64.sub
    i64.const -9007199254740993
    i64.ge_u
    if
     local.get $6
     i64.const 1
     i64.shl
     i64.const 0
     i64.eq
     if
      f64.const 1
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $5
     i64.const 4607182418800017408
     i64.eq
     if
      f64.const nan:0x8000000000000
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $5
     i64.const 1
     i64.shl
     i64.const -9007199254740992
     i64.gt_u
     if (result i32)
      i32.const 1
     else
      local.get $6
      i64.const 1
      i64.shl
      i64.const -9007199254740992
      i64.gt_u
     end
     if
      local.get $3
      local.get $2
      f64.add
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $5
     i64.const 1
     i64.shl
     i64.const 9214364837600034816
     i64.eq
     if
      f64.const nan:0x8000000000000
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $5
     i64.const 1
     i64.shl
     i64.const 9214364837600034816
     i64.lt_u
     local.get $6
     i64.const 63
     i64.shr_u
     i64.const 0
     i64.ne
     i32.eqz
     i32.eq
     if
      f64.const 0
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $2
     local.get $2
     f64.mul
     br $~lib/util/math/pow_lut|inlined.0
    end
    local.get $5
    local.set $9
    local.get $9
    i64.const 1
    i64.shl
    i64.const 1
    i64.sub
    i64.const -9007199254740993
    i64.ge_u
    if
     local.get $3
     local.get $3
     f64.mul
     local.set $10
     local.get $5
     i64.const 63
     i64.shr_u
     i32.wrap_i64
     if (result i32)
      block $~lib/util/math/checkint|inlined.0 (result i32)
       local.get $6
       local.set $9
       local.get $9
       i64.const 52
       i64.shr_u
       i64.const 2047
       i64.and
       local.set $11
       local.get $11
       i64.const 1023
       i64.lt_u
       if
        i32.const 0
        br $~lib/util/math/checkint|inlined.0
       end
       local.get $11
       i64.const 1075
       i64.gt_u
       if
        i32.const 2
        br $~lib/util/math/checkint|inlined.0
       end
       i64.const 1
       i64.const 1075
       local.get $11
       i64.sub
       i64.shl
       local.set $11
       local.get $9
       local.get $11
       i64.const 1
       i64.sub
       i64.and
       i64.const 0
       i64.ne
       if
        i32.const 0
        br $~lib/util/math/checkint|inlined.0
       end
       local.get $9
       local.get $11
       i64.and
       i64.const 0
       i64.ne
       if
        i32.const 1
        br $~lib/util/math/checkint|inlined.0
       end
       i32.const 2
      end
      i32.const 1
      i32.eq
     else
      i32.const 0
     end
     if
      local.get $10
      f64.neg
      local.set $10
     end
     local.get $6
     i64.const 63
     i64.shr_u
     i64.const 0
     i64.ne
     if (result f64)
      f64.const 1
      local.get $10
      f64.div
     else
      local.get $10
     end
     br $~lib/util/math/pow_lut|inlined.0
    end
    local.get $5
    i64.const 63
    i64.shr_u
    i64.const 0
    i64.ne
    if
     block $~lib/util/math/checkint|inlined.1 (result i32)
      local.get $6
      local.set $9
      local.get $9
      i64.const 52
      i64.shr_u
      i64.const 2047
      i64.and
      local.set $11
      local.get $11
      i64.const 1023
      i64.lt_u
      if
       i32.const 0
       br $~lib/util/math/checkint|inlined.1
      end
      local.get $11
      i64.const 1075
      i64.gt_u
      if
       i32.const 2
       br $~lib/util/math/checkint|inlined.1
      end
      i64.const 1
      i64.const 1023
      i64.const 52
      i64.add
      local.get $11
      i64.sub
      i64.shl
      local.set $11
      local.get $9
      local.get $11
      i64.const 1
      i64.sub
      i64.and
      i64.const 0
      i64.ne
      if
       i32.const 0
       br $~lib/util/math/checkint|inlined.1
      end
      local.get $9
      local.get $11
      i64.and
      i64.const 0
      i64.ne
      if
       i32.const 1
       br $~lib/util/math/checkint|inlined.1
      end
      i32.const 2
     end
     local.set $12
     local.get $12
     i32.const 0
     i32.eq
     if
      local.get $3
      local.get $3
      f64.sub
      local.get $3
      local.get $3
      f64.sub
      f64.div
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $12
     i32.const 1
     i32.eq
     if
      global.get $~lib/util/math/SIGN_BIAS
      local.set $4
     end
     local.get $5
     i64.const 9223372036854775807
     i64.and
     local.set $5
     local.get $7
     i64.const 2047
     i64.and
     local.set $7
    end
    local.get $8
    i64.const 2047
    i64.and
    i64.const 958
    i64.sub
    i64.const 128
    i64.ge_u
    if
     local.get $5
     i64.const 4607182418800017408
     i64.eq
     if
      f64.const 1
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $8
     i64.const 2047
     i64.and
     i64.const 958
     i64.lt_u
     if
      f64.const 1
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $5
     i64.const 4607182418800017408
     i64.gt_u
     local.get $8
     i64.const 2048
     i64.lt_u
     i32.eq
     if (result f64)
      f64.const inf
     else
      f64.const 0
     end
     br $~lib/util/math/pow_lut|inlined.0
    end
    local.get $7
    i64.const 0
    i64.eq
    if
     local.get $3
     f64.const 4503599627370496
     f64.mul
     i64.reinterpret_f64
     local.set $5
     local.get $5
     i64.const 9223372036854775807
     i64.and
     local.set $5
     local.get $5
     i64.const 52
     i64.const 52
     i64.shl
     i64.sub
     local.set $5
    end
   end
   local.get $5
   local.set $9
   local.get $9
   i64.const 4604531861337669632
   i64.sub
   local.set $11
   local.get $11
   i64.const 52
   global.get $~lib/util/math/POW_LOG_TABLE_BITS
   i64.extend_i32_s
   i64.sub
   i64.shr_u
   i64.const 127
   i64.and
   i32.wrap_i64
   local.set $12
   local.get $11
   i64.const 52
   i64.shr_s
   local.set $13
   local.get $9
   local.get $11
   i64.const 4095
   i64.const 52
   i64.shl
   i64.and
   i64.sub
   local.set $14
   local.get $14
   f64.reinterpret_i64
   local.set $10
   local.get $13
   f64.convert_i64_s
   local.set $15
   i32.const 4136
   i32.load offset=4
   local.set $16
   local.get $16
   local.get $12
   i32.const 2
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load
   local.set $17
   local.get $16
   local.get $12
   i32.const 2
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load offset=16
   local.set $18
   local.get $16
   local.get $12
   i32.const 2
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load offset=24
   local.set $19
   local.get $14
   i64.const 2147483648
   i64.add
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $20
   local.get $10
   local.get $20
   f64.sub
   local.set $21
   local.get $20
   local.get $17
   f64.mul
   f64.const 1
   f64.sub
   local.set $22
   local.get $21
   local.get $17
   f64.mul
   local.set $23
   local.get $22
   local.get $23
   f64.add
   local.set $24
   local.get $15
   f64.const 0.6931471805598903
   f64.mul
   local.get $18
   f64.add
   local.set $25
   local.get $25
   local.get $24
   f64.add
   local.set $26
   local.get $15
   f64.const 5.497923018708371e-14
   f64.mul
   local.get $19
   f64.add
   local.set $27
   local.get $25
   local.get $26
   f64.sub
   local.get $24
   f64.add
   local.set $28
   f64.const -0.5
   local.get $24
   f64.mul
   local.set $29
   local.get $24
   local.get $29
   f64.mul
   local.set $30
   local.get $24
   local.get $30
   f64.mul
   local.set $31
   f64.const -0.5
   local.get $22
   f64.mul
   local.set $32
   local.get $22
   local.get $32
   f64.mul
   local.set $33
   local.get $26
   local.get $33
   f64.add
   local.set $34
   local.get $23
   local.get $29
   local.get $32
   f64.add
   f64.mul
   local.set $35
   local.get $26
   local.get $34
   f64.sub
   local.get $33
   f64.add
   local.set $36
   local.get $31
   f64.const -0.6666666666666679
   local.get $24
   f64.const 0.5000000000000007
   f64.mul
   f64.add
   local.get $30
   f64.const 0.7999999995323976
   local.get $24
   f64.const -0.6666666663487739
   f64.mul
   f64.add
   local.get $30
   f64.const -1.142909628459501
   local.get $24
   f64.const 1.0000415263675542
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.set $37
   local.get $27
   local.get $28
   f64.add
   local.get $35
   f64.add
   local.get $36
   f64.add
   local.get $37
   f64.add
   local.set $38
   local.get $34
   local.get $38
   f64.add
   local.set $39
   local.get $34
   local.get $39
   f64.sub
   local.get $38
   f64.add
   global.set $~lib/util/math/log_tail
   local.get $39
   local.set $39
   global.get $~lib/util/math/log_tail
   local.set $38
   local.get $6
   i64.const -134217728
   i64.and
   f64.reinterpret_i64
   local.set $35
   local.get $2
   local.get $35
   f64.sub
   local.set $34
   local.get $39
   i64.reinterpret_f64
   i64.const -134217728
   i64.and
   f64.reinterpret_i64
   local.set $33
   local.get $39
   local.get $33
   f64.sub
   local.get $38
   f64.add
   local.set $32
   local.get $35
   local.get $33
   f64.mul
   local.set $37
   local.get $34
   local.get $33
   f64.mul
   local.get $2
   local.get $32
   f64.mul
   f64.add
   local.set $36
   block $~lib/util/math/exp_inline|inlined.0 (result f64)
    local.get $37
    local.set $15
    local.get $36
    local.set $10
    local.get $4
    local.set $12
    local.get $15
    i64.reinterpret_f64
    local.set $9
    local.get $9
    i64.const 52
    i64.shr_u
    i32.wrap_i64
    i32.const 2047
    i32.and
    local.set $16
    local.get $16
    i32.const 969
    i32.sub
    i32.const 63
    i32.ge_u
    if
     local.get $16
     i32.const 969
     i32.sub
     i32.const -2147483648
     i32.ge_u
     if
      f64.const -1
      f64.const 1
      local.get $12
      select
      br $~lib/util/math/exp_inline|inlined.0
     end
     local.get $16
     i32.const 1033
     i32.ge_u
     if
      local.get $9
      i64.const 63
      i64.shr_u
      i64.const 0
      i64.ne
      if (result f64)
       local.get $12
       local.set $41
       local.get $41
       local.set $42
       i64.const 1152921504606846976
       f64.reinterpret_i64
       local.set $17
       local.get $17
       f64.neg
       local.get $17
       local.get $42
       select
       local.get $17
       f64.mul
      else
       local.get $12
       local.set $42
       local.get $42
       local.set $41
       i64.const 8070450532247928832
       f64.reinterpret_i64
       local.set $18
       local.get $18
       f64.neg
       local.get $18
       local.get $41
       select
       local.get $18
       f64.mul
      end
      br $~lib/util/math/exp_inline|inlined.0
     end
     i32.const 0
     local.set $16
    end
    f64.const 184.6649652337873
    local.get $15
    f64.mul
    local.set $30
    local.get $30
    f64.const 6755399441055744
    f64.add
    local.set $31
    local.get $31
    i64.reinterpret_f64
    local.set $14
    local.get $31
    f64.const 6755399441055744
    f64.sub
    local.set $31
    local.get $15
    local.get $31
    f64.const -0.005415212348111709
    f64.mul
    f64.add
    local.get $31
    f64.const -1.2864023111638346e-14
    f64.mul
    f64.add
    local.set $29
    local.get $29
    local.get $10
    f64.add
    local.set $29
    local.get $14
    i64.const 127
    i64.and
    i64.const 1
    i64.shl
    i32.wrap_i64
    local.set $40
    local.get $14
    local.get $12
    i64.extend_i32_u
    i64.add
    i64.const 52
    global.get $~lib/util/math/EXP_TABLE_BITS
    i64.extend_i32_s
    i64.sub
    i64.shl
    local.set $13
    i32.const 6232
    i32.load offset=4
    local.set $42
    local.get $42
    local.get $40
    i32.const 3
    i32.shl
    i32.add
    i64.load
    f64.reinterpret_i64
    local.set $26
    local.get $42
    local.get $40
    i32.const 3
    i32.shl
    i32.add
    i64.load offset=8
    local.get $13
    i64.add
    local.set $11
    local.get $29
    local.get $29
    f64.mul
    local.set $28
    local.get $26
    local.get $29
    f64.add
    local.get $28
    f64.const 0.49999999999996786
    local.get $29
    f64.const 0.16666666666665886
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.get $28
    local.get $28
    f64.mul
    f64.const 0.0416666808410674
    local.get $29
    f64.const 0.008333335853059549
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $25
    local.get $16
    i32.const 0
    i32.eq
    if
     block $~lib/util/math/specialcase|inlined.0 (result f64)
      local.get $25
      local.set $19
      local.get $11
      local.set $44
      local.get $14
      local.set $43
      local.get $43
      i64.const 2147483648
      i64.and
      i64.const 0
      i64.ne
      i32.eqz
      if
       local.get $44
       i64.const 1009
       i64.const 52
       i64.shl
       i64.sub
       local.set $44
       local.get $44
       f64.reinterpret_i64
       local.set $18
       f64.const 5486124068793688683255936e279
       local.get $18
       local.get $18
       local.get $19
       f64.mul
       f64.add
       f64.mul
       br $~lib/util/math/specialcase|inlined.0
      end
      local.get $44
      i64.const 1022
      i64.const 52
      i64.shl
      i64.add
      local.set $44
      local.get $44
      f64.reinterpret_i64
      local.set $18
      local.get $18
      local.get $18
      local.get $19
      f64.mul
      f64.add
      local.set $17
      local.get $17
      f64.abs
      f64.const 1
      f64.lt
      if
       f64.const 1
       local.get $17
       f64.copysign
       local.set $24
       local.get $18
       local.get $17
       f64.sub
       local.get $18
       local.get $19
       f64.mul
       f64.add
       local.set $23
       local.get $24
       local.get $17
       f64.add
       local.set $22
       local.get $24
       local.get $22
       f64.sub
       local.get $17
       f64.add
       local.get $23
       f64.add
       local.set $23
       local.get $22
       local.get $23
       f64.add
       local.get $24
       f64.sub
       local.set $17
       local.get $17
       f64.const 0
       f64.eq
       if
        local.get $44
        i64.const -9223372036854775808
        i64.and
        f64.reinterpret_i64
        local.set $17
       end
      end
      local.get $17
      f64.const 2.2250738585072014e-308
      f64.mul
     end
     br $~lib/util/math/exp_inline|inlined.0
    end
    local.get $11
    f64.reinterpret_i64
    local.set $27
    local.get $27
    local.get $27
    local.get $25
    f64.mul
    f64.add
   end
  end
  return
 )
 (func $~lib/math/NativeMathf.mod (; 2 ;) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  i32.reinterpret_f32
  local.set $2
  local.get $1
  i32.reinterpret_f32
  local.set $3
  local.get $2
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  local.set $4
  local.get $3
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  local.set $5
  local.get $2
  i32.const -2147483648
  i32.and
  local.set $6
  local.get $3
  i32.const 1
  i32.shl
  local.set $7
  local.get $7
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $4
   i32.const 255
   i32.eq
  end
  if (result i32)
   i32.const 1
  else
   local.get $1
   local.get $1
   f32.ne
  end
  if
   local.get $0
   local.get $1
   f32.mul
   local.set $8
   local.get $8
   local.get $8
   f32.div
   return
  end
  local.get $2
  i32.const 1
  i32.shl
  local.set $9
  local.get $9
  local.get $7
  i32.le_u
  if
   local.get $9
   local.get $7
   i32.eq
   if
    f32.const 0
    local.get $0
    f32.mul
    return
   end
   local.get $0
   return
  end
  local.get $4
  i32.eqz
  if
   local.get $4
   local.get $2
   i32.const 9
   i32.shl
   i32.clz
   i32.sub
   local.set $4
   local.get $2
   i32.const 0
   local.get $4
   i32.sub
   i32.const 1
   i32.add
   i32.shl
   local.set $2
  else
   local.get $2
   i32.const -1
   i32.const 9
   i32.shr_u
   i32.and
   local.set $2
   local.get $2
   i32.const 1
   i32.const 23
   i32.shl
   i32.or
   local.set $2
  end
  local.get $5
  i32.eqz
  if
   local.get $5
   local.get $3
   i32.const 9
   i32.shl
   i32.clz
   i32.sub
   local.set $5
   local.get $3
   i32.const 0
   local.get $5
   i32.sub
   i32.const 1
   i32.add
   i32.shl
   local.set $3
  else
   local.get $3
   i32.const -1
   i32.const 9
   i32.shr_u
   i32.and
   local.set $3
   local.get $3
   i32.const 1
   i32.const 23
   i32.shl
   i32.or
   local.set $3
  end
  block $break|0
   loop $continue|0
    local.get $4
    local.get $5
    i32.gt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $3
    i32.ge_u
    if
     local.get $2
     local.get $3
     i32.eq
     if
      f32.const 0
      local.get $0
      f32.mul
      return
     end
     local.get $2
     local.get $3
     i32.sub
     local.set $2
    end
    local.get $2
    i32.const 1
    i32.shl
    local.set $2
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $continue|0
   end
   unreachable
  end
  local.get $2
  local.get $3
  i32.ge_u
  if
   local.get $2
   local.get $3
   i32.eq
   if
    f32.const 0
    local.get $0
    f32.mul
    return
   end
   local.get $2
   local.get $3
   i32.sub
   local.set $2
  end
  local.get $2
  i32.const 8
  i32.shl
  i32.clz
  local.set $10
  local.get $4
  local.get $10
  i32.sub
  local.set $4
  local.get $2
  local.get $10
  i32.shl
  local.set $2
  local.get $4
  i32.const 0
  i32.gt_s
  if
   local.get $2
   i32.const 1
   i32.const 23
   i32.shl
   i32.sub
   local.set $2
   local.get $2
   local.get $4
   i32.const 23
   i32.shl
   i32.or
   local.set $2
  else
   local.get $2
   i32.const 0
   local.get $4
   i32.sub
   i32.const 1
   i32.add
   i32.shr_u
   local.set $2
  end
  local.get $2
  local.get $6
  i32.or
  local.set $2
  local.get $2
  f32.reinterpret_i32
 )
 (func $~lib/math/NativeMathf.scalbn (; 3 ;) (param $0 f32) (param $1 i32) (result f32)
  (local $2 f32)
  (local $3 f32)
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
 (func $~lib/math/NativeMathf.pow (; 4 ;) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 f64)
  (local $24 i64)
  (local $25 i64)
  block $~lib/util/math/powf_lut|inlined.0 (result f32)
   local.get $0
   local.set $3
   local.get $1
   local.set $2
   i32.const 0
   local.set $4
   local.get $3
   i32.reinterpret_f32
   local.set $5
   local.get $2
   i32.reinterpret_f32
   local.set $6
   i32.const 0
   local.set $7
   local.get $5
   i32.const 8388608
   i32.sub
   i32.const 2130706432
   i32.ge_u
   local.get $6
   local.set $8
   local.get $8
   i32.const 1
   i32.shl
   i32.const 1
   i32.sub
   i32.const -16777217
   i32.ge_u
   i32.const 0
   i32.ne
   local.tee $7
   i32.or
   if
    local.get $7
    if
     local.get $6
     i32.const 1
     i32.shl
     i32.const 0
     i32.eq
     if
      f32.const 1
      br $~lib/util/math/powf_lut|inlined.0
     end
     local.get $5
     i32.const 1065353216
     i32.eq
     if
      f32.const nan:0x400000
      br $~lib/util/math/powf_lut|inlined.0
     end
     local.get $5
     i32.const 1
     i32.shl
     i32.const -16777216
     i32.gt_u
     if (result i32)
      i32.const 1
     else
      local.get $6
      i32.const 1
      i32.shl
      i32.const -16777216
      i32.gt_u
     end
     if
      local.get $3
      local.get $2
      f32.add
      br $~lib/util/math/powf_lut|inlined.0
     end
     local.get $5
     i32.const 1
     i32.shl
     i32.const 2130706432
     i32.eq
     if
      f32.const nan:0x400000
      br $~lib/util/math/powf_lut|inlined.0
     end
     local.get $5
     i32.const 1
     i32.shl
     i32.const 2130706432
     i32.lt_u
     local.get $6
     i32.const 31
     i32.shr_u
     i32.eqz
     i32.eq
     if
      f32.const 0
      br $~lib/util/math/powf_lut|inlined.0
     end
     local.get $2
     local.get $2
     f32.mul
     br $~lib/util/math/powf_lut|inlined.0
    end
    local.get $5
    local.set $8
    local.get $8
    i32.const 1
    i32.shl
    i32.const 1
    i32.sub
    i32.const -16777217
    i32.ge_u
    if
     local.get $3
     local.get $3
     f32.mul
     local.set $9
     local.get $5
     i32.const 31
     i32.shr_u
     if (result i32)
      block $~lib/util/math/checkintf|inlined.0 (result i32)
       local.get $6
       local.set $8
       local.get $8
       i32.const 23
       i32.shr_u
       i32.const 255
       i32.and
       local.set $10
       local.get $10
       i32.const 127
       i32.lt_u
       if
        i32.const 0
        br $~lib/util/math/checkintf|inlined.0
       end
       local.get $10
       i32.const 150
       i32.gt_u
       if
        i32.const 2
        br $~lib/util/math/checkintf|inlined.0
       end
       i32.const 1
       i32.const 150
       local.get $10
       i32.sub
       i32.shl
       local.set $10
       local.get $8
       local.get $10
       i32.const 1
       i32.sub
       i32.and
       if
        i32.const 0
        br $~lib/util/math/checkintf|inlined.0
       end
       local.get $8
       local.get $10
       i32.and
       if
        i32.const 1
        br $~lib/util/math/checkintf|inlined.0
       end
       i32.const 2
      end
      i32.const 1
      i32.eq
     else
      i32.const 0
     end
     if
      local.get $9
      f32.neg
      local.set $9
     end
     local.get $6
     i32.const 31
     i32.shr_u
     if (result f32)
      f32.const 1
      local.get $9
      f32.div
     else
      local.get $9
     end
     br $~lib/util/math/powf_lut|inlined.0
    end
    local.get $5
    i32.const 31
    i32.shr_u
    if
     block $~lib/util/math/checkintf|inlined.1 (result i32)
      local.get $6
      local.set $8
      local.get $8
      i32.const 23
      i32.shr_u
      i32.const 255
      i32.and
      local.set $10
      local.get $10
      i32.const 127
      i32.lt_u
      if
       i32.const 0
       br $~lib/util/math/checkintf|inlined.1
      end
      local.get $10
      i32.const 150
      i32.gt_u
      if
       i32.const 2
       br $~lib/util/math/checkintf|inlined.1
      end
      i32.const 1
      i32.const 127
      i32.const 23
      i32.add
      local.get $10
      i32.sub
      i32.shl
      local.set $10
      local.get $8
      local.get $10
      i32.const 1
      i32.sub
      i32.and
      if
       i32.const 0
       br $~lib/util/math/checkintf|inlined.1
      end
      local.get $8
      local.get $10
      i32.and
      if
       i32.const 1
       br $~lib/util/math/checkintf|inlined.1
      end
      i32.const 2
     end
     local.set $10
     local.get $10
     i32.const 0
     i32.eq
     if
      local.get $3
      local.get $3
      f32.sub
      local.get $3
      local.get $3
      f32.sub
      f32.div
      br $~lib/util/math/powf_lut|inlined.0
     end
     local.get $10
     i32.const 1
     i32.eq
     if
      i32.const 65536
      local.set $4
     end
     local.get $5
     i32.const 2147483647
     i32.and
     local.set $5
    end
    local.get $5
    i32.const 8388608
    i32.lt_u
    if
     local.get $3
     f32.const 8388608
     f32.mul
     i32.reinterpret_f32
     local.set $5
     local.get $5
     i32.const 2147483647
     i32.and
     local.set $5
     local.get $5
     i32.const 23
     i32.const 23
     i32.shl
     i32.sub
     local.set $5
    end
   end
   local.get $5
   local.set $8
   local.get $8
   i32.const 1060306944
   i32.sub
   local.set $10
   local.get $10
   i32.const 23
   global.get $~lib/util/math/LOG2F_TABLE_BITS
   i32.sub
   i32.shr_u
   i32.const 15
   i32.and
   local.set $11
   local.get $10
   i32.const -8388608
   i32.and
   local.set $12
   local.get $8
   local.get $12
   i32.sub
   local.set $13
   local.get $12
   i32.const 23
   i32.shr_s
   local.set $14
   i32.const 6536
   i32.load offset=4
   local.set $15
   local.get $15
   local.get $11
   i32.const 1
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load
   local.set $16
   local.get $15
   local.get $11
   i32.const 1
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load offset=8
   local.set $17
   local.get $13
   f32.reinterpret_i32
   f64.promote_f32
   local.set $18
   local.get $18
   local.get $16
   f64.mul
   f64.const 1
   f64.sub
   local.set $19
   local.get $17
   local.get $14
   f64.convert_i32_s
   f64.add
   local.set $20
   f64.const 0.288457581109214
   local.get $19
   f64.mul
   f64.const -0.36092606229713164
   f64.add
   local.set $21
   f64.const 0.480898481472577
   local.get $19
   f64.mul
   f64.const -0.7213474675006291
   f64.add
   local.set $22
   f64.const 1.4426950408774342
   local.get $19
   f64.mul
   local.get $20
   f64.add
   local.set $23
   local.get $19
   local.get $19
   f64.mul
   local.set $19
   local.get $23
   local.get $22
   local.get $19
   f64.mul
   f64.add
   local.set $23
   local.get $21
   local.get $19
   local.get $19
   f64.mul
   f64.mul
   local.get $23
   f64.add
   local.set $21
   local.get $21
   local.set $23
   local.get $2
   f64.promote_f32
   local.get $23
   f64.mul
   local.set $22
   local.get $22
   i64.reinterpret_f64
   i64.const 47
   i64.shr_u
   i64.const 65535
   i64.and
   i64.const 32959
   i64.ge_u
   if
    local.get $22
    f64.const 127.99999995700433
    f64.gt
    if
     local.get $4
     local.set $8
     local.get $8
     local.set $10
     i32.const 1879048192
     f32.reinterpret_i32
     local.set $9
     local.get $9
     f32.neg
     local.get $9
     local.get $10
     select
     local.get $9
     f32.mul
     br $~lib/util/math/powf_lut|inlined.0
    end
    local.get $22
    f64.const -150
    f64.le
    if
     local.get $4
     local.set $11
     local.get $11
     local.set $12
     i32.const 268435456
     f32.reinterpret_i32
     local.set $9
     local.get $9
     f32.neg
     local.get $9
     local.get $12
     select
     local.get $9
     f32.mul
     br $~lib/util/math/powf_lut|inlined.0
    end
   end
   local.get $22
   local.set $16
   local.get $4
   local.set $13
   local.get $16
   f64.const 211106232532992
   f64.add
   local.set $21
   local.get $21
   i64.reinterpret_f64
   local.set $24
   local.get $16
   local.get $21
   f64.const 211106232532992
   f64.sub
   f64.sub
   local.set $20
   i32.const 6840
   i32.load offset=4
   local.set $11
   local.get $11
   local.get $24
   i32.wrap_i64
   i32.const 31
   i32.and
   i32.const 3
   i32.shl
   i32.add
   i64.load
   local.set $25
   local.get $25
   local.get $24
   local.get $13
   i64.extend_i32_u
   i64.add
   i64.const 52
   global.get $~lib/util/math/EXP2F_TABLE_BITS
   i64.extend_i32_s
   i64.sub
   i64.shl
   i64.add
   local.set $25
   local.get $25
   f64.reinterpret_i64
   local.set $17
   f64.const 0.05550361559341535
   local.get $20
   f64.mul
   f64.const 0.2402284522445722
   f64.add
   local.set $19
   f64.const 0.6931471806916203
   local.get $20
   f64.mul
   f64.const 1
   f64.add
   local.set $18
   local.get $18
   local.get $19
   local.get $20
   local.get $20
   f64.mul
   f64.mul
   f64.add
   local.set $18
   local.get $18
   local.get $17
   f64.mul
   local.set $18
   local.get $18
   f32.demote_f64
  end
 )
 (func $~lib/math/NativeMath.mod (; 5 ;) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 f64)
  (local $9 i64)
  (local $10 i64)
  local.get $0
  i64.reinterpret_f64
  local.set $2
  local.get $1
  i64.reinterpret_f64
  local.set $3
  local.get $2
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.set $4
  local.get $3
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.set $5
  local.get $2
  i64.const 63
  i64.shr_u
  local.set $6
  local.get $3
  i64.const 1
  i64.shl
  local.set $7
  local.get $7
  i64.const 0
  i64.eq
  if (result i32)
   i32.const 1
  else
   local.get $4
   i64.const 2047
   i64.eq
  end
  if (result i32)
   i32.const 1
  else
   local.get $1
   local.get $1
   f64.ne
  end
  if
   local.get $0
   local.get $1
   f64.mul
   local.set $8
   local.get $8
   local.get $8
   f64.div
   return
  end
  local.get $2
  i64.const 1
  i64.shl
  local.set $9
  local.get $9
  local.get $7
  i64.le_u
  if
   local.get $9
   local.get $7
   i64.eq
   if
    f64.const 0
    local.get $0
    f64.mul
    return
   end
   local.get $0
   return
  end
  local.get $4
  i64.const 0
  i64.ne
  i32.eqz
  if
   local.get $4
   local.get $2
   i64.const 12
   i64.shl
   i64.clz
   i64.sub
   local.set $4
   local.get $2
   i64.const 0
   local.get $4
   i64.sub
   i64.const 1
   i64.add
   i64.shl
   local.set $2
  else
   local.get $2
   i64.const -1
   i64.const 12
   i64.shr_u
   i64.and
   local.set $2
   local.get $2
   i64.const 1
   i64.const 52
   i64.shl
   i64.or
   local.set $2
  end
  local.get $5
  i64.const 0
  i64.ne
  i32.eqz
  if
   local.get $5
   local.get $3
   i64.const 12
   i64.shl
   i64.clz
   i64.sub
   local.set $5
   local.get $3
   i64.const 0
   local.get $5
   i64.sub
   i64.const 1
   i64.add
   i64.shl
   local.set $3
  else
   local.get $3
   i64.const -1
   i64.const 12
   i64.shr_u
   i64.and
   local.set $3
   local.get $3
   i64.const 1
   i64.const 52
   i64.shl
   i64.or
   local.set $3
  end
  block $break|0
   loop $continue|0
    local.get $4
    local.get $5
    i64.gt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $3
    i64.ge_u
    if
     local.get $2
     local.get $3
     i64.eq
     if
      f64.const 0
      local.get $0
      f64.mul
      return
     end
     local.get $2
     local.get $3
     i64.sub
     local.set $2
    end
    local.get $2
    i64.const 1
    i64.shl
    local.set $2
    local.get $4
    i64.const 1
    i64.sub
    local.set $4
    br $continue|0
   end
   unreachable
  end
  local.get $2
  local.get $3
  i64.ge_u
  if
   local.get $2
   local.get $3
   i64.eq
   if
    f64.const 0
    local.get $0
    f64.mul
    return
   end
   local.get $2
   local.get $3
   i64.sub
   local.set $2
  end
  local.get $2
  i64.const 11
  i64.shl
  i64.clz
  local.set $10
  local.get $4
  local.get $10
  i64.sub
  local.set $4
  local.get $2
  local.get $10
  i64.shl
  local.set $2
  local.get $4
  i64.const 0
  i64.gt_s
  if
   local.get $2
   i64.const 1
   i64.const 52
   i64.shl
   i64.sub
   local.set $2
   local.get $2
   local.get $4
   i64.const 52
   i64.shl
   i64.or
   local.set $2
  else
   local.get $2
   i64.const 0
   local.get $4
   i64.sub
   i64.const 1
   i64.add
   i64.shr_u
   local.set $2
  end
  local.get $2
  local.get $6
  i64.const 63
  i64.shl
  i64.or
  local.set $2
  local.get $2
  f64.reinterpret_i64
 )
 (func $start:binary (; 6 ;)
  global.get $binary/i
  i32.const 1
  i32.lt_s
  drop
  global.get $binary/i
  i32.const 1
  i32.gt_s
  drop
  global.get $binary/i
  i32.const 1
  i32.le_s
  drop
  global.get $binary/i
  i32.const 1
  i32.ge_s
  drop
  global.get $binary/i
  i32.const 1
  i32.eq
  drop
  global.get $binary/i
  i32.const 1
  i32.eq
  drop
  global.get $binary/i
  i32.const 1
  i32.add
  drop
  global.get $binary/i
  i32.const 1
  i32.sub
  drop
  global.get $binary/i
  i32.const 1
  i32.mul
  drop
  global.get $binary/i
  i32.const 1
  i32.div_s
  drop
  global.get $binary/i
  i32.const 1
  i32.rem_s
  drop
  global.get $binary/i
  f64.convert_i32_s
  f64.const 1
  call $~lib/math/NativeMath.pow
  drop
  global.get $binary/i
  i32.const 1
  i32.shl
  drop
  global.get $binary/i
  i32.const 1
  i32.shr_s
  drop
  global.get $binary/i
  i32.const 1
  i32.shr_u
  drop
  global.get $binary/i
  i32.const 1
  i32.and
  drop
  global.get $binary/i
  i32.const 1
  i32.or
  drop
  global.get $binary/i
  i32.const 1
  i32.xor
  drop
  global.get $binary/i
  i32.const 1
  i32.lt_s
  global.set $binary/b
  global.get $binary/i
  i32.const 1
  i32.gt_s
  global.set $binary/b
  global.get $binary/i
  i32.const 1
  i32.le_s
  global.set $binary/b
  global.get $binary/i
  i32.const 1
  i32.ge_s
  global.set $binary/b
  global.get $binary/i
  i32.const 1
  i32.eq
  global.set $binary/b
  global.get $binary/i
  i32.const 1
  i32.eq
  global.set $binary/b
  global.get $binary/i
  i32.const 1
  i32.add
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.sub
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.mul
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.div_s
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.rem_s
  global.set $binary/i
  global.get $binary/i
  f64.convert_i32_s
  f64.const 1
  call $~lib/math/NativeMath.pow
  i32.trunc_f64_s
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.shl
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.shr_s
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.shr_u
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.and
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.or
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.xor
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.add
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.sub
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.mul
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.rem_s
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.shl
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.shr_s
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.shr_u
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.and
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.or
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.xor
  global.set $binary/i
  global.get $binary/I
  i64.const 1
  i64.lt_s
  drop
  global.get $binary/I
  i64.const 1
  i64.gt_s
  drop
  global.get $binary/I
  i64.const 1
  i64.le_s
  drop
  global.get $binary/I
  i64.const 1
  i64.ge_s
  drop
  global.get $binary/I
  i64.const 1
  i64.eq
  drop
  global.get $binary/I
  i64.const 1
  i64.eq
  drop
  global.get $binary/I
  i64.const 1
  i64.add
  drop
  global.get $binary/I
  i64.const 1
  i64.sub
  drop
  global.get $binary/I
  i64.const 1
  i64.mul
  drop
  global.get $binary/I
  i64.const 1
  i64.div_s
  drop
  global.get $binary/I
  i64.const 1
  i64.rem_s
  drop
  global.get $binary/I
  f64.convert_i64_s
  f64.const 1
  call $~lib/math/NativeMath.pow
  drop
  global.get $binary/I
  i64.const 1
  i64.shl
  drop
  global.get $binary/I
  i64.const 1
  i64.shr_s
  drop
  global.get $binary/I
  i64.const 1
  i64.shr_u
  drop
  global.get $binary/I
  i64.const 1
  i64.and
  drop
  global.get $binary/I
  i64.const 1
  i64.or
  drop
  global.get $binary/I
  i64.const 1
  i64.xor
  drop
  global.get $binary/I
  i64.const 1
  i64.lt_s
  global.set $binary/b
  global.get $binary/I
  i64.const 1
  i64.gt_s
  global.set $binary/b
  global.get $binary/I
  i64.const 1
  i64.le_s
  global.set $binary/b
  global.get $binary/I
  i64.const 1
  i64.ge_s
  global.set $binary/b
  global.get $binary/I
  i64.const 1
  i64.eq
  global.set $binary/b
  global.get $binary/I
  i64.const 1
  i64.eq
  global.set $binary/b
  global.get $binary/I
  i64.const 1
  i64.add
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.sub
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.mul
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.div_s
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.rem_s
  global.set $binary/I
  global.get $binary/I
  f64.convert_i64_s
  f64.const 1
  call $~lib/math/NativeMath.pow
  i64.trunc_f64_s
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.shl
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.shr_s
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.shr_u
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.and
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.or
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.xor
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.add
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.sub
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.mul
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.rem_s
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.shl
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.shr_s
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.shr_u
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.and
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.or
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.xor
  global.set $binary/I
  global.get $binary/f
  f32.const 1
  f32.lt
  drop
  global.get $binary/f
  f32.const 1
  f32.gt
  drop
  global.get $binary/f
  f32.const 1
  f32.le
  drop
  global.get $binary/f
  f32.const 1
  f32.ge
  drop
  global.get $binary/f
  f32.const 1
  f32.eq
  drop
  global.get $binary/f
  f32.const 1
  f32.eq
  drop
  global.get $binary/f
  f32.const 1
  f32.add
  drop
  global.get $binary/f
  f32.const 1
  f32.sub
  drop
  global.get $binary/f
  f32.const 1
  f32.mul
  drop
  global.get $binary/f
  f32.const 1
  f32.div
  drop
  global.get $binary/f
  f32.const 1
  call $~lib/math/NativeMathf.mod
  drop
  global.get $binary/f
  f32.const 1
  call $~lib/math/NativeMathf.pow
  drop
  global.get $binary/f
  f32.const 1
  f32.lt
  global.set $binary/b
  global.get $binary/f
  f32.const 1
  f32.gt
  global.set $binary/b
  global.get $binary/f
  f32.const 1
  f32.le
  global.set $binary/b
  global.get $binary/f
  f32.const 1
  f32.ge
  global.set $binary/b
  global.get $binary/f
  f32.const 1
  f32.eq
  global.set $binary/b
  global.get $binary/f
  f32.const 1
  f32.eq
  global.set $binary/b
  global.get $binary/f
  f32.const 1
  f32.add
  global.set $binary/f
  global.get $binary/f
  f32.const 1
  f32.sub
  global.set $binary/f
  global.get $binary/f
  f32.const 1
  f32.mul
  global.set $binary/f
  global.get $binary/f
  f32.const 1
  f32.div
  global.set $binary/f
  global.get $binary/f
  f32.const 1
  call $~lib/math/NativeMathf.mod
  global.set $binary/f
  global.get $binary/f
  f32.const 1
  call $~lib/math/NativeMathf.pow
  global.set $binary/f
  global.get $binary/f
  f32.const 1
  f32.add
  global.set $binary/f
  global.get $binary/f
  f32.const 1
  f32.sub
  global.set $binary/f
  global.get $binary/f
  f32.const 1
  f32.mul
  global.set $binary/f
  global.get $binary/f
  f32.const 1
  call $~lib/math/NativeMathf.mod
  global.set $binary/f
  global.get $binary/f
  f32.const 1
  call $~lib/math/NativeMathf.pow
  global.set $binary/f
  global.get $binary/F
  f64.const 1
  f64.lt
  drop
  global.get $binary/F
  f64.const 1
  f64.gt
  drop
  global.get $binary/F
  f64.const 1
  f64.le
  drop
  global.get $binary/F
  f64.const 1
  f64.ge
  drop
  global.get $binary/F
  f64.const 1
  f64.eq
  drop
  global.get $binary/F
  f64.const 1
  f64.eq
  drop
  global.get $binary/F
  f64.const 1
  f64.add
  drop
  global.get $binary/F
  f64.const 1
  f64.sub
  drop
  global.get $binary/F
  f64.const 1
  f64.mul
  drop
  global.get $binary/F
  f64.const 1
  f64.div
  drop
  global.get $binary/F
  f64.const 1
  call $~lib/math/NativeMath.mod
  drop
  global.get $binary/F
  f64.const 1
  call $~lib/math/NativeMath.pow
  drop
  global.get $binary/F
  f64.const 1
  f64.lt
  global.set $binary/b
  global.get $binary/F
  f64.const 1
  f64.gt
  global.set $binary/b
  global.get $binary/F
  f64.const 1
  f64.le
  global.set $binary/b
  global.get $binary/F
  f64.const 1
  f64.ge
  global.set $binary/b
  global.get $binary/F
  f64.const 1
  f64.eq
  global.set $binary/b
  global.get $binary/F
  f64.const 1
  f64.eq
  global.set $binary/b
  global.get $binary/F
  f64.const 1
  f64.add
  global.set $binary/F
  global.get $binary/F
  f64.const 1
  f64.sub
  global.set $binary/F
  global.get $binary/F
  f64.const 1
  f64.mul
  global.set $binary/F
  global.get $binary/F
  f64.const 1
  f64.div
  global.set $binary/F
  global.get $binary/F
  f64.const 1
  call $~lib/math/NativeMath.mod
  global.set $binary/F
  global.get $binary/F
  f64.const 1
  call $~lib/math/NativeMath.pow
  global.set $binary/F
  global.get $binary/F
  f64.const 1
  f64.add
  global.set $binary/F
  global.get $binary/F
  f64.const 1
  f64.sub
  global.set $binary/F
  global.get $binary/F
  f64.const 1
  f64.mul
  global.set $binary/F
  global.get $binary/F
  f64.const 1
  call $~lib/math/NativeMath.mod
  global.set $binary/F
  global.get $binary/F
  f64.const 1
  call $~lib/math/NativeMath.pow
  global.set $binary/F
 )
 (func $start (; 7 ;)
  call $start:binary
 )
 (func $null (; 8 ;)
  unreachable
 )
)
