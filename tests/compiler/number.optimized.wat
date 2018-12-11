(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\000")
 (data (i32.const 16) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 72) "\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 584) "H\00\00\00d")
 (data (i32.const 592) "\01\00\00\001")
 (data (i32.const 600) "\t\00\00\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $number/a (mut i32) (i32.const 1))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/internal/number/decimalCount32 (; 1 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 100000
  i32.lt_u
  if (result i32)
   get_local $0
   i32.const 100
   i32.lt_u
   if (result i32)
    i32.const 1
    i32.const 2
    get_local $0
    i32.const 10
    i32.lt_u
    select
   else    
    i32.const 3
    i32.const 4
    i32.const 5
    get_local $0
    i32.const 10000
    i32.lt_u
    select
    get_local $0
    i32.const 1000
    i32.lt_u
    select
   end
  else   
   get_local $0
   i32.const 10000000
   i32.lt_u
   if (result i32)
    i32.const 6
    i32.const 7
    get_local $0
    i32.const 1000000
    i32.lt_u
    select
   else    
    i32.const 8
    i32.const 9
    i32.const 10
    get_local $0
    i32.const 1000000000
    i32.lt_u
    select
    get_local $0
    i32.const 100000000
    i32.lt_u
    select
   end
  end
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
 (func $~lib/internal/string/allocateUnsafe (; 3 ;) (type $ii) (param $0 i32) (result i32)
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
   i32.const 16
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
 (func $~lib/internal/number/utoa32_lut (; 4 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 584
  i32.load
  set_local $3
  loop $continue|0
   get_local $1
   i32.const 10000
   i32.ge_u
   if
    get_local $1
    i32.const 10000
    i32.rem_u
    set_local $4
    get_local $1
    i32.const 10000
    i32.div_u
    set_local $1
    get_local $2
    i32.const 4
    i32.sub
    tee_local $2
    i32.const 1
    i32.shl
    get_local $0
    i32.add
    get_local $3
    get_local $4
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u offset=8
    get_local $3
    get_local $4
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u offset=8
    i64.const 32
    i64.shl
    i64.or
    i64.store offset=4
    br $continue|0
   end
  end
  get_local $1
  i32.const 100
  i32.ge_u
  if
   get_local $1
   i32.const 100
   i32.rem_u
   set_local $4
   get_local $1
   i32.const 100
   i32.div_u
   set_local $1
   get_local $2
   i32.const 2
   i32.sub
   tee_local $2
   i32.const 1
   i32.shl
   get_local $0
   i32.add
   get_local $3
   get_local $4
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
   i32.store offset=4
  end
  get_local $1
  i32.const 10
  i32.ge_u
  if
   get_local $2
   i32.const 2
   i32.sub
   i32.const 1
   i32.shl
   get_local $0
   i32.add
   get_local $3
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
   i32.store offset=4
  else   
   get_local $2
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   get_local $0
   i32.add
   get_local $1
   i32.const 48
   i32.add
   i32.store16 offset=4
  end
 )
 (func $~lib/internal/number/itoa32 (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.eqz
  if
   i32.const 8
   return
  end
  get_local $0
  i32.const 0
  i32.lt_s
  tee_local $1
  if
   i32.const 0
   get_local $0
   i32.sub
   set_local $0
  end
  get_local $0
  call $~lib/internal/number/decimalCount32
  get_local $1
  i32.add
  tee_local $3
  call $~lib/internal/string/allocateUnsafe
  tee_local $2
  get_local $0
  get_local $3
  call $~lib/internal/number/utoa32_lut
  get_local $1
  if
   get_local $2
   i32.const 45
   i32.store16 offset=4
  end
  get_local $2
 )
 (func $~lib/internal/string/compareUnsafe (; 6 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/string/String.__eq (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.const 592
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
  i32.const 592
  i32.load
  i32.ne
  if
   i32.const 0
   return
  end
  get_local $0
  i32.const 592
  get_local $1
  call $~lib/internal/string/compareUnsafe
  i32.eqz
 )
 (func $start (; 8 ;) (type $v)
  i32.const 624
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  get_global $number/a
  call $~lib/internal/number/itoa32
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 600
   i32.const 4
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 9 ;) (type $v)
  nop
 )
)
