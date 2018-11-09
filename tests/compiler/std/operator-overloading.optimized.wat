(module
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $FFF (func (param f64 f64) (result f64)))
 (type $FiF (func (param f64 i32) (result f64)))
 (type $v (func))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\1b\00\00\00s\00t\00d\00/\00o\00p\00e\00r\00a\00t\00o\00r\00-\00o\00v\00e\00r\00l\00o\00a\00d\00i\00n\00g\00.\00t\00s")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/operator-overloading/a1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/a2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/a (mut i32) (i32.const 0))
 (global $std/operator-overloading/s1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/s2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/s (mut i32) (i32.const 0))
 (global $std/operator-overloading/m1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/m2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/m (mut i32) (i32.const 0))
 (global $std/operator-overloading/d1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/d2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/d (mut i32) (i32.const 0))
 (global $std/operator-overloading/f1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/f2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/f (mut i32) (i32.const 0))
 (global $std/operator-overloading/p1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/p2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/p (mut i32) (i32.const 0))
 (global $std/operator-overloading/n1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/n2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/n (mut i32) (i32.const 0))
 (global $std/operator-overloading/o1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/o2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/o (mut i32) (i32.const 0))
 (global $std/operator-overloading/x1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/x2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/x (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq3 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq4 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eqf (mut i32) (i32.const 0))
 (global $std/operator-overloading/gt1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gt2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gt (mut i32) (i32.const 0))
 (global $std/operator-overloading/gte1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gte2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gte (mut i32) (i32.const 0))
 (global $std/operator-overloading/le1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/le2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/le (mut i32) (i32.const 0))
 (global $std/operator-overloading/leq1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/leq2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/leq (mut i32) (i32.const 0))
 (global $std/operator-overloading/shr (mut i32) (i32.const 0))
 (global $std/operator-overloading/sres (mut i32) (i32.const 0))
 (global $std/operator-overloading/shu (mut i32) (i32.const 0))
 (global $std/operator-overloading/ures (mut i32) (i32.const 0))
 (global $std/operator-overloading/shl (mut i32) (i32.const 0))
 (global $std/operator-overloading/pos (mut i32) (i32.const 0))
 (global $std/operator-overloading/pres (mut i32) (i32.const 0))
 (global $std/operator-overloading/neg (mut i32) (i32.const 0))
 (global $std/operator-overloading/nres (mut i32) (i32.const 0))
 (global $std/operator-overloading/not (mut i32) (i32.const 0))
 (global $std/operator-overloading/res (mut i32) (i32.const 0))
 (global $std/operator-overloading/excl (mut i32) (i32.const 0))
 (global $std/operator-overloading/bres (mut i32) (i32.const 0))
 (global $std/operator-overloading/incdec (mut i32) (i32.const 0))
 (global $std/operator-overloading/tmp (mut i32) (i32.const 0))
 (global $std/operator-overloading/ais1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/ais2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/ais (mut i32) (i32.const 0))
 (global $std/operator-overloading/aii1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/aii2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/aii (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  get_global $~lib/allocator/arena/offset
  tee_local $1
  get_local $0
  i32.const 1
  get_local $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  tee_local $2
  current_memory
  tee_local $3
  i32.const 16
  i32.shl
  i32.gt_u
  if
   get_local $3
   get_local $2
   get_local $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   tee_local $0
   get_local $3
   get_local $0
   i32.gt_s
   select
   grow_memory
   i32.const 0
   i32.lt_s
   if
    get_local $0
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  get_local $2
  set_global $~lib/allocator/arena/offset
  get_local $1
 )
 (func $std/operator-overloading/Tester#constructor (; 2 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 8
  call $~lib/allocator/arena/__memory_allocate
  tee_local $2
  get_local $0
  i32.store
  get_local $2
  get_local $1
  i32.store offset=4
  get_local $2
 )
 (func $~lib/math/NativeMath.scalbn (; 3 ;) (type $FiF) (param $0 f64) (param $1 i32) (result f64)
  get_local $1
  i32.const 1023
  i32.gt_s
  if
   get_local $0
   f64.const 8988465674311579538646525e283
   f64.mul
   set_local $0
   get_local $1
   i32.const 1023
   i32.sub
   tee_local $1
   i32.const 1023
   i32.gt_s
   if
    get_local $0
    f64.const 8988465674311579538646525e283
    f64.mul
    set_local $0
    get_local $1
    i32.const 1023
    i32.sub
    tee_local $1
    i32.const 1023
    get_local $1
    i32.const 1023
    i32.lt_s
    select
    set_local $1
   end
  else   
   get_local $1
   i32.const -1022
   i32.lt_s
   if
    get_local $0
    f64.const 2.004168360008973e-292
    f64.mul
    set_local $0
    get_local $1
    i32.const 969
    i32.add
    tee_local $1
    i32.const -1022
    i32.lt_s
    if
     get_local $0
     f64.const 2.004168360008973e-292
     f64.mul
     set_local $0
     get_local $1
     i32.const 969
     i32.add
     tee_local $1
     i32.const -1022
     get_local $1
     i32.const -1022
     i32.gt_s
     select
     set_local $1
    end
   end
  end
  get_local $0
  get_local $1
  i64.extend_s/i32
  i64.const 1023
  i64.add
  i64.const 52
  i64.shl
  f64.reinterpret/i64
  f64.mul
 )
 (func $~lib/math/NativeMath.pow (; 4 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 i32)
  (local $17 i64)
  (local $18 i32)
  (local $19 f64)
  (local $20 i32)
  block $folding-inner1
   block $folding-inner0
    get_local $0
    i64.reinterpret/f64
    tee_local $17
    i64.const 32
    i64.shr_u
    i32.wrap/i64
    set_local $18
    get_local $17
    i32.wrap/i64
    set_local $20
    get_local $18
    i32.const 2147483647
    i32.and
    set_local $4
    get_local $1
    i64.reinterpret/f64
    tee_local $17
    i64.const 32
    i64.shr_u
    i32.wrap/i64
    tee_local $11
    i32.const 2147483647
    i32.and
    tee_local $12
    get_local $17
    i32.wrap/i64
    tee_local $7
    i32.or
    i32.eqz
    if
     f64.const 1
     return
    end
    get_local $4
    i32.const 2146435072
    i32.gt_s
    tee_local $8
    i32.eqz
    if
     get_local $4
     i32.const 2146435072
     i32.eq
     tee_local $8
     if
      get_local $20
      i32.const 0
      i32.ne
      set_local $8
     end
    end
    get_local $8
    i32.eqz
    if
     get_local $12
     i32.const 2146435072
     i32.gt_s
     set_local $8
    end
    get_local $8
    i32.eqz
    if
     get_local $12
     i32.const 2146435072
     i32.eq
     tee_local $8
     if
      get_local $7
      i32.const 0
      i32.ne
      set_local $8
     end
    end
    get_local $8
    if
     get_local $0
     get_local $1
     f64.add
     return
    end
    get_local $18
    i32.const 0
    i32.lt_s
    if
     get_local $12
     i32.const 1128267776
     i32.ge_s
     if
      i32.const 2
      set_local $16
     else      
      get_local $12
      i32.const 1072693248
      i32.ge_s
      if
       i32.const 52
       i32.const 20
       get_local $12
       i32.const 20
       i32.shr_s
       i32.const 1023
       i32.sub
       tee_local $10
       i32.const 20
       i32.gt_s
       tee_local $5
       select
       get_local $10
       i32.sub
       set_local $8
       get_local $7
       get_local $12
       get_local $5
       select
       tee_local $10
       get_local $8
       i32.shr_s
       tee_local $5
       get_local $8
       i32.shl
       get_local $10
       i32.eq
       if
        i32.const 2
        get_local $5
        i32.const 1
        i32.and
        i32.sub
        set_local $16
       end
      end
     end
    end
    get_local $7
    i32.eqz
    if
     get_local $12
     i32.const 2146435072
     i32.eq
     if
      get_local $4
      i32.const 1072693248
      i32.sub
      get_local $20
      i32.or
      if
       get_local $4
       i32.const 1072693248
       i32.ge_s
       if
        get_local $11
        i32.const 0
        i32.lt_s
        if
         f64.const 0
         set_local $1
        end
        get_local $1
        return
       else        
        get_local $11
        i32.const 0
        i32.ge_s
        if (result f64)
         f64.const 0
        else         
         get_local $1
         f64.neg
        end
        tee_local $0
        return
       end
       unreachable
      else       
       f64.const nan:0x8000000000000
       return
      end
      unreachable
     end
     get_local $12
     i32.const 1072693248
     i32.eq
     if
      get_local $11
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
     get_local $11
     i32.const 1073741824
     i32.eq
     if
      get_local $0
      get_local $0
      f64.mul
      return
     end
     get_local $11
     i32.const 1071644672
     i32.eq
     if
      get_local $18
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
    set_local $2
    get_local $20
    i32.eqz
    if
     get_local $4
     i32.const 2146435072
     i32.eq
     tee_local $5
     i32.eqz
     if
      get_local $4
      i32.eqz
      set_local $5
     end
     get_local $5
     i32.eqz
     if
      get_local $4
      i32.const 1072693248
      i32.eq
      set_local $5
     end
     get_local $5
     if
      get_local $11
      i32.const 0
      i32.lt_s
      if
       f64.const 1
       get_local $2
       f64.div
       set_local $2
      end
      get_local $18
      i32.const 0
      i32.lt_s
      if
       get_local $4
       i32.const 1072693248
       i32.sub
       get_local $16
       i32.or
       if
        get_local $16
        i32.const 1
        i32.eq
        if
         get_local $2
         f64.neg
         set_local $2
        end
       else        
        get_local $2
        get_local $2
        f64.sub
        tee_local $0
        get_local $0
        f64.div
        set_local $2
       end
      end
      get_local $2
      return
     end
    end
    f64.const 1
    set_local $13
    get_local $18
    i32.const 0
    i32.lt_s
    if
     get_local $16
     i32.eqz
     if
      get_local $0
      get_local $0
      f64.sub
      tee_local $0
      get_local $0
      f64.div
      return
     end
     get_local $16
     i32.const 1
     i32.eq
     if
      f64.const -1
      set_local $13
     end
    end
    get_local $12
    i32.const 1105199104
    i32.gt_s
    if (result f64)
     get_local $12
     i32.const 1139802112
     i32.gt_s
     if
      get_local $4
      i32.const 1072693247
      i32.le_s
      if
       get_local $11
       i32.const 0
       i32.lt_s
       if (result f64)
        f64.const inf
       else        
        f64.const 0
       end
       tee_local $0
       return
      end
      get_local $4
      i32.const 1072693248
      i32.ge_s
      if
       get_local $11
       i32.const 0
       i32.gt_s
       if (result f64)
        f64.const inf
       else        
        f64.const 0
       end
       tee_local $0
       return
      end
     end
     get_local $4
     i32.const 1072693247
     i32.lt_s
     if
      get_local $11
      i32.const 0
      i32.lt_s
      if (result f64)
       get_local $13
       f64.const 1.e+300
       f64.mul
       f64.const 1.e+300
       f64.mul
      else       
       get_local $13
       f64.const 1e-300
       f64.mul
       f64.const 1e-300
       f64.mul
      end
      tee_local $0
      return
     end
     get_local $4
     i32.const 1072693248
     i32.gt_s
     if
      get_local $11
      i32.const 0
      i32.gt_s
      if (result f64)
       get_local $13
       f64.const 1.e+300
       f64.mul
       f64.const 1.e+300
       f64.mul
      else       
       get_local $13
       f64.const 1e-300
       f64.mul
       f64.const 1e-300
       f64.mul
      end
      tee_local $0
      return
     end
     get_local $2
     f64.const 1
     f64.sub
     tee_local $3
     get_local $3
     f64.mul
     f64.const 0.5
     get_local $3
     f64.const 0.3333333333333333
     get_local $3
     f64.const 0.25
     f64.mul
     f64.sub
     f64.mul
     f64.sub
     f64.mul
     set_local $0
     f64.const 1.4426950216293335
     get_local $3
     f64.mul
     tee_local $15
     get_local $3
     f64.const 1.9259629911266175e-08
     f64.mul
     get_local $0
     f64.const 1.4426950408889634
     f64.mul
     f64.sub
     tee_local $6
     f64.add
     set_local $9
     get_local $6
     get_local $9
     i64.reinterpret/f64
     i64.const -4294967296
     i64.and
     f64.reinterpret/i64
     tee_local $9
     get_local $15
     f64.sub
     f64.sub
    else     
     i32.const 0
     set_local $7
     get_local $4
     i32.const 1048576
     i32.lt_s
     if
      i32.const -53
      set_local $7
      get_local $2
      f64.const 9007199254740992
      f64.mul
      tee_local $2
      i64.reinterpret/f64
      i64.const 32
      i64.shr_u
      i32.wrap/i64
      set_local $4
     end
     get_local $7
     get_local $4
     i32.const 20
     i32.shr_s
     i32.const 1023
     i32.sub
     i32.add
     set_local $7
     get_local $4
     i32.const 1048575
     i32.and
     tee_local $5
     i32.const 1072693248
     i32.or
     set_local $4
     get_local $5
     i32.const 235662
     i32.le_s
     if (result i32)
      i32.const 0
     else      
      get_local $5
      i32.const 767610
      i32.lt_s
      if (result i32)
       i32.const 1
      else       
       get_local $7
       i32.const 1
       i32.add
       set_local $7
       get_local $4
       i32.const -1048576
       i32.add
       set_local $4
       i32.const 0
      end
     end
     set_local $10
     get_local $2
     i64.reinterpret/f64
     i64.const 4294967295
     i64.and
     get_local $4
     i64.extend_s/i32
     i64.const 32
     i64.shl
     i64.or
     f64.reinterpret/i64
     tee_local $2
     f64.const 1.5
     f64.const 1
     get_local $10
     select
     tee_local $0
     f64.sub
     tee_local $15
     f64.const 1
     get_local $2
     get_local $0
     f64.add
     f64.div
     tee_local $6
     f64.mul
     set_local $9
     get_local $2
     get_local $4
     i32.const 1
     i32.shr_s
     i32.const 536870912
     i32.or
     i32.const 524288
     i32.add
     get_local $10
     i32.const 18
     i32.shl
     i32.add
     i64.extend_s/i32
     i64.const 32
     i64.shl
     f64.reinterpret/i64
     tee_local $3
     get_local $0
     f64.sub
     f64.sub
     set_local $2
     get_local $9
     get_local $9
     f64.mul
     tee_local $14
     get_local $14
     f64.mul
     f64.const 0.5999999999999946
     get_local $14
     f64.const 0.4285714285785502
     get_local $14
     f64.const 0.33333332981837743
     get_local $14
     f64.const 0.272728123808534
     get_local $14
     f64.const 0.23066074577556175
     get_local $14
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
     set_local $19
     get_local $6
     get_local $15
     get_local $9
     i64.reinterpret/f64
     i64.const -4294967296
     i64.and
     f64.reinterpret/i64
     tee_local $6
     get_local $3
     f64.mul
     f64.sub
     get_local $6
     get_local $2
     f64.mul
     f64.sub
     f64.mul
     set_local $0
     f64.const 3
     get_local $6
     get_local $6
     f64.mul
     tee_local $14
     f64.add
     get_local $19
     get_local $0
     get_local $6
     get_local $9
     f64.add
     f64.mul
     f64.add
     tee_local $19
     f64.add
     set_local $3
     get_local $19
     get_local $3
     i64.reinterpret/f64
     i64.const -4294967296
     i64.and
     f64.reinterpret/i64
     tee_local $3
     f64.const 3
     f64.sub
     get_local $14
     f64.sub
     f64.sub
     set_local $2
     get_local $6
     get_local $3
     f64.mul
     tee_local $15
     get_local $0
     get_local $3
     f64.mul
     get_local $2
     get_local $9
     f64.mul
     f64.add
     tee_local $6
     f64.add
     set_local $0
     get_local $6
     get_local $0
     i64.reinterpret/f64
     i64.const -4294967296
     i64.and
     f64.reinterpret/i64
     tee_local $0
     get_local $15
     f64.sub
     f64.sub
     set_local $6
     f64.const 0.9617967009544373
     get_local $0
     f64.mul
     tee_local $19
     f64.const -7.028461650952758e-09
     get_local $0
     f64.mul
     get_local $6
     f64.const 0.9617966939259756
     f64.mul
     f64.add
     f64.const 1.350039202129749e-08
     f64.const 0
     get_local $10
     select
     f64.add
     tee_local $2
     f64.add
     f64.const 0.5849624872207642
     f64.const 0
     get_local $10
     select
     tee_local $0
     f64.add
     get_local $7
     f64.convert_s/i32
     tee_local $3
     f64.add
     set_local $9
     get_local $2
     get_local $9
     i64.reinterpret/f64
     i64.const -4294967296
     i64.and
     f64.reinterpret/i64
     tee_local $9
     get_local $3
     f64.sub
     get_local $0
     f64.sub
     get_local $19
     f64.sub
     f64.sub
    end
    set_local $2
    get_local $1
    get_local $1
    i64.reinterpret/f64
    i64.const -4294967296
    i64.and
    f64.reinterpret/i64
    tee_local $0
    f64.sub
    get_local $9
    f64.mul
    get_local $1
    get_local $2
    f64.mul
    f64.add
    tee_local $6
    get_local $0
    get_local $9
    f64.mul
    tee_local $0
    f64.add
    tee_local $2
    i64.reinterpret/f64
    tee_local $17
    i32.wrap/i64
    set_local $8
    get_local $17
    i64.const 32
    i64.shr_u
    i32.wrap/i64
    tee_local $5
    i32.const 1083179008
    i32.ge_s
    if
     get_local $5
     i32.const 1083179008
     i32.sub
     get_local $8
     i32.or
     br_if $folding-inner1
     get_local $6
     f64.const 8.008566259537294e-17
     f64.add
     get_local $2
     get_local $0
     f64.sub
     f64.gt
     br_if $folding-inner1
    else     
     get_local $5
     i32.const 2147483647
     i32.and
     i32.const 1083231232
     i32.ge_s
     if
      get_local $5
      i32.const -1064252416
      i32.sub
      get_local $8
      i32.or
      br_if $folding-inner0
      get_local $6
      get_local $2
      get_local $0
      f64.sub
      f64.le
      br_if $folding-inner0
     end
    end
    get_local $5
    i32.const 2147483647
    i32.and
    tee_local $8
    i32.const 20
    i32.shr_s
    i32.const 1023
    i32.sub
    set_local $10
    i32.const 0
    set_local $7
    get_local $8
    i32.const 1071644672
    i32.gt_s
    if
     get_local $5
     i32.const 1048576
     get_local $10
     i32.const 1
     i32.add
     i32.shr_s
     i32.add
     tee_local $7
     i32.const 2147483647
     i32.and
     i32.const 20
     i32.shr_s
     i32.const 1023
     i32.sub
     set_local $10
     get_local $7
     i32.const 1048575
     get_local $10
     i32.shr_s
     i32.const -1
     i32.xor
     i32.and
     i64.extend_s/i32
     i64.const 32
     i64.shl
     f64.reinterpret/i64
     set_local $3
     get_local $7
     i32.const 1048575
     i32.and
     i32.const 1048576
     i32.or
     i32.const 20
     get_local $10
     i32.sub
     i32.shr_s
     set_local $7
     get_local $5
     i32.const 0
     i32.lt_s
     if
      i32.const 0
      get_local $7
      i32.sub
      set_local $7
     end
     get_local $0
     get_local $3
     f64.sub
     set_local $0
    end
    get_local $6
    get_local $0
    f64.add
    i64.reinterpret/f64
    i64.const -4294967296
    i64.and
    f64.reinterpret/i64
    tee_local $3
    f64.const 0.6931471824645996
    f64.mul
    tee_local $15
    get_local $6
    get_local $3
    get_local $0
    f64.sub
    f64.sub
    f64.const 0.6931471805599453
    f64.mul
    get_local $3
    f64.const -1.904654299957768e-09
    f64.mul
    f64.add
    tee_local $6
    f64.add
    tee_local $2
    get_local $2
    f64.mul
    set_local $3
    get_local $13
    f64.const 1
    get_local $2
    get_local $2
    get_local $3
    f64.const 0.16666666666666602
    get_local $3
    f64.const -2.7777777777015593e-03
    get_local $3
    f64.const 6.613756321437934e-05
    get_local $3
    f64.const -1.6533902205465252e-06
    get_local $3
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
    tee_local $9
    f64.mul
    get_local $9
    f64.const 2
    f64.sub
    f64.div
    get_local $6
    get_local $2
    get_local $15
    f64.sub
    f64.sub
    tee_local $0
    get_local $2
    get_local $0
    f64.mul
    f64.add
    f64.sub
    get_local $2
    f64.sub
    f64.sub
    tee_local $2
    i64.reinterpret/f64
    i64.const 32
    i64.shr_u
    i32.wrap/i64
    get_local $7
    i32.const 20
    i32.shl
    i32.add
    tee_local $5
    i32.const 20
    i32.shr_s
    i32.const 0
    i32.le_s
    if (result f64)
     get_local $2
     get_local $7
     call $~lib/math/NativeMath.scalbn
    else     
     get_local $2
     i64.reinterpret/f64
     i64.const 4294967295
     i64.and
     get_local $5
     i64.extend_s/i32
     i64.const 32
     i64.shl
     i64.or
     f64.reinterpret/i64
    end
    tee_local $2
    f64.mul
    return
   end
   get_local $13
   f64.const 1e-300
   f64.mul
   f64.const 1e-300
   f64.mul
   return
  end
  get_local $13
  f64.const 1.e+300
  f64.mul
  f64.const 1.e+300
  f64.mul
 )
 (func $std/operator-overloading/Tester.pow (; 5 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i32.load
  f64.convert_s/i32
  get_local $1
  i32.load
  f64.convert_s/i32
  call $~lib/math/NativeMath.pow
  i32.trunc_s/f64
  get_local $0
  i32.load offset=4
  f64.convert_s/i32
  get_local $1
  i32.load offset=4
  f64.convert_s/i32
  call $~lib/math/NativeMath.pow
  i32.trunc_s/f64
  call $std/operator-overloading/Tester#constructor
 )
 (func $start (; 6 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 72
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  i32.const 1
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/a1
  i32.const 2
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/a2
  get_global $std/operator-overloading/a1
  tee_local $0
  i32.load
  get_global $std/operator-overloading/a2
  tee_local $1
  i32.load
  i32.add
  get_local $0
  i32.load offset=4
  get_local $1
  i32.load offset=4
  i32.add
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/a
  get_global $std/operator-overloading/a
  i32.load
  i32.const 3
  i32.eq
  tee_local $0
  if
   get_global $std/operator-overloading/a
   i32.load offset=4
   i32.const 5
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 147
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/s1
  i32.const 2
  i32.const -3
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/s2
  get_global $std/operator-overloading/s1
  tee_local $0
  i32.load
  get_global $std/operator-overloading/s2
  tee_local $1
  i32.load
  i32.sub
  get_local $0
  i32.load offset=4
  get_local $1
  i32.load offset=4
  i32.sub
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/s
  get_global $std/operator-overloading/s
  i32.load
  i32.eqz
  tee_local $0
  if
   get_global $std/operator-overloading/s
   i32.load offset=4
   i32.const 6
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 153
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  i32.const 5
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/m1
  i32.const 3
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/m2
  get_global $std/operator-overloading/m1
  tee_local $0
  i32.load
  get_global $std/operator-overloading/m2
  tee_local $1
  i32.load
  i32.mul
  get_local $0
  i32.load offset=4
  get_local $1
  i32.load offset=4
  i32.mul
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/m
  get_global $std/operator-overloading/m
  i32.load
  i32.const 6
  i32.eq
  tee_local $0
  if
   get_global $std/operator-overloading/m
   i32.load offset=4
   i32.const 10
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 159
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 6
  i32.const 50
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/d1
  i32.const 3
  i32.const 10
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/d2
  get_global $std/operator-overloading/d1
  tee_local $0
  i32.load
  get_global $std/operator-overloading/d2
  tee_local $1
  i32.load
  i32.div_s
  get_local $0
  i32.load offset=4
  get_local $1
  i32.load offset=4
  i32.div_s
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/d
  get_global $std/operator-overloading/d
  i32.load
  i32.const 2
  i32.eq
  tee_local $0
  if
   get_global $std/operator-overloading/d
   i32.load offset=4
   i32.const 5
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 165
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 10
  i32.const 10
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/f1
  i32.const 6
  i32.const 10
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/f2
  get_global $std/operator-overloading/f1
  tee_local $0
  i32.load
  get_global $std/operator-overloading/f2
  tee_local $1
  i32.load
  i32.rem_s
  get_local $0
  i32.load offset=4
  get_local $1
  i32.load offset=4
  i32.rem_s
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/f
  get_global $std/operator-overloading/f
  i32.load
  i32.const 4
  i32.eq
  tee_local $0
  if
   get_global $std/operator-overloading/f
   i32.load offset=4
   i32.eqz
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 171
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/p1
  i32.const 4
  i32.const 5
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/p2
  get_global $std/operator-overloading/p1
  get_global $std/operator-overloading/p2
  call $std/operator-overloading/Tester.pow
  set_global $std/operator-overloading/p
  get_global $std/operator-overloading/p
  i32.load
  i32.const 16
  i32.eq
  tee_local $0
  if
   get_global $std/operator-overloading/p
   i32.load offset=4
   i32.const 243
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 177
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 255
  i32.const 15
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/n1
  i32.const 15
  i32.const 255
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/n2
  get_global $std/operator-overloading/n1
  tee_local $0
  i32.load
  get_global $std/operator-overloading/n2
  tee_local $1
  i32.load
  i32.and
  get_local $0
  i32.load offset=4
  get_local $1
  i32.load offset=4
  i32.and
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/n
  get_global $std/operator-overloading/n
  i32.load
  i32.const 15
  i32.eq
  tee_local $0
  if
   get_global $std/operator-overloading/n
   i32.load offset=4
   i32.const 15
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 183
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3855
  i32.const 255
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/o1
  i32.const 61680
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/o2
  get_global $std/operator-overloading/o1
  tee_local $0
  i32.load
  get_global $std/operator-overloading/o2
  tee_local $1
  i32.load
  i32.or
  get_local $0
  i32.load offset=4
  get_local $1
  i32.load offset=4
  i32.or
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/o
  get_global $std/operator-overloading/o
  i32.load
  i32.const 65535
  i32.eq
  tee_local $0
  if
   get_global $std/operator-overloading/o
   i32.load offset=4
   i32.const 255
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 189
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 255
  i32.const 255
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/x1
  i32.const 65280
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/x2
  get_global $std/operator-overloading/x1
  tee_local $0
  i32.load
  get_global $std/operator-overloading/x2
  tee_local $1
  i32.load
  i32.xor
  get_local $0
  i32.load offset=4
  get_local $1
  i32.load offset=4
  i32.xor
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/x
  get_global $std/operator-overloading/x
  i32.load
  i32.const 65535
  i32.eq
  tee_local $0
  if
   get_global $std/operator-overloading/x
   i32.load offset=4
   i32.const 255
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 195
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/eq1
  i32.const 1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/eq2
  get_global $std/operator-overloading/eq1
  tee_local $1
  i32.load
  get_global $std/operator-overloading/eq2
  tee_local $2
  i32.load
  i32.eq
  tee_local $0
  if
   get_local $1
   i32.load offset=4
   get_local $2
   i32.load offset=4
   i32.eq
   set_local $0
  end
  get_local $0
  set_global $std/operator-overloading/eq
  get_global $std/operator-overloading/eq
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 201
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/eq3
  i32.const 0
  i32.const 1
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/eq4
  get_global $std/operator-overloading/eq3
  tee_local $1
  i32.load
  get_global $std/operator-overloading/eq4
  tee_local $2
  i32.load
  i32.eq
  tee_local $0
  if
   get_local $1
   i32.load offset=4
   get_local $2
   i32.load offset=4
   i32.eq
   set_local $0
  end
  get_local $0
  set_global $std/operator-overloading/eqf
  get_global $std/operator-overloading/eqf
  if
   i32.const 0
   i32.const 8
   i32.const 207
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/operator-overloading/eq1
  tee_local $1
  i32.load
  get_global $std/operator-overloading/eq2
  tee_local $2
  i32.load
  i32.ne
  tee_local $0
  if
   get_local $1
   i32.load offset=4
   get_local $2
   i32.load offset=4
   i32.ne
   set_local $0
  end
  get_local $0
  set_global $std/operator-overloading/eq
  get_global $std/operator-overloading/eq
  if
   i32.const 0
   i32.const 8
   i32.const 211
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/operator-overloading/eq3
  tee_local $1
  i32.load
  get_global $std/operator-overloading/eq4
  tee_local $2
  i32.load
  i32.ne
  tee_local $0
  if
   get_local $1
   i32.load offset=4
   get_local $2
   i32.load offset=4
   i32.ne
   set_local $0
  end
  get_local $0
  set_global $std/operator-overloading/eqf
  get_global $std/operator-overloading/eqf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 215
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  i32.const 2147483647
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/gt1
  i32.const 1
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/gt2
  get_global $std/operator-overloading/gt1
  tee_local $1
  i32.load
  get_global $std/operator-overloading/gt2
  tee_local $2
  i32.load
  i32.gt_s
  tee_local $0
  if
   get_local $1
   i32.load offset=4
   get_local $2
   i32.load offset=4
   i32.gt_s
   set_local $0
  end
  get_local $0
  set_global $std/operator-overloading/gt
  get_global $std/operator-overloading/gt
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 221
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/gte1
  i32.const 2
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/gte2
  get_global $std/operator-overloading/gte1
  tee_local $1
  i32.load
  get_global $std/operator-overloading/gte2
  tee_local $2
  i32.load
  i32.ge_s
  tee_local $0
  if
   get_local $1
   i32.load offset=4
   get_local $2
   i32.load offset=4
   i32.ge_s
   set_local $0
  end
  get_local $0
  set_global $std/operator-overloading/gte
  get_global $std/operator-overloading/gte
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 227
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  i32.const -1
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/le1
  i32.const 6
  i32.const 6
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/le2
  get_global $std/operator-overloading/le1
  tee_local $1
  i32.load
  get_global $std/operator-overloading/le2
  tee_local $2
  i32.load
  i32.lt_s
  tee_local $0
  if
   get_local $1
   i32.load offset=4
   get_local $2
   i32.load offset=4
   i32.lt_s
   set_local $0
  end
  get_local $0
  set_global $std/operator-overloading/le
  get_global $std/operator-overloading/le
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 233
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 4
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/leq1
  i32.const 4
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/leq2
  get_global $std/operator-overloading/leq1
  tee_local $1
  i32.load
  get_global $std/operator-overloading/leq2
  tee_local $2
  i32.load
  i32.le_s
  tee_local $0
  if
   get_local $1
   i32.load offset=4
   get_local $2
   i32.load offset=4
   i32.le_s
   set_local $0
  end
  get_local $0
  set_global $std/operator-overloading/leq
  get_global $std/operator-overloading/leq
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 239
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 8
  i32.const 16
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/shr
  get_global $std/operator-overloading/shr
  tee_local $0
  i32.load
  i32.const 3
  i32.shr_s
  get_local $0
  i32.load offset=4
  i32.const 3
  i32.shr_s
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/sres
  get_global $std/operator-overloading/sres
  i32.load
  i32.const 1
  i32.eq
  tee_local $0
  if
   get_global $std/operator-overloading/sres
   i32.load offset=4
   i32.const 2
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 244
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const -8
  i32.const -16
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/shu
  get_global $std/operator-overloading/shu
  tee_local $0
  i32.load
  i32.const 3
  i32.shr_u
  get_local $0
  i32.load offset=4
  i32.const 3
  i32.shr_u
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/ures
  get_global $std/operator-overloading/ures
  i32.load
  i32.const 536870911
  i32.eq
  tee_local $0
  if
   get_global $std/operator-overloading/ures
   i32.load offset=4
   i32.const 536870910
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 249
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/shl
  get_global $std/operator-overloading/shl
  tee_local $0
  i32.load
  i32.const 3
  i32.shl
  get_local $0
  i32.load offset=4
  i32.const 3
  i32.shl
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/sres
  get_global $std/operator-overloading/sres
  i32.load
  i32.const 8
  i32.eq
  tee_local $0
  if
   get_global $std/operator-overloading/sres
   i32.load offset=4
   i32.const 16
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 254
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/pos
  get_global $std/operator-overloading/pos
  tee_local $0
  i32.load
  get_local $0
  i32.load offset=4
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/pres
  get_global $std/operator-overloading/pres
  i32.load
  get_global $std/operator-overloading/pos
  i32.load
  i32.eq
  tee_local $0
  if
   get_global $std/operator-overloading/pres
   i32.load offset=4
   get_global $std/operator-overloading/pos
   i32.load offset=4
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 259
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const -1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/neg
  i32.const 0
  get_global $std/operator-overloading/neg
  tee_local $0
  i32.load
  i32.sub
  i32.const 0
  get_local $0
  i32.load offset=4
  i32.sub
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/nres
  get_global $std/operator-overloading/nres
  i32.load
  i32.const 0
  get_global $std/operator-overloading/neg
  i32.load
  i32.sub
  i32.eq
  tee_local $0
  if
   get_global $std/operator-overloading/nres
   i32.load offset=4
   i32.const 0
   get_global $std/operator-overloading/neg
   i32.load offset=4
   i32.sub
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 264
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 255
  i32.const 16
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/not
  get_global $std/operator-overloading/not
  tee_local $0
  i32.load
  i32.const -1
  i32.xor
  get_local $0
  i32.load offset=4
  i32.const -1
  i32.xor
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/res
  get_global $std/operator-overloading/res
  i32.load
  get_global $std/operator-overloading/not
  i32.load
  i32.const -1
  i32.xor
  i32.eq
  tee_local $0
  if
   get_global $std/operator-overloading/res
   i32.load offset=4
   get_global $std/operator-overloading/not
   i32.load offset=4
   i32.const -1
   i32.xor
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 269
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/excl
  get_global $std/operator-overloading/excl
  tee_local $1
  i32.load
  i32.eqz
  tee_local $0
  if
   get_local $1
   i32.load offset=4
   i32.eqz
   set_local $0
  end
  get_local $0
  set_global $std/operator-overloading/bres
  get_global $std/operator-overloading/bres
  set_local $1
  get_global $std/operator-overloading/excl
  i32.load
  i32.eqz
  tee_local $0
  if
   get_global $std/operator-overloading/excl
   i32.load offset=4
   i32.eqz
   set_local $0
  end
  get_local $1
  get_local $0
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 274
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/operator-overloading/bres
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 275
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/incdec
  get_global $std/operator-overloading/incdec
  tee_local $0
  get_local $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  get_local $0
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
  get_local $0
  set_global $std/operator-overloading/incdec
  get_global $std/operator-overloading/incdec
  i32.load
  i32.const 1
  i32.eq
  tee_local $0
  if
   get_global $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 2
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 281
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/operator-overloading/incdec
  tee_local $0
  get_local $0
  i32.load
  i32.const 1
  i32.sub
  i32.store
  get_local $0
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  i32.store offset=4
  get_local $0
  set_global $std/operator-overloading/incdec
  get_global $std/operator-overloading/incdec
  i32.load
  i32.eqz
  tee_local $0
  if
   get_global $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 1
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 284
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/incdec
  get_global $std/operator-overloading/incdec
  tee_local $0
  i32.load
  i32.const 1
  i32.add
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.add
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/incdec
  get_local $0
  set_global $std/operator-overloading/tmp
  get_global $std/operator-overloading/tmp
  i32.load
  i32.eqz
  tee_local $0
  if
   get_global $std/operator-overloading/tmp
   i32.load offset=4
   i32.const 1
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 289
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/operator-overloading/incdec
  i32.load
  i32.const 1
  i32.eq
  tee_local $0
  if
   get_global $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 2
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 290
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/operator-overloading/incdec
  tee_local $0
  i32.load
  i32.const 1
  i32.sub
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/incdec
  get_local $0
  set_global $std/operator-overloading/tmp
  get_global $std/operator-overloading/tmp
  i32.load
  i32.const 1
  i32.eq
  tee_local $0
  if
   get_global $std/operator-overloading/tmp
   i32.load offset=4
   i32.const 2
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 293
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/operator-overloading/incdec
  i32.load
  i32.eqz
  tee_local $0
  if
   get_global $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 1
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 294
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/ais1
  get_global $std/operator-overloading/ais1
  tee_local $0
  i32.load
  i32.const 1
  i32.add
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.add
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/ais1
  i32.const 2
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/ais2
  get_global $std/operator-overloading/ais1
  tee_local $0
  i32.load
  get_global $std/operator-overloading/ais2
  tee_local $1
  i32.load
  i32.add
  get_local $0
  i32.load offset=4
  get_local $1
  i32.load offset=4
  i32.add
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/ais
  get_global $std/operator-overloading/ais
  i32.load
  i32.const 4
  i32.eq
  tee_local $1
  if
   get_global $std/operator-overloading/ais
   i32.load offset=4
   i32.const 6
   i32.eq
   set_local $1
  end
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 314
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/aii1
  get_global $std/operator-overloading/aii1
  tee_local $1
  i32.load
  i32.const 1
  i32.add
  get_local $1
  i32.load offset=4
  i32.const 1
  i32.add
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/aii1
  i32.const 2
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/aii2
  get_global $std/operator-overloading/aii1
  tee_local $1
  i32.load
  get_global $std/operator-overloading/aii2
  tee_local $0
  i32.load
  i32.add
  get_local $1
  i32.load offset=4
  get_local $0
  i32.load offset=4
  i32.add
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/aii
  get_global $std/operator-overloading/aii
  i32.load
  i32.const 4
  i32.eq
  tee_local $0
  if
   get_global $std/operator-overloading/aii
   i32.load offset=4
   i32.const 6
   i32.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 334
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 7 ;) (type $v)
  nop
 )
)
