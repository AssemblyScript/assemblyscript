(module
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\00\00\00\00")
 (data (i32.const 16) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 48) "\04\00\00\00n\00u\00l\00l\00")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $HEAP_BASE i32 (i32.const 60))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "i32ArrayArrayElementAccess" (func $std/array-access/i32ArrayArrayElementAccess))
 (export "stringArrayPropertyAccess" (func $std/array-access/stringArrayPropertyAccess))
 (export "stringArrayMethodCall" (func $std/array-access/stringArrayMethodCall))
 (export "stringArrayArrayPropertyAccess" (func $std/array-access/stringArrayArrayPropertyAccess))
 (export "stringArrayArrayMethodCall" (func $std/array-access/stringArrayArrayMethodCall))
 (func $~lib/array/Array<Array<i32>>#__get (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $~lib/array/Array<i32>#__get (; 2 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $std/array-access/i32ArrayArrayElementAccess (; 3 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 0
  call $~lib/array/Array<Array<i32>>#__get
  i32.const 1
  call $~lib/array/Array<i32>#__get
 )
 (func $~lib/array/Array<String>#__get (; 4 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $std/array-access/stringArrayPropertyAccess (; 5 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 0
  call $~lib/array/Array<String>#__get
  i32.load
 )
 (func $~lib/internal/string/compareUnsafe (; 6 ;) (type $iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  set_local $5
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $6
  get_local $2
  get_local $3
  i32.const 1
  i32.shl
  i32.add
  set_local $7
  block $break|0
   loop $continue|0
    get_local $4
    if (result i32)
     get_local $6
     i32.load16_u offset=4
     get_local $7
     i32.load16_u offset=4
     i32.sub
     tee_local $5
     i32.eqz
    else     
     get_local $4
    end
    if
     block
      get_local $4
      i32.const 1
      i32.sub
      set_local $4
      get_local $6
      i32.const 2
      i32.add
      set_local $6
      get_local $7
      i32.const 2
      i32.add
      set_local $7
     end
     br $continue|0
    end
   end
  end
  get_local $5
 )
 (func $~lib/string/String#startsWith (; 7 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 244
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 0
  i32.eq
  if
   i32.const 48
   set_local $1
  end
  get_local $2
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $3
  tee_local $5
  i32.const 0
  tee_local $6
  get_local $5
  get_local $6
  i32.gt_s
  select
  tee_local $5
  get_local $4
  tee_local $6
  get_local $5
  get_local $6
  i32.lt_s
  select
  set_local $7
  get_local $1
  i32.load
  set_local $8
  get_local $8
  get_local $7
  i32.add
  get_local $4
  i32.gt_s
  if
   i32.const 0
   return
  end
  get_local $0
  get_local $7
  get_local $1
  i32.const 0
  get_local $8
  call $~lib/internal/string/compareUnsafe
  i32.eqz
 )
 (func $std/array-access/stringArrayMethodCall (; 8 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 0
  call $~lib/array/Array<String>#__get
  i32.const 8
  i32.const 0
  call $~lib/string/String#startsWith
 )
 (func $~lib/array/Array<Array<String>>#__get (; 9 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $std/array-access/stringArrayArrayPropertyAccess (; 10 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 0
  call $~lib/array/Array<Array<String>>#__get
  i32.const 1
  call $~lib/array/Array<String>#__get
  i32.load
 )
 (func $std/array-access/stringArrayArrayMethodCall (; 11 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 0
  call $~lib/array/Array<Array<String>>#__get
  i32.const 1
  call $~lib/array/Array<String>#__get
  i32.const 8
  i32.const 0
  call $~lib/string/String#startsWith
 )
 (func $null (; 12 ;) (type $v)
 )
)
