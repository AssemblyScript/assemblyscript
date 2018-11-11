(module
 (type $iiiiiiFF (func (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $F (func (result f64)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iI (func (param i32) (result i64)))
 (type $iII (func (param i32 i64) (result i64)))
 (type $v (func))
 (import "Date" "UTC" (func $~lib/bindings/Date/UTC (param i32 i32 i32 i32 i32 i32 f64) (result f64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "Date" "now" (func $~lib/bindings/Date/now (result f64)))
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00s\00t\00d\00/\00d\00a\00t\00e\00.\00t\00s\00")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/date/creationTime (mut i64) (i64.const 0))
 (global $std/date/date (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 36))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 3 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/memory/memory.allocate (; 4 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $~lib/date/Date#constructor (; 5 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $2
    get_local $2
    i64.const 0
    i64.store
    get_local $2
   end
   tee_local $0
  end
  tee_local $0
  get_local $1
  i64.store
  get_local $0
 )
 (func $~lib/date/Date#getTime (; 6 ;) (type $iI) (param $0 i32) (result i64)
  get_local $0
  i64.load
 )
 (func $~lib/date/Date#setTime (; 7 ;) (type $iII) (param $0 i32) (param $1 i64) (result i64)
  get_local $0
  get_local $1
  i64.store
  get_local $1
 )
 (func $start (; 8 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
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
  block $~lib/date/Date.UTC|inlined.0 (result i64)
   i32.const 1970
   set_local $0
   i32.const 0
   set_local $1
   i32.const 1
   set_local $2
   i32.const 0
   set_local $3
   i32.const 0
   set_local $4
   i32.const 0
   set_local $5
   i64.const 0
   set_local $6
   get_local $0
   get_local $1
   get_local $2
   get_local $3
   get_local $4
   get_local $5
   get_local $6
   f64.convert_s/i64
   call $~lib/bindings/Date/UTC
   i64.trunc_s/f64
  end
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 3
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/date/Date.UTC|inlined.1 (result i64)
   i32.const 1970
   set_local $5
   i32.const 0
   set_local $4
   i32.const 1
   set_local $3
   i32.const 0
   set_local $2
   i32.const 0
   set_local $1
   i32.const 0
   set_local $0
   i64.const 0
   set_local $6
   get_local $5
   get_local $4
   get_local $3
   get_local $2
   get_local $1
   get_local $0
   get_local $6
   f64.convert_s/i64
   call $~lib/bindings/Date/UTC
   i64.trunc_s/f64
  end
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 4
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/date/Date.UTC|inlined.2 (result i64)
   i32.const 2018
   set_local $0
   i32.const 10
   set_local $1
   i32.const 10
   set_local $2
   i32.const 11
   set_local $3
   i32.const 0
   set_local $4
   i32.const 0
   set_local $5
   i64.const 1
   set_local $6
   get_local $0
   get_local $1
   get_local $2
   get_local $3
   get_local $4
   get_local $5
   get_local $6
   f64.convert_s/i64
   call $~lib/bindings/Date/UTC
   i64.trunc_s/f64
  end
  set_global $std/date/creationTime
  get_global $std/date/creationTime
  i64.const 1541847600001
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 7
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/date/Date.now|inlined.0 (result i64)
   call $~lib/bindings/Date/now
   i64.trunc_s/f64
  end
  get_global $std/date/creationTime
  i64.gt_s
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 9
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  get_global $std/date/creationTime
  call $~lib/date/Date#constructor
  set_global $std/date/date
  get_global $std/date/date
  call $~lib/date/Date#getTime
  get_global $std/date/creationTime
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/date/date
  get_global $std/date/creationTime
  i64.const 1
  i64.add
  call $~lib/date/Date#setTime
  drop
  get_global $std/date/date
  call $~lib/date/Date#getTime
  get_global $std/date/creationTime
  i64.const 1
  i64.add
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 14
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 9 ;) (type $v)
 )
)
