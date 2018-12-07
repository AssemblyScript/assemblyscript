(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00c\00o\00m\00m\00a\00.\00t\00s\00")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $comma/a (mut i32) (i32.const 0))
 (global $comma/b (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 28))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  block
   block (result i32)
    get_global $comma/a
    tee_local $0
    i32.const 1
    i32.add
    set_global $comma/a
    get_local $0
   end
   set_global $comma/b
   get_global $comma/a
   drop
  end
  get_global $comma/a
  i32.const 1
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
  get_global $comma/b
  i32.const 0
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
  block
   get_global $comma/a
   i32.const 1
   i32.add
   set_global $comma/a
   get_global $comma/a
   set_global $comma/b
  end
  get_global $comma/a
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 8
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $comma/b
  i32.const 2
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
   i32.const 0
   set_global $comma/b
   get_global $comma/b
  end
  set_global $comma/a
  block (result i32)
   get_global $comma/a
   i32.const 1
   i32.add
   set_global $comma/a
   get_global $comma/a
  end
  set_global $comma/b
  get_global $comma/a
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 14
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $comma/b
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 15
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   get_global $comma/a
   i32.const 1
   i32.add
   set_global $comma/a
   block (result i32)
    get_global $comma/a
    set_global $comma/b
    get_global $comma/b
   end
  end
  set_global $comma/a
  get_global $comma/a
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 18
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $comma/b
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 19
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $break|0
   i32.const 0
   set_local $1
   loop $repeat|0
    get_local $1
    get_global $comma/a
    i32.lt_s
    i32.eqz
    br_if $break|0
    nop
    block
     get_global $comma/a
     i32.const 1
     i32.sub
     set_global $comma/a
     get_local $1
     i32.const 1
     i32.add
     set_local $1
    end
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 22
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block
   i32.const 1
   drop
   i32.const 2
   drop
   i32.const 3
   drop
  end
 )
 (func $null (; 2 ;) (type $v)
 )
)
