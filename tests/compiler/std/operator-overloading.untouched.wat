(module
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $FFF (func (param f64 f64) (result f64)))
 (type $FiF (func (param f64 i32) (result f64)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\1b\00\00\00s\00t\00d\00/\00o\00p\00e\00r\00a\00t\00o\00r\00-\00o\00v\00e\00r\00l\00o\00a\00d\00i\00n\00g\00.\00t\00s\00")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
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
 (global $NaN f64 (f64.const nan:0x8000000000000))
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
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
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
 (global $HEAP_BASE i32 (i32.const 68))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  get_global $~lib/internal/allocator/MAX_SIZE_32
  i32.gt_u
  if
   unreachable
  end
  get_global $~lib/allocator/arena/offset
  set_local $1
  get_local $1
  get_local $0
  tee_local $2
  i32.const 1
  tee_local $3
  get_local $2
  get_local $3
  i32.gt_u
  select
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_local $4
  current_memory
  set_local $5
  get_local $4
  get_local $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   get_local $4
   get_local $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   set_local $2
   get_local $5
   tee_local $3
   get_local $2
   tee_local $6
   get_local $3
   get_local $6
   i32.gt_s
   select
   set_local $3
   get_local $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    get_local $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  get_local $4
  set_global $~lib/allocator/arena/offset
  get_local $1
 )
 (func $~lib/memory/memory.allocate (; 2 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $std/operator-overloading/Tester#constructor (; 3 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $3
    get_local $3
    get_local $1
    i32.store
    get_local $3
    get_local $2
    i32.store offset=4
    get_local $3
   end
   tee_local $0
  end
  tee_local $0
 )
 (func $std/operator-overloading/Tester.add (; 4 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  get_local $0
  i32.load
  get_local $1
  i32.load
  i32.add
  get_local $0
  i32.load offset=4
  get_local $1
  i32.load offset=4
  i32.add
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.sub (; 5 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  get_local $0
  i32.load
  get_local $1
  i32.load
  i32.sub
  get_local $0
  i32.load offset=4
  get_local $1
  i32.load offset=4
  i32.sub
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.mul (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  get_local $0
  i32.load
  get_local $1
  i32.load
  i32.mul
  get_local $0
  i32.load offset=4
  get_local $1
  i32.load offset=4
  i32.mul
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.div (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  get_local $0
  i32.load
  get_local $1
  i32.load
  i32.div_s
  get_local $0
  i32.load offset=4
  get_local $1
  i32.load offset=4
  i32.div_s
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.mod (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  get_local $0
  i32.load
  get_local $1
  i32.load
  i32.rem_s
  get_local $0
  i32.load offset=4
  get_local $1
  i32.load offset=4
  i32.rem_s
  call $std/operator-overloading/Tester#constructor
 )
 (func $~lib/math/NativeMath.scalbn (; 9 ;) (type $FiF) (param $0 f64) (param $1 i32) (result f64)
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
 (func $~lib/math/NativeMath.pow (; 10 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
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
 (func $std/operator-overloading/Tester.pow (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
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
 (func $std/operator-overloading/Tester.and (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  get_local $0
  i32.load
  get_local $1
  i32.load
  i32.and
  get_local $0
  i32.load offset=4
  get_local $1
  i32.load offset=4
  i32.and
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.or (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  get_local $0
  i32.load
  get_local $1
  i32.load
  i32.or
  get_local $0
  i32.load offset=4
  get_local $1
  i32.load offset=4
  i32.or
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.xor (; 14 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  get_local $0
  i32.load
  get_local $1
  i32.load
  i32.xor
  get_local $0
  i32.load offset=4
  get_local $1
  i32.load offset=4
  i32.xor
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.equals (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  get_local $1
  i32.load
  i32.eq
  tee_local $2
  if (result i32)
   get_local $0
   i32.load offset=4
   get_local $1
   i32.load offset=4
   i32.eq
  else   
   get_local $2
  end
 )
 (func $std/operator-overloading/Tester.notEquals (; 16 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  get_local $1
  i32.load
  i32.ne
  tee_local $2
  if (result i32)
   get_local $0
   i32.load offset=4
   get_local $1
   i32.load offset=4
   i32.ne
  else   
   get_local $2
  end
 )
 (func $std/operator-overloading/Tester.greater (; 17 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  get_local $1
  i32.load
  i32.gt_s
  tee_local $2
  if (result i32)
   get_local $0
   i32.load offset=4
   get_local $1
   i32.load offset=4
   i32.gt_s
  else   
   get_local $2
  end
 )
 (func $std/operator-overloading/Tester.greaterEquals (; 18 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  get_local $1
  i32.load
  i32.ge_s
  tee_local $2
  if (result i32)
   get_local $0
   i32.load offset=4
   get_local $1
   i32.load offset=4
   i32.ge_s
  else   
   get_local $2
  end
 )
 (func $std/operator-overloading/Tester.less (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  get_local $1
  i32.load
  i32.lt_s
  tee_local $2
  if (result i32)
   get_local $0
   i32.load offset=4
   get_local $1
   i32.load offset=4
   i32.lt_s
  else   
   get_local $2
  end
 )
 (func $std/operator-overloading/Tester.lessEquals (; 20 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  get_local $1
  i32.load
  i32.le_s
  tee_local $2
  if (result i32)
   get_local $0
   i32.load offset=4
   get_local $1
   i32.load offset=4
   i32.le_s
  else   
   get_local $2
  end
 )
 (func $std/operator-overloading/Tester.shr (; 21 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  get_local $0
  i32.load
  get_local $1
  i32.shr_s
  get_local $0
  i32.load offset=4
  get_local $1
  i32.shr_s
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.shu (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  get_local $0
  i32.load
  get_local $1
  i32.shr_u
  get_local $0
  i32.load offset=4
  get_local $1
  i32.shr_u
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.shl (; 23 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  get_local $0
  i32.load
  get_local $1
  i32.shl
  get_local $0
  i32.load offset=4
  get_local $1
  i32.shl
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.pos (; 24 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.neg (; 25 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  i32.const 0
  get_local $0
  i32.load
  i32.sub
  i32.const 0
  get_local $0
  i32.load offset=4
  i32.sub
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.not (; 26 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  get_local $0
  i32.load
  i32.const -1
  i32.xor
  get_local $0
  i32.load offset=4
  i32.const -1
  i32.xor
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.excl (; 27 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.load
  i32.eqz
  tee_local $1
  if (result i32)
   get_local $0
   i32.load offset=4
   i32.eqz
  else   
   get_local $1
  end
 )
 (func $std/operator-overloading/Tester#inc (; 28 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
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
 )
 (func $std/operator-overloading/Tester#dec (; 29 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
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
 )
 (func $std/operator-overloading/Tester#postInc (; 30 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  get_local $0
  i32.load
  i32.const 1
  i32.add
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.add
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester#postDec (; 31 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  get_local $0
  i32.load
  i32.const 1
  i32.sub
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/TesterInlineStatic#constructor (; 32 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $3
    get_local $3
    get_local $1
    i32.store
    get_local $3
    get_local $2
    i32.store offset=4
    get_local $3
   end
   tee_local $0
  end
  tee_local $0
 )
 (func $std/operator-overloading/TesterInlineInstance#constructor (; 33 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $3
    get_local $3
    get_local $1
    i32.store
    get_local $3
    get_local $2
    i32.store offset=4
    get_local $3
   end
   tee_local $0
  end
  tee_local $0
 )
 (func $start (; 34 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  get_global $HEAP_BASE
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  i32.const 0
  i32.const 1
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/a1
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/a2
  get_global $std/operator-overloading/a1
  get_global $std/operator-overloading/a2
  call $std/operator-overloading/Tester.add
  set_global $std/operator-overloading/a
  get_global $std/operator-overloading/a
  i32.load
  i32.const 3
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/a
   i32.load offset=4
   i32.const 5
   i32.eq
  else   
   get_local $0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 147
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/s1
  i32.const 0
  i32.const 2
  i32.const -3
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/s2
  get_global $std/operator-overloading/s1
  get_global $std/operator-overloading/s2
  call $std/operator-overloading/Tester.sub
  set_global $std/operator-overloading/s
  get_global $std/operator-overloading/s
  i32.load
  i32.const 0
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/s
   i32.load offset=4
   i32.const 6
   i32.eq
  else   
   get_local $0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 153
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 5
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/m1
  i32.const 0
  i32.const 3
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/m2
  get_global $std/operator-overloading/m1
  get_global $std/operator-overloading/m2
  call $std/operator-overloading/Tester.mul
  set_global $std/operator-overloading/m
  get_global $std/operator-overloading/m
  i32.load
  i32.const 6
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/m
   i32.load offset=4
   i32.const 10
   i32.eq
  else   
   get_local $0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 159
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 6
  i32.const 50
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/d1
  i32.const 0
  i32.const 3
  i32.const 10
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/d2
  get_global $std/operator-overloading/d1
  get_global $std/operator-overloading/d2
  call $std/operator-overloading/Tester.div
  set_global $std/operator-overloading/d
  get_global $std/operator-overloading/d
  i32.load
  i32.const 2
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/d
   i32.load offset=4
   i32.const 5
   i32.eq
  else   
   get_local $0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 165
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 10
  i32.const 10
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/f1
  i32.const 0
  i32.const 6
  i32.const 10
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/f2
  get_global $std/operator-overloading/f1
  get_global $std/operator-overloading/f2
  call $std/operator-overloading/Tester.mod
  set_global $std/operator-overloading/f
  get_global $std/operator-overloading/f
  i32.load
  i32.const 4
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/f
   i32.load offset=4
   i32.const 0
   i32.eq
  else   
   get_local $0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 171
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/p1
  i32.const 0
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
  if (result i32)
   get_global $std/operator-overloading/p
   i32.load offset=4
   i32.const 243
   i32.eq
  else   
   get_local $0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 177
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 255
  i32.const 15
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/n1
  i32.const 0
  i32.const 15
  i32.const 255
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/n2
  get_global $std/operator-overloading/n1
  get_global $std/operator-overloading/n2
  call $std/operator-overloading/Tester.and
  set_global $std/operator-overloading/n
  get_global $std/operator-overloading/n
  i32.load
  i32.const 15
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/n
   i32.load offset=4
   i32.const 15
   i32.eq
  else   
   get_local $0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 183
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3855
  i32.const 255
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/o1
  i32.const 0
  i32.const 61680
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/o2
  get_global $std/operator-overloading/o1
  get_global $std/operator-overloading/o2
  call $std/operator-overloading/Tester.or
  set_global $std/operator-overloading/o
  get_global $std/operator-overloading/o
  i32.load
  i32.const 65535
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/o
   i32.load offset=4
   i32.const 255
   i32.eq
  else   
   get_local $0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 189
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 255
  i32.const 255
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/x1
  i32.const 0
  i32.const 65280
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/x2
  get_global $std/operator-overloading/x1
  get_global $std/operator-overloading/x2
  call $std/operator-overloading/Tester.xor
  set_global $std/operator-overloading/x
  get_global $std/operator-overloading/x
  i32.load
  i32.const 65535
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/x
   i32.load offset=4
   i32.const 255
   i32.eq
  else   
   get_local $0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 195
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/eq1
  i32.const 0
  i32.const 1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/eq2
  get_global $std/operator-overloading/eq1
  get_global $std/operator-overloading/eq2
  call $std/operator-overloading/Tester.equals
  set_global $std/operator-overloading/eq
  get_global $std/operator-overloading/eq
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 201
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/eq3
  i32.const 0
  i32.const 0
  i32.const 1
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/eq4
  get_global $std/operator-overloading/eq3
  get_global $std/operator-overloading/eq4
  call $std/operator-overloading/Tester.equals
  set_global $std/operator-overloading/eqf
  get_global $std/operator-overloading/eqf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 207
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/operator-overloading/eq1
  get_global $std/operator-overloading/eq2
  call $std/operator-overloading/Tester.notEquals
  set_global $std/operator-overloading/eq
  get_global $std/operator-overloading/eq
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 211
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/operator-overloading/eq3
  get_global $std/operator-overloading/eq4
  call $std/operator-overloading/Tester.notEquals
  set_global $std/operator-overloading/eqf
  get_global $std/operator-overloading/eqf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 215
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  get_global $~lib/builtins/i32.MAX_VALUE
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/gt1
  i32.const 0
  i32.const 1
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/gt2
  get_global $std/operator-overloading/gt1
  get_global $std/operator-overloading/gt2
  call $std/operator-overloading/Tester.greater
  set_global $std/operator-overloading/gt
  get_global $std/operator-overloading/gt
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 221
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 2
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/gte1
  i32.const 0
  i32.const 2
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/gte2
  get_global $std/operator-overloading/gte1
  get_global $std/operator-overloading/gte2
  call $std/operator-overloading/Tester.greaterEquals
  set_global $std/operator-overloading/gte
  get_global $std/operator-overloading/gte
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 227
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 5
  i32.const -1
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/le1
  i32.const 0
  i32.const 6
  i32.const 6
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/le2
  get_global $std/operator-overloading/le1
  get_global $std/operator-overloading/le2
  call $std/operator-overloading/Tester.less
  set_global $std/operator-overloading/le
  get_global $std/operator-overloading/le
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 233
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 4
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/leq1
  i32.const 0
  i32.const 4
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/leq2
  get_global $std/operator-overloading/leq1
  get_global $std/operator-overloading/leq2
  call $std/operator-overloading/Tester.lessEquals
  set_global $std/operator-overloading/leq
  get_global $std/operator-overloading/leq
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 239
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 8
  i32.const 16
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/shr
  get_global $std/operator-overloading/shr
  i32.const 3
  call $std/operator-overloading/Tester.shr
  set_global $std/operator-overloading/sres
  get_global $std/operator-overloading/sres
  i32.load
  i32.const 1
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/sres
   i32.load offset=4
   i32.const 2
   i32.eq
  else   
   get_local $0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 244
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const -8
  i32.const -16
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/shu
  get_global $std/operator-overloading/shu
  i32.const 3
  call $std/operator-overloading/Tester.shu
  set_global $std/operator-overloading/ures
  get_global $std/operator-overloading/ures
  i32.load
  i32.const 536870911
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/ures
   i32.load offset=4
   i32.const 536870910
   i32.eq
  else   
   get_local $0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 249
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/shl
  get_global $std/operator-overloading/shl
  i32.const 3
  call $std/operator-overloading/Tester.shl
  set_global $std/operator-overloading/sres
  get_global $std/operator-overloading/sres
  i32.load
  i32.const 8
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/sres
   i32.load offset=4
   i32.const 16
   i32.eq
  else   
   get_local $0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 254
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/pos
  get_global $std/operator-overloading/pos
  call $std/operator-overloading/Tester.pos
  set_global $std/operator-overloading/pres
  get_global $std/operator-overloading/pres
  i32.load
  get_global $std/operator-overloading/pos
  i32.load
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/pres
   i32.load offset=4
   get_global $std/operator-overloading/pos
   i32.load offset=4
   i32.eq
  else   
   get_local $0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 259
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const -1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/neg
  get_global $std/operator-overloading/neg
  call $std/operator-overloading/Tester.neg
  set_global $std/operator-overloading/nres
  get_global $std/operator-overloading/nres
  i32.load
  i32.const 0
  get_global $std/operator-overloading/neg
  i32.load
  i32.sub
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/nres
   i32.load offset=4
   i32.const 0
   get_global $std/operator-overloading/neg
   i32.load offset=4
   i32.sub
   i32.eq
  else   
   get_local $0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 264
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 255
  i32.const 16
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/not
  get_global $std/operator-overloading/not
  call $std/operator-overloading/Tester.not
  set_global $std/operator-overloading/res
  get_global $std/operator-overloading/res
  i32.load
  get_global $std/operator-overloading/not
  i32.load
  i32.const -1
  i32.xor
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/res
   i32.load offset=4
   get_global $std/operator-overloading/not
   i32.load offset=4
   i32.const -1
   i32.xor
   i32.eq
  else   
   get_local $0
  end
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
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/excl
  get_global $std/operator-overloading/excl
  call $std/operator-overloading/Tester.excl
  set_global $std/operator-overloading/bres
  get_global $std/operator-overloading/bres
  get_global $std/operator-overloading/excl
  i32.load
  i32.eqz
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/excl
   i32.load offset=4
   i32.eqz
  else   
   get_local $0
  end
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 275
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  i32.const 1
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/incdec
  get_global $std/operator-overloading/incdec
  call $std/operator-overloading/Tester#inc
  set_global $std/operator-overloading/incdec
  get_global $std/operator-overloading/incdec
  i32.load
  i32.const 1
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 2
   i32.eq
  else   
   get_local $0
  end
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
  call $std/operator-overloading/Tester#dec
  set_global $std/operator-overloading/incdec
  get_global $std/operator-overloading/incdec
  i32.load
  i32.const 0
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 1
   i32.eq
  else   
   get_local $0
  end
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
  i32.const 0
  i32.const 1
  call $std/operator-overloading/Tester#constructor
  set_global $std/operator-overloading/incdec
  block (result i32)
   get_global $std/operator-overloading/incdec
   tee_local $0
   call $std/operator-overloading/Tester#postInc
   set_global $std/operator-overloading/incdec
   get_local $0
  end
  set_global $std/operator-overloading/tmp
  get_global $std/operator-overloading/tmp
  i32.load
  i32.const 0
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/tmp
   i32.load offset=4
   i32.const 1
   i32.eq
  else   
   get_local $0
  end
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
  if (result i32)
   get_global $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 2
   i32.eq
  else   
   get_local $0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 290
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   get_global $std/operator-overloading/incdec
   tee_local $0
   call $std/operator-overloading/Tester#postDec
   set_global $std/operator-overloading/incdec
   get_local $0
  end
  set_global $std/operator-overloading/tmp
  get_global $std/operator-overloading/tmp
  i32.load
  i32.const 1
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/tmp
   i32.load offset=4
   i32.const 2
   i32.eq
  else   
   get_local $0
  end
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
  i32.const 0
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 1
   i32.eq
  else   
   get_local $0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 294
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const 2
  call $std/operator-overloading/TesterInlineStatic#constructor
  set_global $std/operator-overloading/ais1
  block $std/operator-overloading/TesterInlineStatic.postInc|inlined.0 (result i32)
   get_global $std/operator-overloading/ais1
   set_local $0
   i32.const 0
   get_local $0
   i32.load
   i32.const 1
   i32.add
   get_local $0
   i32.load offset=4
   i32.const 1
   i32.add
   call $std/operator-overloading/TesterInlineStatic#constructor
  end
  set_global $std/operator-overloading/ais1
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/TesterInlineStatic#constructor
  set_global $std/operator-overloading/ais2
  block $std/operator-overloading/TesterInlineStatic.add|inlined.0 (result i32)
   get_global $std/operator-overloading/ais1
   set_local $0
   get_global $std/operator-overloading/ais2
   set_local $1
   i32.const 0
   get_local $0
   i32.load
   get_local $1
   i32.load
   i32.add
   get_local $0
   i32.load offset=4
   get_local $1
   i32.load offset=4
   i32.add
   call $std/operator-overloading/TesterInlineStatic#constructor
  end
  set_global $std/operator-overloading/ais
  get_global $std/operator-overloading/ais
  i32.load
  i32.const 4
  i32.eq
  tee_local $1
  if (result i32)
   get_global $std/operator-overloading/ais
   i32.load offset=4
   i32.const 6
   i32.eq
  else   
   get_local $1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 314
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 1
  i32.const 2
  call $std/operator-overloading/TesterInlineInstance#constructor
  set_global $std/operator-overloading/aii1
  block $std/operator-overloading/TesterInlineInstance#postInc|inlined.0 (result i32)
   get_global $std/operator-overloading/aii1
   set_local $1
   i32.const 0
   get_local $1
   i32.load
   i32.const 1
   i32.add
   get_local $1
   i32.load offset=4
   i32.const 1
   i32.add
   call $std/operator-overloading/TesterInlineInstance#constructor
  end
  set_global $std/operator-overloading/aii1
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/TesterInlineInstance#constructor
  set_global $std/operator-overloading/aii2
  block $std/operator-overloading/TesterInlineInstance#add|inlined.0 (result i32)
   get_global $std/operator-overloading/aii1
   set_local $1
   get_global $std/operator-overloading/aii2
   set_local $0
   i32.const 0
   get_local $1
   i32.load
   get_local $0
   i32.load
   i32.add
   get_local $1
   i32.load offset=4
   get_local $0
   i32.load offset=4
   i32.add
   call $std/operator-overloading/TesterInlineInstance#constructor
  end
  set_global $std/operator-overloading/aii
  get_global $std/operator-overloading/aii
  i32.load
  i32.const 4
  i32.eq
  tee_local $0
  if (result i32)
   get_global $std/operator-overloading/aii
   i32.load offset=4
   i32.const 6
   i32.eq
  else   
   get_local $0
  end
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
 (func $null (; 35 ;) (type $v)
 )
)
