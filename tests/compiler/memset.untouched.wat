(module
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\t\00\00\00m\00e\00m\00s\00e\00t\00.\00t\00s\00")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $memset/dest (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 32))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $memset/memset (; 1 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  get_local $0
  set_local $3
  get_local $2
  i32.eqz
  if
   get_local $3
   return
  end
  get_local $0
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 1
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 2
  i32.le_u
  if
   get_local $3
   return
  end
  get_local $0
  i32.const 1
  i32.add
  get_local $1
  i32.store8
  get_local $0
  i32.const 2
  i32.add
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 2
  i32.sub
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 3
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 6
  i32.le_u
  if
   get_local $3
   return
  end
  get_local $0
  i32.const 3
  i32.add
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 4
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 8
  i32.le_u
  if
   get_local $3
   return
  end
  i32.const 0
  get_local $0
  i32.sub
  i32.const 3
  i32.and
  set_local $4
  get_local $0
  get_local $4
  i32.add
  set_local $0
  get_local $2
  get_local $4
  i32.sub
  set_local $2
  get_local $2
  i32.const -4
  i32.and
  set_local $2
  i32.const -1
  i32.const 255
  i32.div_u
  get_local $1
  i32.const 255
  i32.and
  i32.mul
  set_local $5
  get_local $0
  get_local $5
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 4
  i32.sub
  get_local $5
  i32.store
  get_local $2
  i32.const 8
  i32.le_u
  if
   get_local $3
   return
  end
  get_local $0
  i32.const 4
  i32.add
  get_local $5
  i32.store
  get_local $0
  i32.const 8
  i32.add
  get_local $5
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 12
  i32.sub
  get_local $5
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 8
  i32.sub
  get_local $5
  i32.store
  get_local $2
  i32.const 24
  i32.le_u
  if
   get_local $3
   return
  end
  get_local $0
  i32.const 12
  i32.add
  get_local $5
  i32.store
  get_local $0
  i32.const 16
  i32.add
  get_local $5
  i32.store
  get_local $0
  i32.const 20
  i32.add
  get_local $5
  i32.store
  get_local $0
  i32.const 24
  i32.add
  get_local $5
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 28
  i32.sub
  get_local $5
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 24
  i32.sub
  get_local $5
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 20
  i32.sub
  get_local $5
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 16
  i32.sub
  get_local $5
  i32.store
  i32.const 24
  get_local $0
  i32.const 4
  i32.and
  i32.add
  set_local $4
  get_local $0
  get_local $4
  i32.add
  set_local $0
  get_local $2
  get_local $4
  i32.sub
  set_local $2
  get_local $5
  i64.extend_u/i32
  get_local $5
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  set_local $6
  block $break|0
   loop $continue|0
    get_local $2
    i32.const 32
    i32.ge_u
    if
     block
      get_local $0
      get_local $6
      i64.store
      get_local $0
      i32.const 8
      i32.add
      get_local $6
      i64.store
      get_local $0
      i32.const 16
      i32.add
      get_local $6
      i64.store
      get_local $0
      i32.const 24
      i32.add
      get_local $6
      i64.store
      get_local $2
      i32.const 32
      i32.sub
      set_local $2
      get_local $0
      i32.const 32
      i32.add
      set_local $0
     end
     br $continue|0
    end
   end
  end
  get_local $3
 )
 (func $start (; 2 ;) (type $v)
  get_global $HEAP_BASE
  set_global $memset/dest
  get_global $memset/dest
  i32.const 1
  i32.const 16
  call $memset/memset
  drop
  get_global $memset/dest
  i32.load8_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 72
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $memset/dest
  i32.const 15
  i32.add
  i32.load8_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 73
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $memset/dest
  i32.const 1
  i32.add
  i32.const 2
  i32.const 14
  call $memset/memset
  drop
  get_global $memset/dest
  i32.load8_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 77
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $memset/dest
  i32.const 1
  i32.add
  i32.load8_u
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 78
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $memset/dest
  i32.const 14
  i32.add
  i32.load8_u
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 79
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $memset/dest
  i32.const 15
  i32.add
  i32.load8_u
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 80
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 3 ;) (type $v)
 )
)
