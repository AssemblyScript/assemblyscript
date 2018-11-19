(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 48) "\04\00\00\00n\00u\00l\00l")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "i32ArrayArrayElementAccess" (func $std/array-access/i32ArrayArrayElementAccess))
 (export "stringArrayPropertyAccess" (func $std/array-access/stringArrayPropertyAccess))
 (export "stringArrayMethodCall" (func $std/array-access/stringArrayMethodCall))
 (export "stringArrayArrayPropertyAccess" (func $std/array-access/stringArrayArrayPropertyAccess))
 (export "stringArrayArrayMethodCall" (func $std/array-access/stringArrayArrayMethodCall))
 (func $std/array-access/i32ArrayArrayElementAccess (; 1 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 0
  get_local $0
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
 )
 (func $std/array-access/stringArrayPropertyAccess (; 2 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  get_local $0
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
  i32.load
 )
 (func $~lib/internal/string/compareUnsafe (; 3 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $1
  loop $continue|0
   get_local $3
   if (result i32)
    get_local $1
    i32.load16_u offset=4
    get_local $2
    i32.load16_u offset=4
    i32.sub
    tee_local $4
    i32.eqz
   else    
    get_local $3
   end
   tee_local $0
   if
    get_local $3
    i32.const 1
    i32.sub
    set_local $3
    get_local $1
    i32.const 2
    i32.add
    set_local $1
    get_local $2
    i32.const 2
    i32.add
    set_local $2
    br $continue|0
   end
  end
  get_local $4
 )
 (func $~lib/string/String#startsWith (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 244
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  i32.const 8
  i32.load
  tee_local $2
  i32.const 0
  get_local $0
  i32.load
  tee_local $1
  i32.const 0
  get_local $1
  i32.lt_s
  select
  tee_local $3
  i32.add
  get_local $1
  i32.gt_s
  if
   i32.const 0
   return
  end
  get_local $0
  get_local $3
  i32.const 8
  get_local $2
  call $~lib/internal/string/compareUnsafe
  i32.eqz
 )
 (func $std/array-access/stringArrayMethodCall (; 5 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  get_local $0
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
  call $~lib/string/String#startsWith
 )
 (func $std/array-access/stringArrayArrayPropertyAccess (; 6 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 0
  get_local $0
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
  i32.load
 )
 (func $std/array-access/stringArrayArrayMethodCall (; 7 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 0
  get_local $0
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
  call $~lib/string/String#startsWith
 )
 (func $null (; 8 ;) (type $v)
  nop
 )
)
