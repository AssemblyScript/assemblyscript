(module
 (type $FFF (func (param f64 f64) (result f64)))
 (type $FiF (func (param f64 i32) (result f64)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $fif (func (param f32 i32) (result f32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $binary/b (mut i32) (i32.const 0))
 (global $binary/i (mut i32) (i32.const 0))
 (global $NaN f64 (f64.const nan:0x8000000000000))
 (global $binary/I (mut i64) (i64.const 0))
 (global $binary/f (mut f32) (f32.const 0))
 (global $binary/F (mut f64) (f64.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/math/NativeMath.scalbn (; 0 ;) (type $FiF) (param $0 f64) (param $1 i32) (result f64)
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
 (func $~lib/math/NativeMath.pow (; 1 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
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
 (func $~lib/math/NativeMathf.mod (; 2 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  get_local $0
  i32.reinterpret/f32
  set_local $2
  get_local $1
  i32.reinterpret/f32
  set_local $3
  get_local $2
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  set_local $4
  get_local $3
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  set_local $5
  get_local $2
  i32.const -2147483648
  i32.and
  set_local $6
  get_local $3
  i32.const 1
  i32.shl
  set_local $7
  get_local $7
  i32.const 0
  i32.eq
  tee_local $8
  if (result i32)
   get_local $8
  else   
   get_local $4
   i32.const 255
   i32.eq
  end
  tee_local $8
  if (result i32)
   get_local $8
  else   
   get_local $1
   get_local $1
   f32.ne
  end
  i32.const 0
  i32.ne
  if
   get_local $0
   get_local $1
   f32.mul
   get_local $0
   get_local $1
   f32.mul
   f32.div
   return
  end
  get_local $2
  i32.const 1
  i32.shl
  set_local $9
  get_local $9
  get_local $7
  i32.le_u
  if
   get_local $9
   get_local $7
   i32.eq
   if
    f32.const 0
    get_local $0
    f32.mul
    return
   end
   get_local $0
   return
  end
  get_local $4
  i32.eqz
  if
   get_local $4
   get_local $2
   i32.const 9
   i32.shl
   i32.clz
   i32.sub
   set_local $4
   get_local $2
   i32.const 0
   get_local $4
   i32.sub
   i32.const 1
   i32.add
   i32.shl
   set_local $2
  else   
   get_local $2
   i32.const -1
   i32.const 9
   i32.shr_u
   i32.and
   set_local $2
   get_local $2
   i32.const 1
   i32.const 23
   i32.shl
   i32.or
   set_local $2
  end
  get_local $5
  i32.eqz
  if
   get_local $5
   get_local $3
   i32.const 9
   i32.shl
   i32.clz
   i32.sub
   set_local $5
   get_local $3
   i32.const 0
   get_local $5
   i32.sub
   i32.const 1
   i32.add
   i32.shl
   set_local $3
  else   
   get_local $3
   i32.const -1
   i32.const 9
   i32.shr_u
   i32.and
   set_local $3
   get_local $3
   i32.const 1
   i32.const 23
   i32.shl
   i32.or
   set_local $3
  end
  block $break|0
   loop $continue|0
    get_local $4
    get_local $5
    i32.gt_s
    if
     block
      get_local $2
      get_local $3
      i32.ge_u
      if
       get_local $2
       get_local $3
       i32.eq
       if
        f32.const 0
        get_local $0
        f32.mul
        return
       end
       get_local $2
       get_local $3
       i32.sub
       set_local $2
      end
      get_local $2
      i32.const 1
      i32.shl
      set_local $2
      get_local $4
      i32.const 1
      i32.sub
      set_local $4
     end
     br $continue|0
    end
   end
  end
  get_local $2
  get_local $3
  i32.ge_u
  if
   get_local $2
   get_local $3
   i32.eq
   if
    f32.const 0
    get_local $0
    f32.mul
    return
   end
   get_local $2
   get_local $3
   i32.sub
   set_local $2
  end
  get_local $2
  i32.const 8
  i32.shl
  i32.clz
  set_local $10
  get_local $4
  get_local $10
  i32.sub
  set_local $4
  get_local $2
  get_local $10
  i32.shl
  set_local $2
  get_local $4
  i32.const 0
  i32.gt_s
  if
   get_local $2
   i32.const 1
   i32.const 23
   i32.shl
   i32.sub
   set_local $2
   get_local $2
   get_local $4
   i32.const 23
   i32.shl
   i32.or
   set_local $2
  else   
   get_local $2
   i32.const 0
   get_local $4
   i32.sub
   i32.const 1
   i32.add
   i32.shr_u
   set_local $2
  end
  get_local $2
  get_local $6
  i32.or
  set_local $2
  get_local $2
  f32.reinterpret/i32
 )
 (func $~lib/math/NativeMathf.scalbn (; 3 ;) (type $fif) (param $0 f32) (param $1 i32) (result f32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  set_local $2
  get_local $1
  i32.const 127
  i32.gt_s
  if
   get_local $2
   f32.const 1701411834604692317316873e14
   f32.mul
   set_local $2
   get_local $1
   i32.const 127
   i32.sub
   set_local $1
   get_local $1
   i32.const 127
   i32.gt_s
   if
    get_local $2
    f32.const 1701411834604692317316873e14
    f32.mul
    set_local $2
    get_local $1
    i32.const 127
    i32.sub
    tee_local $3
    i32.const 127
    tee_local $4
    get_local $3
    get_local $4
    i32.lt_s
    select
    set_local $1
   end
  else   
   get_local $1
   i32.const -126
   i32.lt_s
   if
    get_local $2
    f32.const 1.1754943508222875e-38
    f32.const 16777216
    f32.mul
    f32.mul
    set_local $2
    get_local $1
    i32.const 126
    i32.const 24
    i32.sub
    i32.add
    set_local $1
    get_local $1
    i32.const -126
    i32.lt_s
    if
     get_local $2
     f32.const 1.1754943508222875e-38
     f32.const 16777216
     f32.mul
     f32.mul
     set_local $2
     get_local $1
     i32.const 126
     i32.add
     i32.const 24
     i32.sub
     tee_local $3
     i32.const -126
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
  i32.const 127
  get_local $1
  i32.add
  i32.const 23
  i32.shl
  f32.reinterpret/i32
  f32.mul
 )
 (func $~lib/math/NativeMathf.pow (; 4 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
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
  (local $23 i32)
  (local $24 i32)
  (local $25 f32)
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
  get_local $0
  i32.reinterpret/f32
  set_local $2
  get_local $1
  i32.reinterpret/f32
  set_local $3
  get_local $2
  i32.const 2147483647
  i32.and
  set_local $4
  get_local $3
  i32.const 2147483647
  i32.and
  set_local $5
  get_local $5
  i32.const 0
  i32.eq
  if
   f32.const 1
   return
  end
  get_local $4
  i32.const 2139095040
  i32.gt_s
  tee_local $6
  if (result i32)
   get_local $6
  else   
   get_local $5
   i32.const 2139095040
   i32.gt_s
  end
  if
   get_local $0
   get_local $1
   f32.add
   return
  end
  i32.const 0
  set_local $7
  get_local $2
  i32.const 0
  i32.lt_s
  if
   get_local $5
   i32.const 1266679808
   i32.ge_s
   if
    i32.const 2
    set_local $7
   else    
    get_local $5
    i32.const 1065353216
    i32.ge_s
    if
     get_local $5
     i32.const 23
     i32.shr_s
     i32.const 127
     i32.sub
     set_local $9
     get_local $5
     i32.const 23
     get_local $9
     i32.sub
     i32.shr_s
     set_local $8
     get_local $8
     i32.const 23
     get_local $9
     i32.sub
     i32.shl
     get_local $5
     i32.eq
     if
      i32.const 2
      get_local $8
      i32.const 1
      i32.and
      i32.sub
      set_local $7
     end
    end
   end
  end
  get_local $5
  i32.const 2139095040
  i32.eq
  if
   get_local $4
   i32.const 1065353216
   i32.eq
   if
    f32.const nan:0x400000
    return
   else    
    get_local $4
    i32.const 1065353216
    i32.gt_s
    if
     get_local $3
     i32.const 0
     i32.ge_s
     if (result f32)
      get_local $1
     else      
      f32.const 0
     end
     return
    else     
     get_local $3
     i32.const 0
     i32.ge_s
     if (result f32)
      f32.const 0
     else      
      get_local $1
      f32.neg
     end
     return
    end
    unreachable
   end
   unreachable
   unreachable
  end
  get_local $5
  i32.const 1065353216
  i32.eq
  if
   get_local $3
   i32.const 0
   i32.ge_s
   if (result f32)
    get_local $0
   else    
    f32.const 1
    get_local $0
    f32.div
   end
   return
  end
  get_local $3
  i32.const 1073741824
  i32.eq
  if
   get_local $0
   get_local $0
   f32.mul
   return
  end
  get_local $3
  i32.const 1056964608
  i32.eq
  if
   get_local $2
   i32.const 0
   i32.ge_s
   if
    get_local $0
    f32.sqrt
    return
   end
  end
  get_local $0
  f32.abs
  set_local $10
  get_local $4
  i32.const 2139095040
  i32.eq
  tee_local $6
  if (result i32)
   get_local $6
  else   
   get_local $4
   i32.const 0
   i32.eq
  end
  tee_local $6
  if (result i32)
   get_local $6
  else   
   get_local $4
   i32.const 1065353216
   i32.eq
  end
  if
   get_local $10
   set_local $11
   get_local $3
   i32.const 0
   i32.lt_s
   if
    f32.const 1
    get_local $11
    f32.div
    set_local $11
   end
   get_local $2
   i32.const 0
   i32.lt_s
   if
    get_local $4
    i32.const 1065353216
    i32.sub
    get_local $7
    i32.or
    i32.const 0
    i32.eq
    if
     get_local $11
     get_local $11
     f32.sub
     get_local $11
     get_local $11
     f32.sub
     f32.div
     set_local $11
    else     
     get_local $7
     i32.const 1
     i32.eq
     if
      get_local $11
      f32.neg
      set_local $11
     end
    end
   end
   get_local $11
   return
  end
  f32.const 1
  set_local $12
  get_local $2
  i32.const 0
  i32.lt_s
  if
   get_local $7
   i32.const 0
   i32.eq
   if
    get_local $0
    get_local $0
    f32.sub
    get_local $0
    get_local $0
    f32.sub
    f32.div
    return
   end
   get_local $7
   i32.const 1
   i32.eq
   if
    f32.const -1
    set_local $12
   end
  end
  get_local $5
  i32.const 1291845632
  i32.gt_s
  if
   get_local $4
   i32.const 1065353208
   i32.lt_s
   if
    get_local $3
    i32.const 0
    i32.lt_s
    if (result f32)
     get_local $12
     f32.const 1000000015047466219876688e6
     f32.mul
     f32.const 1000000015047466219876688e6
     f32.mul
    else     
     get_local $12
     f32.const 1.0000000031710769e-30
     f32.mul
     f32.const 1.0000000031710769e-30
     f32.mul
    end
    return
   end
   get_local $4
   i32.const 1065353223
   i32.gt_s
   if
    get_local $3
    i32.const 0
    i32.gt_s
    if (result f32)
     get_local $12
     f32.const 1000000015047466219876688e6
     f32.mul
     f32.const 1000000015047466219876688e6
     f32.mul
    else     
     get_local $12
     f32.const 1.0000000031710769e-30
     f32.mul
     f32.const 1.0000000031710769e-30
     f32.mul
    end
    return
   end
   get_local $10
   f32.const 1
   f32.sub
   set_local $17
   get_local $17
   get_local $17
   f32.mul
   f32.const 0.5
   get_local $17
   f32.const 0.3333333432674408
   get_local $17
   f32.const 0.25
   f32.mul
   f32.sub
   f32.mul
   f32.sub
   f32.mul
   set_local $20
   f32.const 1.44268798828125
   get_local $17
   f32.mul
   set_local $18
   get_local $17
   f32.const 7.052607543300837e-06
   f32.mul
   get_local $20
   f32.const 1.4426950216293335
   f32.mul
   f32.sub
   set_local $19
   get_local $18
   get_local $19
   f32.add
   set_local $13
   get_local $13
   i32.reinterpret/f32
   set_local $24
   get_local $24
   i32.const -4096
   i32.and
   f32.reinterpret/i32
   set_local $13
   get_local $19
   get_local $13
   get_local $18
   f32.sub
   f32.sub
   set_local $14
  else   
   i32.const 0
   set_local $23
   get_local $4
   i32.const 8388608
   i32.lt_s
   if
    get_local $10
    f32.const 16777216
    f32.mul
    set_local $10
    get_local $23
    i32.const 24
    i32.sub
    set_local $23
    get_local $10
    i32.reinterpret/f32
    set_local $4
   end
   get_local $23
   get_local $4
   i32.const 23
   i32.shr_s
   i32.const 127
   i32.sub
   i32.add
   set_local $23
   get_local $4
   i32.const 8388607
   i32.and
   set_local $8
   get_local $8
   i32.const 1065353216
   i32.or
   set_local $4
   get_local $8
   i32.const 1885297
   i32.le_s
   if
    i32.const 0
    set_local $9
   else    
    get_local $8
    i32.const 6140887
    i32.lt_s
    if
     i32.const 1
     set_local $9
    else     
     i32.const 0
     set_local $9
     get_local $23
     i32.const 1
     i32.add
     set_local $23
     get_local $4
     i32.const 8388608
     i32.sub
     set_local $4
    end
   end
   get_local $4
   f32.reinterpret/i32
   set_local $10
   f32.const 1.5
   f32.const 1
   get_local $9
   select
   set_local $30
   get_local $10
   get_local $30
   f32.sub
   set_local $18
   f32.const 1
   get_local $10
   get_local $30
   f32.add
   f32.div
   set_local $19
   get_local $18
   get_local $19
   f32.mul
   set_local $16
   get_local $16
   set_local $26
   get_local $26
   i32.reinterpret/f32
   set_local $24
   get_local $24
   i32.const -4096
   i32.and
   f32.reinterpret/i32
   set_local $26
   get_local $4
   i32.const 1
   i32.shr_s
   i32.const -4096
   i32.and
   i32.const 536870912
   i32.or
   set_local $24
   get_local $24
   i32.const 4194304
   i32.add
   get_local $9
   i32.const 21
   i32.shl
   i32.add
   f32.reinterpret/i32
   set_local $28
   get_local $10
   get_local $28
   get_local $30
   f32.sub
   f32.sub
   set_local $29
   get_local $19
   get_local $18
   get_local $26
   get_local $28
   f32.mul
   f32.sub
   get_local $26
   get_local $29
   f32.mul
   f32.sub
   f32.mul
   set_local $27
   get_local $16
   get_local $16
   f32.mul
   set_local $25
   get_local $25
   get_local $25
   f32.mul
   f32.const 0.6000000238418579
   get_local $25
   f32.const 0.4285714328289032
   get_local $25
   f32.const 0.3333333432674408
   get_local $25
   f32.const 0.2727281153202057
   get_local $25
   f32.const 0.23066075146198273
   get_local $25
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
   set_local $15
   get_local $15
   get_local $27
   get_local $26
   get_local $16
   f32.add
   f32.mul
   f32.add
   set_local $15
   get_local $26
   get_local $26
   f32.mul
   set_local $25
   f32.const 3
   get_local $25
   f32.add
   get_local $15
   f32.add
   set_local $28
   get_local $28
   i32.reinterpret/f32
   set_local $24
   get_local $24
   i32.const -4096
   i32.and
   f32.reinterpret/i32
   set_local $28
   get_local $15
   get_local $28
   f32.const 3
   f32.sub
   get_local $25
   f32.sub
   f32.sub
   set_local $29
   get_local $26
   get_local $28
   f32.mul
   set_local $18
   get_local $27
   get_local $28
   f32.mul
   get_local $29
   get_local $16
   f32.mul
   f32.add
   set_local $19
   get_local $18
   get_local $19
   f32.add
   set_local $21
   get_local $21
   i32.reinterpret/f32
   set_local $24
   get_local $24
   i32.const -4096
   i32.and
   f32.reinterpret/i32
   set_local $21
   get_local $19
   get_local $21
   get_local $18
   f32.sub
   f32.sub
   set_local $22
   f32.const 0.9619140625
   get_local $21
   f32.mul
   set_local $31
   f32.const 1.5632208487659227e-06
   f32.const 0
   get_local $9
   select
   set_local $32
   f32.const -1.1736857413779944e-04
   get_local $21
   f32.mul
   get_local $22
   f32.const 0.9617967009544373
   f32.mul
   f32.add
   get_local $32
   f32.add
   set_local $33
   get_local $23
   f32.convert_s/i32
   set_local $17
   f32.const 0.5849609375
   f32.const 0
   get_local $9
   select
   set_local $34
   get_local $31
   get_local $33
   f32.add
   get_local $34
   f32.add
   get_local $17
   f32.add
   set_local $13
   get_local $13
   i32.reinterpret/f32
   set_local $24
   get_local $24
   i32.const -4096
   i32.and
   f32.reinterpret/i32
   set_local $13
   get_local $33
   get_local $13
   get_local $17
   f32.sub
   get_local $34
   f32.sub
   get_local $31
   f32.sub
   f32.sub
   set_local $14
  end
  get_local $1
  i32.reinterpret/f32
  set_local $24
  get_local $24
  i32.const -4096
  i32.and
  f32.reinterpret/i32
  set_local $35
  get_local $1
  get_local $35
  f32.sub
  get_local $13
  f32.mul
  get_local $1
  get_local $14
  f32.mul
  f32.add
  set_local $22
  get_local $35
  get_local $13
  f32.mul
  set_local $21
  get_local $22
  get_local $21
  f32.add
  set_local $11
  get_local $11
  i32.reinterpret/f32
  set_local $8
  get_local $8
  i32.const 1124073472
  i32.gt_s
  if
   get_local $12
   f32.const 1000000015047466219876688e6
   f32.mul
   f32.const 1000000015047466219876688e6
   f32.mul
   return
  else   
   get_local $8
   i32.const 1124073472
   i32.eq
   if
    get_local $22
    f32.const 4.299566569443414e-08
    f32.add
    get_local $11
    get_local $21
    f32.sub
    f32.gt
    if
     get_local $12
     f32.const 1000000015047466219876688e6
     f32.mul
     f32.const 1000000015047466219876688e6
     f32.mul
     return
    end
   else    
    get_local $8
    i32.const 2147483647
    i32.and
    i32.const 1125515264
    i32.gt_s
    if
     get_local $12
     f32.const 1.0000000031710769e-30
     f32.mul
     f32.const 1.0000000031710769e-30
     f32.mul
     return
    else     
     get_local $8
     i32.const -1021968384
     i32.eq
     if
      get_local $22
      get_local $11
      get_local $21
      f32.sub
      f32.le
      if
       get_local $12
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
  get_local $8
  i32.const 2147483647
  i32.and
  set_local $36
  get_local $36
  i32.const 23
  i32.shr_s
  i32.const 127
  i32.sub
  set_local $9
  i32.const 0
  set_local $23
  get_local $36
  i32.const 1056964608
  i32.gt_s
  if
   get_local $8
   i32.const 8388608
   get_local $9
   i32.const 1
   i32.add
   i32.shr_s
   i32.add
   set_local $23
   get_local $23
   i32.const 2147483647
   i32.and
   i32.const 23
   i32.shr_s
   i32.const 127
   i32.sub
   set_local $9
   get_local $23
   i32.const 8388607
   get_local $9
   i32.shr_s
   i32.const -1
   i32.xor
   i32.and
   f32.reinterpret/i32
   set_local $17
   get_local $23
   i32.const 8388607
   i32.and
   i32.const 8388608
   i32.or
   i32.const 23
   get_local $9
   i32.sub
   i32.shr_s
   set_local $23
   get_local $8
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    get_local $23
    i32.sub
    set_local $23
   end
   get_local $21
   get_local $17
   f32.sub
   set_local $21
  end
  get_local $22
  get_local $21
  f32.add
  set_local $17
  get_local $17
  i32.reinterpret/f32
  set_local $24
  get_local $24
  i32.const -32768
  i32.and
  f32.reinterpret/i32
  set_local $17
  get_local $17
  f32.const 0.693145751953125
  f32.mul
  set_local $18
  get_local $22
  get_local $17
  get_local $21
  f32.sub
  f32.sub
  f32.const 0.6931471824645996
  f32.mul
  get_local $17
  f32.const 1.4286065379565116e-06
  f32.mul
  f32.add
  set_local $19
  get_local $18
  get_local $19
  f32.add
  set_local $11
  get_local $19
  get_local $11
  get_local $18
  f32.sub
  f32.sub
  set_local $20
  get_local $11
  get_local $11
  f32.mul
  set_local $17
  get_local $11
  get_local $17
  f32.const 0.1666666716337204
  get_local $17
  f32.const -2.7777778450399637e-03
  get_local $17
  f32.const 6.61375597701408e-05
  get_local $17
  f32.const -1.6533901998627698e-06
  get_local $17
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
  set_local $13
  get_local $11
  get_local $13
  f32.mul
  get_local $13
  f32.const 2
  f32.sub
  f32.div
  get_local $20
  get_local $11
  get_local $20
  f32.mul
  f32.add
  f32.sub
  set_local $15
  f32.const 1
  get_local $15
  get_local $11
  f32.sub
  f32.sub
  set_local $11
  get_local $11
  i32.reinterpret/f32
  set_local $8
  get_local $8
  get_local $23
  i32.const 23
  i32.shl
  i32.add
  set_local $8
  get_local $8
  i32.const 23
  i32.shr_s
  i32.const 0
  i32.le_s
  if
   get_local $11
   get_local $23
   call $~lib/math/NativeMathf.scalbn
   set_local $11
  else   
   get_local $8
   f32.reinterpret/i32
   set_local $11
  end
  get_local $12
  get_local $11
  f32.mul
 )
 (func $~lib/math/NativeMath.mod (; 5 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  get_local $0
  i64.reinterpret/f64
  set_local $2
  get_local $1
  i64.reinterpret/f64
  set_local $3
  get_local $2
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  set_local $4
  get_local $3
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  set_local $5
  get_local $2
  i64.const 63
  i64.shr_u
  set_local $6
  get_local $3
  i64.const 1
  i64.shl
  set_local $7
  get_local $7
  i64.const 0
  i64.eq
  tee_local $8
  if (result i32)
   get_local $8
  else   
   get_local $4
   i64.const 2047
   i64.eq
  end
  tee_local $8
  if (result i32)
   get_local $8
  else   
   get_local $1
   get_local $1
   f64.ne
  end
  i32.const 0
  i32.ne
  if
   get_local $0
   get_local $1
   f64.mul
   get_local $0
   get_local $1
   f64.mul
   f64.div
   return
  end
  get_local $2
  i64.const 1
  i64.shl
  set_local $9
  get_local $9
  get_local $7
  i64.le_u
  if
   get_local $9
   get_local $7
   i64.eq
   if
    f64.const 0
    get_local $0
    f64.mul
    return
   end
   get_local $0
   return
  end
  get_local $4
  i64.eqz
  if
   get_local $4
   get_local $2
   i64.const 12
   i64.shl
   i64.clz
   i64.sub
   set_local $4
   get_local $2
   i64.const 0
   get_local $4
   i64.sub
   i64.const 1
   i64.add
   i64.shl
   set_local $2
  else   
   get_local $2
   i64.const -1
   i64.const 12
   i64.shr_u
   i64.and
   set_local $2
   get_local $2
   i64.const 1
   i64.const 52
   i64.shl
   i64.or
   set_local $2
  end
  get_local $5
  i64.eqz
  if
   get_local $5
   get_local $3
   i64.const 12
   i64.shl
   i64.clz
   i64.sub
   set_local $5
   get_local $3
   i64.const 0
   get_local $5
   i64.sub
   i64.const 1
   i64.add
   i64.shl
   set_local $3
  else   
   get_local $3
   i64.const -1
   i64.const 12
   i64.shr_u
   i64.and
   set_local $3
   get_local $3
   i64.const 1
   i64.const 52
   i64.shl
   i64.or
   set_local $3
  end
  block $break|0
   loop $continue|0
    get_local $4
    get_local $5
    i64.gt_s
    if
     block
      get_local $2
      get_local $3
      i64.ge_u
      if
       get_local $2
       get_local $3
       i64.eq
       if
        f64.const 0
        get_local $0
        f64.mul
        return
       end
       get_local $2
       get_local $3
       i64.sub
       set_local $2
      end
      get_local $2
      i64.const 1
      i64.shl
      set_local $2
      get_local $4
      i64.const 1
      i64.sub
      set_local $4
     end
     br $continue|0
    end
   end
  end
  get_local $2
  get_local $3
  i64.ge_u
  if
   get_local $2
   get_local $3
   i64.eq
   if
    f64.const 0
    get_local $0
    f64.mul
    return
   end
   get_local $2
   get_local $3
   i64.sub
   set_local $2
  end
  get_local $2
  i64.const 11
  i64.shl
  i64.clz
  set_local $10
  get_local $4
  get_local $10
  i64.sub
  set_local $4
  get_local $2
  get_local $10
  i64.shl
  set_local $2
  get_local $4
  i64.const 0
  i64.gt_s
  if
   get_local $2
   i64.const 1
   i64.const 52
   i64.shl
   i64.sub
   set_local $2
   get_local $2
   get_local $4
   i64.const 52
   i64.shl
   i64.or
   set_local $2
  else   
   get_local $2
   i64.const 0
   get_local $4
   i64.sub
   i64.const 1
   i64.add
   i64.shr_u
   set_local $2
  end
  get_local $2
  get_local $6
  i64.const 63
  i64.shl
  i64.or
  set_local $2
  get_local $2
  f64.reinterpret/i64
 )
 (func $start (; 6 ;) (type $v)
  get_global $binary/i
  i32.const 1
  i32.lt_s
  drop
  get_global $binary/i
  i32.const 1
  i32.gt_s
  drop
  get_global $binary/i
  i32.const 1
  i32.le_s
  drop
  get_global $binary/i
  i32.const 1
  i32.ge_s
  drop
  get_global $binary/i
  i32.const 1
  i32.eq
  drop
  get_global $binary/i
  i32.const 1
  i32.eq
  drop
  get_global $binary/i
  i32.const 1
  i32.add
  drop
  get_global $binary/i
  i32.const 1
  i32.sub
  drop
  get_global $binary/i
  i32.const 1
  i32.mul
  drop
  get_global $binary/i
  i32.const 1
  i32.div_s
  drop
  get_global $binary/i
  i32.const 1
  i32.rem_s
  drop
  get_global $binary/i
  f64.convert_s/i32
  f64.const 1
  call $~lib/math/NativeMath.pow
  drop
  get_global $binary/i
  i32.const 1
  i32.shl
  drop
  get_global $binary/i
  i32.const 1
  i32.shr_s
  drop
  get_global $binary/i
  i32.const 1
  i32.shr_u
  drop
  get_global $binary/i
  i32.const 1
  i32.and
  drop
  get_global $binary/i
  i32.const 1
  i32.or
  drop
  get_global $binary/i
  i32.const 1
  i32.xor
  drop
  get_global $binary/i
  i32.const 1
  i32.lt_s
  set_global $binary/b
  get_global $binary/i
  i32.const 1
  i32.gt_s
  set_global $binary/b
  get_global $binary/i
  i32.const 1
  i32.le_s
  set_global $binary/b
  get_global $binary/i
  i32.const 1
  i32.ge_s
  set_global $binary/b
  get_global $binary/i
  i32.const 1
  i32.eq
  set_global $binary/b
  get_global $binary/i
  i32.const 1
  i32.eq
  set_global $binary/b
  get_global $binary/i
  i32.const 1
  i32.add
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.sub
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.mul
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.div_s
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.rem_s
  set_global $binary/i
  get_global $binary/i
  f64.convert_s/i32
  f64.const 1
  call $~lib/math/NativeMath.pow
  i32.trunc_s/f64
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.shl
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.shr_s
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.shr_u
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.and
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.or
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.xor
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.add
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.sub
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.mul
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.rem_s
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.shl
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.shr_s
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.shr_u
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.and
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.or
  set_global $binary/i
  get_global $binary/i
  i32.const 1
  i32.xor
  set_global $binary/i
  get_global $binary/I
  i64.const 1
  i64.lt_s
  drop
  get_global $binary/I
  i64.const 1
  i64.gt_s
  drop
  get_global $binary/I
  i64.const 1
  i64.le_s
  drop
  get_global $binary/I
  i64.const 1
  i64.ge_s
  drop
  get_global $binary/I
  i64.const 1
  i64.eq
  drop
  get_global $binary/I
  i64.const 1
  i64.eq
  drop
  get_global $binary/I
  i64.const 1
  i64.add
  drop
  get_global $binary/I
  i64.const 1
  i64.sub
  drop
  get_global $binary/I
  i64.const 1
  i64.mul
  drop
  get_global $binary/I
  i64.const 1
  i64.div_s
  drop
  get_global $binary/I
  i64.const 1
  i64.rem_s
  drop
  get_global $binary/I
  f64.convert_s/i64
  f64.const 1
  call $~lib/math/NativeMath.pow
  drop
  get_global $binary/I
  i64.const 1
  i64.shl
  drop
  get_global $binary/I
  i64.const 1
  i64.shr_s
  drop
  get_global $binary/I
  i64.const 1
  i64.shr_u
  drop
  get_global $binary/I
  i64.const 1
  i64.and
  drop
  get_global $binary/I
  i64.const 1
  i64.or
  drop
  get_global $binary/I
  i64.const 1
  i64.xor
  drop
  get_global $binary/I
  i64.const 1
  i64.lt_s
  set_global $binary/b
  get_global $binary/I
  i64.const 1
  i64.gt_s
  set_global $binary/b
  get_global $binary/I
  i64.const 1
  i64.le_s
  set_global $binary/b
  get_global $binary/I
  i64.const 1
  i64.ge_s
  set_global $binary/b
  get_global $binary/I
  i64.const 1
  i64.eq
  set_global $binary/b
  get_global $binary/I
  i64.const 1
  i64.eq
  set_global $binary/b
  get_global $binary/I
  i64.const 1
  i64.add
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.sub
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.mul
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.div_s
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.rem_s
  set_global $binary/I
  get_global $binary/I
  f64.convert_s/i64
  f64.const 1
  call $~lib/math/NativeMath.pow
  i64.trunc_s/f64
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.shl
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.shr_s
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.shr_u
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.and
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.or
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.xor
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.add
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.sub
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.mul
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.rem_s
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.shl
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.shr_s
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.shr_u
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.and
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.or
  set_global $binary/I
  get_global $binary/I
  i64.const 1
  i64.xor
  set_global $binary/I
  get_global $binary/f
  f32.const 1
  f32.lt
  drop
  get_global $binary/f
  f32.const 1
  f32.gt
  drop
  get_global $binary/f
  f32.const 1
  f32.le
  drop
  get_global $binary/f
  f32.const 1
  f32.ge
  drop
  get_global $binary/f
  f32.const 1
  f32.eq
  drop
  get_global $binary/f
  f32.const 1
  f32.eq
  drop
  get_global $binary/f
  f32.const 1
  f32.add
  drop
  get_global $binary/f
  f32.const 1
  f32.sub
  drop
  get_global $binary/f
  f32.const 1
  f32.mul
  drop
  get_global $binary/f
  f32.const 1
  f32.div
  drop
  get_global $binary/f
  f32.const 1
  call $~lib/math/NativeMathf.mod
  drop
  get_global $binary/f
  f32.const 1
  call $~lib/math/NativeMathf.pow
  drop
  get_global $binary/f
  f32.const 1
  f32.lt
  set_global $binary/b
  get_global $binary/f
  f32.const 1
  f32.gt
  set_global $binary/b
  get_global $binary/f
  f32.const 1
  f32.le
  set_global $binary/b
  get_global $binary/f
  f32.const 1
  f32.ge
  set_global $binary/b
  get_global $binary/f
  f32.const 1
  f32.eq
  set_global $binary/b
  get_global $binary/f
  f32.const 1
  f32.eq
  set_global $binary/b
  get_global $binary/f
  f32.const 1
  f32.add
  set_global $binary/f
  get_global $binary/f
  f32.const 1
  f32.sub
  set_global $binary/f
  get_global $binary/f
  f32.const 1
  f32.mul
  set_global $binary/f
  get_global $binary/f
  f32.const 1
  f32.div
  set_global $binary/f
  get_global $binary/f
  f32.const 1
  call $~lib/math/NativeMathf.mod
  set_global $binary/f
  get_global $binary/f
  f32.const 1
  call $~lib/math/NativeMathf.pow
  set_global $binary/f
  get_global $binary/f
  f32.const 1
  f32.add
  set_global $binary/f
  get_global $binary/f
  f32.const 1
  f32.sub
  set_global $binary/f
  get_global $binary/f
  f32.const 1
  f32.mul
  set_global $binary/f
  get_global $binary/f
  f32.const 1
  call $~lib/math/NativeMathf.mod
  set_global $binary/f
  get_global $binary/f
  f32.const 1
  call $~lib/math/NativeMathf.pow
  set_global $binary/f
  get_global $binary/F
  f64.const 1
  f64.lt
  drop
  get_global $binary/F
  f64.const 1
  f64.gt
  drop
  get_global $binary/F
  f64.const 1
  f64.le
  drop
  get_global $binary/F
  f64.const 1
  f64.ge
  drop
  get_global $binary/F
  f64.const 1
  f64.eq
  drop
  get_global $binary/F
  f64.const 1
  f64.eq
  drop
  get_global $binary/F
  f64.const 1
  f64.add
  drop
  get_global $binary/F
  f64.const 1
  f64.sub
  drop
  get_global $binary/F
  f64.const 1
  f64.mul
  drop
  get_global $binary/F
  f64.const 1
  f64.div
  drop
  get_global $binary/F
  f64.const 1
  call $~lib/math/NativeMath.mod
  drop
  get_global $binary/F
  f64.const 1
  call $~lib/math/NativeMath.pow
  drop
  get_global $binary/F
  f64.const 1
  f64.lt
  set_global $binary/b
  get_global $binary/F
  f64.const 1
  f64.gt
  set_global $binary/b
  get_global $binary/F
  f64.const 1
  f64.le
  set_global $binary/b
  get_global $binary/F
  f64.const 1
  f64.ge
  set_global $binary/b
  get_global $binary/F
  f64.const 1
  f64.eq
  set_global $binary/b
  get_global $binary/F
  f64.const 1
  f64.eq
  set_global $binary/b
  get_global $binary/F
  f64.const 1
  f64.add
  set_global $binary/F
  get_global $binary/F
  f64.const 1
  f64.sub
  set_global $binary/F
  get_global $binary/F
  f64.const 1
  f64.mul
  set_global $binary/F
  get_global $binary/F
  f64.const 1
  f64.div
  set_global $binary/F
  get_global $binary/F
  f64.const 1
  call $~lib/math/NativeMath.mod
  set_global $binary/F
  get_global $binary/F
  f64.const 1
  call $~lib/math/NativeMath.pow
  set_global $binary/F
  get_global $binary/F
  f64.const 1
  f64.add
  set_global $binary/F
  get_global $binary/F
  f64.const 1
  f64.sub
  set_global $binary/F
  get_global $binary/F
  f64.const 1
  f64.mul
  set_global $binary/F
  get_global $binary/F
  f64.const 1
  call $~lib/math/NativeMath.mod
  set_global $binary/F
  get_global $binary/F
  f64.const 1
  call $~lib/math/NativeMath.pow
  set_global $binary/F
 )
 (func $null (; 7 ;) (type $v)
 )
)
