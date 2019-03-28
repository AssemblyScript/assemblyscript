(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$dd (func (param f64) (result f64)))
 (type $FUNCSIG$ff (func (param f32) (result f32)))
 (memory $0 0)
 (table $0 1 funcref)
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
  local.get $0
  i64.reinterpret_f64
  local.tee $2
  i32.wrap_i64
  local.set $3
  block (result i32)
   block (result i32)
    block (result i32)
     local.get $2
     i64.const 32
     i64.shr_u
     i32.wrap_i64
     local.tee $4
     i32.const 2147483647
     i32.and
     local.tee $5
     i32.const 2146435072
     i32.gt_s
     local.tee $1
     i32.eqz
     if
      local.get $5
      i32.const 2146435072
      i32.eq
      local.tee $1
      if
       local.get $3
       i32.const 0
       i32.ne
       local.set $1
      end
     end
     local.get $1
     i32.eqz
    end
    if
     i32.const 0
     local.set $1
    end
    local.get $1
    i32.eqz
   end
   if
    i32.const 0
    local.set $1
   end
   local.get $1
  end
  if
   local.get $0
   f64.const 1
   f64.add
   return
  end
  local.get $0
 )
 (func $~lib/math/NativeMathf.mod (; 1 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.reinterpret_f32
  local.tee $3
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  local.set $2
  local.get $3
  i32.const -2147483648
  i32.and
  local.set $4
  local.get $2
  i32.const 255
  i32.eq
  local.tee $1
  if (result i32)
   local.get $1
  else   
   i32.const 0
  end
  if
   local.get $0
   local.get $0
   f32.div
   return
  end
  block $folding-inner0
   local.get $3
   i32.const 1
   i32.shl
   local.tee $1
   i32.const 2130706432
   i32.le_u
   if
    local.get $1
    i32.const 2130706432
    i32.eq
    br_if $folding-inner0
    local.get $0
    return
   end
   local.get $2
   if (result i32)
    local.get $3
    i32.const 8388607
    i32.and
    i32.const 8388608
    i32.or
   else    
    local.get $3
    i32.const 1
    local.get $2
    local.get $3
    i32.const 9
    i32.shl
    i32.clz
    i32.sub
    local.tee $2
    i32.sub
    i32.shl
   end
   local.set $1
   loop $continue|0
    local.get $2
    i32.const 127
    i32.gt_s
    if
     local.get $1
     i32.const 8388608
     i32.ge_u
     if
      local.get $1
      i32.const 8388608
      i32.eq
      br_if $folding-inner0
      local.get $1
      i32.const 8388608
      i32.sub
      local.set $1
     end
     local.get $1
     i32.const 1
     i32.shl
     local.set $1
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $continue|0
    end
   end
   local.get $1
   i32.const 8388608
   i32.ge_u
   if
    local.get $1
    i32.const 8388608
    i32.eq
    br_if $folding-inner0
    local.get $1
    i32.const 8388608
    i32.sub
    local.set $1
   end
   local.get $1
   local.get $1
   i32.const 8
   i32.shl
   i32.clz
   local.tee $3
   i32.shl
   local.set $1
   local.get $2
   local.get $3
   i32.sub
   local.tee $2
   i32.const 0
   i32.gt_s
   if (result i32)
    local.get $1
    i32.const 8388608
    i32.sub
    local.get $2
    i32.const 23
    i32.shl
    i32.or
   else    
    local.get $1
    i32.const 1
    local.get $2
    i32.sub
    i32.shr_u
   end
   local.get $4
   i32.or
   f32.reinterpret_i32
   return
  end
  f32.const 0
  local.get $0
  f32.mul
 )
 (func $~lib/math/NativeMathf.pow (; 2 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  block (result i32)
   local.get $0
   i32.reinterpret_f32
   local.tee $2
   i32.const 2147483647
   i32.and
   i32.const 2139095040
   i32.gt_s
   local.tee $1
   i32.eqz
   if
    i32.const 0
    local.set $1
   end
   local.get $1
  end
  if
   local.get $0
   f32.const 1
   f32.add
   return
  end
  local.get $0
 )
 (func $~lib/math/NativeMath.mod (; 3 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  local.get $0
  i64.reinterpret_f64
  local.tee $1
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.set $2
  local.get $1
  i64.const 63
  i64.shr_u
  local.set $4
  local.get $2
  i64.const 2047
  i64.eq
  local.tee $5
  if (result i32)
   local.get $5
  else   
   i32.const 0
  end
  if
   local.get $0
   local.get $0
   f64.div
   return
  end
  block $folding-inner0
   local.get $1
   i64.const 1
   i64.shl
   local.tee $3
   i64.const 9214364837600034816
   i64.le_u
   if
    local.get $3
    i64.const 9214364837600034816
    i64.eq
    br_if $folding-inner0
    local.get $0
    return
   end
   local.get $2
   i64.eqz
   if (result i64)
    local.get $1
    i64.const 0
    local.get $2
    local.get $1
    i64.const 12
    i64.shl
    i64.clz
    i64.sub
    local.tee $2
    i64.sub
    i64.const 1
    i64.add
    i64.shl
   else    
    local.get $1
    i64.const 4503599627370495
    i64.and
    i64.const 4503599627370496
    i64.or
   end
   local.set $1
   loop $continue|0
    local.get $2
    i64.const 1023
    i64.gt_s
    if
     local.get $1
     i64.const 4503599627370496
     i64.ge_u
     if
      local.get $1
      i64.const 4503599627370496
      i64.eq
      br_if $folding-inner0
      local.get $1
      i64.const 4503599627370496
      i64.sub
      local.set $1
     end
     local.get $1
     i64.const 1
     i64.shl
     local.set $1
     local.get $2
     i64.const 1
     i64.sub
     local.set $2
     br $continue|0
    end
   end
   local.get $1
   i64.const 4503599627370496
   i64.ge_u
   if
    local.get $1
    i64.const 4503599627370496
    i64.eq
    br_if $folding-inner0
    local.get $1
    i64.const 4503599627370496
    i64.sub
    local.set $1
   end
   local.get $1
   local.get $1
   i64.const 11
   i64.shl
   i64.clz
   local.tee $3
   i64.shl
   local.set $1
   local.get $2
   local.get $3
   i64.sub
   local.tee $2
   i64.const 0
   i64.gt_s
   if (result i64)
    local.get $1
    i64.const 4503599627370496
    i64.sub
    local.get $2
    i64.const 52
    i64.shl
    i64.or
   else    
    local.get $1
    i64.const 0
    local.get $2
    i64.sub
    i64.const 1
    i64.add
    i64.shr_u
   end
   local.get $4
   i64.const 63
   i64.shl
   i64.or
   f64.reinterpret_i64
   return
  end
  f64.const 0
  local.get $0
  f64.mul
 )
 (func $start:binary (; 4 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i64)
  (local $2 f32)
  (local $3 f64)
  (local $4 i32)
  global.get $binary/i
  local.tee $0
  i32.const 1
  i32.rem_s
  drop
  local.get $0
  f64.convert_i32_s
  call $~lib/math/NativeMath.pow
  drop
  global.get $binary/i
  local.tee $0
  i32.const 1
  i32.lt_s
  global.set $binary/b
  local.get $0
  i32.const 1
  i32.gt_s
  global.set $binary/b
  local.get $0
  i32.const 1
  i32.le_s
  global.set $binary/b
  local.get $0
  i32.const 1
  i32.ge_s
  global.set $binary/b
  local.get $0
  i32.const 1
  i32.eq
  local.tee $4
  global.set $binary/b
  local.get $4
  global.set $binary/b
  local.get $0
  i32.const 1
  i32.add
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.sub
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.rem_s
  global.set $binary/i
  global.get $binary/i
  f64.convert_i32_s
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
  local.tee $1
  i64.const 1
  i64.rem_s
  drop
  local.get $1
  f64.convert_i64_s
  call $~lib/math/NativeMath.pow
  drop
  global.get $binary/I
  local.tee $1
  i64.const 1
  i64.lt_s
  global.set $binary/b
  local.get $1
  i64.const 1
  i64.gt_s
  global.set $binary/b
  local.get $1
  i64.const 1
  i64.le_s
  global.set $binary/b
  local.get $1
  i64.const 1
  i64.ge_s
  global.set $binary/b
  local.get $1
  i64.const 1
  i64.eq
  local.tee $0
  global.set $binary/b
  local.get $0
  global.set $binary/b
  local.get $1
  i64.const 1
  i64.add
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.sub
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.rem_s
  global.set $binary/I
  global.get $binary/I
  f64.convert_i64_s
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
  call $~lib/math/NativeMathf.mod
  drop
  global.get $binary/f
  call $~lib/math/NativeMathf.pow
  drop
  global.get $binary/f
  local.tee $2
  f32.const 1
  f32.lt
  global.set $binary/b
  local.get $2
  f32.const 1
  f32.gt
  global.set $binary/b
  local.get $2
  f32.const 1
  f32.le
  global.set $binary/b
  local.get $2
  f32.const 1
  f32.ge
  global.set $binary/b
  local.get $2
  f32.const 1
  f32.eq
  local.tee $0
  global.set $binary/b
  local.get $0
  global.set $binary/b
  local.get $2
  f32.const 1
  f32.add
  global.set $binary/f
  global.get $binary/f
  f32.const 1
  f32.sub
  global.set $binary/f
  global.get $binary/f
  call $~lib/math/NativeMathf.mod
  global.set $binary/f
  global.get $binary/f
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
  call $~lib/math/NativeMathf.mod
  global.set $binary/f
  global.get $binary/f
  call $~lib/math/NativeMathf.pow
  global.set $binary/f
  global.get $binary/F
  call $~lib/math/NativeMath.mod
  drop
  global.get $binary/F
  call $~lib/math/NativeMath.pow
  drop
  global.get $binary/F
  local.tee $3
  f64.const 1
  f64.lt
  global.set $binary/b
  local.get $3
  f64.const 1
  f64.gt
  global.set $binary/b
  local.get $3
  f64.const 1
  f64.le
  global.set $binary/b
  local.get $3
  f64.const 1
  f64.ge
  global.set $binary/b
  local.get $3
  f64.const 1
  f64.eq
  local.tee $0
  global.set $binary/b
  local.get $0
  global.set $binary/b
  local.get $3
  f64.const 1
  f64.add
  global.set $binary/F
  global.get $binary/F
  f64.const 1
  f64.sub
  global.set $binary/F
  global.get $binary/F
  call $~lib/math/NativeMath.mod
  global.set $binary/F
  global.get $binary/F
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
  call $~lib/math/NativeMath.mod
  global.set $binary/F
  global.get $binary/F
  call $~lib/math/NativeMath.pow
  global.set $binary/F
 )
 (func $start (; 5 ;) (type $FUNCSIG$v)
  call $start:binary
 )
 (func $null (; 6 ;) (type $FUNCSIG$v)
  nop
 )
)
