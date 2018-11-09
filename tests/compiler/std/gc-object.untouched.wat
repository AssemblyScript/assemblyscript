(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiv (func (param i32 i32)))
 (memory $0 0)
 (table $0 4 anyfunc)
 (elem (i32.const 0) $null $~lib/collector/itcm/__gc_mark $std/gc-object/Custom~gc $std/gc-object/Base~gc)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/TRACE i32 (i32.const 0))
 (global $~lib/collector/itcm/HEADER_SIZE i32 (i32.const 16))
 (global $~lib/collector/itcm/State.INIT i32 (i32.const 0))
 (global $~lib/collector/itcm/State.IDLE i32 (i32.const 1))
 (global $~lib/collector/itcm/State.MARK i32 (i32.const 2))
 (global $~lib/collector/itcm/State.SWEEP i32 (i32.const 3))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/white (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/fromSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/toSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $std/gc-object/obj (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $std/gc-object/main))
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
 (func $~lib/collector/itcm/ManagedObjectList#clear (; 1 ;) (type $iv) (param $0 i32)
  get_local $0
  get_local $0
  i32.store
  get_local $0
  get_local $0
  i32.store offset=4
 )
 (func $~lib/collector/itcm/ManagedObject#get:color (; 2 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
  i32.const 3
  i32.and
 )
 (func $~lib/collector/itcm/ManagedObject#get:next (; 3 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/collector/itcm/ManagedObject#set:next (; 4 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  get_local $0
  i32.load
  i32.const 3
  i32.and
  i32.or
  i32.store
 )
 (func $~lib/collector/itcm/ManagedObject#unlink (; 5 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  call $~lib/collector/itcm/ManagedObject#get:next
  set_local $1
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $1
  get_local $2
  i32.store offset=4
  get_local $2
  get_local $1
  call $~lib/collector/itcm/ManagedObject#set:next
 )
 (func $~lib/collector/itcm/ManagedObjectList#push (; 6 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $1
  get_local $0
  call $~lib/collector/itcm/ManagedObject#set:next
  get_local $1
  get_local $2
  i32.store offset=4
  get_local $2
  get_local $1
  call $~lib/collector/itcm/ManagedObject#set:next
  get_local $0
  get_local $1
  i32.store offset=4
 )
 (func $~lib/collector/itcm/ManagedObject#makeGray (; 7 ;) (type $iv) (param $0 i32)
  get_local $0
  get_global $~lib/collector/itcm/iter
  i32.eq
  if
   get_local $0
   i32.load offset=4
   set_global $~lib/collector/itcm/iter
  end
  get_local $0
  call $~lib/collector/itcm/ManagedObject#unlink
  get_global $~lib/collector/itcm/toSpace
  get_local $0
  call $~lib/collector/itcm/ManagedObjectList#push
  get_local $0
  get_local $0
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 2
  i32.or
  i32.store
 )
 (func $~lib/collector/itcm/__gc_mark (; 8 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  get_local $0
  if
   block $~lib/collector/itcm/refToObj|inlined.0 (result i32)
    get_local $0
    get_global $~lib/collector/itcm/HEADER_SIZE
    i32.sub
   end
   set_local $1
   get_local $1
   call $~lib/collector/itcm/ManagedObject#get:color
   get_global $~lib/collector/itcm/white
   i32.eq
   if
    get_local $1
    call $~lib/collector/itcm/ManagedObject#makeGray
   end
  end
 )
 (func $~lib/collector/itcm/ManagedObject#set:color (; 9 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $0
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  get_local $1
  i32.or
  i32.store
 )
 (func $~lib/allocator/arena/__memory_free (; 10 ;) (type $iv) (param $0 i32)
  nop
 )
 (func $~lib/collector/itcm/step (; 11 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      block $case0|0
       get_global $~lib/collector/itcm/state
       set_local $1
       get_local $1
       get_global $~lib/collector/itcm/State.INIT
       i32.eq
       br_if $case0|0
       get_local $1
       get_global $~lib/collector/itcm/State.IDLE
       i32.eq
       br_if $case1|0
       get_local $1
       get_global $~lib/collector/itcm/State.MARK
       i32.eq
       br_if $case2|0
       get_local $1
       get_global $~lib/collector/itcm/State.SWEEP
       i32.eq
       br_if $case3|0
       br $break|0
      end
      block
       block $~lib/memory/memory.allocate|inlined.0 (result i32)
        get_global $~lib/collector/itcm/HEADER_SIZE
        set_local $1
        get_local $1
        call $~lib/allocator/arena/__memory_allocate
        br $~lib/memory/memory.allocate|inlined.0
       end
       set_global $~lib/collector/itcm/fromSpace
       get_global $~lib/collector/itcm/fromSpace
       i32.const -1
       i32.store offset=8
       get_global $~lib/collector/itcm/fromSpace
       call $~lib/collector/itcm/ManagedObjectList#clear
       block $~lib/memory/memory.allocate|inlined.1 (result i32)
        get_global $~lib/collector/itcm/HEADER_SIZE
        set_local $1
        get_local $1
        call $~lib/allocator/arena/__memory_allocate
        br $~lib/memory/memory.allocate|inlined.1
       end
       set_global $~lib/collector/itcm/toSpace
       get_global $~lib/collector/itcm/toSpace
       i32.const -1
       i32.store offset=8
       get_global $~lib/collector/itcm/toSpace
       call $~lib/collector/itcm/ManagedObjectList#clear
       get_global $~lib/collector/itcm/toSpace
       set_global $~lib/collector/itcm/iter
       get_global $~lib/collector/itcm/State.IDLE
       set_global $~lib/collector/itcm/state
      end
     end
     block
      i32.const 1
      call $~iterateRoots
      get_global $~lib/collector/itcm/State.MARK
      set_global $~lib/collector/itcm/state
      br $break|0
      unreachable
     end
     unreachable
    end
    block
     get_global $~lib/collector/itcm/iter
     call $~lib/collector/itcm/ManagedObject#get:next
     set_local $0
     get_local $0
     get_global $~lib/collector/itcm/toSpace
     i32.ne
     if
      get_local $0
      set_global $~lib/collector/itcm/iter
      get_local $0
      get_global $~lib/collector/itcm/white
      i32.eqz
      call $~lib/collector/itcm/ManagedObject#set:color
      i32.const 1
      set_global $~argc
      block $~lib/collector/itcm/objToRef|inlined.0 (result i32)
       get_local $0
       get_global $~lib/collector/itcm/HEADER_SIZE
       i32.add
      end
      get_local $0
      i32.load offset=8
      call_indirect (type $iv)
     else      
      i32.const 1
      call $~iterateRoots
      get_global $~lib/collector/itcm/iter
      call $~lib/collector/itcm/ManagedObject#get:next
      set_local $0
      get_local $0
      get_global $~lib/collector/itcm/toSpace
      i32.eq
      if
       get_global $~lib/collector/itcm/fromSpace
       set_local $1
       get_global $~lib/collector/itcm/toSpace
       set_global $~lib/collector/itcm/fromSpace
       get_local $1
       set_global $~lib/collector/itcm/toSpace
       get_global $~lib/collector/itcm/white
       i32.eqz
       set_global $~lib/collector/itcm/white
       get_local $1
       call $~lib/collector/itcm/ManagedObject#get:next
       set_global $~lib/collector/itcm/iter
       get_global $~lib/collector/itcm/State.SWEEP
       set_global $~lib/collector/itcm/state
      end
     end
     br $break|0
     unreachable
    end
    unreachable
   end
   block
    get_global $~lib/collector/itcm/iter
    set_local $0
    get_local $0
    get_global $~lib/collector/itcm/toSpace
    i32.ne
    if
     get_local $0
     call $~lib/collector/itcm/ManagedObject#get:next
     set_global $~lib/collector/itcm/iter
     get_local $0
     get_global $HEAP_BASE
     i32.ge_u
     if
      block $~lib/memory/memory.free|inlined.0
       block
        get_local $0
        call $~lib/allocator/arena/__memory_free
        br $~lib/memory/memory.free|inlined.0
        unreachable
       end
       unreachable
      end
     end
    else     
     get_global $~lib/collector/itcm/toSpace
     call $~lib/collector/itcm/ManagedObjectList#clear
     get_global $~lib/collector/itcm/State.IDLE
     set_global $~lib/collector/itcm/state
    end
    br $break|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/collector/itcm/__gc_allocate (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  get_global $~lib/internal/allocator/MAX_SIZE_32
  get_global $~lib/collector/itcm/HEADER_SIZE
  i32.sub
  i32.gt_u
  if
   unreachable
  end
  call $~lib/collector/itcm/step
  block $~lib/memory/memory.allocate|inlined.2 (result i32)
   get_global $~lib/collector/itcm/HEADER_SIZE
   get_local $0
   i32.add
   set_local $2
   get_local $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.2
  end
  set_local $3
  get_local $3
  get_local $1
  i32.store offset=8
  get_local $3
  get_global $~lib/collector/itcm/white
  call $~lib/collector/itcm/ManagedObject#set:color
  get_global $~lib/collector/itcm/fromSpace
  get_local $3
  call $~lib/collector/itcm/ManagedObjectList#push
  block $~lib/collector/itcm/objToRef|inlined.1 (result i32)
   get_local $3
   get_global $~lib/collector/itcm/HEADER_SIZE
   i32.add
  end
 )
 (func $std/gc-object/Base~gc (; 13 ;) (type $iv) (param $0 i32)
  get_local $0
  i32.eqz
  if
   return
  end
  get_local $0
  call $~lib/collector/itcm/__gc_mark
 )
 (func $std/gc-object/Custom~gc (; 14 ;) (type $iv) (param $0 i32)
  get_local $0
  i32.eqz
  if
   return
  end
  get_local $0
  i32.const 3
  call_indirect (type $iv)
  get_local $0
  i32.load
  call $~lib/collector/itcm/__gc_mark
  get_local $0
  i32.load offset=4
  call $~lib/collector/itcm/__gc_mark
 )
 (func $~lib/collector/itcm/__gc_collect (; 15 ;) (type $v)
  (local $0 i32)
  block $break|0
   block $case1|0
    block $case0|0
     get_global $~lib/collector/itcm/state
     set_local $0
     get_local $0
     get_global $~lib/collector/itcm/State.INIT
     i32.eq
     br_if $case0|0
     get_local $0
     get_global $~lib/collector/itcm/State.IDLE
     i32.eq
     br_if $case1|0
     br $break|0
    end
   end
   call $~lib/collector/itcm/step
  end
  block $break|1
   loop $continue|1
    get_global $~lib/collector/itcm/state
    get_global $~lib/collector/itcm/State.IDLE
    i32.ne
    if
     call $~lib/collector/itcm/step
     br $continue|1
    end
   end
  end
 )
 (func $~lib/gc/gc.collect (; 16 ;) (type $v)
  call $~lib/collector/itcm/__gc_collect
  return
 )
 (func $std/gc-object/main (; 17 ;) (type $v)
  get_global $~started
  i32.eqz
  if
   call $start
   i32.const 1
   set_global $~started
  end
 )
 (func $start (; 18 ;) (type $v)
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
  get_global $~lib/collector/itcm/State.INIT
  set_global $~lib/collector/itcm/state
  block (result i32)
   i32.const 8
   i32.const 2
   call $~lib/collector/itcm/__gc_allocate
   set_local $0
   get_local $0
   i32.const 0
   i32.store
   get_local $0
   i32.const 0
   i32.store offset=4
   get_local $0
  end
  set_global $std/gc-object/obj
  call $~lib/gc/gc.collect
  get_global $std/gc-object/obj
  get_global $std/gc-object/obj
  i32.store
  call $~lib/gc/gc.collect
  i32.const 0
  set_global $std/gc-object/obj
  call $~lib/gc/gc.collect
 )
 (func $null (; 19 ;) (type $v)
 )
 (func $~iterateRoots (; 20 ;) (type $iv) (param $0 i32)
  get_global $std/gc-object/obj
  get_local $0
  call_indirect (type $iv)
 )
)
