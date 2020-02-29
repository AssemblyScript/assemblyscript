(module
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "memory" (memory $0 0))
 (import "Math" "log" (func $~lib/bindings/Math/log (param f64) (result f64)))
 (import "Math" "log2" (func $~lib/bindings/Math/log2 (param f64) (result f64)))
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
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  local.get $0
  f64.convert_i32_u
  local.get $2
  f64.convert_i32_u
  f64.const 0.5
  f64.mul
  f64.sub
  f64.const 10
  local.get $1
  i32.const 3
  i32.mul
  local.tee $6
  local.get $2
  i32.const 2
  i32.shl
  local.tee $2
  local.get $6
  local.get $2
  i32.lt_s
  select
  f64.convert_i32_s
  f64.div
  local.tee $9
  f64.mul
  local.set $10
  local.get $1
  f64.convert_i32_u
  f64.const 0.625
  f64.mul
  local.get $9
  f64.mul
  local.set $12
  local.get $0
  local.get $1
  i32.mul
  i32.const 1
  i32.shl
  local.set $2
  f64.const 1
  local.get $3
  f64.convert_i32_u
  f64.div
  local.set $13
  i32.const 8
  local.get $3
  i32.const 8
  local.get $3
  i32.lt_u
  select
  local.set $0
  i32.const 0
  local.set $6
  loop $for-loop|0
   local.get $6
   local.get $1
   i32.lt_u
   if
    local.get $6
    f64.convert_i32_u
    local.get $9
    f64.mul
    local.get $12
    f64.sub
    local.set $11
    f64.const 0
    local.tee $4
    local.set $5
    i32.const 0
    local.set $7
    loop $while-continue|1
     local.get $4
     local.get $4
     f64.mul
     local.tee $14
     local.get $5
     local.get $5
     f64.mul
     local.tee $8
     f64.add
     f64.const 4
     f64.le
     if
      block $while-break|1
       f64.const 2
       local.get $4
       f64.mul
       local.get $5
       f64.mul
       local.get $10
       f64.add
       local.set $5
       local.get $14
       local.get $8
       f64.sub
       local.get $11
       f64.add
       local.set $4
       local.get $7
       local.get $3
       i32.ge_u
       br_if $while-break|1
       local.get $7
       i32.const 1
       i32.add
       local.set $7
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $7
     local.get $0
     i32.lt_u
     if
      local.get $4
      local.get $4
      f64.mul
      local.get $5
      local.get $5
      f64.mul
      f64.sub
      local.get $11
      f64.add
      f64.const 2
      local.get $4
      f64.mul
      local.get $5
      f64.mul
      local.get $10
      f64.add
      local.set $5
      local.set $4
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $while-continue|2
     end
    end
    local.get $6
    i32.const 1
    i32.shl
    local.get $2
    i32.add
    local.get $4
    local.get $4
    f64.mul
    local.get $5
    local.get $5
    f64.mul
    f64.add
    local.tee $8
    f64.const 1
    f64.gt
    if (result i32)
     f64.const 2047
     local.get $7
     i32.const 1
     i32.add
     f64.convert_i32_u
     f64.const 0.5
     local.get $8
     call $~lib/bindings/Math/log
     f64.mul
     call $~lib/bindings/Math/log2
     f64.sub
     local.get $13
     f64.mul
     f64.const 0
     f64.max
     f64.const 1
     f64.min
     f64.mul
     i32.trunc_f64_u
    else
     i32.const 2047
    end
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
