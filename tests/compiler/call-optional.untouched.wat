(module
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00c\00a\00l\00l\00-\00o\00p\00t\00i\00o\00n\00a\00l\00.\00t\00s\00")
 (table $0 2 funcref)
 (elem (i32.const 0) $null $call-optional/opt|trampoline)
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $call-optional/optIndirect (mut i32) (i32.const 1))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 44))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $call-optional/opt (; 1 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
  local.get $2
  i32.add
 )
 (func $call-optional/opt|trampoline (; 2 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $2
  call $call-optional/opt
 )
 (func $start:call-optional (; 3 ;) (type $FUNCSIG$v)
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   i32.const 3
   i32.const 0
   i32.const 0
   call $call-optional/opt|trampoline
  end
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 4
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 2
   global.set $~lib/argc
   i32.const 3
   i32.const 4
   i32.const 0
   call $call-optional/opt|trampoline
  end
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 5
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3
  i32.const 4
  i32.const 5
  call $call-optional/opt
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 6
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   i32.const 3
   i32.const 0
   i32.const 0
   global.get $call-optional/optIndirect
   call_indirect (type $FUNCSIG$iiii)
  end
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 9
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 2
   global.set $~lib/argc
   i32.const 3
   i32.const 4
   i32.const 0
   global.get $call-optional/optIndirect
   call_indirect (type $FUNCSIG$iiii)
  end
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 10
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 3
   global.set $~lib/argc
   i32.const 3
   i32.const 4
   i32.const 5
   global.get $call-optional/optIndirect
   call_indirect (type $FUNCSIG$iiii)
  end
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 11
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 4 ;) (type $FUNCSIG$v)
  call $start:call-optional
 )
 (func $null (; 5 ;) (type $FUNCSIG$v)
 )
)
