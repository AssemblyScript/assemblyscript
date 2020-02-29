(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_f64_=>_none (func (param i32 i32 f64)))
 (type $none_=>_f64 (func (result f64)))
 (import "env" "memory" (memory $0 0))
 (import "config" "BGR_DEAD" (global $assembly/config/BGR_DEAD i32))
 (import "config" "BGR_ALIVE" (global $assembly/config/BGR_ALIVE i32))
 (import "config" "BIT_ROT" (global $assembly/config/BIT_ROT i32))
 (import "Math" "random" (func $~lib/bindings/Math/random (result f64)))
 (table $0 1 funcref)
 (global $assembly/index/w (mut i32) (i32.const 0))
 (global $assembly/index/h (mut i32) (i32.const 0))
 (global $assembly/index/s (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "init" (func $assembly/index/init))
 (export "step" (func $assembly/index/step))
 (export "fill" (func $assembly/index/fill))
 (func $assembly/index/init (; 1 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  global.set $assembly/index/w
  local.get $1
  global.set $assembly/index/h
  local.get $0
  local.get $1
  i32.mul
  global.set $assembly/index/s
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   global.get $assembly/index/h
   i32.lt_s
   local.set $3
   local.get $3
   if
    i32.const 0
    local.set $4
    loop $for-loop|1
     local.get $4
     global.get $assembly/index/w
     i32.lt_s
     local.set $5
     local.get $5
     if
      local.get $4
      local.set $8
      local.get $2
      local.set $7
      call $~lib/bindings/Math/random
      f64.const 0.1
      f64.gt
      if (result i32)
       global.get $assembly/config/BGR_DEAD
       i32.const 16777215
       i32.and
      else
       global.get $assembly/config/BGR_ALIVE
       i32.const -16777216
       i32.or
      end
      local.set $6
      global.get $assembly/index/s
      local.get $7
      global.get $assembly/index/w
      i32.mul
      i32.add
      local.get $8
      i32.add
      i32.const 2
      i32.shl
      local.get $6
      i32.store
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|1
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $assembly/index/step (; 2 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
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
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  global.get $assembly/index/h
  i32.const 1
  i32.sub
  local.set $0
  global.get $assembly/index/w
  i32.const 1
  i32.sub
  local.set $1
  i32.const 0
  local.set $2
  loop $for-loop|0
   local.get $2
   global.get $assembly/index/h
   i32.lt_s
   local.set $3
   local.get $3
   if
    local.get $2
    i32.const 0
    i32.eq
    if (result i32)
     local.get $0
    else
     local.get $2
     i32.const 1
     i32.sub
    end
    local.set $4
    local.get $2
    local.get $0
    i32.eq
    if (result i32)
     i32.const 0
    else
     local.get $2
     i32.const 1
     i32.add
    end
    local.set $5
    i32.const 0
    local.set $6
    loop $for-loop|1
     local.get $6
     global.get $assembly/index/w
     i32.lt_s
     local.set $7
     local.get $7
     if
      local.get $6
      i32.const 0
      i32.eq
      if (result i32)
       local.get $1
      else
       local.get $6
       i32.const 1
       i32.sub
      end
      local.set $8
      local.get $6
      local.get $1
      i32.eq
      if (result i32)
       i32.const 0
      else
       local.get $6
       i32.const 1
       i32.add
      end
      local.set $9
      local.get $8
      local.set $11
      local.get $4
      local.set $10
      local.get $10
      global.get $assembly/index/w
      i32.mul
      local.get $11
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      local.get $6
      local.set $11
      local.get $4
      local.set $10
      local.get $10
      global.get $assembly/index/w
      i32.mul
      local.get $11
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      local.get $9
      local.set $11
      local.get $4
      local.set $10
      local.get $10
      global.get $assembly/index/w
      i32.mul
      local.get $11
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      local.get $8
      local.set $11
      local.get $2
      local.set $10
      local.get $10
      global.get $assembly/index/w
      i32.mul
      local.get $11
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      local.get $9
      local.set $11
      local.get $2
      local.set $10
      local.get $10
      global.get $assembly/index/w
      i32.mul
      local.get $11
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      local.get $8
      local.set $11
      local.get $5
      local.set $10
      local.get $10
      global.get $assembly/index/w
      i32.mul
      local.get $11
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      local.get $6
      local.set $11
      local.get $5
      local.set $10
      local.get $10
      global.get $assembly/index/w
      i32.mul
      local.get $11
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      local.get $9
      local.set $11
      local.get $5
      local.set $10
      local.get $10
      global.get $assembly/index/w
      i32.mul
      local.get $11
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      local.set $11
      local.get $6
      local.set $12
      local.get $2
      local.set $10
      local.get $10
      global.get $assembly/index/w
      i32.mul
      local.get $12
      i32.add
      i32.const 2
      i32.shl
      i32.load
      local.set $12
      local.get $12
      i32.const 1
      i32.and
      if
       local.get $11
       i32.const 14
       i32.and
       i32.const 2
       i32.eq
       if
        local.get $6
        local.set $14
        local.get $2
        local.set $13
        local.get $12
        local.set $10
        local.get $10
        i32.const 24
        i32.shr_u
        global.get $assembly/config/BIT_ROT
        i32.sub
        local.tee $15
        i32.const 0
        local.tee $16
        local.get $15
        local.get $16
        i32.gt_s
        select
        local.set $15
        local.get $14
        local.set $18
        local.get $13
        local.set $17
        local.get $15
        i32.const 24
        i32.shl
        local.get $10
        i32.const 16777215
        i32.and
        i32.or
        local.set $16
        global.get $assembly/index/s
        local.get $17
        global.get $assembly/index/w
        i32.mul
        i32.add
        local.get $18
        i32.add
        i32.const 2
        i32.shl
        local.get $16
        i32.store
       else
        local.get $6
        local.set $18
        local.get $2
        local.set $17
        global.get $assembly/config/BGR_DEAD
        i32.const -16777216
        i32.or
        local.set $16
        global.get $assembly/index/s
        local.get $17
        global.get $assembly/index/w
        i32.mul
        i32.add
        local.get $18
        i32.add
        i32.const 2
        i32.shl
        local.get $16
        i32.store
       end
      else
       local.get $11
       i32.const 3
       i32.eq
       if
        local.get $6
        local.set $14
        local.get $2
        local.set $13
        global.get $assembly/config/BGR_ALIVE
        i32.const -16777216
        i32.or
        local.set $10
        global.get $assembly/index/s
        local.get $13
        global.get $assembly/index/w
        i32.mul
        i32.add
        local.get $14
        i32.add
        i32.const 2
        i32.shl
        local.get $10
        i32.store
       else
        local.get $6
        local.set $17
        local.get $2
        local.set $16
        local.get $12
        local.set $15
        local.get $15
        i32.const 24
        i32.shr_u
        global.get $assembly/config/BIT_ROT
        i32.sub
        local.tee $14
        i32.const 0
        local.tee $13
        local.get $14
        local.get $13
        i32.gt_s
        select
        local.set $14
        local.get $17
        local.set $13
        local.get $16
        local.set $10
        local.get $14
        i32.const 24
        i32.shl
        local.get $15
        i32.const 16777215
        i32.and
        i32.or
        local.set $18
        global.get $assembly/index/s
        local.get $10
        global.get $assembly/index/w
        i32.mul
        i32.add
        local.get $13
        i32.add
        i32.const 2
        i32.shl
        local.get $18
        i32.store
       end
      end
      local.get $6
      i32.const 1
      i32.add
      local.set $6
      br $for-loop|1
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $assembly/index/fill (; 3 ;) (param $0 i32) (param $1 i32) (param $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   global.get $assembly/index/w
   i32.lt_s
   local.set $4
   local.get $4
   if
    call $~lib/bindings/Math/random
    local.get $2
    f64.lt
    if
     local.get $3
     local.set $7
     local.get $1
     local.set $6
     global.get $assembly/config/BGR_ALIVE
     i32.const -16777216
     i32.or
     local.set $5
     global.get $assembly/index/s
     local.get $6
     global.get $assembly/index/w
     i32.mul
     i32.add
     local.get $7
     i32.add
     i32.const 2
     i32.shl
     local.get $5
     i32.store
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $3
  loop $for-loop|1
   local.get $3
   global.get $assembly/index/h
   i32.lt_s
   local.set $4
   local.get $4
   if
    call $~lib/bindings/Math/random
    local.get $2
    f64.lt
    if
     local.get $0
     local.set $7
     local.get $3
     local.set $6
     global.get $assembly/config/BGR_ALIVE
     i32.const -16777216
     i32.or
     local.set $5
     global.get $assembly/index/s
     local.get $6
     global.get $assembly/index/w
     i32.mul
     i32.add
     local.get $7
     i32.add
     i32.const 2
     i32.shl
     local.get $5
     i32.store
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|1
   end
  end
 )
)
