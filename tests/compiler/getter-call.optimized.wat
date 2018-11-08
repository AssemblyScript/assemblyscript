(module
 (type $i (func (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (type $FUNCSIG$i (func (result i32)))
 (memory $0 0)
 (table $0 2 anyfunc)
 (elem (i32.const 0) $null $getter-call/C#get:x~anonymous|1)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $getter-call/test))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 0 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/memory/memory.allocate (; 1 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
  call $~lib/allocator/arena/__memory_allocate
 )
 (func $getter-call/C#get:x~anonymous|1 (; 2 ;) (type $i) (result i32)
  i32.const 42
 )
 (func $getter-call/C#get:x (; 3 ;) (type $FUNCSIG$i) (result i32)
  i32.const 1
 )
 (func $getter-call/test (; 4 ;) (type $i) (result i32)
  (local $0 i32)
  call $~lib/memory/memory.allocate
  set_local $0
  i32.const 0
  set_global $~argc
  call $getter-call/C#get:x
  call_indirect (type $i)
 )
 (func $start (; 5 ;) (type $v)
  i32.const 8
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
 )
 (func $null (; 6 ;) (type $v)
  nop
 )
)
