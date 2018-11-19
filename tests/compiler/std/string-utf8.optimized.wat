(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\06\00\00\00\01\d87\dch\00i\00R\d8b\df")
 (data (i32.const 24) "\12\00\00\00s\00t\00d\00/\00s\00t\00r\00i\00n\00g\00-\00u\00t\00f\008\00.\00t\00s")
 (data (i32.const 72) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 104) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 160) "\02\00\00\00\01\d87\dc")
 (data (i32.const 168) "\02\00\00\00h\00i")
 (data (i32.const 176) "\02\00\00\00R\d8b\df")
 (data (i32.const 184) "\01")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/string-utf8/str (mut i32) (i32.const 8))
 (global $std/string-utf8/len (mut i32) (i32.const 0))
 (global $std/string-utf8/ptr (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/string/String#get:lengthUTF8 (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  set_local $1
  get_local $0
  i32.load
  set_local $4
  loop $continue|0
   get_local $2
   get_local $4
   i32.lt_u
   if
    get_local $0
    get_local $2
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u offset=4
    tee_local $3
    i32.const 128
    i32.lt_u
    if (result i32)
     get_local $1
     i32.const 1
     i32.add
     set_local $1
     get_local $2
     i32.const 1
     i32.add
    else     
     get_local $3
     i32.const 2048
     i32.lt_u
     if (result i32)
      get_local $1
      i32.const 2
      i32.add
      set_local $1
      get_local $2
      i32.const 1
      i32.add
     else      
      get_local $3
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      tee_local $3
      if
       get_local $2
       i32.const 1
       i32.add
       get_local $4
       i32.lt_u
       set_local $3
      end
      get_local $3
      if
       get_local $0
       get_local $2
       i32.const 1
       i32.add
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u offset=4
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       set_local $3
      end
      get_local $3
      if (result i32)
       get_local $1
       i32.const 4
       i32.add
       set_local $1
       get_local $2
       i32.const 2
       i32.add
      else       
       get_local $1
       i32.const 3
       i32.add
       set_local $1
       get_local $2
       i32.const 1
       i32.add
      end
     end
    end
    set_local $2
    br $continue|0
   end
  end
  get_local $1
 )
 (func $~lib/allocator/arena/__memory_allocate (; 2 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/string/String#toUTF8 (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  call $~lib/string/String#get:lengthUTF8
  call $~lib/allocator/arena/__memory_allocate
  set_local $5
  get_local $0
  i32.load
  set_local $7
  loop $continue|0
   get_local $3
   get_local $7
   i32.lt_u
   if
    get_local $0
    get_local $3
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u offset=4
    tee_local $1
    i32.const 128
    i32.lt_u
    if
     get_local $5
     get_local $2
     i32.add
     get_local $1
     i32.store8
     get_local $2
     i32.const 1
     i32.add
     set_local $2
    else     
     get_local $1
     i32.const 2048
     i32.lt_u
     if
      get_local $5
      get_local $2
      i32.add
      tee_local $4
      get_local $1
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      i32.store8
      get_local $4
      get_local $1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      get_local $2
      i32.const 2
      i32.add
      set_local $2
     else      
      get_local $5
      get_local $2
      i32.add
      set_local $4
      get_local $1
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      tee_local $6
      if
       get_local $3
       i32.const 1
       i32.add
       get_local $7
       i32.lt_u
       set_local $6
      end
      get_local $6
      if
       get_local $0
       get_local $3
       i32.const 1
       i32.add
       i32.const 1
       i32.shl
       i32.add
       i32.load16_u offset=4
       tee_local $6
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        get_local $4
        get_local $1
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        get_local $6
        i32.const 1023
        i32.and
        i32.add
        tee_local $1
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.store8
        get_local $4
        get_local $1
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        get_local $4
        get_local $1
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=2
        get_local $4
        get_local $1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=3
        get_local $2
        i32.const 4
        i32.add
        set_local $2
        get_local $3
        i32.const 2
        i32.add
        set_local $3
        br $continue|0
       end
      end
      get_local $4
      get_local $1
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      i32.store8
      get_local $4
      get_local $1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      get_local $4
      get_local $1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      get_local $2
      i32.const 3
      i32.add
      set_local $2
     end
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $continue|0
   end
  end
  get_local $5
  get_local $2
  i32.add
  i32.const 0
  i32.store8
  get_local $5
 )
 (func $~lib/internal/string/allocateUnsafe (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.const 0
  i32.gt_s
  tee_local $1
  if
   get_local $0
   i32.const 536870910
   i32.le_s
   set_local $1
  end
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 104
   i32.const 14
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 1
  i32.shl
  i32.const 4
  i32.add
  call $~lib/allocator/arena/__memory_allocate
  tee_local $1
  get_local $0
  i32.store
  get_local $1
 )
 (func $~lib/internal/memory/memcpy (; 5 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
        get_local $5
        i32.const 24
        i32.shr_u
        get_local $1
        i32.const 1
        i32.add
        i32.load
        tee_local $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        get_local $0
        i32.const 4
        i32.add
        get_local $3
        i32.const 24
        i32.shr_u
        get_local $1
        i32.const 5
        i32.add
        i32.load
        tee_local $5
        i32.const 8
        i32.shl
        i32.or
        i32.store
        get_local $0
        i32.const 8
        i32.add
        get_local $5
        i32.const 24
        i32.shr_u
        get_local $1
        i32.const 9
        i32.add
        i32.load
        tee_local $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        get_local $0
        i32.const 12
        i32.add
        get_local $3
        i32.const 24
        i32.shr_u
        get_local $1
        i32.const 13
        i32.add
        i32.load
        tee_local $5
        i32.const 8
        i32.shl
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
       get_local $5
       i32.const 16
       i32.shr_u
       get_local $1
       i32.const 2
       i32.add
       i32.load
       tee_local $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       get_local $0
       i32.const 4
       i32.add
       get_local $3
       i32.const 16
       i32.shr_u
       get_local $1
       i32.const 6
       i32.add
       i32.load
       tee_local $5
       i32.const 16
       i32.shl
       i32.or
       i32.store
       get_local $0
       i32.const 8
       i32.add
       get_local $5
       i32.const 16
       i32.shr_u
       get_local $1
       i32.const 10
       i32.add
       i32.load
       tee_local $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       get_local $0
       i32.const 12
       i32.add
       get_local $3
       i32.const 16
       i32.shr_u
       get_local $1
       i32.const 14
       i32.add
       i32.load
       tee_local $5
       i32.const 16
       i32.shl
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
      get_local $5
      i32.const 8
      i32.shr_u
      get_local $1
      i32.const 3
      i32.add
      i32.load
      tee_local $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      get_local $0
      i32.const 4
      i32.add
      get_local $3
      i32.const 8
      i32.shr_u
      get_local $1
      i32.const 7
      i32.add
      i32.load
      tee_local $5
      i32.const 24
      i32.shl
      i32.or
      i32.store
      get_local $0
      i32.const 8
      i32.add
      get_local $5
      i32.const 8
      i32.shr_u
      get_local $1
      i32.const 11
      i32.add
      i32.load
      tee_local $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      get_local $0
      i32.const 12
      i32.add
      get_local $3
      i32.const 8
      i32.shr_u
      get_local $1
      i32.const 15
      i32.add
      i32.load
      tee_local $5
      i32.const 24
      i32.shl
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
 (func $~lib/internal/memory/memmove (; 6 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
      get_local $0
      get_local $2
      i32.const 1
      i32.sub
      tee_local $2
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
      get_local $0
      get_local $2
      i32.const 8
      i32.sub
      tee_local $2
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
     get_local $0
     get_local $2
     i32.const 1
     i32.sub
     tee_local $2
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
 (func $~lib/string/String.fromUTF8 (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $1
  i32.const 1
  i32.lt_u
  if
   i32.const 64
   return
  end
  get_local $1
  i32.const 1
  i32.shl
  call $~lib/allocator/arena/__memory_allocate
  set_local $6
  loop $continue|0
   get_local $2
   get_local $1
   i32.lt_u
   if
    get_local $2
    tee_local $3
    i32.const 1
    i32.add
    set_local $2
    get_local $0
    get_local $3
    i32.add
    i32.load8_u
    tee_local $3
    i32.const 128
    i32.lt_u
    if (result i32)
     get_local $6
     get_local $4
     i32.add
     get_local $3
     i32.store16
     get_local $4
     i32.const 2
     i32.add
    else     
     get_local $3
     i32.const 191
     i32.gt_u
     tee_local $5
     if
      get_local $3
      i32.const 224
      i32.lt_u
      set_local $5
     end
     get_local $5
     if
      get_local $2
      i32.const 1
      i32.add
      get_local $1
      i32.gt_u
      if
       i32.const 0
       i32.const 72
       i32.const 510
       i32.const 8
       call $~lib/env/abort
       unreachable
      end
      get_local $2
      tee_local $5
      i32.const 1
      i32.add
      set_local $2
      get_local $6
      get_local $4
      i32.add
      get_local $3
      i32.const 31
      i32.and
      i32.const 6
      i32.shl
      get_local $0
      get_local $5
      i32.add
      i32.load8_u
      i32.const 63
      i32.and
      i32.or
      i32.store16
     else      
      get_local $3
      i32.const 239
      i32.gt_u
      tee_local $5
      if
       get_local $3
       i32.const 365
       i32.lt_u
       set_local $5
      end
      get_local $5
      if
       get_local $2
       i32.const 3
       i32.add
       get_local $1
       i32.gt_u
       if
        i32.const 0
        i32.const 72
        i32.const 514
        i32.const 8
        call $~lib/env/abort
        unreachable
       end
       get_local $6
       get_local $4
       i32.add
       get_local $3
       i32.const 7
       i32.and
       i32.const 18
       i32.shl
       get_local $0
       get_local $2
       tee_local $5
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 12
       i32.shl
       i32.or
       get_local $0
       get_local $2
       i32.const 1
       i32.add
       tee_local $2
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       tee_local $3
       get_local $0
       get_local $2
       i32.const 1
       i32.add
       tee_local $2
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       i32.or
       i32.const 65536
       i32.sub
       tee_local $3
       i32.const 10
       i32.shr_u
       i32.const 55296
       i32.add
       i32.store16
       get_local $6
       get_local $4
       i32.const 2
       i32.add
       tee_local $4
       i32.add
       get_local $3
       i32.const 1023
       i32.and
       i32.const 56320
       i32.add
       i32.store16
      else       
       get_local $2
       i32.const 2
       i32.add
       get_local $1
       i32.gt_u
       if
        i32.const 0
        i32.const 72
        i32.const 526
        i32.const 8
        call $~lib/env/abort
        unreachable
       end
       get_local $6
       get_local $4
       i32.add
       get_local $3
       i32.const 15
       i32.and
       i32.const 12
       i32.shl
       get_local $0
       get_local $2
       tee_local $5
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       tee_local $3
       get_local $0
       get_local $2
       i32.const 1
       i32.add
       tee_local $2
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       i32.or
       i32.store16
      end
      get_local $2
      i32.const 1
      i32.add
      set_local $2
     end
     get_local $4
     i32.const 2
     i32.add
    end
    set_local $4
    br $continue|0
   end
  end
  get_local $2
  get_local $1
  i32.ne
  if
   i32.const 0
   i32.const 72
   i32.const 535
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $4
  i32.const 1
  i32.shr_u
  call $~lib/internal/string/allocateUnsafe
  tee_local $0
  i32.const 4
  i32.add
  get_local $6
  get_local $4
  call $~lib/internal/memory/memmove
  get_local $0
 )
 (func $~lib/internal/string/compareUnsafe (; 8 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/string/String.__eq (; 9 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  get_local $1
  i32.eq
  if
   i32.const 1
   return
  end
  get_local $0
  i32.eqz
  tee_local $2
  i32.eqz
  if
   get_local $1
   i32.eqz
   set_local $2
  end
  get_local $2
  if
   i32.const 0
   return
  end
  get_local $0
  i32.load
  tee_local $2
  get_local $1
  i32.load
  i32.ne
  if
   i32.const 0
   return
  end
  get_local $0
  get_local $1
  get_local $2
  call $~lib/internal/string/compareUnsafe
  i32.eqz
 )
 (func $start (; 10 ;) (type $v)
  i32.const 192
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  get_global $std/string-utf8/str
  call $~lib/string/String#get:lengthUTF8
  set_global $std/string-utf8/len
  get_global $std/string-utf8/len
  i32.const 11
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 7
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/string-utf8/str
  call $~lib/string/String#toUTF8
  set_global $std/string-utf8/ptr
  get_global $std/string-utf8/ptr
  i32.load8_u
  i32.const 240
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 11
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/string-utf8/ptr
  i32.load8_u offset=1
  i32.const 144
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/string-utf8/ptr
  i32.load8_u offset=2
  i32.const 144
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 13
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/string-utf8/ptr
  i32.load8_u offset=3
  i32.const 183
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 14
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/string-utf8/ptr
  i32.load8_u offset=4
  i32.const 104
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 15
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/string-utf8/ptr
  i32.load8_u offset=5
  i32.const 105
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 16
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/string-utf8/ptr
  i32.load8_u offset=6
  i32.const 240
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 17
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/string-utf8/ptr
  i32.load8_u offset=7
  i32.const 164
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 18
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/string-utf8/ptr
  i32.load8_u offset=8
  i32.const 173
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 19
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/string-utf8/ptr
  i32.load8_u offset=9
  i32.const 162
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 20
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/string-utf8/ptr
  i32.load8_u offset=10
  if
   i32.const 0
   i32.const 24
   i32.const 21
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/string-utf8/ptr
  i32.const 0
  call $~lib/string/String.fromUTF8
  i32.const 64
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 23
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/string-utf8/ptr
  get_global $std/string-utf8/len
  i32.const 1
  i32.sub
  call $~lib/string/String.fromUTF8
  get_global $std/string-utf8/str
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 24
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/string-utf8/ptr
  i32.const 4
  call $~lib/string/String.fromUTF8
  i32.const 160
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 25
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/string-utf8/ptr
  i32.const 4
  i32.add
  i32.const 2
  call $~lib/string/String.fromUTF8
  i32.const 168
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 26
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/string-utf8/ptr
  i32.const 6
  i32.add
  i32.const 4
  call $~lib/string/String.fromUTF8
  i32.const 176
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 27
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/string-utf8/ptr
  i32.const 10
  i32.add
  i32.const 1
  call $~lib/string/String.fromUTF8
  i32.const 184
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 28
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 11 ;) (type $v)
  nop
 )
)
