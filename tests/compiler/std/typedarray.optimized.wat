(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
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
 (type $IiiI (func (param i64 i32 i32) (result i64)))
 (type $iiI (func (param i32 i32) (result i64)))
 (type $fiif (func (param f32 i32 i32) (result f32)))
 (type $iif (func (param i32 i32) (result f32)))
 (type $FiiF (func (param f64 i32 i32) (result f64)))
 (type $Iiii (func (param i64 i32 i32) (result i32)))
 (type $fiii (func (param f32 i32 i32) (result i32)))
 (type $Fiii (func (param f64 i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$fi (func (param i32) (result f32)))
 (type $FUNCSIG$di (func (param i32) (result f64)))
 (type $FUNCSIG$ff (func (param f32) (result f32)))
 (type $FUNCSIG$dd (func (param f64) (result f64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
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
 (table $0 101 anyfunc)
 (elem (i32.const 0) $null $~lib/typedarray/Float64Array#sort|trampoline~anonymous|1 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int64Array,i64>~anonymous|9 $std/typedarray/testReduce<Int64Array,i64>~anonymous|9 $std/typedarray/testReduce<Float32Array,f32>~anonymous|11 $std/typedarray/testReduce<Float64Array,f64>~anonymous|12 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int64Array,i64>~anonymous|9 $std/typedarray/testReduce<Int64Array,i64>~anonymous|9 $std/typedarray/testReduce<Float32Array,f32>~anonymous|11 $std/typedarray/testReduce<Float64Array,f64>~anonymous|12 $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 $std/typedarray/testArrayMap<Int64Array,i64>~anonymous|31 $std/typedarray/testArrayMap<Int64Array,i64>~anonymous|31 $std/typedarray/testArrayMap<Float32Array,f32>~anonymous|33 $std/typedarray/testArrayMap<Float64Array,f64>~anonymous|34 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|36 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|36 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|36 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|41 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|42 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|41 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|42 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|45 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|46 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|45 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|46 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|49 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|50 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|49 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|50 $std/typedarray/testArraySome<Float32Array,f32>~anonymous|53 $std/typedarray/testArraySome<Float32Array,f32>~anonymous|54 $std/typedarray/testArraySome<Float64Array,f64>~anonymous|55 $std/typedarray/testArraySome<Float64Array,f64>~anonymous|56 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArrayFindIndex<Int8Array,i8>~anonymous|58 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArrayFindIndex<Int8Array,i8>~anonymous|58 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArrayFindIndex<Int8Array,i8>~anonymous|58 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|41 $std/typedarray/testArrayFindIndex<Int16Array,i16>~anonymous|64 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|41 $std/typedarray/testArrayFindIndex<Int16Array,i16>~anonymous|64 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|45 $std/typedarray/testArrayFindIndex<Int32Array,i32>~anonymous|68 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|45 $std/typedarray/testArrayFindIndex<Int32Array,i32>~anonymous|68 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|49 $std/typedarray/testArrayFindIndex<Int64Array,i64>~anonymous|72 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|49 $std/typedarray/testArrayFindIndex<Int64Array,i64>~anonymous|72 $std/typedarray/testArraySome<Float32Array,f32>~anonymous|53 $std/typedarray/testArrayFindIndex<Float32Array,f32>~anonymous|76 $std/typedarray/testArraySome<Float64Array,f64>~anonymous|55 $std/typedarray/testArrayFindIndex<Float64Array,f64>~anonymous|78 $std/typedarray/testArrayEvery<Int8Array,i8>~anonymous|79 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArrayEvery<Uint8Array,u8>~anonymous|81 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArrayEvery<Uint8Array,u8>~anonymous|81 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArrayEvery<Int16Array,i16>~anonymous|85 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|41 $std/typedarray/testArrayEvery<Uint8Array,u8>~anonymous|81 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|41 $std/typedarray/testArrayEvery<Int32Array,i32>~anonymous|89 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|45 $std/typedarray/testArrayEvery<Uint8Array,u8>~anonymous|81 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|45 $std/typedarray/testArrayEvery<Int64Array,i64>~anonymous|93 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|49 $std/typedarray/testArrayEvery<Uint64Array,u64>~anonymous|95 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|49 $std/typedarray/testArrayEvery<Float32Array,f32>~anonymous|97 $std/typedarray/testArraySome<Float32Array,f32>~anonymous|53 $std/typedarray/testArrayEvery<Float64Array,f64>~anonymous|99 $std/typedarray/testArraySome<Float64Array,f64>~anonymous|55)
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
   i32.const 112
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
 (func $~lib/internal/memory/memset (; 3 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/internal/typedarray/TypedArray<i8>#constructor (; 4 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $1
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 48
   i32.const 23
   i32.const 34
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  call $~lib/internal/arraybuffer/allocateUnsafe
  tee_local $2
  i32.const 8
  i32.add
  i32.const 0
  get_local $1
  call $~lib/internal/memory/memset
  get_local $0
  i32.eqz
  if
   i32.const 12
   call $~lib/allocator/arena/__memory_allocate
   set_local $0
  end
  get_local $0
  i32.const 0
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  i32.const 0
  i32.store offset=8
  get_local $0
  get_local $2
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  get_local $1
  i32.store offset=8
  get_local $0
 )
 (func $~lib/typedarray/Int8Array#constructor (; 5 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   i32.const 12
   call $~lib/allocator/arena/__memory_allocate
  end
  get_local $1
  call $~lib/internal/typedarray/TypedArray<i8>#constructor
 )
 (func $~lib/typedarray/Uint8ClampedArray#constructor (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  get_local $0
  call $~lib/typedarray/Int8Array#constructor
 )
 (func $~lib/internal/typedarray/TypedArray<i16>#constructor (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $1
  i32.const 536870908
  i32.gt_u
  if
   i32.const 0
   i32.const 48
   i32.const 23
   i32.const 34
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 1
  i32.shl
  tee_local $1
  call $~lib/internal/arraybuffer/allocateUnsafe
  tee_local $2
  i32.const 8
  i32.add
  i32.const 0
  get_local $1
  call $~lib/internal/memory/memset
  get_local $0
  i32.eqz
  if
   i32.const 12
   call $~lib/allocator/arena/__memory_allocate
   set_local $0
  end
  get_local $0
  i32.const 0
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  i32.const 0
  i32.store offset=8
  get_local $0
  get_local $2
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  get_local $1
  i32.store offset=8
  get_local $0
 )
 (func $~lib/typedarray/Int16Array#constructor (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  get_local $0
  call $~lib/internal/typedarray/TypedArray<i16>#constructor
 )
 (func $~lib/internal/typedarray/TypedArray<i32>#constructor (; 9 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 48
   i32.const 23
   i32.const 34
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  tee_local $1
  call $~lib/internal/arraybuffer/allocateUnsafe
  tee_local $2
  i32.const 8
  i32.add
  i32.const 0
  get_local $1
  call $~lib/internal/memory/memset
  get_local $0
  i32.eqz
  if
   i32.const 12
   call $~lib/allocator/arena/__memory_allocate
   set_local $0
  end
  get_local $0
  i32.const 0
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  i32.const 0
  i32.store offset=8
  get_local $0
  get_local $2
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  get_local $1
  i32.store offset=8
  get_local $0
 )
 (func $~lib/typedarray/Int32Array#constructor (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  get_local $0
  call $~lib/internal/typedarray/TypedArray<i32>#constructor
 )
 (func $~lib/internal/typedarray/TypedArray<i64>#constructor (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $1
  i32.const 134217727
  i32.gt_u
  if
   i32.const 0
   i32.const 48
   i32.const 23
   i32.const 34
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 3
  i32.shl
  tee_local $1
  call $~lib/internal/arraybuffer/allocateUnsafe
  tee_local $2
  i32.const 8
  i32.add
  i32.const 0
  get_local $1
  call $~lib/internal/memory/memset
  get_local $0
  i32.eqz
  if
   i32.const 12
   call $~lib/allocator/arena/__memory_allocate
   set_local $0
  end
  get_local $0
  i32.const 0
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  i32.const 0
  i32.store offset=8
  get_local $0
  get_local $2
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  get_local $1
  i32.store offset=8
  get_local $0
 )
 (func $~lib/typedarray/Int64Array#constructor (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  get_local $0
  call $~lib/internal/typedarray/TypedArray<i64>#constructor
 )
 (func $std/typedarray/testInstantiate (; 13 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  i32.const 0
  get_local $0
  call $~lib/typedarray/Int8Array#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 34
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
   i32.const 35
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
   i32.const 36
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  get_local $0
  call $~lib/typedarray/Int8Array#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 39
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
   i32.const 40
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
   i32.const 41
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/typedarray/Uint8ClampedArray#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 44
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
   i32.const 45
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
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/typedarray/Int16Array#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 49
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
   i32.const 50
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
   i32.const 51
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/typedarray/Int16Array#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 54
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
   i32.const 55
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
   i32.const 56
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/typedarray/Int32Array#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 59
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
   i32.const 60
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
   i32.const 61
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/typedarray/Int32Array#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 64
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
   i32.const 65
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
   i32.const 66
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/typedarray/Int64Array#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 69
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
   i32.const 70
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
   i32.const 71
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/typedarray/Int64Array#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 74
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
   i32.const 75
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
   i32.const 76
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/typedarray/Int32Array#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 79
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
   i32.const 80
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
   i32.const 81
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  call $~lib/typedarray/Int64Array#constructor
  tee_local $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 84
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
   i32.const 85
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
   i32.const 86
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/typedarray/TypedArray<i32>#__set (; 14 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 50
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  get_local $0
  i32.load
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  i32.add
  get_local $2
  i32.store offset=8
 )
 (func $~lib/internal/typedarray/TypedArray<i32>#__get (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 39
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  get_local $0
  i32.load
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  i32.add
  i32.load offset=8
 )
 (func $~lib/typedarray/Int32Array#subarray (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/internal/typedarray/TypedArray<f64>#__set (; 17 ;) (type $iiFv) (param $0 i32) (param $1 i32) (param $2 f64)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 50
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  get_local $0
  i32.load
  get_local $1
  i32.const 3
  i32.shl
  i32.add
  i32.add
  get_local $2
  f64.store offset=8
 )
 (func $~lib/typedarray/Float64Array#subarray (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  set_local $3
  i32.const 6
  get_local $1
  i32.const 6
  get_local $1
  i32.lt_s
  select
  tee_local $2
  get_local $3
  get_local $2
  get_local $3
  i32.gt_s
  select
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
  i32.const 3
  i32.shl
  i32.add
  i32.store offset=4
  get_local $2
  get_local $1
  get_local $3
  i32.sub
  i32.const 3
  i32.shl
  i32.store offset=8
  get_local $2
 )
 (func $~lib/internal/sort/insertionSort<f64> (; 19 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
    get_local $4
    i32.const 3
    i32.shl
    get_local $0
    i32.add
    get_local $1
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
       get_local $5
       i32.const 3
       i32.shl
       get_local $0
       i32.add
       get_local $1
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
       get_local $8
       i32.const 1
       i32.add
       i32.const 3
       i32.shl
       get_local $0
       i32.add
       get_local $1
       i32.add
       get_local $7
       f64.store offset=8
       br $continue|1
      end
     end
    end
    get_local $5
    i32.const 1
    i32.add
    i32.const 3
    i32.shl
    get_local $0
    i32.add
    get_local $1
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
 (func $~lib/internal/sort/weakHeapSort<f64> (; 20 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  (local $9 i32)
  get_local $2
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  tee_local $6
  call $~lib/allocator/arena/__memory_allocate
  tee_local $9
  i32.const 0
  get_local $6
  call $~lib/internal/memory/memset
  get_local $2
  i32.const 1
  i32.sub
  set_local $4
  loop $repeat|0
   get_local $4
   i32.const 0
   i32.gt_s
   if
    get_local $4
    set_local $6
    loop $continue|1
     get_local $6
     i32.const 1
     i32.and
     get_local $6
     i32.const 6
     i32.shr_s
     i32.const 2
     i32.shl
     get_local $9
     i32.add
     i32.load
     get_local $6
     i32.const 1
     i32.shr_s
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     i32.eq
     if
      get_local $6
      i32.const 1
      i32.shr_s
      set_local $6
      br $continue|1
     end
    end
    get_local $6
    i32.const 1
    i32.shr_s
    tee_local $5
    i32.const 3
    i32.shl
    get_local $0
    i32.add
    get_local $1
    i32.add
    f64.load offset=8
    set_local $8
    get_local $4
    i32.const 3
    i32.shl
    get_local $0
    i32.add
    get_local $1
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
     get_local $4
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     get_local $9
     i32.add
     tee_local $6
     get_local $6
     i32.load
     i32.const 1
     get_local $4
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     get_local $4
     i32.const 3
     i32.shl
     get_local $0
     i32.add
     get_local $1
     i32.add
     get_local $8
     f64.store offset=8
     get_local $5
     i32.const 3
     i32.shl
     get_local $0
     i32.add
     get_local $1
     i32.add
     get_local $7
     f64.store offset=8
    end
    get_local $4
    i32.const 1
    i32.sub
    set_local $4
    br $repeat|0
   end
  end
  get_local $2
  i32.const 1
  i32.sub
  set_local $4
  loop $repeat|2
   get_local $4
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
    get_local $4
    i32.const 3
    i32.shl
    get_local $0
    i32.add
    get_local $1
    i32.add
    tee_local $2
    f64.load offset=8
    f64.store offset=8
    get_local $2
    get_local $7
    f64.store offset=8
    i32.const 1
    set_local $5
    loop $continue|3
     get_local $5
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     get_local $9
     i32.add
     i32.load
     get_local $5
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     get_local $5
     i32.const 1
     i32.shl
     i32.add
     tee_local $6
     get_local $4
     i32.lt_s
     if
      get_local $6
      set_local $5
      br $continue|3
     end
    end
    loop $continue|4
     get_local $5
     i32.const 0
     i32.gt_s
     if
      get_local $0
      get_local $1
      i32.add
      f64.load offset=8
      set_local $7
      get_local $5
      i32.const 3
      i32.shl
      get_local $0
      i32.add
      get_local $1
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
       get_local $5
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
       get_local $5
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       get_local $5
       i32.const 3
       i32.shl
       get_local $0
       i32.add
       get_local $1
       i32.add
       get_local $7
       f64.store offset=8
       get_local $0
       get_local $1
       i32.add
       get_local $8
       f64.store offset=8
      end
      get_local $5
      i32.const 1
      i32.shr_s
      set_local $5
      br $continue|4
     end
    end
    get_local $4
    i32.const 1
    i32.sub
    set_local $4
    br $repeat|2
   end
  end
  get_local $0
  i32.const 8
  i32.add
  get_local $1
  i32.add
  tee_local $2
  f64.load offset=8
  set_local $7
  get_local $2
  get_local $0
  get_local $1
  i32.add
  tee_local $0
  f64.load offset=8
  f64.store offset=8
  get_local $0
  get_local $7
  f64.store offset=8
 )
 (func $~lib/typedarray/Float64Array#sort (; 21 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  get_local $0
  i32.load offset=4
  set_local $2
  block $~lib/internal/typedarray/SORT<Float64Array,f64>|inlined.0
   get_local $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   tee_local $4
   i32.const 1
   i32.le_s
   br_if $~lib/internal/typedarray/SORT<Float64Array,f64>|inlined.0
   get_local $0
   i32.load
   set_local $3
   get_local $4
   i32.const 2
   i32.eq
   if
    get_local $3
    i32.const 8
    i32.add
    get_local $2
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
     get_local $3
     i32.const 8
     i32.add
     get_local $2
     i32.add
     get_local $6
     f64.store offset=8
     get_local $2
     get_local $3
     i32.add
     get_local $5
     f64.store offset=8
    end
    br $~lib/internal/typedarray/SORT<Float64Array,f64>|inlined.0
   end
   get_local $4
   i32.const 256
   i32.lt_s
   if
    get_local $3
    get_local $2
    get_local $4
    get_local $1
    call $~lib/internal/sort/insertionSort<f64>
   else    
    get_local $3
    get_local $2
    get_local $4
    get_local $1
    call $~lib/internal/sort/weakHeapSort<f64>
   end
  end
  get_local $0
 )
 (func $~lib/typedarray/Float64Array#sort|trampoline~anonymous|1 (; 22 ;) (type $FFi) (param $0 f64) (param $1 f64) (result i32)
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
 (func $~lib/internal/typedarray/TypedArray<f64>#__get (; 23 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 39
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  get_local $0
  i32.load
  get_local $1
  i32.const 3
  i32.shl
  i32.add
  i32.add
  f64.load offset=8
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#__set (; 24 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 50
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  get_local $1
  get_local $0
  i32.load
  i32.add
  i32.add
  get_local $2
  i32.store8 offset=8
 )
 (func $~lib/typedarray/Uint8ClampedArray#__set (; 25 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
  call $~lib/internal/typedarray/TypedArray<u8>#__set
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#__get (; 26 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 39
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  get_local $1
  get_local $0
  i32.load
  i32.add
  i32.add
  i32.load8_u offset=8
 )
 (func $~lib/typedarray/Int8Array#fill (; 27 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/internal/typedarray/TypedArray<i8>#__get (; 28 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 39
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  get_local $1
  get_local $0
  i32.load
  i32.add
  i32.add
  i32.load8_s offset=8
 )
 (func $std/typedarray/isInt8ArrayEqual (; 29 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  set_local $3
  loop $repeat|0
   get_local $2
   get_local $3
   i32.lt_s
   if
    get_local $0
    get_local $2
    call $~lib/internal/typedarray/TypedArray<i8>#__get
    i32.const 255
    i32.and
    get_local $2
    get_local $1
    i32.load
    tee_local $4
    i32.load
    i32.lt_u
    if (result i32)
     get_local $2
     get_local $4
     i32.add
     i32.load8_s offset=8
    else     
     unreachable
    end
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
 (func $~lib/typedarray/Int8Array#fill|trampoline (; 30 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  call $~lib/typedarray/Int8Array#fill
 )
 (func $~lib/typedarray/Int8Array#subarray (; 31 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/typedarray/Int32Array#fill (; 32 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
    get_local $2
    i32.const 2
    i32.shl
    get_local $6
    i32.add
    get_local $7
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
 (func $std/typedarray/isInt32ArrayEqual (; 33 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  set_local $3
  loop $repeat|0
   get_local $2
   get_local $3
   i32.lt_s
   if
    get_local $0
    get_local $2
    call $~lib/internal/typedarray/TypedArray<i32>#__get
    get_local $2
    get_local $1
    i32.load
    tee_local $4
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     get_local $2
     i32.const 2
     i32.shl
     get_local $4
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
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
 (func $~lib/typedarray/Int32Array#fill|trampoline (; 34 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  call $~lib/typedarray/Int32Array#fill
 )
 (func $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 (; 35 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/typedarray/Int8Array#reduce<i8> (; 36 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=8
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  loop $repeat|0
   get_local $1
   get_local $3
   i32.lt_s
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $1
    get_local $4
    i32.add
    get_local $5
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
    br $repeat|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/testReduce<Int8Array,i8> (; 37 ;) (type $v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__set
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
 (func $~lib/typedarray/Uint8Array#reduce<u8> (; 38 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  i32.load offset=8
  set_local $4
  get_local $0
  i32.load
  set_local $5
  get_local $0
  i32.load offset=4
  set_local $6
  loop $repeat|0
   get_local $2
   get_local $4
   i32.lt_s
   if
    i32.const 4
    set_global $~argc
    get_local $3
    get_local $2
    get_local $5
    i32.add
    get_local $6
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
    br $repeat|0
   end
  end
  get_local $3
 )
 (func $std/typedarray/testReduce<Uint8Array,u8> (; 39 ;) (type $v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__set
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
   i32.const 252
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduce<Uint8ClampedArray,u8> (; 40 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
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
   i32.const 252
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/typedarray/TypedArray<i16>#__set (; 41 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 50
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  get_local $0
  i32.load
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  i32.add
  get_local $2
  i32.store16 offset=8
 )
 (func $~lib/typedarray/Int16Array#reduce<i16> (; 42 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  loop $repeat|0
   get_local $1
   get_local $3
   i32.lt_s
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $1
    i32.const 1
    i32.shl
    get_local $4
    i32.add
    get_local $5
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
    br $repeat|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/testReduce<Int16Array,i16> (; 43 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  call $~lib/typedarray/Int16Array#reduce<i16>
  i32.const 65535
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
 (func $~lib/typedarray/Uint16Array#reduce<u16> (; 44 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  loop $repeat|0
   get_local $1
   get_local $3
   i32.lt_s
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $1
    i32.const 1
    i32.shl
    get_local $4
    i32.add
    get_local $5
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
    br $repeat|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/testReduce<Uint16Array,u16> (; 45 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  call $~lib/typedarray/Uint16Array#reduce<u16>
  i32.const 65535
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
 (func $~lib/typedarray/Int32Array#reduce<i32> (; 46 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $0
  i32.load
  set_local $5
  get_local $0
  i32.load offset=4
  set_local $6
  loop $repeat|0
   get_local $2
   get_local $4
   i32.lt_s
   if
    i32.const 4
    set_global $~argc
    get_local $3
    get_local $2
    i32.const 2
    i32.shl
    get_local $5
    i32.add
    get_local $6
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
    br $repeat|0
   end
  end
  get_local $3
 )
 (func $std/typedarray/testReduce<Int32Array,i32> (; 47 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 7
  call $~lib/typedarray/Int32Array#reduce<i32>
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
 (func $std/typedarray/testReduce<Uint32Array,u32> (; 48 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 8
  call $~lib/typedarray/Int32Array#reduce<i32>
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
 (func $~lib/internal/typedarray/TypedArray<i64>#__set (; 49 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 50
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  get_local $0
  i32.load
  get_local $1
  i32.const 3
  i32.shl
  i32.add
  i32.add
  get_local $2
  i64.store offset=8
 )
 (func $std/typedarray/testReduce<Int64Array,i64>~anonymous|9 (; 50 ;) (type $IIiiI) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  get_local $0
  get_local $1
  i64.add
 )
 (func $~lib/typedarray/Int64Array#reduce<i64> (; 51 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  set_local $4
  get_local $0
  i32.load
  set_local $5
  get_local $0
  i32.load offset=4
  set_local $6
  loop $repeat|0
   get_local $2
   get_local $4
   i32.lt_s
   if
    i32.const 4
    set_global $~argc
    get_local $3
    get_local $2
    i32.const 3
    i32.shl
    get_local $5
    i32.add
    get_local $6
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
    br $repeat|0
   end
  end
  get_local $3
 )
 (func $std/typedarray/testReduce<Int64Array,i64> (; 52 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  tee_local $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 9
  call $~lib/typedarray/Int64Array#reduce<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 252
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduce<Uint64Array,u64> (; 53 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  tee_local $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 10
  call $~lib/typedarray/Int64Array#reduce<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 252
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/typedarray/TypedArray<f32>#__set (; 54 ;) (type $iifv) (param $0 i32) (param $1 i32) (param $2 f32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 50
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  get_local $0
  i32.load
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  i32.add
  get_local $2
  f32.store offset=8
 )
 (func $std/typedarray/testReduce<Float32Array,f32>~anonymous|11 (; 55 ;) (type $ffiif) (param $0 f32) (param $1 f32) (param $2 i32) (param $3 i32) (result f32)
  get_local $0
  get_local $1
  f32.add
 )
 (func $~lib/typedarray/Float32Array#reduce<f32> (; 56 ;) (type $FUNCSIG$fi) (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  loop $repeat|0
   get_local $1
   get_local $3
   i32.lt_s
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $1
    i32.const 2
    i32.shl
    get_local $4
    i32.add
    get_local $5
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
    br $repeat|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/testReduce<Float32Array,f32> (; 57 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  tee_local $0
  i32.const 0
  f32.const 1
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  get_local $0
  i32.const 1
  f32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  get_local $0
  i32.const 2
  f32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  get_local $0
  call $~lib/typedarray/Float32Array#reduce<f32>
  f32.const 6
  f32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 252
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduce<Float64Array,f64>~anonymous|12 (; 58 ;) (type $FFiiF) (param $0 f64) (param $1 f64) (param $2 i32) (param $3 i32) (result f64)
  get_local $0
  get_local $1
  f64.add
 )
 (func $~lib/typedarray/Float64Array#reduce<f64> (; 59 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  loop $repeat|0
   get_local $1
   get_local $3
   i32.lt_s
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $1
    i32.const 3
    i32.shl
    get_local $4
    i32.add
    get_local $5
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
    br $repeat|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/testReduce<Float64Array,f64> (; 60 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  tee_local $0
  i32.const 0
  f64.const 1
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_local $0
  i32.const 1
  f64.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_local $0
  i32.const 2
  f64.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_local $0
  call $~lib/typedarray/Float64Array#reduce<f64>
  f64.const 6
  f64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 252
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int8Array#reduceRight<i8> (; 61 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.sub
  set_local $1
  loop $repeat|0
   get_local $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $1
    get_local $3
    i32.add
    get_local $4
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
    br $repeat|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/testReduceRight<Int8Array,i8> (; 62 ;) (type $v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  call $~lib/typedarray/Int8Array#reduceRight<i8>
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8Array#reduceRight<u8> (; 63 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.sub
  set_local $2
  loop $repeat|0
   get_local $2
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    set_global $~argc
    get_local $3
    get_local $2
    get_local $4
    i32.add
    get_local $5
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
    br $repeat|0
   end
  end
  get_local $3
 )
 (func $std/typedarray/testReduceRight<Uint8Array,u8> (; 64 ;) (type $v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__set
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
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduceRight<Uint8ClampedArray,u8> (; 65 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
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
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int16Array#reduceRight<i16> (; 66 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.sub
  set_local $1
  loop $repeat|0
   get_local $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $1
    i32.const 1
    i32.shl
    get_local $3
    i32.add
    get_local $4
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
    br $repeat|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/testReduceRight<Int16Array,i16> (; 67 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  call $~lib/typedarray/Int16Array#reduceRight<i16>
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#reduceRight<u16> (; 68 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.sub
  set_local $1
  loop $repeat|0
   get_local $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $1
    i32.const 1
    i32.shl
    get_local $3
    i32.add
    get_local $4
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
    br $repeat|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/testReduceRight<Uint16Array,u16> (; 69 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  call $~lib/typedarray/Uint16Array#reduceRight<u16>
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int32Array#reduceRight<i32> (; 70 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 1
  i32.sub
  set_local $2
  loop $repeat|0
   get_local $2
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    set_global $~argc
    get_local $3
    get_local $2
    i32.const 2
    i32.shl
    get_local $4
    i32.add
    get_local $5
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
    br $repeat|0
   end
  end
  get_local $3
 )
 (func $std/typedarray/testReduceRight<Int32Array,i32> (; 71 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 18
  call $~lib/typedarray/Int32Array#reduceRight<i32>
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduceRight<Uint32Array,u32> (; 72 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 19
  call $~lib/typedarray/Int32Array#reduceRight<i32>
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int64Array#reduceRight<i64> (; 73 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 1
  i32.sub
  set_local $2
  loop $repeat|0
   get_local $2
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    set_global $~argc
    get_local $3
    get_local $2
    i32.const 3
    i32.shl
    get_local $4
    i32.add
    get_local $5
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
    br $repeat|0
   end
  end
  get_local $3
 )
 (func $std/typedarray/testReduceRight<Int64Array,i64> (; 74 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  tee_local $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 20
  call $~lib/typedarray/Int64Array#reduceRight<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduceRight<Uint64Array,u64> (; 75 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  tee_local $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 21
  call $~lib/typedarray/Int64Array#reduceRight<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float32Array#reduceRight<f32> (; 76 ;) (type $FUNCSIG$fi) (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 1
  i32.sub
  set_local $1
  loop $repeat|0
   get_local $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $1
    i32.const 2
    i32.shl
    get_local $3
    i32.add
    get_local $4
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
    br $repeat|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/testReduceRight<Float32Array,f32> (; 77 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  tee_local $0
  i32.const 0
  f32.const 1
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  get_local $0
  i32.const 1
  f32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  get_local $0
  i32.const 2
  f32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  get_local $0
  call $~lib/typedarray/Float32Array#reduceRight<f32>
  f32.const 6
  f32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float64Array#reduceRight<f64> (; 78 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 1
  i32.sub
  set_local $1
  loop $repeat|0
   get_local $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    set_global $~argc
    get_local $2
    get_local $1
    i32.const 3
    i32.shl
    get_local $3
    i32.add
    get_local $4
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
    br $repeat|0
   end
  end
  get_local $2
 )
 (func $std/typedarray/testReduceRight<Float64Array,f64> (; 79 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  tee_local $0
  i32.const 0
  f64.const 1
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_local $0
  i32.const 1
  f64.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_local $0
  i32.const 2
  f64.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_local $0
  call $~lib/typedarray/Float64Array#reduceRight<f64>
  f64.const 6
  f64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 (; 80 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  get_local $0
  i32.mul
 )
 (func $~lib/typedarray/Int8Array#map (; 81 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $0
  i32.load offset=4
  set_local $3
  i32.const 0
  get_local $0
  i32.load offset=8
  tee_local $4
  call $~lib/typedarray/Int8Array#constructor
  tee_local $5
  i32.load
  set_local $6
  loop $repeat|0
   get_local $1
   get_local $4
   i32.lt_s
   if
    i32.const 3
    set_global $~argc
    get_local $1
    get_local $6
    i32.add
    get_local $1
    get_local $2
    i32.add
    get_local $3
    i32.add
    i32.load8_s offset=8
    get_local $1
    get_local $0
    i32.const 24
    call_indirect (type $iiii)
    i32.store8 offset=8
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|0
   end
  end
  get_local $5
 )
 (func $std/typedarray/testArrayMap<Int8Array,i8> (; 82 ;) (type $v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  call $~lib/typedarray/Int8Array#map
  tee_local $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 255
  i32.and
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 255
  i32.and
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 255
  i32.and
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8Array#map (; 83 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $0
  i32.load offset=4
  set_local $3
  i32.const 0
  get_local $0
  i32.load offset=8
  tee_local $4
  call $~lib/typedarray/Int8Array#constructor
  tee_local $5
  i32.load
  set_local $6
  loop $repeat|0
   get_local $1
   get_local $4
   i32.lt_s
   if
    i32.const 3
    set_global $~argc
    get_local $1
    get_local $6
    i32.add
    get_local $1
    get_local $2
    i32.add
    get_local $3
    i32.add
    i32.load8_u offset=8
    get_local $1
    get_local $0
    i32.const 25
    call_indirect (type $iiii)
    i32.store8 offset=8
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|0
   end
  end
  get_local $5
 )
 (func $std/typedarray/testArrayMap<Uint8Array,u8> (; 84 ;) (type $v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  call $~lib/typedarray/Uint8Array#map
  tee_local $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#map (; 85 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $0
  i32.load offset=4
  set_local $3
  get_local $0
  i32.load offset=8
  tee_local $4
  call $~lib/typedarray/Uint8ClampedArray#constructor
  tee_local $5
  i32.load
  set_local $6
  loop $repeat|0
   get_local $1
   get_local $4
   i32.lt_s
   if
    i32.const 3
    set_global $~argc
    get_local $1
    get_local $6
    i32.add
    get_local $1
    get_local $2
    i32.add
    get_local $3
    i32.add
    i32.load8_u offset=8
    get_local $1
    get_local $0
    i32.const 26
    call_indirect (type $iiii)
    i32.store8 offset=8
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|0
   end
  end
  get_local $5
 )
 (func $std/typedarray/testArrayMap<Uint8ClampedArray,u8> (; 86 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
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
  call $~lib/typedarray/Uint8ClampedArray#map
  tee_local $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int16Array#map (; 87 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $0
  i32.load offset=4
  set_local $3
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  tee_local $4
  call $~lib/typedarray/Int16Array#constructor
  tee_local $5
  i32.load
  set_local $6
  loop $repeat|0
   get_local $1
   get_local $4
   i32.lt_s
   if
    i32.const 3
    set_global $~argc
    get_local $1
    i32.const 1
    i32.shl
    tee_local $7
    get_local $6
    i32.add
    get_local $2
    get_local $7
    i32.add
    get_local $3
    i32.add
    i32.load16_s offset=8
    get_local $1
    get_local $0
    i32.const 27
    call_indirect (type $iiii)
    i32.store16 offset=8
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|0
   end
  end
  get_local $5
 )
 (func $~lib/internal/typedarray/TypedArray<i16>#__get (; 88 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 39
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  get_local $0
  i32.load
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  i32.add
  i32.load16_s offset=8
 )
 (func $std/typedarray/testArrayMap<Int16Array,i16> (; 89 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  call $~lib/typedarray/Int16Array#map
  tee_local $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 65535
  i32.and
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 65535
  i32.and
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 65535
  i32.and
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#map (; 90 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $0
  i32.load offset=4
  set_local $3
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  tee_local $4
  call $~lib/typedarray/Int16Array#constructor
  tee_local $5
  i32.load
  set_local $6
  loop $repeat|0
   get_local $1
   get_local $4
   i32.lt_s
   if
    i32.const 3
    set_global $~argc
    get_local $1
    i32.const 1
    i32.shl
    tee_local $7
    get_local $6
    i32.add
    get_local $2
    get_local $7
    i32.add
    get_local $3
    i32.add
    i32.load16_u offset=8
    get_local $1
    get_local $0
    i32.const 28
    call_indirect (type $iiii)
    i32.store16 offset=8
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|0
   end
  end
  get_local $5
 )
 (func $~lib/internal/typedarray/TypedArray<u16>#__get (; 91 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 39
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  get_local $0
  i32.load
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  i32.add
  i32.load16_u offset=8
 )
 (func $std/typedarray/testArrayMap<Uint16Array,u16> (; 92 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  call $~lib/typedarray/Uint16Array#map
  tee_local $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int32Array#map (; 93 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  tee_local $5
  call $~lib/typedarray/Int32Array#constructor
  tee_local $6
  i32.load
  set_local $7
  loop $repeat|0
   block $break|0
    get_local $2
    get_local $5
    i32.ge_s
    br_if $break|0
    i32.const 3
    set_global $~argc
    get_local $7
    get_local $2
    i32.const 2
    i32.shl
    i32.add
    get_local $2
    i32.const 2
    i32.shl
    get_local $3
    i32.add
    get_local $4
    i32.add
    i32.load offset=8
    get_local $2
    get_local $0
    get_local $1
    call_indirect (type $iiii)
    i32.store offset=8
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
   end
  end
  get_local $6
 )
 (func $std/typedarray/testArrayMap<Int32Array,i32> (; 94 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 29
  call $~lib/typedarray/Int32Array#map
  tee_local $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<Uint32Array,u32> (; 95 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 30
  call $~lib/typedarray/Int32Array#map
  tee_local $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<Int64Array,i64>~anonymous|31 (; 96 ;) (type $IiiI) (param $0 i64) (param $1 i32) (param $2 i32) (result i64)
  get_local $0
  get_local $0
  i64.mul
 )
 (func $~lib/typedarray/Int64Array#map (; 97 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  tee_local $5
  call $~lib/typedarray/Int64Array#constructor
  tee_local $6
  i32.load
  set_local $7
  loop $repeat|0
   block $break|0
    get_local $2
    get_local $5
    i32.ge_s
    br_if $break|0
    i32.const 3
    set_global $~argc
    get_local $7
    get_local $2
    i32.const 3
    i32.shl
    i32.add
    get_local $2
    i32.const 3
    i32.shl
    get_local $3
    i32.add
    get_local $4
    i32.add
    i64.load offset=8
    get_local $2
    get_local $0
    get_local $1
    call_indirect (type $IiiI)
    i64.store offset=8
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
   end
  end
  get_local $6
 )
 (func $~lib/internal/typedarray/TypedArray<i64>#__get (; 98 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 39
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  get_local $0
  i32.load
  get_local $1
  i32.const 3
  i32.shl
  i32.add
  i32.add
  i64.load offset=8
 )
 (func $std/typedarray/testArrayMap<Int64Array,i64> (; 99 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  tee_local $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 31
  call $~lib/typedarray/Int64Array#map
  tee_local $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 1
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 9
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<Uint64Array,u64> (; 100 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  tee_local $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 32
  call $~lib/typedarray/Int64Array#map
  tee_local $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 1
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 9
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<Float32Array,f32>~anonymous|33 (; 101 ;) (type $fiif) (param $0 f32) (param $1 i32) (param $2 i32) (result f32)
  get_local $0
  get_local $0
  f32.mul
 )
 (func $~lib/typedarray/Float32Array#map (; 102 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $0
  i32.load offset=4
  set_local $3
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  tee_local $4
  call $~lib/typedarray/Int32Array#constructor
  tee_local $5
  i32.load
  set_local $6
  loop $repeat|0
   get_local $1
   get_local $4
   i32.lt_s
   if
    i32.const 3
    set_global $~argc
    get_local $1
    i32.const 2
    i32.shl
    tee_local $7
    get_local $6
    i32.add
    get_local $2
    get_local $7
    i32.add
    get_local $3
    i32.add
    f32.load offset=8
    get_local $1
    get_local $0
    i32.const 33
    call_indirect (type $fiif)
    f32.store offset=8
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|0
   end
  end
  get_local $5
 )
 (func $~lib/internal/typedarray/TypedArray<f32>#__get (; 103 ;) (type $iif) (param $0 i32) (param $1 i32) (result f32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 48
   i32.const 39
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  get_local $0
  i32.load
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  i32.add
  f32.load offset=8
 )
 (func $std/typedarray/testArrayMap<Float32Array,f32> (; 104 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  tee_local $0
  i32.const 0
  f32.const 1
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  get_local $0
  i32.const 1
  f32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  get_local $0
  i32.const 2
  f32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  get_local $0
  call $~lib/typedarray/Float32Array#map
  tee_local $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 1
  f32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 4
  f32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 9
  f32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<Float64Array,f64>~anonymous|34 (; 105 ;) (type $FiiF) (param $0 f64) (param $1 i32) (param $2 i32) (result f64)
  get_local $0
  get_local $0
  f64.mul
 )
 (func $~lib/typedarray/Float64Array#map (; 106 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $0
  i32.load offset=4
  set_local $3
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  tee_local $4
  call $~lib/typedarray/Int64Array#constructor
  tee_local $5
  i32.load
  set_local $6
  loop $repeat|0
   get_local $1
   get_local $4
   i32.lt_s
   if
    i32.const 3
    set_global $~argc
    get_local $1
    i32.const 3
    i32.shl
    tee_local $7
    get_local $6
    i32.add
    get_local $2
    get_local $7
    i32.add
    get_local $3
    i32.add
    f64.load offset=8
    get_local $1
    get_local $0
    i32.const 34
    call_indirect (type $FiiF)
    f64.store offset=8
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|0
   end
  end
  get_local $5
 )
 (func $std/typedarray/testArrayMap<Float64Array,f64> (; 107 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  tee_local $0
  i32.const 0
  f64.const 1
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_local $0
  i32.const 1
  f64.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_local $0
  i32.const 2
  f64.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_local $0
  call $~lib/typedarray/Float64Array#map
  tee_local $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 1
  f64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 4
  f64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 9
  f64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 (; 108 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int8Array#some (; 109 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<Int8Array,i8>|inlined.0 (result i32)
   get_local $0
   i32.load offset=8
   set_local $3
   get_local $0
   i32.load
   set_local $4
   get_local $0
   i32.load offset=4
   set_local $5
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     i32.const 1
     get_local $2
     get_local $4
     i32.add
     get_local $5
     i32.add
     i32.load8_s offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $iiii)
     br_if $~lib/internal/typedarray/SOME<Int8Array,i8>|inlined.0
     drop
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Int8Array,i8>~anonymous|36 (; 110 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  i32.eqz
 )
 (func $std/typedarray/testArraySome<Int8Array,i8> (; 111 ;) (type $v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  tee_local $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 35
  call $~lib/typedarray/Int8Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 335
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 36
  call $~lib/typedarray/Int8Array#some
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8Array#some (; 112 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<Uint8Array,u8>|inlined.0 (result i32)
   get_local $0
   i32.load offset=8
   set_local $3
   get_local $0
   i32.load
   set_local $4
   get_local $0
   i32.load offset=4
   set_local $5
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     i32.const 1
     get_local $2
     get_local $4
     i32.add
     get_local $5
     i32.add
     i32.load8_u offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $iiii)
     br_if $~lib/internal/typedarray/SOME<Uint8Array,u8>|inlined.0
     drop
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Uint8Array,u8> (; 113 ;) (type $v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  tee_local $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 37
  call $~lib/typedarray/Uint8Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 335
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 38
  call $~lib/typedarray/Uint8Array#some
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Uint8ClampedArray,u8> (; 114 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  tee_local $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8ClampedArray#__set
  get_local $0
  i32.const 39
  call $~lib/typedarray/Uint8Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 335
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 40
  call $~lib/typedarray/Uint8Array#some
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Int16Array,i16>~anonymous|41 (; 115 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int16Array#some (; 116 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<Int16Array,i16>|inlined.0 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 1
   i32.shr_u
   set_local $3
   get_local $0
   i32.load
   set_local $4
   get_local $0
   i32.load offset=4
   set_local $5
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     i32.const 1
     get_local $2
     i32.const 1
     i32.shl
     get_local $4
     i32.add
     get_local $5
     i32.add
     i32.load16_s offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $iiii)
     br_if $~lib/internal/typedarray/SOME<Int16Array,i16>|inlined.0
     drop
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Int16Array,i16>~anonymous|42 (; 117 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 65535
  i32.and
  i32.eqz
 )
 (func $std/typedarray/testArraySome<Int16Array,i16> (; 118 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  tee_local $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 41
  call $~lib/typedarray/Int16Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 335
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 42
  call $~lib/typedarray/Int16Array#some
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#some (; 119 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<Uint16Array,u16>|inlined.0 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 1
   i32.shr_u
   set_local $3
   get_local $0
   i32.load
   set_local $4
   get_local $0
   i32.load offset=4
   set_local $5
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     i32.const 1
     get_local $2
     i32.const 1
     i32.shl
     get_local $4
     i32.add
     get_local $5
     i32.add
     i32.load16_u offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $iiii)
     br_if $~lib/internal/typedarray/SOME<Uint16Array,u16>|inlined.0
     drop
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Uint16Array,u16> (; 120 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  tee_local $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 43
  call $~lib/typedarray/Uint16Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 335
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 44
  call $~lib/typedarray/Uint16Array#some
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Int32Array,i32>~anonymous|45 (; 121 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int32Array#some (; 122 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<Int32Array,i32>|inlined.0 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
   set_local $3
   get_local $0
   i32.load
   set_local $4
   get_local $0
   i32.load offset=4
   set_local $5
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     i32.const 1
     get_local $2
     i32.const 2
     i32.shl
     get_local $4
     i32.add
     get_local $5
     i32.add
     i32.load offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $iiii)
     br_if $~lib/internal/typedarray/SOME<Int32Array,i32>|inlined.0
     drop
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Int32Array,i32>~anonymous|46 (; 123 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.eqz
 )
 (func $std/typedarray/testArraySome<Int32Array,i32> (; 124 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  tee_local $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 45
  call $~lib/typedarray/Int32Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 335
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 46
  call $~lib/typedarray/Int32Array#some
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Uint32Array,u32> (; 125 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  tee_local $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 47
  call $~lib/typedarray/Int32Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 335
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 48
  call $~lib/typedarray/Int32Array#some
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Int64Array,i64>~anonymous|49 (; 126 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i64.const 2
  i64.eq
 )
 (func $~lib/typedarray/Int64Array#some (; 127 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<Int64Array,i64>|inlined.0 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   set_local $3
   get_local $0
   i32.load
   set_local $4
   get_local $0
   i32.load offset=4
   set_local $5
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     i32.const 1
     get_local $2
     i32.const 3
     i32.shl
     get_local $4
     i32.add
     get_local $5
     i32.add
     i64.load offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $Iiii)
     br_if $~lib/internal/typedarray/SOME<Int64Array,i64>|inlined.0
     drop
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Int64Array,i64>~anonymous|50 (; 128 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i64.const 0
  i64.eq
 )
 (func $std/typedarray/testArraySome<Int64Array,i64> (; 129 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  tee_local $0
  i32.const 0
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 1
  i64.const 4
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 2
  i64.const 6
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 49
  call $~lib/typedarray/Int64Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 335
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 50
  call $~lib/typedarray/Int64Array#some
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Uint64Array,u64> (; 130 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  tee_local $0
  i32.const 0
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 1
  i64.const 4
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 2
  i64.const 6
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 51
  call $~lib/typedarray/Int64Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 335
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 52
  call $~lib/typedarray/Int64Array#some
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Float32Array,f32>~anonymous|53 (; 131 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  f32.const 2
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#some (; 132 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<Float32Array,f32>|inlined.0 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
   set_local $3
   get_local $0
   i32.load
   set_local $4
   get_local $0
   i32.load offset=4
   set_local $5
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     i32.const 1
     get_local $2
     i32.const 2
     i32.shl
     get_local $4
     i32.add
     get_local $5
     i32.add
     f32.load offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $fiii)
     br_if $~lib/internal/typedarray/SOME<Float32Array,f32>|inlined.0
     drop
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Float32Array,f32>~anonymous|54 (; 133 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  f32.const 0
  f32.eq
 )
 (func $std/typedarray/testArraySome<Float32Array,f32> (; 134 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  tee_local $0
  i32.const 0
  f32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  get_local $0
  i32.const 1
  f32.const 4
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  get_local $0
  i32.const 2
  f32.const 6
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  get_local $0
  i32.const 53
  call $~lib/typedarray/Float32Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 335
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 54
  call $~lib/typedarray/Float32Array#some
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Float64Array,f64>~anonymous|55 (; 135 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  f64.const 2
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#some (; 136 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<Float64Array,f64>|inlined.0 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   set_local $3
   get_local $0
   i32.load
   set_local $4
   get_local $0
   i32.load offset=4
   set_local $5
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     i32.const 1
     get_local $2
     i32.const 3
     i32.shl
     get_local $4
     i32.add
     get_local $5
     i32.add
     f64.load offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $Fiii)
     br_if $~lib/internal/typedarray/SOME<Float64Array,f64>|inlined.0
     drop
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Float64Array,f64>~anonymous|56 (; 137 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  f64.const 0
  f64.eq
 )
 (func $std/typedarray/testArraySome<Float64Array,f64> (; 138 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  tee_local $0
  i32.const 0
  f64.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_local $0
  i32.const 1
  f64.const 4
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_local $0
  i32.const 2
  f64.const 6
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_local $0
  i32.const 55
  call $~lib/typedarray/Float64Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 335
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 56
  call $~lib/typedarray/Float64Array#some
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int8Array#findIndex (; 139 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=8
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $~lib/internal/typedarray/FIND_INDEX<Int8Array,i8>|inlined.0
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     get_local $2
     get_local $4
     i32.add
     get_local $5
     i32.add
     i32.load8_s offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $iiii)
     br_if $~lib/internal/typedarray/FIND_INDEX<Int8Array,i8>|inlined.0
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const -1
   set_local $2
  end
  get_local $2
 )
 (func $std/typedarray/testArrayFindIndex<Int8Array,i8>~anonymous|58 (; 140 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Int8Array,i8> (; 141 ;) (type $v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 57
  call $~lib/typedarray/Int8Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 58
  call $~lib/typedarray/Int8Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8Array#findIndex (; 142 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=8
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $~lib/internal/typedarray/FIND_INDEX<Uint8Array,u8>|inlined.0
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     get_local $2
     get_local $4
     i32.add
     get_local $5
     i32.add
     i32.load8_u offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $iiii)
     br_if $~lib/internal/typedarray/FIND_INDEX<Uint8Array,u8>|inlined.0
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const -1
   set_local $2
  end
  get_local $2
 )
 (func $std/typedarray/testArrayFindIndex<Uint8Array,u8> (; 143 ;) (type $v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 59
  call $~lib/typedarray/Uint8Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 60
  call $~lib/typedarray/Uint8Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<Uint8ClampedArray,u8> (; 144 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
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
  i32.const 61
  call $~lib/typedarray/Uint8Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 62
  call $~lib/typedarray/Uint8Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int16Array#findIndex (; 145 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $~lib/internal/typedarray/FIND_INDEX<Int16Array,i16>|inlined.0
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     get_local $2
     i32.const 1
     i32.shl
     get_local $4
     i32.add
     get_local $5
     i32.add
     i32.load16_s offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $iiii)
     br_if $~lib/internal/typedarray/FIND_INDEX<Int16Array,i16>|inlined.0
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const -1
   set_local $2
  end
  get_local $2
 )
 (func $std/typedarray/testArrayFindIndex<Int16Array,i16>~anonymous|64 (; 146 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 65535
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Int16Array,i16> (; 147 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 63
  call $~lib/typedarray/Int16Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 64
  call $~lib/typedarray/Int16Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#findIndex (; 148 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $~lib/internal/typedarray/FIND_INDEX<Uint16Array,u16>|inlined.0
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     get_local $2
     i32.const 1
     i32.shl
     get_local $4
     i32.add
     get_local $5
     i32.add
     i32.load16_u offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $iiii)
     br_if $~lib/internal/typedarray/FIND_INDEX<Uint16Array,u16>|inlined.0
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const -1
   set_local $2
  end
  get_local $2
 )
 (func $std/typedarray/testArrayFindIndex<Uint16Array,u16> (; 149 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 65
  call $~lib/typedarray/Uint16Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 66
  call $~lib/typedarray/Uint16Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int32Array#findIndex (; 150 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $~lib/internal/typedarray/FIND_INDEX<Int32Array,i32>|inlined.0
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     get_local $2
     i32.const 2
     i32.shl
     get_local $4
     i32.add
     get_local $5
     i32.add
     i32.load offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $iiii)
     br_if $~lib/internal/typedarray/FIND_INDEX<Int32Array,i32>|inlined.0
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const -1
   set_local $2
  end
  get_local $2
 )
 (func $std/typedarray/testArrayFindIndex<Int32Array,i32>~anonymous|68 (; 151 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Int32Array,i32> (; 152 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 67
  call $~lib/typedarray/Int32Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 68
  call $~lib/typedarray/Int32Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<Uint32Array,u32> (; 153 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  tee_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 69
  call $~lib/typedarray/Int32Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 70
  call $~lib/typedarray/Int32Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int64Array#findIndex (; 154 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $~lib/internal/typedarray/FIND_INDEX<Int64Array,i64>|inlined.0
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     get_local $2
     i32.const 3
     i32.shl
     get_local $4
     i32.add
     get_local $5
     i32.add
     i64.load offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $Iiii)
     br_if $~lib/internal/typedarray/FIND_INDEX<Int64Array,i64>|inlined.0
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const -1
   set_local $2
  end
  get_local $2
 )
 (func $std/typedarray/testArrayFindIndex<Int64Array,i64>~anonymous|72 (; 155 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i64.const 4
  i64.eq
 )
 (func $std/typedarray/testArrayFindIndex<Int64Array,i64> (; 156 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  tee_local $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 71
  call $~lib/typedarray/Int64Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 72
  call $~lib/typedarray/Int64Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<Uint64Array,u64> (; 157 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  tee_local $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 73
  call $~lib/typedarray/Int64Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 74
  call $~lib/typedarray/Int64Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float32Array#findIndex (; 158 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $~lib/internal/typedarray/FIND_INDEX<Float32Array,f32>|inlined.0
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     get_local $2
     i32.const 2
     i32.shl
     get_local $4
     i32.add
     get_local $5
     i32.add
     f32.load offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $fiii)
     br_if $~lib/internal/typedarray/FIND_INDEX<Float32Array,f32>|inlined.0
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const -1
   set_local $2
  end
  get_local $2
 )
 (func $std/typedarray/testArrayFindIndex<Float32Array,f32>~anonymous|76 (; 159 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  f32.const 4
  f32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Float32Array,f32> (; 160 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  tee_local $0
  i32.const 0
  f32.const 1
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  get_local $0
  i32.const 1
  f32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  get_local $0
  i32.const 2
  f32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  get_local $0
  i32.const 75
  call $~lib/typedarray/Float32Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 76
  call $~lib/typedarray/Float32Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float64Array#findIndex (; 161 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $~lib/internal/typedarray/FIND_INDEX<Float64Array,f64>|inlined.0
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     get_local $2
     i32.const 3
     i32.shl
     get_local $4
     i32.add
     get_local $5
     i32.add
     f64.load offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $Fiii)
     br_if $~lib/internal/typedarray/FIND_INDEX<Float64Array,f64>|inlined.0
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const -1
   set_local $2
  end
  get_local $2
 )
 (func $std/typedarray/testArrayFindIndex<Float64Array,f64>~anonymous|78 (; 162 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  f64.const 4
  f64.eq
 )
 (func $std/typedarray/testArrayFindIndex<Float64Array,f64> (; 163 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  tee_local $0
  i32.const 0
  f64.const 1
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_local $0
  i32.const 1
  f64.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_local $0
  i32.const 2
  f64.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_local $0
  i32.const 77
  call $~lib/typedarray/Float64Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 78
  call $~lib/typedarray/Float64Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<Int8Array,i8>~anonymous|79 (; 164 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.eqz
 )
 (func $~lib/typedarray/Int8Array#every (; 165 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<Int8Array,i8>|inlined.0 (result i32)
   get_local $0
   i32.load offset=8
   set_local $3
   get_local $0
   i32.load
   set_local $4
   get_local $0
   i32.load offset=4
   set_local $5
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     get_local $2
     get_local $4
     i32.add
     get_local $5
     i32.add
     i32.load8_s offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $iiii)
     i32.eqz
     if
      i32.const 0
      br $~lib/internal/typedarray/EVERY<Int8Array,i8>|inlined.0
     end
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Int8Array,i8> (; 166 ;) (type $v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  tee_local $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 79
  call $~lib/typedarray/Int8Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 395
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 80
  call $~lib/typedarray/Int8Array#every
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<Uint8Array,u8>~anonymous|81 (; 167 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 1
  i32.and
  i32.eqz
 )
 (func $~lib/typedarray/Uint8Array#every (; 168 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<Uint8Array,u8>|inlined.0 (result i32)
   get_local $0
   i32.load offset=8
   set_local $3
   get_local $0
   i32.load
   set_local $4
   get_local $0
   i32.load offset=4
   set_local $5
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     get_local $2
     get_local $4
     i32.add
     get_local $5
     i32.add
     i32.load8_u offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $iiii)
     i32.eqz
     if
      i32.const 0
      br $~lib/internal/typedarray/EVERY<Uint8Array,u8>|inlined.0
     end
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Uint8Array,u8> (; 169 ;) (type $v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  tee_local $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_local $0
  i32.const 81
  call $~lib/typedarray/Uint8Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 395
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 82
  call $~lib/typedarray/Uint8Array#every
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<Uint8ClampedArray,u8> (; 170 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  tee_local $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8ClampedArray#__set
  get_local $0
  i32.const 83
  call $~lib/typedarray/Uint8Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 395
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 84
  call $~lib/typedarray/Uint8Array#every
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<Int16Array,i16>~anonymous|85 (; 171 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.eqz
 )
 (func $~lib/typedarray/Int16Array#every (; 172 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<Int16Array,i16>|inlined.0 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 1
   i32.shr_u
   set_local $3
   get_local $0
   i32.load
   set_local $4
   get_local $0
   i32.load offset=4
   set_local $5
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     get_local $2
     i32.const 1
     i32.shl
     get_local $4
     i32.add
     get_local $5
     i32.add
     i32.load16_s offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $iiii)
     i32.eqz
     if
      i32.const 0
      br $~lib/internal/typedarray/EVERY<Int16Array,i16>|inlined.0
     end
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Int16Array,i16> (; 173 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  tee_local $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 85
  call $~lib/typedarray/Int16Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 395
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 86
  call $~lib/typedarray/Int16Array#every
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#every (; 174 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<Uint16Array,u16>|inlined.0 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 1
   i32.shr_u
   set_local $3
   get_local $0
   i32.load
   set_local $4
   get_local $0
   i32.load offset=4
   set_local $5
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     get_local $2
     i32.const 1
     i32.shl
     get_local $4
     i32.add
     get_local $5
     i32.add
     i32.load16_u offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $iiii)
     i32.eqz
     if
      i32.const 0
      br $~lib/internal/typedarray/EVERY<Uint16Array,u16>|inlined.0
     end
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Uint16Array,u16> (; 175 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  tee_local $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  get_local $0
  i32.const 87
  call $~lib/typedarray/Uint16Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 395
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 88
  call $~lib/typedarray/Uint16Array#every
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<Int32Array,i32>~anonymous|89 (; 176 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 2
  i32.rem_s
  i32.eqz
 )
 (func $~lib/typedarray/Int32Array#every (; 177 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<Int32Array,i32>|inlined.0 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
   set_local $3
   get_local $0
   i32.load
   set_local $4
   get_local $0
   i32.load offset=4
   set_local $5
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     get_local $2
     i32.const 2
     i32.shl
     get_local $4
     i32.add
     get_local $5
     i32.add
     i32.load offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $iiii)
     i32.eqz
     if
      i32.const 0
      br $~lib/internal/typedarray/EVERY<Int32Array,i32>|inlined.0
     end
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Int32Array,i32> (; 178 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  tee_local $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 89
  call $~lib/typedarray/Int32Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 395
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 90
  call $~lib/typedarray/Int32Array#every
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<Uint32Array,u32> (; 179 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  tee_local $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_local $0
  i32.const 91
  call $~lib/typedarray/Int32Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 395
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 92
  call $~lib/typedarray/Int32Array#every
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<Int64Array,i64>~anonymous|93 (; 180 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i64.const 2
  i64.rem_s
  i64.const 0
  i64.eq
 )
 (func $~lib/typedarray/Int64Array#every (; 181 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<Int64Array,i64>|inlined.0 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   set_local $3
   get_local $0
   i32.load
   set_local $4
   get_local $0
   i32.load offset=4
   set_local $5
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     get_local $2
     i32.const 3
     i32.shl
     get_local $4
     i32.add
     get_local $5
     i32.add
     i64.load offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $Iiii)
     i32.eqz
     if
      i32.const 0
      br $~lib/internal/typedarray/EVERY<Int64Array,i64>|inlined.0
     end
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Int64Array,i64> (; 182 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  tee_local $0
  i32.const 0
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 1
  i64.const 4
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 2
  i64.const 6
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 93
  call $~lib/typedarray/Int64Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 395
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 94
  call $~lib/typedarray/Int64Array#every
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<Uint64Array,u64>~anonymous|95 (; 183 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i64.const 2
  i64.rem_u
  i64.const 0
  i64.eq
 )
 (func $std/typedarray/testArrayEvery<Uint64Array,u64> (; 184 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  tee_local $0
  i32.const 0
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 1
  i64.const 4
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 2
  i64.const 6
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  get_local $0
  i32.const 95
  call $~lib/typedarray/Int64Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 395
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 96
  call $~lib/typedarray/Int64Array#every
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/math/NativeMathf.mod (; 185 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.reinterpret/f32
  tee_local $1
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  set_local $2
  get_local $1
  i32.const -2147483648
  i32.and
  set_local $4
  get_local $2
  i32.const 255
  i32.eq
  tee_local $3
  if (result i32)
   get_local $3
  else   
   i32.const 0
  end
  if
   get_local $0
   f32.const 2
   f32.mul
   tee_local $0
   get_local $0
   f32.div
   return
  end
  block $folding-inner0
   get_local $1
   i32.const 1
   i32.shl
   tee_local $3
   i32.const -2147483648
   i32.le_u
   if
    get_local $3
    i32.const -2147483648
    i32.eq
    br_if $folding-inner0
    get_local $0
    return
   end
   get_local $2
   if (result i32)
    get_local $1
    i32.const 8388607
    i32.and
    i32.const 8388608
    i32.or
   else    
    get_local $1
    i32.const 1
    get_local $2
    get_local $1
    i32.const 9
    i32.shl
    i32.clz
    i32.sub
    tee_local $2
    i32.sub
    i32.shl
   end
   set_local $1
   loop $continue|0
    get_local $2
    i32.const 128
    i32.gt_s
    if
     get_local $1
     i32.const 8388608
     i32.ge_u
     if
      get_local $1
      i32.const 8388608
      i32.eq
      br_if $folding-inner0
      get_local $1
      i32.const 8388608
      i32.sub
      set_local $1
     end
     get_local $1
     i32.const 1
     i32.shl
     set_local $1
     get_local $2
     i32.const 1
     i32.sub
     set_local $2
     br $continue|0
    end
   end
   get_local $1
   i32.const 8388608
   i32.ge_u
   if
    get_local $1
    i32.const 8388608
    i32.eq
    br_if $folding-inner0
    get_local $1
    i32.const 8388608
    i32.sub
    set_local $1
   end
   get_local $1
   get_local $1
   i32.const 8
   i32.shl
   i32.clz
   tee_local $3
   i32.shl
   set_local $1
   get_local $2
   get_local $3
   i32.sub
   tee_local $2
   i32.const 0
   i32.gt_s
   if (result i32)
    get_local $1
    i32.const 8388608
    i32.sub
    get_local $2
    i32.const 23
    i32.shl
    i32.or
   else    
    get_local $1
    i32.const 1
    get_local $2
    i32.sub
    i32.shr_u
   end
   get_local $4
   i32.or
   f32.reinterpret/i32
   return
  end
  f32.const 0
  get_local $0
  f32.mul
 )
 (func $std/typedarray/testArrayEvery<Float32Array,f32>~anonymous|97 (; 186 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  call $~lib/math/NativeMathf.mod
  f32.const 0
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#every (; 187 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<Float32Array,f32>|inlined.0 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
   set_local $3
   get_local $0
   i32.load
   set_local $4
   get_local $0
   i32.load offset=4
   set_local $5
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     get_local $2
     i32.const 2
     i32.shl
     get_local $4
     i32.add
     get_local $5
     i32.add
     f32.load offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $fiii)
     i32.eqz
     if
      i32.const 0
      br $~lib/internal/typedarray/EVERY<Float32Array,f32>|inlined.0
     end
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Float32Array,f32> (; 188 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  tee_local $0
  i32.const 0
  f32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  get_local $0
  i32.const 1
  f32.const 4
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  get_local $0
  i32.const 2
  f32.const 6
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  get_local $0
  i32.const 97
  call $~lib/typedarray/Float32Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 395
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 98
  call $~lib/typedarray/Float32Array#every
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/math/NativeMath.mod (; 189 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  get_local $0
  i64.reinterpret/f64
  tee_local $1
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  set_local $2
  get_local $1
  i64.const 63
  i64.shr_u
  set_local $4
  get_local $2
  i64.const 2047
  i64.eq
  tee_local $5
  if (result i32)
   get_local $5
  else   
   i32.const 0
  end
  if
   get_local $0
   f64.const 2
   f64.mul
   tee_local $0
   get_local $0
   f64.div
   return
  end
  block $folding-inner0
   get_local $1
   i64.const 1
   i64.shl
   tee_local $3
   i64.const -9223372036854775808
   i64.le_u
   if
    get_local $3
    i64.const -9223372036854775808
    i64.eq
    br_if $folding-inner0
    get_local $0
    return
   end
   get_local $2
   i64.eqz
   if (result i64)
    get_local $1
    i64.const 0
    get_local $2
    get_local $1
    i64.const 12
    i64.shl
    i64.clz
    i64.sub
    tee_local $2
    i64.sub
    i64.const 1
    i64.add
    i64.shl
   else    
    get_local $1
    i64.const 4503599627370495
    i64.and
    i64.const 4503599627370496
    i64.or
   end
   set_local $1
   loop $continue|0
    get_local $2
    i64.const 1024
    i64.gt_s
    if
     get_local $1
     i64.const 4503599627370496
     i64.ge_u
     if
      get_local $1
      i64.const 4503599627370496
      i64.eq
      br_if $folding-inner0
      get_local $1
      i64.const 4503599627370496
      i64.sub
      set_local $1
     end
     get_local $1
     i64.const 1
     i64.shl
     set_local $1
     get_local $2
     i64.const 1
     i64.sub
     set_local $2
     br $continue|0
    end
   end
   get_local $1
   i64.const 4503599627370496
   i64.ge_u
   if
    get_local $1
    i64.const 4503599627370496
    i64.eq
    br_if $folding-inner0
    get_local $1
    i64.const 4503599627370496
    i64.sub
    set_local $1
   end
   get_local $1
   get_local $1
   i64.const 11
   i64.shl
   i64.clz
   tee_local $3
   i64.shl
   set_local $1
   get_local $2
   get_local $3
   i64.sub
   tee_local $2
   i64.const 0
   i64.gt_s
   if (result i64)
    get_local $1
    i64.const 4503599627370496
    i64.sub
    get_local $2
    i64.const 52
    i64.shl
    i64.or
   else    
    get_local $1
    i64.const 0
    get_local $2
    i64.sub
    i64.const 1
    i64.add
    i64.shr_u
   end
   get_local $4
   i64.const 63
   i64.shl
   i64.or
   f64.reinterpret/i64
   return
  end
  f64.const 0
  get_local $0
  f64.mul
 )
 (func $std/typedarray/testArrayEvery<Float64Array,f64>~anonymous|99 (; 190 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  call $~lib/math/NativeMath.mod
  f64.const 0
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#every (; 191 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<Float64Array,f64>|inlined.0 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   set_local $3
   get_local $0
   i32.load
   set_local $4
   get_local $0
   i32.load offset=4
   set_local $5
   loop $repeat|0
    block $break|0
     get_local $2
     get_local $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     set_global $~argc
     get_local $2
     i32.const 3
     i32.shl
     get_local $4
     i32.add
     get_local $5
     i32.add
     f64.load offset=8
     get_local $2
     get_local $0
     get_local $1
     call_indirect (type $Fiii)
     i32.eqz
     if
      i32.const 0
      br $~lib/internal/typedarray/EVERY<Float64Array,f64>|inlined.0
     end
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     br $repeat|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Float64Array,f64> (; 192 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  tee_local $0
  i32.const 0
  f64.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_local $0
  i32.const 1
  f64.const 4
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_local $0
  i32.const 2
  f64.const 6
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_local $0
  i32.const 99
  call $~lib/typedarray/Float64Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 395
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 100
  call $~lib/typedarray/Float64Array#every
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 193 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 624
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  i32.const 0
  call $std/typedarray/testInstantiate
  i32.const 5
  call $std/typedarray/testInstantiate
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  set_global $std/typedarray/arr
  get_global $std/typedarray/arr
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_global $std/typedarray/arr
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_global $std/typedarray/arr
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_global $std/typedarray/arr
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 96
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 97
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
   i32.const 98
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 1
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
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 2
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
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 3
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
   i32.const 104
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
   i32.const 105
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
   i32.const 106
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 107
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 8
  call $~lib/typedarray/Int64Array#constructor
  set_global $std/typedarray/af64
  get_global $std/typedarray/af64
  i32.const 0
  f64.const 1
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_global $std/typedarray/af64
  i32.const 1
  f64.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_global $std/typedarray/af64
  i32.const 2
  f64.const 7
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_global $std/typedarray/af64
  i32.const 3
  f64.const 6
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_global $std/typedarray/af64
  i32.const 4
  f64.const 5
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_global $std/typedarray/af64
  i32.const 5
  f64.const 4
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_global $std/typedarray/af64
  i32.const 6
  f64.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  get_global $std/typedarray/af64
  i32.const 7
  f64.const 8
  call $~lib/internal/typedarray/TypedArray<f64>#__set
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
   i32.const 121
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
   i32.const 122
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
   i32.const 123
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
  call $~lib/typedarray/Float64Array#sort
  drop
  block (result i32)
   block (result i32)
    get_global $std/typedarray/af64
    i32.const 0
    call $~lib/internal/typedarray/TypedArray<f64>#__get
    f64.const 4
    f64.eq
    tee_local $0
    if
     get_global $std/typedarray/af64
     i32.const 1
     call $~lib/internal/typedarray/TypedArray<f64>#__get
     f64.const 5
     f64.eq
     set_local $0
    end
    get_local $0
   end
   if
    get_global $std/typedarray/af64
    i32.const 2
    call $~lib/internal/typedarray/TypedArray<f64>#__get
    f64.const 6
    f64.eq
    set_local $0
   end
   get_local $0
  end
  if (result i32)
   get_global $std/typedarray/af64
   i32.const 3
   call $~lib/internal/typedarray/TypedArray<f64>#__get
   f64.const 7
   f64.eq
  else   
   get_local $0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 125
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
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
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  if
   i32.const 0
   i32.const 8
   i32.const 132
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/clampedArr
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 133
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/clampedArr
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 255
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 134
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 5
  call $~lib/typedarray/Int8Array#constructor
  set_global $std/typedarray/arr8
  get_global $std/typedarray/arr8
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_global $std/typedarray/arr8
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_global $std/typedarray/arr8
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_global $std/typedarray/arr8
  i32.const 3
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_global $std/typedarray/arr8
  i32.const 4
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_global $std/typedarray/arr8
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/typedarray/Int8Array#fill
  drop
  get_global $std/typedarray/arr8
  i32.const 192
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 144
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  set_global $~argc
  get_global $std/typedarray/arr8
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int8Array#fill|trampoline
  drop
  get_global $std/typedarray/arr8
  i32.const 216
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 147
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr8
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/typedarray/Int8Array#fill
  drop
  get_global $std/typedarray/arr8
  i32.const 240
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 150
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  set_global $~argc
  get_global $std/typedarray/arr8
  i32.const 2
  i32.const -2
  call $~lib/typedarray/Int8Array#fill|trampoline
  drop
  get_global $std/typedarray/arr8
  i32.const 264
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 153
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr8
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/typedarray/Int8Array#fill
  drop
  get_global $std/typedarray/arr8
  i32.const 288
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 156
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
  call $~lib/typedarray/Int8Array#fill|trampoline
  drop
  get_global $std/typedarray/sub8
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 160
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
   i32.const 161
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
   i32.const 162
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
   i32.const 163
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
   i32.const 164
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  call $~lib/typedarray/Int32Array#constructor
  set_global $std/typedarray/arr32
  get_global $std/typedarray/arr32
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_global $std/typedarray/arr32
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_global $std/typedarray/arr32
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_global $std/typedarray/arr32
  i32.const 3
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_global $std/typedarray/arr32
  i32.const 4
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  get_global $std/typedarray/arr32
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/typedarray/Int32Array#fill
  drop
  get_global $std/typedarray/arr32
  i32.const 376
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 174
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  set_global $~argc
  get_global $std/typedarray/arr32
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int32Array#fill|trampoline
  drop
  get_global $std/typedarray/arr32
  i32.const 416
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 177
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr32
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/typedarray/Int32Array#fill
  drop
  get_global $std/typedarray/arr32
  i32.const 456
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 180
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2
  set_global $~argc
  get_global $std/typedarray/arr32
  i32.const 2
  i32.const -2
  call $~lib/typedarray/Int32Array#fill|trampoline
  drop
  get_global $std/typedarray/arr32
  i32.const 496
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 183
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr32
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/typedarray/Int32Array#fill
  drop
  get_global $std/typedarray/arr32
  i32.const 536
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 186
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
  call $~lib/typedarray/Int32Array#fill|trampoline
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
   i32.const 190
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
   i32.const 191
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
   i32.const 192
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
   i32.const 193
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
   i32.const 194
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 134217727
  call $~lib/typedarray/Int64Array#constructor
  drop
  i32.const 0
  i32.const 6
  call $~lib/typedarray/Int8Array#constructor
  set_global $std/typedarray/multisubarr
  get_global $std/typedarray/multisubarr
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_global $std/typedarray/multisubarr
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_global $std/typedarray/multisubarr
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_global $std/typedarray/multisubarr
  i32.const 3
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_global $std/typedarray/multisubarr
  i32.const 4
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_global $std/typedarray/multisubarr
  i32.const 5
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  get_global $std/typedarray/multisubarr
  i32.const 6
  call $~lib/typedarray/Int8Array#subarray
  set_global $std/typedarray/multisubarr1
  get_global $std/typedarray/multisubarr1
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 255
  i32.and
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 211
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
   i32.const 212
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
   i32.const 213
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
   i32.const 214
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
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 255
  i32.and
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 217
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
   i32.const 218
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
   i32.const 219
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
   i32.const 220
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
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 255
  i32.and
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 223
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
   i32.const 224
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
   i32.const 225
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
   i32.const 226
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $std/typedarray/testReduce<Int8Array,i8>
  call $std/typedarray/testReduce<Uint8Array,u8>
  call $std/typedarray/testReduce<Uint8ClampedArray,u8>
  call $std/typedarray/testReduce<Int16Array,i16>
  call $std/typedarray/testReduce<Uint16Array,u16>
  call $std/typedarray/testReduce<Int32Array,i32>
  call $std/typedarray/testReduce<Uint32Array,u32>
  call $std/typedarray/testReduce<Int64Array,i64>
  call $std/typedarray/testReduce<Uint64Array,u64>
  call $std/typedarray/testReduce<Float32Array,f32>
  call $std/typedarray/testReduce<Float64Array,f64>
  call $std/typedarray/testReduceRight<Int8Array,i8>
  call $std/typedarray/testReduceRight<Uint8Array,u8>
  call $std/typedarray/testReduceRight<Uint8ClampedArray,u8>
  call $std/typedarray/testReduceRight<Int16Array,i16>
  call $std/typedarray/testReduceRight<Uint16Array,u16>
  call $std/typedarray/testReduceRight<Int32Array,i32>
  call $std/typedarray/testReduceRight<Uint32Array,u32>
  call $std/typedarray/testReduceRight<Int64Array,i64>
  call $std/typedarray/testReduceRight<Uint64Array,u64>
  call $std/typedarray/testReduceRight<Float32Array,f32>
  call $std/typedarray/testReduceRight<Float64Array,f64>
  call $std/typedarray/testArrayMap<Int8Array,i8>
  call $std/typedarray/testArrayMap<Uint8Array,u8>
  call $std/typedarray/testArrayMap<Uint8ClampedArray,u8>
  call $std/typedarray/testArrayMap<Int16Array,i16>
  call $std/typedarray/testArrayMap<Uint16Array,u16>
  call $std/typedarray/testArrayMap<Int32Array,i32>
  call $std/typedarray/testArrayMap<Uint32Array,u32>
  call $std/typedarray/testArrayMap<Int64Array,i64>
  call $std/typedarray/testArrayMap<Uint64Array,u64>
  call $std/typedarray/testArrayMap<Float32Array,f32>
  call $std/typedarray/testArrayMap<Float64Array,f64>
  call $std/typedarray/testArraySome<Int8Array,i8>
  call $std/typedarray/testArraySome<Uint8Array,u8>
  call $std/typedarray/testArraySome<Uint8ClampedArray,u8>
  call $std/typedarray/testArraySome<Int16Array,i16>
  call $std/typedarray/testArraySome<Uint16Array,u16>
  call $std/typedarray/testArraySome<Int32Array,i32>
  call $std/typedarray/testArraySome<Uint32Array,u32>
  call $std/typedarray/testArraySome<Int64Array,i64>
  call $std/typedarray/testArraySome<Uint64Array,u64>
  call $std/typedarray/testArraySome<Float32Array,f32>
  call $std/typedarray/testArraySome<Float64Array,f64>
  call $std/typedarray/testArrayFindIndex<Int8Array,i8>
  call $std/typedarray/testArrayFindIndex<Uint8Array,u8>
  call $std/typedarray/testArrayFindIndex<Uint8ClampedArray,u8>
  call $std/typedarray/testArrayFindIndex<Int16Array,i16>
  call $std/typedarray/testArrayFindIndex<Uint16Array,u16>
  call $std/typedarray/testArrayFindIndex<Int32Array,i32>
  call $std/typedarray/testArrayFindIndex<Uint32Array,u32>
  call $std/typedarray/testArrayFindIndex<Int64Array,i64>
  call $std/typedarray/testArrayFindIndex<Uint64Array,u64>
  call $std/typedarray/testArrayFindIndex<Float32Array,f32>
  call $std/typedarray/testArrayFindIndex<Float64Array,f64>
  call $std/typedarray/testArrayEvery<Int8Array,i8>
  call $std/typedarray/testArrayEvery<Uint8Array,u8>
  call $std/typedarray/testArrayEvery<Uint8ClampedArray,u8>
  call $std/typedarray/testArrayEvery<Int16Array,i16>
  call $std/typedarray/testArrayEvery<Uint16Array,u16>
  call $std/typedarray/testArrayEvery<Int32Array,i32>
  call $std/typedarray/testArrayEvery<Uint32Array,u32>
  call $std/typedarray/testArrayEvery<Int64Array,i64>
  call $std/typedarray/testArrayEvery<Uint64Array,u64>
  call $std/typedarray/testArrayEvery<Float32Array,f32>
  call $std/typedarray/testArrayEvery<Float64Array,f64>
 )
 (func $null (; 194 ;) (type $v)
  nop
 )
)
