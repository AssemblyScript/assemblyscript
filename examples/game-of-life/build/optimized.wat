(module
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$d (func (result f64)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$viid (func (param i32 i32 f64)))
 (import "env" "memory" (memory $0 0))
 (import "config" "BGR_DEAD" (global $assembly/config/BGR_DEAD i32))
 (import "config" "BGR_ALIVE" (global $assembly/config/BGR_ALIVE i32))
 (import "config" "BIT_ROT" (global $assembly/config/BIT_ROT i32))
 (import "Math" "random" (func $~lib/bindings/Math/random (result f64)))
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $assembly/index/w (mut i32) (i32.const 0))
 (global $assembly/index/h (mut i32) (i32.const 0))
 (global $assembly/index/s (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "init" (func $assembly/index/init))
 (export "step" (func $assembly/index/step))
 (export "fill" (func $assembly/index/fill))
 (func $assembly/index/init (; 1 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  global.set $assembly/index/w
  local.get $1
  global.set $assembly/index/h
  local.get $0
  local.get $1
  i32.mul
  global.set $assembly/index/s
  i32.const 0
  local.set $0
  loop $repeat|0
   block $break|0
    local.get $0
    global.get $assembly/index/h
    i32.ge_s
    br_if $break|0
    i32.const 0
    local.set $1
    loop $repeat|1
     block $break|1
      local.get $1
      global.get $assembly/index/w
      i32.ge_s
      br_if $break|1
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
      local.set $2
      global.get $assembly/index/s
      global.get $assembly/index/w
      local.get $0
      i32.mul
      i32.add
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      local.get $2
      i32.store
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $repeat|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
 )
 (func $assembly/index/step (; 2 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $assembly/index/h
  i32.const 1
  i32.sub
  local.set $6
  global.get $assembly/index/w
  i32.const 1
  i32.sub
  local.set $7
  loop $repeat|0
   block $break|0
    local.get $0
    global.get $assembly/index/h
    i32.ge_s
    br_if $break|0
    local.get $0
    i32.const 1
    i32.sub
    local.get $6
    local.get $0
    select
    local.set $4
    i32.const 0
    local.get $0
    i32.const 1
    i32.add
    local.get $0
    local.get $6
    i32.eq
    select
    local.set $5
    i32.const 0
    local.set $1
    loop $repeat|1
     block $break|1
      local.get $1
      global.get $assembly/index/w
      i32.ge_s
      br_if $break|1
      local.get $1
      i32.const 1
      i32.sub
      local.get $7
      local.get $1
      select
      local.tee $2
      global.get $assembly/index/w
      local.get $4
      i32.mul
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      global.get $assembly/index/w
      local.get $4
      i32.mul
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      i32.const 0
      local.get $1
      i32.const 1
      i32.add
      local.get $1
      local.get $7
      i32.eq
      select
      local.tee $3
      global.get $assembly/index/w
      local.get $4
      i32.mul
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      global.get $assembly/index/w
      local.get $0
      i32.mul
      local.get $2
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      global.get $assembly/index/w
      local.get $0
      i32.mul
      local.get $3
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      global.get $assembly/index/w
      local.get $5
      i32.mul
      local.get $2
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      global.get $assembly/index/w
      local.get $5
      i32.mul
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      global.get $assembly/index/w
      local.get $5
      i32.mul
      local.get $3
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      local.set $2
      global.get $assembly/index/w
      local.get $0
      i32.mul
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.load
      local.tee $3
      i32.const 1
      i32.and
      if
       local.get $2
       i32.const 14
       i32.and
       i32.const 2
       i32.eq
       if
        global.get $assembly/index/s
        global.get $assembly/index/w
        local.get $0
        i32.mul
        i32.add
        local.get $1
        i32.add
        i32.const 2
        i32.shl
        local.get $3
        i32.const 16777215
        i32.and
        local.get $3
        i32.const 24
        i32.shr_u
        global.get $assembly/config/BIT_ROT
        i32.sub
        local.tee $2
        i32.const 0
        local.get $2
        i32.const 0
        i32.gt_s
        select
        i32.const 24
        i32.shl
        i32.or
        i32.store
       else        
        global.get $assembly/index/s
        global.get $assembly/index/w
        local.get $0
        i32.mul
        i32.add
        local.get $1
        i32.add
        i32.const 2
        i32.shl
        global.get $assembly/config/BGR_DEAD
        i32.const -16777216
        i32.or
        i32.store
       end
      else       
       local.get $2
       i32.const 3
       i32.eq
       if
        global.get $assembly/index/s
        global.get $assembly/index/w
        local.get $0
        i32.mul
        i32.add
        local.get $1
        i32.add
        i32.const 2
        i32.shl
        global.get $assembly/config/BGR_ALIVE
        i32.const -16777216
        i32.or
        i32.store
       else        
        global.get $assembly/index/s
        global.get $assembly/index/w
        local.get $0
        i32.mul
        i32.add
        local.get $1
        i32.add
        i32.const 2
        i32.shl
        local.get $3
        i32.const 16777215
        i32.and
        local.get $3
        i32.const 24
        i32.shr_u
        global.get $assembly/config/BIT_ROT
        i32.sub
        local.tee $2
        i32.const 0
        local.get $2
        i32.const 0
        i32.gt_s
        select
        i32.const 24
        i32.shl
        i32.or
        i32.store
       end
      end
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $repeat|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
 )
 (func $assembly/index/fill (; 3 ;) (type $FUNCSIG$viid) (param $0 i32) (param $1 i32) (param $2 f64)
  (local $3 i32)
  loop $repeat|0
   block $break|0
    local.get $3
    global.get $assembly/index/w
    i32.ge_s
    br_if $break|0
    call $~lib/bindings/Math/random
    local.get $2
    f64.lt
    if
     global.get $assembly/index/s
     global.get $assembly/index/w
     local.get $1
     i32.mul
     i32.add
     local.get $3
     i32.add
     i32.const 2
     i32.shl
     global.get $assembly/config/BGR_ALIVE
     i32.const -16777216
     i32.or
     i32.store
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|0
   end
  end
  i32.const 0
  local.set $3
  loop $repeat|1
   block $break|1
    local.get $3
    global.get $assembly/index/h
    i32.ge_s
    br_if $break|1
    call $~lib/bindings/Math/random
    local.get $2
    f64.lt
    if
     global.get $assembly/index/s
     global.get $assembly/index/w
     local.get $3
     i32.mul
     i32.add
     local.get $0
     i32.add
     i32.const 2
     i32.shl
     global.get $assembly/config/BGR_ALIVE
     i32.const -16777216
     i32.or
     i32.store
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|1
   end
  end
 )
 (func $null (; 4 ;) (type $FUNCSIG$v)
  nop
 )
)
