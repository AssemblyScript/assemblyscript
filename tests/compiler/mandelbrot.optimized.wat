(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $FF (func (param f64) (result f64)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "computeLine" (func $../../examples/mandelbrot/assembly/index/computeLine))
 (func $~lib/math/NativeMath.log (; 0 ;) (type $FF) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  get_local $0
  i64.reinterpret/f64
  tee_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  tee_local $1
  i32.const 1048576
  i32.lt_u
  tee_local $2
  i32.eqz
  if
   get_local $1
   i32.const 31
   i32.shr_u
   set_local $2
  end
  get_local $2
  if
   get_local $4
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
   get_local $1
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
   i32.const -54
   set_local $3
   get_local $0
   f64.const 18014398509481984
   f64.mul
   i64.reinterpret/f64
   tee_local $4
   i64.const 32
   i64.shr_u
   i32.wrap/i64
   set_local $1
  else   
   get_local $1
   i32.const 2146435072
   i32.ge_u
   if
    get_local $0
    return
   else    
    get_local $1
    i32.const 1072693248
    i32.eq
    tee_local $2
    if
     get_local $4
     i64.const 32
     i64.shl
     i64.const 0
     i64.eq
     set_local $2
    end
    get_local $2
    if
     f64.const 0
     return
    end
   end
  end
  get_local $3
  get_local $1
  i32.const 614242
  i32.add
  tee_local $1
  i32.const 20
  i32.shr_s
  i32.const 1023
  i32.sub
  i32.add
  set_local $3
  get_local $1
  i32.const 1048575
  i32.and
  i32.const 1072079006
  i32.add
  i64.extend_u/i32
  i64.const 32
  i64.shl
  get_local $4
  i64.const 4294967295
  i64.and
  i64.or
  f64.reinterpret/i64
  f64.const 1
  f64.sub
  tee_local $5
  f64.const 2
  get_local $5
  f64.add
  f64.div
  tee_local $6
  get_local $6
  f64.mul
  tee_local $7
  get_local $7
  f64.mul
  set_local $0
  get_local $6
  f64.const 0.5
  get_local $5
  f64.mul
  get_local $5
  f64.mul
  tee_local $6
  get_local $7
  f64.const 0.6666666666666735
  get_local $0
  f64.const 0.2857142874366239
  get_local $0
  f64.const 0.1818357216161805
  get_local $0
  f64.const 0.14798198605116586
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  get_local $0
  f64.const 0.3999999999940942
  get_local $0
  f64.const 0.22222198432149784
  get_local $0
  f64.const 0.15313837699209373
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.add
  f64.mul
  get_local $3
  f64.convert_s/i32
  tee_local $0
  f64.const 1.9082149292705877e-10
  f64.mul
  f64.add
  get_local $6
  f64.sub
  get_local $5
  f64.add
  get_local $0
  f64.const 0.6931471803691238
  f64.mul
  f64.add
 )
 (func $../../examples/mandelbrot/assembly/index/computeLine (; 1 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  get_local $1
  f64.convert_u/i32
  tee_local $6
  f64.const 1.6
  f64.div
  set_local $11
  get_local $0
  f64.convert_u/i32
  get_local $2
  f64.convert_u/i32
  tee_local $4
  f64.const 2
  f64.div
  tee_local $7
  f64.sub
  f64.const 10
  f64.const 3
  get_local $6
  f64.mul
  f64.const 4
  get_local $4
  f64.mul
  f64.min
  f64.div
  tee_local $12
  f64.mul
  set_local $9
  block $break|0
   loop $repeat|0
    get_local $8
    get_local $1
    i32.ge_u
    br_if $break|0
    get_local $8
    f64.convert_u/i32
    get_local $11
    f64.sub
    get_local $12
    f64.mul
    set_local $10
    f64.const 0
    set_local $4
    f64.const 0
    set_local $5
    i32.const 0
    set_local $2
    block $break|1
     loop $continue|1
      get_local $4
      get_local $4
      f64.mul
      tee_local $6
      get_local $5
      get_local $5
      f64.mul
      tee_local $7
      f64.add
      f64.const 4
      f64.le
      if
       f64.const 2
       get_local $4
       f64.mul
       get_local $5
       f64.mul
       get_local $9
       f64.add
       set_local $5
       get_local $6
       get_local $7
       f64.sub
       get_local $10
       f64.add
       set_local $4
       get_local $2
       get_local $3
       i32.ge_u
       br_if $break|1
       get_local $2
       i32.const 1
       i32.add
       set_local $2
       br $continue|1
      end
     end
    end
    block $break|2
     f64.const 8
     get_local $3
     f64.convert_u/i32
     f64.min
     set_local $6
     loop $repeat|2
      get_local $2
      f64.convert_u/i32
      get_local $6
      f64.lt
      i32.eqz
      br_if $break|2
      get_local $4
      get_local $4
      f64.mul
      get_local $5
      get_local $5
      f64.mul
      f64.sub
      get_local $10
      f64.add
      set_local $7
      f64.const 2
      get_local $4
      f64.mul
      get_local $5
      f64.mul
      get_local $9
      f64.add
      set_local $5
      get_local $7
      set_local $4
      get_local $2
      i32.const 1
      i32.add
      set_local $2
      br $repeat|2
      unreachable
     end
     unreachable
    end
    get_local $0
    get_local $1
    i32.mul
    get_local $8
    i32.add
    i32.const 1
    i32.shl
    get_local $4
    get_local $4
    f64.mul
    get_local $5
    get_local $5
    f64.mul
    f64.add
    f64.sqrt
    call $~lib/math/NativeMath.log
    call $~lib/math/NativeMath.log
    f64.const 0.6931471805599453
    f64.div
    tee_local $6
    get_local $6
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     f64.const 2047
     get_local $2
     i32.const 1
     i32.add
     f64.convert_u/i32
     get_local $6
     f64.sub
     get_local $3
     f64.convert_u/i32
     f64.div
     f64.const 0
     f64.max
     f64.const 1
     f64.min
     f64.mul
     i32.trunc_u/f64
    else     
     i32.const 2047
    end
    tee_local $2
    i32.store16
    get_local $8
    i32.const 1
    i32.add
    set_local $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $null (; 2 ;) (type $v)
  nop
 )
)
