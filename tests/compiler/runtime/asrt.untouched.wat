(module
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00\1e\00\00\00\00\00\00\00\00\00\00\00r\00u\00n\00t\00i\00m\00e\00/\00a\00s\00r\00t\00.\00t\00s\00")
 (data (i32.const 56) "\10\00\00\00\1c\00\00\00\00\00\00\00\00\00\00\00~\00l\00i\00b\00/\00m\00e\00m\00o\00r\00y\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $runtime/asrt/ACYCLIC_FLAG i32 (i32.const 0))
 (global $runtime/asrt/ROOTS (mut i32) (i32.const 0))
 (global $runtime/asrt/CUR (mut i32) (i32.const 0))
 (global $runtime/asrt/END (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "__rt_visit" (func $runtime/asrt/__rt_visit))
 (export "retain" (func $runtime/asrt/increment))
 (export "release" (func $runtime/asrt/decrement))
 (export "collect" (func $runtime/asrt/collectCycles))
 (func $runtime/asrt/__rt_visit_members (; 1 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  unreachable
 )
 (func $runtime/asrt/free (; 2 ;) (type $FUNCSIG$vi) (param $0 i32)
  unreachable
 )
 (func $runtime/asrt/__rt_flags (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  unreachable
 )
 (func $~lib/memory/memory.allocate (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  i32.const 72
  i32.const 61
  i32.const 9
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/memory/memory.copy (; 5 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|0
      loop $continue|0
       local.get $0
       i32.const 7
       i32.and
       if
        block
         local.get $2
         i32.eqz
         if
          br $~lib/util/memory/memmove|inlined.0
         end
         local.get $2
         i32.const 1
         i32.sub
         local.set $2
         block (result i32)
          local.get $0
          local.tee $5
          i32.const 1
          i32.add
          local.set $0
          local.get $5
         end
         block (result i32)
          local.get $1
          local.tee $5
          i32.const 1
          i32.add
          local.set $1
          local.get $5
         end
         i32.load8_u
         i32.store8
        end
        br $continue|0
       end
      end
     end
     block $break|1
      loop $continue|1
       local.get $2
       i32.const 8
       i32.ge_u
       if
        block
         local.get $0
         local.get $1
         i64.load
         i64.store
         local.get $2
         i32.const 8
         i32.sub
         local.set $2
         local.get $0
         i32.const 8
         i32.add
         local.set $0
         local.get $1
         i32.const 8
         i32.add
         local.set $1
        end
        br $continue|1
       end
      end
     end
    end
    block $break|2
     loop $continue|2
      local.get $2
      if
       block
        block (result i32)
         local.get $0
         local.tee $5
         i32.const 1
         i32.add
         local.set $0
         local.get $5
        end
        block (result i32)
         local.get $1
         local.tee $5
         i32.const 1
         i32.add
         local.set $1
         local.get $5
        end
        i32.load8_u
        i32.store8
        local.get $2
        i32.const 1
        i32.sub
        local.set $2
       end
       br $continue|2
      end
     end
    end
   else    
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|3
      loop $continue|3
       local.get $0
       local.get $2
       i32.add
       i32.const 7
       i32.and
       if
        block
         local.get $2
         i32.eqz
         if
          br $~lib/util/memory/memmove|inlined.0
         end
         local.get $0
         local.get $2
         i32.const 1
         i32.sub
         local.tee $2
         i32.add
         local.get $1
         local.get $2
         i32.add
         i32.load8_u
         i32.store8
        end
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       local.get $2
       i32.const 8
       i32.ge_u
       if
        block
         local.get $2
         i32.const 8
         i32.sub
         local.set $2
         local.get $0
         local.get $2
         i32.add
         local.get $1
         local.get $2
         i32.add
         i64.load
         i64.store
        end
        br $continue|4
       end
      end
     end
    end
    block $break|5
     loop $continue|5
      local.get $2
      if
       local.get $0
       local.get $2
       i32.const 1
       i32.sub
       local.tee $2
       i32.add
       local.get $1
       local.get $2
       i32.add
       i32.load8_u
       i32.store8
       br $continue|5
      end
     end
    end
   end
  end
 )
 (func $runtime/asrt/growRoots (; 6 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $runtime/asrt/ROOTS
  local.set $0
  global.get $runtime/asrt/CUR
  local.get $0
  i32.sub
  local.set $1
  local.get $1
  i32.const 2
  i32.mul
  local.tee $2
  i32.const 64
  i32.const 2
  i32.shl
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  local.set $4
  local.get $4
  call $~lib/memory/memory.allocate
  local.set $5
  local.get $5
  local.get $0
  local.get $1
  call $~lib/memory/memory.copy
  local.get $5
  global.set $runtime/asrt/ROOTS
  local.get $5
  local.get $1
  i32.add
  global.set $runtime/asrt/CUR
  local.get $5
  local.get $4
  i32.add
  global.set $runtime/asrt/END
 )
 (func $runtime/asrt/appendRoot (; 7 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  global.get $runtime/asrt/CUR
  local.set $1
  local.get $1
  global.get $runtime/asrt/END
  i32.ge_u
  if
   call $runtime/asrt/growRoots
   global.get $runtime/asrt/CUR
   local.set $1
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 1
  i32.add
  global.set $runtime/asrt/CUR
 )
 (func $runtime/asrt/decrement (; 8 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.and
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 1
   call $runtime/asrt/__rt_visit_members
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
   if
    local.get $0
    call $runtime/asrt/free
   else    
    local.get $0
    i32.const -2147483648
    i32.const 0
    i32.or
    i32.const 0
    i32.or
    i32.store offset=4
   end
  else   
   local.get $2
   i32.const 0
   i32.gt_u
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 134
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   call $runtime/asrt/__rt_flags
   global.get $runtime/asrt/ACYCLIC_FLAG
   i32.and
   i32.eqz
   if
    local.get $0
    i32.const -2147483648
    i32.const 805306368
    i32.or
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
    local.get $1
    i32.const -2147483648
    i32.and
    i32.eqz
    if
     local.get $0
     call $runtime/asrt/appendRoot
    end
   else    
    local.get $0
    local.get $1
    i32.const 268435455
    i32.const -1
    i32.xor
    i32.and
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
   end
  end
 )
 (func $runtime/asrt/markGray (; 9 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.ne
  if
   local.get $0
   local.get $1
   i32.const 1879048192
   i32.const -1
   i32.xor
   i32.and
   i32.const 268435456
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 2
   call $runtime/asrt/__rt_visit_members
  end
 )
 (func $runtime/asrt/scanBlack (; 10 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1879048192
  i32.const -1
  i32.xor
  i32.and
  i32.const 0
  i32.or
  i32.store offset=4
  local.get $0
  i32.const 4
  call $runtime/asrt/__rt_visit_members
 )
 (func $runtime/asrt/scan (; 11 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.eq
  if
   local.get $1
   i32.const 268435455
   i32.and
   i32.const 0
   i32.gt_u
   if
    local.get $0
    call $runtime/asrt/scanBlack
   else    
    local.get $0
    local.get $1
    i32.const 1879048192
    i32.const -1
    i32.xor
    i32.and
    i32.const 536870912
    i32.or
    i32.store offset=4
    local.get $0
    i32.const 3
    call $runtime/asrt/__rt_visit_members
   end
  end
 )
 (func $runtime/asrt/collectWhite (; 12 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 536870912
  i32.eq
  if (result i32)
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  if
   local.get $0
   local.get $1
   i32.const 1879048192
   i32.const -1
   i32.xor
   i32.and
   i32.const 0
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 5
   call $runtime/asrt/__rt_visit_members
  end
 )
 (func $runtime/asrt/__rt_visit (; 13 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        block $case0|0
         local.get $1
         local.set $2
         local.get $2
         i32.const 1
         i32.eq
         br_if $case0|0
         local.get $2
         i32.const 2
         i32.eq
         br_if $case1|0
         local.get $2
         i32.const 3
         i32.eq
         br_if $case2|0
         local.get $2
         i32.const 4
         i32.eq
         br_if $case3|0
         local.get $2
         i32.const 5
         i32.eq
         br_if $case4|0
         br $case5|0
        end
        block
         local.get $0
         call $runtime/asrt/decrement
         br $break|0
         unreachable
        end
        unreachable
       end
       block
        local.get $0
        i32.load offset=4
        i32.const 268435455
        i32.and
        i32.const 0
        i32.gt_u
        i32.eqz
        if
         i32.const 0
         i32.const 24
         i32.const 91
         i32.const 17
         call $~lib/builtins/abort
         unreachable
        end
        local.get $0
        local.get $0
        i32.load offset=4
        i32.const 1
        i32.sub
        i32.store offset=4
        local.get $0
        call $runtime/asrt/markGray
        br $break|0
        unreachable
       end
       unreachable
      end
      block
       local.get $0
       call $runtime/asrt/scan
       br $break|0
       unreachable
      end
      unreachable
     end
     block
      local.get $0
      i32.load offset=4
      local.set $2
      local.get $2
      i32.const 268435455
      i32.const -1
      i32.xor
      i32.and
      local.get $2
      i32.const 1
      i32.add
      i32.const 268435455
      i32.const -1
      i32.xor
      i32.and
      i32.eq
      i32.eqz
      if
       i32.const 0
       i32.const 24
       i32.const 102
       i32.const 6
       call $~lib/builtins/abort
       unreachable
      end
      local.get $0
      local.get $2
      i32.const 1
      i32.add
      i32.store offset=4
      local.get $2
      i32.const 1879048192
      i32.and
      i32.const 0
      i32.ne
      if
       local.get $0
       call $runtime/asrt/scanBlack
      end
      br $break|0
      unreachable
     end
     unreachable
    end
    block
     local.get $0
     call $runtime/asrt/collectWhite
     br $break|0
     unreachable
    end
    unreachable
   end
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 113
    i32.const 24
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $runtime/asrt/increment (; 14 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 119
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.store offset=4
 )
 (func $runtime/asrt/collectCycles (; 15 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $runtime/asrt/ROOTS
  local.set $0
  local.get $0
  local.set $1
  block $break|0
   block
    local.get $1
    local.set $2
    global.get $runtime/asrt/CUR
    local.set $3
   end
   loop $repeat|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     local.get $2
     i32.load
     local.set $4
     local.get $4
     i32.load offset=4
     local.set $5
     local.get $5
     i32.const 1879048192
     i32.and
     i32.const 805306368
     i32.eq
     if (result i32)
      local.get $5
      i32.const 268435455
      i32.and
      i32.const 0
      i32.gt_u
     else      
      i32.const 0
     end
     if
      local.get $4
      call $runtime/asrt/markGray
      local.get $1
      local.get $4
      i32.store
      local.get $1
      i32.const 4
      i32.add
      local.set $1
     else      
      local.get $5
      i32.const 1879048192
      i32.and
      i32.const 0
      i32.eq
      if (result i32)
       local.get $5
       i32.const 268435455
       i32.and
       i32.eqz
      else       
       i32.const 0
      end
      if
       local.get $4
       call $runtime/asrt/free
      else       
       local.get $4
       local.get $5
       i32.const -2147483648
       i32.const -1
       i32.xor
       i32.and
       i32.store offset=4
      end
     end
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $1
  global.set $runtime/asrt/CUR
  block $break|1
   local.get $0
   local.set $3
   loop $repeat|1
    local.get $3
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|1
    local.get $3
    i32.load
    call $runtime/asrt/scan
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $repeat|1
    unreachable
   end
   unreachable
  end
  block $break|2
   local.get $0
   local.set $3
   loop $repeat|2
    local.get $3
    local.get $1
    i32.lt_u
    i32.eqz
    br_if $break|2
    block
     local.get $3
     i32.load
     local.set $2
     local.get $2
     local.get $2
     i32.load offset=4
     i32.const -2147483648
     i32.const -1
     i32.xor
     i32.and
     i32.store offset=4
     local.get $2
     call $runtime/asrt/collectWhite
    end
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $repeat|2
    unreachable
   end
   unreachable
  end
  local.get $0
  global.set $runtime/asrt/CUR
 )
 (func $null (; 16 ;) (type $FUNCSIG$v)
 )
)
