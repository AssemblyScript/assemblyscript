(module
 (type $v (func))
 (type $FUNCSIG$dd (func (param f64) (result f64)))
 (type $FUNCSIG$ff (func (param f32) (result f32)))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $binary/b (mut i32) (i32.const 0))
 (global $binary/i (mut i32) (i32.const 0))
 (global $binary/I (mut i64) (i64.const 0))
 (global $binary/f (mut f32) (f32.const 0))
 (global $binary/F (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/math/NativeMath.pow (; 0 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i64.reinterpret/f64
  tee_local $2
  i32.wrap/i64
  set_local $3
  get_local $2
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  tee_local $4
  i32.const 2147483647
  i32.and
  tee_local $5
  i32.const 2146435072
  i32.gt_s
  tee_local $1
  i32.eqz
  if
   get_local $5
   i32.const 2146435072
   i32.eq
   tee_local $1
   if
    get_local $3
    i32.const 0
    i32.ne
    set_local $1
   end
  end
  get_local $1
  i32.eqz
  if
   i32.const 0
   set_local $1
  end
  get_local $1
  i32.eqz
  if
   i32.const 0
   set_local $1
  end
  get_local $1
  if
   get_local $0
   f64.const 1
   f64.add
   return
  end
  get_local $0
 )
 (func $~lib/math/NativeMathf.mod (; 1 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $folding-inner0
   get_local $0
   i32.reinterpret/f32
   tee_local $1
   i32.const 23
   i32.shr_u
   i32.const 255
   i32.and
   set_local $2
   get_local $1
   i32.const -2147483648
   i32.and
   set_local $4
   get_local $2
   i32.const 255
   i32.eq
   tee_local $3
   i32.eqz
   if
    i32.const 0
    set_local $3
   end
   get_local $3
   i32.const 1
   i32.and
   if
    get_local $0
    get_local $0
    f32.div
    return
   end
   get_local $1
   i32.const 1
   i32.shl
   tee_local $3
   i32.const 2130706432
   i32.le_u
   if
    get_local $3
    i32.const 2130706432
    i32.eq
    br_if $folding-inner0
    get_local $0
    return
   end
   get_local $2
   if (result i32)
    get_local $1
    i32.const 8388607
    i32.and
    i32.const 8388608
    i32.or
   else    
    get_local $1
    i32.const 1
    get_local $2
    get_local $1
    i32.const 9
    i32.shl
    i32.clz
    i32.sub
    tee_local $2
    i32.sub
    i32.shl
   end
   set_local $1
   loop $continue|0
    get_local $2
    i32.const 127
    i32.gt_s
    if
     get_local $1
     i32.const 8388608
     i32.ge_u
     if
      get_local $1
      i32.const 8388608
      i32.eq
      br_if $folding-inner0
      get_local $1
      i32.const 8388608
      i32.sub
      set_local $1
     end
     get_local $1
     i32.const 1
     i32.shl
     set_local $1
     get_local $2
     i32.const 1
     i32.sub
     set_local $2
     br $continue|0
    end
   end
   get_local $1
   i32.const 8388608
   i32.ge_u
   if
    get_local $1
    i32.const 8388608
    i32.eq
    br_if $folding-inner0
    get_local $1
    i32.const 8388608
    i32.sub
    set_local $1
   end
   get_local $1
   get_local $1
   i32.const 8
   i32.shl
   i32.clz
   tee_local $3
   i32.shl
   set_local $1
   get_local $2
   get_local $3
   i32.sub
   tee_local $2
   i32.const 0
   i32.gt_s
   if (result i32)
    get_local $1
    i32.const 8388608
    i32.sub
    get_local $2
    i32.const 23
    i32.shl
    i32.or
   else    
    get_local $1
    i32.const 1
    get_local $2
    i32.sub
    i32.shr_u
   end
   tee_local $1
   get_local $4
   i32.or
   f32.reinterpret/i32
   return
  end
  f32.const 0
  get_local $0
  f32.mul
 )
 (func $~lib/math/NativeMathf.pow (; 2 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  i32.reinterpret/f32
  tee_local $2
  i32.const 2147483647
  i32.and
  i32.const 2139095040
  i32.gt_s
  tee_local $1
  i32.eqz
  if
   i32.const 0
   set_local $1
  end
  get_local $1
  if
   get_local $0
   f32.const 1
   f32.add
   return
  end
  get_local $0
 )
 (func $~lib/math/NativeMath.mod (; 3 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  block $folding-inner0
   get_local $0
   i64.reinterpret/f64
   tee_local $1
   i64.const 52
   i64.shr_u
   i64.const 2047
   i64.and
   set_local $2
   get_local $1
   i64.const 63
   i64.shr_u
   set_local $5
   get_local $2
   i64.const 2047
   i64.eq
   tee_local $4
   i32.eqz
   if
    i32.const 0
    set_local $4
   end
   get_local $4
   if
    get_local $0
    get_local $0
    f64.div
    return
   end
   get_local $1
   i64.const 1
   i64.shl
   tee_local $3
   i64.const 9214364837600034816
   i64.le_u
   if
    get_local $3
    i64.const 9214364837600034816
    i64.eq
    br_if $folding-inner0
    get_local $0
    return
   end
   get_local $2
   i64.eqz
   if (result i64)
    get_local $1
    i64.const 0
    get_local $2
    get_local $1
    i64.const 12
    i64.shl
    i64.clz
    i64.sub
    tee_local $2
    i64.sub
    i64.const 1
    i64.add
    i64.shl
   else    
    get_local $1
    i64.const 4503599627370495
    i64.and
    i64.const 4503599627370496
    i64.or
   end
   set_local $1
   loop $continue|0
    get_local $2
    i64.const 1023
    i64.gt_s
    if
     get_local $1
     i64.const 4503599627370496
     i64.ge_u
     if
      get_local $1
      i64.const 4503599627370496
      i64.eq
      br_if $folding-inner0
      get_local $1
      i64.const 4503599627370496
      i64.sub
      set_local $1
     end
     get_local $1
     i64.const 1
     i64.shl
     set_local $1
     get_local $2
     i64.const 1
     i64.sub
     set_local $2
     br $continue|0
    end
   end
   get_local $1
   i64.const 4503599627370496
   i64.ge_u
   if
    get_local $1
    i64.const 4503599627370496
    i64.eq
    br_if $folding-inner0
    get_local $1
    i64.const 4503599627370496
    i64.sub
    set_local $1
   end
   get_local $1
   get_local $1
   i64.const 11
   i64.shl
   i64.clz
   tee_local $3
   i64.shl
   set_local $1
   get_local $2
   get_local $3
   i64.sub
   tee_local $2
   i64.const 0
   i64.gt_s
   if (result i64)
    get_local $1
    i64.const 4503599627370496
    i64.sub
    get_local $2
    i64.const 52
    i64.shl
    i64.or
   else    
    get_local $1
    i64.const 0
    get_local $2
    i64.sub
    i64.const 1
    i64.add
    i64.shr_u
   end
   tee_local $1
   get_local $5
   i64.const 63
   i64.shl
   i64.or
   f64.reinterpret/i64
   return
  end
  f64.const 0
  get_local $0
  f64.mul
 )
 (func $start (; 4 ;) (type $v)
  get_global $binary/i
  i32.const 1
  i32.rem_s
  drop
  get_global $binary/i
  f64.convert_s/i32
  call $~lib/math/NativeMath.pow
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
  i32.rem_s
  set_global $binary/i
  get_global $binary/i
  f64.convert_s/i32
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
  i64.rem_s
  drop
  get_global $binary/I
  f64.convert_s/i64
  call $~lib/math/NativeMath.pow
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
  i64.rem_s
  set_global $binary/I
  get_global $binary/I
  f64.convert_s/i64
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
  call $~lib/math/NativeMathf.mod
  drop
  get_global $binary/f
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
  call $~lib/math/NativeMathf.mod
  set_global $binary/f
  get_global $binary/f
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
  call $~lib/math/NativeMathf.mod
  set_global $binary/f
  get_global $binary/f
  call $~lib/math/NativeMathf.pow
  set_global $binary/f
  get_global $binary/F
  call $~lib/math/NativeMath.mod
  drop
  get_global $binary/F
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
  call $~lib/math/NativeMath.mod
  set_global $binary/F
  get_global $binary/F
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
  call $~lib/math/NativeMath.mod
  set_global $binary/F
  get_global $binary/F
  call $~lib/math/NativeMath.pow
  set_global $binary/F
 )
 (func $null (; 5 ;) (type $v)
  nop
 )
)
