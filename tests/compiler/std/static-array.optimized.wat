(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00\00\00\00\00\01\00\00\00\02")
 (data (i32.const 24) "\08\00\00\00\02")
 (data (i32.const 32) "\10\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04")
 (data (i32.const 64) " \00\00\00\02")
 (data (i32.const 72) "\08")
 (data (i32.const 82) "\c0?\00\00 @")
 (data (i32.const 88) "H\00\00\00\02")
 (data (i32.const 96) "\10")
 (data (i32.const 110) "\f4?\00\00\00\00\00\00\02@")
 (data (i32.const 128) "`\00\00\00\02")
 (data (i32.const 136) "\13\00\00\00s\00t\00d\00/\00s\00t\00a\00t\00i\00c\00-\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 184) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 216) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
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
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 216
   i32.const 26
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 32
  get_local $0
  i32.const 7
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/allocator/arena/__memory_allocate
  tee_local $1
  get_local $0
  i32.store
  get_local $1
 )
 (func $~lib/internal/memory/memcpy (; 3 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $continue|0
   get_local $2
   if (result i32)
    get_local $1
    i32.const 3
    i32.and
   else    
    get_local $2
   end
   tee_local $3
   if
    get_local $0
    tee_local $4
    i32.const 1
    i32.add
    set_local $0
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $4
    get_local $3
    i32.load8_u
    i32.store8
    get_local $2
    i32.const 1
    i32.sub
    set_local $2
    br $continue|0
   end
  end
  get_local $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $continue|1
    get_local $2
    i32.const 16
    i32.ge_u
    if
     get_local $0
     get_local $1
     i32.load
     i32.store
     get_local $0
     i32.const 4
     i32.add
     get_local $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     get_local $0
     i32.const 8
     i32.add
     get_local $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     get_local $0
     i32.const 12
     i32.add
     get_local $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     get_local $1
     i32.const 16
     i32.add
     set_local $1
     get_local $0
     i32.const 16
     i32.add
     set_local $0
     get_local $2
     i32.const 16
     i32.sub
     set_local $2
     br $continue|1
    end
   end
   get_local $2
   i32.const 8
   i32.and
   if
    get_local $0
    get_local $1
    i32.load
    i32.store
    get_local $0
    i32.const 4
    i32.add
    get_local $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    get_local $0
    i32.const 8
    i32.add
    set_local $0
    get_local $1
    i32.const 8
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 4
   i32.and
   if
    get_local $0
    get_local $1
    i32.load
    i32.store
    get_local $0
    i32.const 4
    i32.add
    set_local $0
    get_local $1
    i32.const 4
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 2
   i32.and
   if
    get_local $0
    get_local $1
    i32.load16_u
    i32.store16
    get_local $0
    i32.const 2
    i32.add
    set_local $0
    get_local $1
    i32.const 2
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 1
   i32.and
   if
    get_local $1
    set_local $3
    get_local $0
    get_local $1
    i32.load8_u
    i32.store8
   end
   return
  end
  get_local $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      get_local $0
      i32.const 3
      i32.and
      tee_local $3
      i32.const 1
      i32.ne
      if
       get_local $3
       i32.const 2
       i32.eq
       br_if $case1|2
       get_local $3
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      get_local $1
      i32.load
      set_local $5
      get_local $0
      get_local $1
      tee_local $3
      i32.load8_u
      i32.store8
      get_local $0
      i32.const 1
      i32.add
      tee_local $1
      set_local $0
      get_local $1
      get_local $3
      i32.const 1
      i32.add
      tee_local $1
      i32.load8_u
      i32.store8
      get_local $0
      i32.const 1
      i32.add
      tee_local $4
      i32.const 1
      i32.add
      set_local $0
      get_local $1
      i32.const 1
      i32.add
      tee_local $3
      i32.const 1
      i32.add
      set_local $1
      get_local $4
      get_local $3
      i32.load8_u
      i32.store8
      get_local $2
      i32.const 3
      i32.sub
      set_local $2
      loop $continue|3
       get_local $2
       i32.const 17
       i32.ge_u
       if
        get_local $0
        get_local $1
        i32.const 1
        i32.add
        i32.load
        tee_local $3
        i32.const 8
        i32.shl
        get_local $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        get_local $0
        i32.const 4
        i32.add
        get_local $1
        i32.const 5
        i32.add
        i32.load
        tee_local $5
        i32.const 8
        i32.shl
        get_local $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        get_local $0
        i32.const 8
        i32.add
        get_local $1
        i32.const 9
        i32.add
        i32.load
        tee_local $3
        i32.const 8
        i32.shl
        get_local $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        get_local $0
        i32.const 12
        i32.add
        get_local $1
        i32.const 13
        i32.add
        i32.load
        tee_local $5
        i32.const 8
        i32.shl
        get_local $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        get_local $1
        i32.const 16
        i32.add
        set_local $1
        get_local $0
        i32.const 16
        i32.add
        set_local $0
        get_local $2
        i32.const 16
        i32.sub
        set_local $2
        br $continue|3
       end
      end
      br $break|2
     end
     get_local $1
     i32.load
     set_local $5
     get_local $0
     get_local $1
     i32.load8_u
     i32.store8
     get_local $0
     i32.const 1
     i32.add
     tee_local $4
     i32.const 1
     i32.add
     set_local $0
     get_local $1
     i32.const 1
     i32.add
     tee_local $3
     i32.const 1
     i32.add
     set_local $1
     get_local $4
     get_local $3
     i32.load8_u
     i32.store8
     get_local $2
     i32.const 2
     i32.sub
     set_local $2
     loop $continue|4
      get_local $2
      i32.const 18
      i32.ge_u
      if
       get_local $0
       get_local $1
       i32.const 2
       i32.add
       i32.load
       tee_local $3
       i32.const 16
       i32.shl
       get_local $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       get_local $0
       i32.const 4
       i32.add
       get_local $1
       i32.const 6
       i32.add
       i32.load
       tee_local $5
       i32.const 16
       i32.shl
       get_local $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       get_local $0
       i32.const 8
       i32.add
       get_local $1
       i32.const 10
       i32.add
       i32.load
       tee_local $3
       i32.const 16
       i32.shl
       get_local $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       get_local $0
       i32.const 12
       i32.add
       get_local $1
       i32.const 14
       i32.add
       i32.load
       tee_local $5
       i32.const 16
       i32.shl
       get_local $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       get_local $1
       i32.const 16
       i32.add
       set_local $1
       get_local $0
       i32.const 16
       i32.add
       set_local $0
       get_local $2
       i32.const 16
       i32.sub
       set_local $2
       br $continue|4
      end
     end
     br $break|2
    end
    get_local $1
    i32.load
    set_local $5
    get_local $0
    tee_local $4
    i32.const 1
    i32.add
    set_local $0
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $4
    get_local $3
    i32.load8_u
    i32.store8
    get_local $2
    i32.const 1
    i32.sub
    set_local $2
    loop $continue|5
     get_local $2
     i32.const 19
     i32.ge_u
     if
      get_local $0
      get_local $1
      i32.const 3
      i32.add
      i32.load
      tee_local $3
      i32.const 24
      i32.shl
      get_local $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      get_local $0
      i32.const 4
      i32.add
      get_local $1
      i32.const 7
      i32.add
      i32.load
      tee_local $5
      i32.const 24
      i32.shl
      get_local $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      get_local $0
      i32.const 8
      i32.add
      get_local $1
      i32.const 11
      i32.add
      i32.load
      tee_local $3
      i32.const 24
      i32.shl
      get_local $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      get_local $0
      i32.const 12
      i32.add
      get_local $1
      i32.const 15
      i32.add
      i32.load
      tee_local $5
      i32.const 24
      i32.shl
      get_local $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      get_local $1
      i32.const 16
      i32.add
      set_local $1
      get_local $0
      i32.const 16
      i32.add
      set_local $0
      get_local $2
      i32.const 16
      i32.sub
      set_local $2
      br $continue|5
     end
    end
   end
  end
  get_local $2
  i32.const 16
  i32.and
  if
   get_local $0
   get_local $1
   tee_local $3
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $1
   set_local $0
   get_local $1
   get_local $3
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $4
   i32.const 1
   i32.add
   set_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $3
   i32.const 1
   i32.add
   set_local $1
   get_local $4
   get_local $3
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 8
  i32.and
  if
   get_local $0
   get_local $1
   tee_local $3
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $1
   set_local $0
   get_local $1
   get_local $3
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $4
   i32.const 1
   i32.add
   set_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $3
   i32.const 1
   i32.add
   set_local $1
   get_local $4
   get_local $3
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 4
  i32.and
  if
   get_local $0
   get_local $1
   tee_local $3
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $1
   set_local $0
   get_local $1
   get_local $3
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $4
   i32.const 1
   i32.add
   set_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $3
   i32.const 1
   i32.add
   set_local $1
   get_local $4
   get_local $3
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 2
  i32.and
  if
   get_local $0
   get_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $4
   i32.const 1
   i32.add
   set_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $3
   i32.const 1
   i32.add
   set_local $1
   get_local $4
   get_local $3
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 1
  i32.and
  if
   get_local $1
   set_local $3
   get_local $0
   get_local $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/internal/memory/memmove (; 4 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  get_local $1
  i32.eq
  if
   return
  end
  get_local $1
  get_local $2
  i32.add
  get_local $0
  i32.le_u
  tee_local $3
  i32.eqz
  if
   get_local $0
   get_local $2
   i32.add
   get_local $1
   i32.le_u
   set_local $3
  end
  get_local $3
  if
   get_local $0
   get_local $1
   get_local $2
   call $~lib/internal/memory/memcpy
   return
  end
  get_local $0
  get_local $1
  i32.lt_u
  if
   get_local $1
   i32.const 7
   i32.and
   get_local $0
   i32.const 7
   i32.and
   i32.eq
   if
    loop $continue|0
     get_local $0
     i32.const 7
     i32.and
     if
      get_local $2
      i32.eqz
      if
       return
      end
      get_local $2
      i32.const 1
      i32.sub
      set_local $2
      get_local $0
      tee_local $4
      tee_local $3
      i32.const 1
      i32.add
      set_local $0
      get_local $1
      tee_local $3
      i32.const 1
      i32.add
      set_local $1
      get_local $4
      get_local $3
      i32.load8_u
      i32.store8
      br $continue|0
     end
    end
    loop $continue|1
     get_local $2
     i32.const 8
     i32.ge_u
     if
      get_local $0
      get_local $1
      i64.load
      i64.store
      get_local $2
      i32.const 8
      i32.sub
      set_local $2
      get_local $0
      i32.const 8
      i32.add
      set_local $0
      get_local $1
      i32.const 8
      i32.add
      set_local $1
      br $continue|1
     end
    end
   end
   loop $continue|2
    get_local $2
    if
     get_local $0
     tee_local $4
     tee_local $3
     i32.const 1
     i32.add
     set_local $0
     get_local $1
     tee_local $3
     i32.const 1
     i32.add
     set_local $1
     get_local $4
     get_local $3
     i32.load8_u
     i32.store8
     get_local $2
     i32.const 1
     i32.sub
     set_local $2
     br $continue|2
    end
   end
  else   
   get_local $1
   i32.const 7
   i32.and
   get_local $0
   i32.const 7
   i32.and
   i32.eq
   if
    loop $continue|3
     get_local $0
     get_local $2
     i32.add
     i32.const 7
     i32.and
     if
      get_local $2
      i32.eqz
      if
       return
      end
      get_local $2
      i32.const 1
      i32.sub
      tee_local $2
      get_local $0
      i32.add
      get_local $1
      get_local $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|3
     end
    end
    loop $continue|4
     get_local $2
     i32.const 8
     i32.ge_u
     if
      get_local $2
      i32.const 8
      i32.sub
      tee_local $2
      get_local $0
      i32.add
      get_local $1
      get_local $2
      i32.add
      i64.load
      i64.store
      br $continue|4
     end
    end
   end
   loop $continue|5
    get_local $2
    if
     get_local $2
     i32.const 1
     i32.sub
     tee_local $2
     get_local $0
     i32.add
     get_local $1
     get_local $2
     i32.add
     i32.load8_u
     i32.store8
     br $continue|5
    end
   end
  end
 )
 (func $~lib/internal/memory/memset (; 5 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  get_local $1
  i32.eqz
  if
   return
  end
  get_local $0
  i32.const 0
  i32.store8
  get_local $0
  get_local $1
  i32.add
  i32.const 1
  i32.sub
  i32.const 0
  i32.store8
  get_local $1
  i32.const 2
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 1
  i32.add
  i32.const 0
  i32.store8
  get_local $0
  i32.const 2
  i32.add
  i32.const 0
  i32.store8
  get_local $0
  get_local $1
  i32.add
  tee_local $2
  i32.const 2
  i32.sub
  i32.const 0
  i32.store8
  get_local $2
  i32.const 3
  i32.sub
  i32.const 0
  i32.store8
  get_local $1
  i32.const 6
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 3
  i32.add
  i32.const 0
  i32.store8
  get_local $0
  get_local $1
  i32.add
  i32.const 4
  i32.sub
  i32.const 0
  i32.store8
  get_local $1
  i32.const 8
  i32.le_u
  if
   return
  end
  i32.const 0
  get_local $0
  i32.sub
  i32.const 3
  i32.and
  tee_local $2
  get_local $0
  i32.add
  tee_local $0
  i32.const 0
  i32.store
  get_local $1
  get_local $2
  i32.sub
  i32.const -4
  i32.and
  tee_local $1
  get_local $0
  i32.add
  i32.const 4
  i32.sub
  i32.const 0
  i32.store
  get_local $1
  i32.const 8
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 4
  i32.add
  i32.const 0
  i32.store
  get_local $0
  i32.const 8
  i32.add
  i32.const 0
  i32.store
  get_local $0
  get_local $1
  i32.add
  tee_local $2
  i32.const 12
  i32.sub
  i32.const 0
  i32.store
  get_local $2
  i32.const 8
  i32.sub
  i32.const 0
  i32.store
  get_local $1
  i32.const 24
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 12
  i32.add
  i32.const 0
  i32.store
  get_local $0
  i32.const 16
  i32.add
  i32.const 0
  i32.store
  get_local $0
  i32.const 20
  i32.add
  i32.const 0
  i32.store
  get_local $0
  i32.const 24
  i32.add
  i32.const 0
  i32.store
  get_local $0
  get_local $1
  i32.add
  tee_local $2
  i32.const 28
  i32.sub
  i32.const 0
  i32.store
  get_local $2
  i32.const 24
  i32.sub
  i32.const 0
  i32.store
  get_local $2
  i32.const 20
  i32.sub
  i32.const 0
  i32.store
  get_local $2
  i32.const 16
  i32.sub
  i32.const 0
  i32.store
  get_local $0
  i32.const 4
  i32.and
  i32.const 24
  i32.add
  tee_local $2
  get_local $0
  i32.add
  set_local $0
  get_local $1
  get_local $2
  i32.sub
  set_local $1
  loop $continue|0
   get_local $1
   i32.const 32
   i32.ge_u
   if
    get_local $0
    i64.const 0
    i64.store
    get_local $0
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    get_local $0
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    get_local $0
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    get_local $1
    i32.const 32
    i32.sub
    set_local $1
    get_local $0
    i32.const 32
    i32.add
    set_local $0
    br $continue|0
   end
  end
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $1
  get_local $0
  i32.load
  tee_local $2
  i32.gt_s
  if
   get_local $1
   i32.const 1073741816
   i32.gt_s
   if
    i32.const 0
    i32.const 216
    i32.const 40
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   get_local $1
   i32.const 1
   i32.const 32
   get_local $2
   i32.const 7
   i32.add
   i32.clz
   i32.sub
   i32.shl
   i32.const 8
   i32.sub
   i32.le_s
   if
    get_local $0
    get_local $1
    i32.store
   else    
    get_local $1
    call $~lib/internal/arraybuffer/allocateUnsafe
    tee_local $3
    i32.const 8
    i32.add
    get_local $0
    i32.const 8
    i32.add
    get_local $2
    call $~lib/internal/memory/memmove
    get_local $3
    set_local $0
   end
   get_local $0
   i32.const 8
   i32.add
   get_local $2
   i32.add
   get_local $1
   get_local $2
   i32.sub
   call $~lib/internal/memory/memset
  else   
   get_local $1
   get_local $2
   i32.lt_s
   if
    get_local $1
    i32.const 0
    i32.lt_s
    if
     i32.const 0
     i32.const 216
     i32.const 62
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $0
    get_local $1
    i32.store
   end
  end
  get_local $0
 )
 (func $~lib/array/Array<i32>#__set (; 7 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 24
  i32.load
  tee_local $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 24
   get_local $0
   i32.const 4
   call $~lib/internal/arraybuffer/reallocateUnsafe
   tee_local $0
   i32.store
   i32.const 28
   i32.const 1
   i32.store
  end
  get_local $0
  i32.const 2
  i32.store offset=8
 )
 (func $~lib/array/Array<i64>#__set (; 8 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 64
  i32.load
  tee_local $0
  i32.load
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 64
   get_local $0
   i32.const 8
   call $~lib/internal/arraybuffer/reallocateUnsafe
   tee_local $0
   i32.store
   i32.const 68
   i32.const 1
   i32.store
  end
  get_local $0
  i64.const 4
  i64.store offset=8
 )
 (func $~lib/array/Array<f32>#__set (; 9 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 88
  i32.load
  tee_local $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 88
   get_local $0
   i32.const 4
   call $~lib/internal/arraybuffer/reallocateUnsafe
   tee_local $0
   i32.store
   i32.const 92
   i32.const 1
   i32.store
  end
  get_local $0
  f32.const 2.5
  f32.store offset=8
 )
 (func $~lib/array/Array<f64>#__set (; 10 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 128
  i32.load
  tee_local $0
  i32.load
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 128
   get_local $0
   i32.const 8
   call $~lib/internal/arraybuffer/reallocateUnsafe
   tee_local $0
   i32.store
   i32.const 132
   i32.const 1
   i32.store
  end
  get_local $0
  f64.const 2.25
  f64.store offset=8
 )
 (func $start (; 11 ;) (type $v)
  (local $0 i32)
  i32.const 280
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  i32.const 28
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 136
   i32.const 8
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 24
  i32.load
  tee_local $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $0
   i32.load offset=8
  else   
   unreachable
  end
  tee_local $0
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 136
   i32.const 9
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 24
  i32.load
  tee_local $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  tee_local $0
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 136
   i32.const 10
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/array/Array<i32>#__set
  i32.const 0
  i32.const 24
  i32.load
  tee_local $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $0
   i32.load offset=8
  else   
   unreachable
  end
  tee_local $0
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 136
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 68
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 136
   i32.const 14
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 64
  i32.load
  tee_local $0
  i32.load
  i32.const 3
  i32.shr_u
  i32.lt_u
  if (result i64)
   get_local $0
   i64.load offset=8
  else   
   unreachable
  end
  i64.const 3
  i64.ne
  if
   i32.const 0
   i32.const 136
   i32.const 15
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 64
  i32.load
  tee_local $0
  i32.load
  i32.const 3
  i32.shr_u
  i32.lt_u
  if (result i64)
   get_local $0
   i32.const 8
   i32.add
   i64.load offset=8
  else   
   unreachable
  end
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 136
   i32.const 16
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/array/Array<i64>#__set
  i32.const 0
  i32.const 64
  i32.load
  tee_local $0
  i32.load
  i32.const 3
  i32.shr_u
  i32.lt_u
  if (result i64)
   get_local $0
   i64.load offset=8
  else   
   unreachable
  end
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 136
   i32.const 18
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 92
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 136
   i32.const 20
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 88
  i32.load
  tee_local $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result f32)
   get_local $0
   f32.load offset=8
  else   
   unreachable
  end
  f32.const 1.5
  f32.ne
  if
   i32.const 0
   i32.const 136
   i32.const 21
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 88
  i32.load
  tee_local $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result f32)
   get_local $0
   i32.const 4
   i32.add
   f32.load offset=8
  else   
   unreachable
  end
  f32.const 2.5
  f32.ne
  if
   i32.const 0
   i32.const 136
   i32.const 22
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/array/Array<f32>#__set
  i32.const 0
  i32.const 88
  i32.load
  tee_local $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result f32)
   get_local $0
   f32.load offset=8
  else   
   unreachable
  end
  f32.const 2.5
  f32.ne
  if
   i32.const 0
   i32.const 136
   i32.const 24
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 132
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 136
   i32.const 26
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 128
  i32.load
  tee_local $0
  i32.load
  i32.const 3
  i32.shr_u
  i32.lt_u
  if (result f64)
   get_local $0
   f64.load offset=8
  else   
   unreachable
  end
  f64.const 1.25
  f64.ne
  if
   i32.const 0
   i32.const 136
   i32.const 27
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 128
  i32.load
  tee_local $0
  i32.load
  i32.const 3
  i32.shr_u
  i32.lt_u
  if (result f64)
   get_local $0
   i32.const 8
   i32.add
   f64.load offset=8
  else   
   unreachable
  end
  f64.const 2.25
  f64.ne
  if
   i32.const 0
   i32.const 136
   i32.const 28
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $~lib/array/Array<f64>#__set
  i32.const 0
  i32.const 128
  i32.load
  tee_local $0
  i32.load
  i32.const 3
  i32.shr_u
  i32.lt_u
  if (result f64)
   get_local $0
   f64.load offset=8
  else   
   unreachable
  end
  f64.const 2.25
  f64.ne
  if
   i32.const 0
   i32.const 136
   i32.const 30
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 12 ;) (type $v)
  nop
 )
)
