(module
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00c\00a\00l\00l\00-\00o\00p\00t\00i\00o\00n\00a\00l\00.\00t\00s\00")
 (table $0 2 anyfunc)
 (elem (i32.const 0) $null $call-optional/opt|trampoline)
 (global $~argc (mut i32) (i32.const 0))
 (global $call-optional/optIndirect (mut i32) (i32.const 1))
 (global $HEAP_BASE i32 (i32.const 44))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $call-optional/opt (; 1 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
  get_local $2
  i32.add
 )
 (func $call-optional/opt|trampoline (; 2 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      get_global $~argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const -1
    set_local $1
   end
   i32.const -2
   set_local $2
  end
  get_local $0
  get_local $1
  get_local $2
  call $call-optional/opt
 )
 (func $start (; 3 ;) (type $v)
  block (result i32)
   i32.const 1
   set_global $~argc
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
   set_global $~argc
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
   set_global $~argc
   i32.const 3
   i32.const 0
   i32.const 0
   get_global $call-optional/optIndirect
   call_indirect (type $iiii)
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
   set_global $~argc
   i32.const 3
   i32.const 4
   i32.const 0
   get_global $call-optional/optIndirect
   call_indirect (type $iiii)
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
   set_global $~argc
   i32.const 3
   i32.const 4
   i32.const 5
   get_global $call-optional/optIndirect
   call_indirect (type $iiii)
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
 (func $null (; 4 ;) (type $v)
 )
)
