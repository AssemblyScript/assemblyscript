(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ddd (func (param f64 f64) (result f64)))
 (type $FUNCSIG$ddi (func (param f64 i32) (result f64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\1b\00\00\00s\00t\00d\00/\00o\00p\00e\00r\00a\00t\00o\00r\00-\00o\00v\00e\00r\00l\00o\00a\00d\00i\00n\00g\00.\00t\00s\00")
 (table $0 1 funcref)
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
 (global $~lib/memory/HEAP_BASE i32 (i32.const 68))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:~lib/allocator/arena (; 1 ;) (type $FUNCSIG$v)
  global.get $~lib/memory/HEAP_BASE
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $~lib/allocator/arena/__memory_allocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.set $1
  local.get $1
  local.get $0
  local.tee $2
  i32.const 1
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  local.set $4
  current_memory
  local.set $5
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $5
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.gt_s
   select
   local.set $3
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/memory/memory.allocate (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $std/operator-overloading/Tester#constructor (; 4 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $std/operator-overloading/Tester.add (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.add
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.add
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.sub (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.sub
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.sub
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.mul (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.mul
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.mul
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.div (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.div_s
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.div_s
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.mod (; 9 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.rem_s
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.rem_s
  call $std/operator-overloading/Tester#constructor
 )
 (func $~lib/math/NativeMath.scalbn (; 10 ;) (type $FUNCSIG$ddi) (param $0 f64) (param $1 i32) (result f64)
  (local $2 f64)
  (local $3 i32)
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
 (func $~lib/math/NativeMath.pow (; 11 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
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
  (local $14 i32)
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
  (local $26 f64)
  (local $27 f64)
  (local $28 i32)
  (local $29 i32)
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
  (local $40 f64)
  (local $41 i32)
  local.get $0
  i64.reinterpret_f64
  local.set $2
  local.get $2
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $3
  local.get $2
  i32.wrap_i64
  local.set $4
  local.get $1
  i64.reinterpret_f64
  local.set $2
  local.get $2
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $5
  local.get $2
  i32.wrap_i64
  local.set $6
  local.get $3
  i32.const 2147483647
  i32.and
  local.set $7
  local.get $5
  i32.const 2147483647
  i32.and
  local.set $8
  local.get $8
  local.get $6
  i32.or
  i32.const 0
  i32.eq
  if
   f64.const 1
   return
  end
  local.get $7
  i32.const 2146435072
  i32.gt_s
  local.tee $9
  if (result i32)
   local.get $9
  else   
   local.get $7
   i32.const 2146435072
   i32.eq
   local.tee $9
   if (result i32)
    local.get $4
    i32.const 0
    i32.ne
   else    
    local.get $9
   end
  end
  local.tee $9
  if (result i32)
   local.get $9
  else   
   local.get $8
   i32.const 2146435072
   i32.gt_s
  end
  local.tee $9
  if (result i32)
   local.get $9
  else   
   local.get $8
   i32.const 2146435072
   i32.eq
   local.tee $9
   if (result i32)
    local.get $6
    i32.const 0
    i32.ne
   else    
    local.get $9
   end
  end
  if
   local.get $0
   local.get $1
   f64.add
   return
  end
  i32.const 0
  local.set $10
  local.get $3
  i32.const 0
  i32.lt_s
  if
   local.get $8
   i32.const 1128267776
   i32.ge_s
   if
    i32.const 2
    local.set $10
   else    
    local.get $8
    i32.const 1072693248
    i32.ge_s
    if
     local.get $8
     i32.const 20
     i32.shr_s
     i32.const 1023
     i32.sub
     local.set $11
     local.get $11
     i32.const 20
     i32.gt_s
     local.set $9
     i32.const 52
     i32.const 20
     local.get $9
     select
     local.get $11
     i32.sub
     local.set $12
     local.get $6
     local.get $8
     local.get $9
     select
     local.set $13
     local.get $13
     local.get $12
     i32.shr_s
     local.set $14
     local.get $14
     local.get $12
     i32.shl
     local.get $13
     i32.eq
     if
      i32.const 2
      local.get $14
      i32.const 1
      i32.and
      i32.sub
      local.set $10
     end
    end
   end
  end
  local.get $6
  i32.const 0
  i32.eq
  if
   local.get $8
   i32.const 2146435072
   i32.eq
   if
    local.get $7
    i32.const 1072693248
    i32.sub
    local.get $4
    i32.or
    i32.const 0
    i32.eq
    if
     f64.const nan:0x8000000000000
     return
    else     
     local.get $7
     i32.const 1072693248
     i32.ge_s
     if
      local.get $5
      i32.const 0
      i32.ge_s
      if (result f64)
       local.get $1
      else       
       f64.const 0
      end
      return
     else      
      local.get $5
      i32.const 0
      i32.ge_s
      if (result f64)
       f64.const 0
      else       
       local.get $1
       f64.neg
      end
      return
     end
     unreachable
    end
    unreachable
    unreachable
   end
   local.get $8
   i32.const 1072693248
   i32.eq
   if
    local.get $5
    i32.const 0
    i32.ge_s
    if
     local.get $0
     return
    end
    f64.const 1
    local.get $0
    f64.div
    return
   end
   local.get $5
   i32.const 1073741824
   i32.eq
   if
    local.get $0
    local.get $0
    f64.mul
    return
   end
   local.get $5
   i32.const 1071644672
   i32.eq
   if
    local.get $3
    i32.const 0
    i32.ge_s
    if
     local.get $0
     f64.sqrt
     return
    end
   end
  end
  local.get $0
  f64.abs
  local.set $15
  local.get $4
  i32.const 0
  i32.eq
  if
   local.get $7
   i32.const 0
   i32.eq
   local.tee $14
   if (result i32)
    local.get $14
   else    
    local.get $7
    i32.const 2146435072
    i32.eq
   end
   local.tee $14
   if (result i32)
    local.get $14
   else    
    local.get $7
    i32.const 1072693248
    i32.eq
   end
   if
    local.get $15
    local.set $16
    local.get $5
    i32.const 0
    i32.lt_s
    if
     f64.const 1
     local.get $16
     f64.div
     local.set $16
    end
    local.get $3
    i32.const 0
    i32.lt_s
    if
     local.get $7
     i32.const 1072693248
     i32.sub
     local.get $10
     i32.or
     i32.const 0
     i32.eq
     if
      local.get $16
      local.get $16
      f64.sub
      local.set $17
      local.get $17
      local.get $17
      f64.div
      local.set $16
     else      
      local.get $10
      i32.const 1
      i32.eq
      if
       local.get $16
       f64.neg
       local.set $16
      end
     end
    end
    local.get $16
    return
   end
  end
  f64.const 1
  local.set $18
  local.get $3
  i32.const 0
  i32.lt_s
  if
   local.get $10
   i32.const 0
   i32.eq
   if
    local.get $0
    local.get $0
    f64.sub
    local.set $17
    local.get $17
    local.get $17
    f64.div
    return
   end
   local.get $10
   i32.const 1
   i32.eq
   if
    f64.const -1
    local.set $18
   end
  end
  local.get $8
  i32.const 1105199104
  i32.gt_s
  if
   local.get $8
   i32.const 1139802112
   i32.gt_s
   if
    local.get $7
    i32.const 1072693247
    i32.le_s
    if
     local.get $5
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
    local.get $7
    i32.const 1072693248
    i32.ge_s
    if
     local.get $5
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
   local.get $7
   i32.const 1072693247
   i32.lt_s
   if
    local.get $5
    i32.const 0
    i32.lt_s
    if (result f64)
     local.get $18
     f64.const 1.e+300
     f64.mul
     f64.const 1.e+300
     f64.mul
    else     
     local.get $18
     f64.const 1e-300
     f64.mul
     f64.const 1e-300
     f64.mul
    end
    return
   end
   local.get $7
   i32.const 1072693248
   i32.gt_s
   if
    local.get $5
    i32.const 0
    i32.gt_s
    if (result f64)
     local.get $18
     f64.const 1.e+300
     f64.mul
     f64.const 1.e+300
     f64.mul
    else     
     local.get $18
     f64.const 1e-300
     f64.mul
     f64.const 1e-300
     f64.mul
    end
    return
   end
   local.get $15
   f64.const 1
   f64.sub
   local.set $24
   local.get $24
   local.get $24
   f64.mul
   f64.const 0.5
   local.get $24
   f64.const 0.3333333333333333
   local.get $24
   f64.const 0.25
   f64.mul
   f64.sub
   f64.mul
   f64.sub
   f64.mul
   local.set $27
   f64.const 1.4426950216293335
   local.get $24
   f64.mul
   local.set $25
   local.get $24
   f64.const 1.9259629911266175e-08
   f64.mul
   local.get $27
   f64.const 1.4426950408889634
   f64.mul
   f64.sub
   local.set $26
   local.get $25
   local.get $26
   f64.add
   local.set $19
   local.get $19
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $19
   local.get $26
   local.get $19
   local.get $25
   f64.sub
   f64.sub
   local.set $20
  else   
   i32.const 0
   local.set $29
   local.get $7
   i32.const 1048576
   i32.lt_s
   if
    local.get $15
    f64.const 9007199254740992
    f64.mul
    local.set $15
    local.get $29
    i32.const 53
    i32.sub
    local.set $29
    local.get $15
    i64.reinterpret_f64
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    local.set $7
   end
   local.get $29
   local.get $7
   i32.const 20
   i32.shr_s
   i32.const 1023
   i32.sub
   i32.add
   local.set $29
   local.get $7
   i32.const 1048575
   i32.and
   local.set $28
   local.get $28
   i32.const 1072693248
   i32.or
   local.set $7
   local.get $28
   i32.const 235662
   i32.le_s
   if
    i32.const 0
    local.set $11
   else    
    local.get $28
    i32.const 767610
    i32.lt_s
    if
     i32.const 1
     local.set $11
    else     
     i32.const 0
     local.set $11
     local.get $29
     i32.const 1
     i32.add
     local.set $29
     local.get $7
     i32.const 1048576
     i32.sub
     local.set $7
    end
   end
   local.get $15
   i64.reinterpret_f64
   i64.const 4294967295
   i64.and
   local.get $7
   i64.extend_i32_s
   i64.const 32
   i64.shl
   i64.or
   f64.reinterpret_i64
   local.set $15
   f64.const 1.5
   f64.const 1
   local.get $11
   select
   local.set $35
   local.get $15
   local.get $35
   f64.sub
   local.set $25
   f64.const 1
   local.get $15
   local.get $35
   f64.add
   f64.div
   local.set $26
   local.get $25
   local.get $26
   f64.mul
   local.set $17
   local.get $17
   local.set $31
   local.get $31
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $31
   local.get $7
   i32.const 1
   i32.shr_s
   i32.const 536870912
   i32.or
   i32.const 524288
   i32.add
   local.get $11
   i32.const 18
   i32.shl
   i32.add
   i64.extend_i32_s
   i64.const 32
   i64.shl
   f64.reinterpret_i64
   local.set $33
   local.get $15
   local.get $33
   local.get $35
   f64.sub
   f64.sub
   local.set $34
   local.get $26
   local.get $25
   local.get $31
   local.get $33
   f64.mul
   f64.sub
   local.get $31
   local.get $34
   f64.mul
   f64.sub
   f64.mul
   local.set $32
   local.get $17
   local.get $17
   f64.mul
   local.set $30
   local.get $30
   local.get $30
   f64.mul
   f64.const 0.5999999999999946
   local.get $30
   f64.const 0.4285714285785502
   local.get $30
   f64.const 0.33333332981837743
   local.get $30
   f64.const 0.272728123808534
   local.get $30
   f64.const 0.23066074577556175
   local.get $30
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
   local.set $23
   local.get $23
   local.get $32
   local.get $31
   local.get $17
   f64.add
   f64.mul
   f64.add
   local.set $23
   local.get $31
   local.get $31
   f64.mul
   local.set $30
   f64.const 3
   local.get $30
   f64.add
   local.get $23
   f64.add
   local.set $33
   local.get $33
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $33
   local.get $23
   local.get $33
   f64.const 3
   f64.sub
   local.get $30
   f64.sub
   f64.sub
   local.set $34
   local.get $31
   local.get $33
   f64.mul
   local.set $25
   local.get $32
   local.get $33
   f64.mul
   local.get $34
   local.get $17
   f64.mul
   f64.add
   local.set $26
   local.get $25
   local.get $26
   f64.add
   local.set $21
   local.get $21
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $21
   local.get $26
   local.get $21
   local.get $25
   f64.sub
   f64.sub
   local.set $22
   f64.const 0.9617967009544373
   local.get $21
   f64.mul
   local.set $36
   f64.const 1.350039202129749e-08
   f64.const 0
   local.get $11
   select
   local.set $37
   f64.const -7.028461650952758e-09
   local.get $21
   f64.mul
   local.get $22
   f64.const 0.9617966939259756
   f64.mul
   f64.add
   local.get $37
   f64.add
   local.set $38
   local.get $29
   f64.convert_i32_s
   local.set $24
   f64.const 0.5849624872207642
   f64.const 0
   local.get $11
   select
   local.set $39
   local.get $36
   local.get $38
   f64.add
   local.get $39
   f64.add
   local.get $24
   f64.add
   local.set $19
   local.get $19
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $19
   local.get $38
   local.get $19
   local.get $24
   f64.sub
   local.get $39
   f64.sub
   local.get $36
   f64.sub
   f64.sub
   local.set $20
  end
  local.get $1
  local.set $40
  local.get $40
  i64.reinterpret_f64
  i64.const -4294967296
  i64.and
  f64.reinterpret_i64
  local.set $40
  local.get $1
  local.get $40
  f64.sub
  local.get $19
  f64.mul
  local.get $1
  local.get $20
  f64.mul
  f64.add
  local.set $22
  local.get $40
  local.get $19
  f64.mul
  local.set $21
  local.get $22
  local.get $21
  f64.add
  local.set $16
  local.get $16
  i64.reinterpret_f64
  local.set $2
  local.get $2
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $28
  local.get $2
  i32.wrap_i64
  local.set $41
  local.get $28
  i32.const 1083179008
  i32.ge_s
  if
   local.get $28
   i32.const 1083179008
   i32.sub
   local.get $41
   i32.or
   i32.const 0
   i32.ne
   if
    local.get $18
    f64.const 1.e+300
    f64.mul
    f64.const 1.e+300
    f64.mul
    return
   end
   local.get $22
   f64.const 8.008566259537294e-17
   f64.add
   local.get $16
   local.get $21
   f64.sub
   f64.gt
   if
    local.get $18
    f64.const 1.e+300
    f64.mul
    f64.const 1.e+300
    f64.mul
    return
   end
  else   
   local.get $28
   i32.const 2147483647
   i32.and
   i32.const 1083231232
   i32.ge_s
   if
    local.get $28
    i32.const -1064252416
    i32.sub
    local.get $41
    i32.or
    i32.const 0
    i32.ne
    if
     local.get $18
     f64.const 1e-300
     f64.mul
     f64.const 1e-300
     f64.mul
     return
    end
    local.get $22
    local.get $16
    local.get $21
    f64.sub
    f64.le
    if
     local.get $18
     f64.const 1e-300
     f64.mul
     f64.const 1e-300
     f64.mul
     return
    end
   end
  end
  local.get $28
  i32.const 2147483647
  i32.and
  local.set $41
  local.get $41
  i32.const 20
  i32.shr_s
  i32.const 1023
  i32.sub
  local.set $11
  i32.const 0
  local.set $29
  local.get $41
  i32.const 1071644672
  i32.gt_s
  if
   local.get $28
   i32.const 1048576
   local.get $11
   i32.const 1
   i32.add
   i32.shr_s
   i32.add
   local.set $29
   local.get $29
   i32.const 2147483647
   i32.and
   i32.const 20
   i32.shr_s
   i32.const 1023
   i32.sub
   local.set $11
   f64.const 0
   local.set $24
   local.get $29
   i32.const 1048575
   local.get $11
   i32.shr_s
   i32.const -1
   i32.xor
   i32.and
   i64.extend_i32_s
   i64.const 32
   i64.shl
   f64.reinterpret_i64
   local.set $24
   local.get $29
   i32.const 1048575
   i32.and
   i32.const 1048576
   i32.or
   i32.const 20
   local.get $11
   i32.sub
   i32.shr_s
   local.set $29
   local.get $28
   i32.const 0
   i32.lt_s
   if
    i32.const 0
    local.get $29
    i32.sub
    local.set $29
   end
   local.get $21
   local.get $24
   f64.sub
   local.set $21
  end
  local.get $22
  local.get $21
  f64.add
  local.set $24
  local.get $24
  i64.reinterpret_f64
  i64.const -4294967296
  i64.and
  f64.reinterpret_i64
  local.set $24
  local.get $24
  f64.const 0.6931471824645996
  f64.mul
  local.set $25
  local.get $22
  local.get $24
  local.get $21
  f64.sub
  f64.sub
  f64.const 0.6931471805599453
  f64.mul
  local.get $24
  f64.const -1.904654299957768e-09
  f64.mul
  f64.add
  local.set $26
  local.get $25
  local.get $26
  f64.add
  local.set $16
  local.get $26
  local.get $16
  local.get $25
  f64.sub
  f64.sub
  local.set $27
  local.get $16
  local.get $16
  f64.mul
  local.set $24
  local.get $16
  local.get $24
  f64.const 0.16666666666666602
  local.get $24
  f64.const -2.7777777777015593e-03
  local.get $24
  f64.const 6.613756321437934e-05
  local.get $24
  f64.const -1.6533902205465252e-06
  local.get $24
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
  local.set $19
  local.get $16
  local.get $19
  f64.mul
  local.get $19
  f64.const 2
  f64.sub
  f64.div
  local.get $27
  local.get $16
  local.get $27
  f64.mul
  f64.add
  f64.sub
  local.set $23
  f64.const 1
  local.get $23
  local.get $16
  f64.sub
  f64.sub
  local.set $16
  local.get $16
  i64.reinterpret_f64
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $28
  local.get $28
  local.get $29
  i32.const 20
  i32.shl
  i32.add
  local.set $28
  local.get $28
  i32.const 20
  i32.shr_s
  i32.const 0
  i32.le_s
  if
   local.get $16
   local.get $29
   call $~lib/math/NativeMath.scalbn
   local.set $16
  else   
   local.get $16
   i64.reinterpret_f64
   i64.const 4294967295
   i64.and
   local.get $28
   i64.extend_i32_s
   i64.const 32
   i64.shl
   i64.or
   f64.reinterpret_i64
   local.set $16
  end
  local.get $18
  local.get $16
  f64.mul
 )
 (func $std/operator-overloading/Tester.pow (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  f64.convert_i32_s
  local.get $1
  i32.load
  f64.convert_i32_s
  call $~lib/math/NativeMath.pow
  i32.trunc_f64_s
  local.get $0
  i32.load offset=4
  f64.convert_i32_s
  local.get $1
  i32.load offset=4
  f64.convert_i32_s
  call $~lib/math/NativeMath.pow
  i32.trunc_f64_s
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.and (; 13 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.and
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.and
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.or (; 14 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.or
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.or
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.xor (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.xor
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.xor
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.equals (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.eq
  local.tee $2
  if (result i32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.load offset=4
   i32.eq
  else   
   local.get $2
  end
 )
 (func $std/operator-overloading/Tester.notEquals (; 17 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.ne
  local.tee $2
  if (result i32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.load offset=4
   i32.ne
  else   
   local.get $2
  end
 )
 (func $std/operator-overloading/Tester.greater (; 18 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.gt_s
  local.tee $2
  if (result i32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.load offset=4
   i32.gt_s
  else   
   local.get $2
  end
 )
 (func $std/operator-overloading/Tester.greaterEquals (; 19 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.ge_s
  local.tee $2
  if (result i32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.load offset=4
   i32.ge_s
  else   
   local.get $2
  end
 )
 (func $std/operator-overloading/Tester.less (; 20 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.lt_s
  local.tee $2
  if (result i32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.load offset=4
   i32.lt_s
  else   
   local.get $2
  end
 )
 (func $std/operator-overloading/Tester.lessEquals (; 21 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.le_s
  local.tee $2
  if (result i32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.load offset=4
   i32.le_s
  else   
   local.get $2
  end
 )
 (func $std/operator-overloading/Tester.shr (; 22 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.shr_s
  local.get $0
  i32.load offset=4
  local.get $1
  i32.shr_s
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.shu (; 23 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.shr_u
  local.get $0
  i32.load offset=4
  local.get $1
  i32.shr_u
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.shl (; 24 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  local.get $1
  i32.shl
  local.get $0
  i32.load offset=4
  local.get $1
  i32.shl
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.pos (; 25 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.neg (; 26 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  i32.const 0
  local.get $0
  i32.load
  i32.sub
  i32.const 0
  local.get $0
  i32.load offset=4
  i32.sub
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.not (; 27 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  i32.const -1
  i32.xor
  local.get $0
  i32.load offset=4
  i32.const -1
  i32.xor
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester.excl (; 28 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  i32.eqz
  local.tee $1
  if (result i32)
   local.get $0
   i32.load offset=4
   i32.eqz
  else   
   local.get $1
  end
 )
 (func $std/operator-overloading/Tester#inc (; 29 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $0
 )
 (func $std/operator-overloading/Tester#dec (; 30 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.sub
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
 )
 (func $std/operator-overloading/Tester#postInc (; 31 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.add
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/Tester#postDec (; 32 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load
  i32.const 1
  i32.sub
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  call $std/operator-overloading/Tester#constructor
 )
 (func $std/operator-overloading/TesterInlineStatic#constructor (; 33 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $std/operator-overloading/TesterInlineInstance#constructor (; 34 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $start:std/operator-overloading (; 35 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  call $start:~lib/allocator/arena
  i32.const 0
  i32.const 1
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/a1
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/a2
  global.get $std/operator-overloading/a1
  global.get $std/operator-overloading/a2
  call $std/operator-overloading/Tester.add
  global.set $std/operator-overloading/a
  global.get $std/operator-overloading/a
  i32.load
  i32.const 3
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/a
   i32.load offset=4
   i32.const 5
   i32.eq
  else   
   local.get $0
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
  global.set $std/operator-overloading/s1
  i32.const 0
  i32.const 2
  i32.const -3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/s2
  global.get $std/operator-overloading/s1
  global.get $std/operator-overloading/s2
  call $std/operator-overloading/Tester.sub
  global.set $std/operator-overloading/s
  global.get $std/operator-overloading/s
  i32.load
  i32.const 0
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/s
   i32.load offset=4
   i32.const 6
   i32.eq
  else   
   local.get $0
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
  global.set $std/operator-overloading/m1
  i32.const 0
  i32.const 3
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/m2
  global.get $std/operator-overloading/m1
  global.get $std/operator-overloading/m2
  call $std/operator-overloading/Tester.mul
  global.set $std/operator-overloading/m
  global.get $std/operator-overloading/m
  i32.load
  i32.const 6
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/m
   i32.load offset=4
   i32.const 10
   i32.eq
  else   
   local.get $0
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
  global.set $std/operator-overloading/d1
  i32.const 0
  i32.const 3
  i32.const 10
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/d2
  global.get $std/operator-overloading/d1
  global.get $std/operator-overloading/d2
  call $std/operator-overloading/Tester.div
  global.set $std/operator-overloading/d
  global.get $std/operator-overloading/d
  i32.load
  i32.const 2
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/d
   i32.load offset=4
   i32.const 5
   i32.eq
  else   
   local.get $0
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
  global.set $std/operator-overloading/f1
  i32.const 0
  i32.const 6
  i32.const 10
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/f2
  global.get $std/operator-overloading/f1
  global.get $std/operator-overloading/f2
  call $std/operator-overloading/Tester.mod
  global.set $std/operator-overloading/f
  global.get $std/operator-overloading/f
  i32.load
  i32.const 4
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/f
   i32.load offset=4
   i32.const 0
   i32.eq
  else   
   local.get $0
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
  global.set $std/operator-overloading/p1
  i32.const 0
  i32.const 4
  i32.const 5
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/p2
  global.get $std/operator-overloading/p1
  global.get $std/operator-overloading/p2
  call $std/operator-overloading/Tester.pow
  global.set $std/operator-overloading/p
  global.get $std/operator-overloading/p
  i32.load
  i32.const 16
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/p
   i32.load offset=4
   i32.const 243
   i32.eq
  else   
   local.get $0
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
  global.set $std/operator-overloading/n1
  i32.const 0
  i32.const 15
  i32.const 255
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/n2
  global.get $std/operator-overloading/n1
  global.get $std/operator-overloading/n2
  call $std/operator-overloading/Tester.and
  global.set $std/operator-overloading/n
  global.get $std/operator-overloading/n
  i32.load
  i32.const 15
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/n
   i32.load offset=4
   i32.const 15
   i32.eq
  else   
   local.get $0
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
  global.set $std/operator-overloading/o1
  i32.const 0
  i32.const 61680
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/o2
  global.get $std/operator-overloading/o1
  global.get $std/operator-overloading/o2
  call $std/operator-overloading/Tester.or
  global.set $std/operator-overloading/o
  global.get $std/operator-overloading/o
  i32.load
  i32.const 65535
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/o
   i32.load offset=4
   i32.const 255
   i32.eq
  else   
   local.get $0
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
  global.set $std/operator-overloading/x1
  i32.const 0
  i32.const 65280
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/x2
  global.get $std/operator-overloading/x1
  global.get $std/operator-overloading/x2
  call $std/operator-overloading/Tester.xor
  global.set $std/operator-overloading/x
  global.get $std/operator-overloading/x
  i32.load
  i32.const 65535
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/x
   i32.load offset=4
   i32.const 255
   i32.eq
  else   
   local.get $0
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
  global.set $std/operator-overloading/eq1
  i32.const 0
  i32.const 1
  i32.const -2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/eq2
  global.get $std/operator-overloading/eq1
  global.get $std/operator-overloading/eq2
  call $std/operator-overloading/Tester.equals
  global.set $std/operator-overloading/eq
  global.get $std/operator-overloading/eq
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
  global.set $std/operator-overloading/eq3
  i32.const 0
  i32.const 0
  i32.const 1
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/eq4
  global.get $std/operator-overloading/eq3
  global.get $std/operator-overloading/eq4
  call $std/operator-overloading/Tester.equals
  global.set $std/operator-overloading/eqf
  global.get $std/operator-overloading/eqf
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
  global.get $std/operator-overloading/eq1
  global.get $std/operator-overloading/eq2
  call $std/operator-overloading/Tester.notEquals
  global.set $std/operator-overloading/eq
  global.get $std/operator-overloading/eq
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
  global.get $std/operator-overloading/eq3
  global.get $std/operator-overloading/eq4
  call $std/operator-overloading/Tester.notEquals
  global.set $std/operator-overloading/eqf
  global.get $std/operator-overloading/eqf
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
  global.get $~lib/builtins/i32.MAX_VALUE
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/gt1
  i32.const 0
  i32.const 1
  i32.const 0
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/gt2
  global.get $std/operator-overloading/gt1
  global.get $std/operator-overloading/gt2
  call $std/operator-overloading/Tester.greater
  global.set $std/operator-overloading/gt
  global.get $std/operator-overloading/gt
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
  global.set $std/operator-overloading/gte1
  i32.const 0
  i32.const 2
  i32.const 2
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/gte2
  global.get $std/operator-overloading/gte1
  global.get $std/operator-overloading/gte2
  call $std/operator-overloading/Tester.greaterEquals
  global.set $std/operator-overloading/gte
  global.get $std/operator-overloading/gte
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
  global.set $std/operator-overloading/le1
  i32.const 0
  i32.const 6
  i32.const 6
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/le2
  global.get $std/operator-overloading/le1
  global.get $std/operator-overloading/le2
  call $std/operator-overloading/Tester.less
  global.set $std/operator-overloading/le
  global.get $std/operator-overloading/le
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
  global.set $std/operator-overloading/leq1
  i32.const 0
  i32.const 4
  i32.const 3
  call $std/operator-overloading/Tester#constructor
  global.set $std/operator-overloading/leq2
  global.get $std/operator-overloading/leq1
  global.get $std/operator-overloading/leq2
  call $std/operator-overloading/Tester.lessEquals
  global.set $std/operator-overloading/leq
  global.get $std/operator-overloading/leq
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
  global.set $std/operator-overloading/shr
  global.get $std/operator-overloading/shr
  i32.const 3
  call $std/operator-overloading/Tester.shr
  global.set $std/operator-overloading/sres
  global.get $std/operator-overloading/sres
  i32.load
  i32.const 1
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/sres
   i32.load offset=4
   i32.const 2
   i32.eq
  else   
   local.get $0
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
  global.set $std/operator-overloading/shu
  global.get $std/operator-overloading/shu
  i32.const 3
  call $std/operator-overloading/Tester.shu
  global.set $std/operator-overloading/ures
  global.get $std/operator-overloading/ures
  i32.load
  i32.const 536870911
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/ures
   i32.load offset=4
   i32.const 536870910
   i32.eq
  else   
   local.get $0
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
  global.set $std/operator-overloading/shl
  global.get $std/operator-overloading/shl
  i32.const 3
  call $std/operator-overloading/Tester.shl
  global.set $std/operator-overloading/sres
  global.get $std/operator-overloading/sres
  i32.load
  i32.const 8
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/sres
   i32.load offset=4
   i32.const 16
   i32.eq
  else   
   local.get $0
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
  global.set $std/operator-overloading/pos
  global.get $std/operator-overloading/pos
  call $std/operator-overloading/Tester.pos
  global.set $std/operator-overloading/pres
  global.get $std/operator-overloading/pres
  i32.load
  global.get $std/operator-overloading/pos
  i32.load
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/pres
   i32.load offset=4
   global.get $std/operator-overloading/pos
   i32.load offset=4
   i32.eq
  else   
   local.get $0
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
  global.set $std/operator-overloading/neg
  global.get $std/operator-overloading/neg
  call $std/operator-overloading/Tester.neg
  global.set $std/operator-overloading/nres
  global.get $std/operator-overloading/nres
  i32.load
  i32.const 0
  global.get $std/operator-overloading/neg
  i32.load
  i32.sub
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/nres
   i32.load offset=4
   i32.const 0
   global.get $std/operator-overloading/neg
   i32.load offset=4
   i32.sub
   i32.eq
  else   
   local.get $0
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
  global.set $std/operator-overloading/not
  global.get $std/operator-overloading/not
  call $std/operator-overloading/Tester.not
  global.set $std/operator-overloading/res
  global.get $std/operator-overloading/res
  i32.load
  global.get $std/operator-overloading/not
  i32.load
  i32.const -1
  i32.xor
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/res
   i32.load offset=4
   global.get $std/operator-overloading/not
   i32.load offset=4
   i32.const -1
   i32.xor
   i32.eq
  else   
   local.get $0
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
  global.set $std/operator-overloading/excl
  global.get $std/operator-overloading/excl
  call $std/operator-overloading/Tester.excl
  global.set $std/operator-overloading/bres
  global.get $std/operator-overloading/bres
  global.get $std/operator-overloading/excl
  i32.load
  i32.eqz
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/excl
   i32.load offset=4
   i32.eqz
  else   
   local.get $0
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
  global.get $std/operator-overloading/bres
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
  global.set $std/operator-overloading/incdec
  global.get $std/operator-overloading/incdec
  call $std/operator-overloading/Tester#inc
  global.set $std/operator-overloading/incdec
  global.get $std/operator-overloading/incdec
  i32.load
  i32.const 1
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 2
   i32.eq
  else   
   local.get $0
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
  global.get $std/operator-overloading/incdec
  call $std/operator-overloading/Tester#dec
  global.set $std/operator-overloading/incdec
  global.get $std/operator-overloading/incdec
  i32.load
  i32.const 0
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 1
   i32.eq
  else   
   local.get $0
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
  global.set $std/operator-overloading/incdec
  block (result i32)
   global.get $std/operator-overloading/incdec
   local.tee $0
   call $std/operator-overloading/Tester#postInc
   global.set $std/operator-overloading/incdec
   local.get $0
  end
  global.set $std/operator-overloading/tmp
  global.get $std/operator-overloading/tmp
  i32.load
  i32.const 0
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/tmp
   i32.load offset=4
   i32.const 1
   i32.eq
  else   
   local.get $0
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
  global.get $std/operator-overloading/incdec
  i32.load
  i32.const 1
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 2
   i32.eq
  else   
   local.get $0
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
   global.get $std/operator-overloading/incdec
   local.tee $0
   call $std/operator-overloading/Tester#postDec
   global.set $std/operator-overloading/incdec
   local.get $0
  end
  global.set $std/operator-overloading/tmp
  global.get $std/operator-overloading/tmp
  i32.load
  i32.const 1
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/tmp
   i32.load offset=4
   i32.const 2
   i32.eq
  else   
   local.get $0
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
  global.get $std/operator-overloading/incdec
  i32.load
  i32.const 0
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/incdec
   i32.load offset=4
   i32.const 1
   i32.eq
  else   
   local.get $0
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
  global.set $std/operator-overloading/ais1
  block $std/operator-overloading/TesterInlineStatic.postInc|inlined.0 (result i32)
   global.get $std/operator-overloading/ais1
   local.set $0
   i32.const 0
   local.get $0
   i32.load
   i32.const 1
   i32.add
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.add
   call $std/operator-overloading/TesterInlineStatic#constructor
  end
  global.set $std/operator-overloading/ais1
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/TesterInlineStatic#constructor
  global.set $std/operator-overloading/ais2
  block $std/operator-overloading/TesterInlineStatic.add|inlined.0 (result i32)
   global.get $std/operator-overloading/ais1
   local.set $0
   global.get $std/operator-overloading/ais2
   local.set $1
   i32.const 0
   local.get $0
   i32.load
   local.get $1
   i32.load
   i32.add
   local.get $0
   i32.load offset=4
   local.get $1
   i32.load offset=4
   i32.add
   call $std/operator-overloading/TesterInlineStatic#constructor
  end
  global.set $std/operator-overloading/ais
  global.get $std/operator-overloading/ais
  i32.load
  i32.const 4
  i32.eq
  local.tee $1
  if (result i32)
   global.get $std/operator-overloading/ais
   i32.load offset=4
   i32.const 6
   i32.eq
  else   
   local.get $1
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
  global.set $std/operator-overloading/aii1
  block $std/operator-overloading/TesterInlineInstance#postInc|inlined.0 (result i32)
   global.get $std/operator-overloading/aii1
   local.set $1
   i32.const 0
   local.get $1
   i32.load
   i32.const 1
   i32.add
   local.get $1
   i32.load offset=4
   i32.const 1
   i32.add
   call $std/operator-overloading/TesterInlineInstance#constructor
  end
  global.set $std/operator-overloading/aii1
  i32.const 0
  i32.const 2
  i32.const 3
  call $std/operator-overloading/TesterInlineInstance#constructor
  global.set $std/operator-overloading/aii2
  block $std/operator-overloading/TesterInlineInstance#add|inlined.0 (result i32)
   global.get $std/operator-overloading/aii1
   local.set $1
   global.get $std/operator-overloading/aii2
   local.set $0
   i32.const 0
   local.get $1
   i32.load
   local.get $0
   i32.load
   i32.add
   local.get $1
   i32.load offset=4
   local.get $0
   i32.load offset=4
   i32.add
   call $std/operator-overloading/TesterInlineInstance#constructor
  end
  global.set $std/operator-overloading/aii
  global.get $std/operator-overloading/aii
  i32.load
  i32.const 4
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/operator-overloading/aii
   i32.load offset=4
   i32.const 6
   i32.eq
  else   
   local.get $0
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
 (func $start (; 36 ;) (type $FUNCSIG$v)
  call $start:std/operator-overloading
 )
 (func $null (; 37 ;) (type $FUNCSIG$v)
 )
)
