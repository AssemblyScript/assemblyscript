(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
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
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  get_global $~lib/internal/allocator/MAX_SIZE_32
  i32.gt_u
  if
   unreachable
  end
  get_global $~lib/allocator/arena/offset
  set_local $1
  get_local $1
  get_local $0
  tee_local $2
  i32.const 1
  tee_local $3
  get_local $2
  get_local $3
  i32.gt_u
  select
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_local $4
  current_memory
  set_local $5
  get_local $4
  get_local $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   get_local $4
   get_local $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   set_local $2
   get_local $5
   tee_local $3
   get_local $2
   tee_local $6
   get_local $3
   get_local $6
   i32.gt_s
   select
   set_local $3
   get_local $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    get_local $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  get_local $4
  set_global $~lib/allocator/arena/offset
  get_local $1
 )
 (func $~lib/memory/memory.allocate (; 1 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $std/constructor/EmptyCtor#constructor (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 0
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
 )
 (func $std/constructor/EmptyCtorWithFieldInit#constructor (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 4
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
    i32.const 1
    i32.store
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
 )
 (func $std/constructor/EmptyCtorWithFieldNoInit#constructor (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 4
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
    i32.const 0
    i32.store
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
 )
 (func $std/constructor/CtorReturns#constructor (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  block $~lib/memory/memory.allocate|inlined.0 (result i32)
   i32.const 0
   set_local $1
   get_local $1
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.0
  end
 )
 (func $std/constructor/CtorConditionallyReturns#constructor (; 6 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_global $std/constructor/b
  if
   block $~lib/memory/memory.allocate|inlined.1 (result i32)
    i32.const 0
    set_local $1
    get_local $1
    call $~lib/allocator/arena/__memory_allocate
    br $~lib/memory/memory.allocate|inlined.1
   end
   return
  end
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 0
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
 )
 (func $std/constructor/CtorAllocates#constructor (; 7 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 0
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
  drop
  get_local $0
 )
 (func $std/constructor/CtorConditionallyAllocates#constructor (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_global $std/constructor/b
  if
   get_local $0
   if (result i32)
    get_local $0
   else    
    block (result i32)
     i32.const 0
     call $~lib/memory/memory.allocate
     set_local $1
     get_local $1
    end
    tee_local $0
   end
   tee_local $0
   drop
  end
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 0
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
 )
 (func $start (; 9 ;) (type $v)
  (local $0 i32)
  get_global $HEAP_BASE
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  i32.const 0
  call $std/constructor/EmptyCtor#constructor
  set_global $std/constructor/emptyCtor
  i32.const 0
  call $std/constructor/EmptyCtorWithFieldInit#constructor
  set_global $std/constructor/emptyCtorWithFieldInit
  i32.const 0
  call $std/constructor/EmptyCtorWithFieldNoInit#constructor
  set_global $std/constructor/emptyCtorWithFieldNoInit
  block (result i32)
   i32.const 0
   call $~lib/memory/memory.allocate
   set_local $0
   get_local $0
  end
  set_global $std/constructor/none
  block (result i32)
   i32.const 4
   call $~lib/memory/memory.allocate
   set_local $0
   get_local $0
   i32.const 1
   i32.store
   get_local $0
  end
  set_global $std/constructor/justFieldInit
  block (result i32)
   i32.const 4
   call $~lib/memory/memory.allocate
   set_local $0
   get_local $0
   i32.const 0
   i32.store
   get_local $0
  end
  set_global $std/constructor/justFieldNoInit
  i32.const 0
  call $std/constructor/CtorReturns#constructor
  set_global $std/constructor/ctorReturns
  i32.const 0
  call $std/constructor/CtorConditionallyReturns#constructor
  set_global $std/constructor/ctorConditionallyReturns
  i32.const 0
  call $std/constructor/CtorAllocates#constructor
  set_global $std/constructor/ctorAllocates
  i32.const 0
  call $std/constructor/CtorConditionallyAllocates#constructor
  set_global $std/constructor/ctorConditionallyAllocates
 )
 (func $null (; 10 ;) (type $v)
 )
)
