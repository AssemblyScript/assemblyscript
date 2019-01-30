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
 (func $call-super/B#constructor (; 2 ;) (type $FUNCSIG$i) (result i32)
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
  i32.eqz
  if
   i32.const 4
   call $~lib/allocator/arena/__memory_allocate
   tee_local $0
   i32.const 1
   i32.store
  end
  get_local $0
  i32.eqz
  if
   i32.const 8
   call $~lib/allocator/arena/__memory_allocate
   tee_local $0
   i32.const 1
   i32.store
   get_local $0
   i32.const 2
   i32.store offset=4
  end
  get_local $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 13
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
   i32.const 14
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
 )
 (func $call-super/test (; 3 ;) (type $v)
  (local $0 i32)
  call $call-super/B#constructor
  tee_local $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 20
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
   i32.const 21
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 4 ;) (type $v)
  i32.const 40
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  call $call-super/test
 )
 (func $null (; 5 ;) (type $v)
  nop
 )
)
