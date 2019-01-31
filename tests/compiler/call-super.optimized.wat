(module
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00c\00a\00l\00l\00-\00s\00u\00p\00e\00r\00.\00t\00s")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  get_global $~lib/allocator/arena/offset
  tee_local $1
  get_local $0
  i32.const 1
  get_local $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  tee_local $2
  current_memory
  tee_local $3
  i32.const 16
  i32.shl
  i32.gt_u
  if
   get_local $3
   get_local $2
   get_local $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   tee_local $0
   get_local $3
   get_local $0
   i32.gt_s
   select
   grow_memory
   i32.const 0
   i32.lt_s
   if
    get_local $0
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  get_local $2
  set_global $~lib/allocator/arena/offset
  get_local $1
 )
 (func $call-super/A#constructor (; 2 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.eqz
  if
   i32.const 4
   call $~lib/allocator/arena/__memory_allocate
   tee_local $0
   i32.const 1
   i32.store
  end
  get_local $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 6
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
 )
 (func $call-super/B#constructor (; 3 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 8
  call $~lib/allocator/arena/__memory_allocate
  tee_local $0
  i32.const 1
  i32.store
  get_local $0
  i32.const 2
  i32.store offset=4
  get_local $0
  call $call-super/A#constructor
  tee_local $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 15
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 16
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
 )
 (func $call-super/test1 (; 4 ;) (type $v)
  (local $0 i32)
  call $call-super/B#constructor
  tee_local $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 22
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $call-super/D#constructor (; 5 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 8
  call $~lib/allocator/arena/__memory_allocate
  tee_local $0
  i32.const 1
  i32.store
  get_local $0
  i32.const 2
  i32.store offset=4
  get_local $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 36
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 37
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
 )
 (func $call-super/test2 (; 6 ;) (type $v)
  (local $0 i32)
  call $call-super/D#constructor
  tee_local $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 43
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 44
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $call-super/E#constructor (; 7 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 4
  call $~lib/allocator/arena/__memory_allocate
  tee_local $0
  i32.const 1
  i32.store
  get_local $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 52
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
 )
 (func $start (; 8 ;) (type $v)
  i32.const 40
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  call $call-super/test1
  call $call-super/test2
  call $call-super/E#constructor
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 62
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 9 ;) (type $v)
  nop
 )
)
