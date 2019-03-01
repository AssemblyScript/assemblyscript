(module
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\t\00\00\00m\00e\00m\00c\00p\00y\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $memcpy/base i32 (i32.const 8))
 (global $memcpy/dest (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 32))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "memcpy" (func $memcpy/memcpy))
 (start $start)
 (func $memcpy/memcpy (; 1 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $1
     i32.const 4
     i32.rem_u
    else     
     local.get $2
    end
    if
     block
      block (result i32)
       local.get $0
       local.tee $6
       i32.const 1
       i32.add
       local.set $0
       local.get $6
      end
      block (result i32)
       local.get $1
       local.tee $6
       i32.const 1
       i32.add
       local.set $1
       local.get $6
      end
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
     end
     br $continue|0
    end
   end
  end
  local.get $0
  i32.const 4
  i32.rem_u
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     local.get $2
     i32.const 16
     i32.ge_u
     if
      block
       local.get $0
       local.get $1
       i32.load
       i32.store
       local.get $0
       i32.const 4
       i32.add
       local.get $1
       i32.const 4
       i32.add
       i32.load
       i32.store
       local.get $0
       i32.const 8
       i32.add
       local.get $1
       i32.const 8
       i32.add
       i32.load
       i32.store
       local.get $0
       i32.const 12
       i32.add
       local.get $1
       i32.const 12
       i32.add
       i32.load
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
      end
      br $continue|1
     end
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    block (result i32)
     local.get $0
     local.tee $6
     i32.const 1
     i32.add
     local.set $0
     local.get $6
    end
    block (result i32)
     local.get $1
     local.tee $6
     i32.const 1
     i32.add
     local.set $1
     local.get $6
    end
    i32.load8_u
    i32.store8
   end
   local.get $3
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 4
       i32.rem_u
       local.set $6
       local.get $6
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $6
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $6
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $4
      block (result i32)
       local.get $0
       local.tee $6
       i32.const 1
       i32.add
       local.set $0
       local.get $6
      end
      block (result i32)
       local.get $1
       local.tee $6
       i32.const 1
       i32.add
       local.set $1
       local.get $6
      end
      i32.load8_u
      i32.store8
      block (result i32)
       local.get $0
       local.tee $6
       i32.const 1
       i32.add
       local.set $0
       local.get $6
      end
      block (result i32)
       local.get $1
       local.tee $6
       i32.const 1
       i32.add
       local.set $1
       local.get $6
      end
      i32.load8_u
      i32.store8
      block (result i32)
       local.get $0
       local.tee $6
       i32.const 1
       i32.add
       local.set $0
       local.get $6
      end
      block (result i32)
       local.get $1
       local.tee $6
       i32.const 1
       i32.add
       local.set $1
       local.get $6
      end
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      block $break|3
       loop $continue|3
        local.get $2
        i32.const 17
        i32.ge_u
        if
         block
          local.get $1
          i32.const 1
          i32.add
          i32.load
          local.set $5
          local.get $0
          local.get $4
          i32.const 24
          i32.shr_u
          local.get $5
          i32.const 8
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 5
          i32.add
          i32.load
          local.set $4
          local.get $0
          i32.const 4
          i32.add
          local.get $5
          i32.const 24
          i32.shr_u
          local.get $4
          i32.const 8
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 9
          i32.add
          i32.load
          local.set $5
          local.get $0
          i32.const 8
          i32.add
          local.get $4
          i32.const 24
          i32.shr_u
          local.get $5
          i32.const 8
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 13
          i32.add
          i32.load
          local.set $4
          local.get $0
          i32.const 12
          i32.add
          local.get $5
          i32.const 24
          i32.shr_u
          local.get $4
          i32.const 8
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 16
          i32.add
          local.set $1
          local.get $0
          i32.const 16
          i32.add
          local.set $0
          local.get $2
          i32.const 16
          i32.sub
          local.set $2
         end
         br $continue|3
        end
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $4
     block (result i32)
      local.get $0
      local.tee $6
      i32.const 1
      i32.add
      local.set $0
      local.get $6
     end
     block (result i32)
      local.get $1
      local.tee $6
      i32.const 1
      i32.add
      local.set $1
      local.get $6
     end
     i32.load8_u
     i32.store8
     block (result i32)
      local.get $0
      local.tee $6
      i32.const 1
      i32.add
      local.set $0
      local.get $6
     end
     block (result i32)
      local.get $1
      local.tee $6
      i32.const 1
      i32.add
      local.set $1
      local.get $6
     end
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     block $break|4
      loop $continue|4
       local.get $2
       i32.const 18
       i32.ge_u
       if
        block
         local.get $1
         i32.const 2
         i32.add
         i32.load
         local.set $5
         local.get $0
         local.get $4
         i32.const 16
         i32.shr_u
         local.get $5
         i32.const 16
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 6
         i32.add
         i32.load
         local.set $4
         local.get $0
         i32.const 4
         i32.add
         local.get $5
         i32.const 16
         i32.shr_u
         local.get $4
         i32.const 16
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 10
         i32.add
         i32.load
         local.set $5
         local.get $0
         i32.const 8
         i32.add
         local.get $4
         i32.const 16
         i32.shr_u
         local.get $5
         i32.const 16
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 14
         i32.add
         i32.load
         local.set $4
         local.get $0
         i32.const 12
         i32.add
         local.get $5
         i32.const 16
         i32.shr_u
         local.get $4
         i32.const 16
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 16
         i32.add
         local.set $1
         local.get $0
         i32.const 16
         i32.add
         local.set $0
         local.get $2
         i32.const 16
         i32.sub
         local.set $2
        end
        br $continue|4
       end
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $4
    block (result i32)
     local.get $0
     local.tee $6
     i32.const 1
     i32.add
     local.set $0
     local.get $6
    end
    block (result i32)
     local.get $1
     local.tee $6
     i32.const 1
     i32.add
     local.set $1
     local.get $6
    end
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    block $break|5
     loop $continue|5
      local.get $2
      i32.const 19
      i32.ge_u
      if
       block
        local.get $1
        i32.const 3
        i32.add
        i32.load
        local.set $5
        local.get $0
        local.get $4
        i32.const 8
        i32.shr_u
        local.get $5
        i32.const 24
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 7
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 4
        i32.add
        local.get $5
        i32.const 8
        i32.shr_u
        local.get $4
        i32.const 24
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 11
        i32.add
        i32.load
        local.set $5
        local.get $0
        i32.const 8
        i32.add
        local.get $4
        i32.const 8
        i32.shr_u
        local.get $5
        i32.const 24
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 15
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 12
        i32.add
        local.get $5
        i32.const 8
        i32.shr_u
        local.get $4
        i32.const 24
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
       end
       br $continue|5
      end
     end
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
   end
   block (result i32)
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
   end
   i32.load8_u
   i32.store8
  end
  local.get $3
 )
 (func $start:memcpy (; 2 ;) (type $FUNCSIG$v)
  global.get $memcpy/base
  i64.const 1229782938247303441
  i64.store
  global.get $memcpy/base
  i32.const 8
  i32.add
  i64.const 2459565876494606882
  i64.store
  global.get $memcpy/base
  i32.const 16
  i32.add
  i64.const 3689348814741910323
  i64.store
  global.get $memcpy/base
  i32.const 24
  i32.add
  i64.const 4919131752989213764
  i64.store
  global.get $memcpy/base
  i32.const 1
  i32.add
  global.get $memcpy/base
  i32.const 16
  i32.add
  i32.const 4
  call $memcpy/memcpy
  global.set $memcpy/dest
  global.get $memcpy/dest
  global.get $memcpy/base
  i32.const 1
  i32.add
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 151
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $memcpy/base
  i64.load
  i64.const 1229783084848853777
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 152
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $memcpy/base
  global.get $memcpy/base
  i32.const 32
  call $memcpy/memcpy
  global.set $memcpy/dest
  global.get $memcpy/dest
  global.get $memcpy/base
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 155
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $memcpy/base
  i64.load
  i64.const 1229783084848853777
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 156
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 8
  i32.add
  i64.load
  i64.const 2459565876494606882
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 157
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 16
  i32.add
  i64.load
  i64.const 3689348814741910323
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 158
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 24
  i32.add
  i64.load
  i64.const 4919131752989213764
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 159
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 5
  i32.add
  global.get $memcpy/base
  i32.const 28
  i32.add
  i32.const 3
  call $memcpy/memcpy
  global.set $memcpy/dest
  global.get $memcpy/base
  i64.load
  i64.const 4919131679688438545
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 162
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 8
  i32.add
  global.get $memcpy/base
  i32.const 16
  i32.add
  i32.const 15
  call $memcpy/memcpy
  global.set $memcpy/dest
  global.get $memcpy/base
  i64.load
  i64.const 4919131679688438545
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 165
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 8
  i32.add
  i64.load
  i64.const 3689348814741910323
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 166
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 16
  i32.add
  i64.load
  i64.const 3694152654344438852
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 167
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 24
  i32.add
  i64.load
  i64.const 4919131752989213764
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 168
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 3 ;) (type $FUNCSIG$v)
  call $start:memcpy
 )
 (func $null (; 4 ;) (type $FUNCSIG$v)
 )
)
