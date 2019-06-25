(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$dd (func (param f64) (result f64)))
 (type $FUNCSIG$dddd (func (param f64 f64 f64) (result f64)))
 (type $FUNCSIG$v (func))
 (import "env" "memory" (memory $0 0))
 (import "Math" "log" (func $~lib/bindings/Math/log (param f64) (result f64)))
 (import "Math" "log2" (func $~lib/bindings/Math/log2 (param f64) (result f64)))
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $assembly/index/NUM_COLORS i32 (i32.const 2048))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "computeLine" (func $assembly/index/computeLine))
 (func $assembly/index/clamp<f64> (; 2 ;) (type $FUNCSIG$dddd) (param $0 f64) (param $1 f64) (param $2 f64) (result f64)
  local.get $0
  local.get $1
  f64.max
  local.get $2
  f64.min
 )
 (func $assembly/index/computeLine (; 3 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 i32)
  (local $10 f64)
  (local $11 f64)
  (local $12 i32)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 i32)
  (local $19 f64)
  (local $20 i32)
  (local $21 f64)
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
  f64.const 3
  local.get $1
  f64.convert_i32_u
  f64.mul
  f64.const 4
  local.get $2
  f64.convert_i32_u
  f64.mul
  f64.min
  f64.div
  local.set $6
  local.get $0
  f64.convert_i32_u
  local.get $5
  f64.sub
  local.get $6
  f64.mul
  local.set $7
  local.get $4
  local.get $6
  f64.mul
  local.set $8
  local.get $0
  local.get $1
  i32.mul
  i32.const 1
  i32.shl
  local.set $9
  f64.const 1
  local.get $3
  f64.convert_i32_u
  f64.div
  local.set $10
  f64.const 8
  local.get $3
  f64.convert_i32_u
  f64.min
  local.set $11
  block $break|0
   i32.const 0
   local.set $12
   loop $repeat|0
    local.get $12
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     local.get $12
     f64.convert_i32_u
     local.get $6
     f64.mul
     local.get $8
     f64.sub
     local.set $13
     f64.const 0
     local.set $14
     f64.const 0
     local.set $15
     i32.const 0
     local.set $18
     block $break|1
      loop $continue|1
       local.get $14
       local.get $14
       f64.mul
       local.tee $16
       local.get $15
       local.get $15
       f64.mul
       local.tee $17
       f64.add
       f64.const 4
       f64.le
       if
        block
         f64.const 2
         local.get $14
         f64.mul
         local.get $15
         f64.mul
         local.get $7
         f64.add
         local.set $15
         local.get $16
         local.get $17
         f64.sub
         local.get $13
         f64.add
         local.set $14
         local.get $18
         local.get $3
         i32.ge_u
         if
          br $break|1
         end
         local.get $18
         i32.const 1
         i32.add
         local.set $18
        end
        br $continue|1
       end
      end
     end
     block $break|2
      loop $continue|2
       local.get $18
       f64.convert_i32_u
       local.get $11
       f64.lt
       if
        block
         local.get $14
         local.get $14
         f64.mul
         local.get $15
         local.get $15
         f64.mul
         f64.sub
         local.get $13
         f64.add
         local.set $19
         f64.const 2
         local.get $14
         f64.mul
         local.get $15
         f64.mul
         local.get $7
         f64.add
         local.set $15
         local.get $19
         local.set $14
         local.get $18
         i32.const 1
         i32.add
         local.set $18
        end
        br $continue|2
       end
      end
     end
     global.get $assembly/index/NUM_COLORS
     i32.const 1
     i32.sub
     local.set $20
     local.get $14
     local.get $14
     f64.mul
     local.get $15
     local.get $15
     f64.mul
     f64.add
     local.set $19
     local.get $19
     f64.const 1
     f64.gt
     if
      f64.const 0.5
      local.get $19
      call $~lib/bindings/Math/log
      f64.mul
      call $~lib/bindings/Math/log2
      local.set $21
      global.get $assembly/index/NUM_COLORS
      i32.const 1
      i32.sub
      f64.convert_i32_s
      local.get $18
      i32.const 1
      i32.add
      f64.convert_i32_u
      local.get $21
      f64.sub
      local.get $10
      f64.mul
      f64.const 0
      f64.const 1
      call $assembly/index/clamp<f64>
      f64.mul
      i32.trunc_f64_u
      local.set $20
     end
     local.get $9
     local.get $12
     i32.const 1
     i32.shl
     i32.add
     local.get $20
     i32.store16
    end
    local.get $12
    i32.const 1
    i32.add
    local.set $12
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $null (; 4 ;) (type $FUNCSIG$v)
 )
)
