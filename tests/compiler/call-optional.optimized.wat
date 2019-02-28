(module
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00c\00a\00l\00l\00-\00o\00p\00t\00i\00o\00n\00a\00l\00.\00t\00s")
 (table $0 2 funcref)
 (elem (i32.const 0) $null $call-optional/opt|trampoline)
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $call-optional/optIndirect (mut i32) (i32.const 1))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $call-optional/opt|trampoline (; 1 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~lib/argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const -1
    local.set $1
   end
   i32.const -2
   local.set $2
  end
  local.get $0
  local.get $1
  i32.add
  local.get $2
  i32.add
 )
 (func $start:call-optional (; 2 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 1
  global.set $~lib/argc
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~lib/argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const -1
    local.set $0
   end
   i32.const -2
   local.set $1
  end
  local.get $0
  i32.const 3
  i32.add
  local.get $1
  i32.add
  if
   i32.const 0
   i32.const 8
   i32.const 4
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  global.set $~lib/argc
  i32.const 4
  local.set $0
  i32.const 0
  local.set $1
  block $2of21
   block $1of22
    block $0of23
     block $outOfRange4
      global.get $~lib/argc
      i32.const 1
      i32.sub
      br_table $0of23 $1of22 $2of21 $outOfRange4
     end
     unreachable
    end
    i32.const -1
    local.set $0
   end
   i32.const -2
   local.set $1
  end
  local.get $0
  i32.const 3
  i32.add
  local.get $1
  i32.add
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 5
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  i32.const 3
  i32.const 0
  i32.const 0
  global.get $call-optional/optIndirect
  call_indirect (type $FUNCSIG$iiii)
  if
   i32.const 0
   i32.const 8
   i32.const 9
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  global.set $~lib/argc
  i32.const 3
  i32.const 4
  i32.const 0
  global.get $call-optional/optIndirect
  call_indirect (type $FUNCSIG$iiii)
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 10
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3
  global.set $~lib/argc
  i32.const 3
  i32.const 4
  i32.const 5
  global.get $call-optional/optIndirect
  call_indirect (type $FUNCSIG$iiii)
  i32.const 12
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 11
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 3 ;) (type $FUNCSIG$v)
  call $start:call-optional
 )
 (func $null (; 4 ;) (type $FUNCSIG$v)
  nop
 )
)
