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
 (type $iiII (func (param i32 i32 i64) (result i64)))
 (type $iifv (func (param i32 i32 f32)))
 (type $ffiif (func (param f32 f32 i32 i32) (result f32)))
 (type $iiff (func (param i32 i32 f32) (result f32)))
 (type $FFiiF (func (param f64 f64 i32 i32) (result f64)))
 (type $iiFF (func (param i32 i32 f64) (result f64)))
 (type $IiiI (func (param i64 i32 i32) (result i64)))
 (type $iiI (func (param i32 i32) (result i64)))
 (type $fiif (func (param f32 i32 i32) (result f32)))
 (type $iif (func (param i32 i32) (result f32)))
 (type $FiiF (func (param f64 i32 i32) (result f64)))
 (type $Iiii (func (param i64 i32 i32) (result i32)))
 (type $fiii (func (param f32 i32 i32) (result i32)))
 (type $Fiii (func (param f64 i32 i32) (result i32)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $FFF (func (param f64 f64) (result f64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\11\00\00\00s\00t\00d\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 48) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 112) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 176) "\05\00\00\00\00\00\00\00\01\01\01\04\05\00\00\00")
 (data (i32.const 192) "\b0\00\00\00\05\00\00\00")
 (data (i32.const 200) "\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 216) "\c8\00\00\00\05\00\00\00")
 (data (i32.const 224) "\05\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00")
 (data (i32.const 240) "\e0\00\00\00\05\00\00\00")
 (data (i32.const 248) "\05\00\00\00\00\00\00\00\01\01\00\02\02\00\00\00")
 (data (i32.const 264) "\f8\00\00\00\05\00\00\00")
 (data (i32.const 272) "\05\00\00\00\00\00\00\00\01\01\00\02\02\00\00\00")
 (data (i32.const 288) "\10\01\00\00\05\00\00\00")
 (data (i32.const 296) "\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 312) "(\01\00\00\03\00\00\00")
 (data (i32.const 320) "\05\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 336) "@\01\00\00\05\00\00\00")
 (data (i32.const 344) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 376) "X\01\00\00\05\00\00\00")
 (data (i32.const 384) "\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 416) "\80\01\00\00\05\00\00\00")
 (data (i32.const 424) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 456) "\a8\01\00\00\05\00\00\00")
 (data (i32.const 464) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 496) "\d0\01\00\00\05\00\00\00")
 (data (i32.const 504) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 536) "\f8\01\00\00\05\00\00\00")
 (data (i32.const 544) "\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 576) " \02\00\00\03\00\00\00")
 (data (i32.const 584) "\14\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 616) "H\02\00\00\05\00\00\00")
 (table $0 101 anyfunc)
 (elem (i32.const 0) $null $~lib/typedarray/Float64Array#sort|trampoline~anonymous|1 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Uint8Array,u8>~anonymous|3 $std/typedarray/testReduce<Uint8ClampedArray,u8>~anonymous|4 $std/typedarray/testReduce<Int16Array,i16>~anonymous|5 $std/typedarray/testReduce<Uint16Array,u16>~anonymous|6 $std/typedarray/testReduce<Int32Array,i32>~anonymous|7 $std/typedarray/testReduce<Uint32Array,u32>~anonymous|8 $std/typedarray/testReduce<Int64Array,i64>~anonymous|9 $std/typedarray/testReduce<Uint64Array,u64>~anonymous|10 $std/typedarray/testReduce<Float32Array,f32>~anonymous|11 $std/typedarray/testReduce<Float64Array,f64>~anonymous|12 $std/typedarray/testReduceRight<Int8Array,i8>~anonymous|13 $std/typedarray/testReduceRight<Uint8Array,u8>~anonymous|14 $std/typedarray/testReduceRight<Uint8ClampedArray,u8>~anonymous|15 $std/typedarray/testReduceRight<Int16Array,i16>~anonymous|16 $std/typedarray/testReduceRight<Uint16Array,u16>~anonymous|17 $std/typedarray/testReduceRight<Int32Array,i32>~anonymous|18 $std/typedarray/testReduceRight<Uint32Array,u32>~anonymous|19 $std/typedarray/testReduceRight<Int64Array,i64>~anonymous|20 $std/typedarray/testReduceRight<Uint64Array,u64>~anonymous|21 $std/typedarray/testReduceRight<Float32Array,f32>~anonymous|22 $std/typedarray/testReduceRight<Float64Array,f64>~anonymous|23 $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 $std/typedarray/testArrayMap<Uint8Array,u8>~anonymous|25 $std/typedarray/testArrayMap<Uint8ClampedArray,u8>~anonymous|26 $std/typedarray/testArrayMap<Int16Array,i16>~anonymous|27 $std/typedarray/testArrayMap<Uint16Array,u16>~anonymous|28 $std/typedarray/testArrayMap<Int32Array,i32>~anonymous|29 $std/typedarray/testArrayMap<Uint32Array,u32>~anonymous|30 $std/typedarray/testArrayMap<Int64Array,i64>~anonymous|31 $std/typedarray/testArrayMap<Uint64Array,u64>~anonymous|32 $std/typedarray/testArrayMap<Float32Array,f32>~anonymous|33 $std/typedarray/testArrayMap<Float64Array,f64>~anonymous|34 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|36 $std/typedarray/testArraySome<Uint8Array,u8>~anonymous|37 $std/typedarray/testArraySome<Uint8Array,u8>~anonymous|38 $std/typedarray/testArraySome<Uint8ClampedArray,u8>~anonymous|39 $std/typedarray/testArraySome<Uint8ClampedArray,u8>~anonymous|40 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|41 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|42 $std/typedarray/testArraySome<Uint16Array,u16>~anonymous|43 $std/typedarray/testArraySome<Uint16Array,u16>~anonymous|44 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|45 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|46 $std/typedarray/testArraySome<Uint32Array,u32>~anonymous|47 $std/typedarray/testArraySome<Uint32Array,u32>~anonymous|48 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|49 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|50 $std/typedarray/testArraySome<Uint64Array,u64>~anonymous|51 $std/typedarray/testArraySome<Uint64Array,u64>~anonymous|52 $std/typedarray/testArraySome<Float32Array,f32>~anonymous|53 $std/typedarray/testArraySome<Float32Array,f32>~anonymous|54 $std/typedarray/testArraySome<Float64Array,f64>~anonymous|55 $std/typedarray/testArraySome<Float64Array,f64>~anonymous|56 $std/typedarray/testArrayFindIndex<Int8Array,i8>~anonymous|57 $std/typedarray/testArrayFindIndex<Int8Array,i8>~anonymous|58 $std/typedarray/testArrayFindIndex<Uint8Array,u8>~anonymous|59 $std/typedarray/testArrayFindIndex<Uint8Array,u8>~anonymous|60 $std/typedarray/testArrayFindIndex<Uint8ClampedArray,u8>~anonymous|61 $std/typedarray/testArrayFindIndex<Uint8ClampedArray,u8>~anonymous|62 $std/typedarray/testArrayFindIndex<Int16Array,i16>~anonymous|63 $std/typedarray/testArrayFindIndex<Int16Array,i16>~anonymous|64 $std/typedarray/testArrayFindIndex<Uint16Array,u16>~anonymous|65 $std/typedarray/testArrayFindIndex<Uint16Array,u16>~anonymous|66 $std/typedarray/testArrayFindIndex<Int32Array,i32>~anonymous|67 $std/typedarray/testArrayFindIndex<Int32Array,i32>~anonymous|68 $std/typedarray/testArrayFindIndex<Uint32Array,u32>~anonymous|69 $std/typedarray/testArrayFindIndex<Uint32Array,u32>~anonymous|70 $std/typedarray/testArrayFindIndex<Int64Array,i64>~anonymous|71 $std/typedarray/testArrayFindIndex<Int64Array,i64>~anonymous|72 $std/typedarray/testArrayFindIndex<Uint64Array,u64>~anonymous|73 $std/typedarray/testArrayFindIndex<Uint64Array,u64>~anonymous|74 $std/typedarray/testArrayFindIndex<Float32Array,f32>~anonymous|75 $std/typedarray/testArrayFindIndex<Float32Array,f32>~anonymous|76 $std/typedarray/testArrayFindIndex<Float64Array,f64>~anonymous|77 $std/typedarray/testArrayFindIndex<Float64Array,f64>~anonymous|78 $std/typedarray/testArrayEvery<Int8Array,i8>~anonymous|79 $std/typedarray/testArrayEvery<Int8Array,i8>~anonymous|80 $std/typedarray/testArrayEvery<Uint8Array,u8>~anonymous|81 $std/typedarray/testArrayEvery<Uint8Array,u8>~anonymous|82 $std/typedarray/testArrayEvery<Uint8ClampedArray,u8>~anonymous|83 $std/typedarray/testArrayEvery<Uint8ClampedArray,u8>~anonymous|84 $std/typedarray/testArrayEvery<Int16Array,i16>~anonymous|85 $std/typedarray/testArrayEvery<Int16Array,i16>~anonymous|86 $std/typedarray/testArrayEvery<Uint16Array,u16>~anonymous|87 $std/typedarray/testArrayEvery<Uint16Array,u16>~anonymous|88 $std/typedarray/testArrayEvery<Int32Array,i32>~anonymous|89 $std/typedarray/testArrayEvery<Int32Array,i32>~anonymous|90 $std/typedarray/testArrayEvery<Uint32Array,u32>~anonymous|91 $std/typedarray/testArrayEvery<Uint32Array,u32>~anonymous|92 $std/typedarray/testArrayEvery<Int64Array,i64>~anonymous|93 $std/typedarray/testArrayEvery<Int64Array,i64>~anonymous|94 $std/typedarray/testArrayEvery<Uint64Array,u64>~anonymous|95 $std/typedarray/testArrayEvery<Uint64Array,u64>~anonymous|96 $std/typedarray/testArrayEvery<Float32Array,f32>~anonymous|97 $std/typedarray/testArrayEvery<Float32Array,f32>~anonymous|98 $std/typedarray/testArrayEvery<Float64Array,f64>~anonymous|99 $std/typedarray/testArrayEvery<Float64Array,f64>~anonymous|100)
 (global $~lib/typedarray/Int8Array.BYTES_PER_ELEMENT i32 (i32.const 1))
 (global $~lib/typedarray/Uint8Array.BYTES_PER_ELEMENT i32 (i32.const 1))
 (global $~lib/typedarray/Uint8ClampedArray.BYTES_PER_ELEMENT i32 (i32.const 1))
 (global $~lib/typedarray/Int16Array.BYTES_PER_ELEMENT i32 (i32.const 2))
 (global $~lib/typedarray/Uint16Array.BYTES_PER_ELEMENT i32 (i32.const 2))
 (global $~lib/typedarray/Int32Array.BYTES_PER_ELEMENT i32 (i32.const 4))
 (global $~lib/typedarray/Uint32Array.BYTES_PER_ELEMENT i32 (i32.const 4))
 (global $~lib/typedarray/Int64Array.BYTES_PER_ELEMENT i32 (i32.const 8))
 (global $~lib/typedarray/Uint64Array.BYTES_PER_ELEMENT i32 (i32.const 8))
 (global $~lib/typedarray/Float32Array.BYTES_PER_ELEMENT i32 (i32.const 4))
 (global $~lib/typedarray/Float64Array.BYTES_PER_ELEMENT i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $std/typedarray/arr (mut i32) (i32.const 0))
 (global $std/typedarray/af64 (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $std/typedarray/clampedArr (mut i32) (i32.const 0))
 (global $std/typedarray/arr8 (mut i32) (i32.const 0))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $std/typedarray/sub8 (mut i32) (i32.const 0))
 (global $std/typedarray/arr32 (mut i32) (i32.const 0))
 (global $std/typedarray/sub32 (mut i32) (i32.const 0))
 (global $std/typedarray/MAX_F64LENGTH i32 (i32.const 134217727))
 (global $std/typedarray/multisubarr (mut i32) (i32.const 0))
 (global $std/typedarray/multisubarr1 (mut i32) (i32.const 0))
 (global $std/typedarray/multisubarr2 (mut i32) (i32.const 0))
 (global $std/typedarray/multisubarr3 (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 624))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/internal/arraybuffer/computeSize (; 1 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  get_local $0
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/allocator/arena/__memory_allocate (; 2 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 112
   i32.const 26
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/memory/memory.allocate|inlined.0 (result i32)
   get_local $0
   call $~lib/internal/arraybuffer/computeSize
   set_local $2
   get_local $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.0
  end
  set_local $1
  get_local $1
  get_local $0
  i32.store
  get_local $1
 )
 (func $~lib/internal/memory/memset (; 4 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
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
  i32.const 2
  i32.sub
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
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
  i32.const 0
  get_local $0
  i32.sub
  i32.const 3
  i32.and
  set_local $3
  get_local $0
  get_local $3
  i32.add
  set_local $0
  get_local $2
  get_local $3
  i32.sub
  set_local $2
  get_local $2
  i32.const -4
  i32.and
  set_local $2
  i32.const -1
  i32.const 255
  i32.div_u
  get_local $1
  i32.const 255
  i32.and
  i32.mul
  set_local $4
  get_local $0
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 4
  i32.sub
  get_local $4
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
  get_local $4
  i32.store
  get_local $0
  i32.const 8
  i32.add
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 12
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 8
  i32.sub
  get_local $4
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
  get_local $4
  i32.store
  get_local $0
  i32.const 16
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 20
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 24
  i32.add
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 28
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 24
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 20
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 16
  i32.sub
  get_local $4
  i32.store
  i32.const 24
  get_local $0
  i32.const 4
  i32.and
  i32.add
  set_local $3
  get_local $0
  get_local $3
  i32.add
  set_local $0
  get_local $2
  get_local $3
  i32.sub
  set_local $2
  get_local $4
  i64.extend_u/i32
  get_local $4
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  set_local $5
  block $break|0
   loop $continue|0
    get_local $2
    i32.const 32
    i32.ge_u
    if
     block
      get_local $0
      get_local $5
      i64.store
      get_local $0
      i32.const 8
      i32.add
      get_local $5
      i64.store
      get_local $0
      i32.const 16
      i32.add
      get_local $5
      i64.store
      get_local $0
      i32.const 24
      i32.add
      get_local $5
      i64.store
      get_local $2
      i32.const 32
      i32.sub
      set_local $2
      get_local $0
      i32.const 32
      i32.add
      set_local $0
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/memory/memory.allocate (; 5 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $~lib/internal/typedarray/TypedArray<i8>#constructor (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  i32.const 0
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $3
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $4
  i32.const 0
  set_local $5
  get_local $4
  get_local $5
  get_local $2
  call $~lib/internal/memory/memset
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 12
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 0
    i32.store
    get_local $5
    i32.const 0
    i32.store offset=4
    get_local $5
    i32.const 0
    i32.store offset=8
    get_local $5
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  get_local $2
  i32.store offset=8
  get_local $0
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#constructor (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  i32.const 0
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $3
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $4
  i32.const 0
  set_local $5
  get_local $4
  get_local $5
  get_local $2
  call $~lib/internal/memory/memset
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 12
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 0
    i32.store
    get_local $5
    i32.const 0
    i32.store offset=4
    get_local $5
    i32.const 0
    i32.store offset=8
    get_local $5
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  get_local $2
  i32.store offset=8
  get_local $0
 )
 (func $~lib/internal/typedarray/TypedArray<i16>#constructor (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $3
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $4
  i32.const 0
  set_local $5
  get_local $4
  get_local $5
  get_local $2
  call $~lib/internal/memory/memset
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 12
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 0
    i32.store
    get_local $5
    i32.const 0
    i32.store offset=4
    get_local $5
    i32.const 0
    i32.store offset=8
    get_local $5
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  get_local $2
  i32.store offset=8
  get_local $0
 )
 (func $~lib/internal/typedarray/TypedArray<u16>#constructor (; 9 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $3
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $4
  i32.const 0
  set_local $5
  get_local $4
  get_local $5
  get_local $2
  call $~lib/internal/memory/memset
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 12
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 0
    i32.store
    get_local $5
    i32.const 0
    i32.store offset=4
    get_local $5
    i32.const 0
    i32.store offset=8
    get_local $5
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  get_local $2
  i32.store offset=8
  get_local $0
 )
 (func $~lib/internal/typedarray/TypedArray<i32>#constructor (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $3
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $4
  i32.const 0
  set_local $5
  get_local $4
  get_local $5
  get_local $2
  call $~lib/internal/memory/memset
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 12
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 0
    i32.store
    get_local $5
    i32.const 0
    i32.store offset=4
    get_local $5
    i32.const 0
    i32.store offset=8
    get_local $5
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  get_local $2
  i32.store offset=8
  get_local $0
 )
 (func $~lib/internal/typedarray/TypedArray<u32>#constructor (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $3
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $4
  i32.const 0
  set_local $5
  get_local $4
  get_local $5
  get_local $2
  call $~lib/internal/memory/memset
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 12
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 0
    i32.store
    get_local $5
    i32.const 0
    i32.store offset=4
    get_local $5
    i32.const 0
    i32.store offset=8
    get_local $5
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  get_local $2
  i32.store offset=8
  get_local $0
 )
 (func $~lib/internal/typedarray/TypedArray<i64>#constructor (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $3
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $4
  i32.const 0
  set_local $5
  get_local $4
  get_local $5
  get_local $2
  call $~lib/internal/memory/memset
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 12
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 0
    i32.store
    get_local $5
    i32.const 0
    i32.store offset=4
    get_local $5
    i32.const 0
    i32.store offset=8
    get_local $5
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  get_local $2
  i32.store offset=8
  get_local $0
 )
 (func $~lib/internal/typedarray/TypedArray<u64>#constructor (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $3
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $4
  i32.const 0
  set_local $5
  get_local $4
  get_local $5
  get_local $2
  call $~lib/internal/memory/memset
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 12
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 0
    i32.store
    get_local $5
    i32.const 0
    i32.store offset=4
    get_local $5
    i32.const 0
    i32.store offset=8
    get_local $5
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  get_local $2
  i32.store offset=8
  get_local $0
 )
 (func $~lib/internal/typedarray/TypedArray<f32>#constructor (; 14 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $3
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $4
  i32.const 0
  set_local $5
  get_local $4
  get_local $5
  get_local $2
  call $~lib/internal/memory/memset
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 12
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 0
    i32.store
    get_local $5
    i32.const 0
    i32.store offset=4
    get_local $5
    i32.const 0
    i32.store offset=8
    get_local $5
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  get_local $2
  i32.store offset=8
  get_local $0
 )
 (func $~lib/internal/typedarray/TypedArray<f64>#constructor (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $3
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  set_local $4
  i32.const 0
  set_local $5
  get_local $4
  get_local $5
  get_local $2
  call $~lib/internal/memory/memset
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 12
    call $~lib/memory/memory.allocate
    set_local $5
    get_local $5
    i32.const 0
    i32.store
    get_local $5
    i32.const 0
    i32.store offset=4
    get_local $5
    i32.const 0
    i32.store offset=8
    get_local $5
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  i32.const 0
  i32.store offset=4
  get_local $0
  get_local $2
  i32.store offset=8
  get_local $0
 )
 (func $std/typedarray/testInstantiate (; 16 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  i32.const 0
  get_local $0
  call $~lib/internal/typedarray/TypedArray<i8>#constructor
  set_local $1
  get_local $1
  i32.load offset=4
  i32.const 0
  i32.eq
  i32.eqz
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
  get_global $~lib/typedarray/Int8Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 35
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.0 (result i32)
   get_local $1
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  get_local $0
  i32.eq
  i32.eqz
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
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  set_local $2
  get_local $2
  i32.load offset=4
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 39
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $2
  i32.load offset=8
  get_local $0
  get_global $~lib/typedarray/Uint8Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 40
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.0 (result i32)
   get_local $2
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  get_local $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 41
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  get_local $0
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  set_local $3
  get_local $3
  i32.load offset=4
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 44
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $3
  i32.load offset=8
  get_local $0
  get_global $~lib/typedarray/Uint8Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 45
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.1 (result i32)
   get_local $3
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  get_local $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 46
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  get_local $0
  call $~lib/internal/typedarray/TypedArray<i16>#constructor
  set_local $4
  get_local $4
  i32.load offset=4
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 49
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $4
  i32.load offset=8
  get_local $0
  get_global $~lib/typedarray/Int16Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 50
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/typedarray/TypedArray<i16>#get:length|inlined.0 (result i32)
   get_local $4
   i32.load offset=8
   i32.const 1
   i32.shr_u
  end
  get_local $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 51
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  get_local $0
  call $~lib/internal/typedarray/TypedArray<u16>#constructor
  set_local $5
  get_local $5
  i32.load offset=4
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 54
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $5
  i32.load offset=8
  get_local $0
  get_global $~lib/typedarray/Uint16Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 55
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/typedarray/TypedArray<u16>#get:length|inlined.0 (result i32)
   get_local $5
   i32.load offset=8
   i32.const 1
   i32.shr_u
  end
  get_local $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 56
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  get_local $0
  call $~lib/internal/typedarray/TypedArray<i32>#constructor
  set_local $6
  get_local $6
  i32.load offset=4
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 59
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $6
  i32.load offset=8
  get_local $0
  get_global $~lib/typedarray/Int32Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 60
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.0 (result i32)
   get_local $6
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  get_local $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 61
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  get_local $0
  call $~lib/internal/typedarray/TypedArray<u32>#constructor
  set_local $7
  get_local $7
  i32.load offset=4
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 64
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $7
  i32.load offset=8
  get_local $0
  get_global $~lib/typedarray/Uint32Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 65
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/typedarray/TypedArray<u32>#get:length|inlined.0 (result i32)
   get_local $7
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  get_local $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 66
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  get_local $0
  call $~lib/internal/typedarray/TypedArray<i64>#constructor
  set_local $8
  get_local $8
  i32.load offset=4
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 69
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $8
  i32.load offset=8
  get_local $0
  get_global $~lib/typedarray/Int64Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 70
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.0 (result i32)
   get_local $8
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  get_local $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 71
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  get_local $0
  call $~lib/internal/typedarray/TypedArray<u64>#constructor
  set_local $9
  get_local $9
  i32.load offset=4
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 74
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $9
  i32.load offset=8
  get_local $0
  get_global $~lib/typedarray/Uint64Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 75
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/typedarray/TypedArray<u64>#get:length|inlined.0 (result i32)
   get_local $9
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  get_local $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 76
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  get_local $0
  call $~lib/internal/typedarray/TypedArray<f32>#constructor
  set_local $10
  get_local $10
  i32.load offset=4
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 79
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $10
  i32.load offset=8
  get_local $0
  get_global $~lib/typedarray/Float32Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 80
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.0 (result i32)
   get_local $10
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  get_local $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 81
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  get_local $0
  call $~lib/internal/typedarray/TypedArray<f64>#constructor
  set_local $11
  get_local $11
  i32.load offset=4
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 84
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $11
  i32.load offset=8
  get_local $0
  get_global $~lib/typedarray/Float64Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 85
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.0 (result i32)
   get_local $11
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  get_local $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 86
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/typedarray/TypedArray<i32>#__set (; 17 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $3
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  get_local $4
  i32.add
  get_local $2
  i32.store offset=8
 )
 (func $~lib/internal/typedarray/TypedArray<i32>#__get (; 18 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
  block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.0 (result i32)
   get_local $0
   i32.load
   set_local $2
   get_local $0
   i32.load offset=4
   set_local $3
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   get_local $3
   i32.add
   i32.load offset=8
  end
 )
 (func $~lib/typedarray/Int32Array#subarray (; 19 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.2 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  set_local $3
  get_local $1
  i32.const 0
  i32.lt_s
  if
   get_local $3
   get_local $1
   i32.add
   tee_local $4
   i32.const 0
   tee_local $5
   get_local $4
   get_local $5
   i32.gt_s
   select
   set_local $1
  else   
   get_local $1
   tee_local $4
   get_local $3
   tee_local $5
   get_local $4
   get_local $5
   i32.lt_s
   select
   set_local $1
  end
  get_local $2
  i32.const 0
  i32.lt_s
  if
   get_local $3
   get_local $2
   i32.add
   tee_local $4
   get_local $1
   tee_local $5
   get_local $4
   get_local $5
   i32.gt_s
   select
   set_local $2
  else   
   get_local $2
   tee_local $4
   get_local $3
   tee_local $5
   get_local $4
   get_local $5
   i32.lt_s
   select
   tee_local $4
   get_local $1
   tee_local $5
   get_local $4
   get_local $5
   i32.gt_s
   select
   set_local $2
  end
  block $~lib/memory/memory.allocate|inlined.1 (result i32)
   i32.const 12
   set_local $4
   get_local $4
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.1
  end
  set_local $4
  get_local $4
  get_local $0
  i32.load
  i32.store
  get_local $4
  get_local $0
  i32.load offset=4
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  i32.store offset=4
  get_local $4
  get_local $2
  get_local $1
  i32.sub
  i32.const 2
  i32.shl
  i32.store offset=8
  get_local $4
 )
 (func $~lib/internal/typedarray/TypedArray<f64>#__set (; 20 ;) (type $iiFv) (param $0 i32) (param $1 i32) (param $2 f64)
  (local $3 i32)
  (local $4 i32)
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
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $3
  get_local $1
  i32.const 3
  i32.shl
  i32.add
  get_local $4
  i32.add
  get_local $2
  f64.store offset=8
 )
 (func $~lib/typedarray/Float64Array#subarray (; 21 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.1 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  set_local $3
  get_local $1
  i32.const 0
  i32.lt_s
  if
   get_local $3
   get_local $1
   i32.add
   tee_local $4
   i32.const 0
   tee_local $5
   get_local $4
   get_local $5
   i32.gt_s
   select
   set_local $1
  else   
   get_local $1
   tee_local $4
   get_local $3
   tee_local $5
   get_local $4
   get_local $5
   i32.lt_s
   select
   set_local $1
  end
  get_local $2
  i32.const 0
  i32.lt_s
  if
   get_local $3
   get_local $2
   i32.add
   tee_local $4
   get_local $1
   tee_local $5
   get_local $4
   get_local $5
   i32.gt_s
   select
   set_local $2
  else   
   get_local $2
   tee_local $4
   get_local $3
   tee_local $5
   get_local $4
   get_local $5
   i32.lt_s
   select
   tee_local $4
   get_local $1
   tee_local $5
   get_local $4
   get_local $5
   i32.gt_s
   select
   set_local $2
  end
  block $~lib/memory/memory.allocate|inlined.2 (result i32)
   i32.const 12
   set_local $4
   get_local $4
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.2
  end
  set_local $4
  get_local $4
  get_local $0
  i32.load
  i32.store
  get_local $4
  get_local $0
  i32.load offset=4
  get_local $1
  i32.const 3
  i32.shl
  i32.add
  i32.store offset=4
  get_local $4
  get_local $2
  get_local $1
  i32.sub
  i32.const 3
  i32.shl
  i32.store offset=8
  get_local $4
 )
 (func $~lib/internal/sort/insertionSort<f64> (; 22 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.2 (result f64)
      get_local $0
      get_local $4
      i32.const 3
      i32.shl
      i32.add
      get_local $1
      i32.add
      f64.load offset=8
     end
     set_local $5
     get_local $4
     i32.const 1
     i32.sub
     set_local $6
     block $break|1
      loop $continue|1
       get_local $6
       i32.const 0
       i32.ge_s
       if
        block
         block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.3 (result f64)
          get_local $0
          get_local $6
          i32.const 3
          i32.shl
          i32.add
          get_local $1
          i32.add
          f64.load offset=8
         end
         set_local $7
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $5
          get_local $7
          get_local $3
          call_indirect (type $FFi)
         end
         i32.const 0
         i32.lt_s
         if
          block (result i32)
           get_local $6
           tee_local $8
           i32.const 1
           i32.sub
           set_local $6
           get_local $8
          end
          i32.const 1
          i32.add
          set_local $8
          get_local $0
          get_local $8
          i32.const 3
          i32.shl
          i32.add
          get_local $1
          i32.add
          get_local $7
          f64.store offset=8
         else          
          br $break|1
         end
        end
        br $continue|1
       end
      end
     end
     get_local $6
     i32.const 1
     i32.add
     set_local $8
     get_local $0
     get_local $8
     i32.const 3
     i32.shl
     i32.add
     get_local $1
     i32.add
     get_local $5
     f64.store offset=8
    end
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
 (func $~lib/allocator/arena/__memory_free (; 23 ;) (type $iv) (param $0 i32)
  nop
 )
 (func $~lib/internal/sort/weakHeapSort<f64> (; 24 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 f64)
  (local $11 i32)
  (local $12 f64)
  get_local $2
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  set_local $4
  block $~lib/memory/memory.allocate|inlined.3 (result i32)
   get_local $4
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.3
  end
  set_local $5
  i32.const 0
  set_local $6
  get_local $5
  get_local $6
  get_local $4
  call $~lib/internal/memory/memset
  block $break|0
   get_local $2
   i32.const 1
   i32.sub
   set_local $6
   loop $repeat|0
    get_local $6
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    block
     get_local $6
     set_local $7
     block $break|1
      loop $continue|1
       get_local $7
       i32.const 1
       i32.and
       get_local $5
       get_local $7
       i32.const 6
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       get_local $7
       i32.const 1
       i32.shr_s
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.eq
       if
        get_local $7
        i32.const 1
        i32.shr_s
        set_local $7
        br $continue|1
       end
      end
     end
     get_local $7
     i32.const 1
     i32.shr_s
     set_local $8
     block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.4 (result f64)
      get_local $0
      get_local $8
      i32.const 3
      i32.shl
      i32.add
      get_local $1
      i32.add
      f64.load offset=8
     end
     set_local $9
     block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.5 (result f64)
      get_local $0
      get_local $6
      i32.const 3
      i32.shl
      i32.add
      get_local $1
      i32.add
      f64.load offset=8
     end
     set_local $10
     block (result i32)
      i32.const 2
      set_global $~argc
      get_local $9
      get_local $10
      get_local $3
      call_indirect (type $FFi)
     end
     i32.const 0
     i32.lt_s
     if
      get_local $5
      get_local $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      get_local $5
      get_local $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 1
      get_local $6
      i32.const 31
      i32.and
      i32.shl
      i32.xor
      i32.store
      get_local $0
      get_local $6
      i32.const 3
      i32.shl
      i32.add
      get_local $1
      i32.add
      get_local $9
      f64.store offset=8
      get_local $0
      get_local $8
      i32.const 3
      i32.shl
      i32.add
      get_local $1
      i32.add
      get_local $10
      f64.store offset=8
     end
    end
    get_local $6
    i32.const 1
    i32.sub
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $break|2
   get_local $2
   i32.const 1
   i32.sub
   set_local $6
   loop $repeat|2
    get_local $6
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    block
     block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.6 (result f64)
      i32.const 0
      set_local $8
      get_local $0
      get_local $8
      i32.const 3
      i32.shl
      i32.add
      get_local $1
      i32.add
      f64.load offset=8
     end
     set_local $10
     i32.const 0
     set_local $8
     block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.7 (result f64)
      get_local $0
      get_local $6
      i32.const 3
      i32.shl
      i32.add
      get_local $1
      i32.add
      f64.load offset=8
     end
     set_local $9
     get_local $0
     get_local $8
     i32.const 3
     i32.shl
     i32.add
     get_local $1
     i32.add
     get_local $9
     f64.store offset=8
     get_local $0
     get_local $6
     i32.const 3
     i32.shl
     i32.add
     get_local $1
     i32.add
     get_local $10
     f64.store offset=8
     i32.const 1
     set_local $8
     block $break|3
      loop $continue|3
       get_local $8
       i32.const 1
       i32.shl
       get_local $5
       get_local $8
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       get_local $8
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.add
       tee_local $7
       get_local $6
       i32.lt_s
       if
        get_local $7
        set_local $8
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       get_local $8
       i32.const 0
       i32.gt_s
       if
        block
         block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.8 (result f64)
          i32.const 0
          set_local $11
          get_local $0
          get_local $11
          i32.const 3
          i32.shl
          i32.add
          get_local $1
          i32.add
          f64.load offset=8
         end
         set_local $10
         block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.9 (result f64)
          get_local $0
          get_local $8
          i32.const 3
          i32.shl
          i32.add
          get_local $1
          i32.add
          f64.load offset=8
         end
         set_local $9
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $10
          get_local $9
          get_local $3
          call_indirect (type $FFi)
         end
         i32.const 0
         i32.lt_s
         if
          get_local $5
          get_local $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          get_local $5
          get_local $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.const 1
          get_local $8
          i32.const 31
          i32.and
          i32.shl
          i32.xor
          i32.store
          get_local $0
          get_local $8
          i32.const 3
          i32.shl
          i32.add
          get_local $1
          i32.add
          get_local $10
          f64.store offset=8
          i32.const 0
          set_local $11
          get_local $0
          get_local $11
          i32.const 3
          i32.shl
          i32.add
          get_local $1
          i32.add
          get_local $9
          f64.store offset=8
         end
         get_local $8
         i32.const 1
         i32.shr_s
         set_local $8
        end
        br $continue|4
       end
      end
     end
    end
    get_local $6
    i32.const 1
    i32.sub
    set_local $6
    br $repeat|2
    unreachable
   end
   unreachable
  end
  block $~lib/memory/memory.free|inlined.0
   block
    get_local $5
    call $~lib/allocator/arena/__memory_free
    br $~lib/memory/memory.free|inlined.0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.10 (result f64)
   i32.const 1
   set_local $6
   get_local $0
   get_local $6
   i32.const 3
   i32.shl
   i32.add
   get_local $1
   i32.add
   f64.load offset=8
  end
  set_local $12
  i32.const 1
  set_local $6
  block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.11 (result f64)
   i32.const 0
   set_local $7
   get_local $0
   get_local $7
   i32.const 3
   i32.shl
   i32.add
   get_local $1
   i32.add
   f64.load offset=8
  end
  set_local $10
  get_local $0
  get_local $6
  i32.const 3
  i32.shl
  i32.add
  get_local $1
  i32.add
  get_local $10
  f64.store offset=8
  i32.const 0
  set_local $6
  get_local $0
  get_local $6
  i32.const 3
  i32.shl
  i32.add
  get_local $1
  i32.add
  get_local $12
  f64.store offset=8
 )
 (func $~lib/typedarray/Float64Array#sort (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  block $~lib/internal/typedarray/SORT<Float64Array,f64>|inlined.0 (result i32)
   get_local $0
   i32.load offset=4
   set_local $2
   block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.3 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   set_local $3
   get_local $3
   i32.const 1
   i32.le_s
   if
    get_local $0
    br $~lib/internal/typedarray/SORT<Float64Array,f64>|inlined.0
   end
   get_local $0
   i32.load
   set_local $4
   get_local $3
   i32.const 2
   i32.eq
   if
    block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.0 (result f64)
     i32.const 1
     set_local $5
     get_local $4
     get_local $5
     i32.const 3
     i32.shl
     i32.add
     get_local $2
     i32.add
     f64.load offset=8
    end
    set_local $6
    block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.1 (result f64)
     i32.const 0
     set_local $5
     get_local $4
     get_local $5
     i32.const 3
     i32.shl
     i32.add
     get_local $2
     i32.add
     f64.load offset=8
    end
    set_local $7
    block (result i32)
     i32.const 2
     set_global $~argc
     get_local $6
     get_local $7
     get_local $1
     call_indirect (type $FFi)
    end
    i32.const 0
    i32.lt_s
    if
     i32.const 1
     set_local $5
     get_local $4
     get_local $5
     i32.const 3
     i32.shl
     i32.add
     get_local $2
     i32.add
     get_local $7
     f64.store offset=8
     i32.const 0
     set_local $5
     get_local $4
     get_local $5
     i32.const 3
     i32.shl
     i32.add
     get_local $2
     i32.add
     get_local $6
     f64.store offset=8
    end
    get_local $0
    br $~lib/internal/typedarray/SORT<Float64Array,f64>|inlined.0
   end
   get_local $3
   i32.const 256
   i32.lt_s
   if
    get_local $4
    get_local $2
    get_local $3
    get_local $1
    call $~lib/internal/sort/insertionSort<f64>
   else    
    get_local $4
    get_local $2
    get_local $3
    get_local $1
    call $~lib/internal/sort/weakHeapSort<f64>
   end
   get_local $0
  end
 )
 (func $~lib/typedarray/Float64Array#sort|trampoline~anonymous|1 (; 26 ;) (type $FFi) (param $0 f64) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i64)
  get_local $0
  i64.reinterpret/f64
  set_local $2
  get_local $1
  i64.reinterpret/f64
  set_local $3
  get_local $2
  get_local $2
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  set_local $2
  get_local $3
  get_local $3
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  set_local $3
  get_local $2
  get_local $3
  i64.gt_s
  get_local $2
  get_local $3
  i64.lt_s
  i32.sub
 )
 (func $~lib/typedarray/Float64Array#sort|trampoline (; 27 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     get_global $~argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/internal/sort/COMPARATOR<f64>|inlined.0 (result i32)
    i32.const 1
    br $~lib/internal/sort/COMPARATOR<f64>|inlined.0
   end
   set_local $1
  end
  get_local $0
  get_local $1
  call $~lib/typedarray/Float64Array#sort
 )
 (func $~lib/internal/typedarray/TypedArray<f64>#__get (; 28 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 i32)
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
  block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.12 (result f64)
   get_local $0
   i32.load
   set_local $2
   get_local $0
   i32.load offset=4
   set_local $3
   get_local $2
   get_local $1
   i32.const 3
   i32.shl
   i32.add
   get_local $3
   i32.add
   f64.load offset=8
  end
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#__set (; 29 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 0
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
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $3
  get_local $1
  i32.const 0
  i32.shl
  i32.add
  get_local $4
  i32.add
  get_local $2
  i32.store8 offset=8
 )
 (func $~lib/typedarray/Uint8ClampedArray#__set (; 30 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  get_local $1
  get_local $2
  tee_local $3
  i32.const 255
  tee_local $4
  get_local $3
  get_local $4
  i32.lt_s
  select
  tee_local $3
  i32.const 0
  tee_local $4
  get_local $3
  get_local $4
  i32.gt_s
  select
  call $~lib/internal/typedarray/TypedArray<u8>#__set
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#__get (; 31 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 0
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
  block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.0 (result i32)
   get_local $0
   i32.load
   set_local $2
   get_local $0
   i32.load offset=4
   set_local $3
   get_local $2
   get_local $1
   i32.const 0
   i32.shl
   i32.add
   get_local $3
   i32.add
   i32.load8_u offset=8
  end
 )
 (func $~lib/internal/typedarray/TypedArray<i8>#__set (; 32 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 0
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
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $3
  get_local $1
  i32.const 0
  i32.shl
  i32.add
  get_local $4
  i32.add
  get_local $2
  i32.store8 offset=8
 )
 (func $~lib/typedarray/Int8Array#fill (; 33 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.1 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  set_local $6
  get_local $2
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $6
   get_local $2
   i32.add
   tee_local $7
   i32.const 0
   tee_local $8
   get_local $7
   get_local $8
   i32.gt_s
   select
  else   
   get_local $2
   tee_local $7
   get_local $6
   tee_local $8
   get_local $7
   get_local $8
   i32.lt_s
   select
  end
  set_local $2
  get_local $3
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $6
   get_local $3
   i32.add
   tee_local $7
   i32.const 0
   tee_local $8
   get_local $7
   get_local $8
   i32.gt_s
   select
  else   
   get_local $3
   tee_local $7
   get_local $6
   tee_local $8
   get_local $7
   get_local $8
   i32.lt_s
   select
  end
  set_local $3
  get_local $2
  get_local $3
  i32.lt_s
  if
   get_local $4
   get_local $2
   i32.add
   get_local $5
   i32.add
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $7
   get_local $3
   get_local $2
   i32.sub
   set_local $8
   get_local $7
   get_local $1
   get_local $8
   call $~lib/internal/memory/memset
  end
  get_local $0
 )
 (func $~lib/internal/typedarray/TypedArray<i8>#__get (; 34 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $1
  get_local $0
  i32.load offset=8
  i32.const 0
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
  block $~lib/internal/arraybuffer/LOAD<i8,i8>|inlined.0 (result i32)
   get_local $0
   i32.load
   set_local $2
   get_local $0
   i32.load offset=4
   set_local $3
   get_local $2
   get_local $1
   i32.const 0
   i32.shl
   i32.add
   get_local $3
   i32.add
   i32.load8_s offset=8
  end
 )
 (func $~lib/array/Array<i8>#__get (; 35 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 0
  i32.shr_u
  i32.lt_u
  if (result i32)
   i32.const 0
   set_local $3
   get_local $2
   get_local $1
   i32.const 0
   i32.shl
   i32.add
   get_local $3
   i32.add
   i32.load8_s offset=8
  else   
   unreachable
  end
 )
 (func $std/typedarray/isInt8ArrayEqual (; 36 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.3 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  block $~lib/array/Array<i8>#get:length|inlined.1 (result i32)
   get_local $1
   i32.load offset=4
  end
  i32.ne
  if
   i32.const 0
   return
  end
  block $break|0
   block
    i32.const 0
    set_local $2
    block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.4 (result i32)
     get_local $0
     i32.load offset=8
     i32.const 0
     i32.shr_u
    end
    set_local $3
   end
   loop $repeat|0
    get_local $2
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $0
    get_local $2
    call $~lib/internal/typedarray/TypedArray<i8>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    get_local $1
    get_local $2
    call $~lib/array/Array<i8>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.ne
    if
     i32.const 0
     return
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $~lib/typedarray/Int8Array#fill|trampoline (; 37 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
   get_global $~lib/builtins/i32.MAX_VALUE
   set_local $3
  end
  get_local $0
  get_local $1
  get_local $2
  get_local $3
  call $~lib/typedarray/Int8Array#fill
 )
 (func $~lib/typedarray/Int8Array#subarray (; 38 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.5 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  set_local $3
  get_local $1
  i32.const 0
  i32.lt_s
  if
   get_local $3
   get_local $1
   i32.add
   tee_local $4
   i32.const 0
   tee_local $5
   get_local $4
   get_local $5
   i32.gt_s
   select
   set_local $1
  else   
   get_local $1
   tee_local $4
   get_local $3
   tee_local $5
   get_local $4
   get_local $5
   i32.lt_s
   select
   set_local $1
  end
  get_local $2
  i32.const 0
  i32.lt_s
  if
   get_local $3
   get_local $2
   i32.add
   tee_local $4
   get_local $1
   tee_local $5
   get_local $4
   get_local $5
   i32.gt_s
   select
   set_local $2
  else   
   get_local $2
   tee_local $4
   get_local $3
   tee_local $5
   get_local $4
   get_local $5
   i32.lt_s
   select
   tee_local $4
   get_local $1
   tee_local $5
   get_local $4
   get_local $5
   i32.gt_s
   select
   set_local $2
  end
  block $~lib/memory/memory.allocate|inlined.4 (result i32)
   i32.const 12
   set_local $4
   get_local $4
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.4
  end
  set_local $4
  get_local $4
  get_local $0
  i32.load
  i32.store
  get_local $4
  get_local $0
  i32.load offset=4
  get_local $1
  i32.const 0
  i32.shl
  i32.add
  i32.store offset=4
  get_local $4
  get_local $2
  get_local $1
  i32.sub
  i32.const 0
  i32.shl
  i32.store offset=8
  get_local $4
 )
 (func $~lib/typedarray/Int32Array#fill (; 39 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.4 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  set_local $6
  get_local $2
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $6
   get_local $2
   i32.add
   tee_local $7
   i32.const 0
   tee_local $8
   get_local $7
   get_local $8
   i32.gt_s
   select
  else   
   get_local $2
   tee_local $7
   get_local $6
   tee_local $8
   get_local $7
   get_local $8
   i32.lt_s
   select
  end
  set_local $2
  get_local $3
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $6
   get_local $3
   i32.add
   tee_local $7
   i32.const 0
   tee_local $8
   get_local $7
   get_local $8
   i32.gt_s
   select
  else   
   get_local $3
   tee_local $7
   get_local $6
   tee_local $8
   get_local $7
   get_local $8
   i32.lt_s
   select
  end
  set_local $3
  block $break|0
   loop $repeat|0
    get_local $2
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $4
    get_local $2
    i32.const 2
    i32.shl
    i32.add
    get_local $5
    i32.add
    get_local $1
    i32.store offset=8
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $0
 )
 (func $~lib/array/Array<i32>#__get (; 40 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
   i32.const 0
   set_local $3
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   get_local $3
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $std/typedarray/isInt32ArrayEqual (; 41 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.6 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  block $~lib/array/Array<i32>#get:length|inlined.1 (result i32)
   get_local $1
   i32.load offset=4
  end
  i32.ne
  if
   i32.const 0
   return
  end
  block $break|0
   block
    i32.const 0
    set_local $2
    block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.7 (result i32)
     get_local $0
     i32.load offset=8
     i32.const 2
     i32.shr_u
    end
    set_local $3
   end
   loop $repeat|0
    get_local $2
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $0
    get_local $2
    call $~lib/internal/typedarray/TypedArray<i32>#__get
    get_local $1
    get_local $2
    call $~lib/array/Array<i32>#__get
    i32.ne
    if
     i32.const 0
     return
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $~lib/typedarray/Int32Array#fill|trampoline (; 42 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
   get_global $~lib/builtins/i32.MAX_VALUE
   set_local $3
  end
  get_local $0
  get_local $1
  get_local $2
  get_local $3
  call $~lib/typedarray/Int32Array#fill
 )
 (func $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 (; 43 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/typedarray/Int8Array#reduce<i8> (; 44 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.10 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $break|0
   i32.const 0
   set_local $6
   loop $repeat|0
    get_local $6
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<i8,i8>|inlined.2 (result i32)
      get_local $4
      get_local $6
      i32.const 0
      i32.shl
      i32.add
      get_local $5
      i32.add
      i32.load8_s offset=8
     end
     get_local $6
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $2
    get_local $6
    i32.const 1
    i32.add
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduce<Int8Array,i8> (; 45 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_local $0
  i32.const 2
  i32.const 0
  call $~lib/typedarray/Int8Array#reduce<i8>
  set_local $1
  get_local $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 252
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduce<Uint8Array,u8>~anonymous|3 (; 46 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/typedarray/Uint8Array#reduce<u8> (; 47 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.2 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $break|0
   i32.const 0
   set_local $6
   loop $repeat|0
    get_local $6
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.1 (result i32)
      get_local $4
      get_local $6
      i32.const 0
      i32.shl
      i32.add
      get_local $5
      i32.add
      i32.load8_u offset=8
     end
     get_local $6
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $2
    get_local $6
    i32.const 1
    i32.add
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduce<Uint8Array,u8> (; 48 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  set_local $0
  get_local $0
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
  i32.const 0
  call $~lib/typedarray/Uint8Array#reduce<u8>
  set_local $1
  get_local $1
  i32.const 255
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 252
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduce<Uint8ClampedArray,u8>~anonymous|4 (; 49 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $std/typedarray/testReduce<Uint8ClampedArray,u8> (; 50 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  set_local $0
  get_local $0
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
  i32.const 0
  call $~lib/typedarray/Uint8Array#reduce<u8>
  set_local $1
  get_local $1
  i32.const 255
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 252
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/typedarray/TypedArray<i16>#__set (; 51 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $3
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  get_local $4
  i32.add
  get_local $2
  i32.store16 offset=8
 )
 (func $std/typedarray/testReduce<Int16Array,i16>~anonymous|5 (; 52 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/typedarray/Int16Array#reduce<i16> (; 53 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/internal/typedarray/TypedArray<i16>#get:length|inlined.1 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 1
   i32.shr_u
  end
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $break|0
   i32.const 0
   set_local $6
   loop $repeat|0
    get_local $6
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<i16,i16>|inlined.0 (result i32)
      get_local $4
      get_local $6
      i32.const 1
      i32.shl
      i32.add
      get_local $5
      i32.add
      i32.load16_s offset=8
     end
     get_local $6
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $2
    get_local $6
    i32.const 1
    i32.add
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduce<Int16Array,i16> (; 54 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#constructor
  set_local $0
  get_local $0
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
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int16Array#reduce<i16>
  set_local $1
  get_local $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 252
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/typedarray/TypedArray<u16>#__set (; 55 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $3
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  get_local $4
  i32.add
  get_local $2
  i32.store16 offset=8
 )
 (func $std/typedarray/testReduce<Uint16Array,u16>~anonymous|6 (; 56 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/typedarray/Uint16Array#reduce<u16> (; 57 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/internal/typedarray/TypedArray<u16>#get:length|inlined.1 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 1
   i32.shr_u
  end
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $break|0
   i32.const 0
   set_local $6
   loop $repeat|0
    get_local $6
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<u16,u16>|inlined.0 (result i32)
      get_local $4
      get_local $6
      i32.const 1
      i32.shl
      i32.add
      get_local $5
      i32.add
      i32.load16_u offset=8
     end
     get_local $6
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $2
    get_local $6
    i32.const 1
    i32.add
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduce<Uint16Array,u16> (; 58 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  get_local $0
  i32.const 6
  i32.const 0
  call $~lib/typedarray/Uint16Array#reduce<u16>
  set_local $1
  get_local $1
  i32.const 65535
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 252
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduce<Int32Array,i32>~anonymous|7 (; 59 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/typedarray/Int32Array#reduce<i32> (; 60 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.9 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $break|0
   i32.const 0
   set_local $6
   loop $repeat|0
    get_local $6
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.2 (result i32)
      get_local $4
      get_local $6
      i32.const 2
      i32.shl
      i32.add
      get_local $5
      i32.add
      i32.load offset=8
     end
     get_local $6
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $2
    get_local $6
    i32.const 1
    i32.add
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduce<Int32Array,i32> (; 61 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#constructor
  set_local $0
  get_local $0
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
  i32.const 0
  call $~lib/typedarray/Int32Array#reduce<i32>
  set_local $1
  get_local $1
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 252
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/typedarray/TypedArray<u32>#__set (; 62 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $3
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  get_local $4
  i32.add
  get_local $2
  i32.store offset=8
 )
 (func $std/typedarray/testReduce<Uint32Array,u32>~anonymous|8 (; 63 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/typedarray/Uint32Array#reduce<u32> (; 64 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/internal/typedarray/TypedArray<u32>#get:length|inlined.1 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $break|0
   i32.const 0
   set_local $6
   loop $repeat|0
    get_local $6
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<u32,u32>|inlined.0 (result i32)
      get_local $4
      get_local $6
      i32.const 2
      i32.shl
      i32.add
      get_local $5
      i32.add
      i32.load offset=8
     end
     get_local $6
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $2
    get_local $6
    i32.const 1
    i32.add
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduce<Uint32Array,u32> (; 65 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  get_local $0
  i32.const 8
  i32.const 0
  call $~lib/typedarray/Uint32Array#reduce<u32>
  set_local $1
  get_local $1
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 252
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/typedarray/TypedArray<i64>#__set (; 66 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
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
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $3
  get_local $1
  i32.const 3
  i32.shl
  i32.add
  get_local $4
  i32.add
  get_local $2
  i64.store offset=8
 )
 (func $std/typedarray/testReduce<Int64Array,i64>~anonymous|9 (; 67 ;) (type $IIiiI) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  get_local $0
  get_local $1
  i64.add
 )
 (func $~lib/typedarray/Int64Array#reduce<i64> (; 68 ;) (type $iiII) (param $0 i32) (param $1 i32) (param $2 i64) (result i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.1 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $break|0
   i32.const 0
   set_local $6
   loop $repeat|0
    get_local $6
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i64)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.0 (result i64)
      get_local $4
      get_local $6
      i32.const 3
      i32.shl
      i32.add
      get_local $5
      i32.add
      i64.load offset=8
     end
     get_local $6
     get_local $0
     get_local $1
     call_indirect (type $IIiiI)
    end
    set_local $2
    get_local $6
    i32.const 1
    i32.add
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduce<Int64Array,i64> (; 69 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#constructor
  set_local $0
  get_local $0
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
  i64.const 0
  call $~lib/typedarray/Int64Array#reduce<i64>
  set_local $1
  get_local $1
  i64.const 6
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 252
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/typedarray/TypedArray<u64>#__set (; 70 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
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
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $3
  get_local $1
  i32.const 3
  i32.shl
  i32.add
  get_local $4
  i32.add
  get_local $2
  i64.store offset=8
 )
 (func $std/typedarray/testReduce<Uint64Array,u64>~anonymous|10 (; 71 ;) (type $IIiiI) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  get_local $0
  get_local $1
  i64.add
 )
 (func $~lib/typedarray/Uint64Array#reduce<u64> (; 72 ;) (type $iiII) (param $0 i32) (param $1 i32) (param $2 i64) (result i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/internal/typedarray/TypedArray<u64>#get:length|inlined.1 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $break|0
   i32.const 0
   set_local $6
   loop $repeat|0
    get_local $6
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i64)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<u64,u64>|inlined.0 (result i64)
      get_local $4
      get_local $6
      i32.const 3
      i32.shl
      i32.add
      get_local $5
      i32.add
      i64.load offset=8
     end
     get_local $6
     get_local $0
     get_local $1
     call_indirect (type $IIiiI)
    end
    set_local $2
    get_local $6
    i32.const 1
    i32.add
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduce<Uint64Array,u64> (; 73 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u64>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  get_local $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  get_local $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  get_local $0
  i32.const 10
  i64.const 0
  call $~lib/typedarray/Uint64Array#reduce<u64>
  set_local $1
  get_local $1
  i64.const 6
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 252
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/typedarray/TypedArray<f32>#__set (; 74 ;) (type $iifv) (param $0 i32) (param $1 i32) (param $2 f32)
  (local $3 i32)
  (local $4 i32)
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
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $3
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  get_local $4
  i32.add
  get_local $2
  f32.store offset=8
 )
 (func $std/typedarray/testReduce<Float32Array,f32>~anonymous|11 (; 75 ;) (type $ffiif) (param $0 f32) (param $1 f32) (param $2 i32) (param $3 i32) (result f32)
  get_local $0
  get_local $1
  f32.add
 )
 (func $~lib/typedarray/Float32Array#reduce<f32> (; 76 ;) (type $iiff) (param $0 i32) (param $1 i32) (param $2 f32) (result f32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.1 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $break|0
   i32.const 0
   set_local $6
   loop $repeat|0
    get_local $6
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result f32)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.0 (result f32)
      get_local $4
      get_local $6
      i32.const 2
      i32.shl
      i32.add
      get_local $5
      i32.add
      f32.load offset=8
     end
     get_local $6
     get_local $0
     get_local $1
     call_indirect (type $ffiif)
    end
    set_local $2
    get_local $6
    i32.const 1
    i32.add
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduce<Float32Array,f32> (; 77 ;) (type $v)
  (local $0 i32)
  (local $1 f32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#constructor
  set_local $0
  get_local $0
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
  i32.const 11
  f32.const 0
  call $~lib/typedarray/Float32Array#reduce<f32>
  set_local $1
  get_local $1
  f32.const 6
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 252
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduce<Float64Array,f64>~anonymous|12 (; 78 ;) (type $FFiiF) (param $0 f64) (param $1 f64) (param $2 i32) (param $3 i32) (result f64)
  get_local $0
  get_local $1
  f64.add
 )
 (func $~lib/typedarray/Float64Array#reduce<f64> (; 79 ;) (type $iiFF) (param $0 i32) (param $1 i32) (param $2 f64) (result f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.4 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  set_local $3
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  block $break|0
   i32.const 0
   set_local $6
   loop $repeat|0
    get_local $6
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result f64)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.13 (result f64)
      get_local $4
      get_local $6
      i32.const 3
      i32.shl
      i32.add
      get_local $5
      i32.add
      f64.load offset=8
     end
     get_local $6
     get_local $0
     get_local $1
     call_indirect (type $FFiiF)
    end
    set_local $2
    get_local $6
    i32.const 1
    i32.add
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduce<Float64Array,f64> (; 80 ;) (type $v)
  (local $0 i32)
  (local $1 f64)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#constructor
  set_local $0
  get_local $0
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
  i32.const 12
  f64.const 0
  call $~lib/typedarray/Float64Array#reduce<f64>
  set_local $1
  get_local $1
  f64.const 6
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 252
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduceRight<Int8Array,i8>~anonymous|13 (; 81 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/typedarray/Int8Array#reduceRight<i8> (; 82 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  block $break|0
   block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.11 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   i32.const 1
   i32.sub
   set_local $5
   loop $repeat|0
    get_local $5
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<i8,i8>|inlined.3 (result i32)
      get_local $3
      get_local $5
      i32.const 0
      i32.shl
      i32.add
      get_local $4
      i32.add
      i32.load8_s offset=8
     end
     get_local $5
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $2
    get_local $5
    i32.const 1
    i32.sub
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduceRight<Int8Array,i8> (; 83 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_local $0
  i32.const 13
  i32.const 0
  call $~lib/typedarray/Int8Array#reduceRight<i8>
  set_local $1
  get_local $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduceRight<Uint8Array,u8>~anonymous|14 (; 84 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/typedarray/Uint8Array#reduceRight<u8> (; 85 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  block $break|0
   block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.3 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   i32.const 1
   i32.sub
   set_local $5
   loop $repeat|0
    get_local $5
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.2 (result i32)
      get_local $3
      get_local $5
      i32.const 0
      i32.shl
      i32.add
      get_local $4
      i32.add
      i32.load8_u offset=8
     end
     get_local $5
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $2
    get_local $5
    i32.const 1
    i32.sub
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduceRight<Uint8Array,u8> (; 86 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  set_local $0
  get_local $0
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
  i32.const 0
  call $~lib/typedarray/Uint8Array#reduceRight<u8>
  set_local $1
  get_local $1
  i32.const 255
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduceRight<Uint8ClampedArray,u8>~anonymous|15 (; 87 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $std/typedarray/testReduceRight<Uint8ClampedArray,u8> (; 88 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  set_local $0
  get_local $0
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
  i32.const 0
  call $~lib/typedarray/Uint8Array#reduceRight<u8>
  set_local $1
  get_local $1
  i32.const 255
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduceRight<Int16Array,i16>~anonymous|16 (; 89 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/typedarray/Int16Array#reduceRight<i16> (; 90 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  block $break|0
   block $~lib/internal/typedarray/TypedArray<i16>#get:length|inlined.2 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   i32.const 1
   i32.sub
   set_local $5
   loop $repeat|0
    get_local $5
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<i16,i16>|inlined.1 (result i32)
      get_local $3
      get_local $5
      i32.const 1
      i32.shl
      i32.add
      get_local $4
      i32.add
      i32.load16_s offset=8
     end
     get_local $5
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $2
    get_local $5
    i32.const 1
    i32.sub
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduceRight<Int16Array,i16> (; 91 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#constructor
  set_local $0
  get_local $0
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
  i32.const 16
  i32.const 0
  call $~lib/typedarray/Int16Array#reduceRight<i16>
  set_local $1
  get_local $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduceRight<Uint16Array,u16>~anonymous|17 (; 92 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/typedarray/Uint16Array#reduceRight<u16> (; 93 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  block $break|0
   block $~lib/internal/typedarray/TypedArray<u16>#get:length|inlined.2 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   i32.const 1
   i32.sub
   set_local $5
   loop $repeat|0
    get_local $5
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<u16,u16>|inlined.1 (result i32)
      get_local $3
      get_local $5
      i32.const 1
      i32.shl
      i32.add
      get_local $4
      i32.add
      i32.load16_u offset=8
     end
     get_local $5
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $2
    get_local $5
    i32.const 1
    i32.sub
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduceRight<Uint16Array,u16> (; 94 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  get_local $0
  i32.const 17
  i32.const 0
  call $~lib/typedarray/Uint16Array#reduceRight<u16>
  set_local $1
  get_local $1
  i32.const 65535
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduceRight<Int32Array,i32>~anonymous|18 (; 95 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/typedarray/Int32Array#reduceRight<i32> (; 96 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  block $break|0
   block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.10 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   i32.const 1
   i32.sub
   set_local $5
   loop $repeat|0
    get_local $5
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.3 (result i32)
      get_local $3
      get_local $5
      i32.const 2
      i32.shl
      i32.add
      get_local $4
      i32.add
      i32.load offset=8
     end
     get_local $5
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $2
    get_local $5
    i32.const 1
    i32.sub
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduceRight<Int32Array,i32> (; 97 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#constructor
  set_local $0
  get_local $0
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
  i32.const 0
  call $~lib/typedarray/Int32Array#reduceRight<i32>
  set_local $1
  get_local $1
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduceRight<Uint32Array,u32>~anonymous|19 (; 98 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/typedarray/Uint32Array#reduceRight<u32> (; 99 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  block $break|0
   block $~lib/internal/typedarray/TypedArray<u32>#get:length|inlined.2 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   i32.const 1
   i32.sub
   set_local $5
   loop $repeat|0
    get_local $5
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<u32,u32>|inlined.1 (result i32)
      get_local $3
      get_local $5
      i32.const 2
      i32.shl
      i32.add
      get_local $4
      i32.add
      i32.load offset=8
     end
     get_local $5
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $2
    get_local $5
    i32.const 1
    i32.sub
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduceRight<Uint32Array,u32> (; 100 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  get_local $0
  i32.const 19
  i32.const 0
  call $~lib/typedarray/Uint32Array#reduceRight<u32>
  set_local $1
  get_local $1
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduceRight<Int64Array,i64>~anonymous|20 (; 101 ;) (type $IIiiI) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  get_local $0
  get_local $1
  i64.add
 )
 (func $~lib/typedarray/Int64Array#reduceRight<i64> (; 102 ;) (type $iiII) (param $0 i32) (param $1 i32) (param $2 i64) (result i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  block $break|0
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.2 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   i32.const 1
   i32.sub
   set_local $5
   loop $repeat|0
    get_local $5
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i64)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.1 (result i64)
      get_local $3
      get_local $5
      i32.const 3
      i32.shl
      i32.add
      get_local $4
      i32.add
      i64.load offset=8
     end
     get_local $5
     get_local $0
     get_local $1
     call_indirect (type $IIiiI)
    end
    set_local $2
    get_local $5
    i32.const 1
    i32.sub
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduceRight<Int64Array,i64> (; 103 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#constructor
  set_local $0
  get_local $0
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
  i64.const 0
  call $~lib/typedarray/Int64Array#reduceRight<i64>
  set_local $1
  get_local $1
  i64.const 6
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduceRight<Uint64Array,u64>~anonymous|21 (; 104 ;) (type $IIiiI) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  get_local $0
  get_local $1
  i64.add
 )
 (func $~lib/typedarray/Uint64Array#reduceRight<u64> (; 105 ;) (type $iiII) (param $0 i32) (param $1 i32) (param $2 i64) (result i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  block $break|0
   block $~lib/internal/typedarray/TypedArray<u64>#get:length|inlined.2 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   i32.const 1
   i32.sub
   set_local $5
   loop $repeat|0
    get_local $5
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i64)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<u64,u64>|inlined.1 (result i64)
      get_local $3
      get_local $5
      i32.const 3
      i32.shl
      i32.add
      get_local $4
      i32.add
      i64.load offset=8
     end
     get_local $5
     get_local $0
     get_local $1
     call_indirect (type $IIiiI)
    end
    set_local $2
    get_local $5
    i32.const 1
    i32.sub
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduceRight<Uint64Array,u64> (; 106 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u64>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  get_local $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  get_local $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  get_local $0
  i32.const 21
  i64.const 0
  call $~lib/typedarray/Uint64Array#reduceRight<u64>
  set_local $1
  get_local $1
  i64.const 6
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduceRight<Float32Array,f32>~anonymous|22 (; 107 ;) (type $ffiif) (param $0 f32) (param $1 f32) (param $2 i32) (param $3 i32) (result f32)
  get_local $0
  get_local $1
  f32.add
 )
 (func $~lib/typedarray/Float32Array#reduceRight<f32> (; 108 ;) (type $iiff) (param $0 i32) (param $1 i32) (param $2 f32) (result f32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  block $break|0
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.2 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   i32.const 1
   i32.sub
   set_local $5
   loop $repeat|0
    get_local $5
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result f32)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.1 (result f32)
      get_local $3
      get_local $5
      i32.const 2
      i32.shl
      i32.add
      get_local $4
      i32.add
      f32.load offset=8
     end
     get_local $5
     get_local $0
     get_local $1
     call_indirect (type $ffiif)
    end
    set_local $2
    get_local $5
    i32.const 1
    i32.sub
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduceRight<Float32Array,f32> (; 109 ;) (type $v)
  (local $0 i32)
  (local $1 f32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#constructor
  set_local $0
  get_local $0
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
  i32.const 22
  f32.const 0
  call $~lib/typedarray/Float32Array#reduceRight<f32>
  set_local $1
  get_local $1
  f32.const 6
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduceRight<Float64Array,f64>~anonymous|23 (; 110 ;) (type $FFiiF) (param $0 f64) (param $1 f64) (param $2 i32) (param $3 i32) (result f64)
  get_local $0
  get_local $1
  f64.add
 )
 (func $~lib/typedarray/Float64Array#reduceRight<f64> (; 111 ;) (type $iiFF) (param $0 i32) (param $1 i32) (param $2 f64) (result f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  block $break|0
   block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.5 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   i32.const 1
   i32.sub
   set_local $5
   loop $repeat|0
    get_local $5
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result f64)
     i32.const 4
     set_global $~argc
     get_local $2
     block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.14 (result f64)
      get_local $3
      get_local $5
      i32.const 3
      i32.shl
      i32.add
      get_local $4
      i32.add
      f64.load offset=8
     end
     get_local $5
     get_local $0
     get_local $1
     call_indirect (type $FFiiF)
    end
    set_local $2
    get_local $5
    i32.const 1
    i32.sub
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $std/typedarray/testReduceRight<Float64Array,f64> (; 112 ;) (type $v)
  (local $0 i32)
  (local $1 f64)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#constructor
  set_local $0
  get_local $0
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
  i32.const 23
  f64.const 0
  call $~lib/typedarray/Float64Array#reduceRight<f64>
  set_local $1
  get_local $1
  f64.const 6
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 279
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 (; 113 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  get_local $0
  i32.mul
 )
 (func $~lib/typedarray/Int8Array#map (; 114 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.12 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  i32.const 0
  get_local $2
  call $~lib/internal/typedarray/TypedArray<i8>#constructor
  set_local $5
  get_local $5
  i32.load
  set_local $6
  block $break|0
   i32.const 0
   set_local $7
   loop $repeat|0
    get_local $7
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<i8,i8>|inlined.4 (result i32)
       get_local $3
       get_local $7
       i32.const 0
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load8_s offset=8
      end
      get_local $7
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 24
     i32.shl
     i32.const 24
     i32.shr_s
     set_local $8
     i32.const 0
     set_local $9
     get_local $6
     get_local $7
     i32.const 0
     i32.shl
     i32.add
     get_local $9
     i32.add
     get_local $8
     i32.store8 offset=8
    end
    get_local $7
    i32.const 1
    i32.add
    set_local $7
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $5
 )
 (func $std/typedarray/testArrayMap<Int8Array,i8> (; 115 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_local $0
  i32.const 24
  call $~lib/typedarray/Int8Array#map
  set_local $1
  get_local $1
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<Uint8Array,u8>~anonymous|25 (; 116 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  get_local $0
  i32.mul
 )
 (func $~lib/typedarray/Uint8Array#map (; 117 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.4 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  i32.const 0
  get_local $2
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  set_local $5
  get_local $5
  i32.load
  set_local $6
  block $break|0
   i32.const 0
   set_local $7
   loop $repeat|0
    get_local $7
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.3 (result i32)
       get_local $3
       get_local $7
       i32.const 0
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load8_u offset=8
      end
      get_local $7
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 255
     i32.and
     set_local $8
     i32.const 0
     set_local $9
     get_local $6
     get_local $7
     i32.const 0
     i32.shl
     i32.add
     get_local $9
     i32.add
     get_local $8
     i32.store8 offset=8
    end
    get_local $7
    i32.const 1
    i32.add
    set_local $7
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $5
 )
 (func $std/typedarray/testArrayMap<Uint8Array,u8> (; 118 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  set_local $0
  get_local $0
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
  i32.const 25
  call $~lib/typedarray/Uint8Array#map
  set_local $1
  get_local $1
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<Uint8ClampedArray,u8>~anonymous|26 (; 119 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  get_local $0
  i32.mul
 )
 (func $~lib/typedarray/Uint8ClampedArray#map (; 120 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.5 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  i32.const 0
  get_local $2
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  set_local $5
  get_local $5
  i32.load
  set_local $6
  block $break|0
   i32.const 0
   set_local $7
   loop $repeat|0
    get_local $7
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.4 (result i32)
       get_local $3
       get_local $7
       i32.const 0
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load8_u offset=8
      end
      get_local $7
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 255
     i32.and
     set_local $8
     i32.const 0
     set_local $9
     get_local $6
     get_local $7
     i32.const 0
     i32.shl
     i32.add
     get_local $9
     i32.add
     get_local $8
     i32.store8 offset=8
    end
    get_local $7
    i32.const 1
    i32.add
    set_local $7
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $5
 )
 (func $std/typedarray/testArrayMap<Uint8ClampedArray,u8> (; 121 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  set_local $0
  get_local $0
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
  i32.const 26
  call $~lib/typedarray/Uint8ClampedArray#map
  set_local $1
  get_local $1
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<Int16Array,i16>~anonymous|27 (; 122 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  get_local $0
  i32.mul
 )
 (func $~lib/typedarray/Int16Array#map (; 123 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/internal/typedarray/TypedArray<i16>#get:length|inlined.3 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 1
   i32.shr_u
  end
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  i32.const 0
  get_local $2
  call $~lib/internal/typedarray/TypedArray<i16>#constructor
  set_local $5
  get_local $5
  i32.load
  set_local $6
  block $break|0
   i32.const 0
   set_local $7
   loop $repeat|0
    get_local $7
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<i16,i16>|inlined.2 (result i32)
       get_local $3
       get_local $7
       i32.const 1
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load16_s offset=8
      end
      get_local $7
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 16
     i32.shl
     i32.const 16
     i32.shr_s
     set_local $8
     i32.const 0
     set_local $9
     get_local $6
     get_local $7
     i32.const 1
     i32.shl
     i32.add
     get_local $9
     i32.add
     get_local $8
     i32.store16 offset=8
    end
    get_local $7
    i32.const 1
    i32.add
    set_local $7
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $5
 )
 (func $~lib/internal/typedarray/TypedArray<i16>#__get (; 124 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
  block $~lib/internal/arraybuffer/LOAD<i16,i16>|inlined.3 (result i32)
   get_local $0
   i32.load
   set_local $2
   get_local $0
   i32.load offset=4
   set_local $3
   get_local $2
   get_local $1
   i32.const 1
   i32.shl
   i32.add
   get_local $3
   i32.add
   i32.load16_s offset=8
  end
 )
 (func $std/typedarray/testArrayMap<Int16Array,i16> (; 125 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#constructor
  set_local $0
  get_local $0
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
  i32.const 27
  call $~lib/typedarray/Int16Array#map
  set_local $1
  get_local $1
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<Uint16Array,u16>~anonymous|28 (; 126 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  get_local $0
  i32.mul
 )
 (func $~lib/typedarray/Uint16Array#map (; 127 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/internal/typedarray/TypedArray<u16>#get:length|inlined.3 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 1
   i32.shr_u
  end
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  i32.const 0
  get_local $2
  call $~lib/internal/typedarray/TypedArray<u16>#constructor
  set_local $5
  get_local $5
  i32.load
  set_local $6
  block $break|0
   i32.const 0
   set_local $7
   loop $repeat|0
    get_local $7
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<u16,u16>|inlined.2 (result i32)
       get_local $3
       get_local $7
       i32.const 1
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load16_u offset=8
      end
      get_local $7
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 65535
     i32.and
     set_local $8
     i32.const 0
     set_local $9
     get_local $6
     get_local $7
     i32.const 1
     i32.shl
     i32.add
     get_local $9
     i32.add
     get_local $8
     i32.store16 offset=8
    end
    get_local $7
    i32.const 1
    i32.add
    set_local $7
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $5
 )
 (func $~lib/internal/typedarray/TypedArray<u16>#__get (; 128 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
  block $~lib/internal/arraybuffer/LOAD<u16,u16>|inlined.3 (result i32)
   get_local $0
   i32.load
   set_local $2
   get_local $0
   i32.load offset=4
   set_local $3
   get_local $2
   get_local $1
   i32.const 1
   i32.shl
   i32.add
   get_local $3
   i32.add
   i32.load16_u offset=8
  end
 )
 (func $std/typedarray/testArrayMap<Uint16Array,u16> (; 129 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  get_local $0
  i32.const 28
  call $~lib/typedarray/Uint16Array#map
  set_local $1
  get_local $1
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<Int32Array,i32>~anonymous|29 (; 130 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  get_local $0
  i32.mul
 )
 (func $~lib/typedarray/Int32Array#map (; 131 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.11 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  i32.const 0
  get_local $2
  call $~lib/internal/typedarray/TypedArray<i32>#constructor
  set_local $5
  get_local $5
  i32.load
  set_local $6
  block $break|0
   i32.const 0
   set_local $7
   loop $repeat|0
    get_local $7
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.4 (result i32)
       get_local $3
       get_local $7
       i32.const 2
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load offset=8
      end
      get_local $7
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     set_local $8
     i32.const 0
     set_local $9
     get_local $6
     get_local $7
     i32.const 2
     i32.shl
     i32.add
     get_local $9
     i32.add
     get_local $8
     i32.store offset=8
    end
    get_local $7
    i32.const 1
    i32.add
    set_local $7
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $5
 )
 (func $std/typedarray/testArrayMap<Int32Array,i32> (; 132 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<Uint32Array,u32>~anonymous|30 (; 133 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  get_local $0
  i32.mul
 )
 (func $~lib/typedarray/Uint32Array#map (; 134 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/internal/typedarray/TypedArray<u32>#get:length|inlined.3 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  i32.const 0
  get_local $2
  call $~lib/internal/typedarray/TypedArray<u32>#constructor
  set_local $5
  get_local $5
  i32.load
  set_local $6
  block $break|0
   i32.const 0
   set_local $7
   loop $repeat|0
    get_local $7
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<u32,u32>|inlined.2 (result i32)
       get_local $3
       get_local $7
       i32.const 2
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load offset=8
      end
      get_local $7
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     set_local $8
     i32.const 0
     set_local $9
     get_local $6
     get_local $7
     i32.const 2
     i32.shl
     i32.add
     get_local $9
     i32.add
     get_local $8
     i32.store offset=8
    end
    get_local $7
    i32.const 1
    i32.add
    set_local $7
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $5
 )
 (func $~lib/internal/typedarray/TypedArray<u32>#__get (; 135 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
  block $~lib/internal/arraybuffer/LOAD<u32,u32>|inlined.3 (result i32)
   get_local $0
   i32.load
   set_local $2
   get_local $0
   i32.load offset=4
   set_local $3
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   get_local $3
   i32.add
   i32.load offset=8
  end
 )
 (func $std/typedarray/testArrayMap<Uint32Array,u32> (; 136 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  get_local $0
  i32.const 30
  call $~lib/typedarray/Uint32Array#map
  set_local $1
  get_local $1
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<Int64Array,i64>~anonymous|31 (; 137 ;) (type $IiiI) (param $0 i64) (param $1 i32) (param $2 i32) (result i64)
  get_local $0
  get_local $0
  i64.mul
 )
 (func $~lib/typedarray/Int64Array#map (; 138 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.3 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  i32.const 0
  get_local $2
  call $~lib/internal/typedarray/TypedArray<i64>#constructor
  set_local $5
  get_local $5
  i32.load
  set_local $6
  block $break|0
   i32.const 0
   set_local $7
   loop $repeat|0
    get_local $7
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block (result i64)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.2 (result i64)
       get_local $3
       get_local $7
       i32.const 3
       i32.shl
       i32.add
       get_local $4
       i32.add
       i64.load offset=8
      end
      get_local $7
      get_local $0
      get_local $1
      call_indirect (type $IiiI)
     end
     set_local $8
     i32.const 0
     set_local $9
     get_local $6
     get_local $7
     i32.const 3
     i32.shl
     i32.add
     get_local $9
     i32.add
     get_local $8
     i64.store offset=8
    end
    get_local $7
    i32.const 1
    i32.add
    set_local $7
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $5
 )
 (func $~lib/internal/typedarray/TypedArray<i64>#__get (; 139 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i32)
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
  block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.3 (result i64)
   get_local $0
   i32.load
   set_local $2
   get_local $0
   i32.load offset=4
   set_local $3
   get_local $2
   get_local $1
   i32.const 3
   i32.shl
   i32.add
   get_local $3
   i32.add
   i64.load offset=8
  end
 )
 (func $std/typedarray/testArrayMap<Int64Array,i64> (; 140 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 1
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 4
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 9
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<Uint64Array,u64>~anonymous|32 (; 141 ;) (type $IiiI) (param $0 i64) (param $1 i32) (param $2 i32) (result i64)
  get_local $0
  get_local $0
  i64.mul
 )
 (func $~lib/typedarray/Uint64Array#map (; 142 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  block $~lib/internal/typedarray/TypedArray<u64>#get:length|inlined.3 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  i32.const 0
  get_local $2
  call $~lib/internal/typedarray/TypedArray<u64>#constructor
  set_local $5
  get_local $5
  i32.load
  set_local $6
  block $break|0
   i32.const 0
   set_local $7
   loop $repeat|0
    get_local $7
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block (result i64)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<u64,u64>|inlined.2 (result i64)
       get_local $3
       get_local $7
       i32.const 3
       i32.shl
       i32.add
       get_local $4
       i32.add
       i64.load offset=8
      end
      get_local $7
      get_local $0
      get_local $1
      call_indirect (type $IiiI)
     end
     set_local $8
     i32.const 0
     set_local $9
     get_local $6
     get_local $7
     i32.const 3
     i32.shl
     i32.add
     get_local $9
     i32.add
     get_local $8
     i64.store offset=8
    end
    get_local $7
    i32.const 1
    i32.add
    set_local $7
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $5
 )
 (func $~lib/internal/typedarray/TypedArray<u64>#__get (; 143 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i32)
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
  block $~lib/internal/arraybuffer/LOAD<u64,u64>|inlined.3 (result i64)
   get_local $0
   i32.load
   set_local $2
   get_local $0
   i32.load offset=4
   set_local $3
   get_local $2
   get_local $1
   i32.const 3
   i32.shl
   i32.add
   get_local $3
   i32.add
   i64.load offset=8
  end
 )
 (func $std/typedarray/testArrayMap<Uint64Array,u64> (; 144 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u64>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  get_local $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  get_local $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  get_local $0
  i32.const 32
  call $~lib/typedarray/Uint64Array#map
  set_local $1
  get_local $1
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 1
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 4
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 9
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<Float32Array,f32>~anonymous|33 (; 145 ;) (type $fiif) (param $0 f32) (param $1 i32) (param $2 i32) (result f32)
  get_local $0
  get_local $0
  f32.mul
 )
 (func $~lib/typedarray/Float32Array#map (; 146 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  (local $9 i32)
  block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.3 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  i32.const 0
  get_local $2
  call $~lib/internal/typedarray/TypedArray<f32>#constructor
  set_local $5
  get_local $5
  i32.load
  set_local $6
  block $break|0
   i32.const 0
   set_local $7
   loop $repeat|0
    get_local $7
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block (result f32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.2 (result f32)
       get_local $3
       get_local $7
       i32.const 2
       i32.shl
       i32.add
       get_local $4
       i32.add
       f32.load offset=8
      end
      get_local $7
      get_local $0
      get_local $1
      call_indirect (type $fiif)
     end
     set_local $8
     i32.const 0
     set_local $9
     get_local $6
     get_local $7
     i32.const 2
     i32.shl
     i32.add
     get_local $9
     i32.add
     get_local $8
     f32.store offset=8
    end
    get_local $7
    i32.const 1
    i32.add
    set_local $7
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $5
 )
 (func $~lib/internal/typedarray/TypedArray<f32>#__get (; 147 ;) (type $iif) (param $0 i32) (param $1 i32) (result f32)
  (local $2 i32)
  (local $3 i32)
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
  block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.3 (result f32)
   get_local $0
   i32.load
   set_local $2
   get_local $0
   i32.load offset=4
   set_local $3
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   get_local $3
   i32.add
   f32.load offset=8
  end
 )
 (func $std/typedarray/testArrayMap<Float32Array,f32> (; 148 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#constructor
  set_local $0
  get_local $0
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
  i32.const 33
  call $~lib/typedarray/Float32Array#map
  set_local $1
  get_local $1
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 1
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 4
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 9
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<Float64Array,f64>~anonymous|34 (; 149 ;) (type $FiiF) (param $0 f64) (param $1 i32) (param $2 i32) (result f64)
  get_local $0
  get_local $0
  f64.mul
 )
 (func $~lib/typedarray/Float64Array#map (; 150 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 i32)
  block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.6 (result i32)
   get_local $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  i32.const 0
  get_local $2
  call $~lib/internal/typedarray/TypedArray<f64>#constructor
  set_local $5
  get_local $5
  i32.load
  set_local $6
  block $break|0
   i32.const 0
   set_local $7
   loop $repeat|0
    get_local $7
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block (result f64)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.15 (result f64)
       get_local $3
       get_local $7
       i32.const 3
       i32.shl
       i32.add
       get_local $4
       i32.add
       f64.load offset=8
      end
      get_local $7
      get_local $0
      get_local $1
      call_indirect (type $FiiF)
     end
     set_local $8
     i32.const 0
     set_local $9
     get_local $6
     get_local $7
     i32.const 3
     i32.shl
     i32.add
     get_local $9
     i32.add
     get_local $8
     f64.store offset=8
    end
    get_local $7
    i32.const 1
    i32.add
    set_local $7
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $5
 )
 (func $std/typedarray/testArrayMap<Float64Array,f64> (; 151 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#constructor
  set_local $0
  get_local $0
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
  i32.const 34
  call $~lib/typedarray/Float64Array#map
  set_local $1
  get_local $1
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 306
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 4
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 9
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 (; 152 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int8Array#some (; 153 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<Int8Array,i8>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.13 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<i8,i8>|inlined.6 (result i32)
       get_local $3
       get_local $5
       i32.const 0
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load8_s offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Int8Array,i8>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Int8Array,i8>~anonymous|36 (; 154 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.eq
 )
 (func $std/typedarray/testArraySome<Int8Array,i8> (; 155 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_local $0
  i32.const 35
  call $~lib/typedarray/Int8Array#some
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Uint8Array,u8>~anonymous|37 (; 156 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Uint8Array#some (; 157 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<Uint8Array,u8>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.6 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.6 (result i32)
       get_local $3
       get_local $5
       i32.const 0
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load8_u offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Uint8Array,u8>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Uint8Array,u8>~anonymous|38 (; 158 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
 )
 (func $std/typedarray/testArraySome<Uint8Array,u8> (; 159 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Uint8ClampedArray,u8>~anonymous|39 (; 160 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Uint8ClampedArray#some (; 161 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<Uint8ClampedArray,u8>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.7 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.8 (result i32)
       get_local $3
       get_local $5
       i32.const 0
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load8_u offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Uint8ClampedArray,u8>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Uint8ClampedArray,u8>~anonymous|40 (; 162 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
 )
 (func $std/typedarray/testArraySome<Uint8ClampedArray,u8> (; 163 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  set_local $0
  get_local $0
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
  call $~lib/typedarray/Uint8ClampedArray#some
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  call $~lib/typedarray/Uint8ClampedArray#some
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Int16Array,i16>~anonymous|41 (; 164 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int16Array#some (; 165 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<Int16Array,i16>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<i16>#get:length|inlined.4 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<i16,i16>|inlined.5 (result i32)
       get_local $3
       get_local $5
       i32.const 1
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load16_s offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Int16Array,i16>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Int16Array,i16>~anonymous|42 (; 166 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 0
  i32.eq
 )
 (func $std/typedarray/testArraySome<Int16Array,i16> (; 167 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Uint16Array,u16>~anonymous|43 (; 168 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Uint16Array#some (; 169 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<Uint16Array,u16>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<u16>#get:length|inlined.4 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<u16,u16>|inlined.5 (result i32)
       get_local $3
       get_local $5
       i32.const 1
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load16_u offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Uint16Array,u16>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Uint16Array,u16>~anonymous|44 (; 170 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
 )
 (func $std/typedarray/testArraySome<Uint16Array,u16> (; 171 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  get_local $0
  i32.const 43
  call $~lib/typedarray/Uint16Array#some
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Int32Array,i32>~anonymous|45 (; 172 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int32Array#some (; 173 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<Int32Array,i32>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.12 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.6 (result i32)
       get_local $3
       get_local $5
       i32.const 2
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Int32Array,i32>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Int32Array,i32>~anonymous|46 (; 174 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 0
  i32.eq
 )
 (func $std/typedarray/testArraySome<Int32Array,i32> (; 175 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Uint32Array,u32>~anonymous|47 (; 176 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Uint32Array#some (; 177 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<Uint32Array,u32>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<u32>#get:length|inlined.4 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<u32,u32>|inlined.5 (result i32)
       get_local $3
       get_local $5
       i32.const 2
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Uint32Array,u32>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Uint32Array,u32>~anonymous|48 (; 178 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 0
  i32.eq
 )
 (func $std/typedarray/testArraySome<Uint32Array,u32> (; 179 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  get_local $0
  i32.const 47
  call $~lib/typedarray/Uint32Array#some
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  call $~lib/typedarray/Uint32Array#some
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Int64Array,i64>~anonymous|49 (; 180 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i64.const 2
  i64.eq
 )
 (func $~lib/typedarray/Int64Array#some (; 181 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<Int64Array,i64>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.4 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.5 (result i64)
       get_local $3
       get_local $5
       i32.const 3
       i32.shl
       i32.add
       get_local $4
       i32.add
       i64.load offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $Iiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Int64Array,i64>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Int64Array,i64>~anonymous|50 (; 182 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i64.const 0
  i64.eq
 )
 (func $std/typedarray/testArraySome<Int64Array,i64> (; 183 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Uint64Array,u64>~anonymous|51 (; 184 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i64.const 2
  i64.eq
 )
 (func $~lib/typedarray/Uint64Array#some (; 185 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<Uint64Array,u64>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<u64>#get:length|inlined.4 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<u64,u64>|inlined.5 (result i64)
       get_local $3
       get_local $5
       i32.const 3
       i32.shl
       i32.add
       get_local $4
       i32.add
       i64.load offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $Iiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Uint64Array,u64>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Uint64Array,u64>~anonymous|52 (; 186 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i64.const 0
  i64.eq
 )
 (func $std/typedarray/testArraySome<Uint64Array,u64> (; 187 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u64>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  get_local $0
  i32.const 1
  i64.const 4
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  get_local $0
  i32.const 2
  i64.const 6
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  get_local $0
  i32.const 51
  call $~lib/typedarray/Uint64Array#some
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  call $~lib/typedarray/Uint64Array#some
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Float32Array,f32>~anonymous|53 (; 188 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  f32.const 2
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#some (; 189 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<Float32Array,f32>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.4 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.5 (result f32)
       get_local $3
       get_local $5
       i32.const 2
       i32.shl
       i32.add
       get_local $4
       i32.add
       f32.load offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $fiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Float32Array,f32>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Float32Array,f32>~anonymous|54 (; 190 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  f32.const 0
  f32.eq
 )
 (func $std/typedarray/testArraySome<Float32Array,f32> (; 191 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<Float64Array,f64>~anonymous|55 (; 192 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  f64.const 2
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#some (; 193 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<Float64Array,f64>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.7 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.17 (result f64)
       get_local $3
       get_local $5
       i32.const 3
       i32.shl
       i32.add
       get_local $4
       i32.add
       f64.load offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $Fiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Float64Array,f64>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Float64Array,f64>~anonymous|56 (; 194 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  f64.const 0
  f64.eq
 )
 (func $std/typedarray/testArraySome<Float64Array,f64> (; 195 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<Int8Array,i8>~anonymous|57 (; 196 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int8Array#findIndex (; 197 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Int8Array,i8>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.14 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<i8,i8>|inlined.8 (result i32)
       get_local $3
       get_local $5
       i32.const 0
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load8_s offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      get_local $5
      br $~lib/internal/typedarray/FIND_INDEX<Int8Array,i8>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Int8Array,i8>~anonymous|58 (; 198 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Int8Array,i8> (; 199 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_local $0
  i32.const 57
  call $~lib/typedarray/Int8Array#findIndex
  set_local $1
  get_local $1
  i32.const 1
  i32.eq
  i32.eqz
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
  set_local $2
  get_local $2
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<Uint8Array,u8>~anonymous|59 (; 200 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Uint8Array#findIndex (; 201 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Uint8Array,u8>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.8 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.10 (result i32)
       get_local $3
       get_local $5
       i32.const 0
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load8_u offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      get_local $5
      br $~lib/internal/typedarray/FIND_INDEX<Uint8Array,u8>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Uint8Array,u8>~anonymous|60 (; 202 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Uint8Array,u8> (; 203 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 1
  i32.eq
  i32.eqz
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
  set_local $2
  get_local $2
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<Uint8ClampedArray,u8>~anonymous|61 (; 204 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Uint8ClampedArray#findIndex (; 205 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Uint8ClampedArray,u8>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.9 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.12 (result i32)
       get_local $3
       get_local $5
       i32.const 0
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load8_u offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      get_local $5
      br $~lib/internal/typedarray/FIND_INDEX<Uint8ClampedArray,u8>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Uint8ClampedArray,u8>~anonymous|62 (; 206 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Uint8ClampedArray,u8> (; 207 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  set_local $0
  get_local $0
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
  call $~lib/typedarray/Uint8ClampedArray#findIndex
  set_local $1
  get_local $1
  i32.const 1
  i32.eq
  i32.eqz
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
  call $~lib/typedarray/Uint8ClampedArray#findIndex
  set_local $2
  get_local $2
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<Int16Array,i16>~anonymous|63 (; 208 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int16Array#findIndex (; 209 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Int16Array,i16>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<i16>#get:length|inlined.5 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<i16,i16>|inlined.7 (result i32)
       get_local $3
       get_local $5
       i32.const 1
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load16_s offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      get_local $5
      br $~lib/internal/typedarray/FIND_INDEX<Int16Array,i16>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Int16Array,i16>~anonymous|64 (; 210 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Int16Array,i16> (; 211 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 1
  i32.eq
  i32.eqz
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
  set_local $2
  get_local $2
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<Uint16Array,u16>~anonymous|65 (; 212 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Uint16Array#findIndex (; 213 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Uint16Array,u16>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<u16>#get:length|inlined.5 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<u16,u16>|inlined.7 (result i32)
       get_local $3
       get_local $5
       i32.const 1
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load16_u offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      get_local $5
      br $~lib/internal/typedarray/FIND_INDEX<Uint16Array,u16>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Uint16Array,u16>~anonymous|66 (; 214 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 65535
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Uint16Array,u16> (; 215 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  get_local $0
  i32.const 65
  call $~lib/typedarray/Uint16Array#findIndex
  set_local $1
  get_local $1
  i32.const 1
  i32.eq
  i32.eqz
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
  set_local $2
  get_local $2
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<Int32Array,i32>~anonymous|67 (; 216 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int32Array#findIndex (; 217 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Int32Array,i32>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.13 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.8 (result i32)
       get_local $3
       get_local $5
       i32.const 2
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      get_local $5
      br $~lib/internal/typedarray/FIND_INDEX<Int32Array,i32>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Int32Array,i32>~anonymous|68 (; 218 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Int32Array,i32> (; 219 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 1
  i32.eq
  i32.eqz
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
  set_local $2
  get_local $2
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<Uint32Array,u32>~anonymous|69 (; 220 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Uint32Array#findIndex (; 221 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Uint32Array,u32>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<u32>#get:length|inlined.5 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<u32,u32>|inlined.7 (result i32)
       get_local $3
       get_local $5
       i32.const 2
       i32.shl
       i32.add
       get_local $4
       i32.add
       i32.load offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      get_local $5
      br $~lib/internal/typedarray/FIND_INDEX<Uint32Array,u32>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Uint32Array,u32>~anonymous|70 (; 222 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Uint32Array,u32> (; 223 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  get_local $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  get_local $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  get_local $0
  i32.const 69
  call $~lib/typedarray/Uint32Array#findIndex
  set_local $1
  get_local $1
  i32.const 1
  i32.eq
  i32.eqz
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
  call $~lib/typedarray/Uint32Array#findIndex
  set_local $2
  get_local $2
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<Int64Array,i64>~anonymous|71 (; 224 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i64.const 2
  i64.eq
 )
 (func $~lib/typedarray/Int64Array#findIndex (; 225 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Int64Array,i64>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.5 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.7 (result i64)
       get_local $3
       get_local $5
       i32.const 3
       i32.shl
       i32.add
       get_local $4
       i32.add
       i64.load offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $Iiii)
     end
     i32.const 0
     i32.ne
     if
      get_local $5
      br $~lib/internal/typedarray/FIND_INDEX<Int64Array,i64>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Int64Array,i64>~anonymous|72 (; 226 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i64.const 4
  i64.eq
 )
 (func $std/typedarray/testArrayFindIndex<Int64Array,i64> (; 227 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 1
  i32.eq
  i32.eqz
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
  set_local $2
  get_local $2
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<Uint64Array,u64>~anonymous|73 (; 228 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i64.const 2
  i64.eq
 )
 (func $~lib/typedarray/Uint64Array#findIndex (; 229 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Uint64Array,u64>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<u64>#get:length|inlined.5 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<u64,u64>|inlined.7 (result i64)
       get_local $3
       get_local $5
       i32.const 3
       i32.shl
       i32.add
       get_local $4
       i32.add
       i64.load offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $Iiii)
     end
     i32.const 0
     i32.ne
     if
      get_local $5
      br $~lib/internal/typedarray/FIND_INDEX<Uint64Array,u64>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Uint64Array,u64>~anonymous|74 (; 230 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i64.const 4
  i64.eq
 )
 (func $std/typedarray/testArrayFindIndex<Uint64Array,u64> (; 231 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u64>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  get_local $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  get_local $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  get_local $0
  i32.const 73
  call $~lib/typedarray/Uint64Array#findIndex
  set_local $1
  get_local $1
  i32.const 1
  i32.eq
  i32.eqz
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
  call $~lib/typedarray/Uint64Array#findIndex
  set_local $2
  get_local $2
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<Float32Array,f32>~anonymous|75 (; 232 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  f32.const 2
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#findIndex (; 233 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Float32Array,f32>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.5 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.7 (result f32)
       get_local $3
       get_local $5
       i32.const 2
       i32.shl
       i32.add
       get_local $4
       i32.add
       f32.load offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $fiii)
     end
     i32.const 0
     i32.ne
     if
      get_local $5
      br $~lib/internal/typedarray/FIND_INDEX<Float32Array,f32>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Float32Array,f32>~anonymous|76 (; 234 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  f32.const 4
  f32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Float32Array,f32> (; 235 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 1
  i32.eq
  i32.eqz
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
  set_local $2
  get_local $2
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<Float64Array,f64>~anonymous|77 (; 236 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  f64.const 2
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#findIndex (; 237 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Float64Array,f64>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.8 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     get_local $5
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.19 (result f64)
       get_local $3
       get_local $5
       i32.const 3
       i32.shl
       i32.add
       get_local $4
       i32.add
       f64.load offset=8
      end
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $Fiii)
     end
     i32.const 0
     i32.ne
     if
      get_local $5
      br $~lib/internal/typedarray/FIND_INDEX<Float64Array,f64>|inlined.0
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Float64Array,f64>~anonymous|78 (; 238 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  f64.const 4
  f64.eq
 )
 (func $std/typedarray/testArrayFindIndex<Float64Array,f64> (; 239 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 1
  i32.eq
  i32.eqz
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
  set_local $2
  get_local $2
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<Int8Array,i8>~anonymous|79 (; 240 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.const 0
  i32.eq
 )
 (func $~lib/typedarray/Int8Array#every (; 241 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<Int8Array,i8>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.15 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     block $continue|0
      get_local $5
      get_local $2
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        set_global $~argc
        block $~lib/internal/arraybuffer/LOAD<i8,i8>|inlined.10 (result i32)
         get_local $3
         get_local $5
         i32.const 0
         i32.shl
         i32.add
         get_local $4
         i32.add
         i32.load8_s offset=8
        end
        get_local $5
        get_local $0
        get_local $1
        call_indirect (type $iiii)
       end
       i32.const 0
       i32.ne
       if
        br $continue|0
       end
       i32.const 0
       br $~lib/internal/typedarray/EVERY<Int8Array,i8>|inlined.0
       unreachable
      end
      unreachable
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Int8Array,i8>~anonymous|80 (; 242 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.eq
 )
 (func $std/typedarray/testArrayEvery<Int8Array,i8> (; 243 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_local $0
  i32.const 79
  call $~lib/typedarray/Int8Array#every
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<Uint8Array,u8>~anonymous|81 (; 244 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const 2
  i32.rem_u
  i32.const 0
  i32.eq
 )
 (func $~lib/typedarray/Uint8Array#every (; 245 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<Uint8Array,u8>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.10 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     block $continue|0
      get_local $5
      get_local $2
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        set_global $~argc
        block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.14 (result i32)
         get_local $3
         get_local $5
         i32.const 0
         i32.shl
         i32.add
         get_local $4
         i32.add
         i32.load8_u offset=8
        end
        get_local $5
        get_local $0
        get_local $1
        call_indirect (type $iiii)
       end
       i32.const 0
       i32.ne
       if
        br $continue|0
       end
       i32.const 0
       br $~lib/internal/typedarray/EVERY<Uint8Array,u8>|inlined.0
       unreachable
      end
      unreachable
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Uint8Array,u8>~anonymous|82 (; 246 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $std/typedarray/testArrayEvery<Uint8Array,u8> (; 247 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<Uint8ClampedArray,u8>~anonymous|83 (; 248 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const 2
  i32.rem_u
  i32.const 0
  i32.eq
 )
 (func $~lib/typedarray/Uint8ClampedArray#every (; 249 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<Uint8ClampedArray,u8>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.11 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     block $continue|0
      get_local $5
      get_local $2
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        set_global $~argc
        block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.16 (result i32)
         get_local $3
         get_local $5
         i32.const 0
         i32.shl
         i32.add
         get_local $4
         i32.add
         i32.load8_u offset=8
        end
        get_local $5
        get_local $0
        get_local $1
        call_indirect (type $iiii)
       end
       i32.const 0
       i32.ne
       if
        br $continue|0
       end
       i32.const 0
       br $~lib/internal/typedarray/EVERY<Uint8ClampedArray,u8>|inlined.0
       unreachable
      end
      unreachable
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Uint8ClampedArray,u8>~anonymous|84 (; 250 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $std/typedarray/testArrayEvery<Uint8ClampedArray,u8> (; 251 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  set_local $0
  get_local $0
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
  call $~lib/typedarray/Uint8ClampedArray#every
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  call $~lib/typedarray/Uint8ClampedArray#every
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<Int16Array,i16>~anonymous|85 (; 252 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.const 0
  i32.eq
 )
 (func $~lib/typedarray/Int16Array#every (; 253 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<Int16Array,i16>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<i16>#get:length|inlined.6 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     block $continue|0
      get_local $5
      get_local $2
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        set_global $~argc
        block $~lib/internal/arraybuffer/LOAD<i16,i16>|inlined.9 (result i32)
         get_local $3
         get_local $5
         i32.const 1
         i32.shl
         i32.add
         get_local $4
         i32.add
         i32.load16_s offset=8
        end
        get_local $5
        get_local $0
        get_local $1
        call_indirect (type $iiii)
       end
       i32.const 0
       i32.ne
       if
        br $continue|0
       end
       i32.const 0
       br $~lib/internal/typedarray/EVERY<Int16Array,i16>|inlined.0
       unreachable
      end
      unreachable
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Int16Array,i16>~anonymous|86 (; 254 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.eq
 )
 (func $std/typedarray/testArrayEvery<Int16Array,i16> (; 255 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<Uint16Array,u16>~anonymous|87 (; 256 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.rem_u
  i32.const 0
  i32.eq
 )
 (func $~lib/typedarray/Uint16Array#every (; 257 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<Uint16Array,u16>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<u16>#get:length|inlined.6 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     block $continue|0
      get_local $5
      get_local $2
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        set_global $~argc
        block $~lib/internal/arraybuffer/LOAD<u16,u16>|inlined.9 (result i32)
         get_local $3
         get_local $5
         i32.const 1
         i32.shl
         i32.add
         get_local $4
         i32.add
         i32.load16_u offset=8
        end
        get_local $5
        get_local $0
        get_local $1
        call_indirect (type $iiii)
       end
       i32.const 0
       i32.ne
       if
        br $continue|0
       end
       i32.const 0
       br $~lib/internal/typedarray/EVERY<Uint16Array,u16>|inlined.0
       unreachable
      end
      unreachable
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Uint16Array,u16>~anonymous|88 (; 258 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
 )
 (func $std/typedarray/testArrayEvery<Uint16Array,u16> (; 259 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  get_local $0
  i32.const 87
  call $~lib/typedarray/Uint16Array#every
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<Int32Array,i32>~anonymous|89 (; 260 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 2
  i32.rem_s
  i32.const 0
  i32.eq
 )
 (func $~lib/typedarray/Int32Array#every (; 261 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<Int32Array,i32>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.14 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     block $continue|0
      get_local $5
      get_local $2
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        set_global $~argc
        block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.10 (result i32)
         get_local $3
         get_local $5
         i32.const 2
         i32.shl
         i32.add
         get_local $4
         i32.add
         i32.load offset=8
        end
        get_local $5
        get_local $0
        get_local $1
        call_indirect (type $iiii)
       end
       i32.const 0
       i32.ne
       if
        br $continue|0
       end
       i32.const 0
       br $~lib/internal/typedarray/EVERY<Int32Array,i32>|inlined.0
       unreachable
      end
      unreachable
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Int32Array,i32>~anonymous|90 (; 262 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 2
  i32.eq
 )
 (func $std/typedarray/testArrayEvery<Int32Array,i32> (; 263 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<Uint32Array,u32>~anonymous|91 (; 264 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 2
  i32.rem_u
  i32.const 0
  i32.eq
 )
 (func $~lib/typedarray/Uint32Array#every (; 265 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<Uint32Array,u32>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<u32>#get:length|inlined.6 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     block $continue|0
      get_local $5
      get_local $2
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        set_global $~argc
        block $~lib/internal/arraybuffer/LOAD<u32,u32>|inlined.9 (result i32)
         get_local $3
         get_local $5
         i32.const 2
         i32.shl
         i32.add
         get_local $4
         i32.add
         i32.load offset=8
        end
        get_local $5
        get_local $0
        get_local $1
        call_indirect (type $iiii)
       end
       i32.const 0
       i32.ne
       if
        br $continue|0
       end
       i32.const 0
       br $~lib/internal/typedarray/EVERY<Uint32Array,u32>|inlined.0
       unreachable
      end
      unreachable
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Uint32Array,u32>~anonymous|92 (; 266 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 2
  i32.eq
 )
 (func $std/typedarray/testArrayEvery<Uint32Array,u32> (; 267 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  get_local $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  get_local $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  get_local $0
  i32.const 91
  call $~lib/typedarray/Uint32Array#every
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  call $~lib/typedarray/Uint32Array#every
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<Int64Array,i64>~anonymous|93 (; 268 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i64.const 2
  i64.rem_s
  i64.const 0
  i64.eq
 )
 (func $~lib/typedarray/Int64Array#every (; 269 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<Int64Array,i64>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.6 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     block $continue|0
      get_local $5
      get_local $2
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        set_global $~argc
        block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.9 (result i64)
         get_local $3
         get_local $5
         i32.const 3
         i32.shl
         i32.add
         get_local $4
         i32.add
         i64.load offset=8
        end
        get_local $5
        get_local $0
        get_local $1
        call_indirect (type $Iiii)
       end
       i32.const 0
       i32.ne
       if
        br $continue|0
       end
       i32.const 0
       br $~lib/internal/typedarray/EVERY<Int64Array,i64>|inlined.0
       unreachable
      end
      unreachable
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Int64Array,i64>~anonymous|94 (; 270 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i64.const 2
  i64.eq
 )
 (func $std/typedarray/testArrayEvery<Int64Array,i64> (; 271 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<Uint64Array,u64>~anonymous|95 (; 272 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i64.const 2
  i64.rem_u
  i64.const 0
  i64.eq
 )
 (func $~lib/typedarray/Uint64Array#every (; 273 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<Uint64Array,u64>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<u64>#get:length|inlined.6 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     block $continue|0
      get_local $5
      get_local $2
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        set_global $~argc
        block $~lib/internal/arraybuffer/LOAD<u64,u64>|inlined.9 (result i64)
         get_local $3
         get_local $5
         i32.const 3
         i32.shl
         i32.add
         get_local $4
         i32.add
         i64.load offset=8
        end
        get_local $5
        get_local $0
        get_local $1
        call_indirect (type $Iiii)
       end
       i32.const 0
       i32.ne
       if
        br $continue|0
       end
       i32.const 0
       br $~lib/internal/typedarray/EVERY<Uint64Array,u64>|inlined.0
       unreachable
      end
      unreachable
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Uint64Array,u64>~anonymous|96 (; 274 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i64.const 2
  i64.eq
 )
 (func $std/typedarray/testArrayEvery<Uint64Array,u64> (; 275 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u64>#constructor
  set_local $0
  get_local $0
  i32.const 0
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  get_local $0
  i32.const 1
  i64.const 4
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  get_local $0
  i32.const 2
  i64.const 6
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  get_local $0
  i32.const 95
  call $~lib/typedarray/Uint64Array#every
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  call $~lib/typedarray/Uint64Array#every
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/math/NativeMathf.mod (; 276 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  (local $10 i32)
  (local $11 i32)
  get_local $0
  i32.reinterpret/f32
  set_local $2
  get_local $1
  i32.reinterpret/f32
  set_local $3
  get_local $2
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  set_local $4
  get_local $3
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  set_local $5
  get_local $2
  i32.const -2147483648
  i32.and
  set_local $6
  get_local $3
  i32.const 1
  i32.shl
  set_local $7
  get_local $7
  i32.const 0
  i32.eq
  tee_local $8
  if (result i32)
   get_local $8
  else   
   get_local $4
   i32.const 255
   i32.eq
  end
  tee_local $8
  if (result i32)
   get_local $8
  else   
   get_local $1
   get_local $1
   f32.ne
  end
  i32.const 0
  i32.ne
  if
   get_local $0
   get_local $1
   f32.mul
   set_local $9
   get_local $9
   get_local $9
   f32.div
   return
  end
  get_local $2
  i32.const 1
  i32.shl
  set_local $10
  get_local $10
  get_local $7
  i32.le_u
  if
   get_local $10
   get_local $7
   i32.eq
   if
    f32.const 0
    get_local $0
    f32.mul
    return
   end
   get_local $0
   return
  end
  get_local $4
  i32.eqz
  if
   get_local $4
   get_local $2
   i32.const 9
   i32.shl
   i32.clz
   i32.sub
   set_local $4
   get_local $2
   i32.const 0
   get_local $4
   i32.sub
   i32.const 1
   i32.add
   i32.shl
   set_local $2
  else   
   get_local $2
   i32.const -1
   i32.const 9
   i32.shr_u
   i32.and
   set_local $2
   get_local $2
   i32.const 1
   i32.const 23
   i32.shl
   i32.or
   set_local $2
  end
  get_local $5
  i32.eqz
  if
   get_local $5
   get_local $3
   i32.const 9
   i32.shl
   i32.clz
   i32.sub
   set_local $5
   get_local $3
   i32.const 0
   get_local $5
   i32.sub
   i32.const 1
   i32.add
   i32.shl
   set_local $3
  else   
   get_local $3
   i32.const -1
   i32.const 9
   i32.shr_u
   i32.and
   set_local $3
   get_local $3
   i32.const 1
   i32.const 23
   i32.shl
   i32.or
   set_local $3
  end
  block $break|0
   loop $continue|0
    get_local $4
    get_local $5
    i32.gt_s
    if
     block
      get_local $2
      get_local $3
      i32.ge_u
      if
       get_local $2
       get_local $3
       i32.eq
       if
        f32.const 0
        get_local $0
        f32.mul
        return
       end
       get_local $2
       get_local $3
       i32.sub
       set_local $2
      end
      get_local $2
      i32.const 1
      i32.shl
      set_local $2
      get_local $4
      i32.const 1
      i32.sub
      set_local $4
     end
     br $continue|0
    end
   end
  end
  get_local $2
  get_local $3
  i32.ge_u
  if
   get_local $2
   get_local $3
   i32.eq
   if
    f32.const 0
    get_local $0
    f32.mul
    return
   end
   get_local $2
   get_local $3
   i32.sub
   set_local $2
  end
  get_local $2
  i32.const 8
  i32.shl
  i32.clz
  set_local $11
  get_local $4
  get_local $11
  i32.sub
  set_local $4
  get_local $2
  get_local $11
  i32.shl
  set_local $2
  get_local $4
  i32.const 0
  i32.gt_s
  if
   get_local $2
   i32.const 1
   i32.const 23
   i32.shl
   i32.sub
   set_local $2
   get_local $2
   get_local $4
   i32.const 23
   i32.shl
   i32.or
   set_local $2
  else   
   get_local $2
   i32.const 0
   get_local $4
   i32.sub
   i32.const 1
   i32.add
   i32.shr_u
   set_local $2
  end
  get_local $2
  get_local $6
  i32.or
  set_local $2
  get_local $2
  f32.reinterpret/i32
 )
 (func $std/typedarray/testArrayEvery<Float32Array,f32>~anonymous|97 (; 277 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  f32.const 2
  call $~lib/math/NativeMathf.mod
  f32.const 0
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#every (; 278 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<Float32Array,f32>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.6 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     block $continue|0
      get_local $5
      get_local $2
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        set_global $~argc
        block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.9 (result f32)
         get_local $3
         get_local $5
         i32.const 2
         i32.shl
         i32.add
         get_local $4
         i32.add
         f32.load offset=8
        end
        get_local $5
        get_local $0
        get_local $1
        call_indirect (type $fiii)
       end
       i32.const 0
       i32.ne
       if
        br $continue|0
       end
       i32.const 0
       br $~lib/internal/typedarray/EVERY<Float32Array,f32>|inlined.0
       unreachable
      end
      unreachable
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Float32Array,f32>~anonymous|98 (; 279 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  f32.const 2
  f32.eq
 )
 (func $std/typedarray/testArrayEvery<Float32Array,f32> (; 280 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/math/NativeMath.mod (; 281 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 f64)
  (local $10 i64)
  (local $11 i64)
  get_local $0
  i64.reinterpret/f64
  set_local $2
  get_local $1
  i64.reinterpret/f64
  set_local $3
  get_local $2
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  set_local $4
  get_local $3
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  set_local $5
  get_local $2
  i64.const 63
  i64.shr_u
  set_local $6
  get_local $3
  i64.const 1
  i64.shl
  set_local $7
  get_local $7
  i64.const 0
  i64.eq
  tee_local $8
  if (result i32)
   get_local $8
  else   
   get_local $4
   i64.const 2047
   i64.eq
  end
  tee_local $8
  if (result i32)
   get_local $8
  else   
   get_local $1
   get_local $1
   f64.ne
  end
  i32.const 0
  i32.ne
  if
   get_local $0
   get_local $1
   f64.mul
   set_local $9
   get_local $9
   get_local $9
   f64.div
   return
  end
  get_local $2
  i64.const 1
  i64.shl
  set_local $10
  get_local $10
  get_local $7
  i64.le_u
  if
   get_local $10
   get_local $7
   i64.eq
   if
    f64.const 0
    get_local $0
    f64.mul
    return
   end
   get_local $0
   return
  end
  get_local $4
  i64.eqz
  if
   get_local $4
   get_local $2
   i64.const 12
   i64.shl
   i64.clz
   i64.sub
   set_local $4
   get_local $2
   i64.const 0
   get_local $4
   i64.sub
   i64.const 1
   i64.add
   i64.shl
   set_local $2
  else   
   get_local $2
   i64.const -1
   i64.const 12
   i64.shr_u
   i64.and
   set_local $2
   get_local $2
   i64.const 1
   i64.const 52
   i64.shl
   i64.or
   set_local $2
  end
  get_local $5
  i64.eqz
  if
   get_local $5
   get_local $3
   i64.const 12
   i64.shl
   i64.clz
   i64.sub
   set_local $5
   get_local $3
   i64.const 0
   get_local $5
   i64.sub
   i64.const 1
   i64.add
   i64.shl
   set_local $3
  else   
   get_local $3
   i64.const -1
   i64.const 12
   i64.shr_u
   i64.and
   set_local $3
   get_local $3
   i64.const 1
   i64.const 52
   i64.shl
   i64.or
   set_local $3
  end
  block $break|0
   loop $continue|0
    get_local $4
    get_local $5
    i64.gt_s
    if
     block
      get_local $2
      get_local $3
      i64.ge_u
      if
       get_local $2
       get_local $3
       i64.eq
       if
        f64.const 0
        get_local $0
        f64.mul
        return
       end
       get_local $2
       get_local $3
       i64.sub
       set_local $2
      end
      get_local $2
      i64.const 1
      i64.shl
      set_local $2
      get_local $4
      i64.const 1
      i64.sub
      set_local $4
     end
     br $continue|0
    end
   end
  end
  get_local $2
  get_local $3
  i64.ge_u
  if
   get_local $2
   get_local $3
   i64.eq
   if
    f64.const 0
    get_local $0
    f64.mul
    return
   end
   get_local $2
   get_local $3
   i64.sub
   set_local $2
  end
  get_local $2
  i64.const 11
  i64.shl
  i64.clz
  set_local $11
  get_local $4
  get_local $11
  i64.sub
  set_local $4
  get_local $2
  get_local $11
  i64.shl
  set_local $2
  get_local $4
  i64.const 0
  i64.gt_s
  if
   get_local $2
   i64.const 1
   i64.const 52
   i64.shl
   i64.sub
   set_local $2
   get_local $2
   get_local $4
   i64.const 52
   i64.shl
   i64.or
   set_local $2
  else   
   get_local $2
   i64.const 0
   get_local $4
   i64.sub
   i64.const 1
   i64.add
   i64.shr_u
   set_local $2
  end
  get_local $2
  get_local $6
  i64.const 63
  i64.shl
  i64.or
  set_local $2
  get_local $2
  f64.reinterpret/i64
 )
 (func $std/typedarray/testArrayEvery<Float64Array,f64>~anonymous|99 (; 282 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  f64.const 2
  call $~lib/math/NativeMath.mod
  f64.const 0
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#every (; 283 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<Float64Array,f64>|inlined.0 (result i32)
   block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.9 (result i32)
    get_local $0
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   set_local $2
   get_local $0
   i32.load
   set_local $3
   get_local $0
   i32.load offset=4
   set_local $4
   block $break|0
    i32.const 0
    set_local $5
    loop $repeat|0
     block $continue|0
      get_local $5
      get_local $2
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        set_global $~argc
        block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.21 (result f64)
         get_local $3
         get_local $5
         i32.const 3
         i32.shl
         i32.add
         get_local $4
         i32.add
         f64.load offset=8
        end
        get_local $5
        get_local $0
        get_local $1
        call_indirect (type $Fiii)
       end
       i32.const 0
       i32.ne
       if
        br $continue|0
       end
       i32.const 0
       br $~lib/internal/typedarray/EVERY<Float64Array,f64>|inlined.0
       unreachable
      end
      unreachable
     end
     get_local $5
     i32.const 1
     i32.add
     set_local $5
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Float64Array,f64>~anonymous|100 (; 284 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  f64.const 2
  f64.eq
 )
 (func $std/typedarray/testArrayEvery<Float64Array,f64> (; 285 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#constructor
  set_local $0
  get_local $0
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
  set_local $1
  get_local $1
  i32.const 0
  i32.ne
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
  set_local $2
  get_local $2
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 286 ;) (type $v)
  (local $0 i32)
  get_global $~lib/typedarray/Int8Array.BYTES_PER_ELEMENT
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 1
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $~lib/typedarray/Uint8Array.BYTES_PER_ELEMENT
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 2
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $~lib/typedarray/Uint8ClampedArray.BYTES_PER_ELEMENT
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 3
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $~lib/typedarray/Int16Array.BYTES_PER_ELEMENT
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 4
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $~lib/typedarray/Uint16Array.BYTES_PER_ELEMENT
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 5
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $~lib/typedarray/Int32Array.BYTES_PER_ELEMENT
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 6
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $~lib/typedarray/Uint32Array.BYTES_PER_ELEMENT
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 7
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $~lib/typedarray/Int64Array.BYTES_PER_ELEMENT
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 8
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $~lib/typedarray/Uint64Array.BYTES_PER_ELEMENT
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 9
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $~lib/typedarray/Float32Array.BYTES_PER_ELEMENT
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 10
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $~lib/typedarray/Float64Array.BYTES_PER_ELEMENT
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 11
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
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
  i32.const 0
  call $std/typedarray/testInstantiate
  i32.const 5
  call $std/typedarray/testInstantiate
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#constructor
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
  block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.1 (result i32)
   get_global $std/typedarray/arr
   set_local $0
   get_local $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  i32.const 3
  i32.eq
  i32.eqz
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
  i32.const 0
  i32.eq
  i32.eqz
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
  i32.const 3
  i32.const 4
  i32.mul
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 101
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/arr
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#subarray
  set_global $std/typedarray/arr
  block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.3 (result i32)
   get_global $std/typedarray/arr
   set_local $0
   get_local $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  i32.const 1
  i32.eq
  i32.eqz
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
  i32.const 1
  i32.const 4
  i32.mul
  i32.eq
  i32.eqz
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
  i32.const 1
  i32.const 4
  i32.mul
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 107
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<f64>#constructor
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
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Float64Array#subarray
  set_global $std/typedarray/af64
  block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.2 (result i32)
   get_global $std/typedarray/af64
   set_local $0
   get_local $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  i32.const 4
  i32.eq
  i32.eqz
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
  i32.const 2
  i32.const 8
  i32.mul
  i32.eq
  i32.eqz
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
  i32.const 4
  i32.const 8
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 123
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   set_global $~argc
   get_global $std/typedarray/af64
   i32.const 0
   call $~lib/typedarray/Float64Array#sort|trampoline
  end
  drop
  get_global $std/typedarray/af64
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 4
  f64.eq
  tee_local $0
  if (result i32)
   get_global $std/typedarray/af64
   i32.const 1
   call $~lib/internal/typedarray/TypedArray<f64>#__get
   f64.const 5
   f64.eq
  else   
   get_local $0
  end
  tee_local $0
  if (result i32)
   get_global $std/typedarray/af64
   i32.const 2
   call $~lib/internal/typedarray/TypedArray<f64>#__get
   f64.const 6
   f64.eq
  else   
   get_local $0
  end
  tee_local $0
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
  i32.const 0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
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
  i32.const 0
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
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
  call $~lib/internal/typedarray/TypedArray<i8>#constructor
  set_global $std/typedarray/arr8
  get_global $std/typedarray/arr8
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_global $std/typedarray/arr8
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_global $std/typedarray/arr8
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_global $std/typedarray/arr8
  i32.const 3
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_global $std/typedarray/arr8
  i32.const 4
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i8>#__set
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
  block (result i32)
   i32.const 1
   set_global $~argc
   get_global $std/typedarray/arr8
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Int8Array#fill|trampoline
  end
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
  block (result i32)
   i32.const 2
   set_global $~argc
   get_global $std/typedarray/arr8
   i32.const 2
   i32.const -2
   i32.const 0
   call $~lib/typedarray/Int8Array#fill|trampoline
  end
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
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#subarray
  set_global $std/typedarray/sub8
  block (result i32)
   i32.const 1
   set_global $~argc
   get_global $std/typedarray/sub8
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Int8Array#fill|trampoline
  end
  drop
  block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.6 (result i32)
   get_global $std/typedarray/sub8
   set_local $0
   get_local $0
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  i32.const 3
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
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
  i32.const 0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i32>#constructor
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
  block (result i32)
   i32.const 1
   set_global $~argc
   get_global $std/typedarray/arr32
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Int32Array#fill|trampoline
  end
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
  block (result i32)
   i32.const 2
   set_global $~argc
   get_global $std/typedarray/arr32
   i32.const 2
   i32.const -2
   i32.const 0
   call $~lib/typedarray/Int32Array#fill|trampoline
  end
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
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#subarray
  set_global $std/typedarray/sub32
  block (result i32)
   i32.const 1
   set_global $~argc
   get_global $std/typedarray/sub32
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Int32Array#fill|trampoline
  end
  drop
  block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.8 (result i32)
   get_global $std/typedarray/sub32
   set_local $0
   get_local $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  i32.const 3
  i32.eq
  i32.eqz
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
  i32.const 1
  i32.const 4
  i32.mul
  i32.eq
  i32.eqz
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
  i32.const 3
  i32.const 4
  i32.mul
  i32.eq
  i32.eqz
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
  i32.const 0
  get_global $std/typedarray/MAX_F64LENGTH
  call $~lib/internal/typedarray/TypedArray<f64>#constructor
  drop
  i32.const 0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i8>#constructor
  set_global $std/typedarray/multisubarr
  get_global $std/typedarray/multisubarr
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_global $std/typedarray/multisubarr
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_global $std/typedarray/multisubarr
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_global $std/typedarray/multisubarr
  i32.const 3
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_global $std/typedarray/multisubarr
  i32.const 4
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_global $std/typedarray/multisubarr
  i32.const 5
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  get_global $std/typedarray/multisubarr
  i32.const 1
  i32.const 6
  call $~lib/typedarray/Int8Array#subarray
  set_global $std/typedarray/multisubarr1
  get_global $std/typedarray/multisubarr1
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 211
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.7 (result i32)
   get_global $std/typedarray/multisubarr1
   set_local $0
   get_local $0
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  i32.const 5
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 214
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/multisubarr1
  i32.const 1
  i32.const 5
  call $~lib/typedarray/Int8Array#subarray
  set_global $std/typedarray/multisubarr2
  get_global $std/typedarray/multisubarr2
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 217
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.8 (result i32)
   get_global $std/typedarray/multisubarr2
   set_local $0
   get_local $0
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  i32.const 4
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 220
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/typedarray/multisubarr2
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#subarray
  set_global $std/typedarray/multisubarr3
  get_global $std/typedarray/multisubarr3
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 223
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.9 (result i32)
   get_global $std/typedarray/multisubarr3
   set_local $0
   get_local $0
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  i32.const 3
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
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
 (func $null (; 287 ;) (type $v)
 )
)
