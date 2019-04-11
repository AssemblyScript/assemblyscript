(module
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00\1e")
 (data (i32.const 24) "r\00u\00n\00t\00i\00m\00e\00/\00a\00s\00r\00t\00.\00t\00s")
 (data (i32.const 56) "\10\00\00\00\1c")
 (data (i32.const 72) "~\00l\00i\00b\00/\00m\00e\00m\00o\00r\00y\00.\00t\00s")
 (global $runtime/asrt/ROOTS (mut i32) (i32.const 0))
 (global $runtime/asrt/CUR (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "__rt_visit" (func $runtime/asrt/__rt_visit))
 (export "retain" (func $runtime/asrt/increment))
 (export "release" (func $runtime/asrt/decrement))
 (export "collect" (func $runtime/asrt/collectCycles))
 (func $runtime/asrt/decrement (; 1 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.const 268435455
  i32.and
  local.tee $1
  i32.const 1
  i32.eq
  if
   unreachable
  else   
   local.get $1
   i32.const 0
   i32.le_u
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
   drop
   unreachable
  end
  unreachable
 )
 (func $runtime/asrt/scan (; 2 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
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
    local.get $0
    i32.load offset=4
    i32.const -1879048193
    i32.and
    i32.store offset=4
   else    
    local.get $0
    local.get $1
    i32.const -1879048193
    i32.and
    i32.const 536870912
    i32.or
    i32.store offset=4
   end
   unreachable
  end
 )
 (func $runtime/asrt/collectWhite (; 3 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
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
   i32.const -1879048193
   i32.and
   i32.store offset=4
   unreachable
  end
 )
 (func $runtime/asrt/__rt_visit (; 4 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        local.get $1
        i32.const 1
        i32.ne
        if
         local.get $1
         i32.const 2
         i32.eq
         br_if $case1|0
         block $tablify|0
          local.get $1
          i32.const 3
          i32.sub
          br_table $case2|0 $case3|0 $case4|0 $tablify|0
         end
         br $case5|0
        end
        local.get $0
        call $runtime/asrt/decrement
        br $break|0
       end
       local.get $0
       i32.load offset=4
       i32.const 268435455
       i32.and
       i32.const 0
       i32.le_u
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
       i32.load offset=4
       local.tee $1
       i32.const 1879048192
       i32.and
       i32.const 268435456
       i32.ne
       if
        local.get $0
        local.get $1
        i32.const -1879048193
        i32.and
        i32.const 268435456
        i32.or
        i32.store offset=4
        unreachable
       end
       br $break|0
      end
      local.get $0
      call $runtime/asrt/scan
      br $break|0
     end
     local.get $0
     i32.load offset=4
     local.tee $1
     i32.const -268435456
     i32.and
     local.get $1
     i32.const 1
     i32.add
     i32.const -268435456
     i32.and
     i32.ne
     if
      i32.const 0
      i32.const 24
      i32.const 102
      i32.const 6
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $1
     i32.const 1879048192
     i32.and
     if
      local.get $0
      local.get $0
      i32.load offset=4
      i32.const -1879048193
      i32.and
      i32.store offset=4
      unreachable
     end
     br $break|0
    end
    local.get $0
    call $runtime/asrt/collectWhite
    br $break|0
   end
   i32.const 0
   i32.const 24
   i32.const 113
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $runtime/asrt/increment (; 5 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const -268435456
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const -268435456
  i32.and
  i32.ne
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
 (func $runtime/asrt/collectCycles (; 6 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $runtime/asrt/ROOTS
  local.tee $4
  local.tee $2
  local.set $3
  global.get $runtime/asrt/CUR
  local.set $5
  loop $repeat|0
   local.get $3
   local.get $5
   i32.lt_u
   if
    local.get $3
    i32.load
    local.tee $0
    i32.load offset=4
    local.tee $1
    i32.const 1879048192
    i32.and
    i32.const 805306368
    i32.eq
    if (result i32)
     local.get $1
     i32.const 268435455
     i32.and
     i32.const 0
     i32.gt_u
    else     
     i32.const 0
    end
    if
     local.get $0
     i32.load offset=4
     local.tee $1
     i32.const 1879048192
     i32.and
     i32.const 268435456
     i32.ne
     if
      local.get $0
      local.get $1
      i32.const -1879048193
      i32.and
      i32.const 268435456
      i32.or
      i32.store offset=4
      unreachable
     end
     local.get $2
     local.get $0
     i32.store
     local.get $2
     i32.const 4
     i32.add
     local.set $2
    else     
     i32.const 0
     local.get $1
     i32.const 268435455
     i32.and
     i32.eqz
     local.get $1
     i32.const 1879048192
     i32.and
     select
     if
      unreachable
     else      
      local.get $0
      local.get $1
      i32.const 2147483647
      i32.and
      i32.store offset=4
     end
    end
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $repeat|0
   end
  end
  local.get $2
  global.set $runtime/asrt/CUR
  local.get $4
  local.set $0
  loop $repeat|1
   local.get $0
   local.get $2
   i32.lt_u
   if
    local.get $0
    i32.load
    call $runtime/asrt/scan
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $repeat|1
   end
  end
  local.get $4
  local.set $0
  loop $repeat|2
   local.get $0
   local.get $2
   i32.lt_u
   if
    local.get $0
    i32.load
    local.tee $1
    local.get $1
    i32.load offset=4
    i32.const 2147483647
    i32.and
    i32.store offset=4
    local.get $1
    call $runtime/asrt/collectWhite
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $repeat|2
   end
  end
  local.get $4
  global.set $runtime/asrt/CUR
 )
 (func $null (; 7 ;) (type $FUNCSIG$v)
  nop
 )
)
