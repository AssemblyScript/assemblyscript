(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiFv (func (param i32 i32 f64)))
 (type $FFi (func (param f64 f64) (result i32)))
 (type $iiF (func (param i32 i32) (result f64)))
 (type $iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $v (func))
 (type $iiIv (func (param i32 i32 i64)))
 (type $IIiiI (func (param i64 i64 i32 i32) (result i64)))
 (type $iifv (func (param i32 i32 f32)))
 (type $ffiif (func (param f32 f32 i32 i32) (result f32)))
 (type $FFiiF (func (param f64 f64 i32 i32) (result f64)))
 (type $iiFFFFFv (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$fi (func (param i32) (result f32)))
 (type $FUNCSIG$di (func (param i32) (result f64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "env" "trace" (func $~lib/env/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 8) "\11\00\00\00s\00t\00d\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 48) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 112) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 176) "\05\00\00\00\00\00\00\00\01\01\01\04\05")
 (data (i32.const 192) "\b0\00\00\00\05")
 (data (i32.const 200) "\05")
 (data (i32.const 216) "\c8\00\00\00\05")
 (data (i32.const 224) "\05\00\00\00\00\00\00\00\01\01")
 (data (i32.const 240) "\e0\00\00\00\05")
 (data (i32.const 248) "\05\00\00\00\00\00\00\00\01\01\00\02\02")
 (data (i32.const 264) "\f8\00\00\00\05")
 (data (i32.const 272) "\05\00\00\00\00\00\00\00\01\01\00\02\02")
 (data (i32.const 288) "\10\01\00\00\05")
 (data (i32.const 296) "\03")
 (data (i32.const 312) "(\01\00\00\03")
 (data (i32.const 320) "\05\00\00\00\00\00\00\00\01\00\00\00\02")
 (data (i32.const 336) "@\01\00\00\05")
 (data (i32.const 344) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05")
 (data (i32.const 376) "X\01\00\00\05")
 (data (i32.const 384) "\14")
 (data (i32.const 416) "\80\01\00\00\05")
 (data (i32.const 424) "\14\00\00\00\00\00\00\00\01\00\00\00\01")
 (data (i32.const 456) "\a8\01\00\00\05")
 (data (i32.const 464) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 496) "\d0\01\00\00\05")
 (data (i32.const 504) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 536) "\f8\01\00\00\05")
 (data (i32.const 544) "\0c")
 (data (i32.const 576) " \02\00\00\03")
 (data (i32.const 584) "\14\00\00\00\00\00\00\00\01")
 (data (i32.const 608) "\02")
 (data (i32.const 616) "H\02\00\00\05")
 (data (i32.const 624) "\10\00\00\00p\00a\00r\00a\00m\00s\00:\00 \00%\00d\00 \00%\00d\00 \00%\00d")
 (table $0 24 anyfunc)
 (elem (i32.const 0) $null $~lib/internal/typedarray/TypedArray<f64,f64>#sort|trampoline~anonymous|1 $std/typedarray/reduceInt8ArrayTest~anonymous|2 $std/typedarray/reduceInt8ArrayTest~anonymous|2 $std/typedarray/reduceInt8ArrayTest~anonymous|2 $std/typedarray/reduceInt8ArrayTest~anonymous|2 $std/typedarray/reduceInt8ArrayTest~anonymous|2 $std/typedarray/reduceInt8ArrayTest~anonymous|2 $std/typedarray/reduceInt8ArrayTest~anonymous|2 $std/typedarray/reduceInt64ArrayTest~anonymous|9 $std/typedarray/reduceInt64ArrayTest~anonymous|9 $std/typedarray/reduceFloat32ArrayTest~anonymous|11 $std/typedarray/reduceFloat64ArrayTest~anonymous|12 $std/typedarray/reduceRightInt8ArrayTest~anonymous|13 $std/typedarray/reduceInt8ArrayTest~anonymous|2 $std/typedarray/reduceInt8ArrayTest~anonymous|2 $std/typedarray/reduceInt8ArrayTest~anonymous|2 $std/typedarray/reduceInt8ArrayTest~anonymous|2 $std/typedarray/reduceInt8ArrayTest~anonymous|2 $std/typedarray/reduceInt8ArrayTest~anonymous|2 $std/typedarray/reduceInt64ArrayTest~anonymous|9 $std/typedarray/reduceInt64ArrayTest~anonymous|9 $std/typedarray/reduceFloat32ArrayTest~anonymous|11 $std/typedarray/reduceFloat64ArrayTest~anonymous|12)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/typedarray/arr (mut i32) (i32.const 0))
 (global $std/typedarray/af64 (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $std/typedarray/clampedArr (mut i32) (i32.const 0))
 (global $std/typedarray/arr8 (mut i32) (i32.const 0))
 (global $std/typedarray/sub8 (mut i32) (i32.const 0))
 (global $std/typedarray/arr32 (mut i32) (i32.const 0))
 (global $std/typedarray/sub32 (mut i32) (i32.const 0))
 (global $std/typedarray/multisubarr (mut i32) (i32.const 0))
 (global $std/typedarray/multisubarr1 (mut i32) (i32.const 0))
 (global $std/typedarray/multisubarr2 (mut i32) (i32.const 0))
 (global $std/typedarray/multisubarr3 (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
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
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 112
   i32.const 23
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
 (func $~lib/internal/memory/memset (; 4 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  get_local $2
  i32.eqz
  if
   return
  end
  get_local $0
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 1
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 2
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 1
  i32.add
  get_local $1
  i32.store8
  get_local $0
  i32.const 2
  i32.add
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  tee_local $3
  i32.const 2
  i32.sub
  get_local $1
  i32.store8
  get_local $3
  i32.const 3
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 6
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 3
  i32.add
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 4
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 8
  i32.le_u
  if
   return
  end
  get_local $2
  i32.const 0
  get_local $0
  i32.sub
  i32.const 3
  i32.and
  tee_local $3
  i32.sub
  set_local $2
  get_local $0
  get_local $3
  i32.add
  tee_local $0
  get_local $1
  i32.const 255
  i32.and
  i32.const 16843009
  i32.mul
  tee_local $1
  i32.store
  get_local $2
  i32.const -4
  i32.and
  tee_local $2
  get_local $0
  i32.add
  i32.const 4
  i32.sub
  get_local $1
  i32.store
  get_local $2
  i32.const 8
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 4
  i32.add
  get_local $1
  i32.store
  get_local $0
  i32.const 8
  i32.add
  get_local $1
  i32.store
  get_local $0
  get_local $2
  i32.add
  tee_local $3
  i32.const 12
  i32.sub
  get_local $1
  i32.store
  get_local $3
  i32.const 8
  i32.sub
  get_local $1
  i32.store
  get_local $2
  i32.const 24
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 12
  i32.add
  get_local $1
  i32.store
  get_local $0
  i32.const 16
  i32.add
  get_local $1
  i32.store
  get_local $0
  i32.const 20
  i32.add
  get_local $1
  i32.store
  get_local $0
  i32.const 24
  i32.add
  get_local $1
  i32.store
  get_local $0
  get_local $2
  i32.add
  tee_local $3
  i32.const 28
  i32.sub
  get_local $1
  i32.store
  get_local $3
  i32.const 24
  i32.sub
  get_local $1
  i32.store
  get_local $3
  i32.const 20
  i32.sub
  get_local $1
  i32.store
  get_local $3
  i32.const 16
  i32.sub
  get_local $1
  i32.store
  get_local $0
  i32.const 4
  i32.and
  i32.const 24
  i32.add
  tee_local $3
  get_local $0
  i32.add
  set_local $0
  get_local $2
  get_local $3
  i32.sub
  set_local $2
  get_local $1
  i64.extend_u/i32
  tee_local $4
  get_local $4
  i64.const 32
  i64.shl
  i64.or
  set_local $4
  loop $continue|0
   get_local $2
   i32.const 32
   i32.ge_u
   if
    get_local $0
    get_local $4
    i64.store
    get_local $0
    i32.const 8
    i32.add
    get_local $4
    i64.store
    get_local $0
    i32.const 16
    i32.add
    get_local $4
    i64.store
    get_local $0
    i32.const 24
    i32.add
    get_local $4
    i64.store
    get_local $2
    i32.const 32
    i32.sub
    set_local $2
    get_local $0
    i32.const 32
    i32.add
    set_local $0
    br $continue|0
   end
  end
 )
 (func $~lib/internal/typedarray/TypedArray<i8,i32>#constructor (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 48
   i32.const 27
   i32.const 34
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/internal/arraybuffer/allocateUnsafe
  tee_local $2
  i32.const 8
  i32.add
  i32.const 0
  get_local $0
  call $~lib/internal/memory/memset
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  tee_local $1
  i32.const 0
  i32.store
  get_local $1
  i32.const 0
  i32.store offset=4
  get_local $1
  i32.const 0
  i32.store offset=8
  get_local $1
  get_local $2
  i32.store
  get_local $1
  i32.const 0
  i32.store offset=4
  get_local $1
  get_local $0
  i32.store offset=8
  get_local $1
 )
 (func $~lib/internal/typedarray/TypedArray<i16,i32>#constructor (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  i32.const 536870908
  i32.gt_u
  if
   i32.const 0
   i32.const 48
   i32.const 27
   i32.const 34
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 1
  i32.shl
  tee_local $0
  call $~lib/internal/arraybuffer/allocateUnsafe
  tee_local $2
  i32.const 8
  i32.add
  i32.const 0
  get_local $0
  call $~lib/internal/memory/memset
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  tee_local $1
  i32.const 0
  i32.store
  get_local $1
  i32.const 0
  i32.store offset=4
  get_local $1
  i32.const 0
  i32.store offset=8
  get_local $1
  get_local $2
  i32.store
  get_local $1
  i32.const 0
  i32.store offset=4
  get_local $1
  get_local $0
  i32.store offset=8
  get_local $1
 )
 (func $~lib/internal/typedarray/TypedArray<i32,i32>#constructor (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 48
   i32.const 27
   i32.const 34
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 2
  i32.shl
  tee_local $0
  call $~lib/internal/arraybuffer/allocateUnsafe
  tee_local $2
  i32.const 8
  i32.add
  i32.const 0
  get_local $0
  call $~lib/internal/memory/memset
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  tee_local $1
  i32.const 0
  i32.store
  get_local $1
  i32.const 0
  i32.store offset=4
  get_local $1
  i32.const 0
  i32.store offset=8
  get_local $1
  get_local $2
  i32.store
  get_local $1
  i32.const 0
  i32.store offset=4
  get_local $1
  get_local $0
  i32.store offset=8
  get_local $1
 )
 (func $~lib/internal/typedarray/TypedArray<i64,i64>#constructor (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  i32.const 134217727
  i32.gt_u
  if
   i32.const 0
   i32.const 48
   i32.const 27
   i32.const 34
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 3
  i32.shl
  tee_local $0
  call $~lib/internal/arraybuffer/allocateUnsafe
  tee_local $2
  i32.const 8
  i32.add
  i32.const 0
  get_local $0
  call $~lib/internal/memory/memset
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  tee_local $1
  i32.const 0
  i32.store
  get_local $1
  i32.const 0
  i32.store offset=4
  get_local $1
  i32.const 0
  i32.store offset=8
  get_local $1
  get_local $2
  i32.store
  get_local $1
  i32.const 0
  i32.store offset=4
  get_local $1
  get_local $0
  i32.store offset=8
  get_local $1
 )
 (func $std/typedarray/testInstantiate (; 9 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  get_local $0
  call $~lib/internal/typedarray/TypedArray<i8,i32>#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 35
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.load offset=8
  get_local $0
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 36
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  get_local $1
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 37
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/internal/typedarray/TypedArray<i8,i32>#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 40
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.load offset=8
  get_local $0
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 41
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  get_local $1
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/internal/typedarray/TypedArray<i8,i32>#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 45
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.load offset=8
  get_local $0
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  get_local $1
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 47
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/internal/typedarray/TypedArray<i16,i32>#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 50
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.load offset=8
  get_local $0
  i32.const 1
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 51
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  get_local $1
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 52
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/internal/typedarray/TypedArray<i16,i32>#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 55
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.load offset=8
  get_local $0
  i32.const 1
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 56
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  get_local $1
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 57
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/internal/typedarray/TypedArray<i32,i32>#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 60
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.load offset=8
  get_local $0
  i32.const 2
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 61
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  get_local $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 62
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/internal/typedarray/TypedArray<i32,i32>#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 65
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.load offset=8
  get_local $0
  i32.const 2
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 66
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  get_local $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 67
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/internal/typedarray/TypedArray<i64,i64>#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 70
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.load offset=8
  get_local $0
  i32.const 3
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 71
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  get_local $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 72
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/internal/typedarray/TypedArray<i64,i64>#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 75
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.load offset=8
  get_local $0
  i32.const 3
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 76
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  get_local $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 77
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/internal/typedarray/TypedArray<i32,i32>#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 80
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.load offset=8
  get_local $0
  i32.const 2
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 81
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  get_local $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 82
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/internal/typedarray/TypedArray<i64,i64>#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 85
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.load offset=8
  get_local $0
  i32.const 3
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 86
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  get_local $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 87
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/typedarray/TypedArray<i32,i32>#__set (; 10 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 54
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  get_local $2
  i32.store offset=8
 )
 (func $~lib/internal/typedarray/TypedArray<i32,i32>#__get (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 43
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=8
 )
 (func $~lib/typedarray/Int32Array#subarray (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  tee_local $2
  i32.const 1
  get_local $2
  i32.lt_s
  select
  set_local $3
  get_local $1
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $1
   get_local $2
   i32.add
   tee_local $2
   get_local $3
   get_local $2
   get_local $3
   i32.gt_s
   select
  else   
   get_local $1
   get_local $2
   get_local $1
   get_local $2
   i32.lt_s
   select
   tee_local $2
   get_local $3
   get_local $2
   get_local $3
   i32.gt_s
   select
  end
  set_local $1
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  tee_local $2
  get_local $0
  i32.load
  i32.store
  get_local $2
  get_local $0
  i32.load offset=4
  get_local $3
  i32.const 2
  i32.shl
  i32.add
  i32.store offset=4
  get_local $2
  get_local $1
  get_local $3
  i32.sub
  i32.const 2
  i32.shl
  i32.store offset=8
  get_local $2
 )
 (func $~lib/internal/typedarray/TypedArray<f64,f64>#__set (; 13 ;) (type $iiFv) (param $0 i32) (param $1 i32) (param $2 f64)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 54
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.const 3
  i32.shl
  i32.add
  get_local $2
  f64.store offset=8
 )
 (func $~lib/typedarray/Float64Array#subarray (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 2
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  tee_local $1
  i32.const 2
  get_local $1
  i32.lt_s
  select
  set_local $2
  i32.const 6
  get_local $1
  i32.const 6
  get_local $1
  i32.lt_s
  select
  tee_local $1
  get_local $2
  get_local $1
  get_local $2
  i32.gt_s
  select
  set_local $3
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  tee_local $1
  get_local $0
  i32.load
  i32.store
  get_local $1
  get_local $0
  i32.load offset=4
  get_local $2
  i32.const 3
  i32.shl
  i32.add
  i32.store offset=4
  get_local $1
  get_local $3
  get_local $2
  i32.sub
  i32.const 3
  i32.shl
  i32.store offset=8
  get_local $1
 )
 (func $~lib/internal/array/insertionSort<f64> (; 15 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  block $break|0
   loop $repeat|0
    get_local $4
    get_local $2
    i32.ge_s
    br_if $break|0
    get_local $0
    get_local $1
    i32.add
    get_local $4
    i32.const 3
    i32.shl
    i32.add
    f64.load offset=8
    set_local $6
    get_local $4
    i32.const 1
    i32.sub
    set_local $5
    loop $continue|1
     get_local $5
     i32.const 0
     i32.ge_s
     if
      block $break|1
       get_local $0
       get_local $1
       i32.add
       get_local $5
       i32.const 3
       i32.shl
       i32.add
       f64.load offset=8
       set_local $7
       i32.const 2
       set_global $~argc
       get_local $6
       get_local $7
       get_local $3
       call_indirect (type $FFi)
       i32.const 0
       i32.ge_s
       br_if $break|1
       get_local $5
       tee_local $8
       i32.const 1
       i32.sub
       set_local $5
       get_local $0
       get_local $1
       i32.add
       get_local $8
       i32.const 1
       i32.add
       i32.const 3
       i32.shl
       i32.add
       get_local $7
       f64.store offset=8
       br $continue|1
      end
     end
    end
    get_local $0
    get_local $1
    i32.add
    get_local $5
    i32.const 1
    i32.add
    i32.const 3
    i32.shl
    i32.add
    get_local $6
    f64.store offset=8
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/internal/array/weakHeapSort<f64> (; 16 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  (local $9 i32)
  (local $10 i32)
  get_local $2
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  tee_local $4
  call $~lib/allocator/arena/__memory_allocate
  tee_local $9
  i32.const 0
  get_local $4
  call $~lib/internal/memory/memset
  get_local $2
  i32.const 1
  i32.sub
  set_local $5
  loop $repeat|0
   get_local $5
   i32.const 0
   i32.gt_s
   if
    get_local $5
    set_local $4
    loop $continue|1
     get_local $4
     i32.const 1
     i32.and
     get_local $4
     i32.const 6
     i32.shr_s
     i32.const 2
     i32.shl
     get_local $9
     i32.add
     i32.load
     get_local $4
     i32.const 1
     i32.shr_s
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     i32.eq
     if
      get_local $4
      i32.const 1
      i32.shr_s
      set_local $4
      br $continue|1
     end
    end
    get_local $0
    get_local $1
    i32.add
    tee_local $10
    get_local $4
    i32.const 1
    i32.shr_s
    tee_local $6
    i32.const 3
    i32.shl
    i32.add
    f64.load offset=8
    set_local $8
    get_local $5
    i32.const 3
    i32.shl
    get_local $10
    i32.add
    f64.load offset=8
    set_local $7
    i32.const 2
    set_global $~argc
    get_local $8
    get_local $7
    get_local $3
    call_indirect (type $FFi)
    i32.const 0
    i32.lt_s
    if
     get_local $5
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     get_local $9
     i32.add
     tee_local $4
     get_local $4
     i32.load
     i32.const 1
     get_local $5
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     get_local $0
     get_local $1
     i32.add
     tee_local $4
     get_local $5
     i32.const 3
     i32.shl
     i32.add
     get_local $8
     f64.store offset=8
     get_local $6
     i32.const 3
     i32.shl
     get_local $4
     i32.add
     get_local $7
     f64.store offset=8
    end
    get_local $5
    i32.const 1
    i32.sub
    set_local $5
    br $repeat|0
   end
  end
  get_local $2
  i32.const 1
  i32.sub
  set_local $5
  loop $repeat|2
   get_local $5
   i32.const 2
   i32.ge_s
   if
    get_local $0
    get_local $1
    i32.add
    tee_local $2
    f64.load offset=8
    set_local $7
    get_local $2
    get_local $5
    i32.const 3
    i32.shl
    tee_local $4
    get_local $2
    i32.add
    f64.load offset=8
    f64.store offset=8
    get_local $2
    get_local $4
    i32.add
    get_local $7
    f64.store offset=8
    i32.const 1
    set_local $6
    loop $continue|3
     get_local $6
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     get_local $9
     i32.add
     i32.load
     get_local $6
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     get_local $6
     i32.const 1
     i32.shl
     i32.add
     tee_local $4
     get_local $5
     i32.lt_s
     if
      get_local $4
      set_local $6
      br $continue|3
     end
    end
    loop $continue|4
     get_local $6
     i32.const 0
     i32.gt_s
     if
      get_local $0
      get_local $1
      i32.add
      tee_local $2
      f64.load offset=8
      set_local $7
      get_local $6
      i32.const 3
      i32.shl
      get_local $2
      i32.add
      f64.load offset=8
      set_local $8
      i32.const 2
      set_global $~argc
      get_local $7
      get_local $8
      get_local $3
      call_indirect (type $FFi)
      i32.const 0
      i32.lt_s
      if
       get_local $6
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       get_local $9
       i32.add
       tee_local $2
       get_local $2
       i32.load
       i32.const 1
       get_local $6
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       get_local $0
       get_local $1
       i32.add
       tee_local $2
       get_local $6
       i32.const 3
       i32.shl
       i32.add
       get_local $7
       f64.store offset=8
       get_local $2
       get_local $8
       f64.store offset=8
      end
      get_local $6
      i32.const 1
      i32.shr_s
      set_local $6
      br $continue|4
     end
    end
    get_local $5
    i32.const 1
    i32.sub
    set_local $5
    br $repeat|2
   end
  end
  get_local $0
  get_local $1
  i32.add
  tee_local $2
  i32.const 8
  i32.add
  f64.load offset=8
  set_local $7
  get_local $2
  i32.const 8
  i32.add
  get_local $2
  f64.load offset=8
  f64.store offset=8
  get_local $2
  get_local $7
  f64.store offset=8
 )
 (func $~lib/internal/typedarray/TypedArray<f64,f64>#sort (; 17 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  tee_local $4
  i32.const 1
  i32.le_s
  if
   get_local $0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $4
  i32.const 2
  i32.eq
  if
   get_local $2
   get_local $3
   i32.add
   i32.const 8
   i32.add
   f64.load offset=8
   set_local $5
   get_local $2
   get_local $3
   i32.add
   f64.load offset=8
   set_local $6
   i32.const 2
   set_global $~argc
   get_local $5
   get_local $6
   get_local $1
   call_indirect (type $FFi)
   i32.const 0
   i32.lt_s
   if
    get_local $2
    get_local $3
    i32.add
    tee_local $1
    i32.const 8
    i32.add
    get_local $6
    f64.store offset=8
    get_local $1
    get_local $5
    f64.store offset=8
   end
   get_local $0
   return
  end
  get_local $4
  i32.const 256
  i32.lt_s
  if
   get_local $3
   get_local $2
   get_local $4
   get_local $1
   call $~lib/internal/array/insertionSort<f64>
  else   
   get_local $3
   get_local $2
   get_local $4
   get_local $1
   call $~lib/internal/array/weakHeapSort<f64>
  end
  get_local $0
 )
 (func $~lib/internal/typedarray/TypedArray<f64,f64>#sort|trampoline~anonymous|1 (; 18 ;) (type $FFi) (param $0 f64) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i64)
  get_local $0
  i64.reinterpret/f64
  tee_local $2
  get_local $2
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  tee_local $2
  get_local $1
  i64.reinterpret/f64
  tee_local $3
  get_local $3
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  tee_local $3
  i64.gt_s
  get_local $2
  get_local $3
  i64.lt_s
  i32.sub
 )
 (func $~lib/internal/typedarray/TypedArray<f64,f64>#__get (; 19 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 43
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.const 3
  i32.shl
  i32.add
  f64.load offset=8
 )
 (func $~lib/internal/typedarray/TypedArray<u8,u32>#__set (; 20 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 54
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  i32.add
  get_local $2
  i32.store8 offset=8
 )
 (func $~lib/typedarray/Uint8ClampedArray#__set (; 21 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  get_local $2
  i32.const 255
  get_local $2
  i32.const 255
  i32.lt_s
  select
  tee_local $3
  i32.const 0
  get_local $3
  i32.const 0
  i32.gt_s
  select
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
 )
 (func $~lib/internal/typedarray/TypedArray<u8,u32>#__get (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 43
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  i32.add
  i32.load8_u offset=8
 )
 (func $~lib/internal/typedarray/TypedArray<i8,i32>#fill (; 23 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  i32.load
  set_local $6
  get_local $0
  i32.load offset=4
  set_local $7
  get_local $0
  i32.load offset=8
  set_local $4
  get_local $2
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $2
   get_local $4
   i32.add
   tee_local $5
   i32.const 0
   get_local $5
   i32.const 0
   i32.gt_s
   select
  else   
   get_local $2
   tee_local $5
   get_local $4
   get_local $2
   get_local $4
   i32.lt_s
   select
  end
  tee_local $2
  get_local $3
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $3
   get_local $4
   i32.add
   tee_local $5
   i32.const 0
   get_local $5
   i32.const 0
   i32.gt_s
   select
  else   
   get_local $3
   tee_local $5
   get_local $4
   get_local $3
   get_local $4
   i32.lt_s
   select
  end
  tee_local $3
  i32.lt_s
  if
   get_local $2
   get_local $6
   i32.add
   get_local $7
   i32.add
   i32.const 8
   i32.add
   get_local $1
   get_local $3
   get_local $2
   i32.sub
   call $~lib/internal/memory/memset
  end
  get_local $0
 )
 (func $~lib/internal/typedarray/TypedArray<i8,i32>#__get (; 24 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 43
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  i32.add
  i32.load8_s offset=8
 )
 (func $std/typedarray/isInt8ArrayEqual (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load offset=8
  get_local $1
  i32.load offset=4
  i32.ne
  if
   i32.const 0
   return
  end
  get_local $0
  i32.load offset=8
  set_local $4
  loop $repeat|0
   get_local $2
   get_local $4
   i32.lt_s
   if
    get_local $0
    get_local $2
    call $~lib/internal/typedarray/TypedArray<i8,i32>#__get
    i32.const 255
    i32.and
    get_local $2
    get_local $1
    i32.load
    tee_local $3
    i32.load
    i32.lt_u
    if (result i32)
     get_local $2
     get_local $3
     i32.add
     i32.load8_s offset=8
    else     
     unreachable
    end
    tee_local $3
    i32.const 255
    i32.and
    i32.ne
    if
     i32.const 0
     return
    else     
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
    unreachable
   end
  end
  i32.const 1
 )
 (func $~lib/internal/typedarray/TypedArray<i8,i32>#fill|trampoline (; 26 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      get_global $~argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    set_local $2
   end
   i32.const 2147483647
   set_local $3
  end
  get_local $0
  get_local $1
  get_local $2
  get_local $3
  call $~lib/internal/typedarray/TypedArray<i8,i32>#fill
 )
 (func $~lib/typedarray/Int8Array#subarray (; 27 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1
  get_local $0
  i32.load offset=8
  tee_local $2
  i32.const 1
  get_local $2
  i32.lt_s
  select
  set_local $3
  get_local $1
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $1
   get_local $2
   i32.add
   tee_local $2
   get_local $3
   get_local $2
   get_local $3
   i32.gt_s
   select
  else   
   get_local $1
   get_local $2
   get_local $1
   get_local $2
   i32.lt_s
   select
   tee_local $2
   get_local $3
   get_local $2
   get_local $3
   i32.gt_s
   select
  end
  set_local $1
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  tee_local $2
  get_local $0
  i32.load
  i32.store
  get_local $2
  get_local $0
  i32.load offset=4
  get_local $3
  i32.add
  i32.store offset=4
  get_local $2
  get_local $1
  get_local $3
  i32.sub
  i32.store offset=8
  get_local $2
 )
 (func $~lib/internal/typedarray/TypedArray<i32,i32>#fill (; 28 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  i32.load
  set_local $6
  get_local $0
  i32.load offset=4
  set_local $7
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $2
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $2
   get_local $4
   i32.add
   tee_local $5
   i32.const 0
   get_local $5
   i32.const 0
   i32.gt_s
   select
  else   
   get_local $2
   tee_local $5
   get_local $4
   get_local $2
   get_local $4
   i32.lt_s
   select
  end
  set_local $2
  get_local $3
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $3
   get_local $4
   i32.add
   tee_local $5
   i32.const 0
   get_local $5
   i32.const 0
   i32.gt_s
   select
  else   
   get_local $3
   tee_local $5
   get_local $4
   get_local $3
   get_local $4
   i32.lt_s
   select
  end
  set_local $3
  loop $repeat|0
   get_local $2
   get_local $3
   i32.ge_s
   i32.eqz
   if
    get_local $6
    get_local $7
    i32.add
    get_local $2
    i32.const 2
    i32.shl
    i32.add
    get_local $1
    i32.store offset=8
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
   end
  end
  get_local $0
 )
 (func $std/typedarray/isInt32ArrayEqual (; 29 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $1
  i32.load offset=4
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ne
  if
   i32.const 0
   return
  end
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  set_local $4
  loop $repeat|0
   get_local $2
   get_local $4
   i32.lt_s
   if
    get_local $0
    get_local $2
    call $~lib/internal/typedarray/TypedArray<i32,i32>#__get
    get_local $2
    get_local $1
    i32.load
    tee_local $3
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     get_local $2
     i32.const 2
     i32.shl
     get_local $3
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    tee_local $3
    i32.ne
    if
     i32.const 0
     return
    else     
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
    unreachable
   end
  end
  i32.const 1
 )
 (func $~lib/internal/typedarray/TypedArray<i32,i32>#fill|trampoline (; 30 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      get_global $~argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    set_local $2
   end
   i32.const 2147483647
   set_local $3
  end
  get_local $0
  get_local $1
  get_local $2
  get_local $3
  call $~lib/internal/typedarray/TypedArray<i32,i32>#fill
 )
 (func $std/typedarray/reduceInt8ArrayTest~anonymous|2 (; 31 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/typedarray/Int8Array#reduce<i8> (; 32 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.load offset=8
  set_local $3
  loop $continue|0
   get_local $1
   get_local $3
   i32.ne
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $0
    i32.load
    get_local $0
    i32.load offset=4
    i32.add
    get_local $1
    i32.add
    i32.load8_s offset=8
    get_local $1
    get_local $0
    i32.const 2
    call_indirect (type $iiiii)
    set_local $2
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $continue|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/reduceInt8ArrayTest (; 33 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8,i32>#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_local $0
  call $~lib/typedarray/Int8Array#reduce<i8>
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 252
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8Array#reduce<u8> (; 34 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load offset=8
  set_local $4
  loop $continue|0
   get_local $2
   get_local $4
   i32.ne
   if
    i32.const 4
    set_global $~argc
    get_local $3
    get_local $0
    i32.load
    get_local $0
    i32.load offset=4
    i32.add
    get_local $2
    i32.add
    i32.load8_u offset=8
    get_local $2
    get_local $0
    get_local $1
    call_indirect (type $iiiii)
    set_local $3
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $continue|0
   end
  end
  get_local $3
 )
 (func $std/typedarray/reduceUint8ArrayTest (; 35 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8,i32>#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_local $0
  i32.const 3
  call $~lib/typedarray/Uint8Array#reduce<u8>
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 267
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/reduceUint8ClampedArrayTest (; 36 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8,i32>#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  get_local $0
  i32.const 4
  call $~lib/typedarray/Uint8Array#reduce<u8>
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 282
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/typedarray/TypedArray<i16,i32>#__set (; 37 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 54
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  get_local $2
  i32.store16 offset=8
 )
 (func $~lib/typedarray/Int16Array#reduce<i16> (; 38 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  set_local $3
  loop $continue|0
   get_local $1
   get_local $3
   i32.ne
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $0
    i32.load
    get_local $0
    i32.load offset=4
    i32.add
    get_local $1
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s offset=8
    get_local $1
    get_local $0
    i32.const 5
    call_indirect (type $iiiii)
    set_local $2
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $continue|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/reduceInt16ArrayTest (; 39 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16,i32>#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16,i32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16,i32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16,i32>#__set
  get_local $0
  call $~lib/typedarray/Int16Array#reduce<i16>
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 297
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#reduce<u16> (; 40 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  set_local $3
  loop $continue|0
   get_local $1
   get_local $3
   i32.ne
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $0
    i32.load
    get_local $0
    i32.load offset=4
    i32.add
    get_local $1
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u offset=8
    get_local $1
    get_local $0
    i32.const 6
    call_indirect (type $iiiii)
    set_local $2
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $continue|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/reduceUint16ArrayTest (; 41 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16,i32>#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16,i32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16,i32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16,i32>#__set
  get_local $0
  call $~lib/typedarray/Uint16Array#reduce<u16>
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 312
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int32Array#reduce<i32> (; 42 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  set_local $4
  loop $continue|0
   get_local $2
   get_local $4
   i32.ne
   if
    i32.const 4
    set_global $~argc
    get_local $3
    get_local $0
    i32.load
    get_local $0
    i32.load offset=4
    i32.add
    get_local $2
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
    get_local $2
    get_local $0
    get_local $1
    call_indirect (type $iiiii)
    set_local $3
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $continue|0
   end
  end
  get_local $3
 )
 (func $std/typedarray/reduceInt32ArrayTest (; 43 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32,i32>#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_local $0
  i32.const 7
  call $~lib/typedarray/Int32Array#reduce<i32>
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 327
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/reduceUint32ArrayTest (; 44 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32,i32>#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_local $0
  i32.const 8
  call $~lib/typedarray/Int32Array#reduce<i32>
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 342
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/typedarray/TypedArray<i64,i64>#__set (; 45 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 54
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.const 3
  i32.shl
  i32.add
  get_local $2
  i64.store offset=8
 )
 (func $std/typedarray/reduceInt64ArrayTest~anonymous|9 (; 46 ;) (type $IIiiI) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  get_local $0
  get_local $1
  i64.add
 )
 (func $~lib/typedarray/Int64Array#reduce<i64> (; 47 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  set_local $4
  loop $continue|0
   get_local $2
   get_local $4
   i32.ne
   if
    i32.const 4
    set_global $~argc
    get_local $3
    get_local $0
    i32.load
    get_local $0
    i32.load offset=4
    i32.add
    get_local $2
    i32.const 3
    i32.shl
    i32.add
    i64.load offset=8
    get_local $2
    get_local $0
    get_local $1
    call_indirect (type $IIiiI)
    set_local $3
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $continue|0
   end
  end
  get_local $3
 )
 (func $std/typedarray/reduceInt64ArrayTest (; 48 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i64,i64>#constructor
  tee_local $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<i64,i64>#__set
  get_local $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64,i64>#__set
  get_local $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<i64,i64>#__set
  get_local $0
  i32.const 9
  call $~lib/typedarray/Int64Array#reduce<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 357
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/reduceUint64ArrayTest (; 49 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i64,i64>#constructor
  tee_local $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<i64,i64>#__set
  get_local $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64,i64>#__set
  get_local $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<i64,i64>#__set
  get_local $0
  i32.const 10
  call $~lib/typedarray/Int64Array#reduce<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 372
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/typedarray/TypedArray<f32,f32>#__set (; 50 ;) (type $iifv) (param $0 i32) (param $1 i32) (param $2 f32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 54
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  get_local $0
  i32.load offset=4
  i32.add
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  get_local $2
  f32.store offset=8
 )
 (func $std/typedarray/reduceFloat32ArrayTest~anonymous|11 (; 51 ;) (type $ffiif) (param $0 f32) (param $1 f32) (param $2 i32) (param $3 i32) (result f32)
  get_local $0
  get_local $1
  f32.add
 )
 (func $~lib/typedarray/Float32Array#reduce<f32> (; 52 ;) (type $FUNCSIG$fi) (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 i32)
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  set_local $3
  loop $continue|0
   get_local $1
   get_local $3
   i32.ne
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $0
    i32.load
    get_local $0
    i32.load offset=4
    i32.add
    get_local $1
    i32.const 2
    i32.shl
    i32.add
    f32.load offset=8
    get_local $1
    get_local $0
    i32.const 11
    call_indirect (type $ffiif)
    set_local $2
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $continue|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/reduceFloat32ArrayTest (; 53 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32,i32>#constructor
  tee_local $0
  i32.const 0
  f32.const 1
  call $~lib/internal/typedarray/TypedArray<f32,f32>#__set
  get_local $0
  i32.const 1
  f32.const 2
  call $~lib/internal/typedarray/TypedArray<f32,f32>#__set
  get_local $0
  i32.const 2
  f32.const 3
  call $~lib/internal/typedarray/TypedArray<f32,f32>#__set
  get_local $0
  call $~lib/typedarray/Float32Array#reduce<f32>
  f32.const 6
  f32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 387
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/reduceFloat64ArrayTest~anonymous|12 (; 54 ;) (type $FFiiF) (param $0 f64) (param $1 f64) (param $2 i32) (param $3 i32) (result f64)
  get_local $0
  get_local $1
  f64.add
 )
 (func $~lib/typedarray/Float64Array#reduce<f64> (; 55 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  set_local $3
  loop $continue|0
   get_local $1
   get_local $3
   i32.ne
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $0
    i32.load
    get_local $0
    i32.load offset=4
    i32.add
    get_local $1
    i32.const 3
    i32.shl
    i32.add
    f64.load offset=8
    get_local $1
    get_local $0
    i32.const 12
    call_indirect (type $FFiiF)
    set_local $2
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $continue|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/reduceFloat64ArrayTest (; 56 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i64,i64>#constructor
  tee_local $0
  i32.const 0
  f64.const 1
  call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
  get_local $0
  i32.const 1
  f64.const 2
  call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
  get_local $0
  i32.const 2
  f64.const 3
  call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
  get_local $0
  call $~lib/typedarray/Float64Array#reduce<f64>
  f64.const 6
  f64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 402
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/reduceRightInt8ArrayTest~anonymous|13 (; 57 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  i32.const 624
  i32.const 3
  get_local $0
  f64.convert_s/i32
  get_local $1
  f64.convert_s/i32
  get_local $2
  f64.convert_s/i32
  f64.const 0
  f64.const 0
  call $~lib/env/trace
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/typedarray/Int8Array#reduceRight<i8> (; 58 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.sub
  set_local $1
  loop $continue|0
   get_local $1
   i32.const -1
   i32.ne
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $0
    i32.load
    get_local $0
    i32.load offset=4
    i32.add
    get_local $1
    i32.add
    i32.load8_s offset=8
    get_local $1
    get_local $0
    i32.const 13
    call_indirect (type $iiiii)
    set_local $2
    get_local $1
    i32.const 1
    i32.sub
    set_local $1
    br $continue|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/reduceRightInt8ArrayTest (; 59 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8,i32>#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_local $0
  call $~lib/typedarray/Int8Array#reduceRight<i8>
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 441
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8Array#reduceRight<u8> (; 60 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.sub
  set_local $2
  loop $continue|0
   get_local $2
   i32.const -1
   i32.ne
   if
    i32.const 4
    set_global $~argc
    get_local $3
    get_local $0
    i32.load
    get_local $0
    i32.load offset=4
    i32.add
    get_local $2
    i32.add
    i32.load8_u offset=8
    get_local $2
    get_local $0
    get_local $1
    call_indirect (type $iiiii)
    set_local $3
    get_local $2
    i32.const 1
    i32.sub
    set_local $2
    br $continue|0
   end
  end
  get_local $3
 )
 (func $std/typedarray/reduceRightUint8ArrayTest (; 61 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8,i32>#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_local $0
  i32.const 14
  call $~lib/typedarray/Uint8Array#reduceRight<u8>
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 456
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/reduceRightUint8ClampedArrayTest (; 62 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8,i32>#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  get_local $0
  i32.const 15
  call $~lib/typedarray/Uint8Array#reduceRight<u8>
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 471
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int16Array#reduceRight<i16> (; 63 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.sub
  set_local $1
  loop $continue|0
   get_local $1
   i32.const -1
   i32.ne
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $0
    i32.load
    get_local $0
    i32.load offset=4
    i32.add
    get_local $1
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s offset=8
    get_local $1
    get_local $0
    i32.const 16
    call_indirect (type $iiiii)
    set_local $2
    get_local $1
    i32.const 1
    i32.sub
    set_local $1
    br $continue|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/reduceRightInt16ArrayTest (; 64 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16,i32>#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16,i32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16,i32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16,i32>#__set
  get_local $0
  call $~lib/typedarray/Int16Array#reduceRight<i16>
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 486
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#reduceRight<u16> (; 65 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.sub
  set_local $1
  loop $continue|0
   get_local $1
   i32.const -1
   i32.ne
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $0
    i32.load
    get_local $0
    i32.load offset=4
    i32.add
    get_local $1
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u offset=8
    get_local $1
    get_local $0
    i32.const 17
    call_indirect (type $iiiii)
    set_local $2
    get_local $1
    i32.const 1
    i32.sub
    set_local $1
    br $continue|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/reduceRightUint16ArrayTest (; 66 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16,i32>#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16,i32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16,i32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16,i32>#__set
  get_local $0
  call $~lib/typedarray/Uint16Array#reduceRight<u16>
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 501
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int32Array#reduceRight<i32> (; 67 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 1
  i32.sub
  set_local $2
  loop $continue|0
   get_local $2
   i32.const -1
   i32.ne
   if
    i32.const 4
    set_global $~argc
    get_local $3
    get_local $0
    i32.load
    get_local $0
    i32.load offset=4
    i32.add
    get_local $2
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
    get_local $2
    get_local $0
    get_local $1
    call_indirect (type $iiiii)
    set_local $3
    get_local $2
    i32.const 1
    i32.sub
    set_local $2
    br $continue|0
   end
  end
  get_local $3
 )
 (func $std/typedarray/reduceRightInt32ArrayTest (; 68 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32,i32>#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_local $0
  i32.const 18
  call $~lib/typedarray/Int32Array#reduceRight<i32>
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 516
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/reduceRightUint32ArrayTest (; 69 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32,i32>#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_local $0
  i32.const 19
  call $~lib/typedarray/Int32Array#reduceRight<i32>
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 531
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int64Array#reduceRight<i64> (; 70 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 1
  i32.sub
  set_local $2
  loop $continue|0
   get_local $2
   i32.const -1
   i32.ne
   if
    i32.const 4
    set_global $~argc
    get_local $3
    get_local $0
    i32.load
    get_local $0
    i32.load offset=4
    i32.add
    get_local $2
    i32.const 3
    i32.shl
    i32.add
    i64.load offset=8
    get_local $2
    get_local $0
    get_local $1
    call_indirect (type $IIiiI)
    set_local $3
    get_local $2
    i32.const 1
    i32.sub
    set_local $2
    br $continue|0
   end
  end
  get_local $3
 )
 (func $std/typedarray/reduceRightInt64ArrayTest (; 71 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i64,i64>#constructor
  tee_local $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<i64,i64>#__set
  get_local $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64,i64>#__set
  get_local $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<i64,i64>#__set
  get_local $0
  i32.const 20
  call $~lib/typedarray/Int64Array#reduceRight<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 546
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/reduceRightUint64ArrayTest (; 72 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i64,i64>#constructor
  tee_local $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<i64,i64>#__set
  get_local $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64,i64>#__set
  get_local $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<i64,i64>#__set
  get_local $0
  i32.const 21
  call $~lib/typedarray/Int64Array#reduceRight<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 561
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float32Array#reduceRight<f32> (; 73 ;) (type $FUNCSIG$fi) (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 f32)
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 1
  i32.sub
  set_local $1
  loop $continue|0
   get_local $1
   i32.const -1
   i32.ne
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $0
    i32.load
    get_local $0
    i32.load offset=4
    i32.add
    get_local $1
    i32.const 2
    i32.shl
    i32.add
    f32.load offset=8
    get_local $1
    get_local $0
    i32.const 22
    call_indirect (type $ffiif)
    set_local $2
    get_local $1
    i32.const 1
    i32.sub
    set_local $1
    br $continue|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/reduceRightFloat32ArrayTest (; 74 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32,i32>#constructor
  tee_local $0
  i32.const 0
  f32.const 1
  call $~lib/internal/typedarray/TypedArray<f32,f32>#__set
  get_local $0
  i32.const 1
  f32.const 2
  call $~lib/internal/typedarray/TypedArray<f32,f32>#__set
  get_local $0
  i32.const 2
  f32.const 3
  call $~lib/internal/typedarray/TypedArray<f32,f32>#__set
  get_local $0
  call $~lib/typedarray/Float32Array#reduceRight<f32>
  f32.const 6
  f32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 576
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float64Array#reduceRight<f64> (; 75 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 f64)
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 1
  i32.sub
  set_local $1
  loop $continue|0
   get_local $1
   i32.const -1
   i32.ne
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $0
    i32.load
    get_local $0
    i32.load offset=4
    i32.add
    get_local $1
    i32.const 3
    i32.shl
    i32.add
    f64.load offset=8
    get_local $1
    get_local $0
    i32.const 23
    call_indirect (type $FFiiF)
    set_local $2
    get_local $1
    i32.const 1
    i32.sub
    set_local $1
    br $continue|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/reduceRightFloat64ArrayTest (; 76 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i64,i64>#constructor
  tee_local $0
  i32.const 0
  f64.const 1
  call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
  get_local $0
  i32.const 1
  f64.const 2
  call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
  get_local $0
  i32.const 2
  f64.const 3
  call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
  get_local $0
  call $~lib/typedarray/Float64Array#reduceRight<f64>
  f64.const 6
  f64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 591
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 77 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 664
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  i32.const 0
  call $std/typedarray/testInstantiate
  i32.const 5
  call $std/typedarray/testInstantiate
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32,i32>#constructor
  set_global $std/typedarray/arr
  get_global $std/typedarray/arr
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_global $std/typedarray/arr
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_global $std/typedarray/arr
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_global $std/typedarray/arr
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 97
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 98
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr
  i32.load offset=8
  i32.const 12
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 99
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 100
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 101
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 102
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr
  i32.const 2
  call $~lib/typedarray/Int32Array#subarray
  set_global $std/typedarray/arr
  get_global $std/typedarray/arr
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 105
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr
  i32.load offset=4
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 106
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr
  i32.load offset=8
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 107
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 108
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i64,i64>#constructor
  set_global $std/typedarray/af64
  get_global $std/typedarray/af64
  i32.const 0
  f64.const 1
  call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
  get_global $std/typedarray/af64
  i32.const 1
  f64.const 2
  call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
  get_global $std/typedarray/af64
  i32.const 2
  f64.const 7
  call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
  get_global $std/typedarray/af64
  i32.const 3
  f64.const 6
  call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
  get_global $std/typedarray/af64
  i32.const 4
  f64.const 5
  call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
  get_global $std/typedarray/af64
  i32.const 5
  f64.const 4
  call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
  get_global $std/typedarray/af64
  i32.const 6
  f64.const 3
  call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
  get_global $std/typedarray/af64
  i32.const 7
  f64.const 8
  call $~lib/internal/typedarray/TypedArray<f64,f64>#__set
  get_global $std/typedarray/af64
  call $~lib/typedarray/Float64Array#subarray
  set_global $std/typedarray/af64
  get_global $std/typedarray/af64
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 122
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/af64
  i32.load offset=4
  i32.const 16
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 123
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/af64
  i32.load offset=8
  i32.const 32
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 124
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  set_global $~argc
  get_global $std/typedarray/af64
  set_local $1
  block $1of1
   block $0of1
    block $outOfRange
     get_global $~argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 1
   set_local $0
  end
  get_local $1
  get_local $0
  call $~lib/internal/typedarray/TypedArray<f64,f64>#sort
  drop
  get_global $std/typedarray/af64
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<f64,f64>#__get
  f64.const 4
  f64.eq
  tee_local $0
  if
   get_global $std/typedarray/af64
   i32.const 1
   call $~lib/internal/typedarray/TypedArray<f64,f64>#__get
   f64.const 5
   f64.eq
   set_local $0
  end
  get_local $0
  if
   get_global $std/typedarray/af64
   i32.const 2
   call $~lib/internal/typedarray/TypedArray<f64,f64>#__get
   f64.const 6
   f64.eq
   set_local $0
  end
  get_local $0
  if
   get_global $std/typedarray/af64
   i32.const 3
   call $~lib/internal/typedarray/TypedArray<f64,f64>#__get
   f64.const 7
   f64.eq
   set_local $0
  end
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 126
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8,i32>#constructor
  set_global $std/typedarray/clampedArr
  get_global $std/typedarray/clampedArr
  i32.const 0
  i32.const -32
  call $~lib/typedarray/Uint8ClampedArray#__set
  get_global $std/typedarray/clampedArr
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  get_global $std/typedarray/clampedArr
  i32.const 2
  i32.const 256
  call $~lib/typedarray/Uint8ClampedArray#__set
  get_global $std/typedarray/clampedArr
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__get
  i32.const 255
  i32.and
  if
   i32.const 0
   i32.const 8
   i32.const 133
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/clampedArr
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__get
  i32.const 255
  i32.and
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 134
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/clampedArr
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__get
  i32.const 255
  i32.and
  i32.const 255
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 135
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i8,i32>#constructor
  set_global $std/typedarray/arr8
  get_global $std/typedarray/arr8
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_global $std/typedarray/arr8
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_global $std/typedarray/arr8
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_global $std/typedarray/arr8
  i32.const 3
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_global $std/typedarray/arr8
  i32.const 4
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_global $std/typedarray/arr8
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8,i32>#fill
  drop
  get_global $std/typedarray/arr8
  i32.const 192
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 145
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  set_global $~argc
  get_global $std/typedarray/arr8
  i32.const 0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i8,i32>#fill|trampoline
  drop
  get_global $std/typedarray/arr8
  i32.const 216
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 148
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr8
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/internal/typedarray/TypedArray<i8,i32>#fill
  drop
  get_global $std/typedarray/arr8
  i32.const 240
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 151
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  set_global $~argc
  get_global $std/typedarray/arr8
  i32.const 2
  i32.const -2
  call $~lib/internal/typedarray/TypedArray<i8,i32>#fill|trampoline
  drop
  get_global $std/typedarray/arr8
  i32.const 264
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 154
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr8
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i8,i32>#fill
  drop
  get_global $std/typedarray/arr8
  i32.const 288
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 157
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr8
  i32.const 4
  call $~lib/typedarray/Int8Array#subarray
  set_global $std/typedarray/sub8
  i32.const 1
  set_global $~argc
  get_global $std/typedarray/sub8
  i32.const 0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i8,i32>#fill|trampoline
  drop
  get_global $std/typedarray/sub8
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 161
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/sub8
  i32.load offset=4
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 162
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/sub8
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 163
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/sub8
  i32.const 312
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 164
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr8
  i32.const 336
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 165
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i32,i32>#constructor
  set_global $std/typedarray/arr32
  get_global $std/typedarray/arr32
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_global $std/typedarray/arr32
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_global $std/typedarray/arr32
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_global $std/typedarray/arr32
  i32.const 3
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_global $std/typedarray/arr32
  i32.const 4
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i32,i32>#__set
  get_global $std/typedarray/arr32
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32,i32>#fill
  drop
  get_global $std/typedarray/arr32
  i32.const 376
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 175
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  set_global $~argc
  get_global $std/typedarray/arr32
  i32.const 0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i32,i32>#fill|trampoline
  drop
  get_global $std/typedarray/arr32
  i32.const 416
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 178
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr32
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/internal/typedarray/TypedArray<i32,i32>#fill
  drop
  get_global $std/typedarray/arr32
  i32.const 456
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 181
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  set_global $~argc
  get_global $std/typedarray/arr32
  i32.const 2
  i32.const -2
  call $~lib/internal/typedarray/TypedArray<i32,i32>#fill|trampoline
  drop
  get_global $std/typedarray/arr32
  i32.const 496
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 184
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr32
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i32,i32>#fill
  drop
  get_global $std/typedarray/arr32
  i32.const 536
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 187
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr32
  i32.const 4
  call $~lib/typedarray/Int32Array#subarray
  set_global $std/typedarray/sub32
  i32.const 1
  set_global $~argc
  get_global $std/typedarray/sub32
  i32.const 0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i32,i32>#fill|trampoline
  drop
  get_global $std/typedarray/sub32
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 191
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/sub32
  i32.load offset=4
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 192
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/sub32
  i32.load offset=8
  i32.const 12
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 193
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/sub32
  i32.const 576
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 194
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr32
  i32.const 616
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 195
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 134217727
  call $~lib/internal/typedarray/TypedArray<i64,i64>#constructor
  drop
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i8,i32>#constructor
  set_global $std/typedarray/multisubarr
  get_global $std/typedarray/multisubarr
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_global $std/typedarray/multisubarr
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_global $std/typedarray/multisubarr
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_global $std/typedarray/multisubarr
  i32.const 3
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_global $std/typedarray/multisubarr
  i32.const 4
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_global $std/typedarray/multisubarr
  i32.const 5
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8,u32>#__set
  get_global $std/typedarray/multisubarr
  i32.const 6
  call $~lib/typedarray/Int8Array#subarray
  set_global $std/typedarray/multisubarr1
  get_global $std/typedarray/multisubarr1
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i8,i32>#__get
  i32.const 255
  i32.and
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 212
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/multisubarr1
  i32.load offset=8
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 213
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/multisubarr1
  i32.load offset=4
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 214
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/multisubarr1
  i32.load offset=8
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 215
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/multisubarr1
  i32.const 5
  call $~lib/typedarray/Int8Array#subarray
  set_global $std/typedarray/multisubarr2
  get_global $std/typedarray/multisubarr2
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i8,i32>#__get
  i32.const 255
  i32.and
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 218
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/multisubarr2
  i32.load offset=8
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 219
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/multisubarr2
  i32.load offset=4
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 220
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/multisubarr2
  i32.load offset=8
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 221
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/multisubarr2
  i32.const 4
  call $~lib/typedarray/Int8Array#subarray
  set_global $std/typedarray/multisubarr3
  get_global $std/typedarray/multisubarr3
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i8,i32>#__get
  i32.const 255
  i32.and
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 224
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/multisubarr3
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 225
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/multisubarr3
  i32.load offset=4
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 226
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/multisubarr3
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 227
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $std/typedarray/reduceInt8ArrayTest
  call $std/typedarray/reduceUint8ArrayTest
  call $std/typedarray/reduceUint8ClampedArrayTest
  call $std/typedarray/reduceInt16ArrayTest
  call $std/typedarray/reduceUint16ArrayTest
  call $std/typedarray/reduceInt32ArrayTest
  call $std/typedarray/reduceUint32ArrayTest
  call $std/typedarray/reduceInt64ArrayTest
  call $std/typedarray/reduceUint64ArrayTest
  call $std/typedarray/reduceFloat32ArrayTest
  call $std/typedarray/reduceFloat64ArrayTest
  call $std/typedarray/reduceRightInt8ArrayTest
  call $std/typedarray/reduceRightUint8ArrayTest
  call $std/typedarray/reduceRightUint8ClampedArrayTest
  call $std/typedarray/reduceRightInt16ArrayTest
  call $std/typedarray/reduceRightUint16ArrayTest
  call $std/typedarray/reduceRightInt32ArrayTest
  call $std/typedarray/reduceRightUint32ArrayTest
  call $std/typedarray/reduceRightInt64ArrayTest
  call $std/typedarray/reduceRightUint64ArrayTest
  call $std/typedarray/reduceRightFloat32ArrayTest
  call $std/typedarray/reduceRightFloat64ArrayTest
 )
 (func $null (; 78 ;) (type $v)
  nop
 )
)
