(module
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d")
 (data (i32.const 40) "\11\00\00\00o\00b\00j\00e\00c\00t\00-\00l\00i\00t\00e\00r\00a\00l\00.\00t\00s")
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
 (func $~lib/internal/string/compareUnsafe (; 2 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  set_local $3
  loop $continue|0
   get_local $2
   if (result i32)
    get_local $3
    i32.load16_u offset=4
    get_local $1
    i32.load16_u offset=4
    i32.sub
    tee_local $4
    i32.eqz
   else    
    get_local $2
   end
   tee_local $0
   if
    get_local $2
    i32.const 1
    i32.sub
    set_local $2
    get_local $3
    i32.const 2
    i32.add
    set_local $3
    get_local $1
    i32.const 2
    i32.add
    set_local $1
    br $continue|0
   end
  end
  get_local $4
 )
 (func $~lib/string/String.__eq (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.const 8
  i32.eq
  if
   i32.const 1
   return
  end
  get_local $0
  i32.eqz
  tee_local $1
  i32.eqz
  if
   i32.const 0
   set_local $1
  end
  get_local $1
  if
   i32.const 0
   return
  end
  get_local $0
  i32.load
  tee_local $1
  i32.const 8
  i32.load
  i32.ne
  if
   i32.const 0
   return
  end
  get_local $0
  i32.const 8
  get_local $1
  call $~lib/internal/string/compareUnsafe
  i32.eqz
 )
 (func $object-literal/bar (; 4 ;) (type $iv) (param $0 i32)
  get_local $0
  i32.load
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 9
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 10
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 5 ;) (type $v)
  (local $0 i32)
  i32.const 80
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  i32.const 8
  call $~lib/allocator/arena/__memory_allocate
  tee_local $0
  i32.const 1
  i32.store
  get_local $0
  i32.const 8
  i32.store offset=4
  get_local $0
  call $object-literal/bar
  i32.const 4
  call $~lib/allocator/arena/__memory_allocate
  tee_local $0
  i32.const 2
  i32.store
  get_local $0
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 26
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 4
  call $~lib/allocator/arena/__memory_allocate
  tee_local $0
  i32.const 3
  i32.store
  get_local $0
  i32.load
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 40
   i32.const 21
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 6 ;) (type $v)
  nop
 )
)
