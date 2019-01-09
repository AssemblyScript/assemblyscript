(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/constructor/emptyCtor (mut i32) (i32.const 0))
 (global $std/constructor/emptyCtorWithFieldInit (mut i32) (i32.const 0))
 (global $std/constructor/emptyCtorWithFieldNoInit (mut i32) (i32.const 0))
 (global $std/constructor/none (mut i32) (i32.const 0))
 (global $std/constructor/justFieldInit (mut i32) (i32.const 0))
 (global $std/constructor/justFieldNoInit (mut i32) (i32.const 0))
 (global $std/constructor/ctorReturns (mut i32) (i32.const 0))
 (global $std/constructor/b (mut i32) (i32.const 1))
 (global $std/constructor/ctorConditionallyReturns (mut i32) (i32.const 0))
 (global $std/constructor/ctorAllocates (mut i32) (i32.const 0))
 (global $std/constructor/ctorConditionallyAllocates (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
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
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  i32.const 8
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  i32.const 0
  call $~lib/allocator/arena/__memory_allocate
  set_global $std/constructor/emptyCtor
  i32.const 4
  call $~lib/allocator/arena/__memory_allocate
  tee_local $0
  i32.const 1
  i32.store
  get_local $0
  set_global $std/constructor/emptyCtorWithFieldInit
  i32.const 4
  call $~lib/allocator/arena/__memory_allocate
  tee_local $0
  i32.const 0
  i32.store
  get_local $0
  set_global $std/constructor/emptyCtorWithFieldNoInit
  i32.const 0
  call $~lib/allocator/arena/__memory_allocate
  set_global $std/constructor/none
  i32.const 4
  call $~lib/allocator/arena/__memory_allocate
  tee_local $0
  i32.const 1
  i32.store
  get_local $0
  set_global $std/constructor/justFieldInit
  i32.const 4
  call $~lib/allocator/arena/__memory_allocate
  tee_local $0
  i32.const 0
  i32.store
  get_local $0
  set_global $std/constructor/justFieldNoInit
  i32.const 0
  call $~lib/allocator/arena/__memory_allocate
  set_global $std/constructor/ctorReturns
  block $__inlined_func$std/constructor/CtorConditionallyReturns#constructor (result i32)
   get_global $std/constructor/b
   if
    i32.const 0
    call $~lib/allocator/arena/__memory_allocate
    br $__inlined_func$std/constructor/CtorConditionallyReturns#constructor
   end
   i32.const 0
   call $~lib/allocator/arena/__memory_allocate
  end
  set_global $std/constructor/ctorConditionallyReturns
  i32.const 0
  call $~lib/allocator/arena/__memory_allocate
  set_global $std/constructor/ctorAllocates
  i32.const 0
  set_local $0
  block (result i32)
   get_global $std/constructor/b
   if
    i32.const 0
    call $~lib/allocator/arena/__memory_allocate
    set_local $0
   end
   get_local $0
   i32.eqz
  end
  if (result i32)
   i32.const 0
   call $~lib/allocator/arena/__memory_allocate
  else   
   get_local $0
  end
  set_global $std/constructor/ctorConditionallyAllocates
 )
 (func $null (; 2 ;) (type $v)
  nop
 )
)
