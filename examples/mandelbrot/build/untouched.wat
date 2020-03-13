(module
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "memory" (memory $0 0))
 (import "Math" "log" (func $~lib/bindings/Math/log (param f64) (result f64)))
 (import "Math" "log2" (func $~lib/bindings/Math/log2 (param f64) (result f64)))
 (table $0 1 funcref)
 (global $assembly/index/NUM_COLORS i32 (i32.const 2048))
 (export "memory" (memory $0))
 (export "computeLine" (func $assembly/index/computeLine))
 (func $assembly/index/computeLine (; 2 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  (local $19 i32)
  (local $20 i32)
  (local $21 f64)
  (local $22 f64)
  (local $23 f64)
  (local $24 f64)
  (local $25 f64)
  (local $26 f64)
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
  i32.const 0
  local.set $6
  loop $for-loop|0
   local.get $6
   local.get $1
   i32.lt_u
   local.set $7
   local.get $7
   if
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
    local.set $19
    block $while-break|1
     loop $while-continue|1
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
      local.set $20
      local.get $20
      if
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
       local.get $19
       local.get $3
       i32.ge_u
       if
        br $while-break|1
       end
       local.get $19
       i32.const 1
       i32.add
       local.set $19
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $19
     local.get $13
     i32.lt_u
     local.set $20
     local.get $20
     if
      local.get $15
      local.get $15
      f64.mul
      local.get $16
      local.get $16
      f64.mul
      f64.sub
      local.get $14
      f64.add
      local.set $21
      f64.const 2
      local.get $15
      f64.mul
      local.get $16
      f64.mul
      local.get $9
      f64.add
      local.set $16
      local.get $21
      local.set $15
      local.get $19
      i32.const 1
      i32.add
      local.set $19
      br $while-continue|2
     end
    end
    global.get $assembly/index/NUM_COLORS
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
    local.set $22
    local.get $22
    f64.const 1
    f64.gt
    if
     f64.const 0.5
     local.get $22
     call $~lib/bindings/Math/log
     f64.mul
     call $~lib/bindings/Math/log2
     local.set $23
     global.get $assembly/index/NUM_COLORS
     i32.const 1
     i32.sub
     f64.convert_i32_s
     local.get $19
     i32.const 1
     i32.add
     f64.convert_i32_u
     local.get $23
     f64.sub
     local.get $12
     f64.mul
     local.set $26
     f64.const 0
     local.set $25
     f64.const 1
     local.set $24
     local.get $26
     local.get $25
     f64.max
     local.get $24
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
    br $for-loop|0
   end
  end
 )
)
