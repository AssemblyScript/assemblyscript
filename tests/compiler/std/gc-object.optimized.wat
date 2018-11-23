(module
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiv (func (param i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (memory $0 0)
 (table $0 4 anyfunc)
 (elem (i32.const 0) $null $~lib/collector/itcm/__gc_mark $std/gc-object/Custom~gc $std/gc-object/Base~gc)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/white (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/fromSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/toSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $std/gc-object/obj (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $std/gc-object/main))
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
 (func $~lib/collector/itcm/ManagedObjectList#push (; 1 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $1
  get_local $0
  get_local $1
  i32.load
  i32.const 3
  i32.and
  i32.or
  i32.store
  get_local $1
  get_local $2
  i32.store offset=4
  get_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 3
  i32.and
  i32.or
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
 )
 (func $~lib/collector/itcm/ManagedObject#makeGray (; 2 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  get_global $~lib/collector/itcm/iter
  i32.eq
  if
   get_local $0
   i32.load offset=4
   set_global $~lib/collector/itcm/iter
  end
  get_local $0
  i32.load
  i32.const -4
  i32.and
  tee_local $2
  get_local $0
  i32.load offset=4
  tee_local $1
  i32.store offset=4
  get_local $1
  get_local $2
  get_local $1
  i32.load
  i32.const 3
  i32.and
  i32.or
  i32.store
  get_global $~lib/collector/itcm/toSpace
  get_local $0
  call $~lib/collector/itcm/ManagedObjectList#push
  get_local $0
  get_local $0
  i32.load
  i32.const -4
  i32.and
  i32.const 2
  i32.or
  i32.store
 )
 (func $~lib/collector/itcm/__gc_mark (; 3 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  get_local $0
  if
   get_local $0
   i32.const 16
   i32.sub
   tee_local $1
   i32.load
   i32.const 3
   i32.and
   get_global $~lib/collector/itcm/white
   i32.eq
   if
    get_local $1
    call $~lib/collector/itcm/ManagedObject#makeGray
   end
  end
 )
 (func $~lib/collector/itcm/step (; 4 ;) (type $v)
  (local $0 i32)
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      get_global $~lib/collector/itcm/state
      tee_local $0
      if
       get_local $0
       i32.const 1
       i32.sub
       br_table $case1|0 $case2|0 $case3|0 $break|0
      end
      i32.const 16
      call $~lib/allocator/arena/__memory_allocate
      set_global $~lib/collector/itcm/fromSpace
      get_global $~lib/collector/itcm/fromSpace
      i32.const -1
      i32.store offset=8
      get_global $~lib/collector/itcm/fromSpace
      tee_local $0
      get_local $0
      i32.store
      get_local $0
      get_local $0
      i32.store offset=4
      i32.const 16
      call $~lib/allocator/arena/__memory_allocate
      set_global $~lib/collector/itcm/toSpace
      get_global $~lib/collector/itcm/toSpace
      i32.const -1
      i32.store offset=8
      get_global $~lib/collector/itcm/toSpace
      tee_local $0
      get_local $0
      i32.store
      get_local $0
      get_local $0
      i32.store offset=4
      get_global $~lib/collector/itcm/toSpace
      set_global $~lib/collector/itcm/iter
      i32.const 1
      set_global $~lib/collector/itcm/state
     end
     get_global $std/gc-object/obj
     i32.const 1
     call_indirect (type $iv)
     i32.const 2
     set_global $~lib/collector/itcm/state
     br $break|0
    end
    get_global $~lib/collector/itcm/iter
    i32.load
    i32.const -4
    i32.and
    tee_local $0
    get_global $~lib/collector/itcm/toSpace
    i32.ne
    if
     get_local $0
     set_global $~lib/collector/itcm/iter
     get_local $0
     get_local $0
     i32.load
     i32.const -4
     i32.and
     get_global $~lib/collector/itcm/white
     i32.eqz
     i32.or
     i32.store
     i32.const 1
     set_global $~argc
     get_local $0
     i32.const 16
     i32.add
     get_local $0
     i32.load offset=8
     call_indirect (type $iv)
    else     
     get_global $std/gc-object/obj
     i32.const 1
     call_indirect (type $iv)
     get_global $~lib/collector/itcm/iter
     i32.load
     i32.const -4
     i32.and
     get_global $~lib/collector/itcm/toSpace
     i32.eq
     if
      get_global $~lib/collector/itcm/fromSpace
      set_local $0
      get_global $~lib/collector/itcm/toSpace
      set_global $~lib/collector/itcm/fromSpace
      get_local $0
      set_global $~lib/collector/itcm/toSpace
      get_global $~lib/collector/itcm/white
      i32.eqz
      set_global $~lib/collector/itcm/white
      get_local $0
      i32.load
      i32.const -4
      i32.and
      set_global $~lib/collector/itcm/iter
      i32.const 3
      set_global $~lib/collector/itcm/state
     end
    end
    br $break|0
   end
   get_global $~lib/collector/itcm/iter
   tee_local $0
   get_global $~lib/collector/itcm/toSpace
   i32.ne
   if
    get_local $0
    i32.load
    i32.const -4
    i32.and
    set_global $~lib/collector/itcm/iter
   else    
    get_global $~lib/collector/itcm/toSpace
    tee_local $0
    get_local $0
    i32.store
    get_local $0
    get_local $0
    i32.store offset=4
    i32.const 1
    set_global $~lib/collector/itcm/state
   end
  end
 )
 (func $~lib/collector/itcm/__gc_allocate (; 5 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  call $~lib/collector/itcm/step
  i32.const 24
  call $~lib/allocator/arena/__memory_allocate
  tee_local $0
  i32.const 2
  i32.store offset=8
  get_local $0
  get_local $0
  i32.load
  i32.const -4
  i32.and
  get_global $~lib/collector/itcm/white
  i32.or
  i32.store
  get_global $~lib/collector/itcm/fromSpace
  get_local $0
  call $~lib/collector/itcm/ManagedObjectList#push
  get_local $0
  i32.const 16
  i32.add
 )
 (func $std/gc-object/Base~gc (; 6 ;) (type $iv) (param $0 i32)
  get_local $0
  i32.eqz
  if
   return
  end
  get_local $0
  call $~lib/collector/itcm/__gc_mark
 )
 (func $std/gc-object/Custom~gc (; 7 ;) (type $iv) (param $0 i32)
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
 (func $~lib/collector/itcm/__gc_collect (; 8 ;) (type $v)
  (local $0 i32)
  block $break|0
   block $case1|0
    get_global $~lib/collector/itcm/state
    tee_local $0
    i32.eqz
    br_if $case1|0
    get_local $0
    i32.const 1
    i32.eq
    br_if $case1|0
    br $break|0
   end
   call $~lib/collector/itcm/step
  end
  loop $continue|1
   get_global $~lib/collector/itcm/state
   i32.const 1
   i32.ne
   if
    call $~lib/collector/itcm/step
    br $continue|1
   end
  end
 )
 (func $std/gc-object/main (; 9 ;) (type $v)
  get_global $~started
  i32.eqz
  if
   call $start
   i32.const 1
   set_global $~started
  end
 )
 (func $start (; 10 ;) (type $v)
  (local $0 i32)
  i32.const 8
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  i32.const 0
  set_global $~lib/collector/itcm/state
  call $~lib/collector/itcm/__gc_allocate
  tee_local $0
  i32.const 0
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  set_global $std/gc-object/obj
  call $~lib/collector/itcm/__gc_collect
  get_global $std/gc-object/obj
  get_global $std/gc-object/obj
  i32.store
  call $~lib/collector/itcm/__gc_collect
  i32.const 0
  set_global $std/gc-object/obj
  call $~lib/collector/itcm/__gc_collect
 )
 (func $null (; 11 ;) (type $v)
  nop
 )
)
