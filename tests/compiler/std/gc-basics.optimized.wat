(module
 (type $iv (func (param i32)))
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $i (func (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$v (func))
 (memory $0 1 65535)
 (data (i32.const 16) "\03\00\00\00\00\00\00\00\10\00\00\00s\00t\00d\00/\00g\00c\00-\00b\00a\00s\00i\00c\00s\00.\00t\00s")
 (table 4 anyfunc)
 (elem (i32.const 0) $null $std/gc-basics/MyObject_visit $~lib/collector/itcm/__gc_mark $~lib/string/String~gc)
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/white (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/fromSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/toSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $std/gc-basics/obj (mut i32) (i32.const 0))
 (global $std/gc-basics/obj2 (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $std/gc-basics/main))
 (func $std/gc-basics/MyObject_visit (; 1 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  nop
 )
 (func $~lib/allocator/arena/__memory_allocate (; 2 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/collector/itcm/ManagedObjectList#clear (; 3 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  get_local $0
  get_local $0
  i32.store
  get_local $0
  get_local $0
  i32.store offset=4
 )
 (func $~lib/collector/itcm/ManagedObject#get:color (; 4 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
  i32.const 3
  i32.and
 )
 (func $~lib/collector/itcm/ManagedObject#get:next (; 5 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
  i32.const -4
  i32.and
 )
 (func $~lib/collector/itcm/ManagedObject#set:next (; 6 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  get_local $0
  i32.load
  i32.const 3
  i32.and
  i32.or
  i32.store
 )
 (func $~lib/collector/itcm/ManagedObject#unlink (; 7 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (local $1 i32)
  get_local $0
  call $~lib/collector/itcm/ManagedObject#get:next
  tee_local $1
  get_local $0
  i32.load offset=4
  tee_local $0
  i32.store offset=4
  get_local $0
  get_local $1
  call $~lib/collector/itcm/ManagedObject#set:next
 )
 (func $~lib/collector/itcm/ManagedObjectList#push (; 8 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $~lib/collector/itcm/ManagedObject#makeGray (; 9 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
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
  i32.const -4
  i32.and
  i32.const 2
  i32.or
  i32.store
 )
 (func $~lib/collector/itcm/__gc_mark (; 10 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (local $1 i32)
  get_local $0
  if
   get_local $0
   i32.const 16
   i32.sub
   tee_local $1
   call $~lib/collector/itcm/ManagedObject#get:color
   get_global $~lib/collector/itcm/white
   i32.eq
   if
    get_local $1
    call $~lib/collector/itcm/ManagedObject#makeGray
   end
  end
 )
 (func $~lib/collector/itcm/ManagedObject#set:color (; 11 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $0
  i32.load
  i32.const -4
  i32.and
  get_local $1
  i32.or
  i32.store
 )
 (func $~lib/collector/itcm/step (; 12 ;) (; has Stack IR ;) (type $v)
  (local $0 i32)
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      get_global $~lib/collector/itcm/state
      tee_local $0
      if
       block $tablify|0
        get_local $0
        i32.const 1
        i32.sub
        br_table $case1|0 $case2|0 $case3|0 $tablify|0
       end
       br $break|0
      end
      i32.const 16
      call $~lib/allocator/arena/__memory_allocate
      tee_local $0
      set_global $~lib/collector/itcm/fromSpace
      get_global $~lib/collector/itcm/fromSpace
      i32.const -1
      i32.store offset=8
      get_global $~lib/collector/itcm/fromSpace
      call $~lib/collector/itcm/ManagedObjectList#clear
      i32.const 16
      call $~lib/allocator/arena/__memory_allocate
      tee_local $0
      set_global $~lib/collector/itcm/toSpace
      get_global $~lib/collector/itcm/toSpace
      i32.const -1
      i32.store offset=8
      get_global $~lib/collector/itcm/toSpace
      call $~lib/collector/itcm/ManagedObjectList#clear
      get_global $~lib/collector/itcm/toSpace
      set_global $~lib/collector/itcm/iter
      i32.const 1
      set_global $~lib/collector/itcm/state
     end
     call $~iterateRoots
     i32.const 2
     set_global $~lib/collector/itcm/state
     br $break|0
    end
    get_global $~lib/collector/itcm/iter
    call $~lib/collector/itcm/ManagedObject#get:next
    tee_local $0
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
     get_local $0
     i32.const 16
     i32.add
     get_local $0
     i32.load offset=8
     call_indirect (type $iv)
    else     
     call $~iterateRoots
     get_global $~lib/collector/itcm/iter
     call $~lib/collector/itcm/ManagedObject#get:next
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
      call $~lib/collector/itcm/ManagedObject#get:next
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
    call $~lib/collector/itcm/ManagedObject#get:next
    set_global $~lib/collector/itcm/iter
    get_local $0
    i32.const 60
    i32.ge_u
    if
     get_local $0
     call $std/gc-basics/MyObject_visit
    end
   else    
    get_global $~lib/collector/itcm/toSpace
    call $~lib/collector/itcm/ManagedObjectList#clear
    i32.const 1
    set_global $~lib/collector/itcm/state
   end
  end
 )
 (func $~lib/collector/itcm/__gc_allocate (; 13 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  call $~lib/collector/itcm/step
  i32.const 20
  call $~lib/allocator/arena/__memory_allocate
  tee_local $0
  i32.const 1
  i32.store offset=8
  get_local $0
  get_global $~lib/collector/itcm/white
  call $~lib/collector/itcm/ManagedObject#set:color
  get_global $~lib/collector/itcm/fromSpace
  get_local $0
  call $~lib/collector/itcm/ManagedObjectList#push
  get_local $0
  i32.const 16
  i32.add
 )
 (func $~lib/string/String~gc (; 14 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  get_local $0
  i32.eqz
  if
   return
  end
  get_local $0
  call $~lib/collector/itcm/__gc_mark
 )
 (func $~lib/collector/itcm/__gc_collect (; 15 ;) (; has Stack IR ;) (type $v)
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
 (func $~lib/gc/gc.collect (; 16 ;) (; has Stack IR ;) (type $v)
  call $~lib/collector/itcm/__gc_collect
 )
 (func $std/gc-basics/main (; 17 ;) (; has Stack IR ;) (type $i) (result i32)
  get_global $~started
  i32.eqz
  if
   call $start
   i32.const 1
   set_global $~started
  end
  i32.const 0
 )
 (func $start (; 18 ;) (; has Stack IR ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 64
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  i32.const 0
  set_global $~lib/collector/itcm/state
  call $~lib/collector/itcm/__gc_allocate
  set_global $std/gc-basics/obj
  get_global $std/gc-basics/obj
  i32.const 123
  i32.store
  get_global $std/gc-basics/obj
  i32.const 16
  i32.sub
  tee_local $0
  i32.load offset=4
  set_local $2
  get_local $0
  i32.load
  i32.const -4
  i32.and
  tee_local $3
  i32.const 0
  i32.ne
  tee_local $1
  if
   get_local $2
   i32.const 0
   i32.ne
   set_local $1
  end
  get_local $1
  if
   get_local $3
   get_local $2
   i32.eq
   set_local $1
  end
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 19
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 21
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=12
  if
   i32.const 0
   i32.const 24
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=16
  i32.const 123
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 25
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  call $~lib/gc/gc.collect
  i32.const 0
  set_global $std/gc-basics/obj
  call $~lib/gc/gc.collect
 )
 (func $null (; 19 ;) (; has Stack IR ;) (type $v)
  nop
 )
 (func $~iterateRoots (; 20 ;) (; has Stack IR ;) (type $FUNCSIG$v)
  get_global $std/gc-basics/obj
  i32.const 2
  call_indirect (type $iv)
  get_global $std/gc-basics/obj2
  i32.const 2
  call_indirect (type $iv)
 )
)
